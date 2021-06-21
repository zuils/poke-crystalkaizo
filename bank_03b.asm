; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    add b
    ld a, [bc]
    ld b, b
    ld bc, $40eb
    ld [bc], a
    cp b
    ld b, c
    inc bc
    rst $28
    rrca
    jp c, $b800

    push hl

Call_03b_4010:
Jump_03b_4010:
    ld [hl], a
    pop hl
    ld d, $11
    db $db
    inc bc
    ret c

    inc c
    add e
    call nc, $5030
    ld [hl], c
    ld [hl], c
    ld sp, $a1d5
    call nc, $a1c1
    add c
    ld [hl], c
    ld sp, $a1d5
    ld [hl], c
    add b
    and b
    add c
    ld d, c
    add b
    ld d, b

Call_03b_4030:
    call nc, $5030
    ld [hl], c
    ld [hl], c
    ld sp, $a1d5
    call nc, $a1c1
    add d
    ld d, b
    ld d, c
    add c
    and c
    add c
    ld [hl], c
    call c, $d381
    ld sp, $dc31
    add e
    ld bc, $83dc
    ld bc, $31d4
    push de
    and c
    inc bc
    call nc, $d531
    and c
    ld bc, $d401
    ld sp, $a2d5
    call nc, $d530
    ld d, c
    call c, $8181
    add c
    call c, $0183
    ld bc, $21d4
    push de
    and c
    inc bc
    call nc, $d521
    and c
    ld bc, $d401
    ld hl, $d520
    ret nz

    and b
    add b
    ld [hl], c
    and c
    call nc, $0131
    ld bc, $70d5
    add b
    and e
    ld bc, $5030
    ld [hl], c
    ld [hl], b
    add b
    and c
    and b
    ret nz

    and c
    and b
    ret nz

Call_03b_4090:
    and c
    call c, $d481
    add c
    add c
    call c, $d583
    ld [hl], b
    ld d, b
    ld bc, $7050
    add l
    ld d, b
    sub $c0
    push de
    ld hl, $7050
    add e
    ret c

    ld [$a083], sp
    ret nz

    and b
    ret c

    inc c
    add e
    add b
    ld d, b
    ld [hl], c
    call c, $d481
    and c
    and c
    call c, $d583
    and b
    add b
    call c, $dc77
    dec e
    ld [hl], e
    and e
    add c
    ld [hl], c
    ld d, c
    add c
    ld [hl], e
    and d
    ld [hl], b
    ld d, c
    and c
    call nc, $d521
    and b
    add b
    db $db
    ld [bc], a
    call c, $d287
    ld [hl], e
    and e
    add c
    ld [hl], c
    ld d, d
    add b
    ld [hl], c
    ld sp, $2151
    ld sp, $81dc
    db $d3
    ld sp, $0131
    db $fd
    nop
    ld c, d
    ld b, b
    rst $28
    ldh a, [$e1]
    ld [de], a
    ld [hl+], a
    db $db
    ld [bc], a
    ret c

    inc c
    sub d
    call nc, $8070
    cp $98
    ld b, c
    push de
    and c
    and c
    call nc, $8070
    cp $aa
    ld b, c
    ld hl, $3151
    call c, Call_03b_7181
    ld [hl], c
    call c, $d482
    jr nc, jr_03b_4160

    db $db
    ld [bc], a
    call c, $fe82
    adc b
    ld b, c
    call c, $d581
    and c
    and c
    call c, $d482
    jr nz, @+$32

Call_03b_4121:
    ld d, c
    ld d, c
    ld d, c
    jr nz, jr_03b_4156

    ld d, c
    ld d, c
    ld d, c
    jr nz, @+$32

    ld d, c
    ld d, c
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld sp, $7101
    jr nc, jr_03b_4186

    cp $88
    ld b, c
    call c, $a181
    and c
    call c, $2082
    jr nc, jr_03b_4193

    add c
    ld [hl], c
    ld d, c
    ld sp, $d521
    pop bc
    and c
    call nc, $d8c3
    ld [$2092], sp
    jr nc, @+$22

    ret c

    inc c
    sub d
    push de

jr_03b_4156:
    ret nz

    call nc, $3120
    call c, $d381
    ld sp, $dc31

Call_03b_4160:
jr_03b_4160:
    add d

Call_03b_4161:
    call nc, $8070
    cp $98
    ld b, c
    inc bc
    ld [hl], b
    add b
    cp $aa
    ld b, c
    ret c

    ld [$2092], sp

Call_03b_4171:
    jr nc, jr_03b_4193

    ret c

    inc c

jr_03b_4175:
    sub d
    call nc, $d3c0
    jr nz, jr_03b_41ac

    call c, Call_03b_7181
    ld [hl], c
    call c, $d482
    jr nc, jr_03b_41d4

    db $fd
    nop

jr_03b_4186:
    ld [de], a
    ld b, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    jr nc, @+$52

    ld [hl], c
    ld [hl], c
    ld [hl], c
    jr nc, @+$52

    ld [hl], c

jr_03b_4193:
    ld [hl], c
    add d
    ld [hl], b
    ld d, c
    rst $38
    and c
    and c
    ld [hl], c
    ld sp, $31d3
    ld hl, $c1d4
    db $d3
    ld sp, $a1d4
    ld [hl], c
    ld [hl-], a
    ld [hl], b
    ld d, c
    rst $38
    and c
    and c

jr_03b_41ac:
    ld [hl], c
    ld sp, $31d3
    ld hl, $c2d4

Call_03b_41b3:
    add b
    and c

Call_03b_41b5:
    db $d3
    ld sp, $efff
    rst $38

jr_03b_41ba:
    pop hl
    db $10
    inc hl
    ret c

jr_03b_41be:
    inc c
    dec h
    ld bc, $30d5
    nop
    and b
    nop
    call nc, $0270
    push de
    jr nc, jr_03b_41cc

jr_03b_41cc:
    ret nz

    nop
    call nc, $0080
    push de
    ret nz

    nop

jr_03b_41d4:
    jr nc, jr_03b_41d6

jr_03b_41d6:
    and b
    nop
    call nc, $0230
    push de
    jr nz, jr_03b_41de

jr_03b_41de:
    and b
    nop
    call nc, RST_20
    jr nz, jr_03b_41ba

    and b
    jr nc, jr_03b_41be

    and b
    push de
    jr nc, @+$72

    call nc, $d530
    and b
    ld [hl], b
    and b
    add b
    jr nc, jr_03b_4175

    ret nz

    call nc, $3080
    push de
    ret nz

    add b
    sub $a0
    push de
    jr nz, @+$52

    add b
    ld d, b
    and b
    call nc, $8020
    ld [hl], c
    and b
    nop
    and b
    ld [bc], a
    push de
    jr nc, jr_03b_420f

jr_03b_420f:
    call nc, $d531
    jr nz, jr_03b_4214

jr_03b_4214:
    call nc, $d621
    ret nz

    nop
    push de
    pop bc
    sub $a0
    nop
    push de
    and c
    jr nc, jr_03b_4222

jr_03b_4222:
    call nc, $d631
    and b
    nop
    push de
    and c
    sub $c0
    nop
    push de
    pop bc
    sub $a0
    nop
    push de
    and c
    jr nz, jr_03b_4235

jr_03b_4235:
    call nc, $d621
    and b
    nop
    push de
    and c
    sub $c0
    nop
    push de
    pop bc
    stop
    call nc, $d511
    jr nz, jr_03b_4248

jr_03b_4248:
    call nc, $d621
    and b

jr_03b_424c:
    nop
    push de
    and c
    call nc, $2031
    push de
    ret nz

    and c
    add b
    ld d, b
    sub $30
    nop
    push de
    ld sp, $50d6
    nop
    push de
    ld d, c
    sub $70
    nop
    push de
    ld [hl], c
    sub $a0
    nop

jr_03b_4269:
    push de
    and c
    call nc, $d531
    and c
    call nc, Call_03b_7131
    ld d, c
    push de
    ld d, b
    nop
    ld d, b
    nop
    call nc, $d551
    jr nz, jr_03b_427d

jr_03b_427d:
    call nc, $d621
    ret nz

    nop
    push de
    pop bc
    sub $a0
    nop
    push de
    and c
    sub $80
    nop
    push de
    add b
    ret nz

    call nc, Call_03b_5021
    jr nz, jr_03b_4269

    and b
    add b
    ld d, b

jr_03b_4297:
    jr nz, jr_03b_42ca

    call nc, $0070
    ld [hl], b
    ld [bc], a
    push de
    inc sp
    ld [hl], e
    add c
    and c
    jp nz, Jump_03b_7180

    ld sp, $a2d6
    push de
    jr nc, jr_03b_424c

    ret nz

    and b
    ret nz

    and d
    add b
    ld [hl], c
    ld sp, $a1d6
    push de
    ld sp, $7181
    ld d, d
    jr nz, jr_03b_42ed

    ld [hl], c
    and c
    call nc, $3121
    db $d3
    and b
    nop
    and b

jr_03b_42c5:
    ld [bc], a
    db $fd
    nop
    inc c
    ld b, d

jr_03b_42ca:
    ret nz

jr_03b_42cb:
    sub $42
    ld bc, $43d0
    ld [bc], a

jr_03b_42d1:
    ld e, e
    ld b, h
    inc bc
    db $eb
    ld b, h
    rst $28
    rrca
    jp c, $a000

    push hl
    ld [hl], a
    ret c

    inc c
    sub c
    add hl, bc
    db $db
    nop

jr_03b_42e3:
    pop hl
    inc d
    ld b, $d5
    jr nz, jr_03b_4339

jr_03b_42e9:
    jr nz, @+$52

    and b
    ld d, b

jr_03b_42ed:
    jr nz, @+$52

jr_03b_42ef:
    and b
    ld d, b
    jr nz, @+$52

jr_03b_42f3:
    jr nz, jr_03b_4345

    jr nz, jr_03b_4347

jr_03b_42f7:
    and b
    ld h, b
    jr nc, jr_03b_435b

    jr nc, jr_03b_435d

    jr nc, jr_03b_435f

    jr nz, jr_03b_4351

    and b
    ld d, b
    jr nz, jr_03b_4355

    ld [hl], b
    sub b
    cp $a4
    ld b, e
    add b
    jr nc, jr_03b_42e3

    ret nz

    push de
    jr nc, @-$7e

    jr nc, jr_03b_42e9

    ret nz

    push de
    jr nc, jr_03b_4297

    jr nc, jr_03b_42ef

    ret nz

    push de
    jr nc, jr_03b_42f3

jr_03b_431d:
    ret nz

    push de
    jr nc, jr_03b_42f7

    ret nz

    push de

jr_03b_4323:
    jr nc, jr_03b_42c5

    ld d, b
    jr nz, jr_03b_4378

    and b

jr_03b_4329:
    ld d, b
    jr nz, jr_03b_437c

    and b

jr_03b_432d:
    ld d, b
    jr nz, jr_03b_4380

    jr nz, jr_03b_4382

    jr nz, jr_03b_4384

    and b
    ld d, b
    jr nz, jr_03b_4388

    and b

jr_03b_4339:
    ld d, b
    jr nz, @+$52

    and b
    ld d, b
    jr nz, jr_03b_4390

    jr nz, jr_03b_4392

    jr nz, jr_03b_4394

    add b

jr_03b_4345:
    jr nc, jr_03b_431d

jr_03b_4347:
    ret nz

    push de
    jr nc, jr_03b_42cb

    jr nc, jr_03b_4323

    ret nz

    push de
    jr nc, jr_03b_42d1

jr_03b_4351:
    jr nc, jr_03b_4329

    ret nz

    push de

jr_03b_4355:
    jr nc, jr_03b_432d

    ret nz

    push de
    jr nc, @-$28

jr_03b_435b:
    ret nz

    push de

jr_03b_435d:
    jr nc, @-$22

jr_03b_435f:
    ld l, a
    add b
    jr nc, @-$22

    ld [hl], a
    sub $c0

jr_03b_4366:
    push de
    jr nc, jr_03b_42e9

    jr nc, jr_03b_43bb

    sub b
    jp Jump_03b_6fdc


    push de
    sub c
    ld d, c
    and c
    sub c
    and c
    ld d, a
    ld b, b
    ld d, b

jr_03b_4378:
    sub c
    sub $c3
    push de

jr_03b_437c:
    ld sp, $9151
    pop bc

jr_03b_4380:
    and b
    sub b

jr_03b_4382:
    ld h, d
    ld d, d

jr_03b_4384:
    ld sp, $a1d6
    push de

jr_03b_4388:
    ld sp, $6151
    call c, Call_03b_7091
    jr nc, jr_03b_4366

jr_03b_4390:
    and b
    push de

jr_03b_4392:
    jr nc, jr_03b_4404

jr_03b_4394:
    and b
    ld [hl], b

jr_03b_4396:
    and b
    ret nz

    sub b
    ld d, b
    sub b
    ld d, b
    sub b
    ret nz

    call nc, $fd30
    nop

jr_03b_43a2:
    rlca
    ld b, e
    push de
    and b
    ld d, b
    jr nz, jr_03b_43f9

    db $fd
    inc bc
    and h
    ld b, e
    jr nz, jr_03b_43ff

    jr nz, @+$52

    and b
    ld d, b
    jr nz, jr_03b_4405

    db $fd
    inc bc
    or c
    ld b, e
    jr nz, @+$52

jr_03b_43bb:
    jr nz, jr_03b_440d

    add b
    jr nc, jr_03b_4396

    ret nz

jr_03b_43c1:
    push de
    jr nc, jr_03b_43c1

    inc bc
    cp l
    ld b, e
    sub $c0
    push de
    jr nc, jr_03b_43a2

    ret nz

    push de
    jr nc, @+$01

    rst $28
    ldh a, [$d8]
    inc c

Jump_03b_43d4:
    ld e, [hl]
    db $db
    ld [bc], a
    pop hl
    ld b, $03
    call nc, $8050
    sub l
    call c, Call_03b_7087
    sub b
    and b
    ld b, $23
    ld d, e
    inc sp
    push de
    jp $23d4


    call c, $dba7
    ld [bc], a
    push de
    and b
    call nc, Call_03b_5020
    sub b
    call c, $fe7d
    ld b, e

jr_03b_43f9:
    ld b, h
    add b
    ret


    call c, $c5b7

jr_03b_43ff:
    call c, $037d
    db $db
    inc bc

jr_03b_4404:
    sub e

jr_03b_4405:
    cp $43
    ld b, h
    ret nz

    call c, $d37d
    inc [hl]

jr_03b_440d:
    call c, $d3b7
    inc [hl]
    db $db
    nop
    push de
    jr nc, jr_03b_4396

    ret nz

    nop
    add b
    ret nz

    call nc, $dc33
    adc a
    db $db
    ld [bc], a
    call nc, $3151
    ld hl, $c1d5
    call nc, $d521
    and a
    sub b
    and b
    pop bc
    ld d, e
    call nc, $3057
    jr nz, jr_03b_4465

    ld [hl+], a
    push de
    xor c
    db $db
    ld [bc], a
    call nc, Call_03b_5075
    ld [hl], b
    sub l
    ld [hl], b
    sub b

jr_03b_443f:
    db $fd
    nop
    push af
    ld b, e
    and l
    ld d, b
    and b
    db $d3
    ld h, $dc
    or a
    db $d3
    ld [hl+], a
    call c, $d47d
    ld d, c
    and c
    db $d3
    ld d, c
    ld sp, $d421
    pop bc
    and c
    add l
    jr nc, @+$01

    rst $28
    rst $38
    pop hl
    ld b, $03
    ret c

    inc c
    inc de
    push de
    ret nz

jr_03b_4465:
    call nc, $5530
    jr nc, jr_03b_443f

    ret nz

    call c, $d514
    and b
    nop
    sub $a1
    ld bc, $a0a0
    and b
    nop
    and b
    nop
    and b
    nop
    sub c
    cp $bd
    ld b, h
    call c, $fe14
    cp l
    ld b, h
    cp $bd
    ld b, h
    cp $ce
    ld b, h
    cp $bd
    ld b, h
    cp $bd
    ld b, h
    cp $ce
    ld b, h
    and c
    push de
    ld hl, $a551
    sub c
    ld [hl], c
    ld d, c
    ld sp, $c1d6
    sub c
    ld d, b
    nop
    ld d, c
    pop bc
    push de
    ld d, c
    ld h, l
    ld d, c
    ld sp, $c1d6
    push de
    ld de, $3021
    nop
    ld sp, $3001
    jr nc, jr_03b_4504

    nop
    ld d, c
    ld bc, $9070
    db $fd
    nop
    ld a, a
    ld b, h
    push de
    and b
    nop
    sub $a1
    ld bc, $a0a0
    and b
    nop
    and b
    nop
    push de
    and c
    sub $91
    rst $38
    push de
    add b
    nop
    sub $a1
    ld bc, $a0a0
    and b
    nop
    and b
    nop
    push de
    ld sp, $8081
    nop
    sub $81
    ld bc, $8080
    ld d, b
    nop
    ld d, b
    nop
    sub c
    pop bc
    rst $38
    db $e3
    inc b
    ret c

    inc c
    add hl, bc
    ret c

    inc c
    ld sp, $3033
    jr nc, @+$33

    ld sp, $06d8
    jr nz, jr_03b_451c

    jr nz, @+$22

    jr nz, jr_03b_4520

    jr nz, jr_03b_4522

    db $fd
    nop

jr_03b_4504:
    ldh a, [rLY]
    ret nz

    ld [de], a
    ld b, l
    ld bc, $45ca
    ld [bc], a
    ld d, a
    ld b, [hl]
    inc bc
    adc $46
    jp c, $9400

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    and $00

jr_03b_451c:
    ld bc, $0fef
    db $db

jr_03b_4520:
    inc bc
    ret c

jr_03b_4522:
    inc c
    sbc b
    push de

Call_03b_4525:
    sub b
    ld bc, $97a0
    sub $c0
    push de
    ld d, b
    ld [hl], b
    sub b
    ld [hl], b
    ld bc, $dc50
    sub a
    ld c, e
    db $db
    ld [bc], a
    call c, $fe96
    or c
    ld b, l
    cp $bf
    ld b, l
    cp $b1
    ld b, l
    ld d, b
    ld bc, $5370
    jp Jump_03b_43d4


    cp $b1
    ld b, l
    cp $bf
    ld b, l
    cp $b1
    ld b, l
    call c, $d492
    ld d, b
    push de
    ret nz

    sub b
    ld d, b
    call nc, $d540
    ret nz

    sub b
    ld b, b
    call nc, $d530
    ret nz

    sub b
    jr nc, @+$22

    ld h, b
    sub b
    ret nz

    db $db
    inc bc
    call c, $d47f
    ld [hl+], a
    push de
    jp nz, $00a0

    and e
    call nc, $d521
    pop bc
    call nc, $d520
    ret nz

    and e
    sub c
    ld [hl], c
    sub c
    and c
    call nc, $d511
    jp nz, $90a2

    nop
    sub e
    pop bc
    and c
    ret nz

    and b
    sub e
    ld [hl], c
    ld d, c
    ld [hl], c
    add c
    ld d, c
    ld b, d
    ld [hl], d
    ld b, c
    ld d, a
    ld [hl], a
    ld b, e
    ld [hl], e
    call c, $9097
    and b
    jp $c0d6


    push de
    ld b, b
    ld d, b
    nop
    ld d, b
    ld [hl], b
    sub e
    db $fd
    ld [bc], a
    sbc e
    ld b, l
    db $fd
    nop
    dec [hl]

Call_03b_45b0:
    ld b, l
    push de
    sub b
    nop
    ld d, b
    nop
    sub $c0
    nop
    ret nz

    push de
    ld b, b
    ld d, e
    sub e
    rst $38
    and b
    nop
    ld [hl], b
    nop
    jr nc, jr_03b_45c5

jr_03b_45c5:
    ld [hl], b
    sub b
    and e
    ld [hl], e
    rst $38
    db $db
    inc bc
    pop hl
    ld [de], a
    inc [hl]
    ret c

    inc c
    cp b
    call nc, $0150
    ld [hl], b
    ld e, e
    push de
    ret nz

    ld bc, $10d4
    call c, $d5b7
    rst $00
    ld b, b
    ld [hl], b
    ret nz

    call nc, $db40
    inc bc
    call c, $feb7
    ld b, a
    ld b, [hl]
    ld [hl], b
    and b
    sub b
    ld [hl], b
    sub c
    nop
    ld d, b
    push de
    set 3, e
    ld [bc], a
    sub $c0
    ld bc, $10d5
    sub $c3
    push de
    ld b, e
    ld [hl], e
    db $db
    inc bc
    cp $47
    ld b, [hl]
    and b
    db $d3
    jr nz, @-$2a

    ret nz

    and b
    pop bc
    nop
    and b
    call c, $95b8
    call c, $95b7
    call c, $9f6f
    db $db
    ld [bc], a
    call c, $a2a8
    sub d
    ld [hl], b
    nop
    ld [hl], a
    call c, Call_03b_79a7
    ld bc, $dc73
    xor b
    sub d
    ld [hl], d
    ld d, b
    nop
    ld d, a
    call c, Call_03b_59a7
    ld bc, $7253
    ld b, d
    push de
    pop bc
    call c, $d4a8
    rst $00
    rst $00
    and a
    sub b
    ld [hl], b
    ld e, l
    ld e, c
    call c, Call_03b_55a4
    db $fd
    nop
    push hl
    ld b, l
    call nc, $dc55
    or c
    push de
    ret nz

    ret nz

    call c, $c3b7
    call nc, $a3c3
    sub e
    ld [hl], e
    rst $38
    pop hl
    ld [de], a
    ld d, h
    ret c

    inc c
    ld d, $d5
    sub c
    inc bc
    sub b
    and b
    pop bc
    ld bc, $4153
    inc bc
    ld b, b
    ld d, b
    ld [hl], c
    ld bc, $fe43
    or h
    ld b, [hl]
    ld [hl], b
    nop
    ld d, b
    ld [bc], a
    ld b, b
    ld d, b
    ld [hl], e
    sub $c3
    cp $b4
    ld b, [hl]
    ld d, b
    nop
    ret nz

    ld [bc], a
    sub $c0
    push de
    jr nz, jr_03b_46b7

    ld h, e
    ld a, h
    nop
    ld [hl], b
    sub b
    and h
    nop
    and b
    ret nz

    call nc, $d513
    ld [hl], e
    ld e, l
    sub b
    and b
    push bc
    ld d, b
    ld [hl], b
    add e
    ld d, e
    sub $c4
    nop
    ret nz

    push de
    ld b, b
    ld [hl], a
    ld d, a
    ld [hl], e
    ld b, e
    ld d, b
    nop
    ld d, b
    ld [bc], a
    ld d, b
    ld [hl], b
    sub e
    ld d, d
    nop
    db $fd
    ld [bc], a
    and e
    ld b, [hl]
    db $fd
    nop
    ld l, h
    ld b, [hl]
    push de
    ld d, b
    nop

jr_03b_46b7:
    ld d, b
    ld [bc], a
    ld d, b
    ld [hl], b
    sub e
    ld d, e
    jr nc, jr_03b_46bf

jr_03b_46bf:
    jr nc, jr_03b_46c3

    jr nc, jr_03b_4713

jr_03b_46c3:
    ld [hl], e
    inc sp
    ld d, b
    nop
    ld d, b
    ld [bc], a
    ld d, b
    ld [hl], b
    sub e
    ld d, e
    rst $38
    db $e3
    inc b
    rst $28
    ldh a, [$d8]
    inc c
    ret


    jr nz, @+$22

    inc sp
    push bc
    jr nz, jr_03b_46fb

    inc sp
    ret c

    ld b, $fe
    rla
    ld b, a
    inc sp
    scf
    ld hl, $3721
    cp $17
    ld b, a
    db $fd
    ld [$46e1], sp
    ret c

    inc c
    ret


    jr nc, jr_03b_4722

    dec [hl]
    jr nz, jr_03b_4715

    dec [hl]
    jr nz, @+$22

    inc sp
    db $fd
    ld [bc], a

jr_03b_46fb:
    db $ed
    ld b, [hl]
    rst $08
    ret c

    ld b, $fe
    rla
    ld b, a
    cp $17
    ld b, a
    rst $08
    inc sp
    scf
    ld hl, $3721
    cp $17
    ld b, a
    db $fd
    ld [bc], a
    rlca
    ld b, a

jr_03b_4713:
    db $fd
    nop

jr_03b_4715:
    pop hl
    ld b, [hl]

Call_03b_4717:
    jr nz, jr_03b_4739

    jr nz, jr_03b_473b

    jr nz, jr_03b_473d

    jr nz, jr_03b_473f

    rst $38
    add b
    add hl, hl

jr_03b_4722:
    ld b, a
    ld bc, $4847
    ld [bc], a
    ld l, $49
    jp c, $6500

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    ld [de], a
    dec d
    ret c

    inc c
    or d

jr_03b_4739:
    push de
    or b

jr_03b_473b:
    and b
    sub b

jr_03b_473d:
    add b
    sub b

jr_03b_473f:
    add b
    ld [hl], b
    add b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_03b_478e

    jr nc, @+$22

    jr nc, jr_03b_4772

    db $10
    jr nz, @+$12

Call_03b_4755:
    sub $c0
    push de
    db $10
    sub $c0
    or b
    ret nz

    or c
    or l
    or c
    or l
    or c
    or a
    call c, $c1b7
    call c, $b1b2
    or l
    or c
    or l
    or c
    or a
    call c, $d5b7
    ld d, c

jr_03b_4772:
    call c, $d6b2
    or c
    or l
    or c
    or l
    or c
    or a
    call c, $c1b7
    call c, $b1b2
    or l
    or c
    or l
    or c
    call c, $d5b4
    ld d, e
    ld d, e
    ld d, c
    cp $32
    ld c, b

jr_03b_478e:
    sub $b1
    call c, $97b7
    rst $00
    push de
    ld c, c
    ld d, l
    cp $32
    ld c, b
    ld b, c
    call c, $27b7
    sub $c7

Call_03b_47a0:
    sbc c
    push de
    ld d, l
    call c, $41b2
    ld b, c

Call_03b_47a7:
    add b
    ld d, b
    ld b, b
    add b
    ld b, c
    ld b, c
    or b
    sub b
    ld d, b

Call_03b_47b0:
    or b
    ld b, c
    ld b, c
    ret nz

    or b
    sub b
    ret nz

Call_03b_47b7:
    ld b, c
    call c, Call_03b_51b7
    call c, $41b2
    ld b, c
    add b
    ld d, b
    ld b, b
    add b
    ld b, c
    ld b, c
    or b
    sub b
    ld d, b
    or b
    ld b, c
    ld b, c
    ret nz

    or b
    sub b
    ret nz

    sub c
    call c, $c1b5
    ld b, c
    ld hl, $b3d6
    ld b, c
    sub c
    pop bc
    push de
    ld d, c
    ld b, e
    ld hl, $b1d6
    or c
    ld b, c
    or c
    push de
    ld hl, $b7dc
    sub $c7
    or a
    sbc c
    push bc
    call c, $d5b5
    ld b, c
    ld hl, $b3d6
    ld b, c
    sub c
    pop bc
    push de
    ld d, c
    ld b, e
    ld hl, $b1d6
    or c
    sub c
    or c
    push de
    ld hl, $b7dc
    ld d, a
    ld [hl], a
    adc a
    call c, $d6b2
    sub c
    sub c
    call c, $d5b7
    dec hl
    call c, $91b2
    ld h, e
    call c, $d6b5
    ld h, e
    add c
    sub c
    or c
    call c, $b1b2
    or c
    call c, $d5b7
    ld c, e
    call c, $b1b2
    add e
    call c, $d4b7
    ld b, l
    call c, $d54c
    inc sp
    db $fd
    nop
    adc e
    ld b, a
    call c, Call_03b_41b5
    sub $b1
    push de
    ld b, c
    ld d, e
    ld b, c
    ld hl, $b1d6
    ld b, c
    sub c
    or c
    push de
    ld b, c
    ld d, c
    ld b, c
    ld hl, $dbff
    inc bc
    pop hl
    ld [$e636], sp
    nop
    ld bc, $0cd8
    jp nz, $b0d4

    sub b
    or b
    db $d3
    ld b, b
    db $fd
    ld [$4852], sp
    push de
    call c, $41c2
    ld b, c
    ld [hl], b
    ld d, b
    ld b, b
    ld [hl], b
    ld b, c
    ld b, c
    or b
    sub b
    ld [hl], b
    or b
    ld b, c
    ld b, c
    ret nz

    or b
    sub b
    ret nz

    ld sp, $c7dc
    ld d, c
    call c, $41c2
    ld b, c
    ld [hl], b
    ld d, b
    ld b, b
    ld [hl], b
    ld b, c
    ld b, c
    or b
    sub b
    ld [hl], b
    or b
    ld b, c
    ld b, c
    ret nz

    or b
    sub b
    ret nz

    sub c
    call c, $c1c7
    call c, $d4c2
    db $fd
    ld [bc], a
    ld e, l
    ld c, b
    cp $07
    ld c, c
    ld d, a
    sub a
    ret


    sub l
    cp $07
    ld c, c
    ld d, a
    sub a
    ret


    call nc, Call_03b_4755
    call c, Call_03b_47b7
    call c, $05a2
    db $d3
    ld d, e
    ld d, e
    ld d, c
    call c, Call_03b_47a0
    call c, Call_03b_47a7
    dec bc
    call c, $d5c5
    or e
    jp $b393


    jp Jump_03b_5393


    call c, Call_03b_47b0
    ld c, a
    call c, Call_03b_4bb7
    call c, $b3c5
    jp $b393


    jp $c393


    call c, $b7b0
    call c, $b7b7
    call c, $d4b0
    ld b, a
    call c, Call_03b_47b7
    call c, $d5c2
    ld hl, $dc21
    rst $00
    ld h, a
    call c, $d4c2
    inc hl
    ld h, c
    inc hl
    call c, $93c7
    add c
    ld h, c
    ld b, c
    call c, $d5c2
    ld b, c
    ld b, c
    call c, $87c7
    call c, $d4c2
    ld b, e
    add c
    ld b, e
    call c, $b5c7
    push de
    and e
    db $fd
    nop
    sub h
    ld c, b
    db $db
    ld [bc], a
    call c, $d5d1
    or c
    call c, $b1a2
    call c, $91d1
    call c, $91a2
    call c, $b1d1
    call c, $b1a2
    call c, $c1c5
    call nc, $2121
    push de
    jp $91b1


    ld [hl], c
    sub c
    or c
    db $db
    inc bc
    call c, $ffb0
    ret c

    inc c
    add hl, de
    sub $50
    nop
    jp nz, $fd00

    ld b, $34
    ld c, c
    pop bc
    sub c
    pop bc
    ld b, b
    nop
    ld b, b
    nop
    ld [hl], e
    ld b, b
    nop
    ld b, b
    nop
    or e
    ld b, b
    nop
    ld b, b
    nop
    jp RST_30


    ld h, c
    ld b, b
    nop
    ld b, b
    nop
    ld [hl], e
    ld b, b
    nop
    ld b, b
    nop
    or e
    ld b, b
    nop
    ld b, b
    nop
    jp VBlankInterrupt


    ld d, c
    db $fd
    ld [bc], a
    dec a
    ld c, c
    sub $41
    or c
    db $fd
    ld [$4965], sp
    ld d, c
    pop bc
    db $fd
    inc b
    ld l, h
    ld c, c
    rst $10
    pop bc
    sub $51
    rst $10
    pop bc
    sub $53
    pop bc
    push de
    ld d, c
    sub $c1
    sub $71
    push de
    ld hl, $08fd
    ld a, a
    ld c, c
    sub $51
    pop bc
    db $fd
    rlca
    add a
    ld c, c
    push de
    ld d, c
    sub $c1
    ld b, b
    nop
    ld b, b
    nop
    or e
    ld b, b
    nop
    ld b, b
    nop
    jp VBlankInterrupt


    ld b, b
    nop
    or e
    ld b, b
    nop
    ld d, c
    db $fd
    ld [bc], a
    sub d
    ld c, c
    ld b, c
    or c
    db $fd
    rlca
    xor b
    ld c, c
    push de
    ld hl, $b1d6
    ld d, c
    pop bc
    push de
    ld d, c
    sub $51
    pop bc
    push de
    ld d, c
    sub $51
    pop bc
    db $fd
    dec b
    cp e
    ld c, c
    sub $71
    push de
    ld hl, $07fd
    jp nz, $d649

    or c
    push de
    ld hl, $51d6
    or c
    push de
    ld d, c
    ld [hl], c
    sub c
    ld [hl], c
    ld d, c
    ld hl, $41d6
    or c
    db $fd
    inc b
    ret c

    ld c, c
    ld hl, $fd91
    ld [$49df], sp
    ld b, c
    or c
    db $fd
    inc b
    push hl
    ld c, c
    push de
    ld b, c
    sub $b1
    ld b, c
    ld sp, $b131
    push de
    ld b, c
    ld h, c
    db $fd
    nop
    ld h, l
    ld c, c
    add b
    inc b
    ld c, d
    ld bc, $4bea
    ld [bc], a
    jp nc, $034d

    jp c, $7200

    push hl
    ld [hl], a
    reti


    dec de
    ret c

    inc c
    or e
    pop hl
    ld [de], a
    inc h
    db $db
    ld bc, $d400
    and b
    sub b
    add b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, @+$22

    jr nc, @+$22

    db $10
    push de
    ret nz

    call nc, $d510
    ret nz

    or b
    and b
    or b
    and b
    sub b
    add b
    sub b
    add b
    ld [hl], b
    add b
    db $db
    ld [bc], a
    call c, $d4b1
    ld b, c
    sub $10
    nop
    stop
    call nc, $d611
    stop
    stop
    call nc, $0141
    push de
    or c
    call nc, $0111
    ld b, c
    ld bc, $40d5
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    call nc, $d611
    stop
    stop
    call nc, $d611
    stop
    stop
    call nc, $0141
    push de
    or c
    call nc, $0111
    ld b, c
    ld bc, $0040
    ld h, b
    nop

jr_03b_4a76:
    add b
    nop
    call c, Call_03b_41b3
    inc bc
    ld h, c
    inc bc
    ld [hl], c
    ld bc, $6141
    ld bc, $0171
    ld b, c
    ld h, c
    ld [hl], c
    ret c

    inc c
    or a
    ld b, e
    ld bc, $0319
    ld b, c
    ld de, $80d5
    call nc, Call_03b_4010
    nop
    stop
    ld b, b
    nop
    daa
    ld h, a
    sub a
    db $d3
    inc hl
    jr nz, jr_03b_4a76

    sub b
    ld h, b
    jr nz, @+$45

    ld bc, $0319
    ld b, c
    ld de, $80d5
    call nc, Call_03b_4010
    nop
    jr nc, jr_03b_4ab3

jr_03b_4ab3:
    ld h, b
    nop
    ld b, l
    dec [hl]
    ld de, $0101
    ld sp, $6103
    ld bc, $8091
    ld [hl], b
    push de
    sub b
    ld h, b
    db $10
    sub b
    call nc, RST_10
    ld h, b
    nop
    db $10
    push de
    sub b
    ld h, b
    inc b
    call nc, $3347
    push de
    ld h, b
    and b
    call nc, Call_03b_4010
    inc sp
    push de
    inc sp
    call nc, $d563
    inc sp
    inc bc
    inc sp
    inc bc
    inc sp
    sub b
    ld h, b
    db $10
    sub b
    call nc, RST_10
    ld h, b
    nop
    db $10
    push de
    sub b
    ld h, b
    inc b
    call nc, $3347
    push de
    ld h, b
    and b
    call nc, Call_03b_4010
    inc sp
    push de
    inc sp
    inc bc
    inc sp
    or b
    call nc, Call_03b_6030
    nop
    push de
    ld sp, $61d4
    ld sp, $b1d5
    ld sp, $31d4
    call c, $1067
    jr nz, jr_03b_4b44

    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_03b_4b39

    db $10
    ld [bc], a
    ld b, e
    ret c

    ld b, $67
    ld b, b
    nop

Call_03b_4b21:
    ld b, b
    nop
    ld b, b
    ld b, $40
    nop
    ld b, b
    nop
    push de
    add b
    ld [bc], a
    add b
    ld [bc], a
    call nc, $dc17
    ld [hl], a
    ld hl, $4131
    ld d, c
    ld h, c
    ld d, c
    ld b, c

jr_03b_4b39:
    ld sp, $0521
    ld d, a
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    ld b, $50

jr_03b_4b44:
    nop
    ld d, b
    nop
    push de
    sub b
    ld [bc], a
    sub b
    ld [bc], a
    call nc, $dc27
    add a
    ld sp, $5141
    ld h, c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld sp, $6705
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    ld b, $60
    nop
    ld h, b
    nop
    push de
    and b
    ld [bc], a
    and b
    ld [bc], a
    call nc, $dc37
    sub a
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    add c
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    dec b
    ld [hl], a
    call c, $97a7
    or a
    call c, $d3b7
    scf
    ld sp, $d405
    or c
    ld [hl], c
    ld b, c
    push de
    or c
    call nc, Call_03b_4171
    push de
    or c
    ld [hl], c
    call nc, $0191
    ld c, e
    call c, $d2b1
    ld de, $1711
    ld de, $1311
    inc de
    inc de
    inc de
    call c, $d4b7
    or c
    ld [hl], c
    ld b, c
    push de
    or c
    call nc, Call_03b_4171
    push de
    or c
    ld [hl], c
    call nc, $0171
    jp $93b3


    ld [hl], e
    ld h, e
    ld b, e
    inc sp

Call_03b_4bb7:
    ld b, a
    ld [hl], a
    db $d3
    rla
    ld b, a
    call nc, $212f
    ld bc, $0141
    ld h, c
    ld bc, $91d5
    ld bc, $61d4
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    call c, $5067
    jr nc, jr_03b_4be2

    push de
    ret nz

    and b
    add b
    call c, $d4a1
    ld hl, $81d6
    add c
    call nc, $d621
    add c
    add c

jr_03b_4be2:
    call c, $d4b7
    inc sp
    db $fd
    nop
    adc b
    ld c, d
    reti


    dec de
    pop hl
    ld b, $36
    db $db
    ld bc, $0cd8
    pop de
    call nc, $b3b3
    or e
    or e
    or e
    or e

jr_03b_4bfb:
    or e
    add b
    sub b
    add b
    ld [hl], b
    db $db
    inc bc
    call c, $d562
    add b
    sub b
    add b
    ld [hl], b
    db $fd
    ld c, $04
    ld c, h
    add b
    sub b
    add b
    ld h, b
    ld b, b
    jr nc, @+$12

    sub $c0
    call c, $dbd7
    ld [bc], a
    ld de, $10d5
    nop
    sub $10
    nop
    rst $10
    or c
    sub $b0
    nop
    rst $10
    or b
    nop
    and c
    sub $a0
    nop
    rst $10
    and b
    nop
    sub c
    sub $90
    nop
    rst $10
    sub b
    nop
    add b
    ret nz

    sub $30
    ld h, b
    add b
    ret nz

    push de
    jr nc, @+$62

    ret c

    inc c
    rst $10
    sub $10
    db $10
    push de
    stop
    sub $80
    nop
    push de
    stop
    sub $11
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ld de, $00b0
    add b
    nop
    or b
    nop
    ld de, $00a0
    sub b
    nop
    push de
    stop
    sub $20
    jr nz, jr_03b_4bfb

    nop
    push de
    ld hl, $21d6
    sub b
    nop
    push de
    ld de, $21d6
    sub b
    nop
    or c
    jr nz, @+$22

    ld h, b
    nop
    sub c
    push de
    jr nz, jr_03b_4c81

jr_03b_4c81:
    ld h, c
    sub b
    nop
    or c
    sub $10
    db $10
    push de
    stop
    sub $80
    nop
    push de
    stop
    sub $11
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ld de, $00b0
    add b
    nop
    or b
    nop
    ld de, $00a0
    ld h, b
    nop
    and b
    nop
    rst $10
    or b
    or b
    sub $60
    nop
    or c
    rst $10
    or c
    sub $60
    nop
    and c
    rst $10
    or c
    sub $60
    nop
    sub c
    rst $10
    or b
    or b
    sub $60
    nop
    add c
    or b
    nop
    push de
    ld sp, $0060
    or c
    rst $10
    ld h, c
    sub $60
    nop
    stop
    ld h, b
    nop
    rst $10
    ld h, c
    sub $50
    nop
    stop
    ld d, b
    nop
    rst $10
    ld h, c
    sub $40
    nop
    stop
    ld b, b
    nop
    rst $10
    ld h, c
    sub $30
    nop
    ld b, b
    db $10
    rst $10
    or b
    and b
    or b
    nop
    or b
    nop
    push de
    ld h, e
    rst $10
    or b
    nop
    or b
    nop
    push de
    ld [hl], e
    rst $10
    or b
    nop
    or b
    nop
    push de
    add e
    rst $10
    or b
    nop
    or b
    nop
    push de
    sub e
    rst $10
    ld h, c
    sub $60
    nop
    stop
    ld h, b
    nop
    rst $10
    ld h, c
    sub $50
    nop
    stop
    ld d, b
    nop
    rst $10
    ld h, c
    sub $40
    nop
    stop
    ld b, b
    nop
    rst $10
    ld h, c
    sub $30
    nop
    ld b, b
    db $10
    rst $10
    or b
    and b
    or b
    nop
    or b
    nop
    push de
    ld h, e
    rst $10
    or b
    nop
    or b
    nop
    push de
    ld [hl], e
    rst $10
    or b
    nop
    or b
    nop
    push de
    add e
    rst $10
    or b
    nop
    or b
    nop
    push de
    sub e
    pop hl
    ld [de], a
    inc h
    ret c

    inc c
    ld a, b
    call nc, $dc8f
    ld [hl], a
    adc a
    ret c

    ld b, $88
    sbc a
    call c, $9e87
    add b
    sub [hl]
    and b
    or d
    and b
    sub a
    add e
    ld h, l
    ld bc, $0cd8
    sbc b
    xor a
    call c, $af97
    call c, $bfa7
    call c, $d3d7
    scf
    ld h, a
    pop hl
    inc b
    ld [hl], $d6
    or e
    ld b, e
    stop
    call c, $95d8
    call c, $9fd7
    or e
    ld b, e
    ld b, b
    nop
    push de
    ld c, l
    sub $10
    nop
    push de
    ld b, c
    ld bc, $06d8
    rst $10
    sub $10
    nop
    stop
    ld de, $1101
    ld bc, $97d5
    call nc, Call_03b_7161
    ld h, c
    ld b, c
    ld h, c
    ld bc, $0141
    push de
    ld h, c
    ld bc, $0171
    sub c
    ld bc, $0121
    sub c
    or c
    sub c
    ld [hl], c
    sub c
    call c, $8072
    ld h, b
    ld d, b
    jr nc, jr_03b_4dc8

    sub $c0
    call c, $d5c1
    pop bc
    rst $10
    ld [hl], b
    nop
    ld [hl], b
    nop
    push de
    pop bc
    rst $10
    ld [hl], b
    nop

jr_03b_4dc8:
    ld [hl], b
    nop
    call c, $d5d7
    jp $00fd


    ld b, c
    ld c, h
    reti


    dec de
    pop hl
    ld [de], a
    inc hl
    ret c

    inc c
    dec d
    sub $b0
    call nc, $d5b0
    or c
    sub $a0
    call nc, $d5a0
    and c
    sub $90
    call nc, $d590
    sub c
    sub $80
    call nc, $d580
    add c
    sub $70
    call nc, $d570
    ld [hl], c
    sub $60
    call nc, $d560
    ld h, c
    sub $50
    call nc, $d550
    ld d, c
    jr nc, jr_03b_4e66

    ret nz

    call nc, $dc30
    jr @-$2c

    ld de, $10d5
    nop
    stop
    db $d3
    ld h, c
    push de
    stop
    stop
    db $d3
    ld [hl], c
    call nc, Call_03b_4010
    db $d3
    ld b, c
    ld h, c
    ld bc, $0171
    call nc, $0080
    or b
    nop
    ret nz

    nop
    db $d3
    ld b, c
    push de
    stop
    stop
    db $d3
    ld h, c
    push de
    stop
    stop
    db $d3
    ld [hl], c
    call nc, Call_03b_4010
    db $d3
    ld b, c
    ld h, c
    ld bc, $0171
    add b
    nop
    or b
    nop
    ret nz

    nop
    jp nc, $0311

    ld sp, $4103
    ld bc, $3111
    ld bc, $0141
    db $d3
    add c
    or c
    pop bc
    ret c

jr_03b_4e5b:
    inc c
    inc d
    jp nc, $d813

    ld b, $14
    db $d3
    ret nz

    or b
    and b

jr_03b_4e66:
    sub b
    ret c

    inc c
    inc d
    adc c
    ld bc, $06d8
    inc d
    add b
    sub b
    and b
    or b
    jp nc, $d315

    and b
    sub b
    add a
    jp nc, $d316

    ret nz

    ret c

    inc c
    inc d
    jp nc, $272f

    ld h, e
    sub b
    ld h, b
    jr nz, jr_03b_4e5b

    sub b
    jp nc, $d813

    ld b, $14
    db $d3
    ret nz

    or b

jr_03b_4e91:
    and b
    sub b
    ret c

    inc c
    inc d
    adc c
    ld bc, $06d8
    inc d
    add b
    sub b
    and b
    or b
    jp nc, $d315

    and b
    sub b
    add a
    jp nc, $d316

    ret nz

    cp a
    cp a
    cp h
    ret nz

    jp nc, $2010

    scf

jr_03b_4eb1:
    ld h, c
    ld sp, $b1d3
    and c
    ret c

    inc c
    db $10
    sbc d
    call c, $1014
    ld h, b
    nop
    sub b
    nop
    call c, $d210
    dec d
    ret c

    ld b, $10
    db $d3
    ret nz

    or b
    and b
    sub b
    sbc a
    ret c

    inc c
    db $10
    cp a
    call c, $3025
    call nc, Call_03b_60b0
    or b
    db $d3
    ld h, b
    jr nc, jr_03b_4eb1

    or b
    db $d3
    jr nc, jr_03b_4e91

    ld h, b
    jr nc, @+$62

    jp nc, $2031

    db $10
    call c, $d310
    sbc d
    call c, $1014
    ld h, b
    nop
    sub b
    nop
    call c, $d210
    ld d, $d8
    ld b, $10
    jr nz, @+$32

    ret c

    inc c

Jump_03b_4efe:
    db $10
    ld b, a
    dec sp
    sub b
    ld h, b
    call c, $d325
    or b
    ld h, b
    sub b
    sub b
    sub b
    nop
    or b
    nop
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    call c, $d524
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    add b
    call nc, $d510
    ld b, b
    call nc, $d510
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $d520
    sub b
    call nc, $d520
    ld d, b
    call nc, $dc20
    inc d
    push de
    and b
    call nc, $d530
    ld h, b
    call nc, $d530
    and b
    call nc, $d530
    ld h, b
    call nc, $d530
    and b
    call nc, $d530
    ld h, b
    call nc, $d530

Call_03b_4fb0:
    and b
    call nc, $d530
    ld h, b
    call nc, $dc30
    dec d
    push de
    and b
    call nc, $d530
    ld h, b
    call nc, $d530
    and b
    call nc, $d530
    ld h, b
    call nc, $d530
    and b
    call nc, $d530
    ld h, b
    call nc, $d530
    and b
    call nc, $d530
    ld h, b
    call nc, $dc30
    dec d
    push de
    or b
    call nc, $d540
    ld [hl], b
    call nc, $d540
    or b
    call nc, $d540
    ld [hl], b
    call nc, $d540
    or b
    call nc, $d540
    ld [hl], b
    call nc, $d540
    or b
    call nc, $d540
    ld [hl], b
    call nc, $dc40
    inc d
    push de
    ld h, b
    sub b
    ret nz

    call nc, $d530
    sub b
    ret nz

    call nc, Call_03b_6030
    push de
    ret nz

    call nc, Call_03b_6030
    sub b
    jr nc, @+$62

    sub b
    db $d3
    jr nc, @-$2c

    ld b, e
    db $d3
    or e
    jp nc, RST_20

    dec d
    call nc, Call_03b_4010
    sub b

Call_03b_5020:
    db $d3

Call_03b_5021:
    db $10
    ld b, b
    sub b

Call_03b_5024:
    jp nc, Jump_03b_4010

    sub b
    ld b, b
    db $10
    db $d3
    sub b
    ld b, b
    db $10
    call nc, Call_03b_4090
    jp nc, $d343

    or e

Jump_03b_5035:
    ret nz

    nop
    jp nc, $607b

    ld [hl], b
    sbc a
    ld h, a
    jr nz, jr_03b_503f

jr_03b_503f:
    ld b, b
    nop
    ld h, b
    nop
    db $d3
    sub b
    nop
    jp nc, $7060

    ld h, b
    ld b, b
    ld h, b
    ret c

    ld b, $24
    ld d, b
    jr nc, jr_03b_5062

    db $d3
    ret nz

    and b
    add b
    call c, $8114
    push de
    add b
    nop
    add b
    nop
    db $d3
    add c
    push de
    add b

jr_03b_5062:
    nop
    add b
    nop
    call c, $d314
    add e
    db $fd
    nop
    ld e, d
    ld c, [hl]
    add b
    ld [hl], a
    ld d, b
    ld bc, $519f
    ld [bc], a
    ld l, b

Call_03b_5075:
    ld d, e
    inc bc
    jp c, $7000

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc hl
    db $db
    ld [bc], a
    ret c

    inc c
    or a
    rrca
    call nc, $a0b5
    sub b
    and b
    sub b
    add b
    ld [hl], b
    sub b
    add b

jr_03b_508f:
    ld [hl], b
    ld h, b
    ret c

    inc c
    or a
    cp $8a
    ld d, c
    call nc, $2363
    push de
    rst $00
    cp $8a
    ld d, c
    rlca
    add b
    ret nz

    call nc, $d520
    ret nz

    add b
    ret nz

    call nc, Call_03b_4030
    call c, $55b1
    dec d
    push de
    add e

Call_03b_50b1:
    call nc, $1555
    ld d, e
    call c, $60b7
    jr nz, jr_03b_508f

    sub b
    call nc, $2010
    push de
    sub b
    ld h, b
    add b
    sub e
    ld [hl], b
    add b
    sub b
    call nc, $2310
    push de
    ld h, b
    sub b
    call nc, Call_03b_5020
    ld h, d
    add b
    sub e
    call c, $d5b1
    add l
    ld h, l
    ld d, e
    sub l
    add l
    ld h, e
    call nc, $d515
    or l
    add e
    ret c

    ld [$d6b7], sp
    add c
    push de
    ld de, $1151
    ld d, c
    add c
    ld d, c
    add c
    call nc, $d511
    add c
    call nc, $5111
    ld h, c
    ld hl, $91d5
    call nc, $d521
    sub c
    ld h, c
    sub c
    ld h, c
    ld hl, $2161
    sub $91
    ret c

    inc c
    or a
    push de
    sub e
    call nc, $dc23
    ld [hl], c
    ld h, b
    ld h, b
    call c, Call_03b_6091
    ld h, b
    call c, $90b1
    sub b
    call c, $90d1
    sub b
    call c, $50c7
    jr nc, @+$22

    jr nc, @+$5d

    ld d, a
    call c, Call_03b_50b1
    jr nc, @+$12

    push de
    or b
    and b
    add b
    ld h, b
    ld d, b
    call c, $37b7
    ld h, a
    or a
    call nc, $d537
    add a
    call nc, Call_03b_5717
    add a
    rlca
    push de
    ld b, a
    sub a
    call nc, $d517
    or a

Call_03b_5143:
    rlca
    call nc, $d537
    sub c
    ld h, c
    ld sp, $d461
    inc de
    dec b
    db $10
    inc b
    ld hl, $0c10
    inc hl
    dec b
    jr nz, jr_03b_515b

    ld h, c
    ld b, b
    inc b
    daa

jr_03b_515b:
    call c, $d5b1
    db $10
    ld b, b
    jr nc, jr_03b_5182

    db $fd
    ld [$515b], sp
    jr nz, jr_03b_51c8

    ld d, b

Call_03b_5169:
    ld b, b
    db $fd
    ld [$5166], sp
    db $10
    ld b, b
    jr nc, jr_03b_5192

    db $fd
    db $10
    ld l, [hl]
    ld d, c
    jr nz, jr_03b_51c8

jr_03b_5178:
    ld b, b
    jr nc, jr_03b_5178

    ld [$5176], sp
    db $10
    ld b, b
    jr nc, @+$22

jr_03b_5182:
    db $fd

Call_03b_5183:
    ld [$517e], sp
    db $fd
    nop
    sub c
    ld d, b
    call nc, $0410
    push de
    ret nz

    inc b
    or b
    ld [bc], a

jr_03b_5192:
    add hl, bc

Call_03b_5193:
    call nc, $0111
    ld b, c
    jr nz, jr_03b_519d

    db $10
    inc b
    push de
    ret nz

jr_03b_519d:
    ld [bc], a
    rst $38
    db $db
    ld bc, $12e1
    inc hl
    ret c

    inc c
    or c
    call nc, Call_03b_7080
    ld h, b
    ld d, b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    add b
    ld [hl], b
    ld h, b

Call_03b_51b3:
    ld d, b
    add b
    ld [hl], b
    ld h, b

Call_03b_51b7:
    ld d, b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld h, b
    ld d, b

Call_03b_51c2:
    ld b, b
    jr nc, @+$52

    ld b, b
    jr nc, @+$22

jr_03b_51c8:
    ret c

    inc c
    or a
    cp $c6
    ld d, d
    sub $61
    rst $10
    ret nz

    nop
    sub $81
    cp $c6
    ld d, d
    sub $80
    nop
    rst $10
    ret nz

    nop
    sub $60
    ld [hl], b
    ret c

    ld b, $b7
    cp $07
    ld d, e
    cp $07
    ld d, e
    reti


    ld bc, $07fe
    ld d, e
    cp $07
    ld d, e
    reti


    nop
    cp $07
    ld d, e
    cp $07
    ld d, e
    cp $07
    ld d, e
    cp $07
    ld d, e
    reti


    ld bc, $07fe
    ld d, e
    cp $07
    ld d, e
    reti


    nop

jr_03b_520a:
    cp $07
    ld d, e
    cp $07
    ld d, e
    rrca
    push de
    cp a
    call nc, Call_03b_6f3f
    ret c

    inc c
    or a
    ld e, a
    add a
    db $d3
    rla
    rlca
    push de
    sub a
    call nc, Call_03b_4717
    ld h, a
    ld h, b
    push de
    or b
    sub b
    or b
    call nc, $d560
    or b
    sub b
    or b
    call nc, $9097
    ld h, b
    jr nc, jr_03b_520a

    ret nz

    call nc, $3060
    push de
    ret nz

    sub b
    ret c

    ld b, $b7
    cp $1b
    ld d, e
    reti


    ld bc, $1bfe
    ld d, e
    reti


    nop
    cp $40
    ld d, e
    sub $11
    ld bc, $83d5
    sub $11
    ld bc, $0111
    call nc, $d613
    ld de, $d401
    ld b, e
    sub $11
    ld bc, $23d4
    sub $21
    ld bc, $0121
    call nc, $d623
    ld hl, $2101
    ld bc, $23d4
    sub $21
    ld bc, $0121
    call nc, $d623
    ld hl, $2101
    ld bc, $23d4
    sub $21
    ld bc, $63d4
    sub $21
    ld bc, $40fe
    ld d, e
    cp $54
    ld d, e
    cp $40
    ld d, e
    cp $54
    ld d, e
    reti


    ld bc, $40fe
    ld d, e
    reti


    nop
    ld hl, $d501
    sub e
    sub $21
    ld bc, $0121
    call nc, $d623
    ld hl, $d501
    or e
    sub $21
    ld bc, $40fe
    ld d, e
    ld de, $d501
    add e
    sub $11
    ld bc, $0111
    call nc, $d613
    ld de, $d501
    or e
    sub $11
    ld bc, $00fd
    ret z

    ld d, c
    sub $10
    ld bc, $d710
    add b
    nop
    sub $10
    nop
    push de
    ld de, $10d6
    nop
    rst $10

jr_03b_52d6:
    add b
    ld bc, $d680
    ld [de], a
    db $10
    rst $10
    add c
    sub $11
    rst $10
    add c
    sub $71
    rst $10
    add c
    sub $81
    jr nz, @+$03

    jr nz, @-$27

    sub b
    nop
    sub $20
    nop
    push de
    jr nz, jr_03b_52f4

jr_03b_52f4:
    sub $21
    rst $10
    sub b
    ld bc, $d690
    jr nz, @+$03

    jr nz, jr_03b_52d6

    sub b
    nop
    sub $20
    nop
    rst $10
    add c
    rst $38
    sub $11
    inc bc
    stop
    ld de, $11d5
    sub $13
    ld bc, $0111
    ld de, $11d5
    ld bc, $13d6
    rst $38
    sub $11
    inc bc
    ld de, $d703

Call_03b_5321:
    add b
    nop

Call_03b_5323:
    add b
    nop
    sub $51
    ld bc, $0151
    ld d, c
    dec d
    ld de, $1103
    rst $10
    add c
    sub $51
    ld de, $81d7
    sub $11
    inc bc
    ld de, $8151
    pop bc
    push de
    ld de, $d5ff
    add e
    sub $11
    ld bc, $0111
    push de
    add e
    sub $11
    ld bc, $0111
    push de
    add e

jr_03b_5350:
    sub $11
    ld bc, $11ff
    ld bc, $83d5
    sub $11
    ld bc, $0111
    push de
    add e
    sub $11
    ld bc, $83d5
    sub $11
    ld bc, $e1ff
    inc d
    inc hl
    ret c

    inc c
    inc d
    push de
    stop
    db $10
    call nc, $d510
    jr nz, jr_03b_5377

jr_03b_5377:
    jr nz, @-$2a

    jr nz, jr_03b_5350

    jr nc, jr_03b_537d

jr_03b_537d:
    jr nc, @-$2a

    jr nc, @-$29

    ld b, b
    nop
    ld b, b
    call nc, $d540
    ld d, b
    nop
    ld d, b
    call nc, $d550
    ld h, b
    nop
    ld h, b
    call nc, $d560

Jump_03b_5393:
    ld [hl], b
    nop
    ld [hl], b
    call nc, $d570
    add b
    nop
    add b
    call nc, $d880
    inc c
    inc d

Call_03b_53a1:
    db $d3
    add b

Jump_03b_53a3:
    ld bc, $80d4
    ld bc, $80d3
    ld [bc], a
    call nc, $0080
    db $d3

jr_03b_53ae:
    add b
    ld bc, $80d4
    push de

Call_03b_53b3:
    add b

Call_03b_53b4:
    ret nz

    call nc, $3010
    ld b, l
    db $d3
    ld b, c
    ld bc, $9081
    ld bc, $90d4
    ld bc, $90d3

Call_03b_53c4:
    ld [bc], a
    call nc, $0090
    db $d3
    sub b
    ld bc, $90d4
    jp nc, $d325

    sub b
    ld h, b
    ret nz

    add b

Jump_03b_53d4:
    ld h, b
    jr nc, @-$7e

    ld h, b
    jr nc, jr_03b_53ae

    ret nz

    db $d3
    add b
    ld bc, $80d4
    ld bc, $80d3
    ld [bc], a
    call nc, $0080
    db $d3
    add b
    ld bc, $80d4
    db $10
    jr nc, @+$42

    ld h, b
    add l
    db $d3
    ld b, c
    ld bc, $9081
    ld bc, $80d4
    ld bc, $90d3
    ld [bc], a
    call nc, $0080
    db $d3
    sub b
    ld bc, $80d4
    inc hl
    sub e
    db $d3
    ld h, [hl]
    ld [hl], b
    add c
    call c, $1024
    call nc, $d380
    db $10
    call nc, $dc80
    inc d
    db $d3
    ld [hl], c
    call c, $1024
    call nc, $d380
    db $10
    call nc, $dc80
    inc d
    db $d3
    ld d, c
    call c, $1024
    call nc, $dc80
    inc d
    db $d3
    add c
    call c, $1024
    call nc, $d380
    db $10
    call nc, $dc80
    inc d
    db $d3
    and c
    call c, $1024
    call nc, $d380
    db $10
    call nc, $dc80
    inc d
    db $d3
    add c
    call c, $1024
    call nc, $dc90
    inc d
    db $d3
    sbc e
    add c
    ld h, c
    sub c
    add c
    jr nz, @+$62

    sub b
    jp nc, $2710

    db $d3
    ld de, $24dc
    call nc, $8050
    ld d, b
    add b
    call c, $b114
    call c, Call_03b_5024
    add b
    ld d, b
    add b
    call c, $9114
    call c, Call_03b_5024
    add b
    call c, $d314
    ld hl, $24dc
    call nc, $8050
    ld d, b
    add b
    call c, $d314
    ld de, $24dc
    call nc, $8050
    ld d, b
    add b
    call c, $b114
    call c, Call_03b_5024
    add b
    call c, $d314
    ld h, c
    call c, $d424
    add b
    db $d3
    db $10
    call nc, $d380
    db $10
    call c, $5114
    call c, $d424
    add b
    db $d3
    db $10
    call nc, $d380
    db $10
    call c, $3114
    call c, $d424
    add b
    db $d3
    db $10
    call c, $d414
    or e
    db $d3
    inc de
    inc sp
    ld h, e
    sbc a
    ret c

    ld b, $14
    sub b
    nop
    call c, $9024
    nop
    call c, $9034
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    call c, $9024
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    call c, $9014
    nop
    sub b
    nop
    jp nc, RST_20

    jr nz, jr_03b_54e6

jr_03b_54e6:
    jr nz, jr_03b_54e8

jr_03b_54e8:
    jr nz, jr_03b_54ea

jr_03b_54ea:
    db $d3
    add c
    ld h, c
    ld d, c
    ld h, c
    ret c

    inc c
    dec d
    adc e
    add a
    ret c

    ld b, $15
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    call c, $8024
    nop
    add b
    nop
    call c, $8014
    nop
    add b
    nop
    ret c

    inc c
    inc d
    sub $bf
    or b
    ld bc, $01b0
    or b
    nop
    push de
    or b
    ld bc, $01b0
    or b
    nop
    db $10
    ld bc, $06d8
    dec d
    stop
    ld de, $11d4
    push de
    inc de
    ld bc, $0111
    ld de, $11d4
    ld bc, $13d5
    ld de, $1003
    nop
    ld de, $11d4
    push de
    inc de
    ld bc, $0111
    ld de, $b1d6
    ld bc, $01b1
    ret c

    inc c
    inc d
    sbc a
    sbc a
    or c
    ld bc, $02b0
    or b
    nop
    push de
    or b
    nop
    sub $b0
    nop
    push de
    or b
    nop
    ld sp, $3001
    ld [bc], a
    jr nc, jr_03b_555e

jr_03b_555e:
    call nc, RST_30
    sub $c0
    nop
    push de
    ret nz

    nop
    db $d3
    ld d, e
    call nc, $5010
    add b
    ret nz

    db $d3
    stop
    ld d, b
    inc b
    ld h, c
    ld d, b
    nop
    call nc, $d510
    add b
    call nc, $5010
    add b
    ld d, b
    db $10
    ld d, b
    add b
    db $d3
    db $10
    ld d, b
    add b
    ld h, e
    call nc, $6020
    sub b
    db $d3
    db $10
    jr nz, jr_03b_558f

jr_03b_558f:
    ld h, b
    inc b
    sub c
    add b
    inc b
    ld h, a
    call c, $8513
    ld [hl], l
    ld d, c
    ld bc, $a585
    add c
    ld bc, $819b
    ld h, c
    sub c
    add c

Call_03b_55a4:
    inc bc
    jp nc, $d327

    dec d
    call nc, $91b5
    ld bc, $25d3
    dec d
    call nc, $01b1
    db $d3
    ld h, l
    ld d, l
    ld sp, $d401
    or e
    db $d3
    inc de
    inc sp
    ld h, e
    sbc a
    sbc a
    adc a
    adc a
    db $fd
    nop
    sbc [hl]
    ld d, e
    ret nz

    jp nc, $0155

    ld [hl], c
    ld d, [hl]
    ld [bc], a
    di
    ld d, [hl]
    inc bc
    adc h
    ld d, a
    jp c, $9800

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    pop hl
    ld a, [bc]
    inc d
    and $00
    ld bc, $0fef
    ret c

    inc c
    add e
    push de
    ld [hl], c
    ld h, c
    ld [hl], c
    call nc, $2133
    push de
    pop bc
    and c
    pop bc
    and c
    add c
    ld [hl], c
    ld d, c
    ld [hl], c
    add c
    and c
    and c
    ld d, c
    and c
    call nc, $d523
    pop bc
    and c
    add c
    ld [hl], c
    and c
    pop bc
    call nc, $3121
    ld hl, $c1d5
    and c
    ld [hl], c
    ld h, c
    ld [hl], c
    call nc, $2133
    push de
    pop bc
    and c
    pop bc
    and c
    add c
    ld [hl], c
    ld d, c
    ld [hl], c
    add c
    and c
    and c
    ld d, c
    and c
    call nc, $d523
    pop bc
    and c
    add c
    ret c

    inc c
    or h
    ld [hl], c
    ld d, c
    ld sp, $7151
    add c
    and c
    pop bc
    rst $28
    ldh a, [$71]
    ld d, c
    inc sp
    ld d, c
    ld [hl], c
    add c
    and c
    pop bc
    and c
    add e
    ld d, c
    ld [hl], c
    add c
    and c
    add c
    ld [hl], c
    ld d, e
    ld hl, $5131
    add c
    ld [hl], c
    add c
    and c
    pop bc
    and a
    call nc, $2131
    push de
    jp $c1a1


    call nc, $3121
    ld d, c
    ld sp, $d523
    pop bc
    call nc, $3121
    ld d, c
    ld hl, $c1d5
    and e
    add c
    and c
    pop bc
    add c
    and c
    add c
    ld [hl], c
    ld d, c
    ld sp, $7151
    add c
    db $fd
    nop
    rst $18
    ld d, l
    pop hl
    db $10
    dec h
    rst $28
    rst $38
    cp $d1
    ld d, [hl]
    rst $28
    rrca
    ret c

    inc c
    and l
    push de
    and e
    ld d, e
    rst $28
    rst $38
    cp $e4
    ld d, [hl]
    ld sp, $ef75
    rrca
    ret c

    inc c
    and l
    push de
    and e
    ld d, e
    rst $28
    rst $38
    cp $d1
    ld d, [hl]
    rst $28
    rrca
    ret c

    inc c
    and l
    push de
    and e
    ld d, e
    rst $28
    rst $38
    cp $e4
    ld d, [hl]
    scf
    rst $28
    rrca
    ret c

    inc c
    and l
    push de
    inc sp
    ld d, e
    ret c

    inc c
    add $d4
    ld [hl], a
    and a
    add c
    and c
    add c
    ld [hl], c
    ld d, a
    daa
    ld d, a
    ld [hl], c
    add c
    ld [hl], c
    ld d, c
    scf
    ld [hl], a
    and a
    add c
    ld [hl], c
    add c
    and c
    rst $00
    and e
    add c
    ld [hl], c
    add a
    ld [hl], c
    add c
    ld [hl], c
    ld d, c
    scf
    db $fd
    nop
    ld [hl], h
    ld d, [hl]
    db $db
    ld [bc], a
    ret c

    inc c
    jp nz, $31d4

    push de
    and c
    call nc, $dc31
    jp $83a3


    ld [hl], c
    ld d, c
    dec h
    rst $38
    ret c

    inc c

jr_03b_56e6:
    jp nz, $21d4

    push de
    and c
    call nc, $dc21
    jp $5373


    ld hl, $d8ff
    inc c
    jr z, jr_03b_56e6

    ldh a, [$d5]
    jr nc, jr_03b_56ff

    ld [hl], b
    ld [bc], a
    ld [hl], b
    nop

jr_03b_56ff:
    add b
    nop
    ld [hl], b
    nop
    cp $6f
    ld d, a
    cp $78
    ld d, a
    ld [hl], b
    inc b
    and b
    ld [bc], a
    and b
    nop
    add b
    nop
    and b
    nop
    jr nc, jr_03b_5719

    ld [hl], b
    ld [bc], a

Call_03b_5717:
    ld [hl], b
    nop

jr_03b_5719:
    add b
    nop
    ld [hl], b
    nop
    cp $6f
    ld d, a
    cp $78
    ld d, a
    jr nc, jr_03b_5729

    ld [hl], b
    ld [bc], a
    ld [hl], b
    nop

jr_03b_5729:
    jr nc, jr_03b_572b

jr_03b_572b:
    add b
    nop
    rst $28
    rst $38
    cp $83
    ld d, a
    add b
    inc b
    ret nz

    ld [bc], a
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ld d, b
    inc b
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    nop
    ld [hl], b
    inc b
    and b
    ld [bc], a
    and b
    nop
    sub b
    nop
    and b
    nop
    cp $83
    ld d, a
    add b
    inc b
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    ret nz

    nop
    ld d, b
    inc b
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    nop
    ld [hl], b
    inc b
    and b
    ld [bc], a
    and b
    nop
    add b
    nop
    ld d, b
    nop
    db $fd
    nop
    or $56
    ld d, b
    inc b
    and b
    ld [bc], a
    and b
    ld [bc], a
    and b
    nop
    rst $38
    ld d, b
    inc b
    and b
    ld [bc], a
    and b
    nop
    add b
    nop
    and b
    nop
    rst $38
    ld [hl], b
    inc b
    and b
    ld [bc], a
    and b
    ld [bc], a
    and b
    nop
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    rst $28
    rst $38
    add l
    add e
    add c
    add c
    add c
    db $fd
    nop
    sub d
    ld d, a
    ret nz

    and a
    ld d, a
    ld bc, $57cd
    ld [bc], a
    and $57
    inc bc
    ld a, [de]
    ld e, b
    jp c, $8400

    push hl
    ld [hl], a
    and $00
    ld bc, $02db
    ret c

    inc c
    rst $00
    push de
    ret nz

    nop
    call nc, $efcd
    rrca
    db $db
    nop
    call c, $d5a2
    ld d, e
    call c, Call_03b_53a1
    ld d, e
    ld d, c
    call c, $c1a3
    db $fd
    nop
    cp l
    ld d, a
    rst $28
    ldh a, [$db]
    nop
    ret c

    inc c
    add e
    rrca
    call c, $d692
    jp $91dc


    jp $c1c3


    call c, $d593
    sub c
    db $fd
    nop
    push de
    ld d, a
    ret c

    inc c
    db $10
    rlca
    jp nc, $4151

    ld hl, $d311
    pop bc
    ld bc, $41d2
    ld bc, $0151
    ld b, c
    ld bc, $1121
    db $d3
    pop bc
    and c
    sub c
    and c
    or c
    jp nc, $d321

    pop bc
    ld bc, $21d2
    ld bc, $c1d3
    ld bc, $01a1
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld d, c
    ld [hl], c
    sub c
    and c
    db $fd
    nop
    rst $28
    ld d, a
    db $e3
    inc b
    ret c

    inc c
    rra
    ret c

    ld b, $37
    daa
    daa
    inc hl
    jr nc, jr_03b_5847

    jr nz, @+$22

    db $fd
    nop
    rra
    ld e, b
    add b
    ld [hl], $58
    ld bc, $5863
    ld [bc], a
    xor l
    ld e, b
    jp c, $7400

    push hl
    ld [hl], a
    and $00
    ld bc, $12e1
    inc [hl]
    rst $28
    rrca
    db $db
    inc bc
    ret c

    inc c

jr_03b_5847:
    and a
    call nc, $3020
    ld b, b
    ld d, b
    ld l, e
    call c, $d52f
    rst $08
    call c, $0382
    push bc
    sub e
    push bc
    push bc
    sub e
    pop bc
    call c, $bf2f
    xor a
    db $fd
    nop
    ld d, d
    ld e, b
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    inc c
    or a
    db $d3
    ld b, b
    jr nc, jr_03b_588f

    db $10
    call nc, $dbcb
    inc bc
    call c, $d7a2
    jp $a1d6


    rst $10
    jp Jump_03b_61d6


    rst $10
    pop bc
    sub $41
    ld d, c
    sub c
    push de
    ld d, c
    sub $51
    sub c
    pop bc
    ld d, c
    sub c
    db $fd
    ld [bc], a
    add d

jr_03b_588f:
    ld e, b
    reti


    ld bc, $9efe
    ld e, b
    reti


    nop
    cp $9e
    ld e, b
    db $fd
    nop
    add d
    ld e, b
    rst $10
    and c
    sub $21
    and c
    rst $10
    and c
    sub $21
    ld d, c
    rst $10
    and c
    sub $21
    rst $38
    pop hl
    inc d
    inc d
    rst $28
    ldh a, [$d8]
    inc c
    inc d
    add hl, bc
    push de
    pop bc
    ld bc, $dcc1
    ld [de], a
    db $d3
    ld b, c
    nop
    ld h, c
    nop
    and c
    pop bc
    nop
    jp nc, $0021

    ld b, c
    ld d, l
    ld b, l
    inc hl
    db $d3
    pop bc
    and c
    sub c
    ld [hl], c
    sub c
    and c
    pop bc
    jp nc, $6721

    scf
    ld d, a
    daa
    db $fd
    nop
    ret z

    ld e, b
    ret nz

    jp hl


    ld e, b
    ld bc, $5996
    ld [bc], a
    inc l
    ld e, d
    inc bc
    call c, $da5a
    nop
    sub a
    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    ld b, $23
    ret c

    inc c
    or c
    rrca
    rrca
    cp $31
    ld e, c
    call c, $d5b1
    jp $c3c3


    jp Jump_03b_53d4


    ld d, e
    ld d, e
    ld d, e
    cp $31
    ld e, c
    cp $40
    ld e, c
    cp $40
    ld e, c
    cp $71
    ld e, c
    push de
    add c
    call nc, $d511
    add c
    call nc, Call_03b_6111
    ld sp, $c1d5
    add c
    cp $71
    ld e, c
    add c
    call nc, $3111
    add c
    ld h, c
    ld sp, $c1d5
    add c
    db $fd
    nop
    ei
    ld e, b
    call nc, $1313
    inc de
    inc de
    inc de
    inc de
    call c, $13b7
    push de
    jp $b1dc


    rst $38
    sub $c1
    push de
    ld d, c
    sub $c1
    push de
    ld d, c
    sub $c1
    push de
    ld d, c
    sub $c1
    push de
    ld d, c
    ld d, c
    or c
    ld d, c
    or c
    ld d, c
    or c
    ld d, c
    or c
    ld de, $11a1
    and c
    ld de, $11a1
    and c
    ld de, $1191
    sub c
    call c, $d6b7
    pop bc
    push de
    sub c
    sub $c1
    push de
    add c
    call c, $ffb1
    pop bc
    add c
    pop bc
    add c
    pop bc
    sub c
    pop bc
    sub c
    call nc, $1151
    ld d, c
    ld de, $d531
    pop bc
    call nc, $d531
    pop bc
    call nc, $d511
    and c
    call nc, $d511
    and c
    call nc, $d511
    and c
    call nc, $d511
    and c
    rst $38
    rst $28
    rst $38
    pop hl
    ld [$d824], sp
    inc c
    or d
    cp $ba
    ld e, c
    call c, $feb2
    cp d
    ld e, c
    db $db

Call_03b_59a7:
    ld [bc], a
    call c, $feb5
    call c, $fe59
    call c, $fe59
    ld [bc], a
    ld e, d
    cp $02
    ld e, d
    db $fd
    nop
    and c
    ld e, c
    call nc, $5353
    ld d, c
    sub $11
    call nc, $d651
    ld de, $b3d4
    or e
    or c
    sub $81
    call nc, $d6b1
    add c
    call nc, $a3a3
    and e
    and e
    sub e
    sub e
    call c, $93b7
    add e
    call c, $ffb2
    sub $13
    ld bc, $0010
    stop
    ld de, $1001
    nop
    add e
    ld bc, $0080
    add b
    nop
    add c
    ld bc, $0080
    ld h, e
    ld bc, $0060
    ld h, b
    nop
    ld h, c
    ld bc, $0060
    ld h, e
    ld bc, $0060
    ld h, e
    inc sp
    rst $38
    sub $53
    ld bc, $0050
    ld d, b
    nop
    ld d, c
    ld bc, $0050
    and e
    ld bc, $00a0
    sub b
    nop
    sub c
    ld bc, $0090
    ld h, e
    ld bc, $0060
    ld [hl], b
    nop
    ld [hl], c
    ld bc, $0070
    add e
    ld bc, $0080
    add b
    nop
    add c
    ld bc, $0080
    rst $38
    rst $28
    ldh a, [$e1]
    ld d, $15
    ret c

    inc c
    inc d
    call nc, $02c0
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    db $d3
    ld d, b
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, b
    ld [bc], a
    cp $9e
    ld e, d
    push de
    inc sp
    ret c

    inc c
    dec d
    push de
    inc de
    ld bc, $0010
    stop
    ld de, $1001
    nop
    add e
    ld bc, $0080
    add b
    nop
    add c
    ld bc, $0080
    cp $9e
    ld e, d
    push de
    ld sp, $10dc
    jp nc, $3010

    cp $af
    ld e, d
    inc bc
    add a
    ld h, c
    add c
    ret c

    inc c
    db $10
    cp $af
    ld e, d
    rrca
    call c, $fe25
    bit 3, d
    inc bc
    ld b, b
    ld d, [hl]
    inc sp
    db $d3
    ret nz

    jp nc, $d312

    jp $c7a3


    add e
    jp nc, $83a3

    cp $cb
    ld e, d
    inc bc
    sub b
    and [hl]
    jp $8f70


    adc [hl]
    db $fd
    nop
    ld c, e
    ld e, d
    push de
    ld h, e
    ld bc, $0060
    ld h, b
    nop
    ld h, c
    ld bc, $0060
    ld h, e
    ld bc, $0060
    ld h, e
    rst $38
    jp nc, $3159

    ld bc, $d811
    ld b, $10
    db $d3
    ld [hl], b
    adc [hl]
    and e
    or e
    inc bc
    jp nc, $3111

    ld b, b
    ld e, a
    ld d, [hl]
    ld h, e
    ld d, e
    ld b, b
    ld d, d
    inc sp
    inc de
    inc sp
    rst $38
    db $d3
    rst $08
    inc bc
    jp nc, $3620

    ld d, e
    db $d3
    ret nz

    jp nc, $121f

    inc sp
    inc bc
    ld d, e
    ld l, a
    rst $38
    db $e3
    dec b
    ret c

    inc c
    and e
    and e
    and c
    pop bc
    and c
    pop bc
    db $fd
    inc bc
    ldh [$5a], a
    and e
    and e
    and c
    and c
    ld b, e
    and e
    and e
    and c
    and c
    pop bc
    and c
    db $fd
    inc b
    rst $28
    ld e, d
    jp $c1a1


    and c
    pop bc
    and c
    pop bc
    db $fd
    rlca
    ld sp, hl
    ld e, d
    jp $a1a3


    and c
    ld b, e
    jp $c113


    pop bc
    inc de
    db $fd
    inc bc
    add hl, bc
    ld e, e
    jp $2113


    ld de, $c323
    inc de
    pop bc
    pop bc
    inc de
    db $fd
    inc bc
    rla
    ld e, e
    jp $3113


    ld sp, $fd43
    nop
    rst $28
    ld e, d
    ret nz

    dec [hl]
    ld e, e
    ld bc, $5b4c
    ld [bc], a
    adc d
    ld e, e
    inc bc
    cp a
    ld e, e
    jp c, $d000

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    and $00
    ld bc, $08e1
    inc d
    rst $28
    ldh a, [$d8]
    inc c
    ld b, l
    ld bc, $00fd
    ld d, [hl]
    ld e, e
    pop hl
    dec bc
    dec d
    db $db
    ld [bc], a
    ret c

    inc c
    add h
    rst $28
    rrca
    call nc, $2545
    push de
    pop bc
    call nc, Call_03b_4121
    add c
    ld b, c
    dec h
    push de
    pop bc
    call nc, Call_03b_4121
    add c
    ld b, c
    dec h
    push de
    pop bc
    or c
    push bc
    call nc, $9529
    ld [hl], l
    ld d, c
    ld [hl], c
    sub c
    db $d3
    ld de, $91d4
    ld [hl], l
    ld d, c
    ld [hl], c
    sub c
    db $d3
    ld de, $91d4
    ld [hl], l
    ld d, c
    ld b, c
    ld d, l
    ld [hl], l
    ld d, e
    db $fd
    nop
    ld d, [hl]
    ld e, e
    ret c

    inc c
    jr z, @-$28

    pop bc
    push de
    ld b, c
    add c
    sub $c1
    push de
    ld b, c
    add c
    sub $c1
    push de
    ld b, c
    db $fd
    inc bc
    adc l
    ld e, e
    sub $c1
    push de
    ld b, c
    add c
    sub $c1
    push de
    ld b, c
    add c
    ld b, c
    ld d, c
    ld d, c
    sub c
    call nc, $d511
    ld d, c
    sub c
    call nc, $d511
    ld d, c
    sub c
    db $fd
    inc b
    xor e
    ld e, e
    db $fd
    nop
    adc d
    ld e, e
    db $e3
    dec b
    ret c

    inc c
    rst $28
    rrca
    or e
    or a
    or e
    rst $28
    ldh a, [$b3]
    or e
    or e
    rst $28
    rrca
    or e
    or e
    rst $28
    ldh a, [$b7]
    db $fd
    nop
    jp $c05b


    db $e4
    ld e, e
    ld bc, $5c2a
    ld [bc], a
    xor c
    ld e, h
    inc bc
    jr nc, @+$5f

    jp c, $9000

    push hl
    ld [hl], a
    rst $28
    rrca
    db $db
    ld [bc], a
    ret c

    inc c
    or c
    call nc, $a1c1
    sub c
    and c
    sub c
    ld [hl], c
    ld d, c
    ld sp, $c3d5
    sub b
    ret nz

    call nc, $5030
    sub a
    rrca
    rrca
    rrca
    rrca
    cp $98
    ld e, h
    cp $15
    ld e, h
    cp $98
    ld e, h
    cp $15
    ld e, h
    db $fd
    nop
    ld bc, $035c
    push de
    jr nz, jr_03b_5c1d

    inc sp
    stop
    inc bc

jr_03b_5c1d:
    sub $50
    nop
    sub b
    nop
    call nc, TimerOverflowInterrupt
    ld d, b
    nop
    ld d, b
    ld [bc], a
    rst $38
    rst $28
    rst $38
    db $db
    ld [bc], a
    ret c

    inc c

Jump_03b_5c30:
    or c
    db $d3
    ld d, c
    ld sp, $3121
    ld hl, $c1d4
    and c
    sub c
    ld d, e
    ld d, b
    sub b
    ret nz

    db $d3
    jr nc, jr_03b_5c99

    db $db
    ld bc, $98fe
    ld e, h
    cp $98
    ld e, h
    cp $86
    ld e, h
    and e
    push de
    and c
    call nc, Call_03b_5321
    ld sp, $d521
    jp $86fe


    ld e, h
    and c
    and c
    sub c
    ld d, c
    ld [hl], c
    sub c
    and c
    and c
    and e
    cp $8e
    ld e, h
    and e
    db $d3
    ld hl, $a1d4
    and e
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    nop
    ld b, b
    ld d, b
    cp $8e
    ld e, h
    and c
    db $d3
    ld d, c
    ld sp, $c1d4
    and c
    sub c
    and c
    and c
    and e
    db $fd
    nop
    ld b, h
    ld e, h
    push de
    and c
    call nc, Call_03b_5321
    ld sp, $ff71
    db $d3
    ld hl, $a1d4
    and e
    db $d3
    ld [hl], c
    call nc, $ffa1
    inc bc

jr_03b_5c99:
    push de
    jr nz, @+$06

    inc sp
    stop
    ld bc, $0420
    sub $50
    ld [bc], a
    or c
    ret nz

    nop
    rst $38
    rst $28
    ldh a, [$e1]
    db $10
    ld [hl+], a
    ret c

    ld b, $25
    sub $c0
    ld [bc], a
    push de
    jr nc, jr_03b_5cb9

    ld d, b
    ld [bc], a

jr_03b_5cb9:
    sub b
    ld [bc], a
    ret nz

    ld [bc], a
    call nc, $0230
    ld d, b
    ld [bc], a
    sub b
    ld [bc], a
    ld sp, $3105
    push de
    pop bc
    sub c
    pop bc
    ld d, c
    dec b
    call c, $d614
    ret nz

    or b
    and b
    sub b
    add b
    ld h, b
    ld d, c
    call c, $fe14
    rst $28
    ld e, h
    cp $ef
    ld e, h
    cp $ef
    ld e, h
    cp $0f
    ld e, l
    cp $ef
    ld e, h
    cp $0f
    ld e, l
    db $fd
    nop
    reti


    ld e, h
    sub $a1
    dec b
    call nc, $0151
    sub $a1
    ld bc, $31d5
    ld bc, $77d4
    ld b, c
    ld bc, $a1d6
    ld bc, $51d4
    dec b
    sub $a1
    ld bc, $31d4
    dec b
    inc hl
    ld sp, $ff01
    sub $a1
    dec b
    call nc, $0151
    sub $a1
    ld bc, $31d5
    ld bc, $77d4
    ld b, c
    ld bc, $91d6
    dec b
    call nc, $0131
    push de
    pop bc
    ld bc, $0121
    ld d, c
    ld bc, $a1d6
    dec b
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    rrca
    rlca
    ld sp, $7341
    cp $4f
    ld e, l
    cp $4f
    ld e, l
    cp $4f
    ld e, l
    cp $5e
    ld e, l
    cp $4f
    ld e, l
    cp $5e
    ld e, l
    db $fd
    nop
    add hl, sp
    ld e, l
    ld b, c
    ld [hl], c
    ld sp, $8181
    ld [hl], e
    ld sp, $7341
    ld sp, $8181
    ld sp, $ff41
    ld b, c
    ld [hl], c
    ld sp, $8181
    ld [hl], e
    ld sp, $7341
    ld sp, $3131

jr_03b_5d6a:
    ld sp, $ff71
    ret nz

    ld a, c
    ld e, l
    ld bc, $5e1c
    ld [bc], a

jr_03b_5d74:
    add sp, $5e
    inc bc
    ld l, a
    ld h, b
    jp c, $9300

    push hl
    ld [hl], a
    rst $28
    rrca
    ret c

    inc c
    sub c
    rlca
    call c, $0f91
    rrca
    rrca
    rrca
    cp $03
    ld e, [hl]
    cp $03
    ld e, [hl]
    cp $03
    ld e, [hl]
    cp $13
    ld e, [hl]
    rrca
    rrca
    rrca
    rrca
    rrca
    cp $03
    ld e, [hl]
    cp $03
    ld e, [hl]
    cp $03
    ld e, [hl]
    cp $13
    ld e, [hl]
    push de
    ld bc, $9292
    or c
    or c
    sub c
    add c
    call c, $d471
    sub b
    db $d3
    db $10
    ld h, b
    db $10
    db $fd
    inc b
    or c
    ld e, l
    call nc, $d3b0
    jr nc, @-$7e

    jr nc, @-$01

    inc b
    cp e
    ld e, l
    call nc, $8040
    db $d3
    db $10
    call nc, $fd80
    inc b
    push bc
    ld e, l
    call nc, $a060
    db $d3
    db $10
    call nc, $fda0
    inc b
    ret nc

    ld e, l
    call nc, $d390
    db $10
    ld h, b
    db $10
    db $fd
    inc b
    db $db
    ld e, l
    call nc, $d3b0
    jr nc, jr_03b_5d6a

    jr nc, @-$01

    inc b
    push hl
    ld e, l
    call nc, $d3c0
    jr nc, jr_03b_5d74

    jr nc, @-$01

    inc b
    rst $28
    ld e, l
    push de
    jr nc, jr_03b_5e2c

    ld [hl-], a
    ld h, c
    ld l, b
    db $fd
    nop
    add h
    ld e, l
    ld bc, $b2d4
    add d
    ld b, d
    push de
    ld h, d
    ld h, c
    ld bc, $9292
    or c
    or c
    sub b
    or d
    rst $38
    ld bc, $b2d4
    add d
    ld b, d
    push de
    ld h, d
    ld h, c
    rst $38
    rst $28
    rst $38
    pop hl
    ld [$d824], sp
    inc c
    and c
    rlca
    call c, $db92
    ld bc, $75fe
    ld e, [hl]

jr_03b_5e2c:
    rst $10
    ld h, c
    push de
    sub c
    rst $10
    ld h, b
    push de
    sub c
    call c, $92a4
    call c, $8192
    or b
    call nc, $fe12
    ld [hl], l
    ld e, [hl]
    call nc, Call_03b_4161
    ld h, b
    ld b, c
    call c, $82a4
    ld h, e
    db $db
    ld [bc], a
    call c, $d5c7
    ld b, b
    ld h, b
    add l
    ld h, l
    inc de
    dec [hl]
    ld b, l
    ld h, e
    dec [hl]
    dec d
    sub $b3
    and e
    add hl, bc
    push de
    ld b, b
    ld h, b
    add l
    ld h, l
    inc de
    dec [hl]
    ld b, l
    ld h, c
    ld b, b
    ld h, b
    adc a
    call c, $8092
    add b
    add d
    or c
    cp b
    call c, $fda4
    nop
    dec h
    ld e, [hl]
    rst $10
    ld de, $42d5
    ld b, d
    ld b, d
    ld h, d
    ld h, c
    rst $10
    ld de, $42d5
    ld b, d
    ld h, c
    ld h, c
    ld b, b
    ld h, d
    rst $10
    ld de, $42d5
    ld b, d
    ld b, d
    ld h, d
    ld h, c
    rst $10
    ld de, $42d5
    ld b, d
    ld h, c
    ld de, $6240
    rst $10
    ld de, $32d3
    call nc, $81b2
    ld de, $4131
    ld h, c
    ld b, c
    ld h, b
    ld b, c
    call c, Call_03b_62a4
    add e
    call c, Call_03b_7092
    ld h, b
    rst $10
    ld de, $32d3
    call nc, $81b2
    ld de, $4131
    rst $10
    ld h, b
    call nc, Call_03b_4160
    add b
    ld b, c
    call c, $b2a4
    and c
    call c, $b092
    db $d3
    ld [de], a
    rst $10
    ld de, $32d3
    call nc, $81b2
    ld de, $4131
    ld h, c
    ld b, c
    ld h, b
    ld b, c
    call c, Call_03b_62a4
    add e
    call c, Call_03b_7092
    ld h, b
    rst $10
    ld de, $32d3
    call nc, $81b2
    ld de, $4131
    rst $38
    pop hl
    ld [$d822], sp
    inc c
    inc d
    rlca
    rst $28
    rst $38
    ret c

    inc c
    inc d
    cp $dd
    ld e, a
    cp $f8
    ld e, a
    call nc, $a280
    cp $dd
    ld e, a
    cp $f8
    ld e, a
    call nc, $d3b0
    ld [de], a
    rst $28
    ldh a, [$fe]
    db $dd
    ld e, a
    cp $0c
    ld h, b
    cp $dd
    ld e, a
    cp $24
    ld h, b
    cp $dd
    ld e, a
    cp $0c
    ld h, b
    cp $dd
    ld e, a
    rst $28
    rst $38
    sub $60
    push de
    ld h, b
    db $d3
    db $10
    call nc, $d660
    ld h, b
    db $d3
    db $10
    push de
    ld h, b
    db $d3
    ld b, d
    jr nc, jr_03b_5f32

jr_03b_5f32:
    ld b, b
    ld h, b
    ld bc, $ddfe
    ld e, a
    cp $f8
    ld e, a
    call nc, $a280
    cp $dd
    ld e, a
    cp $f8
    ld e, a
    call nc, $d3b0
    ld [de], a
    rst $28
    ldh a, [$fe]
    db $dd
    ld e, a
    cp $0c
    ld h, b
    cp $dd
    ld e, a
    cp $24
    ld h, b
    cp $dd
    ld e, a
    cp $0c
    ld h, b
    cp $dd
    ld e, a
    sub $60
    push de
    ld h, b
    db $d3
    db $10
    call nc, $d560
    ld h, b
    db $d3
    db $10
    call nc, $d560
    ld h, b
    db $d3
    ld b, b
    nop
    jr nc, jr_03b_5f74

jr_03b_5f74:
    stop
    call nc, $00b0
    call c, $fe15
    ccf
    ld h, b
    sub $11
    nop
    db $10
    push de
    db $10
    sub $10
    nop
    db $10
    db $10
    push de
    db $10
    sub $11
    push de
    db $10
    sub $10
    nop
    push de
    db $10
    sub $61
    nop
    ld h, b
    push de
    ld h, b
    sub $60
    nop
    ld h, b
    ld h, b
    push de
    ld h, b
    sub $61
    push de
    ld h, b
    sub $60
    nop
    push de
    ld h, b
    cp $3f
    ld h, b
    sub $81
    nop
    add b
    push de
    add b
    sub $80
    nop
    add b
    add b
    push de
    add b
    sub $81
    push de
    add b
    sub $80
    nop
    push de
    add b
    sub $c0
    ret nz

    ret nz

    ld bc, $00c0
    ret nz

    inc bc
    ret c

    ld b, $15
    push de
    jr nc, @+$12

    sub $c0
    and b
    add b
    ld h, b

jr_03b_5fd7:
    ld d, b
    jr nc, jr_03b_5fd7

    nop
    rst $28
    ld e, [hl]
    sub $10
    push de
    db $10
    call nc, $1080
    push de
    db $10
    call nc, $1080
    push de
    db $10
    call nc, $1080
    push de
    db $10
    call nc, $10a0
    push de
    db $10
    call nc, $ffa1
    sub $10
    push de
    db $10
    call nc, $1080
    push de
    db $10
    call nc, $1080
    push de
    db $10
    call nc, $00b0
    and b
    nop
    rst $38
    sub $60
    push de
    ld h, b
    db $d3

jr_03b_6011:
    db $10
    call nc, $d560
    ld h, b
    db $d3
    db $10
    call nc, $d560
    ld h, b
    db $d3
    ld b, b
    nop
    jr nc, jr_03b_6021

jr_03b_6021:
    db $10
    ld [hl-], a
    rst $38
    sub $60
    push de
    ld h, b
    db $d3
    db $10
    call nc, $d560
    ld h, b
    db $d3
    db $10

Call_03b_6030:
    call nc, $d560
    ld h, b
    db $d3
    ld b, b
    nop
    jr nc, jr_03b_6039

jr_03b_6039:
    db $10
    jr nc, jr_03b_6011

    ld h, b
    nop
    rst $38
    sub $61
    nop
    ld h, b
    push de
    ld h, b
    sub $60
    nop
    ld h, b
    ld h, b
    push de
    ld h, b
    sub $61
    push de
    ld h, b
    sub $60
    nop
    push de
    ld h, b
    sub $81
    nop
    add b
    push de
    add b
    sub $80
    nop
    add b
    add b
    push de
    add b
    sub $60
    push de
    ld h, b
    sub $40
    push de
    ld b, b
    sub $30
    push de
    jr nc, @+$01

    db $e3
    inc bc
    ret c

    inc c
    ret c

    ld [$3030], sp
    jr nc, @-$26

    inc c
    jr nc, @+$32

    ld sp, $3030
    cp $06
    ld h, c
    or c
    ld [hl], c
    ld sp, $b171
    ld [hl], c
    ld sp, $fd71
    ld b, $82
    ld h, b
    cp $0f
    ld h, c

Call_03b_6091:
    or c
    ld [hl], c
    ld sp, $b171
    ld [hl], c
    ld sp, $fd71
    inc bc
    sub c
    ld h, b
    dec bc
    jr nc, jr_03b_60d0

    ld [hl], c
    cp $06
    ld h, c
    or c
    ld [hl], c
    ld sp, $b171
    ld [hl], c
    ld sp, $fd71
    ld b, $a4
    ld h, b

Call_03b_60b0:
    cp $0f
    ld h, c
    or c
    ld [hl], c
    ld sp, $b171
    ld [hl], c
    ld sp, $fd71
    inc bc
    or e
    ld h, b
    or c
    ld [hl], c
    ld sp, $4171
    ld [hl], c
    jr nc, jr_03b_60f7

    jr nc, jr_03b_60f9

    or c
    ld [hl], b
    ld b, b
    jr nc, @+$42

    ld [hl], b
    ld b, b

jr_03b_60d0:
    ld b, b
    jr nc, @+$72

    ld b, b
    ld sp, $fd71
    inc bc
    ret


    ld h, b
    or c
    ld [hl], b
    ld b, b
    jr nc, jr_03b_611f

    ld [hl], b
    ld b, b
    ld b, b
    jr nc, @+$72

    ld b, b
    ld sp, $3030
    or c
    ld [hl], b
    ld b, b
    jr nc, @+$42

    ld [hl], b
    ld b, b
    ld b, b
    jr nc, jr_03b_6162

    ld b, b
    ld sp, $fd71
    inc bc

jr_03b_60f7:
    add sp, $60

jr_03b_60f9:
    jr nc, jr_03b_612b

    ld sp, $71b0
    ld [hl], h
    jr nc, jr_03b_6131

    ld b, c
    db $fd
    nop
    ld a, a
    ld h, b
    ld de, $3171
    ld [hl], c
    or c
    ld [hl], c
    ld sp, $ff71
    or c
    ld [hl], c

Call_03b_6111:
    ld sp, $b171
    ld [hl], c
    jr nc, @+$32

    ld [hl], c
    rst $38
    ret nz

    dec h
    ld h, c
    ld bc, $61de

jr_03b_611f:
    ld [bc], a
    ld l, l
    ld h, d
    inc bc
    ld b, l
    ld h, e
    jp c, $8c00

    push hl
    ld [hl], a
    db $db

jr_03b_612b:
    inc bc
    and $00
    ld bc, $0fef

Call_03b_6131:
jr_03b_6131:
    pop hl
    ld [$d815], sp
    inc c
    or h
    push de
    push bc
    and l
    add e
    call c, $a5b0
    call c, $a7b6
    call c, Call_03b_71b2
    rst $28
    rrca
    call c, $81b2
    add c
    ld d, c
    ld d, c
    ld [hl], b
    ld d, b
    ld b, c
    ld sp, $5131
    ld d, c
    ld de, $d611
    pop bc
    add c
    and c
    pop bc
    push de
    ld de, $5111
    ld d, c
    ld hl, $7151

jr_03b_6162:
    ld d, c
    ld sp, $3151
    ld hl, $3131
    ld hl, $8131
    add c
    ld d, c
    ld d, c
    ld [hl], b
    ld d, b
    ld b, c
    ld sp, $5131
    ld d, c
    ld de, $d611
    pop bc
    pop bc
    or c
    pop bc
    push de
    ld de, $c1d6
    push de
    ld de, $1151
    ld d, c
    ld [hl], c
    add c
    ld [hl], c
    call c, Call_03b_7182
    call c, $a1b2
    add c
    ld [hl], c
    add c
    sub c

Call_03b_6193:
    and c
    rst $28
    ldh a, [$dc]
    or [hl]
    jp $d483


    inc sp
    push de
    add e
    and e
    ld [hl], e
    call nc, $d533
    ld [hl], e
    add e
    ld d, e
    call nc, $d513
    ld d, e
    ld [hl], e
    ld sp, $8171
    sub c
    and e
    call nc, $d531

Call_03b_61b3:
    pop bc
    add c
    pop bc

Call_03b_61b6:
    call nc, $8131
    ld sp, $c1d5
    call nc, $d511
    and c
    ld [hl], c
    and c
    call nc, Call_03b_7111
    ld de, $a1d5
    add c
    ld d, c
    ld de, $8151
    sub c
    and c
    pop bc
    call nc, $1111
    push de
    and c
    add c

Jump_03b_61d6:
    ld [hl], c
    add c
    sub c
    and c
    db $fd
    nop
    ld b, h
    ld h, c
    db $db
    ld [bc], a
    pop hl
    db $10
    inc h
    rst $28
    ldh a, [$d8]
    inc c
    add $d4
    dec [hl]
    dec d
    push de
    jp $c2dc


    call nc, $3031
    ld d, b
    ld sp, $5030
    ld sp, $c3dc
    ld de, $c1d5
    and c
    rst $28
    rst $38
    db $db
    ld [bc], a
    call c, $d5c3
    jp $a383


    ld [hl], e
    call c, $81c2
    ld [hl], c
    ld d, c
    ld [hl], c
    call c, $37c5
    call c, Call_03b_53c4
    add e
    call c, Call_03b_51c2
    pop bc
    and c
    add c
    ld [hl], c
    add c
    and c
    add c
    call c, Call_03b_77c5
    call c, $c3c3
    add e
    and e
    ld [hl], e
    call c, $81c2
    ld [hl], c
    ld d, c
    ld [hl], c
    call c, $37c5
    call c, Call_03b_53c4
    add e
    call c, Call_03b_51c2
    call nc, $3151
    ld de, $c1d5
    call nc, $3111
    ld d, c
    call c, $77c7
    rst $28
    rrca
    cp $63
    ld h, d
    ld [hl], e
    call c, $a1c3
    ld sp, $6151
    ld [hl], e
    call c, $fec7
    ld h, e
    ld h, d
    ld [hl], e
    call c, $a1c3
    pop bc
    and c
    add c
    ld [hl], e
    db $fd
    nop
    db $fd
    ld h, c
    add l
    push bc
    add e
    ld [hl], l
    and l
    ld [hl], e
    ld d, l
    add l
    ld d, e
    rst $38
    ret c

    inc c
    inc d
    rrca
    push de
    and c
    call nc, $d511
    pop bc
    call nc, $1131
    ld d, c
    ld sp, $a0d5
    nop
    cp $33
    ld h, e
    ld d, b
    nop
    add b
    nop
    ld d, b
    nop
    add b
    nop
    jr nc, jr_03b_628c

jr_03b_628c:
    sub $c0
    nop
    push de
    stop
    jr nc, jr_03b_6294

jr_03b_6294:
    ld d, b
    nop
    add b
    nop
    stop
    add b
    nop
    ld d, b
    nop
    add b
    nop
    stop
    add b
    nop

Call_03b_62a4:
    ld [hl], b
    nop
    and b
    nop
    jr nc, jr_03b_62aa

jr_03b_62aa:
    and b
    nop
    ld [hl], b
    nop
    jr nc, jr_03b_62b0

jr_03b_62b0:
    ld d, b
    nop
    ld [hl], b
    nop
    cp $33
    ld h, e
    ld d, b
    nop
    add b
    nop
    ld d, b
    nop
    add b
    nop
    jr nc, jr_03b_62c1

jr_03b_62c1:
    add b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld d, b
    nop
    add b
    nop
    stop
    add b
    nop
    ld d, b
    nop
    add b
    nop
    stop
    add b
    nop
    ld [hl], b
    nop
    and b
    nop
    jr nc, jr_03b_62dd

jr_03b_62dd:
    and b
    nop
    call nc, RST_30
    stop
    push de
    ret nz

    nop
    and b
    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_03b_62ef

jr_03b_62ef:
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_03b_62f7

jr_03b_62f7:
    ret nz

    nop
    ld [hl], b
    nop
    and b
    nop
    jr nc, jr_03b_62ff

jr_03b_62ff:
    and b
    nop
    ld [hl], b
    nop
    and b
    nop
    jr nc, jr_03b_6307

jr_03b_6307:
    and b
    nop
    ld d, b
    nop
    add b
    nop
    stop
    add b
    nop
    ld d, b
    nop
    add b
    nop
    stop

Call_03b_6317:
    add b
    nop
    ld [hl], b
    nop
    and b
    nop
    jr nc, jr_03b_631f

jr_03b_631f:
    and b

Call_03b_6320:
    nop
    ld [hl], b
    nop
    call nc, RST_10
    push de
    ret nz

    nop
    and b
    nop
    db $fd
    ld [bc], a
    jp hl


    ld h, d
    db $fd
    nop
    ld a, a
    ld h, d
    push de
    add b
    nop
    ret nz

    nop
    jr nc, jr_03b_633a

jr_03b_633a:
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_03b_6342

jr_03b_6342:
    ret nz

    nop
    rst $38
    db $e3
    nop
    ret c

    inc c
    rrca
    rrca
    ld bc, $f0ef
    ld h, e
    db $fd
    inc c
    ld c, h
    ld h, e
    ld h, e
    ld h, e
    rst $28
    rst $38
    ld h, c
    ld h, c
    ld h, c
    db $fd
    nop
    ld c, e
    ld h, e
    ld b, b
    ld h, h
    ld h, e
    ld [bc], a
    inc d
    ld h, h
    jp c, $9000

    rst $28
    rrca
    push hl
    ld [hl], a
    db $db
    inc bc
    ret c

    inc c
    or e
    ld bc, $fe0f
    ld a, [$dc63]
    or e
    push de
    ld sp, $93dc
    ld sp, $b3dc
    ld d, c
    call c, Call_03b_5193
    call c, $a1b3
    call c, $a193
    call c, Call_03b_61b3
    call c, Call_03b_6193
    call c, $31b3
    call c, $3193
    call c, $d6b3
    pop bc
    call c, $c193
    call c, $a1b3
    call c, $a193
    call c, $c1b3
    call c, $c193
    call c, $d5b3
    ld sp, $93dc
    ld sp, $b3dc
    sub $c1
    call c, $c193
    call c, $d5b3
    ld sp, $93dc
    ld sp, $b3dc
    ld d, c
    call c, Call_03b_5193
    call c, Call_03b_61b3
    call c, Call_03b_6193
    call c, $31b3
    call c, $3193
    call c, Call_03b_51b3
    call c, Call_03b_5193

Jump_03b_63d4:
    call c, $a1b3
    call c, $a193
    call c, $31b3
    call c, $3193
    call c, $d6b3
    pop bc
    call c, $c193
    call c, $a1b3
    call c, $a193
    call c, $c1b3
    call c, $c193
    cp $fa
    ld h, e
    db $fd
    nop
    adc [hl]
    ld h, e
    call c, $d6b3
    ld d, c
    call c, Call_03b_5193
    call c, $a1b3
    call c, $a193
    call c, $c1b3
    call c, $c193
    call c, $a1b3
    call c, $a193
    rst $38
    rst $28
    ldh a, [$e1]
    ld d, $23
    ret c

    inc c
    db $10
    db $d3
    ret nz

    jp nc, $d310

    rst $08
    pop hl
    rlca
    inc hl
    rst $00
    pop hl
    inc d
    inc hl
    jp nc, Jump_03b_5035

    ld h, b
    ld e, l
    add b
    sub b
    xor e
    jp $5038


    ld h, b
    jr nc, @-$1d

    nop
    nop
    ld d, e
    pop hl
    rlca
    inc hl
    ld d, a
    pop hl
    inc d
    inc hl
    db $d3
    rst $00
    jp nc, $d867

    ld b, $10
    ld d, b
    ld b, b
    jr nc, @+$22

    db $10
    db $d3
    ret nz

    or b
    and b
    inc bc
    jp nc, $6151

    ret c

    inc c
    db $10
    ld e, l
    add b
    sub b
    db $fd
    nop
    jr nc, @+$66

    ret nz

    ld l, e
    ld h, h
    ld bc, $64be
    ld [bc], a
    ld c, $65
    inc bc
    ld c, c
    ld h, l
    jp c, $8000

    push hl
    ld [hl], a
    pop hl
    ld [$db38], sp
    ld bc, $0fef
    ret c

    inc c
    or e
    sub $c0
    ld bc, $c070
    nop
    push de
    ld [hl], e
    db $db
    nop
    sub $c0
    nop
    ret nz

    nop
    ret c

    ld b, $b3
    add b
    nop
    ret nz

    nop
    db $db
    ld bc, $11d5
    inc bc
    add c
    ld de, $c701
    db $db
    nop
    inc de
    inc de
    sub $81
    ld bc, $03db
    call nc, $0131
    ld sp, $d501
    add c
    pop bc
    call nc, Call_03b_7131
    add c
    ld bc, $0141
    ld de, $4101
    ld bc, $d507
    add c
    dec b
    pop bc
    dec b
    ld sp, $ff05
    db $db
    ld bc, $08e1
    jr c, @-$0f

    rst $38
    ret c

    inc c
    or e
    push de
    add d
    and b
    ret nz

    nop
    call nc, $db33
    nop
    push de
    add b
    nop
    add b
    nop
    ret c

    ld b, $b3
    jr nc, jr_03b_64db

jr_03b_64db:
    add b
    nop
    db $db
    ld bc, $15d4
    ld sp, $0151
    add a
    db $db
    nop
    push de
    add e
    ld [hl], e
    ld d, c
    ld bc, $03db
    call nc, $01c1
    or c
    ld bc, $d3c7
    ld de, $1101
    ld bc, $b1d4
    ld bc, $0191
    rlca
    ld sp, $c0d5
    nop
    add b
    nop
    jr nc, jr_03b_6507

jr_03b_6507:
    call nc, $0581
    push de
    add c
    dec b
    rst $38
    pop hl

jr_03b_650f:
    ld [$d838], sp
    inc c
    dec h
    rst $28
    ldh a, [$d6]
    add b
    ld bc, $d5c0
    jr nc, jr_03b_651d

jr_03b_651d:
    add l
    inc bc
    db $10
    ld bc, $80d6
    push de
    stop
    ld d, l
    inc bc
    call nc, $0080
    jr nc, jr_03b_652d

jr_03b_652d:
    push de
    add e
    sub b
    nop
    call nc, RST_10
    ld b, b
    nop
    sub b
    nop
    jr nc, jr_03b_650f

    ret nz

    add b
    ret nz

    add b
    jr nc, @-$28

    ret nz

    push de
    jr nc, @-$28

    add b
    ld [bc], a
    add b
    ld [bc], a
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    or d
    or b
    ld sp, $3113
    ld sp, $30b0
    db $fd
    ld [bc], a
    ld c, l
    ld h, l
    sub c
    or c
    sub b
    sub b
    sub b
    sub b
    inc de
    sub b
    sub b
    sub b
    sub b
    jp $b333


    or e
    rst $38
    ret nz

    ld [hl], l
    ld h, l
    ld bc, $65fc
    ld [bc], a
    ld d, [hl]
    ld h, [hl]
    inc bc
    xor l
    ld h, [hl]
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    inc b
    pop hl
    ld [$ef45], sp
    rrca
    ret c

    inc c
    or e
    push de
    daa
    sub $71
    sub c
    and c
    pop bc
    push de
    inc hl
    sub $c3
    and e
    jp $0690


    push de
    inc de
    sub $90
    nop
    sub b
    nop
    sub b
    nop
    ld de, $0040
    ld [hl], b
    nop
    sub b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    push de
    daa
    sub $21
    ld [hl], c
    sub c
    push de
    ld de, $2131
    sub $a1
    sub c
    and c
    sub c
    ld [hl], c
    and c
    sub b
    ld b, $d5
    dec de
    sub $90
    nop
    sub b
    nop
    sub b
    ld [bc], a
    push de
    db $10
    ld [bc], a
    sub $a3
    push de
    and e
    sub e
    ld [hl], e
    ld d, e
    ld b, e
    inc hl
    ld d, e
    ld [hl], c
    ld d, c
    ld c, e
    sub $c1
    and c
    pop bc
    and c
    sub a
    and e
    push de
    and e
    sub c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $c1d6
    and c
    pop bc
    push de
    ld hl, $5141
    ld [hl], c
    sbc e
    sub $c1
    and c
    pop bc
    and c
    sub a
    db $fd
    nop
    add h
    ld h, l
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    db $10
    ld b, l
    ret c

    inc c
    push bc
    push de
    sbc e
    ld [hl], c
    sub c
    and a
    call nc, $1027
    ld b, $d5
    sbc a
    call c, $20c5
    nop
    jr nz, jr_03b_6618

jr_03b_6618:
    jr nz, jr_03b_661a

jr_03b_661a:
    jr nz, jr_03b_661c

jr_03b_661c:
    sbc e
    ld [hl], c
    sub c
    and a
    call nc, $1027
    ld b, $4b
    push de
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    ld [bc], a
    call nc, $415b
    ld hl, $9bd5
    or e
    pop bc
    call nc, Call_03b_4b21
    push de
    ld b, c
    ld hl, $2141
    rla
    call nc, $415b
    ld hl, $9bd5
    call nc, $d513
    pop bc
    call nc, $4b11
    push de
    ld b, c
    ld hl, $2141
    rla
    db $fd
    nop
    inc b
    ld h, [hl]
    ret c

    inc c
    add hl, de
    rst $28
    ldh a, [$d6]
    sub c
    ld bc, $0141
    ld [hl], c
    ld bc, $0181
    sub c
    ld bc, $0141
    ld [hl], c
    ld bc, $01a1
    db $fd
    ld [bc], a
    ld h, h
    ld h, [hl]
    sub c
    ld bc, $0141
    ld [hl], c
    ld bc, $d5a1
    ld de, $0121
    sub $91
    ld bc, $01a1
    push de
    ld de, $2101
    ld bc, $91d6
    ld bc, $01a1
    push de
    ld sp, $fd01
    ld [bc], a
    add e
    ld h, [hl]
    ld hl, $d601
    sub c
    ld bc, $01a1
    push de
    ld b, c
    ld [hl], c
    ld d, c
    ld bc, $c1d6
    ld bc, $11d5
    ld bc, $0161
    db $fd
    ld [$669b], sp
    db $fd
    nop
    ld e, e
    ld h, [hl]
    db $e3
    nop
    ret c

    inc c
    rst $28
    rrca
    sub e
    ld h, c
    sub e
    ld h, c
    and c
    or c
    rst $28
    rst $38
    sub c
    ld h, e
    sub c
    ld h, e
    sub c
    and c
    db $fd
    nop
    or c
    ld h, [hl]
    ret nz

    pop de
    ld h, [hl]
    ld bc, $6749
    ld [bc], a
    pop bc
    ld h, a
    inc bc
    dec [hl]
    ld l, b
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    ld [$ef22], sp
    ldh a, [$d8]
    inc c
    or h
    push de
    dec [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    ld d, e
    call c, $75b5
    ld d, l
    inc sp
    call nc, $1335
    ld d, c
    inc sp
    push de
    push bc
    add c
    ret c

    ld [$33b5], sp
    add e
    jp $0cd8


    or h
    ld [hl-], a
    ld [hl], b
    call c, $a7b7
    ld [hl], e
    and d
    call nc, $3b20
    ret c

    ld [$d5b4], sp
    inc de
    sub $c3
    and e
    ret c

    ld [$abb7], sp
    ret c

    inc c
    or a
    push de
    dec de
    call c, Call_03b_53b4
    ld sp, $b7dc
    sub $a9
    call c, $d5b4
    ld d, e
    ld [hl-], a
    ld d, b
    call c, $77b7
    dec [hl]
    db $10
    ld d, b
    rla
    ld d, l
    ld d, b
    add b
    ld d, a
    add l
    ld [hl], b
    add b
    call c, $a6a0
    call c, $a6a7
    and b
    call nc, $dc10
    and b
    dec [hl]
    call c, $35a7
    db $fd
    nop
    jp hl


    ld h, [hl]
    db $db
    inc bc
    pop hl
    jr nz, jr_03b_6792

    rst $28
    rst $38
    ret c

    inc c
    sub b
    push de
    add a
    call c, $8797
    call c, $a7a0
    call c, $a7a7
    ret c

    ld [$d4c7], sp
    ccf
    push de
    and e
    call nc, $af33
    db $d3
    inc de
    call nc, $d8c3
    inc c
    rst $00
    adc e
    jp $80a2


    call c, Call_03b_7bb0
    call c, Call_03b_7fb7
    ret c

    ld [$d5c3], sp
    add e
    ld [hl], e
    ld d, e
    ld e, $d8
    inc c
    jp $10d4


    ld d, b
    add b
    nop
    ld d, b
    add b
    call c, $d3c5
    add hl, de
    call c, $d4c3

jr_03b_6792:
    and e
    add e
    ld [hl], e
    ld d, c
    ret c

    ld [$33c3], sp
    ld d, e
    ld [hl], e
    ret c

    ld [$abc7], sp
    ret c

    ld [$d5c3], sp
    add e
    ld [hl], e
    ld d, e
    call nc, $d513
    jp $d4a3


    ld d, e
    inc sp
    inc de
    add e
    ld [hl], e
    ld d, e
    ret c

    ld [$7fc7], sp
    inc sp
    ld [hl], e
    ret c

    inc c
    rst $00
    xor a
    db $fd
    nop
    ld e, [hl]
    ld h, a
    rst $28
    rrca
    ret c

    inc c
    ld d, $d5
    add e
    ld bc, $0583
    ld [hl], e
    ld bc, $0173
    ld d, e
    push de
    inc sp
    sub $a1
    push de
    inc sp
    sub $a1
    push de
    ld sp, $6351
    ld de, $1163
    ld h, c
    ld [hl], c
    add e
    ld sp, $3183
    add c
    pop bc
    and c
    ld sp, $a371
    ld sp, $7151
    and c
    ld [hl], c
    and c
    call nc, $d533
    and c
    call nc, Call_03b_7131
    push de
    ld d, e
    ld de, $1153
    ld d, c
    ld de, $1183
    add e
    ld de, $1181
    ld [hl], e
    ld sp, $3173
    ld [hl], c
    ld sp, $31a1
    ld [hl], c
    call nc, $d533
    ld sp, $7151
    add e
    ld de, $1183
    add c
    ld de, $1183
    add e
    ld de, $1181
    ld [hl], e
    ld sp, $3173
    ld [hl], c
    ld sp, $d633
    and c
    push de
    inc sp
    sub $a1
    push de
    ld sp, $a1d6
    db $fd
    nop
    ret nc

    ld h, a
    rst $28
    ldh a, [$e3]
    inc bc
    ret c

    inc c
    ld sp, $3030
    add c
    ld sp, $3030
    ld [hl], l
    ld sp, $3030
    add c
    ld sp, $3030
    ld [hl], d
    jr nc, jr_03b_687d

    jr nc, @-$01

    nop
    dec sp
    ld l, b
    ret nz

    ld e, [hl]
    ld l, b
    ld bc, $6892
    ld [bc], a
    ld a, [$0368]
    inc h
    ld l, c
    jp c, $8000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    rst $28
    rrca
    cp $81
    ld l, b
    push de
    inc sp
    cp $81
    ld l, b
    push de
    ld b, e
    cp $81
    ld l, b
    push de
    ld b, e
    cp $81
    ld l, b
    or e

jr_03b_687d:
    db $fd
    nop
    ld l, d
    ld l, b
    ret c

    inc c
    or [hl]
    sub $a3
    call c, $a1b2
    and c
    and c
    and c
    and e
    and c
    and c
    call c, $ffa0
    db $db
    inc bc
    pop hl
    db $10
    ld [hl+], a
    rst $28
    ldh a, [$fe]
    jp hl


    ld l, b
    and e
    cp $e9
    ld l, b
    or e
    cp $e9
    ld l, b
    and e
    cp $e9
    ld l, b
    inc hl
    call c, $a5c7
    ld sp, $b181
    and a
    call c, $a3b0
    cp $e9
    ld l, b
    or e
    call c, $d4c7
    dec [hl]
    ld b, c
    inc de
    scf
    call c, $d5b0
    and e
    cp $e9
    ld l, b
    inc hl
    call c, $d4c7
    dec d
    push de
    or c
    and c
    add c
    ld [hl], a
    call c, $a3b0
    cp $e9
    ld l, b
    or e
    call c, $d4c7
    dec [hl]
    ld b, c
    ld h, e
    ld [hl], a
    call c, $d5b0
    and e
    cp $e9
    ld l, b
    inc hl
    db $fd
    nop
    sbc c
    ld l, b
    ret c

    inc c
    add $d5
    inc sp
    call c, $31c2
    ld sp, $3131
    inc sp
    ld sp, $dc31
    or b
    rst $38
    ret c

    inc c
    add hl, de
    cp $15
    ld l, c
    push de
    and e
    cp $15
    ld l, c
    push de
    and e
    cp $15
    ld l, c
    push de
    and e
    cp $15
    ld l, c
    push de
    ld [hl], e
    db $fd
    nop
    db $fd
    ld l, b
    push de
    jr nc, jr_03b_691a

    sub $a0

jr_03b_691a:
    ld [bc], a
    push de
    db $10
    ld [bc], a
    jr nc, jr_03b_6922

    sub $a0

jr_03b_6922:
    ld [bc], a
    rst $38
    rst $28
    ldh a, [$e3]
    nop
    ret c

    inc c
    ld b, e
    ld sp, $4141
    ld b, c
    inc sp
    ld sp, $d831
    ld b, $30
    jr nc, jr_03b_6977

    ld b, b
    ld b, b
    ld b, b
    jr nc, jr_03b_696c

    ret c

    inc c
    ld b, e
    ld sp, $4141
    ld sp, $3123
    ld sp, $fd23
    nop
    ld a, [hl+]
    ld l, c
    ret nz

    ld d, a
    ld l, c
    ld bc, $69f8
    ld [bc], a
    rst $00
    ld l, d
    inc bc
    ld c, l
    ld l, e
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    db $10
    ld [hl+], a
    ret c

    inc c
    or e
    rrca
    rrca
    call c, $01b3

jr_03b_696c:
    sub $71
    pop bc
    push de
    ld d, c
    call c, $49b7
    call c, Call_03b_53b3

jr_03b_6977:
    ld b, e
    inc hl
    sub $c1
    push de
    ld b, d
    sub $c0
    call c, $77b7
    rst $00
    push de
    set 3, h
    or e
    ld bc, $71d6
    pop bc
    push de
    ld d, c
    call c, $49b7
    sub $a3
    push de
    inc hl
    ld d, e
    and c
    ld [hl], d
    and b
    push bc
    sub $c1
    push de
    ld b, c
    ld [hl], c
    pop bc
    and e
    ld [hl], e
    ld d, c
    ld b, e
    rst $28
    rrca
    cp $da
    ld l, c
    push de
    inc hl
    db $fd
    ld [bc], a
    and l
    ld l, c
    cp $e9
    ld l, c
    push de
    ld [hl], e
    cp $e9
    ld l, c
    push de
    ld [hl], e
    cp $da
    ld l, c
    push de
    ld d, e
    cp $da
    ld l, c
    push de
    sub e
    cp $e9
    ld l, c
    call nc, $fe43
    jp hl


    ld l, c
    push de
    ld h, e
    rst $28
    rst $38
    cp $e9
    ld l, c
    inc bc
    cp $e9
    ld l, c
    inc bc
    db $fd
    nop
    ld l, c
    ld l, c
    call c, $d6c2
    and c
    and b
    and b
    and c
    and b
    and b
    and b
    and b
    and c
    call c, $ffb7
    call c, $d6c2
    pop bc
    ret nz

    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    call c, $ffb7
    db $db
    inc bc
    pop hl
    inc e
    ld [de], a
    ret c

    inc c
    jp nz, $c1d6

    ret c

    inc c
    pop bc
    ret nz

    ret nz

    call c, $c1c2
    call c, $c0c1
    ret nz

    ret nz

    ret nz

    call c, $c5c2
    pop bc
    call c, $c0c1
    ret nz

    call c, $c1c2
    call c, $c0c1
    ret nz

    ret nz

    ret nz

    call c, $c1c2
    cp $b7
    ld l, d
    call c, $d4c6
    inc hl
    push de
    jp Jump_03b_53a3


    call c, Call_03b_77b0
    call c, $77b7
    call c, $4bc7
    cp $b7
    ld l, d
    call c, $d4c7
    inc hl
    push de
    jp $23d4


    ld d, e
    call c, Call_03b_4fb0
    call c, Call_03b_47b0
    call c, Call_03b_47b7
    call c, $03c4
    push de
    and d
    call nc, $a350
    sub e
    call c, $25a0
    ld b, l
    ld d, e
    call c, Call_03b_72c3
    ld d, b
    call c, Call_03b_45b0
    call c, $45b7
    call c, $d5c3
    jp nz, $dc70

    or b
    call nc, $dc45
    or a
    call nc, $dc45
    call nz, $d503
    and d
    call nc, $a350
    sub e
    call c, $25b0
    ld b, l
    ld d, e
    call c, Call_03b_72c3
    ld b, b
    call c, $c5b0
    call c, $c5b7
    call c, $c2c3
    ld [hl], b
    call c, $d3b0
    ld b, l
    call c, $d3b7
    ld b, l
    call c, $d5c2
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], c
    call c, Call_03b_70c1
    ld [hl], b
    ld [hl], b
    ld [hl], b
    call c, $75c2
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], c
    call c, Call_03b_70c1
    ld [hl], b
    ld [hl], b
    ld [hl], b
    call c, Call_03b_71c2
    db $fd
    nop
    inc h
    ld l, d
    call c, $d5c7
    ld [hl], e
    call c, $c4b0
    call c, $c4b7
    call c, Call_03b_71c3
    ld [hl], c
    pop bc
    rst $38
    rst $28
    ldh a, [$d8]
    inc c
    inc d
    sub $71
    dec b
    db $fd
    inc b
    call z, $fe6a
    ld [hl-], a
    ld l, e
    and c
    push de
    ld hl, $91d6
    pop bc
    ld [hl], c
    and c
    ld [hl], c
    ld d, c
    ld b, c
    ld [hl], c
    db $fd
    inc b
    ldh [rOCPS], a
    cp $32
    ld l, e
    cp $32
    ld l, e
    and c
    push de
    ld hl, $91d6
    pop bc
    ld [hl], c
    and c
    push de
    ld hl, $a1d6
    cp $32
    ld l, e
    sub $c1
    push de
    ld b, c
    db $fd
    inc b
    ei
    ld l, d
    sub $a1
    push de
    ld hl, $07fd
    inc bc
    ld l, e
    ld d, c
    ld hl, $3cfe
    ld l, e
    sub $c1
    push de
    ld [hl], c
    db $fd
    inc b
    db $10
    ld l, e
    sub $a1
    push de
    ld hl, $07fd
    jr jr_03b_6b8b

    ld d, c
    ld hl, $3cfe
    ld l, e
    cp $32
    ld l, e
    ld [hl], c
    dec b
    db $fd
    inc b
    jr z, @+$6d

    db $fd
    nop
    db $d3
    ld l, d
    sub $71
    pop bc
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    rst $38
    sub $c1
    push de
    ld b, c
    sub $c1
    push de
    ld b, c
    sub $c1
    push de
    ld b, c
    sub $c1
    push de
    ld b, c
    rst $38
    rst $28
    rrca
    db $e3
    nop
    ret c

    inc c
    cp $6b
    ld l, e
    jr nc, jr_03b_6b98

    ld b, b

jr_03b_6b59:
    jr nc, jr_03b_6b59

    ld l, e
    ld l, e
    ret c

    ld b, $40
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nc, jr_03b_6b96

    jr nc, @-$01

    nop
    ld d, c
    ld l, e
    ld sp, $4040
    ld sp, $4040
    ld sp, $4040
    rst $38
    ret nz

    add c
    ld l, e
    ld bc, $6c07
    ld [bc], a
    ld a, c
    ld l, h
    inc bc
    cp b
    ld l, h
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    inc b

jr_03b_6b8b:
    pop hl
    db $10
    ld b, h
    ret c

    inc c
    or e
    rst $28
    ldh a, [rIF]
    db $fd
    inc b

jr_03b_6b96:
    sub e
    ld l, e

jr_03b_6b98:
    sub $41
    ld bc, $a1b3
    dec b
    ld b, c
    or e
    and c
    rlca
    db $fd
    ld [bc], a
    sbc b
    ld l, e
    push de
    or c
    and c
    ld h, c
    ld [hl], c
    call nc, $1121
    ld hl, $d511
    or c
    and c
    ld h, c
    ld [hl], c
    call nc, $1121
    push de
    or c
    and c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld [hl], c
    or c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld [hl], c
    and c
    sub $b1
    pop bc
    push de
    ld b, c
    ld h, c
    call nc, $d511
    pop bc
    add c
    sub c
    call nc, $3141
    ld b, c
    ld sp, $d511
    pop bc
    add c
    sub c
    call nc, $3141
    ld de, $c1d5
    sub c
    add c
    ld h, c
    add c
    sub c
    call nc, $d511
    sub c
    add c
    ld h, c
    add c
    sub c
    pop bc
    ld de, $6121
    add c
    rrca
    call c, $d6b7
    sbc a
    rrca
    xor a
    call c, $0fb3
    db $fd
    inc b
    cp $6b
    db $fd
    nop
    sub e
    ld l, e
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    nop
    ldh a, [$d8]
    inc c
    call nz, $0fef
    sub $41
    ld bc, $a1b3
    dec b
    ld b, c
    or e
    and c
    rlca
    ld b, c
    ld bc, $a1b3
    dec b
    ld b, c
    or e
    and c
    rlca
    push de
    ld c, e
    or c
    and c
    call nc, $1727
    push de
    cp e
    and e
    ld [hl], a
    ld h, a
    call nc, $b14b
    and c
    ld [hl], a
    ld h, a
    ld c, e
    inc sp
    push de
    rst $00
    or a
    call nc, $d36b
    ld de, $c1d4
    sub a
    add a
    ld l, e
    ld d, e
    daa
    rla
    sub $21
    ld bc, $8193
    dec b
    call c, $d5c7
    cpl
    call c, $d6c4
    ld hl, $9301
    add c
    dec b
    call c, $d5c7
    cpl
    call c, $d6c4
    ld hl, $9301
    add c
    dec b
    ld hl, $8193
    rlca
    ld hl, $9301
    add c
    dec b
    ld hl, $8193
    rlca
    db $fd
    nop
    inc d
    ld l, h
    ret c

    inc c
    add hl, de
    sub $41
    ld bc, $a1b3
    dec b
    ld b, c
    or e
    and c
    rlca
    db $fd
    ld b, $7c
    ld l, h
    ld h, c
    ld bc, $13d5
    sub $c1
    dec b
    ld h, c
    push de
    inc de
    sub $c1
    rlca
    db $fd
    ld [bc], a
    adc d
    ld l, h
    ld hl, $9301
    add c
    dec b
    push de
    cpl
    db $fd
    ld [bc], a
    sbc e
    ld l, h
    sub $21
    ld bc, $8193
    dec b
    ld hl, $8193
    rlca
    db $fd
    ld [bc], a
    and [hl]
    ld l, h
    db $fd
    nop
    ld a, h
    ld l, h
    db $e3
    nop
    ret c

    inc c
    rst $28
    rrca
    rrca
    rrca
    jr nc, jr_03b_6cf2

    ld b, b
    ld b, b
    cp $db
    ld l, h
    cp $db
    ld l, h
    ld d, e
    cp $db
    ld l, h
    ld h, e
    cp $db
    ld l, h
    or e
    cp $db
    ld l, h
    ld [hl], e
    db $fd
    nop
    rst $00
    ld l, h
    rst $28
    ldh a, [rLCDC]
    ld b, b
    rst $28
    rrca
    and e
    ld b, b
    ld b, b
    rst $28
    ldh a, [$a3]
    rst $38
    ret nz

    db $f4
    ld l, h
    ld bc, $6d3c
    ld [bc], a
    ld a, b
    ld l, l
    inc bc

jr_03b_6cf2:
    or a
    ld l, l
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    nop
    and $00
    inc b
    rst $28
    ldh a, [$d8]
    inc c
    add b
    cp $1e
    ld l, l
    rrca
    cp $2d
    ld l, l
    ld bc, $2dfe
    ld l, l
    ld bc, $2dfe
    ld l, l
    ld bc, $2dfe
    ld l, l
    add hl, bc
    ret c

    inc c
    or a
    db $fd
    nop
    inc bc
    ld l, l
    push de
    cp e
    and e
    cp e
    and e
    or l
    call nc, $2513
    ld e, a
    ld c, e
    inc sp
    push de
    sbc a
    rst $38
    call c, $01b1
    call nc, $2222
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld hl, $ff21
    db $db
    nop
    and $00
    inc b
    rst $28
    rrca
    ret c

    inc c
    sub b
    cp $5e
    ld l, l
    rrca
    cp $6b
    ld l, l
    cp $6b
    ld l, l
    cp $6b
    ld l, l
    cp $6b
    ld l, l
    rrca
    ret c

    inc c
    rst $00
    db $fd
    nop
    ld b, [hl]
    ld l, l
    call nc, $334b
    ld c, e
    inc sp
    ld b, l
    ld h, e
    ld [hl], l
    xor a
    sbc e
    add e
    cpl
    rst $38
    call c, $d3c1
    inc hl
    call nc, $9393
    sub e
    db $fd
    ld [bc], a
    ld l, l
    ld l, l
    rst $38
    ret c

    inc c
    inc d
    call nc, $d521
    sub b
    call nc, $d520
    sub c
    call nc, $d521
    sub b
    call nc, $d520
    sub c
    call nc, $d521
    sub b
    call nc, $fd20
    rrca
    ld a, b
    ld l, l
    rrca
    ret c

    ld b, $27
    push de
    inc hl
    sub $91
    push de
    ld hl, $93d6
    push de
    inc hl
    sub $91
    push de
    ld hl, $93d6
    push de
    inc hl
    sub $91
    push de
    ld hl, $10fd
    sbc c
    ld l, l
    db $fd
    nop
    ld a, b
    ld l, l
    db $e3
    nop
    ret c

    inc c
    rrca
    rrca
    rst $28
    ldh a, [$63]

jr_03b_6dc0:
    rst $28
    rrca
    ld [hl], e
    ld [hl], e
    rst $28
    ldh a, [$73]
    db $fd
    nop
    cp l
    ld l, l
    add b
    call nc, $016d
    ld [de], a
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    ld l, [hl]
    jp c, $a000

    push hl
    ld [hl], a
    db $db
    nop
    and $01
    jr jr_03b_6dc0

    nop
    ldh a, [$ef]
    ldh a, [$d8]
    ld b, $71
    cp $01
    ld l, [hl]
    ret c

    inc c
    and c
    rrca
    rrca
    cp $08
    ld l, [hl]
    ret c

    inc c
    and c
    rrca
    rrca
    cp $01
    ld l, [hl]
    ret c

    inc c
    and c
    rrca
    db $fd
    nop
    db $e3

Jump_03b_6e00:
    ld l, l
    call nc, Call_03b_7080
    add b
    ld [hl], b
    rla
    rst $38
    call nc, Call_03b_7080
    add b
    ld [hl], b
    inc de
    add b
    db $d3
    rla
    rst $38
    db $db
    ld bc, $01e1
    ldh [$ef], a
    rrca
    ret c

    ld b, $81
    cp $01
    ld l, [hl]
    ret c

    inc c
    and c
    rrca
    rrca
    ret c

    ld b, $81
    cp $08
    ld l, [hl]
    ret c

    inc c
    and c
    rrca
    db $fd
    nop
    rla
    ld l, [hl]
    ret c

    ld b, $26
    sub $10
    jr nz, jr_03b_6e49

    rrca
    db $fd
    nop
    dec [hl]
    ld l, [hl]
    ret nz

    ld c, d
    ld l, [hl]
    ld bc, $6e9c
    ld [bc], a
    ld a, [$036e]
    adc e

jr_03b_6e49:
    ld l, a
    rst $28
    rrca
    pop hl
    ld [de], a
    dec h
    db $db
    ld [bc], a
    jp c, $8000

    push hl
    ld [hl], a
    ret c

    inc c
    and e
    rrca
    rlca
    call nc, $db17
    inc bc
    inc bc
    push de
    jr nc, @+$06

    jr nc, @+$06

    ld bc, $0230
    jr nc, jr_03b_6e6e

    inc sp
    inc bc
    jr nc, @+$06

jr_03b_6e6e:
    jr nc, @+$06

    ld bc, $0230
    jr nc, @+$04

    ld sp, $3101
    inc bc
    ld d, b
    inc b
    ld d, b
    inc b
    ld bc, $0250
    ld d, b
    nop
    ld d, b
    ld [bc], a
    ld d, e
    inc bc
    ld [hl], b
    inc b
    ld [hl], b
    ld [bc], a
    ld sp, $0630
    sub $a0
    push de
    db $10
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    and b
    call nc, $fd10
    nop
    ld e, a
    ld l, [hl]
    rst $28
    ldh a, [$e1]
    db $10
    inc hl
    db $db
    ld [bc], a
    ret c

    inc c
    rst $00
    push de
    jr nc, jr_03b_6ea9

jr_03b_6ea9:
    db $d3
    dec [hl]
    stop
    call nc, $00c0
    or b
    nop
    and b
    nop
    sub b
    nop
    add b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld d, c
    jr nc, jr_03b_6ebf

jr_03b_6ebf:
    ld d, b
    nop
    ld [hl], b
    nop
    db $db
    inc bc
    ret c

    inc c
    rst $00
    adc a
    and a
    rst $00
    xor c
    sub b
    nop
    and b
    nop
    sub c
    sub a
    ld bc, $0161
    ld d, c
    call c, $e1b7
    db $10
    inc h
    db $d3
    ld e, $d8
    ld b, $c7
    call c, $e1c5
    db $10
    inc hl
    nop
    jr nz, jr_03b_6f27

    rra
    call nc, $03cf
    db $d3
    ld sp, $d401
    pop bc
    ld bc, $0da5
    ld [hl], a
    and a
    db $fd
    nop
    push bc
    ld l, [hl]
    rst $28
    rst $38
    pop hl
    ld [$d812], sp
    inc c
    dec d
    rrca
    db $d3
    ld d, b
    nop
    ld b, b
    nop
    jr nc, jr_03b_6f0a

jr_03b_6f0a:
    jr nz, jr_03b_6f0c

jr_03b_6f0c:
    push de
    ld [hl], $70
    add e
    call nc, $00c0
    push de
    add b
    nop
    jr nc, jr_03b_6f18

jr_03b_6f18:
    call nc, $00c0
    push de
    jr nc, jr_03b_6f1e

jr_03b_6f1e:
    add c
    add b
    call nc, $c0b0
    nop
    push de
    add b
    nop

jr_03b_6f27:
    call nc, $00c0
    push de
    jr nc, @+$04

    call nc, $d5c3
    ld d, e
    call nc, $00c0
    push de
    ld d, b
    nop
    sub $c0
    nop
    call nc, $00a0
    sub $c0

Call_03b_6f3f:
    nop
    push de
    ld d, c
    ld d, b
    call nc, $9080
    nop
    push de
    ld d, b
    nop
    call nc, $0270
    sub c
    ld bc, $d5c1
    and e
    db $d3
    stop
    push de
    and b
    nop
    ld d, b
    nop
    db $d3
    stop
    push de
    ld d, b
    nop
    and c
    and b
    call nc, $d3c0
    stop
    push de
    and b
    nop
    db $d3
    stop
    jr nc, jr_03b_6f71

    inc de
    push de

jr_03b_6f71:
    inc sp
    call nc, $00c0
    push de
    jr nc, jr_03b_6f78

jr_03b_6f78:
    sub $a0
    nop
    call nc, $00a0
    sub $a0
    nop
    call nc, $a0a1
    ld b, $d5
    scf
    db $fd
    nop
    rrca
    ld l, a
    db $e3
    inc bc
    ret c

    inc c
    rrca
    rrca
    cp $a1
    ld l, a
    cp $a1
    ld l, a
    cp $a1
    ld l, a
    cp $a1
    ld l, a
    db $fd
    nop
    sub c
    ld l, a
    ld [hl], c
    add c
    ld sp, $8181
    ld sp, $8181
    ld [hl], c
    ld sp, $3181
    add c
    add c
    ld sp, $ff81
    ret nz

    cp [hl]
    ld l, a
    ld bc, $709d
    ld [bc], a
    ld e, d
    ld [hl], c
    inc bc
    jr c, jr_03b_7030

    rst $28
    rrca
    pop hl
    ld [de], a
    inc hl
    jp c, $9700

    push hl
    ld [hl], a
    pop hl
    inc d
    inc hl
    db $db
    nop
    ret c

    inc c
    and a
    push de
    inc sp
    inc bc
    ld b, e
    inc bc
    ld [hl], e
    inc bc
    sbc e
    ret c

    ld [$d4a7], sp

Jump_03b_6fdc:
    ld de, $91d5
    ld [hl], c
    db $db
    nop
    ret c

    inc c
    and a
    push de
    ld h, b
    ld bc, $6220
    add b
    sub b
    ld bc, $d460
    inc hl
    ld b, e
    push de
    jp Jump_03b_73a3


    ld h, b
    nop
    jr nz, jr_03b_7059

    sub d
    add b
    sub b
    nop
    ld h, b
    sub b
    call nc, Call_03b_5323
    ld b, e
    push de
    and e
    jp $00b0


    ld h, b
    or b
    call nc, RST_20
    push de
    or b
    call nc, Call_03b_6320
    jr nz, jr_03b_7014

jr_03b_7014:
    push de
    and b
    nop
    or e
    ld bc, $06d8
    and a
    or b
    nop
    or b
    nop
    or c
    ld bc, $01b1
    add c
    ld bc, $0181
    ret c

    ld [$91a5], sp
    call nc, Call_03b_4121
    sub l

jr_03b_7030:
    ld [hl], l
    ld b, l
    dec h
    push de
    or l
    call nc, $d515
    sub l
    db $db
    ld [bc], a
    ret c

    inc c
    and l
    and d
    sub d
    ld [hl], e
    ld hl, $5141
    ld [hl], c
    jp $91a1


    ld [hl], c
    sub c
    and c
    sub e
    ld [hl], e
    ld d, e
    ld b, e
    call nc, $d521
    pop bc
    sub c
    ld h, e
    ld [hl], c
    ret c

    ld b, $a5

jr_03b_7059:
    sub [hl]
    call nc, $2710
    ret c

    ld [$d5a5], sp
    jr nz, jr_03b_7063

jr_03b_7063:
    jr nz, jr_03b_7065

jr_03b_7065:
    jr nz, jr_03b_7067

jr_03b_7067:
    dec h
    ret c

    ld b, $a5
    ld b, $d4
    ld b, b
    ld d, a
    ret c

    ld [$d5a5], sp
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, l
    dec b
    ret c

    inc c
    and l
    sub $c0

Call_03b_7080:
    ld [hl], b
    ret nz

    push de
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b

Call_03b_7087:
    ret nz

    call nc, $d550
    ret nz

    call nc, $7050
    ret nz

    ld [hl], b

Call_03b_7091:
    ld d, b

Call_03b_7092:
    push de
    ret nz

    ld [hl], e
    ld b, e
    sub $c3
    inc bc
    db $fd
    nop
    ldh [$6f], a
    rst $28
    ldh a, [$e1]
    inc d
    inc hl
    db $db
    ld [bc], a
    ret c

    inc c
    rst $00
    rst $10
    or e
    ld bc, $06d8
    rst $00
    or b
    nop
    sub $b0
    nop
    rst $10
    sub a
    inc bc
    sub b
    nop
    sub $90
    nop
    rst $10
    ld [hl], a
    inc bc
    ld [hl], b
    nop
    sub $70

Call_03b_70c1:
    nop
    ret c

    inc c
    rst $00
    rst $10
    sbc e
    ret c

    ld [$91c7], sp
    sub $11
    ld b, c
    db $db
    ld [bc], a
    ret c

    inc c
    jp nz, $25d6

    jr nz, jr_03b_7067

    ld hl, $9121
    ld hl, $c5d7
    ret nz

    sub $a0
    rst $10
    pop bc
    pop bc
    pop bc
    pop bc
    cp $4e
    ld [hl], c
    and l
    and b
    sub $c0
    ret c

    ld [$d7c2], sp
    pop bc
    pop bc
    pop bc
    sub $c1
    pop bc
    pop bc
    ret c

    inc c
    jp nz, Jump_03b_4efe

    ld [hl], c
    call c, $d6c7
    ld [hl], e
    ld bc, $06d8
    jp nz, Jump_03b_7171

    ld [hl], e
    ld [hl], e
    ld b, e
    ld b, e
    ret c

    ld [$d6c2], sp
    sub c
    sub c

Call_03b_7111:
    sub c
    rst $10
    sub l
    db $fd
    inc bc
    ld c, $71
    sub $91
    sub c
    sub c
    ret c

    inc c
    rst $00
    ld [hl], b
    ld b, b
    db $10
    rst $10
    sub b
    db $db
    inc bc
    call nc, Call_03b_4525
    ld d, e
    ld [hl], l
    jp $91a1


    and c
    sub l
    ld b, c

Call_03b_7131:
    ld bc, $9141
    ld b, c
    ld h, c
    ld bc, $7561
    sub e
    and a
    ld bc, $91a1
    ld [hl], c
    and a
    inc bc
    sub c
    and c

Call_03b_7143:
    rlc e
    ld c, e
    ld b, b
    jr nz, jr_03b_7159

    ld b, b
    db $fd
    nop
    adc $70
    or l
    or b
    sub $b0
    rst $10
    or c
    or c
    sub $b1
    rst $10
    or c

jr_03b_7159:
    rst $38
    rst $28
    rst $38
    pop hl
    ld [de], a
    inc hl
    ret c

    inc c

Call_03b_7161:
    inc d
    pop hl

Call_03b_7163:
    jr jr_03b_7188

    call nc, $01b3
    ret c

    ld b, $14
    ld h, b
    nop
    or b
    nop
    db $d3
    rla

Jump_03b_7171:
    inc bc
    call nc, $0090
    db $d3
    stop
    daa
    inc bc
    call nc, $00b0
    db $d3
    jr nz, jr_03b_7180

Jump_03b_7180:
jr_03b_7180:
    ret c

Call_03b_7181:
    inc c

Call_03b_7182:
    inc d
    ld c, e
    ret c

    ld [$7114], sp

jr_03b_7188:
    ld h, c
    ld b, c
    pop hl
    jr jr_03b_71b0

    ret c

    inc c
    inc d
    db $d3
    jr nz, @+$03

    call nc, $fe90
    cpl
    ld [hl], d
    pop hl
    dec h
    inc de
    jr nz, jr_03b_719d

jr_03b_719d:
    call nc, $d390

jr_03b_71a0:
    jr nz, jr_03b_71a0

    cpl

Call_03b_71a3:
    ld [hl], d
    ld h, b
    nop
    jr nz, @+$62

    or a
    or b
    nop
    jp nc, RST_10

    dec hl
    ld b, e

jr_03b_71b0:
    daa
    rla

Call_03b_71b2:
    db $d3
    or a
    jp nc, $9013

    ld b, b
    db $10
    db $d3
    sub b
    call c, $d615
    and b
    nop
    and b
    ld [bc], a

Call_03b_71c2:
    ret c

Call_03b_71c3:
    ld b, $15
    and b
    nop
    and b
    nop
    and c
    ld bc, $01a1
    push de
    and c
    ld bc, $a3d6
    pop bc
    ld bc, $05c1
    ret nz

    nop
    ret nz

    nop
    pop bc
    ld bc, $01c1
    push de
    pop bc
    ld bc, $91a3
    ld bc, $91d6
    dec b
    sub b
    nop
    sub b
    nop
    sub c
    ld bc, $0191
    push de
    sub c
    ld bc, $91d6
    ld bc, $21d5
    add hl, bc
    jr nz, jr_03b_71fa

jr_03b_71fa:
    jr nz, jr_03b_71fc

jr_03b_71fc:
    ld hl, $2101
    ld bc, $61d4
    ld bc, $d523
    ld [hl], a
    ret c

    ld [$d615], sp
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], l
    dec b
    call nc, $d515
    stop
    stop
    stop
    dec d
    dec b
    ret c

    inc c
    dec d
    sub $cf
    rst $00
    push de
    ld [hl], e
    ld b, b
    nop
    sub $90
    push de
    db $10
    db $fd
    nop
    adc d
    ld [hl], c
    db $d3
    ld h, a
    ld hl, $9361
    ld [hl], e
    inc hl
    ld b, e
    rst $38
    db $e3
    inc b
    ret c

    inc c
    push bc
    jr nc, jr_03b_726f

    db $fd
    inc bc
    inc a
    ld [hl], d
    cp $b0
    ld [hl], d
    ret c

    ld b, $fe
    sbc d
    ld [hl], d
    cp $9a
    ld [hl], d
    cp $a8
    ld [hl], d
    dec sp
    ld sp, $d831
    ld [$2131], sp
    ld hl, $3131
    ld d, c
    ret c

    ld b, $fe

jr_03b_725f:
    sbc d
    ld [hl], d
    cp $9a
    ld [hl], d
    ret c

    ld [$3131], sp
    ld sp, $fdc5
    inc b
    ld h, [hl]
    ld [hl], d
    ret c

jr_03b_726f:
    ld b, $fe
    xor b
    ld [hl], d
    cp $a8
    ld [hl], d
    cp $9a
    ld [hl], d
    cp $a8
    ld [hl], d
    ret c

    ld b, $30
    jr nc, jr_03b_72b1

    jr nc, jr_03b_72b3

    jr nc, jr_03b_72b5

    jr nc, jr_03b_725f

    ld [$3131], sp
    ld sp, $fdcb
    ld [bc], a
    ld a, h
    ld [hl], d
    ret c

    inc c
    rst $08
    cp $b0
    ld [hl], d
    db $fd
    nop
    ld b, [hl]
    ld [hl], d
    ld e, e
    ld sp, $3331
    inc sp
    jr nz, jr_03b_72c1

    jr nz, jr_03b_72c3

jr_03b_72a3:
    jr nz, jr_03b_72c5

    jr nz, jr_03b_72c7

    rst $38
    ld e, e
    ld sp, $3331
    inc sp
    ld d, e
    inc sp
    rst $38
    ret c

jr_03b_72b1:
    ld b, $20

jr_03b_72b3:
    jr nz, @+$22

jr_03b_72b5:
    jr nz, jr_03b_72d7

    jr nz, jr_03b_72d9

    jr nz, @+$22

    jr nz, jr_03b_72dd

    jr nz, jr_03b_72df

    jr nz, jr_03b_72e1

jr_03b_72c1:
    jr nz, jr_03b_72e3

Call_03b_72c3:
jr_03b_72c3:
    jr nz, jr_03b_72e5

jr_03b_72c5:
    jr nz, jr_03b_72e7

jr_03b_72c7:
    jr nz, jr_03b_72e9

    jr nz, jr_03b_72a3

    ld [$3131], sp
    ld d, c
    rst $38
    add b
    reti


    ld [hl], d
    ld bc, $73eb
    ld [bc], a

jr_03b_72d7:
    pop hl
    ld [hl], h

jr_03b_72d9:
    jp c, $c500

    push hl

jr_03b_72dd:
    ld [hl], a
    rst $28

jr_03b_72df:
    rrca
    pop hl

jr_03b_72e1:
    ld [de], a
    dec h

jr_03b_72e3:
    db $db
    ld [bc], a

jr_03b_72e5:
    ret c

    inc c

jr_03b_72e7:
    ld d, a
    add hl, bc

jr_03b_72e9:
    call nc, $0915
    dec d
    rrca
    push de
    jp $13d4


    inc sp
    call c, $0360
    rrca
    add hl, bc
    add c
    and c
    or c
    rlca
    sub c
    add c
    ld h, c
    db $d3
    dec d
    ret c

    ld b, $67
    inc hl
    add hl, sp
    ld bc, $ffef
    call nc, $efc7
    rrca
    push de
    or b
    jp z, $13d4

    ld d, e
    adc e
    cp e
    add e
    inc bc
    or e
    db $d3
    inc hl
    ld d, c
    ld bc, $a7d5
    call nc, Call_03b_6317
    dec bc
    ld d, b
    ld l, d
    add c
    ld bc, $83a3
    rlca
    call c, $fe52
    ld a, a
    ld [hl], e
    ld sp, $c1d4
    and c
    pop bc
    and c
    pop bc
    db $d3
    ld sp, $c1d4
    db $d3
    ld sp, $c1d4
    and c
    pop bc
    and c
    pop bc
    and c
    pop bc
    cp $91
    ld [hl], e
    call c, $b152
    add c
    ld d, c
    ld hl, $5181
    ld hl, $b1d4
    db $d3
    ld d, c
    ld hl, $b1d4
    add c
    or c
    add c
    ld d, c
    ld hl, $7ffe
    ld [hl], e
    ld sp, $d411
    sub c
    db $d3
    ld de, $91d4
    db $d3
    ld de, $1131
    ld sp, $d411
    sub c
    db $d3
    ld de, $91d4
    db $d3
    ld de, $91d4
    db $d3
    ld de, $91fe
    ld [hl], e
    db $fd
    nop
    push hl
    ld [hl], d
    db $d3
    ld d, c
    ld de, $a1d4
    db $d3
    ld de, $a1d4
    db $d3
    ld de, $1151
    db $fd
    ld [bc], a
    ld a, a
    ld [hl], e
    rst $38
    db $d3
    ld sp, $c1d4
    add c
    pop bc
    add c
    pop bc
    db $d3
    ld sp, $c1d4
    db $d3
    ld sp, $c1d4
    add c
    pop bc

Jump_03b_73a3:
    add c
    pop bc
    db $d3
    ld sp, $a161
    ld d, c
    ld de, $a1d4
    db $d3
    ld d, c
    ld de, $a1d4
    ld d, c
    db $d3
    ld de, $a1d4
    ld d, c
    ld de, $51a1
    ld de, $a1d5
    call nc, $a161
    db $d3
    ld de, $a1d4
    db $d3
    ld de, $a1d4
    db $d3
    ld de, $fd61
    ld [bc], a
    cp [hl]
    ld [hl], e
    call nc, $c181
    db $d3
    ld sp, $c1d4
    db $d3
    ld sp, $c1d4
    db $d3
    ld sp, $fd81
    ld [bc], a
    ret nc

    ld [hl], e
    call c, $db50
    nop
    ld e, a
    adc a
    db $db
    ld [bc], a
    rst $38
    pop hl
    ld [de], a
    dec h
    db $db
    inc bc
    rst $28
    ldh a, [$d8]
    ld b, $67
    rrca
    inc b
    call nc, $d380
    jr nc, @+$5a

    rrca
    inc b
    call nc, $d3a0
    ld d, b
    ld l, b
    ret c

    inc c
    ld [hl], a
    add hl, bc
    ld sp, $d411
    sub c
    add e
    and e
    jp $06d8


    sub e
    call c, $db97
    ld [bc], a
    push de
    add [hl]
    call nc, $3a20
    nop
    ld de, $1f01
    ld h, a
    inc bc
    ld d, e
    inc bc
    ld d, e
    ld h, e
    add e
    ld d, e
    ld de, $1301
    push de
    and c
    ld h, b
    and b
    call nc, $531f
    add c
    ld bc, $3953
    nop
    rst $28
    rst $38
    ld c, b
    rst $28
    ldh a, [$db]
    nop
    db $d3
    jr nz, jr_03b_7479

    ld de, $1f01
    ld l, e
    ld d, e
    inc bc
    ld d, e
    ld h, e
    add c
    call nc, $d3a0
    db $10
    ld d, b
    and d
    ld d, c
    ld bc, $1153
    ld bc, $d413
    and c
    ld bc, $d3c3
    ld de, $80d4
    ret nz

    db $d3
    ld b, b
    ld e, d
    ld sp, $3701
    db $db
    ld bc, $53d4
    add d
    sub b
    xor a
    push de
    and e
    call nc, $0111
    ld d, e
    dec sp
    inc de
    inc bc
    push de
    jp $d403


    ld h, a
    adc e

jr_03b_7479:
    ld h, a
    inc bc
    ld d, a
    inc sp
    ld de, $d501
    jp $11d4


    dec b
    push de
    jp $d403


    inc de
    push de
    xor a
    inc bc
    call nc, $5363
    inc sp
    dec de
    push de
    jp $d403


    inc de
    inc sp
    ld b, e
    ret c

    inc c
    add e
    ld e, a
    call c, $3380
    inc hl
    ld h, e
    ret c

    ld b, $80
    add [hl]
    sub b
    call c, $ab87
    ld d, c
    ld bc, $0151
    ld d, d
    sub b
    and e
    ld d, c
    ld bc, $3153
    ld bc, $3b23
    push de
    jp Jump_03b_63d4


    adc e
    ld sp, $3101
    ld bc, $8333
    ld sp, $b000
    set 2, e
    inc de
    call nc, $d5a7
    and e
    call nc, $d813
    inc c
    add a
    ld l, c
    add c
    ld h, c
    ld d, c
    scf
    ld bc, $c1d5
    call nc, $3111
    ld e, a
    db $fd
    nop
    ld a, [c]
    ld [hl], e
    rst $28
    rst $38
    pop hl
    ld [de], a
    dec h
    ret c

    inc c
    dec h
    push de
    ld de, $d481
    ld sp, $d559
    ld de, $d4a1
    ld d, c
    ld l, c
    push de
    ld de, $d481
    ld sp, $8359
    ld [hl], e
    ld h, e
    push de
    pop bc
    add c
    ld de, $d481
    ld sp, $d559
    ld hl, $b181
    call nc, $0131
    ld hl, $5131
    push de
    ld sp, $00a0
    call nc, $6051
    nop
    sub a
    push de
    add c
    call nc, Call_03b_6131
    sub c
    pop bc
    add b
    sub h
    push de
    ld de, $d481
    ld sp, $8151
    db $d3
    ld de, $5131
    push de
    ld hl, $d4b1
    ld sp, $5121
    ld sp, $8061
    nop
    push de
    ld h, a
    call nc, $d3a1
    stop
    ld sp, $0050
    sub $81
    push de
    ld sp, $7181
    and c
    add c
    pop bc
    call nc, $fe31
    ld l, c
    ld [hl], l
    call nc, Call_03b_5717
    add a
    rst $00
    or a
    add a
    ld d, a
    daa
    ret c

    inc c
    dec h
    cp $69
    ld [hl], l
    call nc, $d517
    add a
    ld d, a
    scf
    db $fd
    nop
    db $e3
    ld [hl], h
    push de
    ld h, e
    ld bc, $0060
    ld h, e
    ld bc, $0010
    ld h, e
    ld bc, $0060
    ld h, b
    nop
    ld h, c
    ld bc, $0060
    ld d, e
    ld bc, $00c0
    ld d, b
    nop
    ld d, c
    ld bc, $00c0
    and e
    ld bc, $00a0
    sub b
    nop
    sub b
    nop
    add b
    nop
    ld [hl], b
    nop
    inc sp
    ld bc, $00a0
    jr nc, jr_03b_7598

jr_03b_7598:
    jr nc, jr_03b_759a

jr_03b_759a:
    ld d, b
    nop
    ld h, b
    nop
    add e
    ld bc, $30d4
    nop
    push de
    add b
    nop

jr_03b_75a6:
    add b
    nop
    and b
    nop
    or b
    ret c

    ld b, $25
    nop
    ret nz

    rst $38
    add b
    cp d
    ld [hl], l
    ld bc, $75d6
    ld [bc], a
    push hl
    ld [hl], l
    jp c, $a000

    push hl
    ld [hl], a
    db $db
    ld bc, $11e6
    jr jr_03b_75a6

    nop
    ldh a, [$ef]
    ldh a, [$d8]
    inc c
    and a
    pop de
    add e
    ld [hl], e
    add e
    ld [hl], e
    rrca
    db $fd
    nop
    ret


    ld [hl], l
    db $db
    ld bc, $13e1
    add sp, -$28
    inc c
    and a
    ld bc, $0fef
    db $fd
    nop
    ret


    ld [hl], l
    ret c

    inc c
    ld h, $e1
    db $10
    ld b, h
    inc bc
    db $fd
    nop
    ret


    ld [hl], l
    ret nz

    db $fc
    ld [hl], l
    ld bc, $7648
    ld [bc], a
    ld a, l
    db $76
    inc bc
    db $f4
    db $76
    jp c, Jump_03b_6e00

    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    inc d
    inc hl
    db $db
    ld [bc], a
    ret c

    inc c
    or d
    rrca
    rrca
    call c, $d4b7
    jr nc, @+$12

    push de
    add b
    call nc, $3010
    db $10
    push de
    add b
    call nc, $3010
    db $10
    push de
    add b
    call nc, $3010
    db $10
    push de
    add b
    call nc, $5010
    db $10
    push de
    and b
    call nc, $5010
    db $10
    push de
    and b
    call nc, $5010
    db $10
    push de
    and b
    call nc, $5010
    db $10
    ret c

    ld b, $b7
    ld [hl], b
    nop
    ld [hl], b
    nop
    ret c

    inc c
    or a
    ccf
    rst $38
    pop hl
    inc d
    inc hl
    db $db
    ld bc, $0cd8
    jp nc, $f0ef

    ret c

    inc c
    ret c

    rst $10
    ld l, e
    ld bc, $06d8
    rst $10
    ld h, b
    nop
    ld h, b
    nop
    sub $63
    inc bc
    ld h, e
    inc bc
    ld h, e
    inc bc
    ld h, e
    inc bc
    db $db
    inc bc
    ret c

    inc c
    rst $10
    call nc, $ac8f
    nop
    ret c

    ld b, $d7
    and b
    nop
    and b
    nop
    ret c

    inc c
    rst $10
    xor a
    rst $38
    rst $28
    rst $38
    pop hl
    db $10
    inc hl
    ret c

    inc c
    dec d
    jp nc, $d310

    add b
    ld b, b
    db $10
    add b

jr_03b_768c:
    ld b, b

jr_03b_768d:
    db $10
    call nc, $d380

jr_03b_7691:
    ld b, b
    db $10
    call nc, $4080
    db $d3
    db $10

jr_03b_7698:
    call nc, $4080
    db $10

jr_03b_769c:
    add b

jr_03b_769d:
    ld b, b
    db $10
    push de

jr_03b_76a0:
    add b

jr_03b_76a1:
    call nc, Call_03b_4010

jr_03b_76a4:
    add b

jr_03b_76a5:
    db $10
    ld b, b
    add b

jr_03b_76a8:
    db $d3

jr_03b_76a9:
    db $10
    call nc, $d380

jr_03b_76ad:
    db $10
    ld b, b
    add b

jr_03b_76b0:
    db $10

jr_03b_76b1:
    sub $30
    push de

jr_03b_76b4:
    jr nc, jr_03b_768c

    jr nc, jr_03b_768d

jr_03b_76b8:
    jr nc, @-$28

    jr nc, jr_03b_7691

jr_03b_76bc:
    jr nc, @-$28

    jr nc, @-$29

jr_03b_76c0:
    jr nc, jr_03b_7698

    jr nc, @-$29

jr_03b_76c4:
    jr nc, jr_03b_769c

    jr nc, jr_03b_769d

jr_03b_76c8:
    jr nc, jr_03b_76a0

    jr nc, jr_03b_76a1

    jr nc, jr_03b_76a4

    jr nc, jr_03b_76a5

    jr nc, jr_03b_76a8

    jr nc, jr_03b_76a9

    jr nc, @-$28

    jr nc, jr_03b_76ad

    jr nc, jr_03b_76b0

    jr nc, jr_03b_76b1

    jr nc, jr_03b_76b4

    jr nc, @-$29

    jr nc, jr_03b_76b8

    jr nc, @-$29

    jr nc, jr_03b_76bc

    jr nc, @-$29

    jr nc, jr_03b_76c0

    jr nc, @-$29

    jr nc, jr_03b_76c4

    jr nc, @-$29

    jr nc, jr_03b_76c8

    ccf
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    swap c
    or b
    or b
    ret c

    ld b, $43
    ld [hl], e
    ld b, e
    ld [hl], e
    or e
    ld [hl], e
    or e
    ld sp, $fe31
    ld e, $77
    cp $1e
    ld [hl], a
    ret c

    inc c
    rst $08
    rst $38
    sub b
    add b
    add b
    sub b
    add b
    add b
    sub b
    add b
    add b
    sub b
    add b
    add b
    rst $38
    sub c
    add c
    add c
    add c
    sub c
    add c
    add c
    add c
    sub c
    add c
    add c
    add c
    sub c
    add c
    add c
    add c
    rst $38
    add b
    add hl, sp
    ld [hl], a
    ld bc, $7899
    ld [bc], a
    ld [hl-], a
    ld a, c
    inc bc
    jp c, $a000

    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    ld b, $24
    db $db
    nop
    ret c

    inc c
    or e
    rrca
    rrca
    rrca
    rrca
    cp $fd
    ld [hl], a
    call c, $d393
    ld sp, $43dc
    ld sp, $93dc
    ld [hl], c
    call c, Call_03b_7143
    call c, $c193
    call c, $c143
    call c, $a193
    call c, $a143
    cp $7f
    ld a, b
    call c, $dc93
    sub e
    ld h, c
    call c, $6183
    call c, $3193
    call c, $3143
    call c, $d493
    pop bc
    call c, $c143
    call c, $8193
    call c, $8143
    cp $fd
    ld [hl], a
    call c, $d393
    ld sp, $43dc
    ld sp, $93dc
    add c
    call c, $8143
    call c, $c193
    call c, $c143
    call c, $8193
    call c, $8143
    cp $7f
    ld a, b
    call c, $d293
    ld de, $43dc
    ld de, $93dc
    db $d3
    add c

Call_03b_77b0:
    call c, $8143
    call c, Call_03b_5193
    call c, Call_03b_5143
    call c, $1193
    call c, $1143
    push de
    ld h, c
    and c
    call nc, $5111

Call_03b_77c5:
    ld h, c
    ld de, $a1d5
    ld h, c
    push de
    ld de, $8151
    pop bc
    call nc, $d511
    add c
    ld d, c
    ld de, $a161
    call nc, $5111
    ld h, c
    ld de, $a1d5
    ld h, c
    db $fd
    ld [bc], a
    jp z, $7177

    and c
    call nc, Call_03b_7111
    and c
    ld de, $a1d5
    ld [hl], c
    add c
    call nc, $3111
    ld h, c
    add c
    ld h, c
    ld sp, $d511
    rst $00
    rst $00
    db $fd
    nop
    ld c, h
    ld [hl], a
    call c, $d383
    ld de, $43dc
    ld de, $83dc
    add c
    call c, $8143
    call c, $d283
    ld de, $43dc
    ld de, $83dc
    db $d3
    add c
    call c, $8143
    call c, $3183
    call c, $3143
    call c, $a183
    call c, $a143
    call c, $d283
    ld sp, $43dc
    ld sp, $83dc
    db $d3
    and c
    call c, $a143
    call c, Call_03b_5183
    call c, Call_03b_5143
    call c, $c183
    call c, $c143
    call c, $d283
    ld d, c
    call c, Call_03b_5143
    call c, $d383
    pop bc
    call c, $c143
    call c, $2183
    call c, $2143
    call c, $8183
    call c, $8143
    call c, $b183
    call c, $b143
    call c, $8183
    call c, $8143
    call c, $1183
    call c, $1143
    call c, $6183
    call c, $6143
    call c, $d283
    ld de, $43dc
    ld de, $83dc
    db $d3
    ld h, c
    call c, $6143
    rst $38
    call c, $d393
    add c
    call c, $8183
    call c, $6183
    call c, $6143
    call c, $3183
    call c, $3143
    call c, $8183
    call c, $8143
    rst $38
    db $db
    ld bc, $08e1
    inc h
    rst $28
    rst $38
    ret c

    inc c
    and e
    db $d3
    ld de, $63dc
    ld de, $a3dc
    add c
    call c, $8163
    call c, $c1a3
    call c, $c163
    call c, Call_03b_71a3
    call c, Call_03b_7163
    db $fd
    inc bc
    and b
    ld a, b
    call c, $11a3
    call c, $1163
    call c, $81a3
    call c, $8163
    call c, $c1a3
    call c, $c163
    call c, $d2a3
    ld sp, $63dc
    ld sp, $b5dc
    cp $15
    ld a, c
    sub $73
    push de
    inc de
    ld [hl], e
    and e
    sub $83
    push de
    inc de
    inc sp
    add e
    ld h, e
    inc sp
    sub $c3
    add e
    cp $15
    ld a, c
    sub $83
    push de
    inc de
    ld h, e
    add e
    inc de
    ld h, e
    add e
    ld h, e
    inc de
    ld d, e
    add e
    call nc, $dc13
    or a
    sub $6f
    rra
    ld l, a
    rra
    ld l, a
    ld a, a
    adc a
    rst $10
    add a
    call c, $d357
    jr nc, @+$62

    add l
    db $fd
    nop
    rst $10
    ld a, b
    sub $13
    add e
    push de
    ld d, e
    sub $83
    inc sp
    and e
    push de
    ld h, e
    sub $a3
    ld d, e
    jp $83d5


    ld h, e
    ld d, e
    inc hl
    sub $b3
    add e
    ld h, e
    push de
    inc de
    and e
    inc de
    rst $38
    pop hl
    ld [de], a
    inc h
    ret c

    inc c
    inc de
    rst $28
    ldh a, [rIF]
    rrca
    rrca
    rlca
    db $d3
    ld d, e
    ld h, e
    call c, $d312
    add e
    inc bc
    add e
    inc bc
    ld d, e
    inc bc
    ld d, e
    ld h, e
    add e
    ld h, e
    ld d, e
    jp $0127


    ld hl, $5131
    ld l, c
    add c
    ld h, c
    ld d, c
    scf
    call nc, $d3a3
    inc sp
    ld e, e
    ld h, c
    ld d, c
    dec sp
    ld d, c
    ld h, c
    add e
    inc bc
    add e
    inc bc
    ld d, e
    inc bc
    ld d, e
    ld h, e
    add e
    ld h, e
    ld d, e
    jp $0127


    ld hl, $5131
    ld l, c
    add c
    ld h, c
    ld d, c
    dec sp
    ld de, $1f31
    dec de
    inc bc
    call c, $a124
    add c
    and c
    pop bc
    jp nc, $d313

    add e
    ld h, e
    ld d, e
    inc sp
    inc de
    and c
    add c
    and c
    pop bc
    jp nc, $d313

    add e
    jp nc, $d863

    ld [$5124], sp
    ld h, c
    ld d, c
    ret c

    inc c
    inc h
    inc sp
    inc de
    db $d3
    and c
    add c
    and c
    pop bc

Call_03b_79a7:
    jp nc, $d313

    add e
    and c
    add c
    and c
    pop bc
    jp nc, $2313

    dec sp
    inc de
    db $d3
    bit 2, c
    ld h, c
    db $fd
    nop
    ld b, c
    ld a, c
    add b
    add $79
    ld bc, $7a2c
    ld [bc], a
    sub $7a
    inc bc
    jp c, $d000

    push hl

jr_03b_79ca:
    ld [hl], a
    rst $28
    rrca
    ret c

    ld b, $b7
    ld [bc], a
    db $db
    nop
    ret c

    inc c
    or a
    cp $17
    ld a, d
    rrca
    cp $17
    ld a, d
    rrca
    rrca
    rrca
    call c, $d6b1
    ret nz

    push de
    jr nc, jr_03b_7a47

    and b
    ret nz

    and b
    ret nz

    call nc, $6130
    ret c

    ld [$30b1], sp
    ld d, b
    jr nc, jr_03b_79ca

    jp nz, $d8a2

    inc c
    or c
    ret nz

    and b
    jr nc, @+$52

    call nc, $d861
    ld [$d5b1], sp
    ret nz

    call nc, $d530
    ret nz

    ret c

    inc c
    or l
    and b
    nop
    ret nz

    ret nz

    and b
    nop
    ld h, c
    db $fd
    nop
    db $d3
    ld a, c
    push de
    ret nz

    nop
    and b
    nop
    ret nz

    nop
    and b
    nop
    call nc, TimerOverflowInterrupt
    jr nc, jr_03b_7a25

jr_03b_7a25:
    push de
    ret nz

    nop
    call nc, RST_30
    rst $38
    rst $28
    ldh a, [$d8]
    ld b, $a1
    db $db
    nop
    pop hl
    db $10
    inc h
    ld [bc], a

jr_03b_7a37:
    ret c

    ld b, $a2
    cp $7a
    ld a, d
    cp $7a
    ld a, d
    call c, $d6a7
    ccf
    ld l, a
    ret c

    inc c

jr_03b_7a47:
    and a
    ld e, a
    push de
    ld h, b
    and b
    ret nz

    call nc, $5030
    jr nc, @+$52

    and b
    pop bc
    ret c

    ld [$a0a7], sp
    ret nz

    and b
    ld h, d
    ld [hl-], a
    ret c

    inc c
    and a
    ld d, b
    jr nc, jr_03b_7a37

    and b
    ret nz

    call nc, $d8a1
    ld [$60a7], sp
    and b
    ld h, b
    ret c

    inc c
    and a
    ld d, b
    nop
    ld h, b
    ld h, b
    ld d, b
    nop
    ld sp, $00fd
    scf
    ld a, d
    call c, $d4a1
    ld d, e
    sub $53
    call nc, $d653
    ld d, e
    call nc, $a3c3
    ld h, e
    and e
    call c, $3033
    ld h, b
    call c, $3063
    ld h, b
    call c, $3093
    ld h, b
    call c, $30c3
    ld h, b
    call c, $30e3
    ld h, b
    call c, $30a3
    ld h, b
    call c, $3083
    ld h, b
    call c, $3053
    ld h, b
    call c, $d573
    ret nz

    call nc, $dc50
    and e
    push de
    ret nz

    call nc, $dc50
    or e
    push de
    and b
    call nc, $dc30
    jp $a0d5


    call nc, $dc30
    db $d3
    push de
    ld d, b
    ret nz

    call c, $50e3
    ret nz

    call c, $a0f3
    call nc, $dc30
    di
    push de
    and b
    call nc, $ff30
    rst $28
    rst $38
    pop hl
    ld d, $24
    ret c

    ld b, $10
    db $d3
    and b
    ret nz

    jp nc, Jump_03b_5c30

    jr nc, jr_03b_7b36

    and b
    rst $08
    call c, $d514
    ld l, a

jr_03b_7aec:
    ld e, l
    call c, $d210
    ld d, b
    ld h, b
    ld e, h
    jr nc, jr_03b_7b45

    and b
    rst $08
    call c, $d514
    ld l, a
    ld e, a
    call c, $d413
    ld h, c
    and c
    pop bc
    db $d3
    ld sp, $3151
    ld d, c
    and c
    or b
    jp nz, $08d8

    inc de
    and b
    ret nz

    and b
    ld h, d
    ld [hl-], a
    ret c

    inc c
    inc de
    ld d, b
    jr nc, jr_03b_7aec

    and b
    ret nz

    db $d3
    and c
    ret c

    ld [$6013], sp
    and b
    ld h, b
    ret c

    ld b, $13
    ld b, b
    ld d, d
    inc sp
    call nc, $d3c3
    inc sp
    call c, $d514
    ccf
    ld l, a
    ld e, a
    ld e, h
    call c, $d310

jr_03b_7b36:
    and b
    ret nz

    jp nc, $fd30

    nop
    db $e3
    ld a, d
    ret nz

    ld c, d
    ld a, e
    ld bc, $7b7b
    ld [bc], a

jr_03b_7b45:
    call z, $037b
    jp hl


    ld a, e
    jp c, $9000

    push hl
    ld [hl], a
    ret c

    inc c
    ld d, c
    ld bc, $80d6
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    nop
    ld bc, $02a0
    and b
    ld [bc], a
    and b
    ld [bc], a
    and b
    nop
    ld bc, $02a0
    and b
    ld [bc], a
    and b
    ld [bc], a
    and b
    nop
    ld bc, $02c0
    or b
    ld [bc], a
    and b
    ld [bc], a
    add b
    nop
    db $fd
    nop
    ld d, d
    ld a, e
    ret c

    inc c
    ld h, c
    sub $11
    push de
    ld d, b
    nop
    rst $10
    add c
    push de
    ld d, b
    nop
    rst $10
    and c
    push de
    ld d, b
    nop
    rst $10
    pop bc
    push de
    ld d, b
    nop
    sub $31
    push de
    ld h, b
    nop
    rst $10
    and c
    push de
    ld h, b
    nop
    rst $10
    pop bc
    push de
    ld h, b
    nop
    sub $21
    push de
    ld h, b
    nop
    sub $31
    push de
    ld h, b
    nop
    rst $10
    and c
    push de
    ld h, b
    nop

Call_03b_7bb0:
    db $fd
    ld [bc], a
    and [hl]
    ld a, e
    sub $81
    push de
    add b
    nop
    sub $31
    push de
    ld [hl], b
    nop
    sub $81
    push de
    ld h, b
    nop
    sub $31
    push de
    jr nc, jr_03b_7bc8

jr_03b_7bc8:
    db $fd
    nop
    ld a, [hl]
    ld a, e
    pop hl
    ld [$d824], sp
    inc c
    inc hl
    call nc, $0054
    ld d, b
    ld h, b
    add e
    db $d3
    inc de
    call nc, $a7c7
    inc [hl]
    nop
    jr nc, jr_03b_7c31

    ld h, e
    jp $87a7


    db $fd
    nop
    jp nc, $e37b

    inc b
    ret c

    ld b, $23
    inc hl
    ld hl, $2121
    ld hl, $2323
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $fd
    nop
    db $ed
    ld a, e
    ret nz

    dec c
    ld a, h
    ld bc, $7cda
    ld [bc], a
    ld e, a
    ld a, l
    inc bc
    ld a, d
    ld a, [hl]
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $10e1
    dec d
    rst $28
    ldh a, [$d8]
    inc c
    or d
    push de
    dec [hl]
    jr nc, @+$32

    ld sp, $3331
    dec [hl]
    jr nc, jr_03b_7c59

    ld sp, $dc31
    ld c, [hl]
    inc de
    call c, $35b6

jr_03b_7c31:
    call c, $d6b4
    pop bc
    push de
    ld h, c
    ld d, c
    ld sp, $dc51
    or [hl]
    ld h, l
    call c, $11b4
    and c
    add c
    ld h, c
    ld de, $8131
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $c051
    call nc, $d510
    ret nz

    call nc, $dc10
    or a
    push de
    set 3, h
    or l

jr_03b_7c59:
    ld h, l
    ld de, $81a1
    ld h, c
    ld de, $31d4
    ld de, $c1d5
    and c
    call nc, $d511
    pop bc
    and c
    add c
    jr nc, @+$52

    jr nc, jr_03b_7cbf

    call c, $33b6
    add e
    inc sp
    call c, $d6b3
    ret nz

    push de
    db $10
    sub $c0
    push de
    db $10
    call c, $d6b6
    jp $33d5


    sub $c3
    call c, $d5b4
    ld h, c
    ld d, c
    ld sp, $a111
    add c
    ld h, c
    ld d, c
    call c, $a3b6
    jp $13d4


    ld d, e
    ld sp, $83d5
    and e
    jp $11d4


    push de
    add c
    call c, $3db7
    call c, Call_03b_61b6
    ld d, c
    ld sp, $a111
    add c
    ld h, c
    add c
    call nc, $d511
    pop bc
    and c
    pop bc
    call nc, $5111
    ld h, c
    and c
    push de
    add c
    call nc, $3111
    push de

jr_03b_7cbf:
    add c
    call nc, $3111
    push de
    add c
    call nc, $dc31
    or l
    push de
    pop bc
    call nc, $d531
    pop bc
    call nc, $d533
    add c
    pop bc
    call nc, $fd31
    nop
    ld l, $7c
    db $db
    inc bc
    pop hl
    ld [de], a
    ld [hl], $ef
    rrca
    ret c

    inc c
    jp nz, $85d5

    add b
    add b
    add c
    add c
    add e
    add l
    add b
    add b
    add c
    add c
    call c, $30c4
    ld d, b
    ld h, b
    ld [hl], b
    call c, $89c7
    call nc, $d531
    pop bc
    add c
    call nc, Call_03b_5169
    ld sp, $3011
    ld d, b
    jr nc, jr_03b_7d57

    call c, $33b0
    call c, $37b7
    call c, $373f
    call c, $37b7
    call c, $19c7
    ld de, $a1d5
    ld h, c
    call nc, Call_03b_5169
    ld sp, $d511
    push bc
    add c
    call nc, $d537
    add l
    ld sp, $11c7
    and e
    jp $13d4


    ld sp, $a767
    add c
    call c, $33b0
    call c, $39b7
    call c, $13c7
    push de
    jp $83a3


    and e
    jp $13d4


    inc sp
    ld h, a
    db $d3
    rla
    call nc, $dcc1
    or b
    add l
    call c, $87b7
    call c, $c1c7
    call c, $83b0
    call c, $87b7

jr_03b_7d57:
    call c, $d5a7
    ld [hl], c
    db $fd
    nop
    or $7c
    ret c

    inc c
    daa
    sub $80
    inc b
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    ld [bc], a
    add b
    inc b
    add b
    add b
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
    pop bc
    ld bc, $8080
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld h, b
    nop
    push de
    ld sp, $d6a1
    ld h, b
    ld h, b
    ld h, b
    nop
    push de
    ld de, $60d6
    nop
    ld [hl], b
    nop
    add b
    nop
    pop bc
    push de
    ld sp, $80d6
    add b
    add b
    nop
    push de
    ld sp, $80d6
    nop
    add b
    nop
    add b
    nop
    push de
    ld d, c
    ld sp, $80d6
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld h, b
    nop
    push de
    ld de, $a1d6
    ld h, b
    ld h, b
    ld h, b
    nop
    push de
    ld de, $60d6
    nop
    ld h, b
    nop
    ld h, b
    nop
    push de
    ld de, $d661
    ld h, b
    ld h, b
    ld h, b
    nop
    push de
    ld d, c
    sub $61
    ld [hl], c
    add b
    nop
    pop bc
    push de
    add c
    sub $80
    add b
    add b
    nop
    pop bc
    add b
    nop
    add b
    nop
    add b
    nop
    call nc, $d531
    pop bc
    sub $80
    add b
    add b
    nop
    push de
    add c
    sub $81
    sub c
    and b
    nop
    push de
    ld de, $c1d6
    and b
    and b
    and b
    nop
    push de
    ld sp, $a0d6
    nop
    ret nz

    nop
    push de
    stop
    ld h, c
    ld d, c
    db $10
    db $10
    stop
    and c
    stop
    stop
    sub $c0
    nop
    push de
    ld d, c
    ld sp, $c0d6
    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    pop bc
    and c
    add b
    add b
    add b
    nop
    pop bc
    add b
    nop
    add b
    nop
    and b
    nop
    push de
    ld de, $c1d6
    and b
    and b
    and b
    nop
    push de
    ld sp, $a0d6
    nop
    ret nz

    nop
    push de
    stop
    ld h, c
    ld d, c
    db $10
    db $10
    stop
    and c
    stop
    stop
    sub $80
    nop
    push de
    ld de, $d631
    add b
    add b
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
    push de
    ld d, c
    ld sp, $80d6
    add b
    add b
    nop
    push de
    ld sp, $80d6
    nop
    add b
    nop
    db $fd
    nop
    ld a, c
    ld a, l
    db $e3
    inc bc
    ret c

    inc c
    cp $b8
    ld a, [hl]
    cp $c1
    ld a, [hl]
    cp $cd
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $e1
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $cd
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $e1
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $cd
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $d7
    ld a, [hl]
    cp $cd
    ld a, [hl]
    cp $e1
    ld a, [hl]
    db $fd
    nop
    add h
    ld a, [hl]
    ld sp, $7171
    jr nc, jr_03b_7eed

    ld sp, $3331
    rst $38
    ld sp, $7171
    jr nc, jr_03b_7ef6

    ld sp, $3031
    jr nc, jr_03b_7efb

jr_03b_7ecb:
    jr nc, @+$01

    ld sp, $7171
    jr nc, jr_03b_7f02

    ld sp, $3131
    ld sp, $31ff
    ld [hl], c
    ld [hl], c
    jr nc, jr_03b_7f0c

    ld sp, $3171
    ld sp, $31ff
    ld [hl], c
    ld [hl], c
    jr nc, jr_03b_7f16

    ld sp, $d831
    ld b, $30
    jr nc, jr_03b_7f1d

jr_03b_7eed:
    jr nc, jr_03b_7f1f

    jr nc, jr_03b_7f21

    jr nc, jr_03b_7ecb

    inc c
    rst $38
    nop

jr_03b_7ef6:
    nop
    nop
    nop
    nop
    nop

jr_03b_7efb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_7f02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_7f0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_7f1d:
    nop
    nop

jr_03b_7f1f:
    nop
    nop

jr_03b_7f21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_7fb7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
