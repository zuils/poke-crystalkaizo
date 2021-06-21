; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    ld hl, $c4ac
    ld a, [$d22d]
    cp $01
    jr z, jr_034_4012

    ld e, $00
    ld d, $00
    call Call_034_408e
    ret


jr_034_4012:
    ld e, $01
    ld d, $00
    call Call_034_408e
    ret


    ld e, $02
    ld d, $00
    call Call_034_408e
    ret


    ld e, $03
    ld d, $00
    call Call_034_408e
    ret


    ld e, $04
    ld d, $00
    call Call_034_408e
    ret


    ld e, $05
    ld d, $00
    call Call_034_408e
    ret


    ld e, $06
    ld d, $00
    call Call_034_408e
    ret


    ld d, h
    ld b, b
    ld e, b
    ld b, b
    ld e, h
    ld b, b
    ld h, h
    ld b, b
    ld l, [hl]
    ld b, b
    db $76
    ld b, b
    add b
    ld b, b
    adc b
    ld b, b
    adc e
    ld b, b
    dec bc
    dec b
    rlca
    nop
    dec bc
    inc b
    rlca
    nop
    ld a, [bc]
    inc b
    rlca
    ld [bc], a
    inc bc
    ld b, $07
    nop
    ld b, $08
    ld b, $07
    ld [bc], a
    inc bc
    add hl, bc
    inc b
    rlca
    nop
    ld b, $07
    ld [bc], a
    inc bc
    ld a, [bc]
    inc b
    rlca
    nop
    ld b, $07
    ld a, [bc]
    inc b
    rlca
    ld [bc], a
    inc bc
    ld b, $07
    nop
    ld a, [bc]
    inc b
    rlca
    ld [bc], a
    inc bc
    ld b, $07
    nop
    inc b
    rlca
    nop
    ld b, $07
    nop

Call_034_408e:
    call Call_034_41c6
    ret c

    call Call_034_40a3

jr_034_4095:
    call Call_034_40b4
    push af
    ld a, $41
    ld hl, $402d
    rst $08
    pop af
    jr nc, jr_034_4095

    ret


Call_034_40a3:
    push hl
    ld c, e
    ld b, $00
    ld hl, $4042
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    call Call_034_41d6
    ret


Call_034_40b4:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld a, [$d168]
    ld c, a
    ld b, $00
    ld hl, $d169
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    ld hl, $40da
    rst $28
    ld a, [$d168]
    ld c, a
    pop af
    ldh [rSVBK], a
    ld a, c
    and $80
    ret z

    scf
    ret


    ld [hl], c
    ld b, c
    ld h, [hl]
    ld b, c
    ld a, [c]
    ld b, b
    cp $40
    dec bc
    ld b, c
    dec e
    ld b, c
    cpl
    ld b, c
    ld b, c
    ld b, c
    ld d, l
    ld b, c
    ld a, d
    ld b, c
    adc b
    ld b, c
    sub [hl]
    ld b, c
    ld a, $12
    ld [$d181], a
    ld a, [$d168]
    inc a
    ld [$d168], a
    ld hl, $d181
    dec [hl]
    ret nz

    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    ld c, $00
    ld b, $00
    call Call_034_4228
    call Call_034_4504
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    ld c, $00
    ld b, $04
    call Call_034_4228
    call Call_034_4504
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    ld c, $01
    ld b, $00
    call Call_034_4228
    call Call_034_4504
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    call Call_034_4250
    ld a, [$d17e]
    bit 7, a
    ret z

    call Call_034_44bd
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    call Call_034_4250
    ld a, [$d17e]
    bit 7, a
    ret z

    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    call Call_034_41a9
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    call Call_034_41a9
    ld hl, $d168
    set 7, [hl]
    ret


    ld a, [$d16b]
    call $37e2
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    ld a, [$d16b]
    call $37d5
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


    ld a, $0f
    ld [$c2bd], a
    ld a, [$d16b]
    call $37c4
    ld a, [$d168]
    inc a
    ld [$d168], a
    ret


Call_034_41a9:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    call Call_034_44bd
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_034_4536
    ld a, $41
    ld hl, $4047
    rst $08
    pop af
    ldh [rSVBK], a
    ret


Call_034_41c6:
    ld a, [$d108]
    cp $fd
    jr z, jr_034_41d4

    call $3741
    jr c, jr_034_41d4

    and a
    ret


jr_034_41d4:
    scf
    ret


Call_034_41d6:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    push bc
    push de
    push hl
    ld hl, $d168
    ld bc, $0029
    xor a
    call $3041
    pop hl
    pop de
    pop bc
    ld a, c
    ld [$d169], a
    ld a, b
    ld [$d16a], a
    ld a, l
    ld [$d16f], a
    ld a, h
    ld [$d170], a
    ld a, d
    ld [$d16e], a
    ld a, $01
    ld hl, $d108
    call $307b
    ld [$d16b], a
    ld a, $01
    ld hl, $d234
    call $307b
    ld [$d16c], a
    call Call_034_465c
    ld [$d16d], a
    call Call_034_45b4
    ld a, c
    ld [$d171], a
    pop af
    ldh [rSVBK], a
    ret


Call_034_4228:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    push bc
    ld hl, $d172
    ld bc, $001f
    xor a
    call $3041
    pop bc
    ld a, b
    ld [$d173], a
    ld a, c
    ld [$d172], a
    call Call_034_455c
    call Call_034_45ce
    call Call_034_461b
    pop af
    ldh [rSVBK], a
    ret


Call_034_4250:
    xor a
    ldh [$d4], a

jr_034_4253:
    ld a, [$d17e]
    and $7f
    ld hl, $425d
    rst $28
    ret


    ld h, c
    ld b, d
    add d
    ld b, d
    call Call_034_42f8
    ld a, [$d182]
    cp $ff
    jr z, jr_034_42a8

    cp $fe
    jr z, jr_034_428e

    cp $fd
    jr z, jr_034_4296

    call Call_034_42c8
    ld a, [$d183]
    call Call_034_42ae
    ld [$d181], a
    call Call_034_42dc
    ld a, [$d181]
    dec a
    ld [$d181], a
    ret nz

    call Call_034_42e4
    ret


jr_034_428e:
    ld a, [$d183]
    ld [$d17f], a
    jr jr_034_4253

jr_034_4296:
    ld a, [$d17f]
    and a
    ret z

    dec a
    ld [$d17f], a
    ret z

    ld a, [$d183]
    ld [$d17d], a
    jr jr_034_4253

jr_034_42a8:
    ld hl, $d17e
    set 7, [hl]
    ret


Call_034_42ae:
    ld c, a
    ld b, $00
    ld hl, $0000
    ld a, [$d173]
    call $30fe
    ld a, h
    swap a
    and $f0
    ld h, a
    ld a, l
    swap a
    and $0f
    or h
    add c
    ret


Call_034_42c8:
    call Call_034_44bd
    ld a, [$d182]
    and a
    ret z

    call Call_034_431b
    push hl
    call Call_034_433b
    pop hl
    call Call_034_436b
    ret


Call_034_42dc:
    ld a, [$d17e]
    inc a
    ld [$d17e], a
    ret


Call_034_42e4:
    ld a, [$d17e]
    dec a
    ld [$d17e], a
    ret


Call_034_42ec:
    ld a, [$d16b]
    cp $c9
    ret


Call_034_42f2:
    ld a, [$d16b]
    cp $fd
    ret


Call_034_42f8:
    push hl
    ld a, [$d17d]
    ld e, a
    ld d, $00
    ld hl, $d175
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [$d174]
    call $305d
    ld a, l
    ld [$d182], a
    ld a, h
    ld [$d183], a
    ld hl, $d17d
    inc [hl]
    pop hl
    ret


Call_034_431b:
    ld a, [$d182]
    dec a
    ld c, a
    ld b, $00
    ld hl, $d178
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    ld a, [$d177]
    call $305d
    ld a, [$d177]
    call $304d
    ld [$d180], a
    inc hl
    ret


Call_034_433b:
    call Call_034_4356
    push bc
    ld hl, $d17b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d180]
    call $30fe
    pop bc
    ld de, $d188
    ld a, [$d17a]
    call $0e8d
    ret


Call_034_4356:
    push hl
    ld a, [$d171]
    sub $05
    ld c, a
    ld b, $00
    ld hl, $4368
    add hl, bc
    ld c, [hl]
    ld b, $00
    pop hl
    ret


    inc b
    dec b
    rlca

Call_034_436b:
    xor a
    ld [$d187], a
    ld [$d186], a
    ld [$d185], a

jr_034_4375:
    push hl
    call Call_034_4392
    pop hl
    ld a, b
    and a
    jr z, jr_034_438a

    ld a, [$d177]
    call $304d
    inc hl
    push hl
    call Call_034_43bd
    pop hl

jr_034_438a:
    push hl
    call Call_034_4499
    pop hl
    jr nc, jr_034_4375

    ret


Call_034_4392:
    ld a, [$d187]
    and $f8
    rrca
    rrca
    rrca
    ld e, a
    ld d, $00
    ld hl, $d188
    add hl, de
    ld b, [hl]
    ld a, [$d187]
    and $07
    jr z, jr_034_43b0

    ld c, a
    ld a, b

jr_034_43ab:
    rrca
    dec c
    jr nz, jr_034_43ab

    ld b, a

jr_034_43b0:
    xor a
    bit 0, b
    jr z, jr_034_43b7

    ld a, $01

jr_034_43b7:
    ld b, a
    ld hl, $d187
    inc [hl]
    ret


Call_034_43bd:
    push af
    call Call_034_43cd
    pop af
    push hl
    call Call_034_43f7
    ld hl, $d16e
    add [hl]
    pop hl
    ld [hl], a
    ret


Call_034_43cd:
    call $446c
    ld a, [$d186]
    ld bc, $0014
    call $30fe
    ld a, [$c2c6]
    and a
    jr nz, jr_034_43e8

    ld a, [$d185]
    ld e, a
    ld d, $00
    add hl, de
    jr jr_034_43f3

jr_034_43e8:
    ld a, [$d185]
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_034_43f3:
    ret


    ld b, $05
    inc b

Call_034_43f7:
    push af
    ld a, [$d171]
    cp $05
    jr z, jr_034_4405

    cp $06
    jr z, jr_034_441a

    pop af
    ret


jr_034_4405:
    pop af
    cp $19
    jr nc, jr_034_4417

    push hl
    push de
    ld hl, $442f
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


jr_034_4417:
    add $18
    ret


jr_034_441a:
    pop af
    cp $24
    jr nc, jr_034_442c

    push hl
    push de
    ld hl, $4448
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


jr_034_442c:
    add $0d
    ret


    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    rla
    jr @+$1b

    ld a, [de]
    dec de
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    dec h
    ld h, $27
    jr z, jr_034_4471

    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rrca
    db $10
    ld de, $1312
    inc d
    ld d, $17
    jr jr_034_4471

    ld a, [de]
    dec de
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc h
    dec h
    ld h, $27
    jr z, jr_034_448f

    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$23

    ld l, a
    pop de
    ld a, [hl+]
    ld h, [hl]

jr_034_4471:
    ld l, a
    ld a, [$d171]
    ld de, $0000
    ld bc, $0006
    cp $07
    jr z, jr_034_448f

    ld de, $0015
    ld bc, $0019
    cp $06
    jr z, jr_034_448f

    ld de, $0029
    ld bc, $002d

jr_034_448f:
    ld a, [$c2c6]
    and a
    jr nz, jr_034_4497

    add hl, de
    ret


jr_034_4497:
    add hl, bc
    ret


Call_034_4499:
    ld a, [$d186]
    inc a
    ld [$d186], a
    ld c, a
    ld a, [$d171]
    cp c
    jr nz, jr_034_44bb

    xor a
    ld [$d186], a
    ld a, [$d185]
    inc a
    ld [$d185], a
    ld c, a
    ld a, [$d171]
    cp c
    jr nz, jr_034_44bb

    scf
    ret


jr_034_44bb:
    xor a
    ret


Call_034_44bd:
    call Call_034_44f6
    ld a, [$c2c6]
    and a
    jr nz, jr_034_44ce

    ld de, $0001
    ld bc, $0000
    jr jr_034_44d4

jr_034_44ce:
    ld de, $ffff
    ld bc, $0006

jr_034_44d4:
    ld hl, $d16f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, $07
    ld b, $07
    ld a, [$d16e]

jr_034_44e2:
    push bc
    push hl
    push de
    ld de, $0014

jr_034_44e8:
    ld [hl], a
    inc a
    add hl, de
    dec b
    jr nz, jr_034_44e8

    pop de
    pop hl
    add hl, de
    pop bc
    dec c
    jr nz, jr_034_44e2

    ret


Call_034_44f6:
    ld hl, $d16f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $07
    ld c, $07
    call $0fb6
    ret


Call_034_4504:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    xor a
    ldh [$d4], a
    call Call_034_451b
    ld a, $41
    ld hl, $4047
    rst $08
    pop af
    ldh [rSVBK], a
    ret


Call_034_451b:
    call Call_034_4551
    ld b, $07
    ld c, $07
    ld de, $0014

jr_034_4525:
    push bc
    push hl

jr_034_4527:
    ld a, [hl]
    or $08
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_034_4527

    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_034_4525

    ret


Call_034_4536:
    call Call_034_4551
    ld b, $07
    ld c, $07
    ld de, $0014

jr_034_4540:
    push bc
    push hl

jr_034_4542:
    ld a, [hl]
    and $f7
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_034_4542

    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_034_4540

    ret


Call_034_4551:
    ld hl, $d16f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0939
    add hl, de
    ret


Call_034_455c:
    call Call_034_42f2
    jr z, jr_034_4597

    ld c, $34
    ld hl, $6229
    ld de, $63d1
    call Call_034_42ec
    jr z, jr_034_4576

    ld c, $34
    ld hl, $4695
    ld de, $56a3

jr_034_4576:
    ld a, [$d172]
    and a
    jr z, jr_034_457e

    ld h, d
    ld l, e

jr_034_457e:
    ld a, [$d16d]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, c
    ld [$d174], a
    call $305d
    ld a, l
    ld [$d175], a
    ld a, h
    ld [$d176], a
    ret


jr_034_4597:
    ld hl, $5696
    ld c, $34
    ld a, [$d172]
    and a
    jr z, jr_034_45a7

    ld hl, $6222
    ld c, $34

jr_034_45a7:
    ld a, c
    ld [$d174], a
    ld a, l
    ld [$d175], a
    ld a, h
    ld [$d176], a
    ret


Call_034_45b4:
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d108]
    ld [$cf60], a
    call $3856
    ld a, [$d247]
    and $0f
    ld c, a
    pop af
    ldh [rSVBK], a
    ret


Call_034_45ce:
    call Call_034_42f2
    jr z, jr_034_4609

    call Call_034_42ec
    ld b, $36
    ld c, $36
    ld hl, $59a9
    jr z, jr_034_45ef

    ld a, [$d16b]
    cp $98
    ld b, $35
    ld c, $35
    ld hl, $4000
    jr c, jr_034_45ef

    ld c, $36

jr_034_45ef:
    ld a, c
    ld [$d177], a
    ld a, [$d16d]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, b
    call $305d
    ld a, l
    ld [$d178], a
    ld a, h
    ld [$d179], a
    ret


jr_034_4609:
    ld hl, $598b
    ld c, $36
    ld a, c
    ld [$d177], a
    ld a, l
    ld [$d178], a
    ld a, h
    ld [$d179], a
    ret


Call_034_461b:
    call Call_034_42f2
    jr z, jr_034_464a

    call Call_034_42ec
    ld a, $34
    ld hl, $7ad3
    jr z, jr_034_462f

    ld a, $34
    ld hl, $64ef

jr_034_462f:
    ld [$d17a], a
    ld a, [$d16d]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [$d17a]
    call $305d
    ld a, l
    ld [$d17b], a
    ld a, h
    ld [$d17c], a
    ret


jr_034_464a:
    ld c, $34
    ld hl, $7acf
    ld a, c
    ld [$d17a], a
    ld a, l
    ld [$d17b], a
    ld a, h
    ld [$d17c], a
    ret


Call_034_465c:
    call Call_034_42ec
    jr z, jr_034_4665

    ld a, [$d16b]
    ret


jr_034_4665:
    ld a, [$d16c]
    ret


    ld a, $01
    ld [$c2c6], a
    call Call_034_41c6
    jr c, jr_034_468c

    ld h, d
    ld l, e
    push bc
    push hl
    ld de, $9000
    ld a, $3e
    call $2d83
    pop hl
    pop bc
    ld d, $00
    ld e, c
    call Call_034_408e
    xor a
    ld [$c2c6], a
    ret


jr_034_468c:
    xor a
    ld [$c2c6], a
    inc a
    ld [$d108], a
    ret


    adc e
    ld c, b
    sbc h
    ld c, b
    and l
    ld c, b
    or [hl]
    ld c, b
    push bc
    ld c, b
    call nc, $e148
    ld c, b
    ld a, [c]
    ld c, b
    rst $38
    ld c, b
    ld [$1549], sp
    ld c, c
    inc e
    ld c, c
    add hl, hl
    ld c, c
    ld a, [hl-]
    ld c, c
    ccf
    ld c, c
    ld d, h
    ld c, c
    ld h, a
    ld c, c
    ld a, d
    ld c, c
    add a
    ld c, c
    sbc b
    ld c, c
    and e
    ld c, c
    or [hl]
    ld c, c
    jp $d249


    ld c, c
    db $ed
    ld c, c
    ld [bc], a
    ld c, d
    rrca
    ld c, d
    ld h, $4a
    scf
    ld c, d
    ld b, h
    ld c, d
    ld d, e
    ld c, d
    ld h, h
    ld c, d
    ld [hl], c
    ld c, d
    add [hl]
    ld c, d
    adc a
    ld c, d
    sbc [hl]
    ld c, d
    and a
    ld c, d
    cp d
    ld c, d
    bit 1, d
    sbc $4a
    db $ed
    ld c, d
    ld a, [$0d4a]
    ld c, e
    jr nz, jr_034_4738

    dec [hl]
    ld c, e
    ld b, [hl]
    ld c, e
    ld c, a
    ld c, e
    ld h, [hl]
    ld c, e
    add e
    ld c, e
    adc h
    ld c, e
    sub a
    ld c, e
    or h
    ld c, e
    cp a
    ld c, e
    ret nc

    ld c, e
    db $dd
    ld c, e
    db $f4
    ld c, e
    rst $38
    ld c, e
    inc c
    ld c, h
    dec de
    ld c, h
    ld h, $4c
    inc sp
    ld c, h
    ld b, d
    ld c, h
    ld c, a
    ld c, h
    ld e, d
    ld c, h
    ld h, a
    ld c, h
    db $76
    ld c, h
    add e
    ld c, h
    adc d
    ld c, h
    sbc l
    ld c, h
    or d
    ld c, h
    cp a
    ld c, h
    jp z, $d34c

    ld c, h
    sbc $4c
    db $eb
    ld c, h
    db $fc
    ld c, h
    rlca
    ld c, l
    jr jr_034_477e

    ld sp, $384d
    ld c, l
    ld c, a
    ld c, l
    ld e, h

jr_034_4738:
    ld c, l
    ld [hl], c
    ld c, l
    ld a, d
    ld c, l
    adc c
    ld c, l
    sub d
    ld c, l
    sbc a
    ld c, l
    xor d
    ld c, l
    or e
    ld c, l
    cp h
    ld c, l
    push bc
    ld c, l
    ret nc

    ld c, l
    db $dd
    ld c, l
    add sp, $4d
    rst $30
    ld c, l
    ld [$1b4e], sp
    ld c, [hl]
    ld h, $4e
    add hl, sp
    ld c, [hl]
    ld c, d
    ld c, [hl]
    ld d, a
    ld c, [hl]
    ld e, h
    ld c, [hl]
    ld a, e
    ld c, [hl]
    adc d
    ld c, [hl]
    sbc a
    ld c, [hl]
    or b
    ld c, [hl]
    rst $00
    ld c, [hl]
    jp c, $e54e

    ld c, [hl]
    ldh a, [$4e]
    db $fd
    ld c, [hl]
    inc b
    ld c, a
    dec d
    ld c, a
    ld h, $4f
    dec l
    ld c, a
    inc a
    ld c, a
    ld c, c

jr_034_477e:
    ld c, a
    ld d, h
    ld c, a
    ld h, c
    ld c, a
    ld l, h
    ld c, a
    ld a, c
    ld c, a
    add [hl]
    ld c, a
    sbc c
    ld c, a
    xor b
    ld c, a
    or l
    ld c, a
    call z, $d74f
    ld c, a
    db $e4
    ld c, a
    rst $30
    ld c, a
    ld [bc], a
    ld d, b
    dec bc
    ld d, b
    ld d, $50
    add hl, hl
    ld d, b
    jr c, jr_034_47f1

    ld b, e
    ld d, b
    ld d, h
    ld d, b
    ld e, a
    ld d, b
    ld l, [hl]
    ld d, b
    ld [hl], l
    ld d, b
    ld a, h
    ld d, b
    add l
    ld d, b
    sub d
    ld d, b
    and c
    ld d, b
    or d
    ld d, b
    pop bc
    ld d, b
    call z, $e350
    ld d, b
    ldh a, [$50]
    db $fd
    ld d, b
    inc d
    ld d, c
    inc sp
    ld d, c
    ld d, h
    ld d, c
    ld h, l
    ld d, c
    ld l, h
    ld d, c
    ld a, a
    ld d, c
    sub h
    ld d, c
    and e
    ld d, c
    or [hl]
    ld d, c
    rst $00
    ld d, c
    jp nc, $dd51

    ld d, c
    and $51
    di
    ld d, c
    ld [$1952], sp
    ld d, d
    inc h
    ld d, d
    inc sp
    ld d, d
    ld b, b
    ld d, d
    ld c, l
    ld d, d
    ld e, [hl]
    ld d, d
    ld [hl], c
    ld d, d
    add b
    ld d, d
    adc c
    ld d, d
    sub b
    ld d, d

jr_034_47f1:
    sbc c
    ld d, d
    and [hl]
    ld d, d
    or e
    ld d, d
    cp h
    ld d, d
    call $dc52
    ld d, d
    jp hl


    ld d, d
    ld a, [$0b52]
    ld d, e
    ld a, [de]
    ld d, e
    add hl, hl
    ld d, e
    ld [hl], $53
    ld b, l
    ld d, e
    ld c, [hl]
    ld d, e
    ld d, a
    ld d, e
    ld e, [hl]
    ld d, e
    ld l, c
    ld d, e
    ld [hl], h
    ld d, e
    ld a, e
    ld d, e
    adc d
    ld d, e
    sub a
    ld d, e
    and b
    ld d, e
    xor a
    ld d, e
    cp [hl]
    ld d, e
    rst $08
    ld d, e
    ld [c], a
    ld d, e
    jp hl


    ld d, e
    cp $53
    inc bc
    ld d, h
    inc e
    ld d, h
    ld hl, $3454
    ld d, h
    ld b, c
    ld d, h
    ld b, h
    ld d, h
    ld c, a
    ld d, h
    ld h, d
    ld d, h
    ld l, a
    ld d, h
    ld a, h
    ld d, h
    adc l
    ld d, h
    sbc [hl]
    ld d, h
    and l
    ld d, h
    xor d
    ld d, h
    cp c
    ld d, h
    ret z

    ld d, h
    reti


    ld d, h
    db $e4
    ld d, h
    rst $28
    ld d, h
    or $54
    ld bc, $0855
    ld d, l
    dec d
    ld d, l
    ld a, [hl+]
    ld d, l
    add hl, sp
    ld d, l
    ld b, h
    ld d, l
    ld c, a
    ld d, l
    ld h, b
    ld d, l
    ld [hl], c
    ld d, l
    ld a, [hl]
    ld d, l
    add a
    ld d, l
    sub d
    ld d, l
    and c
    ld d, l
    xor h
    ld d, l
    or a
    ld d, l
    add $55
    call $e055
    ld d, l
    db $ed
    ld d, l
    ld a, [$0755]
    ld d, [hl]
    inc d
    ld d, [hl]
    dec e
    ld d, [hl]
    inc [hl]
    ld d, [hl]
    dec a
    ld d, [hl]
    ld c, d
    ld d, [hl]
    ld e, c
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld a, c
    ld d, [hl]
    ld bc, $020a
    ld a, [bc]
    ld bc, $0208
    ld b, $04
    inc d
    inc bc
    ld b, $00
    dec b
    dec b
    dec b
    rst $38
    nop
    ld b, $01
    ld [$1402], sp
    ld bc, $ff06
    ld bc, $020a
    inc hl
    inc bc
    ld [$0804], sp
    cp $02
    nop
    ld a, [bc]
    dec b
    ld a, [bc]
    db $fd
    dec b
    rst $38
    nop
    inc b
    ld bc, $0208
    jr @+$03

    ld [$0a04], sp
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    rst $38
    inc bc
    ld [$0802], sp
    inc bc
    ld [$0802], sp
    ld bc, $030f
    ld [$1e04], sp
    rst $38
    nop
    ld [$1001], sp
    cp $02
    ld [bc], a
    add hl, bc
    ld bc, $fd09
    inc bc
    rst $38
    inc bc
    ld a, [bc]
    cp $02
    ld bc, $0209
    dec b
    db $fd
    ld [bc], a
    ld bc, $030a
    rrca
    inc b
    dec b
    rst $38
    nop
    inc b
    ld [bc], a
    ld [hl+], a
    cp $03
    nop
    add hl, bc
    ld bc, $fd09
    inc bc
    rst $38
    ld bc, $0206
    jr z, jr_034_4907

    ld [$0401], sp

jr_034_4907:
    rst $38
    nop
    ld [$0801], sp
    ld [bc], a
    inc c
    ld bc, $020c
    ld [$0801], sp
    rst $38
    ld bc, $020c
    jr jr_034_491b

    inc c

jr_034_491b:
    rst $38
    nop
    inc b
    ld [bc], a

jr_034_491f:
    jr jr_034_491f

    inc bc
    nop
    ld b, $01
    ld b, $fd
    inc bc
    rst $38
    nop
    ld b, $01
    ld [de], a
    cp $02
    nop
    ld b, $03
    ld b, $04
    ld b, $03
    ld b, $fd
    inc bc
    rst $38
    nop
    inc c
    ld bc, $ff18
    cp $08
    inc bc
    ld [bc], a
    ld bc, $0201
    ld bc, $0201
    db $fd
    ld bc, $02fe
    nop
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    rlca
    rst $38
    nop
    ld [bc], a
    inc bc
    ld b, $00
    inc c
    cp $03
    nop
    inc b
    ld bc, $0203
    inc b
    ld bc, $fd03
    inc b
    rst $38
    ld bc, $0207
    rlca
    inc bc
    rlca
    ld [bc], a
    ld e, $fe
    ld [bc], a
    inc bc
    ld b, $02
    ld b, $fd
    dec b
    ld [bc], a
    inc d
    rst $38
    nop
    inc c
    ld bc, $fe20
    ld [bc], a
    nop
    ld b, $02
    ld b, $fd
    inc bc
    rst $38
    ld bc, $0202
    ld [bc], a
    inc bc
    inc c
    nop
    ld a, [bc]
    cp $03
    nop
    dec b
    inc b
    dec b
    db $fd
    dec b
    rst $38
    ld [bc], a

jr_034_4999:
    jr jr_034_4999

    ld [bc], a
    nop
    inc b
    ld bc, $fd04
    ld [bc], a
    rst $38
    ld bc, $0206
    add hl, bc
    ld bc, $0019
    add hl, de
    inc bc
    ld a, [bc]
    cp $04
    inc bc
    inc b
    inc b
    inc b
    db $fd
    ld b, $ff
    nop
    ld [bc], a
    cp $03
    ld bc, $0308
    ld a, [bc]
    ld [bc], a
    ld b, $fd
    ld [bc], a
    rst $38
    ld bc, $0008
    dec b
    cp $07
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    inc bc
    ld [bc], a
    inc d
    rst $38
    nop
    inc b
    inc b
    ld [$02fe], sp
    dec b
    ld [$0806], sp
    db $fd
    inc bc
    inc b
    ld [$03fe], sp
    nop
    rlca
    ld bc, $0207
    dec b
    inc bc
    dec b
    db $fd
    ld [$01ff], sp
    rlca
    cp $02
    ld [bc], a
    rlca
    inc bc
    rlca
    db $fd
    ld [bc], a
    ld [bc], a
    ld a, [de]
    cp $02
    nop
    dec b
    inc b
    dec b
    db $fd
    rlca
    rst $38
    nop
    ld [$0601], sp
    ld [bc], a
    ld b, $03
    inc e
    ld [bc], a
    ld a, [bc]
    ld bc, $ff08
    cp $02
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $1400
    ld bc, $0208
    ld [$02fe], sp
    nop
    dec b
    inc b
    dec b
    db $fd
    ld [$00ff], sp
    ld b, $01
    ld c, $00
    inc c
    inc b
    rlca
    ld [bc], a
    ld [$0c00], sp
    inc b
    rlca
    ld [bc], a
    ld [$01ff], sp
    inc b
    ld [bc], a
    inc de
    cp $03
    inc bc
    dec b
    nop
    dec b
    db $fd
    inc bc
    rst $38
    inc bc
    inc d
    cp $02
    nop
    ld b, $01
    inc c
    nop
    inc bc
    ld [bc], a
    ld b, $fd
    ld [bc], a
    rst $38
    ld bc, $0205
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld bc, $000a
    ld a, [bc]
    dec b
    ld a, [bc]
    rst $38
    nop
    inc c
    ld [bc], a
    ld d, $fe
    inc bc
    nop
    ld b, $01
    ld b, $fd
    inc bc
    rst $38
    ld bc, $060a
    ld e, $00
    dec b
    dec b
    rlca
    nop
    ld a, [bc]
    cp $02
    nop
    ld b, $02
    ld b, $03
    ld b, $fd
    ld b, $ff
    nop
    ld b, $01
    inc c
    ld [bc], a
    inc h
    ld bc, $ff0c
    ld [bc], a
    ld b, $01
    ld b, $02
    ld b, $fe
    inc bc
    nop
    dec b
    inc bc
    dec b
    db $fd
    inc b
    rst $38
    nop
    inc b
    ld bc, $020a
    ld a, [bc]
    ld bc, $ff0a
    cp $02
    nop
    ld a, [bc]
    ld bc, $0205
    dec b
    db $fd
    ld bc, $02fe
    nop
    inc b
    inc bc
    dec b
    db $fd
    ld b, $ff
    nop
    rlca
    ld bc, $0208
    add hl, bc
    inc bc
    add hl, bc
    inc b
    ld a, [bc]
    inc bc
    inc c
    ld [bc], a
    ld a, [bc]
    ld bc, $ff08
    ld bc, $020e
    add hl, bc
    inc bc
    add hl, bc
    ld [bc], a
    ld b, $04
    inc d
    cp $02
    inc bc
    dec b
    inc b
    dec b
    db $fd
    ld b, $ff
    nop
    inc b
    ld bc, $0214
    ld [$0800], sp
    ld [bc], a
    ld b, $00
    ld b, $02
    inc b
    rst $38
    cp $04
    ld bc, $0207
    rlca
    db $fd
    ld bc, $0703
    nop
    rlca
    rst $38
    nop
    ld [$02fe], sp
    ld [bc], a
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    ld [bc], a
    cp $03
    inc bc
    ld [$0801], sp
    db $fd
    ld b, $ff
    ld bc, $020a
    inc d
    ld bc, $0407
    dec b
    nop
    rrca
    cp $02
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld b, $ff
    nop
    inc b
    ld bc, $020a
    ld c, $03
    inc d
    ld [bc], a
    ld a, [bc]
    inc bc
    ld [$0704], sp
    dec b
    rlca
    nop
    ld b, $05
    ld b, $ff
    ld bc, $0207
    add hl, de
    inc bc
    dec b
    ld bc, $0005
    dec b
    ld bc, $0005
    rlca
    ld bc, $ff07
    nop
    ld a, [bc]
    ld bc, $020e
    jr nz, @+$03

    ld [$feff], sp
    ld [bc], a
    ld bc, $0208
    ld a, [bc]
    ld bc, $0008
    ld a, [bc]
    db $fd
    ld bc, $1404
    cp $03
    nop
    inc b
    inc b
    inc b
    db $fd
    ld [$02ff], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    nop
    ld b, $01
    ld b, $00
    ld b, $fe
    inc bc
    ld bc, $0004
    inc b
    db $fd
    rlca
    cp $02
    ld bc, $0002
    ld [bc], a
    db $fd
    dec bc
    rst $38
    cp $06
    nop
    ld b, $01
    ld b, $fd
    ld bc, $03ff
    inc b
    cp $02
    ld [bc], a
    ld [$0901], sp
    db $fd
    ld [bc], a
    rst $38
    ld bc, $0208
    ld [$0c03], sp
    inc b
    ld b, $03
    dec b
    dec b
    ld b, $03
    dec b
    cp $04
    inc bc
    dec b
    ld b, $05
    db $fd
    ld [$0f06], sp
    ld [bc], a
    ld b, $01
    ld b, $ff
    ld bc, $fe18
    ld [bc], a
    ld [bc], a
    ld c, $03
    ld c, $fd
    ld [bc], a
    rst $38
    inc b
    inc c
    ld bc, $0020
    inc c
    ld [bc], a
    ld a, [bc]
    inc bc
    ld [$0a02], sp
    inc bc
    ld [$0602], sp
    rst $38
    nop
    ld [$1c01], sp
    cp $02
    nop
    ld c, $02
    ld c, $fd
    inc bc
    rst $38
    ld bc, $0207
    rrca
    cp $02
    inc bc
    ld [$0504], sp
    db $fd
    inc bc
    dec b
    dec c
    cp $03
    dec b
    ld a, [bc]
    ld b, $0a
    db $fd
    ld [$01ff], sp

jr_034_4bf5:
    jr jr_034_4bf5

    inc bc
    nop
    ld [$0802], sp
    db $fd
    ld [bc], a
    rst $38
    cp $05
    ld bc, $0408
    ld [$01fd], sp
    ld [bc], a
    dec b
    inc bc
    add hl, de
    rst $38
    nop
    ld [$0a02], sp
    nop
    ld [de], a
    cp $03
    ld bc, $0208
    ld [$04fd], sp
    rst $38
    ld bc, $0205
    add hl, de
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    rlca
    add hl, de
    rst $38
    nop
    inc c
    inc bc

jr_034_4c29:
    jr jr_034_4c29

    ld [bc], a
    nop
    ld [$0801], sp
    db $fd
    inc bc
    rst $38
    ld bc, $0207
    dec b
    cp $02
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    db $fd
    inc bc
    ld [bc], a
    db $10
    rst $38
    inc bc
    jr jr_034_4c45

jr_034_4c45:
    inc c
    cp $02
    ld bc, $0208
    ld [$03fd], sp
    rst $38
    cp $03
    nop
    add hl, bc
    ld bc, $020a
    add hl, bc
    db $fd
    ld bc, $01ff
    ld [$04fe], sp
    ld [bc], a
    ld b, $03
    ld b, $fd
    ld [bc], a
    ld bc, $ff0c
    inc bc
    ld a, [bc]
    cp $02
    ld bc, $020c
    inc c
    inc bc
    inc c
    db $fd
    ld [bc], a
    inc bc
    rlca
    rst $38
    nop
    inc c
    ld [bc], a
    ld d, $fe
    ld [bc], a
    nop
    inc c
    ld bc, $fd0c
    inc bc
    rst $38
    ld bc, $020c
    jr z, jr_034_4c89

    ld a, [bc]

jr_034_4c89:
    rst $38
    nop
    inc b
    ld bc, $fe1e
    inc bc
    ld [bc], a
    dec b
    ld b, $03
    inc bc
    dec b
    inc b
    inc bc
    db $fd
    inc bc
    rlca
    ld [$feff], sp
    ld [bc], a
    nop
    ld [$0803], sp
    db $fd
    ld bc, $02fe
    nop
    ld [$0801], sp
    ld [bc], a
    inc c
    ld bc, $fd08
    dec b
    rst $38
    cp $02
    nop
    dec b
    ld bc, $0205
    dec b
    db $fd
    ld bc, $0c03
    rst $38
    ld bc, $020a
    add hl, de
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    rst $38
    ld bc, $0209
    dec b
    inc b
    ld a, [bc]
    dec b
    db $10
    rst $38
    cp $02
    ld [bc], a
    rrca
    ld bc, $fd17
    ld bc, $0802
    rst $38
    nop
    ld [$1001], sp
    cp $03
    ld [bc], a
    rlca
    ld bc, $fd07
    inc bc
    rst $38
    ld bc, $020c
    inc c
    inc bc
    ld de, $0f00
    cp $02
    nop
    add hl, bc
    inc b
    add hl, bc
    db $fd
    dec b
    rst $38
    nop
    ld [$0c01], sp
    ld [bc], a
    ld [de], a
    ld bc, $030c
    inc c
    rst $38
    ld bc, $0207
    rlca
    ld bc, $0207
    rlca
    nop
    ld [de], a
    inc bc
    ld b, $00
    ld b, $03
    ld b, $ff
    nop
    ld a, [bc]
    ld [bc], a
    inc h
    nop
    dec b
    ld bc, $0205
    rlca
    nop
    ld b, $01
    dec b
    nop
    rlca
    cp $04
    ld [bc], a
    inc c
    inc bc
    inc c
    db $fd
    add hl, bc
    rst $38
    ld bc, $0205
    inc e
    ld bc, $ff0a
    nop
    inc b
    ld bc, $0008
    inc e
    ld bc, $fe0c
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    dec b
    ld [bc], a
    jr jr_034_4d4b

jr_034_4d4b:
    ld a, [bc]
    inc b
    ld a, [bc]
    rst $38
    cp $02
    ld bc, $0208
    ld [$0803], sp
    nop
    ld [$01fd], sp
    rst $38
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$0401], sp
    ld [bc], a
    inc b
    inc bc
    inc b
    rst $38
    ld bc, $0206
    ld b, $03
    ld c, $02
    ld b, $ff
    ld bc, $020c
    jr nz, @+$03

jr_034_4d7f:
    jr jr_034_4d7f

    ld [bc], a
    inc bc
    ld [$0801], sp
    db $fd
    inc b
    rst $38
    ld bc, $020a
    ld a, [bc]
    inc b
    ld a, [bc]
    ld bc, $ff09
    nop
    ld b, $02

jr_034_4d95:
    jr nz, jr_034_4d95

    ld [bc], a
    nop
    ld a, [bc]
    ld bc, $fd0a
    inc bc
    rst $38
    ld bc, $0209
    add hl, bc
    inc bc
    add hl, bc
    inc b
    add hl, bc
    dec b
    ld c, $ff
    nop
    inc b
    ld [bc], a
    inc c
    ld bc, $0208
    inc e
    rst $38
    ld bc, $020c
    inc c
    inc bc
    inc c
    ld bc, $ff0c
    cp $03
    nop
    rlca
    ld bc, $fd07
    ld bc, $feff
    ld [bc], a
    ld bc, $0209
    add hl, bc
    db $fd
    ld bc, $0903
    rst $38
    nop
    inc b
    ld bc, $0212
    jr jr_034_4dd8

    ld [de], a

jr_034_4dd8:
    nop
    inc c
    ld bc, $ff0c
    ld bc, $020a
    ld a, [bc]
    inc bc
    inc l
    ld [bc], a
    ld a, [bc]
    ld bc, $ff0a
    ld bc, $0406
    rlca
    ld [bc], a
    ld [hl-], a
    cp $03
    nop
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    inc b
    rst $38
    cp $02
    ld bc, $020c
    inc c
    inc bc
    inc c
    db $fd
    ld bc, $0c04
    dec b
    inc c
    ld b, $0c
    rst $38
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$0500], sp
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    dec b
    rst $38
    cp $02
    ld bc, $020f
    rrca
    inc bc
    rrca
    db $fd
    ld bc, $05ff
    ld [de], a
    nop
    ld b, $fe
    ld [bc], a
    nop
    ld b, $01
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    db $fd
    inc bc
    rst $38
    cp $02
    ld bc, $020b
    dec bc
    db $fd
    ld bc, $0b00
    ld [bc], a
    dec bc
    nop
    rrca
    ld [bc], a
    rrca
    rst $38
    nop
    ld [$0801], sp
    cp $02
    nop
    ld b, $01
    inc b
    db $fd
    inc bc
    rst $38
    ld bc, $0205
    jr z, @+$01

    nop
    ld [$02fe], sp
    ld bc, $0204
    inc b
    db $fd
    ld [bc], a
    nop
    ld bc, $03fe
    ld bc, $0203
    inc bc
    db $fd
    rlca
    nop
    ld bc, $0401
    ld [bc], a
    inc b
    nop
    ld [$0803], sp
    rst $38
    ld bc, $0007
    rlca
    ld bc, $fe07
    inc bc
    ld [bc], a
    ld b, $00
    ld b, $fd
    inc b
    rst $38
    nop
    inc b
    dec b
    inc de
    ld bc, $0208
    ld b, $06
    inc bc
    inc bc
    ld [bc], a
    inc b
    jr z, jr_034_4e9c

    ld [bc], a
    ld b, $02

jr_034_4e9c:
    ld bc, $ff08
    cp $03
    ld bc, $0207
    rlca
    db $fd
    ld bc, $02fe
    inc bc
    rlca
    inc b
    rlca
    db $fd
    dec b
    rst $38
    nop
    inc b
    dec b
    jr jr_034_4eb6

    inc c

jr_034_4eb6:
    ld [bc], a
    ld b, $03
    ld a, [bc]
    inc b
    ld b, $01
    dec b
    ld [bc], a
    dec b
    inc bc
    dec b
    inc b
    dec b
    ld bc, $ff08
    ld bc, $fe14
    inc bc
    ld bc, $0206
    ld b, $fd
    ld [bc], a
    ld bc, $030f
    ld b, $01
    jr z, jr_034_4eda

    ld a, [bc]
    rst $38

jr_034_4eda:
    ld bc, $0210
    ld b, $03
    ld b, $00
    ld b, $03
    ld b, $ff
    ld bc, $0214
    ld b, $03
    dec b
    inc b
    ld a, [bc]
    dec b
    rrca
    rst $38
    ld bc, $fe0f
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $38
    ld bc, $0205
    dec c
    ld bc, $ff28
    nop
    ld [$2201], sp
    inc b
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    cp $10
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $fd
    dec b
    rst $38
    ld bc, $0406
    ld b, $01
    ld b, $02
    ld a, [bc]
    cp $02
    nop
    dec b
    inc bc
    dec b
    db $fd
    dec b
    rst $38
    ld bc, $0024
    jr jr_034_4f2d

    ld a, [bc]
    rst $38

jr_034_4f2d:
    ld bc, $051e
    ld a, [bc]
    ld [bc], a
    inc c
    inc bc
    add hl, bc
    inc b
    add hl, bc
    inc bc
    add hl, bc
    inc b
    rrca
    rst $38
    ld bc, $0210

jr_034_4f3f:
    jr jr_034_4f3f

    inc bc
    nop
    inc bc
    inc bc
    inc bc
    db $fd
    inc bc
    rst $38
    cp $02
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    db $fd
    ld bc, $01ff
    ld e, $00
    db $10
    cp $04
    ld [bc], a
    inc c
    nop
    inc c
    db $fd
    inc bc
    rst $38
    cp $03
    nop
    inc c
    ld bc, $020c
    inc c
    db $fd
    ld bc, $01ff
    jr jr_034_4f6f

jr_034_4f6f:
    ld [$0c01], sp
    ld [bc], a
    inc b
    inc bc
    inc b
    ld [bc], a
    inc b
    rst $38
    cp $05
    nop
    ld b, $01
    ld b, $fd
    ld bc, $0702
    inc bc
    rlca
    rst $38
    ld bc, $0208
    ld [$0808], sp
    inc bc
    ld [$0804], sp
    dec b
    ld [$0807], sp
    nop
    jr nz, jr_034_4f9d

    ld b, $ff
    ld bc, $0205
    ld [de], a

jr_034_4f9d:
    inc bc
    ld b, $fe
    rlca
    inc b
    inc b
    dec b
    inc b
    db $fd
    inc b
    rst $38
    cp $02
    nop
    db $10
    ld bc, $0210
    db $10
    ld bc, $fd10
    ld bc, $01ff
    ld [$03fe], sp
    cp $03
    ld bc, $0202
    ld [bc], a
    db $fd
    inc bc
    cp $04
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    db $fd
    rlca
    db $fd
    rlca
    rst $38
    ld bc, $fe10
    inc bc
    ld [bc], a
    rlca
    inc bc
    rlca
    db $fd
    ld [bc], a
    rst $38
    ld bc, $020c
    ld [$02fe], sp
    inc bc
    inc c
    inc b
    inc c
    db $fd
    inc bc
    rst $38
    nop
    ld [$0a03], sp
    ld bc, $001c
    inc c
    cp $03
    ld [bc], a
    dec bc
    inc bc
    dec bc
    db $fd
    dec b
    ld bc, $ff07
    nop
    inc c
    cp $03
    ld bc, $0209
    rlca
    db $fd
    ld [bc], a
    rst $38
    cp $02
    ld bc, $020b
    dec bc
    db $fd
    ld bc, $01ff
    ld a, [bc]
    ld [bc], a
    rlca
    inc bc
    jr z, @+$04

    add hl, bc
    ld bc, $ff0a
    dec b
    ld [$0801], sp
    ld [bc], a
    ld [$0603], sp
    ld [bc], a
    ld b, $00
    inc c
    ld b, $0c
    rlca
    inc c
    ld [$ff0c], sp
    ld bc, $0206
    ld b, $fe
    ld [bc], a
    inc bc
    rlca
    inc b
    rlca
    db $fd
    inc bc
    ld [bc], a
    ld a, [bc]
    rst $38
    nop
    inc b
    cp $03
    ld bc, $020a
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $38
    ld bc, $0205
    ld h, $01
    ld [$1400], sp
    cp $02
    nop
    ld b, $04
    ld b, $fd
    dec b
    rst $38
    ld bc, $fe0a
    inc bc
    ld [bc], a
    ld [$0803], sp
    db $fd
    ld [bc], a
    rst $38
    cp $03
    ld bc, $0003
    inc bc
    db $fd
    ld bc, $1901
    ld [bc], a
    ld b, $01
    ld b, $ff
    ld bc, $0208
    ld d, $01
    ld [$01ff], sp
    ld a, [bc]
    ld [bc], a
    jr z, @+$03

    ld b, $ff
    nop
    ld b, $02
    inc c
    ld bc, $0210
    inc c
    rst $38
    ld bc, $fe28
    ld [bc], a
    ld bc, $0205
    dec b
    db $fd
    ld [bc], a
    ld bc, $ff19
    ld [bc], a
    inc c
    nop
    inc c
    ld [bc], a
    db $10
    cp $03
    nop
    ld [$0801], sp
    db $fd
    inc b
    rst $38
    ld bc, $020a
    dec hl
    ld bc, $000a
    rrca
    cp $02
    nop
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    dec b
    rst $38
    dec b
    ld [$02fe], sp
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    ld [bc], a
    dec b
    inc c
    rst $38
    ld bc, $fe0a
    inc bc
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $38
    ld bc, $050a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    nop
    ld a, [bc]
    ld bc, $050a
    ld a, [bc]
    ld bc, $000a
    inc c
    ld bc, $ff0c
    cp $02
    nop
    rlca
    ld bc, $fd07
    ld bc, $0902
    inc bc
    add hl, bc
    rst $38
    cp $02
    ld bc, $0208
    ld [$0803], sp
    ld [bc], a
    ld [$01fd], sp
    rst $38
    ld bc, $020c
    inc c
    cp $02
    inc bc
    inc c
    inc b
    inc c
    db $fd
    inc bc
    ld bc, $fe0c
    inc bc
    nop
    inc c
    ld bc, $fd0c
    ld [$03ff], sp
    ld [$02fe], sp
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    db $fd
    ld [bc], a
    cp $03
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    db $fd
    ld b, $fe
    dec b
    dec b
    ld [bc], a
    inc bc
    ld bc, $0afd
    dec b
    ld c, $03
    inc b
    rst $38
    ld bc, $0207
    rlca
    inc bc
    ld b, $02
    ld b, $03
    dec b
    ld [bc], a
    dec b
    cp $03
    inc bc
    inc bc
    ld [bc], a
    inc bc
    db $fd
    rlca
    cp $02
    inc bc
    add hl, de
    ld [bc], a
    inc d
    db $fd
    dec bc
    nop
    rrca
    inc b
    rrca
    rst $38
    nop
    inc b
    ld bc, $0018
    ld [$02fe], sp
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    db $fd
    inc b
    rst $38
    ld bc, $020c
    dec bc
    inc bc
    rrca
    rst $38
    nop
    ld b, $01
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    ld bc, $000c
    ld [$02fe], sp
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld b, $ff
    ld bc, $0404
    inc b
    ld bc, $fe04
    inc b
    inc b
    inc bc
    ld bc, $fd03
    inc b
    ld [bc], a
    inc bc
    inc bc
    add hl, bc
    ld bc, $ff03
    inc b
    ld b, $00
    inc b
    ld bc, $020c
    ld d, $04
    inc c
    nop
    ld a, [bc]
    inc b
    ld [$01ff], sp
    ld [$06fe], sp
    ld [bc], a
    inc b
    inc bc
    inc b
    db $fd
    ld [bc], a
    cp $02
    dec b
    inc bc
    ld bc, $fd03
    ld b, $ff
    cp $03
    ld bc, $020a
    ld a, [bc]
    db $fd
    ld bc, $03fe
    nop
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    db $fd
    dec b
    rst $38
    cp $05
    inc bc
    dec b
    ld [bc], a
    dec b
    ld bc, $fd05
    ld bc, $00ff
    inc b
    ld bc, $020a
    db $10
    inc bc
    inc h
    ld [bc], a
    inc c
    rst $38
    cp $02
    nop
    rrca
    ld bc, $fd0f
    ld bc, $03ff
    ld d, $fe
    ld [bc], a
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$02fd], sp
    rst $38
    ld bc, $020f
    inc b
    inc bc
    rlca
    inc b
    rlca
    inc bc
    rlca
    inc b
    rlca
    cp $02
    nop
    dec b
    dec b
    dec b
    db $fd
    rlca
    rst $38
    nop
    inc b
    ld bc, $0314
    jr @+$04

    inc d
    cp $03
    inc b
    ld b, $02
    ld b, $fd
    dec b
    rst $38
    ld bc, $fe08
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    inc bc
    inc c
    db $fd
    ld [bc], a
    rst $38
    ld bc, $0204

jr_034_5227:
    jr jr_034_5227

    rlca
    ld bc, $0302
    ld [bc], a
    db $fd
    inc bc
    ld bc, $ff08
    ld bc, $0207
    inc c
    cp $02
    nop
    dec b
    inc bc
    dec b
    db $fd
    inc bc
    rst $38
    ld bc, $fe0c
    ld b, $02
    inc bc
    inc bc
    inc bc
    db $fd
    ld [bc], a
    ld bc, $ff18
    cp $02
    nop
    dec b
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $fd05
    ld bc, $07fe
    inc bc
    ld [bc], a
    nop
    ld bc, $05fd
    inc bc
    ld a, [bc]
    rst $38
    ld bc, $020c
    inc c
    inc bc
    inc c
    cp $02
    nop
    dec b
    inc b
    dec b
    db $fd
    inc b
    rst $38
    nop
    ld b, $01
    ld d, $02
    inc c
    inc b
    ld [$01ff], sp
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    rst $38
    nop
    inc b
    ld bc, $0208
    ld c, $01
    ld b, $ff
    cp $02
    nop
    ld a, [bc]
    ld bc, $fd0c
    ld bc, $0600
    ld [bc], a
    ld b, $ff
    ld [bc], a
    add hl, bc
    ld bc, $fe09
    ld [bc], a
    dec b
    add hl, bc
    inc b
    add hl, bc
    db $fd
    inc bc
    rst $38
    ld bc, $020a
    ld a, [bc]
    inc bc
    add hl, de
    ld [bc], a
    ld a, [bc]
    rst $38
    nop
    inc b
    inc bc
    inc c
    ld [bc], a
    inc c
    ld bc, $fe0c
    ld [bc], a
    nop
    inc c
    inc b
    inc c
    db $fd
    dec b
    rst $38
    ld bc, $0008
    rlca
    ld bc, $fe05
    ld [bc], a
    nop
    ld b, $02
    ld b, $fd
    inc b
    rst $38
    ld bc, $fe06
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $fd
    ld [bc], a
    inc bc
    ld [de], a
    rst $38
    ld bc, $020a
    ld [$07fe], sp
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    db $fd
    inc bc
    ld bc, $0406
    ld b, $ff
    inc bc
    inc c
    ld bc, $020c
    inc c
    inc b
    ld a, [bc]
    nop
    inc c
    inc b
    ld a, [bc]
    dec b
    inc c
    inc b
    ld a, [bc]
    rst $38
    ld bc, $020a
    inc h
    inc bc
    ld a, [bc]
    cp $03
    nop
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    inc b
    rst $38
    cp $02
    ld [bc], a
    ld b, $03
    ld b, $fd
    ld bc, $0800
    ld bc, $0408
    ld [$feff], sp
    ld [bc], a
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    ld bc, $fd0a
    ld bc, $00ff
    inc b
    ld bc, $fe08
    inc bc
    ld [bc], a
    rlca
    inc bc
    rlca
    db $fd
    inc bc
    ld bc, $ff08
    cp $03
    ld bc, $020a
    ld a, [bc]
    db $fd
    ld bc, $00ff
    inc b
    ld bc, $020a
    ld c, $03
    ld c, $ff
    ld bc, $0209
    add hl, bc
    inc bc
    add hl, bc
    rst $38
    ld bc, $fe18
    ld [bc], a
    nop
    inc c
    ld [bc], a
    inc c
    db $fd
    ld [bc], a
    rst $38
    ld bc, $fe18
    inc bc
    nop
    inc b
    ld [bc], a
    inc b
    db $fd
    ld [bc], a
    rst $38
    ld bc, $020c
    ld b, $03
    db $10
    rst $38
    ld bc, $000a
    dec b
    inc bc
    dec b
    cp $05
    nop
    inc bc
    ld [bc], a
    inc bc
    db $fd
    inc b
    rst $38
    cp $02
    ld bc, $0208
    ld [$01fd], sp
    nop
    ld [$0804], sp
    rst $38
    ld bc, $0209
    inc c
    inc bc
    add hl, bc
    inc b
    add hl, bc
    rst $38
    nop
    ld [$1a01], sp
    cp $02
    nop
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $0207
    ld e, $fe
    ld [bc], a
    ld [bc], a
    ld [$0803], sp
    db $fd
    inc bc
    ld [bc], a
    ld e, $ff
    ld [bc], a
    ld a, [bc]
    cp $02
    ld bc, $0206
    ld b, $fd
    ld [bc], a
    ld bc, $0007
    rlca
    ld bc, $ff07
    ld bc, $0207
    add hl, de
    inc bc
    inc hl
    ld bc, $0207
    add hl, de
    cp $02
    nop
    ld b, $01
    ld b, $fd
    ld b, $ff
    ld bc, $0212
    dec c
    inc bc
    dec c
    rst $38
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0905], sp
    dec b
    ld a, [bc]
    dec b
    rst $38
    ld bc, $0207
    ld e, $ff
    ld bc, $040f
    inc b
    cp $02
    ld bc, $0205
    dec b
    db $fd
    inc bc
    cp $03
    ld bc, $0405
    dec b
    db $fd
    rlca
    dec b
    dec b
    inc bc
    dec b
    rst $38
    ld bc, $0206
    ld [de], a
    rst $38
    ld bc, $0208
    db $10
    cp $02
    ld [bc], a
    dec b
    inc bc
    dec b
    inc b
    dec b
    db $fd
    inc bc
    ld [bc], a
    add hl, de
    ld bc, $ff08
    ld bc, $fe0c
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    ld [bc], a
    inc b
    inc c
    rst $38
    ld bc, $ff23
    ld bc, $020e
    ld [de], a
    inc bc
    inc e
    ld [bc], a
    ld [$0601], sp
    rst $38
    cp $02
    ld bc, $0207
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    ld bc, $03fe
    inc b
    ld [$0800], sp
    db $fd
    ld b, $ff
    ld bc, $0020
    db $10
    cp $02
    ld bc, $0007
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $0205
    inc d
    cp $02
    nop
    dec bc
    inc bc
    dec bc
    db $fd
    inc bc
    rst $38
    nop
    ld b, $05
    ld d, $fe
    inc bc
    ld [bc], a
    ld b, $01
    ld b, $03
    ld b, $fd
    inc bc
    ld b, $12
    rst $38
    ld bc, $0207
    rlca
    inc bc
    inc c
    ld bc, $fe07
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    dec b
    rst $38
    nop
    ld b, $01
    inc d
    ld [bc], a
    ld [de], a
    rst $38
    ld bc, $0204
    ld e, $ff
    ld bc, $0208
    inc e
    nop

jr_034_54af:
    jr jr_034_54af

    inc bc
    nop
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    inc b
    rst $38
    ld bc, $040d
    ld a, [bc]
    cp $04
    ld [bc], a
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    inc bc
    ld bc, $ff0a
    ld bc, $020c
    ld a, [bc]
    inc bc
    ld b, $04
    ld c, $06
    inc c
    rlca
    ld a, [bc]
    ld [$0006], sp
    ld c, $ff
    ld bc, $0205
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    ld bc, $ff19
    ld bc, $fe18
    ld [bc], a
    nop
    add hl, bc
    ld [bc], a
    add hl, bc
    db $fd
    ld [bc], a
    rst $38
    ld bc, $0214
    ld a, [bc]
    inc bc
    ld a, [bc]
    rst $38
    ld bc, $020a
    ld d, $01
    ld a, [bc]
    nop
    inc c
    inc bc
    ld [de], a
    rst $38
    ld bc, $0205
    ld a, [bc]
    inc bc
    ld a, [bc]
    rst $38
    nop
    inc c
    ld bc, $fe18
    inc b
    ld [bc], a
    dec b
    nop
    dec b
    db $fd
    inc bc
    rst $38
    ld bc, $0202
    ld a, [bc]
    cp $02
    inc bc
    add hl, bc
    ld [bc], a
    add hl, bc
    db $fd
    inc bc
    ld [bc], a
    dec c
    ld bc, $0002
    dec b
    ld b, $05
    rst $38
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rrca
    inc b
    rrca
    nop
    rrca
    dec b
    rrca
    rst $38
    cp $03
    ld bc, $0209
    add hl, bc
    db $fd
    ld bc, $0801
    rst $38
    ld bc, $0205
    dec b
    ld bc, $0005
    rlca
    inc bc
    rlca
    rst $38
    ld bc, $fe0b
    add hl, bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    db $fd
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc b
    inc b
    ld [$01ff], sp
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    nop
    inc c
    cp $03
    inc b
    ld b, $05
    ld b, $fd
    dec b
    rst $38
    ld bc, $020a
    ld a, [bc]
    cp $02
    nop
    dec b
    inc bc
    dec b
    db $fd
    inc bc
    rst $38
    ld [bc], a
    ld [$1801], sp
    inc bc
    ld a, [bc]
    inc b
    ld b, $ff
    cp $02
    ld bc, $0206
    ld [$0600], sp
    db $fd
    ld bc, $01ff
    ld c, $00
    inc c
    ld bc, $000e
    ld d, $02
    ld [$0800], sp
    ld [bc], a
    ld [$feff], sp
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rlca
    ld bc, $fd07
    ld bc, $01ff
    ld [$04fe], sp
    ld [bc], a
    dec b
    inc bc
    ld b, $fd
    ld [bc], a
    rst $38
    ld bc, $040c
    dec b
    cp $04
    ld [bc], a
    ld [$0803], sp
    db $fd
    inc bc
    inc b
    add hl, de
    rst $38
    ld bc, $0206
    ld [$1803], sp
    rst $38
    ld bc, $fe07
    rlca
    ld [bc], a
    inc bc
    ld bc, $fd03
    ld [bc], a
    cp $04
    inc b
    inc bc
    inc bc
    inc bc
    db $fd
    ld b, $ff
    ld bc, $fe0e
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    rlca
    db $fd
    ld [bc], a
    inc b
    db $10
    rst $38
    ld bc, $fe0a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld bc, $fd09
    ld [bc], a
    inc bc
    dec b
    rst $38
    ld bc, $020c
    ld c, $01
    ld a, [bc]
    inc bc
    inc b
    nop
    ld b, $03
    ld [$01ff], sp
    ld b, $fe
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    ld [bc], a
    ld [bc], a
    inc hl
    rst $38
    nop
    inc b
    ld bc, $020a
    inc c
    inc bc
    ld e, $ff
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    cp $02
    ld b, $03
    rlca
    inc bc
    ld [$0003], sp
    inc bc
    db $fd
    ld b, $ff
    inc bc
    inc c
    ld bc, $020c
    inc e
    inc bc
    ld [$01ff], sp
    add hl, de
    cp $02
    nop
    inc b
    ld bc, $0204
    inc b
    db $fd
    ld [bc], a
    rst $38
    ld bc, $020e
    db $10
    inc bc
    db $10
    ld bc, $040e
    stop
    db $10
    inc b
    db $10
    rst $38
    ld bc, $020b
    dec bc
    inc bc
    ld c, $04
    ld c, $05
    ld c, $06
    dec bc
    rst $38
    nop
    inc b
    ld bc, $0208
    inc c
    cp $05
    nop
    dec b
    inc bc
    dec b
    db $fd
    inc b
    nop
    ld b, $04
    inc c
    rst $38
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0905], sp
    dec b
    ld a, [bc]
    dec b
    cp $03
    inc c
    dec b
    dec c
    dec b
    db $fd
    dec bc
    rst $38
    cp $02
    ld bc, $0004
    inc b
    ld [bc], a
    inc b
    nop
    inc b
    db $fd
    ld bc, $99ff
    ld e, b
    and b
    ld e, b
    xor l
    ld e, b
    or [hl]
    ld e, b
    cp a
    ld e, b
    call z, $d558
    ld e, b
    sbc $58
    rst $20
    ld e, b
    ldh a, [$58]
    ld sp, hl
    ld e, b
    inc b
    ld e, c
    dec c
    ld e, c
    ld [hl+], a
    ld e, c
    dec hl
    ld e, c
    inc a
    ld e, c
    ld c, c
    ld e, c
    ld d, d
    ld e, c
    ld h, c
    ld e, c
    ld l, d
    ld e, c
    ld a, e
    ld e, c
    add [hl]
    ld e, c
    adc a
    ld e, c
    sbc h
    ld e, c
    xor c
    ld e, c
    cp d
    ld e, c
    jp $ce59


    ld e, c
    rst $10
    ld e, c
    ldh [$59], a
    jp hl


    ld e, c
    db $f4
    ld e, c
    db $fd
    ld e, c
    ld a, [bc]
    ld e, d
    inc de
    ld e, d
    jr nz, jr_034_5745

    add hl, hl
    ld e, d
    inc [hl]
    ld e, d
    dec a
    ld e, d
    ld b, [hl]
    ld e, d
    ld c, a
    ld e, d
    ld e, d
    ld e, d
    ld h, e
    ld e, d
    ld l, h
    ld e, d
    ld [hl], l
    ld e, d
    add d
    ld e, d
    adc e
    ld e, d
    sub d
    ld e, d
    sbc e
    ld e, d
    and h
    ld e, d
    xor l
    ld e, d
    cp [hl]
    ld e, d
    rst $00
    ld e, d
    ret nc

    ld e, d
    reti


    ld e, d
    ld [c], a
    ld e, d
    db $eb
    ld e, d
    ld hl, sp+$5a
    inc bc
    ld e, e
    inc c
    ld e, e
    dec e
    ld e, e
    ld h, $5b
    cpl
    ld e, e
    jr c, @+$5d

    ld b, c
    ld e, e
    ld c, b
    ld e, e
    ld d, c
    ld e, e
    ld h, d
    ld e, e
    ld l, e
    ld e, e
    ld a, b
    ld e, e
    add c
    ld e, e
    adc h
    ld e, e
    sub l
    ld e, e
    and b
    ld e, e
    xor c
    ld e, e
    or h
    ld e, e
    cp l
    ld e, e
    call nz, $cd5b
    ld e, e
    ret nc

    ld e, e
    reti


    ld e, e

jr_034_5745:
    db $e4
    ld e, e
    di
    ld e, e
    ld a, [$075b]
    ld e, h
    db $10
    ld e, h
    dec de
    ld e, h
    ld a, [hl+]
    ld e, h
    scf
    ld e, h
    ld b, b
    ld e, h
    ld c, c
    ld e, h
    ld c, [hl]
    ld e, h
    ld d, a
    ld e, h
    ld e, d
    ld e, h
    ld l, c
    ld e, h
    ld [hl], h
    ld e, h
    add c
    ld e, h
    adc d
    ld e, h
    sub c
    ld e, h
    sbc d
    ld e, h
    and l
    ld e, h
    xor b
    ld e, h
    or c
    ld e, h
    cp d
    ld e, h
    jp $cc5c


    ld e, h
    push de
    ld e, h
    ld [c], a
    ld e, h
    db $eb
    ld e, h
    xor $5c
    ei
    ld e, h
    inc b
    ld e, l
    dec c
    ld e, l
    ld d, $5d
    rra
    ld e, l
    inc l
    ld e, l
    dec [hl]
    ld e, l
    ld b, b
    ld e, l
    ld c, c
    ld e, l
    ld d, h
    ld e, l
    ld e, a
    ld e, l
    ld h, [hl]
    ld e, l
    ld l, a
    ld e, l
    ld a, b
    ld e, l
    add c
    ld e, l
    adc d
    ld e, l
    sub e
    ld e, l
    sbc h

Call_034_57a2:
    ld e, l
    and l
    ld e, l
    xor [hl]
    ld e, l
    or a
    ld e, l
    ret nz

    ld e, l
    ret


    ld e, l
    sub $5d
    rst $18
    ld e, l
    add sp, $5d
    pop af
    ld e, l
    ld a, [$035d]
    ld e, [hl]
    inc c
    ld e, [hl]
    add hl, de
    ld e, [hl]
    ld [hl+], a
    ld e, [hl]
    dec hl
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    ld b, c
    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld d, a
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld [hl], c
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    add a
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sbc a
    ld e, [hl]
    xor b
    ld e, [hl]
    or c
    ld e, [hl]
    cp d
    ld e, [hl]
    jp $cc5e


    ld e, [hl]
    rst $10
    ld e, [hl]
    ldh [$5e], a
    jp hl


    ld e, [hl]
    ld a, [c]
    ld e, [hl]
    ei
    ld e, [hl]
    ld [$115f], sp
    ld e, a
    inc e
    ld e, a
    dec h
    ld e, a
    ld l, $5f
    dec sp
    ld e, a
    ld b, h
    ld e, a
    ld c, l
    ld e, a
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld l, b
    ld e, a
    ld [hl], c
    ld e, a
    ld a, d
    ld e, a
    add e
    ld e, a
    add [hl]
    ld e, a
    sbc c
    ld e, a
    and d
    ld e, a
    xor e
    ld e, a
    or [hl]
    ld e, a
    cp a
    ld e, a
    jp z, $d35f

    ld e, a
    call c, $e55f
    ld e, a
    ldh a, [$5f]
    ld sp, hl
    ld e, a
    ld [bc], a
    ld h, b
    dec bc
    ld h, b
    inc d
    ld h, b
    dec e
    ld h, b
    ld h, $60
    cpl
    ld h, b
    inc [hl]
    ld h, b
    dec a
    ld h, b
    ld b, [hl]
    ld h, b
    ld c, a
    ld h, b
    ld d, h
    ld h, b
    ld e, l
    ld h, b
    ld h, [hl]
    ld h, b
    ld l, c
    ld h, b
    ld l, [hl]
    ld h, b
    ld [hl], a
    ld h, b
    add b
    ld h, b
    adc c
    ld h, b
    adc h
    ld h, b
    sub l
    ld h, b
    sbc [hl]
    ld h, b
    and a
    ld h, b
    or b
    ld h, b
    cp c
    ld h, b
    jp nz, $cb60

    ld h, b
    jp nc, $db60

    ld h, b
    db $e4
    ld h, b
    db $ed
    ld h, b
    ldh a, [$60]
    ld sp, hl
    ld h, b
    ld [bc], a
    ld h, c
    dec bc
    ld h, c
    inc d
    ld h, c
    dec e
    ld h, c
    ld h, $61
    cpl
    ld h, c
    jr c, jr_034_58cc

    ld b, l
    ld h, c
    ld c, [hl]
    ld h, c
    ld d, a
    ld h, c
    ld h, b
    ld h, c
    ld l, c
    ld h, c
    ld l, h
    ld h, c
    ld [hl], l
    ld h, c
    ld a, [hl]
    ld h, c
    add a
    ld h, c
    sub d
    ld h, c
    sbc e
    ld h, c
    and [hl]
    ld h, c
    xor a
    ld h, c
    cp b
    ld h, c
    pop bc
    ld h, c
    adc $61
    rst $10
    ld h, c
    ld [c], a
    ld h, c
    db $eb
    ld h, c
    or $61
    rst $38
    ld h, c
    inc c
    ld h, d
    dec d
    ld h, d
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    rst $38
    cp $02
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $0800
    ld bc, $ff06
    ld bc, $0023
    dec c
    ld b, $0d
    rlca
    dec c
    rst $38
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld bc, $03ff
    ld [$0f04], sp
    cp $02
    nop
    ld [$0a01], sp
    db $fd
    inc bc
    rst $38

jr_034_58cc:
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc c
    inc b
    inc c
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    ld bc, $fd0a
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc b
    db $fd
    ld bc, $02fe
    nop
    dec b
    inc bc
    dec b
    inc b
    dec b
    inc bc
    dec b
    db $fd
    dec b
    rst $38
    cp $02
    nop
    rlca
    ld bc, $fd07
    ld bc, $feff
    inc b
    inc bc
    ld [bc], a
    ld bc, $0201
    ld bc, $0201
    db $fd
    ld bc, $1900
    inc bc
    ld a, [bc]
    rst $38
    cp $02
    nop
    ld [$0401], sp
    ld [bc], a
    ld b, $01
    inc b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $03
    ld b, $fd
    ld bc, $0602
    nop
    ld b, $02
    ld b, $ff
    cp $03
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    inc bc
    inc b
    db $fd
    ld bc, $02fe
    nop
    inc b
    ld bc, $fd04
    dec b
    rst $38
    cp $03
    ld bc, $0506
    ld b, $fd
    ld bc, $0706
    rst $38
    cp $03
    inc b
    dec b
    nop
    dec b
    db $fd
    ld bc, $feff
    dec b
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    nop
    ld [bc], a
    db $fd
    ld bc, $00ff
    ld [$0604], sp
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    inc b
    ld b, $ff
    cp $03
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $02fe
    nop
    dec b
    inc b
    dec b
    db $fd
    dec b
    rst $38
    nop
    ld b, $04
    ld b, $00
    inc b
    inc b
    inc b
    rst $38
    cp $03
    nop
    rlca
    dec b
    rlca
    db $fd
    ld bc, $0d04
    rst $38
    nop
    ld [$0603], sp
    nop
    inc b
    inc bc
    inc b
    rst $38
    cp $03
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    db $fd
    ld bc, $06ff
    ld [hl-], a
    cp $02
    nop
    rlca
    ld b, $07
    db $fd
    ld [bc], a
    rst $38
    cp $03
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc bc
    inc b
    ld b, $05
    ld b, $fd
    ld bc, $0600
    inc b
    ld b, $ff
    cp $03
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    inc b
    inc c
    dec b
    inc c
    db $fd
    ld bc, $0500
    inc bc
    dec b
    rst $38
    cp $03
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $04ff
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    nop
    dec b
    inc bc
    dec b
    rst $38
    cp $03
    nop
    ld b, $05
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    rlca
    ld bc, $fd07
    ld bc, $feff
    inc bc
    nop
    ld b, $03
    ld b, $fd
    ld bc, $02ff
    inc hl
    cp $02
    nop
    inc c
    inc bc
    inc c
    db $fd
    ld [bc], a
    rst $38
    cp $03
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    dec b
    ld a, [bc]
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $0c00
    inc bc
    rlca
    rst $38
    cp $03
    nop
    ld b, $03
    ld b, $fd
    ld bc, $05ff
    ld e, $00
    dec b
    inc b
    inc d
    rst $38
    cp $02
    nop
    inc c
    ld [bc], a
    db $10
    db $fd
    ld bc, $feff
    inc bc
    nop
    inc b
    ld [bc], a
    inc b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    ld [$01fd], sp
    rst $38
    nop
    inc d
    inc bc
    ld a, [bc]
    rlca
    db $10
    cp $02
    ld b, $04
    rlca
    inc b
    db $fd
    inc b
    ld b, $14
    rst $38
    cp $02
    nop
    ld [$0804], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    ld bc, $fd0a
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    rlca
    rrca
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $03
    ld b, $fd
    ld bc, $02ff
    ld a, [bc]
    nop
    add hl, de
    cp $03
    ld [bc], a
    ld b, $03
    ld b, $fd
    inc bc
    rst $38
    cp $02
    ld [bc], a
    ld [$0803], sp
    db $fd
    ld bc, $1002
    rst $38
    cp $04
    dec b
    add hl, bc
    ld b, $09
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $04
    ld b, $fd
    ld bc, $02fe
    nop
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    db $fd
    dec b
    rst $38
    cp $02
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $feff
    inc bc
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $04ff
    rrca
    dec b
    dec l
    inc bc
    ld a, [bc]
    rst $38
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld bc, $04ff
    ld b, $05
    add hl, de
    inc b
    dec b
    ld b, $14
    cp $02
    inc bc
    ld [$0806], sp
    db $fd
    dec b
    rst $38
    cp $02
    nop
    rlca
    dec b
    rlca
    db $fd
    ld bc, $04ff
    ld a, [bc]
    dec b
    ld a, [bc]
    cp $03
    nop
    dec b
    ld b, $05
    db $fd
    inc bc
    rst $38
    cp $02
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $05
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0803], sp
    db $fd
    ld bc, $02ff
    inc d
    cp $07
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    cp $03
    nop
    ld [$0803], sp
    db $fd
    ld bc, $02ff
    inc hl
    cp $02
    nop
    inc d
    dec b
    inc d
    db $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    ld [$0804], sp
    db $fd
    ld bc, $04ff
    ld b, $00
    ld b, $05
    ld b, $ff
    nop
    ld b, $04
    ld b, $00
    ld b, $04
    ld b, $ff
    inc bc
    inc d
    rst $38
    cp $02
    nop
    ld [$0804], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    inc b
    ld [$0805], sp
    ld b, $08
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    ld [$fd0a], sp
    ld bc, $1801
    ld [bc], a
    jr jr_034_5bf4

    jr @+$01

    inc b

jr_034_5bf4:
    ld a, [bc]
    dec b
    rlca
    inc b
    rlca
    rst $38
    ld bc, $fe0c
    ld [bc], a
    inc bc
    ld b, $01
    ld b, $fd
    ld [bc], a
    ld bc, $ff1e
    cp $03
    inc bc
    ld a, [bc]
    nop
    ld [$01fd], sp
    rst $38
    ld [bc], a
    inc c
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    ld b, $06
    ld b, $07
    ld b, $08
    ld b, $09
    ld b, $fd
    ld bc, $03ff
    inc b
    cp $02
    ld bc, $0408
    ld [$02fd], sp
    ld [bc], a
    db $10
    rst $38
    cp $03
    nop
    inc c
    inc b
    inc c
    db $fd
    ld bc, $feff
    inc bc
    ld [bc], a
    ld [$0803], sp
    db $fd
    ld bc, $04ff
    inc [hl]
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $04ff
    ld a, [hl-]
    rst $38
    cp $02
    dec b
    ld [bc], a
    nop
    ld [bc], a
    db $fd
    ld bc, $0905
    ld b, $09
    dec b
    add hl, bc
    rst $38
    cp $02
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    ld [$fd0a], sp
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $05
    ld b, $fd
    ld bc, $0800
    dec b
    ld [$feff], sp
    inc bc
    nop
    ld [$0804], sp
    db $fd
    ld bc, $00ff
    ld b, $07
    ld b, $fd
    inc bc
    rst $38
    cp $04
    nop
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    ld bc, $01ff
    inc b
    cp $02
    ld [bc], a
    ld [$0800], sp
    db $fd
    ld [bc], a
    rst $38
    inc bc
    dec l
    rst $38
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc b
    nop
    ld b, $01
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld bc, $feff
    inc bc
    nop
    rrca
    dec b
    rrca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld bc, $01ff

jr_034_5cd6:
    jr z, jr_034_5cd6

    inc b
    dec b
    add hl, bc
    inc b
    add hl, bc
    db $fd
    ld [bc], a
    inc b
    inc d
    rst $38
    cp $02
    nop
    ld b, $04
    ld b, $fd
    ld bc, $05ff
    jr nc, @+$01

    nop
    inc c
    cp $03
    ld bc, $0508
    ld [$02fd], sp
    ld bc, $ff0c
    cp $03
    nop
    dec c
    inc bc
    dec c
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $02
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $06
    ld b, $fd
    ld bc, $0f00
    inc b
    add hl, de
    rst $38
    cp $03
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    ld bc, $030a
    ld a, [bc]
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rrca
    inc bc
    rrca
    inc b
    rrca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc b
    inc bc
    inc b
    db $fd
    ld bc, $02ff
    ld [$0803], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $06
    ld b, $fd
    ld bc, $feff
    ld [$0400], sp
    ld b, $04
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc b
    nop
    inc b
    dec b
    inc b
    db $fd
    ld bc, $feff
    inc bc
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld [$0801], sp
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0803], sp
    db $fd
    ld bc, $04ff
    ld a, [bc]
    dec b
    ld e, $00
    inc c
    dec b
    inc c
    rst $38
    cp $02
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $feff
    inc bc
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $0900
    dec b
    dec c
    rst $38
    cp $03
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    ld [$0803], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0803], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec bc
    inc bc
    dec bc
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $1200
    inc bc
    inc b
    rst $38
    cp $02
    nop
    ld [$0803], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    inc bc
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    inc bc
    ld a, [bc]
    db $fd
    ld bc, $05ff
    ld [$02fe], sp
    inc b
    ld b, $01
    ld b, $fd
    ld [bc], a
    dec b
    inc c
    rst $38
    ld bc, $0208
    ld [hl-], a
    ld bc, $ff06
    ld b, $05
    nop
    dec b
    rlca
    dec b
    ld bc, $0005
    inc c
    ld bc, $050c
    inc c
    rst $38
    cp $02
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $0600
    dec b
    ld b, $06
    ld b, $05
    ld b, $ff
    nop
    inc d
    ld bc, $fe14
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    db $fd
    inc bc
    rst $38
    cp $02
    nop
    ld b, $01
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $0a00
    inc b
    inc d
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $05
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc b
    ld [$01fd], sp
    rst $38
    ld bc, $fe23
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    rlca
    ld [bc], a
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $0d00
    dec b
    dec b
    rst $38
    cp $02
    nop
    ld [$0805], sp
    db $fd
    ld bc, $03ff
    rlca
    cp $03
    inc b
    dec b
    inc bc
    dec b
    db $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0804], sp
    db $fd
    ld bc, $01ff
    ld [$02fe], sp
    inc b
    ld b, $01
    ld b, $fd
    ld [bc], a
    ld bc, $ff08
    cp $05
    nop
    rlca
    ld bc, $fd07
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    inc bc
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0801], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $02
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $04ff
    inc hl
    rst $38
    cp $02
    nop
    ld [$0803], sp
    db $fd
    ld bc, $1200
    cp $02
    ld bc, $0208
    ld [$06fd], sp
    rst $38
    cp $02
    nop
    rlca
    ld [bc], a
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $04ff
    ld a, [bc]
    cp $02
    dec b
    ld b, $06
    ld b, $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    ld b, $06
    ld b, $fd
    ld bc, $04ff

jr_034_5fc0:
    jr z, jr_034_5fc0

    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    db $fd
    ld bc, $1402
    rst $38
    cp $02
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    ld [$0804], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0804], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    inc bc
    inc b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $02ff
    inc hl
    ld bc, $ff08
    cp $02
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $feff
    inc bc
    nop
    inc b
    inc b
    inc b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $01ff
    rlca
    ld [bc], a
    ld [hl-], a
    rst $38
    cp $02
    inc b
    ld [$0800], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    dec bc
    dec b
    db $fd
    ld bc, $00ff
    ld e, $ff
    dec b
    db $10
    inc bc
    db $10
    rst $38
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc bc
    nop
    ld b, $05
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld bc, $01ff
    inc hl
    rst $38
    cp $02
    nop
    ld [$0804], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    inc b
    inc c
    dec b
    inc c
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $02
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec c
    ld bc, $fd0d
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0804], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0803], sp
    db $fd
    ld bc, $03ff
    jr jr_034_60ce

jr_034_60ce:
    add hl, bc
    inc b
    ld [$feff], sp
    inc bc
    nop
    ld b, $04
    ld b, $fd
    ld bc, $feff
    dec b
    nop
    add hl, bc
    dec b
    add hl, bc
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld bc, $01ff
    inc a
    rst $38
    cp $02
    nop
    rlca
    inc bc
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc c
    inc bc
    inc c
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    ld bc, $0407
    rlca
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    inc b
    inc b
    ld b, $05
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0806], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    ld bc, $fd07
    ld bc, $00ff
    ld [$02fe], sp
    inc bc
    rlca
    inc b
    rlca
    db $fd
    ld [bc], a
    inc bc
    db $10
    rst $38
    cp $02
    nop
    inc c
    dec b
    inc c
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld b, $06
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld bc, $03ff
    ld e, $ff
    cp $02
    nop
    ld [$0803], sp
    db $fd
    ld bc, $feff
    inc bc
    nop
    ld [$0803], sp
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    inc b
    ld [$0800], sp
    db $fd
    ld bc, $1e04
    rst $38
    cp $03
    nop
    ld b, $01
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    dec b
    add hl, bc
    inc bc
    add hl, bc
    db $fd
    ld bc, $1403
    rst $38
    cp $02
    nop
    add hl, bc
    dec b
    add hl, bc
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    inc b
    rlca
    db $fd
    ld bc, $04ff
    inc d
    dec b
    ld [$0806], sp
    inc b
    dec b
    ld b, $05
    inc b
    ld e, $ff
    cp $02
    nop
    ld [$0804], sp
    db $fd
    ld bc, $09ff
    inc hl
    cp $02
    nop
    ld b, $09
    ld b, $fd
    ld [bc], a
    rst $38
    cp $02
    nop
    ld b, $03
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc b
    ld bc, $0204
    inc b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    ld [$0805], sp
    db $fd
    ld bc, $feff
    inc bc
    add hl, bc
    ld a, [bc]
    rlca
    ld a, [bc]
    db $fd
    ld bc, $0a08
    inc bc
    ld a, [bc]
    rst $38
    cp $03
    nop
    ld b, $04
    ld b, $fd
    ld bc, $00ff
    rlca
    dec bc
    rlca
    cp $02
    nop
    dec b
    dec bc
    dec b
    db $fd
    inc bc
    rst $38
    ld bc, $0003
    inc bc
    ld [bc], a
    inc bc
    rst $38
    ld e, l
    ld h, d
    ld [hl], h
    ld h, d
    add e
    ld h, d
    sub d
    ld h, d
    sbc a
    ld h, d
    xor [hl]
    ld h, d
    cp a
    ld h, d
    jp z, $dd62

    ld h, d
    ld [$f762], a
    ld h, d
    inc b
    ld h, e
    add hl, de
    ld h, e
    ld l, $63
    ccf
    ld h, e
    ld c, h
    ld h, e
    ld d, e
    ld h, e
    ld h, b
    ld h, e
    ld l, l
    ld h, e
    ld a, [hl]
    ld h, e
    adc e
    ld h, e
    sub h
    ld h, e
    sbc l
    ld h, e
    and [hl]
    ld h, e
    or e
    ld h, e
    jp nz, $0063

    ld [$0801], sp
    ld [bc], a
    jr @+$03

    ld [$0800], sp
    cp $02
    inc bc
    rlca
    nop
    rlca
    inc b
    rlca
    nop
    rlca
    db $fd
    ld b, $ff
    ld bc, $0208
    ld [de], a
    inc bc
    ld b, $fe
    inc bc
    inc b
    inc b
    dec b
    inc b
    db $fd
    inc b
    rst $38
    nop
    dec b
    ld bc, $0205
    dec b
    cp $02
    inc bc
    inc b
    ld [bc], a
    inc b
    db $fd
    inc b
    rst $38
    cp $02
    ld [bc], a
    ld a, [bc]
    nop
    ld [$0a01], sp
    nop
    ld [$01fd], sp
    rst $38
    nop
    dec b
    ld bc, $0006
    dec b
    cp $02
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    db $fd
    inc b
    rst $38
    cp $02
    ld bc, $020b
    dec bc
    db $fd
    ld bc, $02fe
    nop
    ld [$0803], sp
    db $fd
    dec b
    rst $38
    cp $02
    ld bc, $0206
    ld b, $00
    ld b, $fd
    ld bc, $05ff
    inc c
    ld bc, $0206
    inc b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    cp $02
    ld bc, $0006
    dec b
    ld [bc], a
    ld b, $00
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc bc
    ld bc, $0205
    rlca
    ld bc, $fd05
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    ld bc, $0207
    rlca
    ld bc, $fd07
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    ld bc, $0206
    rlca
    ld bc, $fd06
    ld bc, $0a00
    inc bc
    dec bc
    inc b
    inc c
    inc bc
    dec bc
    rst $38
    ld bc, $0206
    ld b, $01
    inc bc
    nop
    inc bc
    cp $02
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $fd02
    dec b
    rst $38
    nop
    ld b, $01
    ld b, $02
    inc d
    ld bc, $0006
    db $10

Jump_034_6338:
    ld bc, $0203
    inc b
    ld bc, $ff03
    nop
    ld b, $03
    ld b, $01
    inc c
    ld [bc], a
    jr nz, jr_034_6349

    ld a, [bc]

jr_034_6349:
    inc bc
    inc b
    rst $38
    ld bc, $020a
    inc h
    ld bc, $ff06
    cp $02
    nop
    dec b
    ld bc, $0205
    dec b
    ld bc, $fd05
    ld bc, $feff
    ld [bc], a
    nop
    rlca
    ld bc, $0207
    rlca
    ld bc, $fd07
    ld bc, $01ff
    inc c
    nop
    ld a, [bc]
    ld [bc], a
    inc c
    nop

jr_034_6374:
    jr jr_034_6374

    ld [bc], a
    ld bc, $0203
    inc bc
    db $fd
    dec b
    rst $38
    cp $02
    ld bc, $0005
    dec b
    ld [bc], a
    dec b
    nop
    dec b
    db $fd
    ld bc, $00ff
    ld b, $01
    inc c
    ld [bc], a
    ld c, $01
    inc c
    rst $38
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    ld bc, $ff0a
    nop
    ld b, $01
    ld [de], a
    nop
    ld b, $02
    inc c
    rst $38
    cp $02
    nop
    inc bc
    ld bc, $0006
    inc bc
    ld [bc], a
    ld b, $fd
    ld bc, $00ff
    ld b, $03
    jr jr_034_63b8

jr_034_63b8:
    ld b, $fe
    inc bc
    ld bc, $0205
    dec b
    db $fd
    inc b
    rst $38
    ld bc, $0206
    ld a, [bc]
    ld bc, $0003
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    rst $38
    dec b
    ld h, h
    ld c, $64
    rla
    ld h, h
    jr nz, jr_034_643d

    add hl, hl
    ld h, h
    ld [hl-], a
    ld h, h
    dec sp
    ld h, h
    ld b, h
    ld h, h
    ld c, l
    ld h, h
    ld d, [hl]
    ld h, h
    ld e, a
    ld h, h
    ld l, b
    ld h, h
    ld [hl], c
    ld h, h
    ld a, d
    ld h, h
    add e
    ld h, h
    adc h
    ld h, h
    sub l
    ld h, h
    sbc [hl]
    ld h, h
    and a
    ld h, h
    or b
    ld h, h
    cp c
    ld h, h
    jp nz, $cb64

    ld h, h
    call nc, $dd64
    ld h, h
    and $64
    cp $02
    nop
    ld b, $05
    ld b, $fd
    ld bc, $feff
    ld [bc], a
    nop
    inc bc
    ld b, $04
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a

jr_034_643d:
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc bc
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $feff
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    db $fd
    ld bc, $e5ff
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    ld [$3267], sp
    ld h, a
    ld b, d
    ld h, a
    ld d, c
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, d
    ld h, a
    adc c
    ld h, a
    and l
    ld h, a
    xor l
    ld h, a
    cp c
    ld h, a
    rst $00
    ld h, a
    db $d3
    ld h, a
    rst $10
    ld h, a
    push hl
    ld h, a
    pop af
    ld h, a
    nop
    ld l, b
    dec d
    ld l, b
    dec e
    ld l, b
    inc l
    ld l, b
    ld b, h
    ld l, b
    ld h, b
    ld l, b
    ld l, h
    ld l, b
    adc a
    ld l, b
    and e
    ld l, b
    cp b
    ld l, b
    ret z

    ld l, b
    rst $10
    ld l, b
    db $e3
    ld l, b
    rst $30
    ld l, b
    ld hl, $2d69
    ld l, c
    ld b, c
    ld l, c
    ld c, a
    ld l, c
    ld h, e
    ld l, c
    ld [hl], d
    ld l, c
    add c
    ld l, c
    and h
    ld l, c
    or b
    ld l, c
    cp a
    ld l, c
    bit 5, c
    ldh [rBCPD], a
    db $ec
    ld l, c
    ei
    ld l, c
    db $10
    ld l, d
    inc e
    ld l, d
    ccf
    ld l, d
    ld b, a
    ld l, d
    ld d, l
    ld l, d
    ld h, c
    ld l, d
    db $76
    ld l, d
    add d
    ld l, d
    sub a
    ld l, d
    sbc a
    ld l, d
    ret nc

    ld l, d
    call c, $f86a
    ld l, d
    inc b
    ld l, e
    ld l, $6b
    ld a, $6b
    ld d, a
    ld l, e
    ld l, h
    ld l, e
    ld a, b
    ld l, e
    add a
    ld l, e
    and e
    ld l, e
    xor a
    ld l, e
    bit 5, e
    db $fc
    ld l, e
    db $10
    ld l, h
    rra
    ld l, h
    ld b, d
    ld l, h
    ld d, [hl]
    ld l, h
    ld h, l
    ld l, h
    ld [hl], c
    ld l, h
    adc d
    ld l, h
    sbc [hl]
    ld l, h
    or a
    ld l, h
    db $d3
    ld l, h
    rst $18
    ld l, h
    db $f4
    ld l, h
    nop
    ld l, l
    jr z, @+$6f

    inc a
    ld l, l
    ld c, b
    ld l, l
    ld h, h
    ld l, l
    ld [hl], e
    ld l, l
    or d
    ld l, l
    jp nz, $d76d

    ld l, l
    rst $18
    ld l, l
    db $f4
    ld l, l
    ld [bc], a
    ld l, [hl]
    ld de, $2f6e
    ld l, [hl]
    ld h, a
    ld l, [hl]
    add b
    ld l, [hl]
    sbc h
    ld l, [hl]
    or h
    ld l, [hl]
    ret


    ld l, [hl]
    pop de
    ld l, [hl]
    db $dd
    ld l, [hl]
    ld a, [c]
    ld l, [hl]
    nop
    ld l, a
    jr jr_034_6630

    ld sp, $4d6f
    ld l, a
    ld h, [hl]
    ld l, a
    add d
    ld l, a
    sub [hl]
    ld l, a
    cp c
    ld l, a
    rst $00
    ld l, a

Jump_034_65cf:
    call c, $f06f
    ld l, a
    ld a, [$1d6f]
    ld [hl], b
    dec l
    ld [hl], b
    inc a
    ld [hl], b
    ld c, e
    ld [hl], b
    ld h, a
    ld [hl], b
    ld [hl], c
    ld [hl], b
    add l
    ld [hl], b
    xor l
    ld [hl], b
    ret


    ld [hl], b
    ret c

    ld [hl], b
    db $ec
    ld [hl], b
    nop
    ld [hl], c
    inc e
    ld [hl], c
    jr c, jr_034_6662

    ld b, a
    ld [hl], c
    ld d, l
    ld [hl], c
    ld h, e
    ld [hl], c
    add e
    ld [hl], c
    sub e
    ld [hl], c
    sbc l
    ld [hl], c
    or c
    ld [hl], c
    push bc
    ld [hl], c
    call nc, $e071
    ld [hl], c
    rst $28
    ld [hl], c
    ei
    ld [hl], c
    dec b
    ld [hl], d
    ld a, [de]
    ld [hl], d
    cpl
    ld [hl], d
    ld d, d
    ld [hl], d
    ld h, b
    ld [hl], d
    sub c
    ld [hl], d
    and c
    ld [hl], d
    cp a
    ld [hl], d
    ld [c], a
    ld [hl], d
    dec b
    ld [hl], e
    add hl, de
    ld [hl], e
    dec l
    ld [hl], e
    ld b, c
    ld [hl], e
    ld e, l
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], e
    adc c
    ld [hl], e
    sub l
    ld [hl], e
    xor c
    ld [hl], e
    push bc

jr_034_6630:
    ld [hl], e
    rst $08
    ld [hl], e
    db $e3
    ld [hl], e
    rst $30
    ld [hl], e
    inc c
    ld [hl], h
    jr nz, jr_034_66af

    cpl
    ld [hl], h
    ccf
    ld [hl], h
    ld b, [hl]
    ld [hl], h
    ld l, c
    ld [hl], h
    ld a, l
    ld [hl], h
    sub c
    ld [hl], h
    sbc l
    ld [hl], h
    xor c
    ld [hl], h
    or l
    ld [hl], h
    cp l
    ld [hl], h
    reti


    ld [hl], h
    pop hl
    ld [hl], h
    ldh a, [$74]
    ld hl, sp+$74
    rlca
    ld [hl], l
    ld sp, $5b75
    ld [hl], l
    ld l, e
    ld [hl], l
    add a
    ld [hl], l
    sub [hl]

jr_034_6662:
    ld [hl], l
    xor e
    ld [hl], l
    or e
    ld [hl], l
    jp nz, $de75

    ld [hl], l
    ld [$f675], a
    ld [hl], l
    ld a, [bc]
    db $76
    add hl, de
    db $76
    add hl, hl
    db $76
    dec a
    db $76
    ld d, c
    db $76
    ld h, l
    db $76
    ld [hl], h
    db $76
    adc c
    db $76
    sub e
    db $76
    xor e
    db $76
    or b
    db $76
    call z, $d876
    db $76
    db $ed
    db $76
    ld bc, $0677
    ld [hl], a
    dec de
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld a, $77
    ld c, d
    ld [hl], a
    ld [hl], h
    ld [hl], a
    add h
    ld [hl], a
    sub e
    ld [hl], a
    and a
    ld [hl], a
    or e
    ld [hl], a
    rst $08
    ld [hl], a
    rst $20
    ld [hl], a
    pop af
    ld [hl], a
    ld sp, hl
    ld [hl], a
    ld [$1778], sp
    ld a, b
    inc hl
    ld a, b

jr_034_66af:
    ld [hl-], a
    ld a, b
    ld d, b
    ld a, b
    ld a, d
    ld a, b
    adc b
    ld a, b
    sbc h
    ld a, b
    cp b
    ld a, b
    ld [c], a
    ld a, b
    xor $78
    ld a, [bc]
    ld a, c
    add hl, de
    ld a, c
    ld l, $79
    ld b, e
    ld a, c
    ld c, a
    ld a, c
    ld l, e
    ld a, c
    ld [hl], e
    ld a, c
    adc h
    ld a, c
    and b
    ld a, c
    xor a
    ld a, c
    bit 7, c
    reti


    ld a, c
    push af
    ld a, c
    ld h, $7a
    ld [hl-], a
    ld a, d
    inc a
    ld a, d
    ld e, b
    ld a, d
    sub a
    ld a, d
    or e
    ld a, d
    ld h, b
    xor l
    ld bc, $2000
    xor l
    ld bc, $4200
    add hl, hl
    nop
    nop
    nop
    ld hl, $0000
    add h
    stop
    nop
    nop
    nop
    jp nz, RST_00

    nop
    rst $00
    ld [hl], c
    inc e
    nop
    nop
    add b
    ld h, c
    jr jr_034_6708

jr_034_6708:
    nop
    jr nz, @+$12

    ld [$0000], sp
    nop
    ld [hl], b
    jr c, jr_034_672e

    ld c, $87
    inc bc
    nop
    adc b
    dec bc
    dec h
    ld b, b
    jr c, jr_034_6794

    nop
    ld [$050b], sp
    ld b, b
    jr nc, jr_034_679b

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_034_672d

jr_034_672d:
    nop

jr_034_672e:
    inc b
    nop
    nop
    nop
    inc c
    ld sp, $0000
    rst $28
    dec a
    nop

Call_034_6739:
    nop
    ld b, b
    nop
    nop
    nop
    nop
    add b
    ld h, e
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    sbc $f7
    ld e, c
    nop
    nop
    sbc $f7
    add hl, sp
    inc c
    nop
    sbc e
    rst $00
    dec h
    inc bc
    nop
    nop
    nop
    sbc a
    rst $00
    push hl
    di
    jr c, jr_034_679a

    nop
    add b
    pop bc
    nop
    nop
    nop
    nop
    nop
    rst $20
    inc e
    ld [bc], a
    nop
    rst $20
    inc e
    adc [hl]
    ld bc, $08c2
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, d
    ld [$0000], sp
    nop
    adc [hl]
    db $e3
    inc a
    rrca
    nop
    ret nz

    jr nc, jr_034_6783

jr_034_6783:
    nop
    add b
    ld b, c
    jr jr_034_6788

jr_034_6788:
    nop
    inc c
    adc a
    rst $00
    and a
    rst $00
    inc bc
    nop
    sbc a
    rst $08
    rst $00
    and a

jr_034_6794:
    rst $30
    dec de
    nop
    inc e
    adc a
    rst $00

jr_034_679a:
    and a

jr_034_679b:
    rst $00
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add $39
    inc bc
    nop
    nop
    stop
    nop
    adc b
    add hl, sp
    rlca
    nop
    sbc b
    dec sp
    rlca
    nop
    nop
    ld [$0001], sp
    add b
    rst $30
    ld e, b
    db $fc
    rst $38
    ld a, a
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    jr jr_034_67ca

jr_034_67ca:
    nop
    nop
    inc c
    ld bc, $0000
    nop
    add $00
    ldh [$9c], a
    inc bc
    nop
    add b
    rst $00
    db $e3
    pop af
    ld a, b
    jr c, jr_034_67de

jr_034_67de:
    add b
    jp $01e3


    nop
    nop
    nop
    ld b, a
    add b
    inc sp
    nop
    rst $08
    or b
    ld [hl], a
    nop
    add b
    nop
    nop
    nop
    rst $18
    rst $38
    dec bc
    nop
    nop
    rst $18
    rst $38
    dec de
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
    rst $00
    db $e3
    ld [hl], c
    jr c, jr_034_6806

jr_034_6806:
    nop
    jr c, jr_034_6825

    nop
    add d
    add e
    add e
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    sbc $7b
    rrca
    nop
    nop
    ld [$0021], sp
    inc c
    db $e3
    jr @+$04

    nop
    sbc $f3
    inc a

jr_034_6825:
    ld b, $00
    add b
    jr nz, jr_034_682a

jr_034_682a:
    nop
    nop
    add [hl]
    nop
    nop
    nop
    and $0c
    nop
    nop
    ld b, b
    nop
    rst $20
    nop
    ld b, b
    jr nc, jr_034_682a

    nop
    add [hl]
    nop
    ld h, e
    nop
    ld b, b
    nop
    nop
    nop
    adc h
    sbc $47
    ldh a, [$fb]
    rst $38
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc c
    sbc [hl]
    add a
    pop hl
    db $e3
    di
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $20
    inc e
    nop
    nop
    rst $28
    dec e
    inc bc
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    pop de
    ei
    ld bc, $0000
    nop
    nop
    ldh a, [$f9]
    ld bc, $8200
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    db $eb
    cp h
    ld h, e
    nop
    db $eb
    db $fc
    ld l, a
    nop
    rst $28
    db $fc
    ld l, a
    nop
    ld b, d
    ld [$0000], sp
    inc hl
    nop
    nop
    nop
    sbc b
    rst $08
    rst $00
    di
    ld bc, $0000
    sbc b
    rst $08
    rst $00
    rst $30
    ld bc, $0000
    nop
    ld [bc], a
    add c
    nop
    nop
    nop
    nop
    db $e3
    dec a
    ld bc, $0200
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop

jr_034_68c4:
    nop
    nop
    ld b, b
    nop
    nop
    ldh [$38], a
    inc b
    nop
    inc c
    add a
    ld h, e
    jr jr_034_68e0

    nop
    ld b, b
    stop
    nop
    rst $28
    sbc l
    inc bc
    nop
    inc c
    db $10
    ld [bc], a
    nop
    add b

jr_034_68e0:
    nop
    nop
    nop
    nop
    add h
    db $e3
    nop
    nop
    nop
    add b
    db $e3
    jr nc, jr_034_68ed

jr_034_68ed:
    ld [$00c3], sp
    nop
    nop
    nop
    ld b, c
    nop
    nop
    nop
    jr nc, jr_034_6911

    nop
    nop
    sbc a
    adc a
    nop
    jr c, jr_034_691c

    add a
    jp $9fff


    nop
    jr c, @+$1e

    add a
    jp $1c79


    nop
    jr c, jr_034_694a

    sbc a
    bit 7, l

jr_034_6911:
    inc e
    nop
    nop
    jr nc, jr_034_692e

    ld [$0004], sp
    nop
    jr nc, jr_034_6934

jr_034_691c:
    nop
    nop
    jr @+$0e

    nop
    ld [$038b], a
    nop
    sbc h
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    add b

jr_034_692e:
    rst $38
    ld a, a
    rst $08
    ld bc, $0800

jr_034_6934:
    ld a, [bc]
    nop

jr_034_6936:
    nop
    nop
    ld b, b

jr_034_6939:
    jr jr_034_693b

jr_034_693b:
    nop
    add b
    ld [hl], b
    jr jr_034_68c4

    ld bc, $1f1f
    add a
    pop hl
    pop af
    ld sp, hl
    nop
    nop
    nop

jr_034_694a:
    ret nz

    nop
    nop
    nop
    nop
    adc h
    ld sp, $000e
    adc [hl]
    or c
    ld a, $00
    add b
    stop
    nop
    adc h
    ld de, $0000
    nop
    stop
    nop
    inc e
    ret nz

    jp RST_30


    jr nc, jr_034_6936

    inc hl
    inc e
    rlca
    nop
    ld b, c
    nop
    nop
    nop
    ret nz

    ld [hl], b
    inc e
    adc a
    inc bc
    jr @+$06

    nop
    nop
    nop
    jr c, jr_034_698a

    nop
    nop
    nop
    inc b
    nop
    add b
    pop hl
    ldh a, [$f2]
    ld bc, $0004

jr_034_698a:
    add b
    jp hl


    rst $30
    di
    ld bc, $320c
    sbc b
    db $ed
    rst $30
    di
    ld bc, $324c
    sbc b
    db $ed
    rst $30
    di
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    ld [$c021], sp
    nop
    add b
    ld [hl], c
    adc a
    nop
    add b
    ld sp, $0003
    jr jr_034_6939

    ld h, c
    jr jr_034_69b5

jr_034_69b5:
    jr jr_034_69c6

    nop
    inc a
    inc c
    nop
    ld b, c
    jr nc, jr_034_69ca

    nop
    sbc $13
    rst $20
    ld bc, $1080
    nop

jr_034_69c6:
    nop
    sbc $03
    rst $20

jr_034_69ca:
    ld bc, $3fbf
    dec c
    adc $ff
    ld a, l
    nop
    jr nc, jr_034_6a0c

    inc c
    ld c, $06
    nop
    nop
    nop
    nop
    add c
    ld bc, $0000
    nop
    ld [c], a
    cp h
    ld h, e
    nop
    nop
    ld bc, $0004
    nop
    stop
    nop
    nop
    add b
    ld h, c
    nop
    nop
    nop
    inc bc
    ld b, c
    ld [$0002], sp
    inc b
    nop
    db $10
    inc b
    ld b, $03
    ld b, $83
    pop bc
    ld h, b
    nop
    ld b, $8f
    ld b, [hl]
    and e
    di
    ld [hl], c
    nop
    nop
    nop
    inc b

jr_034_6a0c:
    ld [bc], a
    nop
    nop
    nop
    sbc $01
    nop
    nop
    sbc $21
    adc $01
    add b
    db $10
    ld [bc], a
    nop
    inc e
    ld a, $1f
    rrca
    inc bc
    add b
    nop
    inc e
    ld [hl], $1f
    adc a
    inc bc
    add e
    nop
    nop
    jr nc, jr_034_6a4b

    rrca
    ld bc, $0000
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    inc e
    ld b, $01
    nop
    nop
    nop
    nop
    add b
    ld de, $0006
    ld h, c
    xor l
    nop
    nop
    cp a
    rst $18
    pop bc
    rst $28

jr_034_6a4b:
    rst $30
    jr nc, jr_034_6a4e

jr_034_6a4e:
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    add hl, sp
    rlca
    nop
    ld [$8000], sp
    nop
    nop
    stop
    nop
    nop
    nop
    ret nz

    pop hl
    jr nc, jr_034_6a67

jr_034_6a67:
    nop
    nop
    ld c, $c7
    db $e3
    jr nc, jr_034_6a6e

jr_034_6a6e:
    nop
    nop
    ld c, $c7
    db $e3
    di
    ld h, b
    nop
    add b
    stop
    nop
    nop
    sbc b
    ld [hl], a
    nop
    ret nz

    jr jr_034_6a81

jr_034_6a81:
    nop
    nop
    add b
    adc $e7
    di
    ld sp, hl
    nop
    ld c, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    pop bc
    ld h, b
    nop
    nop
    ld h, b
    ld [$0001], sp
    ld h, a
    add b
    ld sp, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld b, $03
    inc bc
    ldh [rPCM34], a
    ld a, [hl-]
    ld bc, $0306
    rrca
    and $77
    ld a, [hl-]
    ld bc, $0306
    inc bc
    add b
    ld b, a
    ld [hl+], a
    ld bc, $0306
    nop
    ldh [rPCM34], a
    ld a, [hl-]
    ld bc, $0306
    nop
    ldh [$71], a
    jr c, jr_034_6ac9

jr_034_6ac9:
    nop
    nop
    nop
    ldh [rSVBK], a
    jr c, jr_034_6ad0

jr_034_6ad0:
    add b
    stop
    nop
    sbc h
    ld b, e
    adc h
    ld bc, $0840
    nop
    nop
    add [hl]
    jp $b1e3


    ei
    ld a, h
    nop
    nop
    nop
    add c
    ld bc, $0000
    nop
    nop
    nop
    add e
    add c
    ld b, c
    nop
    nop
    nop
    nop
    add c
    ld de, $0000
    nop
    add [hl]
    jr jr_034_6b5e

    nop
    add [hl]
    nop
    nop
    nop
    add $00
    nop
    nop
    nop
    nop
    inc e
    ld c, $03
    nop
    nop
    nop
    nop
    sbc h
    rst $08
    inc bc
    nop
    nop
    add a
    rlca
    sbc l
    rst $08
    inc bc
    nop
    nop
    add a
    jp $cf9c


    inc bc
    nop
    nop
    nop
    nop
    jr nz, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_034_6b2c

jr_034_6b2c:
    ld [$0000], sp
    add b
    ld [hl], e
    nop
    nop
    nop
    adc h
    ld bc, $0080
    nop
    nop
    add h
    ld [$0000], sp
    rst $08
    inc sp
    nop
    nop
    nop
    rst $08
    inc sp
    ld [$0082], sp
    rst $08
    inc sp
    ld [$0282], sp
    rst $08
    di
    ld l, c
    sbc [hl]
    ld [bc], a
    nop
    jr nz, jr_034_6b5d

    add [hl]
    ld bc, $1e1c
    ld c, $06
    nop
    nop

jr_034_6b5d:
    nop

jr_034_6b5e:
    nop
    nop
    add b
    jp Jump_034_70e1


    nop
    nop
    add b
    nop
    jr nz, jr_034_6b6a

jr_034_6b6a:
    nop
    nop
    sbc h
    ld h, e
    inc b
    nop
    sbc h
    ld h, e
    inc c
    ld bc, $0000
    ld [$9e01], sp
    rrca
    nop
    nop
    nop
    sbc [hl]
    adc a
    ld b, c
    jr jr_034_6b82

jr_034_6b82:
    nop
    ld b, b
    db $10
    inc b
    nop
    inc a
    ld e, $e1
    ld [hl], b
    jr c, jr_034_6ba9

    nop
    inc a
    ld e, $e1
    jr nc, jr_034_6bcb

    inc e
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    inc a
    ld e, $60
    ld [hl], b
    jr c, jr_034_6bbe

    nop
    sbc $01
    rst $20
    nop
    nop
    db $10

jr_034_6ba9:
    ld [bc], a
    nop
    ld b, b
    ld [$0001], sp
    sbc a
    rrca
    pop bc
    nop
    nop
    nop
    nop
    nop
    ld b, $c3
    add c
    nop
    nop
    nop
    nop

jr_034_6bbe:
    nop
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop

jr_034_6bcb:
    add b
    pop bc
    add e
    ld bc, $0c18
    nop
    cp b
    rst $18
    inc c
    nop
    jr jr_034_6be4

    nop
    add b
    pop bc
    inc e
    ld c, $fb
    ld l, l
    nop
    sbc b
    rst $18
    ld c, $86

jr_034_6be4:
    ei
    ld l, l
    nop
    nop
    nop
    pop bc
    nop
    nop
    nop
    nop
    sbc b
    db $dd
    ld c, $86
    ei
    ld l, l
    nop
    add b
    pop bc
    nop
    nop
    jr @+$0e

    nop
    ld b, d
    ld [$0000], sp
    adc [hl]
    add c
    ld sp, $8e00
    ld bc, $0000
    add [hl]
    add b
    ld sp, $4200
    nop
    nop
    nop
    nop
    add b
    db $e3
    jr c, jr_034_6c21

    nop
    add b
    pop af
    jr c, jr_034_6c26

    nop
    ld b, b
    jr nz, jr_034_6c1e

jr_034_6c1e:
    nop
    nop
    add d

jr_034_6c21:
    adc a
    ld h, c
    nop
    nop
    nop

jr_034_6c26:
    add b
    jp Jump_034_65cf


    ld [bc], a
    nop
    nop
    add b
    pop bc
    ld e, l
    inc l
    ld [bc], a
    nop
    nop
    jr nz, jr_034_6c66

    jr jr_034_6c40

    nop
    nop
    nop
    jr nz, jr_034_6c4d

    nop
    nop
    nop

jr_034_6c40:
    nop
    nop
    jr jr_034_6c87

    adc h
    ld bc, $0000
    adc b
    ld bc, $1080
    ld [bc], a

jr_034_6c4d:
    nop
    sbc b
    ld d, e
    adc [hl]
    ld bc, $1080
    adc d
    ld bc, $8c20
    db $e3
    inc a
    rrca
    nop
    add b
    jr nz, @+$06

    nop
    nop
    add b
    jr nc, jr_034_6c68

    nop
    nop

jr_034_6c66:
    ld h, c
    inc c

jr_034_6c68:
    nop
    ld h, a
    ld h, c
    inc c
    nop
    add b
    ld sp, $0000
    nop
    inc c
    ld b, e
    jr nc, jr_034_6c76

jr_034_6c76:
    nop
    add b
    ld h, b
    nop
    nop
    rst $00
    adc h
    ld h, e
    di
    nop
    rst $00
    nop
    nop
    jp RST_00


    add b

jr_034_6c87:
    jr nz, jr_034_6c89

jr_034_6c89:
    nop
    inc e
    add [hl]
    ld [hl], b
    inc e
    inc bc
    inc e
    add [hl]
    ld [hl], c
    inc e
    inc bc
    inc e
    ld b, $70
    inc e
    inc bc
    nop
    ld b, b
    nop
    nop
    nop
    rst $08
    ld h, e
    nop
    nop
    nop
    adc [hl]
    ld h, e
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    jr nz, jr_034_6cb0

jr_034_6cb0:
    nop
    nop
    ld [bc], a
    ld hl, $0000
    nop
    nop
    jr c, @+$1e

    ld b, $00
    nop
    nop
    sbc a
    cp a
    ld e, a
    db $10
    ld [$0000], sp
    ld e, $bf
    rra
    nop
    db $10
    jr c, jr_034_6ccc

jr_034_6ccc:
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    sbc h
    ld [hl], e
    ld c, $00
    db $fc
    ld a, a
    ld c, $00
    db $10
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, $c7
    rst $00
    db $e3
    ld b, c
    nop
    nop
    nop
    ld bc, $00c1
    nop
    nop
    nop
    adc h
    ld de, $0063
    call z, Call_034_6739
    nop
    nop

jr_034_6cfd:
    stop
    nop
    ld b, b
    stop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0000
    nop
    add d
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    db $10
    inc b
    nop
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_034_6d22

jr_034_6d22:
    nop
    add b
    ld bc, $0641
    nop
    nop
    nop
    jr c, jr_034_6d3a

    ld [bc], a
    nop
    ld b, b
    inc a
    rst $18
    rlca
    nop
    nop
    nop
    ld [$0002], sp
    ld b, b
    db $10

jr_034_6d3a:
    ld [$0002], sp
    adc b
    pop af
    nop
    ld b, d
    adc b
    pop af
    nop
    jr nz, @-$76

    pop af
    nop
    ld b, $83
    ldh [$f0], a
    jr c, jr_034_6d56

    nop
    ld e, $9f
    rst $20
    di
    jr c, jr_034_6d5d

    nop

jr_034_6d56:
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop

jr_034_6d5d:
    jr jr_034_6cfd

    rst $20
    di
    jr c, @+$0a

    nop
    rst $08
    ld [hl], c
    inc c
    inc bc
    nop
    nop
    jp nz, $0061

    nop
    nop
    ld b, b
    stop
    nop
    inc b
    nop
    nop
    ld b, $03
    nop
    nop
    ld [bc], a
    inc bc
    call z, Call_034_7b77
    nop
    nop
    add b
    ret nz

    pop bc
    ld [hl], c
    ld a, b
    nop
    nop
    nop
    nop
    ldh [$71], a
    ld a, b
    nop
    nop
    nop
    nop
    ret nz

    ld [hl], c

jr_034_6d93:
    ld a, b
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

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
    add b
    ld sp, $0000
    add b
    add hl, sp
    nop
    nop
    ld h, b
    adc h
    ld bc, $e000
    cp l
    ld bc, $6000
    ld a, $9f
    add e
    nop
    nop
    nop
    ld h, b
    ld a, $9f
    jp RST_00


    nop
    ld h, b
    jr nc, jr_034_6deb

    nop
    nop
    nop
    nop

jr_034_6dd7:
    jr jr_034_6e3c

    nop
    nop
    sbc b
    ld [hl], e
    ld b, $00
    inc a
    rst $38
    ret c

    cp $1f
    nop
    nop
    nop
    nop
    nop
    ld b, $00

jr_034_6deb:
    nop
    nop
    inc a
    rst $38
    ret c

    ld a, [$001f]
    nop
    nop
    ld b, $8f
    add a
    ld bc, $0000
    nop
    inc c
    ld b, $83
    nop
    nop
    nop
    jr c, @+$08

    ld bc, $0000
    jr c, jr_034_6dd7

    ld hl, $0000
    nop
    ld b, b
    jr nz, jr_034_6e10

jr_034_6e10:
    nop
    jr jr_034_6d93

    jr nz, @+$06

    rlca
    ld a, e
    call Call_034_57a2
    rrca
    jr nz, @+$0e

    add d
    db $10
    ld [$cd63], sp
    and d
    ld d, a
    ld [$0800], sp
    nop
    jr nz, jr_034_6e2a

jr_034_6e2a:
    nop
    ld [$2082], sp
    nop
    nop
    ld a, [bc]
    and $70
    ret nz

    ld h, b
    nop
    nop
    ld a, [bc]
    and $70
    pop bc
    ld h, c

jr_034_6e3c:
    nop
    nop
    ld a, [bc]
    ld b, $00
    inc b
    ld [bc], a
    ld bc, $0000
    ldh [rSVBK], a
    ret nz

    ld h, b
    nop
    nop
    nop
    ldh [rSVBK], a
    pop bc
    ld h, c
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    add [hl]
    ld bc, $8618
    db $10
    add [hl]
    ld bc, $8618
    nop
    adc [hl]
    inc bc
    nop
    nop
    nop
    adc [hl]
    inc bc
    add b
    ld bc, $0018
    nop
    ld e, $06
    add c
    ld h, b
    ld [hl], b
    jr jr_034_6e87

jr_034_6e87:
    ld e, $06
    add c
    add b
    ldh [rNR41], a
    nop
    ld e, $06
    add c
    add b
    pop hl
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld b, $00
    nop
    nop
    nop
    jr @+$05

    nop
    nop
    ld [$0003], sp
    ld b, $18
    inc bc
    nop
    ld b, $08
    inc bc
    nop

jr_034_6eb0:
    nop
    ld hl, $0000
    nop
    nop
    nop
    ldh a, [$fd]

jr_034_6eb9:
    ei
    ld bc, $1c00
    inc e
    adc a
    rlca
    nop
    nop
    nop
    ld [$0306], sp
    nop
    nop
    nop
    ret nz

    ld a, c
    ld b, a
    nop
    ld b, b
    ld [$0001], sp
    nop
    ld [hl], e
    ld b, $00
    ret nz

    ld [hl], e
    ld b, $00
    nop
    ld h, e
    inc b
    nop
    jr nc, jr_034_6ef9

    rst $18
    ld h, c
    db $d3
    pop af
    nop
    ld a, b
    dec de
    rst $18
    ld h, c
    db $d3
    pop af
    nop
    db $10
    jr jr_034_6eb9

    jr nz, jr_034_6eb0

    pop de
    nop
    nop
    ld c, $87
    jp $00e1


    nop

jr_034_6ef9:
    add a
    nop
    nop
    nop
    ld [$0018], sp
    adc [hl]
    ld de, $0000
    sbc [hl]
    inc de
    nop
    nop
    xor a
    ld bc, $0000
    adc [hl]
    ld bc, $0000
    nop
    nop
    ld bc, $8f00
    ld bc, $0000
    rst $00
    sub b
    rst $00
    or [hl]
    add hl, bc
    rst $00
    sub b
    jp $0fbe


    rst $00
    db $10
    inc b
    nop
    nop
    rst $00
    stop
    nop
    nop
    nop
    nop
    jp $0830


    nop
    nop
    jp $e1e1


    ldh [rP1], a
    nop
    add b
    db $e3
    pop bc
    pop hl
    ldh [rP1], a
    nop
    nop
    ret nz

    rst $08

jr_034_6f43:
    rst $20
    ldh [rP1], a
    nop
    add b
    ld b, b
    jr nz, jr_034_6f4b

jr_034_6f4b:
    nop
    nop
    adc [hl]
    db $e3
    db $10
    ld [$0002], sp
    nop
    nop
    ld [$8e02], sp
    db $e3
    ld [hl], b
    inc e
    inc bc
    adc [hl]
    db $e3
    jr jr_034_6f62

    nop
    adc [hl]

jr_034_6f62:
    db $e3
    db $db
    ld a, [bc]
    ld [bc], a
    jr jr_034_6f74

    ld b, $83
    ld bc, $0000
    sbc a
    rrca
    inc b
    nop
    nop
    nop
    nop

jr_034_6f74:
    jr c, jr_034_6f92

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld bc, $0040
    nop
    nop
    add b
    ld h, b
    add hl, de
    ld [$c000], sp
    ld a, b
    dec de
    ld [$4006], sp
    ld e, b
    ld a, [de]
    nop
    ld b, $00

jr_034_6f92:
    ld b, b
    jr jr_034_6f95

jr_034_6f95:
    nop
    inc c
    ld b, $83
    ld bc, $0000
    nop
    nop
    jr jr_034_6f43

    ld bc, $9113
    nop
    nop
    jr c, @-$4e

    pop de
    dec de
    sbc c
    nop
    nop
    jr nz, jr_034_6fbe

    db $10
    dec bc
    call $0c00
    add a
    jp $8001


    ld b, b
    nop
    inc a
    sbc a
    adc a
    rlca
    inc bc

jr_034_6fbe:
    nop
    nop
    inc a
    sbc a
    rst $08
    scf

jr_034_6fc4:
    inc de
    jr jr_034_6fc7

jr_034_6fc7:
    nop
    inc b
    ld b, $00
    nop
    nop
    nop
    adc a
    rst $00
    db $e3
    ld bc, $0000
    nop
    nop
    add b
    ld bc, $0000
    nop
    nop
    rst $00
    ld [hl], c
    inc e
    rst $00
    rlca
    add [hl]
    nop
    nop
    add b
    ld bc, $3000
    inc c
    nop
    nop
    rst $00
    ld [hl], c
    inc e
    rst $00
    ld bc, $c1d8
    ei
    rst $10
    ld bc, $4100
    stop
    nop
    inc e
    ld c, $c7
    jp RST_00


    nop
    inc e
    ld c, $0e
    rlca
    nop
    nop
    nop
    nop
    ld [$070e], sp
    nop
    nop
    nop
    inc e
    ld c, $c7
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    add h
    ld bc, $0000
    adc h
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    ret nz

    jr jr_034_702c

jr_034_702c:
    nop
    ld [$0006], sp
    nop
    nop
    sbc a
    rlca
    jr nz, jr_034_6fc4

    rlca
    jr @+$08

    nop
    nop
    nop
    add [hl]
    ld bc, $0000
    nop
    ld [$828c], sp
    inc sp
    rlca
    add b
    jr nz, jr_034_7049

jr_034_7049:
    nop
    nop
    ld h, b
    jr nz, jr_034_705e

    jr nc, jr_034_7074

    ld [hl], a
    nop
    ld h, b
    jr nz, jr_034_7085

    jr nz, @+$06

    ld a, [hl]
    nop
    nop
    jr nz, jr_034_705c

jr_034_705c:
    nop
    nop

jr_034_705e:
    nop
    nop
    nop
    jr nz, @+$12

    nop
    nop
    nop
    nop
    inc c
    add hl, sp
    ret nz

    cp [hl]
    add hl, bc
    nop
    ret nz

    nop
    nop
    nop
    ld a, [$8e34]

jr_034_7074:
    db $eb
    rlca
    nop
    ld b, b
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_7085:
    adc [hl]
    ld bc, $0000
    nop
    sbc [hl]
    rlca
    nop
    nop
    nop
    sbc [hl]

jr_034_7090:
    ld b, a
    ld a, b
    ld e, $06
    adc [hl]
    ld b, c
    ld a, b

jr_034_7097:
    ld e, $06
    nop
    ld b, b
    ld a, b
    ld e, $06

jr_034_709e:
    nop
    jr nz, jr_034_70a1

jr_034_70a1:
    nop
    nop
    nop
    nop
    ld b, b
    inc e
    rlca
    sbc [hl]
    rlca
    ld b, b
    inc e
    rlca
    ld a, [hl]
    adc a
    jp $f1e3


    ldh [rP1], a
    ld b, $83
    pop bc
    pop hl
    ld [hl], b
    nop
    nop
    nop
    add b
    ret nz

    pop hl
    ld [hl], b
    nop
    nop
    ld b, $83
    ld bc, $0000
    nop
    nop
    nop
    call nz, $2053
    inc c
    nop
    ld b, b
    db $10
    db $10
    inc c
    nop
    ld h, b
    jr jr_034_70d7

jr_034_70d7:
    nop
    nop
    ld h, b
    jr jr_034_70dc

jr_034_70dc:
    nop
    ld b, b
    ld h, b
    jr jr_034_70e2

Jump_034_70e1:
    nop

jr_034_70e2:
    rst $08

Jump_034_70e3:
    ld h, e
    jr @-$2f

    inc bc
    ld b, b
    nop
    nop
    ld bc, $cf00
    inc sp
    inc c
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld bc, $0000
    nop
    ld c, $c7
    ldh [$f0], a
    jr nc, jr_034_7106

jr_034_7106:
    nop
    ld l, [hl]
    rst $30
    db $ec
    ld a, [c]
    jr nc, jr_034_7090

    ld bc, $f76e
    xor $f3
    jr nc, jr_034_7097

    ld bc, $c70e
    and $f3
    jr nc, jr_034_709e

    ld bc, $0000
    ret nz

    pop hl
    ld [hl], c
    jr jr_034_7123

jr_034_7123:
    nop
    nop
    call c, $f3ef
    ld a, c
    nop
    nop
    nop
    ret nz

    db $e3
    di
    ld a, c
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_034_7137

jr_034_7137:
    nop
    nop
    ld bc, $1871
    nop
    nop
    ld bc, $38e1
    inc c
    nop
    nop
    ld h, c
    jr jr_034_7147

jr_034_7147:
    nop
    nop
    jr nz, @-$0e

    rst $30
    di
    ld bc, $0400
    ld bc, $0000
    nop
    nop
    add a
    jp $10e1


    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$64
    add b
    nop
    ld hl, sp-$02
    add sp, $01

jr_034_716b:
    ldh [$7a], a
    ret z

    ld bc, $1880
    nop
    nop
    add b
    stop
    nop
    ld a, b
    nop
    add b
    nop
    jr jr_034_716b

    add sp, $01
    ld h, b
    ld l, d
    ret z

    ld bc, $6200
    nop
    nop
    add $e2
    dec [hl]
    nop
    nop
    ld h, d
    inc b
    nop
    add $80
    ld sp, $c700
    ld sp, $020d
    nop
    nop
    add b
    ld h, c
    nop
    nop
    ld_long $fffb, a
    dec bc
    nop
    ld_long $fffb, a
    rlc b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    sbc $f7
    add hl, de
    ld b, $00
    nop
    ld b, $00
    nop

jr_034_71ba:
    nop
    nop
    ld b, $0c
    pop de
    rlca
    ld [$0082], sp
    nop
    nop
    jr nc, @-$30

    db $e3
    jr c, jr_034_71d6

    jr nc, jr_034_71ba

    db $e3
    jr c, jr_034_71db

    nop
    jr nz, jr_034_71d2

jr_034_71d2:
    nop
    nop
    inc e
    ld [bc], a

jr_034_71d6:
    adc h
    nop
    inc e
    inc bc
    adc h

jr_034_71db:
    nop
    nop
    ld hl, $0004
    jr @-$78

    jr nc, jr_034_71ec

    inc bc
    inc a
    adc [hl]
    ld [hl], c
    ld [$000f], sp
    nop

jr_034_71ec:
    ld b, c
    nop
    nop
    jr @+$05

    inc c
    ld bc, $0318
    ld [$8401], sp
    stop
    nop
    rst $18
    rst $30
    dec a
    adc a
    rlca
    nop
    nop
    nop
    adc [hl]
    rlca
    sbc a
    rlca
    add b
    rst $30
    ld sp, hl
    inc a
    nop
    ld [$070e], sp
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    ld b, c
    ldh [rSVBK], a
    stop
    nop
    add b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $13
    ld bc, $78e0
    inc e
    nop
    ld b, $d3
    pop hl
    ldh a, [$f8]
    ld a, h
    nop
    ld b, $d3
    pop hl
    ldh a, [$78]
    inc a
    nop
    ld b, $13
    dec c
    ldh [$78], a
    inc e
    nop
    ld b, $03
    ld bc, $78e0
    inc e
    nop
    or a
    rst $08
    db $e3
    pop af
    nop
    nop
    nop
    cp a
    rst $08
    rst $20
    pop af
    ld e, b
    ld a, b
    nop
    add c
    ld b, c
    nop
    db $10
    call z, $01ff
    ld e, $8f
    inc bc
    nop
    nop
    nop
    nop
    sbc a
    rst $08
    inc bc
    db $10
    call z, $01ff
    sbc a
    rst $08
    inc bc
    nop
    add h
    jp $1001


    ld [$0000], sp
    add h
    jp $0001


    inc b
    nop
    nop
    nop
    nop
    nop
    add c
    ld b, l
    nop
    db $10
    ld c, b
    inc a
    nop
    ld b, b
    jr jr_034_7294

jr_034_7294:
    nop
    rst $20
    nop
    ld bc, $e700
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld b, b
    nop
    nop
    nop
    rst $18
    ld b, a
    nop
    nop
    nop
    cp a
    ld c, a
    nop
    nop
    nop
    nop
    jr nz, jr_034_72bb

    nop
    nop
    rst $18
    rlca
    nop
    nop
    nop
    cp a

jr_034_72bb:
    rrca
    nop
    nop
    nop
    ld b, $83
    ld bc, $3800
    inc e
    nop
    ld b, b
    or b

jr_034_72c8:
    sub c
    add hl, bc
    nop
    nop
    nop
    ld b, $83
    pop bc
    inc bc
    cp c
    dec e
    nop
    ld b, b
    or b
    pop de
    dec bc
    add c
    ld bc, $0000
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_034_72c8

    ld c, $07
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    inc e
    ld a, $de
    adc a
    rst $00
    ld h, e
    nop
    inc e
    cp $ff
    rst $38
    rst $20
    ld h, e
    nop
    add b
    ld de, $0000
    add b
    add hl, de
    nop
    nop
    ld [$f77f], a
    nop
    add b
    ld [$0000], sp
    nop
    stop
    nop
    call nz, RST_00
    nop
    rst $20
    adc h
    ld [hl], c
    nop
    xor $8d
    ld [hl], c
    nop
    ld b, b
    adc h
    ld [hl], e
    nop
    ret nz

    nop
    nop
    nop
    nop
    rst $08
    jp RST_20


    nop
    rst $00
    ld b, c
    cp b
    ld c, $00
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    ld b, $80
    rst $00
    db $e3
    pop af
    ld a, b
    inc e
    nop
    add a
    rst $00
    db $e3
    pop af
    ld a, b
    inc e
    nop
    nop
    nop
    add b
    ret nz

    ld h, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_034_736b

    nop
    nop
    ld hl, sp-$01
    rst $30
    nop
    sbc b
    ld b, e
    nop
    nop
    inc a
    di
    ld a, h
    rst $00
    inc bc
    nop

jr_034_736b:
    nop
    ld [$0002], sp
    inc a
    cp a
    inc b
    nop
    nop
    add [hl]
    rst $00
    rst $20
    pop af
    ld hl, sp+$7c
    nop
    ld b, $c7
    rst $20
    pop af
    ldh [$60], a
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    adc $19
    ld h, e
    nop
    nop
    ld h, e
    adc h
    ld bc, $0400
    add b
    ld bc, $f3df
    dec a
    add [hl]
    ld bc, $f3df
    dec a
    adc [hl]
    inc bc
    rst $18
    di
    dec a
    ld [bc], a
    nop
    rst $18
    rst $38
    ccf
    ld [bc], a
    nop
    jr c, jr_034_73c7

    ld b, $c3
    ld h, c
    jr nc, jr_034_73b0

jr_034_73b0:
    inc a
    ld e, $03

jr_034_73b3:
    add e
    add c
    nop
    nop
    inc a
    ld e, $07
    add e
    add c
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add b
    pop af

jr_034_73c7:
    db $fd
    ld b, $00
    nop
    jr nz, jr_034_73cd

jr_034_73cd:
    nop
    nop
    sbc [hl]
    adc a
    nop
    nop
    nop
    sbc [hl]
    rrca
    nop
    nop
    nop
    nop
    jr nz, jr_034_73e4

    nop
    nop
    nop
    jr nz, jr_034_73ed

    nop
    nop
    ret nz

jr_034_73e4:
    add hl, sp
    rlca
    nop
    nop
    stop
    nop
    ld h, e
    sbc b

jr_034_73ed:
    ld sp, $4000
    jr jr_034_73f3

    nop

jr_034_73f3:
    ld b, b
    ld [$0001], sp
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
    jp $f1e3


    jr c, jr_034_7404

jr_034_7404:
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    inc c
    ld b, e
    jr nc, jr_034_741c

    nop
    adc [hl]
    add d
    jr c, jr_034_73b3

    inc bc
    inc c
    add d
    jr nc, jr_034_7426

    nop
    inc c

jr_034_741c:
    jp $0c30


    nop
    jp $1c71


    ld bc, $c300

jr_034_7426:
    ld [hl], a
    ld e, h
    ld de, $0000
    ld h, c
    nop
    nop
    nop
    ret nz

    jr jr_034_7435

    nop
    ret nz

    ld e, d

jr_034_7435:
    inc bc
    nop
    nop
    ld hl, $0000
    nop
    ld b, d
    nop
    nop
    nop
    cp h
    db $dd
    rst $28
    ld h, b
    jr jr_034_7446

jr_034_7446:
    adc a
    rlca
    nop
    ret nz

    ld a, b
    inc a
    nop
    jr nc, jr_034_7467

    nop
    nop
    ld b, $03
    nop
    cp a

jr_034_7455:
    rra
    nop
    ret nz

    ld a, [hl]
    ccf
    nop
    jr nc, @+$1a

    nop
    nop
    add a
    inc bc
    nop
    cp a
    rra
    nop
    ret nz

    rst $38

jr_034_7467:
    ccf
    nop
    jr nc, jr_034_7473

    ld bc, $0c30
    nop
    nop
    ld bc, $0000

jr_034_7473:
    inc c
    ld bc, $0c00
    rlca
    nop
    inc b
    ld b, b
    nop
    nop
    nop
    add $00
    adc [hl]
    rlca
    inc bc
    add $00
    nop
    nop
    inc bc
    ld b, $00
    adc [hl]
    rlca
    inc bc
    ret nz

    nop
    nop
    nop
    db $e3
    add hl, sp
    xor a
    ld bc, $1080
    nop
    nop
    nop
    nop
    adc b
    ld bc, $0008
    inc b
    nop
    adc $39
    ld h, h
    nop
    ld b, b
    dec a
    nop
    nop
    nop
    jr nz, jr_034_74ac

jr_034_74ac:
    nop
    jr z, jr_034_7455

    adc l
    ld bc, $1080
    ld [bc], a
    nop
    ret nz

    ld a, e
    rst $08
    nop
    nop
    stop
    nop
    nop
    inc a
    dec de
    adc [hl]
    rlca
    nop
    nop
    nop
    inc a
    sbc e
    rst $08
    ld [hl], a
    jr c, jr_034_74cb

jr_034_74cb:
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld a, [de]
    adc [hl]
    rlca
    nop
    nop
    adc h
    ld sp, $0063
    nop
    nop
    ld [bc], a
    nop
    pop bc
    jr nc, jr_034_74f0

    adc [hl]
    ld bc, $1000
    inc b
    nop
    nop
    nop
    rst $00
    ld [hl], e
    inc c
    nop

jr_034_74f0:
    ld a, b
    ld c, h
    jp hl


    nop
    ld [$0001], sp
    nop
    nop
    inc b
    ld b, c
    sbc [hl]
    rlca
    nop
    ld b, l
    ld b, c
    sbc [hl]
    rlca
    nop
    ld b, c
    nop
    nop
    nop
    jr c, jr_034_7545

    sbc a
    rrca
    add $60
    nop
    jr c, jr_034_754c

    rst $38
    ld a, a
    cp $6c
    nop
    jr c, jr_034_7553

    rst $18
    ccf
    add $60
    nop

jr_034_751c:
    nop
    nop
    ld b, b
    jr nz, jr_034_7521

jr_034_7521:
    nop
    nop
    nop
    nop
    add e
    ld bc, $60c0
    nop
    nop
    nop
    jp $c021


    ld h, b
    nop
    nop
    jr nc, jr_034_754c

    dec c
    ld b, $03
    nop
    nop
    jr z, @+$16

    dec bc
    dec b
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0000

jr_034_7545:
    nop
    nop
    jr nc, @+$1a

    inc c
    ld b, $03

jr_034_754c:
    nop
    nop
    jr z, jr_034_7564

    ld a, [bc]
    dec b
    inc bc

jr_034_7553:
    nop
    nop
    nop
    add e

jr_034_7557:
    ld bc, $0000
    nop
    ld b, b
    ld [$01e6], sp
    ld b, [hl]
    ld [$01e7], sp
    nop

jr_034_7564:
    nop
    and $01
    ld b, b
    ld [$0000], sp
    add c
    pop bc
    ld h, b
    jr nc, @+$1a

    nop
    nop
    inc c
    ld c, $06
    jp $30e1


    nop
    adc l
    rst $08
    ld h, [hl]
    di
    ld sp, hl
    jr nc, jr_034_7580

jr_034_7580:
    nop
    nop
    add c
    ld b, b
    nop
    nop
    nop
    jr nc, jr_034_7557

    di
    nop
    nop
    jr nc, jr_034_751c

    db $e3
    nop
    nop
    nop
    ld b, b
    stop
    nop
    inc b
    ld c, $87
    add e
    pop hl
    jr c, jr_034_759d

jr_034_759d:
    inc c
    ld c, $87
    add e
    pop hl
    jr c, jr_034_75a4

jr_034_75a4:
    nop
    add b
    ret nz

    ld h, b
    nop
    nop
    nop
    ld h, e
    xor c
    inc sp
    nop
    nop
    ld hl, $0000
    add b
    ld [hl], c
    inc e
    ld b, $00
    add b
    pop af
    inc a
    ld b, $00
    nop
    ld b, b
    stop
    nop
    inc e
    sbc $68
    ld e, $db
    pop hl
    nop
    inc c
    ld b, $00
    ld [bc], a
    ld b, b
    ld h, b
    nop
    inc b
    ld [de], a
    ld [$420e], sp
    jr nz, jr_034_75d7

jr_034_75d7:
    nop
    db $10
    ld [$020c], sp
    nop
    nop
    add b
    ld de, $0000
    nop
    nop
    adc $01
    add h
    stop
    nop
    nop
    ld bc, $0000
    ld h, b
    adc h
    ld [hl], c
    nop
    add b
    jr nc, jr_034_75f5

jr_034_75f5:
    nop
    add $93
    inc h
    adc a
    ld bc, $d3c0
    inc [hl]
    rrca
    nop
    nop
    ld b, b
    stop
    nop
    nop
    jr nz, jr_034_7610

    nop
    nop
    rst $08
    db $e3
    nop
    nop
    nop
    pop bc

jr_034_7610:
    nop
    inc c
    rst $08
    ld bc, $4004
    nop
    nop
    nop
    add b
    stop
    nop
    add [hl]
    db $10
    ld [hl], c
    nop
    ld b, b
    ld [$0000], sp
    ld b, $00
    ld [hl], c
    nop
    nop
    ld h, c
    nop
    nop
    nop
    jp $0071


    nop
    nop
    rst $08
    di
    nop
    nop
    nop
    inc c
    db $e3
    nop
    nop
    nop
    inc b
    ld b, e
    jr nc, jr_034_7641

jr_034_7641:
    nop
    nop
    nop
    nop
    adc [hl]
    inc bc
    nop

jr_034_7648:
    nop
    nop
    adc h
    inc bc
    nop
    ld h, c
    nop
    nop
    nop

jr_034_7651:
    nop
    nop
    rst $18
    rst $08
    inc bc
    nop
    ld b, b
    sbc [hl]
    rst $08
    inc bc
    add a
    ld bc, $cf9e
    inc bc
    add a
    ld bc, $0000
    nop
    ld e, $07
    jr nc, jr_034_7648

    inc bc
    nop
    ld b, e
    nop
    nop
    nop
    add b
    jr nz, jr_034_7672

jr_034_7672:
    nop
    nop
    nop
    nop
    add c
    ld b, b
    nop
    nop
    nop
    nop
    nop

jr_034_767d:
    add c
    ret nz

    nop
    nop
    nop

jr_034_7682:
    add b
    rst $00
    rst $20
    di
    ld a, c
    jr jr_034_7689

jr_034_7689:
    nop
    nop
    ld h, b
    jr @+$08

    nop
    nop
    nop
    stop
    jr nz, jr_034_7641

    ld h, a
    nop
    and b
    cp h
    ld h, a
    nop
    add b
    jr nc, jr_034_76a2

    nop
    and b
    cp h
    dec h

jr_034_76a2:
    nop
    jr nz, jr_034_7651

    dec h
    nop
    nop
    stop
    nop
    rst $18
    rst $30
    dec a
    rrca
    nop
    add a
    jp Jump_034_70e3


    nop
    ld [$8700], sp
    jp Jump_034_70e3


    jr c, @+$1e

    nop
    ld bc, $0000
    nop
    jr c, @+$1e

    nop
    ld bc, $0000
    nop
    nop
    ld [$2500], sp
    sbc b
    ld d, b
    nop
    rst $20
    sbc b
    ld [hl], e
    nop
    ld b, b
    ld [$0001], sp
    jr jr_034_76da

jr_034_76da:
    nop
    nop
    nop
    ld h, b
    nop
    jr jr_034_76e1

jr_034_76e1:
    ld [bc], a
    add b
    nop
    ld h, b
    nop
    nop
    nop
    ld [bc], a
    add b
    nop
    nop
    nop
    jr c, jr_034_767d

    jp RST_00


    jr c, jr_034_7682

    rst $08
    inc bc
    nop
    nop
    nop
    inc c
    inc bc
    nop
    stop
    ld bc, $0000

Jump_034_7701:
    rst $00
    pop af
    inc a
    rst $00
    ld bc, $1000
    ld [$b874], sp
    ld a, h
    nop
    nop
    jp nc, $7429

    cp b
    ld a, h
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    jp $0041


    nop
    nop
    rst $08
    add d
    jr nc, jr_034_7725

jr_034_7725:
    add $cf
    nop
    sbc h
    inc bc
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    nop
    nop
    ret nz

    di
    jr c, jr_034_7747

    nop
    nop
    jr nc, @+$0e

    nop
    nop
    nop
    ld [$0000], sp
    adc a
    add hl, hl
    or $00
    adc a

jr_034_7747:
    ld hl, $00f6
    inc a
    ld e, $87
    jp $e1c1


    nop
    nop
    nop
    nop
    nop
    ldh [$f1], a
    nop
    inc a
    ld e, $07
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    inc a
    ld e, $87
    nop
    ldh [$f1], a
    nop
    jr c, jr_034_778d

    rlca
    nop
    nop
    nop
    nop
    ld h, b
    sbc h
    ld bc, $6000
    sbc h
    inc bc
    nop
    ld a, b
    sbc [hl]
    add e
    ld bc, $0400
    nop
    nop
    ld e, $07

jr_034_7786:
    nop
    rst $08
    inc bc

jr_034_7789:
    inc b
    ld bc, $8610

jr_034_778d:
    nop
    nop
    ld bc, $0010
    nop
    jp Jump_034_6338


    adc [hl]
    ld bc, $fbc3
    inc hl
    adc [hl]
    ld bc, $c300
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    adc h
    ld bc, $000c
    ret nz

    stop
    nop
    ld b, b
    ld [$0000], sp
    nop
    ret nz

    pop hl
    jr nc, jr_034_77b8

jr_034_77b8:
    nop
    nop
    add b
    pop bc
    ldh [$b0], a
    pop hl
    ld [hl], b
    nop
    nop
    ret nz

    ldh [$30], a
    nop
    nop
    nop
    add b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld hl, $0084
    nop
    ld hl, $008c
    nop
    ld hl, $0000
    ld b, d
    jr jr_034_77de

jr_034_77de:
    nop
    nop
    nop
    add h
    nop
    nop
    nop
    adc h
    nop
    sbc [hl]
    rst $20
    ld bc, $0000
    sbc [hl]
    rst $20
    ld bc, $01c7
    jr @+$05

    nop
    nop
    ld [$0001], sp
    nop
    jr c, jr_034_7789

    db $e3
    nop
    nop
    jr jr_034_7786

    ld b, c
    stop
    nop
    nop
    ld b, b
    db $10
    inc b
    db $10
    inc b
    pop bc
    nop
    nop
    inc c
    nop
    nop
    inc e
    rlca
    nop
    add d

jr_034_7814:
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    ld [$018c], sp
    rlca
    ld [$0000], sp
    jr jr_034_7814

    ld h, e
    ld [$0000], sp
    jp RST_00


    nop
    nop
    nop
    stop
    nop
    nop
    ld b, e
    nop
    nop
    ld [bc], a
    jr c, jr_034_789c

    nop
    adc [hl]
    inc bc
    inc a
    ld h, e
    nop
    adc [hl]
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    jr c, jr_034_784a

    nop
    adc [hl]

jr_034_784a:
    inc bc
    nop
    jr nz, jr_034_784e

jr_034_784e:
    nop
    nop
    ld [hl], b
    jr nc, jr_034_786d

    jr nc, jr_034_786d

    inc e
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld h, b
    jr nc, jr_034_7863

    jr nc, jr_034_787b

jr_034_7863:
    inc c
    nop
    ld [hl], b
    jr nc, jr_034_7880

    jr nc, jr_034_7882

    inc e
    nop
    ld h, b

jr_034_786d:
    jr nc, jr_034_786f

jr_034_786f:
    jr nc, @+$1a

    inc c
    nop
    nop
    inc b
    ld bc, $0000
    nop
    nop
    add [hl]

jr_034_787b:
    jp $0001


    nop
    nop

jr_034_7880:
    nop
    adc a

jr_034_7882:
    rst $00
    pop bc
    pop af
    ld a, b
    inc a

jr_034_7887:
    nop
    adc $e3
    jr @+$0e

    inc bc
    adc $e3
    ld [$0000], sp
    ld [$0002], sp
    nop
    nop
    ld [$0003], sp
    nop
    nop

jr_034_789c:
    add a
    ei
    ld a, l
    nop
    nop
    nop
    nop
    add a
    jp $2061


    stop
    nop
    add a
    jp $0061


    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_034_78c6

    nop
    nop
    nop
    nop
    inc c
    add a
    ld b, $00
    nop
    jr nc, jr_034_78fd

    inc e
    nop
    nop
    nop
    nop

jr_034_78c6:
    jr nc, jr_034_7887

    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld h, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_034_78da

jr_034_78da:
    nop
    nop
    nop
    ld b, b
    jr nz, jr_034_78e0

jr_034_78e0:
    nop
    nop
    rst $00
    jr c, jr_034_794b

    nop
    rst $00
    jr nc, jr_034_78e9

jr_034_78e9:
    nop
    nop
    ld [$0000], sp
    ld a, $3f
    ld e, $0c
    nop
    nop
    nop
    ld a, $3f
    ld e, $08
    nop
    nop
    nop
    nop

jr_034_78fd:
    jr nc, jr_034_7917

    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    add [hl]
    db $e3
    jr jr_034_790f

jr_034_790f:
    jp $fff7


    ld a, [de]
    nop
    jp $1c71


jr_034_7917:
    ld [bc], a
    nop
    nop
    db $10
    ld [$0000], sp
    nop
    nop
    ld e, $9f
    rst $08
    rst $20
    pop hl
    nop
    nop
    nop
    ld [$0004], sp
    nop
    nop
    nop
    inc c
    adc [hl]
    rst $10
    add hl, bc

jr_034_7932:
    nop
    add b
    ld bc, $0e1c
    rlca
    nop
    nop
    add b
    ld bc, $0000
    db $10
    ld [$0000], sp
    nop
    sbc h
    ld sp, $0060
    sbc h
    ld de, $0060

jr_034_794b:
    ld b, b
    ld [$0000], sp
    nop
    nop
    ld a, [bc]
    add l
    ld b, b
    nop
    nop
    ld a, $9f
    rst $08
    rst $20
    ei
    reti


    nop
    nop
    call nz, $856a
    ld b, b
    ld [$0000], sp
    nop
    ld [$0004], sp
    nop
    nop
    add b
    db $10
    ld [bc], a
    nop
    add b
    ld sp, $0002
    rst $08
    add e
    nop
    jr nz, jr_034_7980

    rst $08
    or e
    inc c
    daa
    ld [$0000], sp
    nop

jr_034_7980:
    jr nz, jr_034_798a

    add b
    jr nc, jr_034_7991

    daa
    ld [$0c00], sp
    nop

jr_034_798a:
    jr nz, jr_034_7994

    nop
    ldh [$59], a
    nop
    nop

jr_034_7991:
    call nz, Call_034_7df7

jr_034_7994:
    sbc a
    rlca
    ret nz

    rst $30
    ld a, l
    sbc a
    rlca
    nop
    jr nz, @+$0a

    nop
    nop
    adc h
    ld h, e
    jr jr_034_7932

    ld bc, $6bbc
    ret c

    cp [hl]
    ld bc, $2000
    nop
    nop
    nop
    nop
    nop
    add b
    pop bc
    pop hl
    nop
    nop
    inc c
    ld b, $80
    pop bc
    pop hl
    jr nc, jr_034_79bd

jr_034_79bd:
    jr nc, jr_034_79bf

jr_034_79bf:
    nop
    nop
    ld [bc], a
    pop bc
    nop
    nop
    add b
    ld b, b
    nop

jr_034_79c8:
    nop
    nop
    nop
    sbc h
    rst $08
    add a
    ld b, c
    nop
    nop
    nop
    db $fc
    rst $38
    rst $18
    rst $08
    rlca
    nop
    nop
    adc a
    rst $08
    rst $20
    di
    nop
    nop
    nop
    sbc a
    rst $08
    rst $20
    di
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    ld bc, $0000
    nop
    nop
    nop
    ld hl, sp-$01
    rst $28
    ld h, [hl]
    inc hl
    nop
    nop
    ld hl, sp-$01
    rst $28
    db $76
    dec de
    inc e
    nop
    ld hl, sp-$41
    rrca
    ld b, $03
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_034_79c8

    ld h, e
    nop
    nop
    jr jr_034_7a34

    nop
    inc b
    ld b, b

jr_034_7a34:
    stop
    nop
    inc c
    ret nz

    jr nc, jr_034_7a3b

jr_034_7a3b:
    nop
    sbc a
    rst $08
    ld l, a
    inc sp
    ld bc, $0000
    sbc a
    rst $08
    ld l, a
    inc sp
    ld h, c
    jr nc, jr_034_7a4a

jr_034_7a4a:
    nop
    nop
    nop
    nop
    ld h, b
    jr nc, jr_034_7a51

jr_034_7a51:
    nop
    nop
    ld bc, $0000
    nop
    nop
    rst $30
    rst $38
    ld e, l
    nop
    add a
    jp Jump_034_7701


    ccf

jr_034_7a61:
    inc e
    nop
    sbc e
    rst $08
    ld bc, $2000
    nop
    db $10
    jr jr_034_7a78

    nop
    add a
    di
    ld b, c
    nop

jr_034_7a71:
    add a
    jp $0701


    inc sp
    nop
    nop

jr_034_7a78:
    sbc e
    rst $08
    ld bc, $3000
    nop
    db $10
    jr jr_034_7a8d

    nop
    ld [hl], b
    inc a
    inc e
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_034_7a8c

jr_034_7a8c:
    nop

jr_034_7a8d:
    jr jr_034_7a9b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    inc a
    ld e, $07

jr_034_7a9b:
    nop
    nop
    nop
    ld a, b
    inc a
    ld e, $8f
    add a
    nop
    nop
    nop
    ret nz

    ld [hl], b
    inc a
    ld b, $c3
    nop
    nop
    jr jr_034_7aaf

jr_034_7aaf:
    nop
    nop
    nop
    nop
    jr nz, jr_034_7a61

    ld h, a
    nop
    and b
    cp h
    ld h, a
    nop
    add b
    jr nc, jr_034_7ac2

    nop
    and b
    cp h
    dec h

jr_034_7ac2:
    nop
    jr nz, jr_034_7a71

    dec h
    nop
    nop
    stop
    nop
    nop
    jr nz, jr_034_7ad2

    nop
    adc $39
    rlca

jr_034_7ad2:
    nop
    rlca
    ld a, e
    inc de
    ld a, e
    rra
    ld a, e
    cpl
    ld a, e
    dec sp
    ld a, e
    ld b, a
    ld a, e
    ld d, a
    ld a, e
    ld h, e
    ld a, e
    ld l, e
    ld a, e
    ld [hl], a
    ld a, e
    add e
    ld a, e
    adc e
    ld a, e
    sub a
    ld a, e
    sbc a
    ld a, e
    xor e
    ld a, e
    or e
    ld a, e
    cp a
    ld a, e
    rst $00
    ld a, e
    rst $08
    ld a, e
    db $db
    ld a, e
    rst $20
    ld a, e
    rst $28
    ld a, e
    ei
    ld a, e
    rlca
    ld a, h
    inc de
    ld a, h
    inc hl
    ld a, h
    nop
    stop
    nop
    nop
    inc c
    nop
    nop
    add b
    jr nc, jr_034_7b14

    nop
    nop

jr_034_7b14:
    jr jr_034_7b16

jr_034_7b16:
    nop
    nop
    nop
    inc bc
    nop
    add b
    jr @+$04

    nop
    ld [$0063], sp
    nop
    nop
    stop
    nop
    nop
    jr nc, jr_034_7b2a

jr_034_7b2a:
    nop
    add b
    ld sp, $0000
    call z, $0239
    nop
    ret nz

    add hl, sp
    ld b, $00
    add b
    ld sp, $0000
    nop
    nop
    dec c
    nop
    nop
    add b
    add hl, bc
    nop
    add b
    ld sp, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    jr nz, jr_034_7b52

jr_034_7b52:
    nop
    ret nz

    jr jr_034_7b56

jr_034_7b56:
    nop
    ld h, b
    adc h
    ld bc, $6000
    sbc h
    ld bc, $0000
    jr c, jr_034_7b64

    nop
    nop

jr_034_7b64:
    jr nc, jr_034_7b66

jr_034_7b66:
    nop
    add b
    ld sp, $0006
    nop
    ld [$0001], sp
    ld b, b
    ld [$0000], sp
    add b
    ld sp, $0006

Call_034_7b77:
    nop
    ld h, e
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    jr nc, jr_034_7b88

    nop
    nop
    nop
    adc $00
    add b

jr_034_7b88:
    ld sp, $0000
    nop
    ld b, b
    ld [$0000], sp
    nop
    ld [$8000], sp
    jr nc, jr_034_7b98

    nop
    nop

jr_034_7b98:
    ld [hl], b
    ld c, $00
    nop
    ld h, b
    inc c
    nop
    nop
    inc bc
    ret nz

    nop
    nop
    ld [hl], e
    adc $00
    nop
    ld [hl], b
    ld c, $00
    nop
    jr nc, jr_034_7bb4

    nop
    nop
    ld [hl], b
    ld b, $00
    add b

jr_034_7bb4:
    db $10
    ld [bc], a
    nop
    ret nz

    jr nc, jr_034_7bbc

    nop
    add b

jr_034_7bbc:
    jr nc, jr_034_7bc0

    nop
    nop

jr_034_7bc0:
    nop
    adc h
    ld bc, $3180
    ld b, $00
    nop
    ld [bc], a
    inc c
    nop
    add b
    jr nc, jr_034_7bd0

    nop
    ld b, b

jr_034_7bd0:
    inc c
    nop
    nop
    nop
    ld h, b
    inc c
    nop
    nop
    jr nc, jr_034_7be0

    nop
    ret nz

    jr c, jr_034_7be3

    nop
    ld b, b

jr_034_7be0:
    jr z, jr_034_7be5

    nop

jr_034_7be3:
    nop
    ld h, b

jr_034_7be5:
    inc c
    nop
    nop
    ld a, b
    rrca
    nop
    nop
    jr nc, jr_034_7bf4

    nop
    ld b, b
    ld [$0021], sp
    ld b, b

jr_034_7bf4:
    jr jr_034_7c17

    nop
    nop
    ld h, b
    inc c
    nop
    add b
    ld sp, $00c6
    add h
    ld bc, $00c0
    nop
    ld h, b
    inc c
    nop
    ld b, b
    ld [bc], a
    jr nz, jr_034_7c0c

    ret nz

jr_034_7c0c:
    ld a, e
    db $eb
    ld bc, $3000
    ld b, $00
    ld b, b
    nop
    nop
    nop

jr_034_7c17:
    nop
    nop
    ld bc, $c000
    add hl, sp
    rlca
    nop
    add b
    jr c, jr_034_7c24

    nop
    ld h, b

jr_034_7c24:
    ld c, h
    ld [$6000], sp
    ld l, h
    adc h
    ld bc, $0860
    ld [$0000], sp
    jr nc, jr_034_7c38

    nop
    nop
    nop
    nop
    nop
    nop

jr_034_7c38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_7df7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
