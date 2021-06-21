; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    ret nz

    inc c
    ld b, b
    ld bc, $4162
    ld [bc], a
    ld b, a
    ld b, d
    inc bc
    ld e, $43
    jp c, $a400

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    dec h
    db $db
    ld [bc], a
    ret c

    inc c
    sub l
    rrca
    rst $28
    ldh a, [$d6]
    ld d, b
    sub b
    ret nz

    rst $28
    rst $38
    push de
    ld b, b
    sub b
    nop
    or e
    sub c
    ld [hl], c
    ld hl, $0fef
    sub $40
    ld [hl], b
    or b
    rst $28
    rst $38
    push de
    jr nz, jr_03c_40a5

    nop
    ld b, e
    sub c
    ld b, c
    sub $91
    jr nz, jr_03c_408d

    sub b
    ret nz

    push de
    sub b

Call_03c_4041:
    nop
    sub $c3
    ret c

    ld b, $91
    push de
    ld hl, $2161
    ld h, c
    sub c
    pop bc
    call c, $d6a4

Call_03c_4051:
    rst $00
    inc bc
    push de
    dec hl
    rlca
    ret c

    ld b, $95
    inc bc
    sub $c1
    push de
    ld hl, $4143
    ld d, c
    ld b, c
    ld bc, $0171
    sub c
    ld bc, $01c1
    rst $28
    ldh a, [$d4]
    ld hl, $91d5
    ld d, c
    call nc, $ef21
    rst $38
    ld de, $91d5
    ld d, c
    call nc, $ef11
    rrca
    push de
    pop bc
    ld bc, $01c1
    or a
    rst $28
    rst $38
    inc bc
    ld hl, $b351
    or c
    call nc, $d521
    or c

jr_03c_408d:
    ld bc, $0171
    ld d, c
    ld bc, $0121
    rst $28
    rrca
    ld b, a
    rst $28
    rst $38
    ld d, a
    rst $28
    ldh a, [$61]
    ld bc, $0161
    ld [hl], c
    ld bc, $ef83
    rst $38

jr_03c_40a5:
    sub c
    ld b, b
    nop
    sub $c0
    nop
    push de
    ld b, b
    nop
    jp $9191


    or c
    ld bc, $01b1
    ld b, e
    ld [hl], c
    ld bc, $0cd8
    sub l
    rlca
    call nc, $db62
    ld bc, $06d8
    ld [hl], l
    sub b
    ret nz

    db $d3
    ld b, a
    ret c

    inc c
    sub e
    db $db
    ld [bc], a
    rrca
    ret c

    ld b, $91
    rst $28
    ldh a, [$d5]
    ld d, c
    sub $c1
    sub c
    push de
    ld d, c
    rst $28
    rrca
    sub $c1
    sub c
    pop bc
    push de
    ld d, c
    call c, $efa4
    rst $38
    ld b, a
    rlca
    db $db
    inc bc
    call c, $0384
    add c
    and c
    jp $33d4


    inc hl
    ret c

    ld [$d584], sp
    ret nz

    call nc, $d520
    ret nz

    and d
    ret c

    inc c
    add h
    ld [hl], b
    nop
    ld [hl], c
    jr nz, jr_03c_4104

jr_03c_4104:
    ld [hl], c
    inc sp
    ld d, e
    ld [hl], c
    ret nz

    nop
    ret nz

    call nc, $3120
    ld [hl], c
    ld d, c
    ret c

    ld [$3084], sp
    ld d, b
    jr nc, jr_03c_4139

    ret c

    inc c
    add h
    push de
    ret nz

    nop
    and c
    ld [hl], b
    nop
    and c

Call_03c_4121:
    call nc, $3353
    ld hl, $5090
    push de
    ret nz

    call nc, $9050
    nop
    sub b
    or b
    jp $9003


    ld h, b
    push de
    ret nz

    call nc, $9060
    nop

jr_03c_4139:
    sub b
    or b
    jp $2003


    push de
    ret nz

    ld [hl], b
    call nc, $d520
    ret nz

    ld [hl], b
    call nc, $d520
    ret nz

    ld [hl], b
    jr nz, jr_03c_41bd

    or b
    call nc, $7020
    or b
    db $d3
    jr nz, @-$23

    ld [bc], a
    call nc, $1025
    push de
    ret nz

    call nc, $0323
    db $fd
    nop
    ld d, [hl]
    ld b, b
    pop hl
    ld [de], a
    inc h
    db $db
    ld [bc], a
    ret c

    inc c
    rst $00
    rrca
    push de
    sub b
    nop
    or b
    nop
    ret nz

    nop
    call nc, $2143
    push de
    or c
    sub c
    ld [hl], b
    nop
    sub b
    nop
    or b
    nop
    call nc, $d523
    pop bc
    or c
    pop bc
    sub b
    nop
    or b
    nop
    ret nz

    nop
    sub e
    or c
    pop bc
    call nc, Call_03c_4121
    push de
    ld [hl], c
    call nc, VBlankInterrupt
    dec h
    ld bc, $5040
    call c, Call_03c_73b7
    ld bc, $9070
    ld [hl], b
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    ld e, l
    jr nz, @+$42

    ld d, e
    ld bc, $7050
    ld d, b
    nop
    ld b, b
    nop
    jr nz, jr_03c_41b4

jr_03c_41b4:
    ld d, b
    nop
    ld c, e
    ld bc, $c0d5
    call nc, Call_03c_4320

jr_03c_41bd:
    ld bc, $5040
    ld b, b
    nop
    jr nz, jr_03c_41c4

jr_03c_41c4:
    push de
    pop bc
    call nc, RST_20
    ld b, e
    sub e
    jp nz, $2002

    ld b, b
    ld d, c
    push de
    sub c
    pop bc
    call nc, Call_03c_4051
    push de
    ld [hl], b
    ret nz

    call nc, $2040
    push de
    ld d, b
    or b
    call nc, $d520
    rlc e
    call c, $dba7

jr_03c_41e7:
    inc bc
    ld bc, $d4c0
    jr nz, jr_03c_421e

    ld [hl], c
    ld d, c
    ret c

    ld [$30a7], sp
    ld d, b
    jr nc, jr_03c_4218

    ret c

    inc c
    and a
    push de
    ret nz

    nop
    and c
    ld [hl], b
    nop
    and c
    call nc, $3353
    ld hl, $8001
    and b
    pop bc
    db $d3
    ld sp, $d821
    ld [$d4a7], sp
    ret nz

    db $d3
    jr nz, jr_03c_41e7

    ret nz

    and d
    ret c

    inc c
    and a

jr_03c_4218:
    add b
    nop
    ld [hl], c
    jr nz, jr_03c_421d

jr_03c_421d:
    ld [hl], c

jr_03c_421e:
    pop hl
    nop
    nop
    call c, $d387
    ld d, e
    ld [hl], e
    jr nc, jr_03c_4278

    ld a, e
    ld bc, $5030
    ld a, e
    ld bc, $b0d4
    ret nz

    db $d3
    ld a, [hl+]
    inc b
    pop hl

Call_03c_4235:
    ld [de], a
    inc h
    call c, $dba7
    ld [bc], a
    call nc, $a0b5
    sub b
    ld [hl], e
    ld bc, $5040
    db $fd
    nop
    sbc c
    ld b, c
    ret c

    inc c
    dec h
    rrca
    dec b
    call nc, $0553
    dec b
    push de
    sub e
    dec b
    dec b
    ld h, e
    dec b
    sub $73
    push de
    jr nz, jr_03c_425b

jr_03c_425b:
    or e
    and b
    sub b
    ld [hl], c
    sub $b1
    ret c

    inc c
    dec h
    ret nz

    inc b
    ret nz

    ret nz

    ld bc, $00c0
    push de
    ld [hl], c
    sub $70
    nop
    push de
    jr nz, @+$06

    jr nz, jr_03c_4295

    ld bc, $0020

jr_03c_4278:
    sub c
    sub $90
    nop
    ld [hl], b
    inc b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    ld [hl], b
    nop
    push de
    ld [hl], c
    jr nz, jr_03c_4288

jr_03c_4288:
    sub $c0
    inc b
    ret nz

    ret nz

    ld bc, $00c0
    push de
    jp $0490


    sub b

jr_03c_4295:
    sub b
    add b
    nop
    add b
    nop
    ld [hl], c
    ld [hl], b
    nop
    ret c

    ld b, $25
    push de
    ld hl, $9161
    pop bc
    call nc, Call_03c_6121
    sub c
    pop bc
    call nc, $d825
    inc c
    dec h
    inc b
    ret c

    ld b, $25
    sub $51
    add hl, bc
    ld d, c
    ld d, c
    ld [hl], c
    ld bc, $0171
    push de
    inc hl
    inc de

Call_03c_42bf:
    sub $c1
    add hl, bc
    pop bc
    pop bc
    inc bc
    pop bc
    ld bc, $fea7
    ld de, $7143
    add hl, bc
    pop bc
    pop bc
    pop bc
    ld bc, $a1b7
    ld bc, $11fe
    ld b, e
    ld [hl], c
    add hl, bc
    pop bc
    pop bc
    pop bc
    ld bc, $a1b7
    ld bc, $51d5
    add hl, bc
    ld d, c
    ld d, c
    inc bc
    ld d, c
    ld bc, $91c3
    ld [hl], c
    ld h, c
    add hl, bc
    ld h, c
    ld h, c
    inc bc
    ld h, c
    ld bc, $23d4
    push de
    or c
    sub c
    ld [hl], c
    add hl, bc
    ld [hl], c
    ld [hl], c
    sub $71
    ld bc, $0171
    push de
    ld [hl], e
    sub $71
    sub c
    push de
    ld a, e
    sub c
    and c
    or a
    inc bc
    sub $b3
    db $fd
    nop
    ld h, c
    ld b, d
    add c
    add hl, bc
    add c
    add c
    and c
    ld bc, $01a1
    push de
    ld d, e
    sub $a3
    rst $38
    db $e3
    inc bc

Call_03c_4320:
    ret c

    inc c
    ld b, c
    ld sp, $4040
    ld sp, $7333
    cp $6c
    ld b, e
    cp $6c
    ld b, e
    cp $6c
    ld b, e
    ld sp, $4040
    ld sp, $4117
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    cp $7a
    ld b, e
    db $fd
    nop
    jr c, jr_03c_43af

jr_03c_436c:
    jr nc, jr_03c_439e

    ld b, b
    ld b, b
    ld sp, $8081
    add b
    ld [hl], c
    add b
    add b
    add b
    add b
    rst $38
    ld b, c
    add b
    add b
    add b
    nop
    ld b, b
    ld b, b
    ld bc, $3141
    ld b, c
    rst $38
    ret nz

    sub d
    ld b, e
    ld bc, $444d
    ld [bc], a
    ei
    ld b, h
    inc bc
    xor c
    ld b, l
    jp c, $9200

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $10e1

jr_03c_439e:
    dec d
    rst $28
    rrca
    ret c

    inc c
    or d
    ld bc, $d401
    ld de, $1351
    push de
    and c
    call nc, $d511

jr_03c_43af:
    add e
    and c
    ld [hl], c
    inc de
    call nc, $d531
    pop bc
    inc sp
    call nc, Call_03c_5111
    inc de
    push de
    and c
    call nc, $d511
    and e
    and c
    ld de, $8131
    ld de, $8113
    call nc, Call_03c_5111
    ld de, $51d5
    and c
    call nc, $d511
    add c
    ld h, b
    add b
    and c
    ld de, $3171
    call nc, $d531
    jp $d451


    ld de, $5151
    push de
    ld d, c
    add c
    call nc, $d511
    add c
    jr nc, jr_03c_436c

    call nc, $d511
    pop bc
    add c
    ld d, b
    ld h, b
    add c
    add c
    ld h, a
    call c, $a3b4
    call nc, $d511
    xor c
    ld d, e
    add c
    ld d, c
    call c, $85b2
    call c, Call_03c_63b4
    and c
    add c
    ld h, c
    call c, $a3b2
    call c, $23b4
    ld d, c
    add e
    call c, Call_03c_57b3
    call c, $a1b4
    add c
    and c
    call nc, $dc13
    or d
    push de
    and l
    call c, $81b4
    ld d, c
    add c
    call nc, $d513
    add c
    call nc, $1131
    push de
    pop bc
    and c
    call c, $83b2
    jp $b4dc


    add c
    ld d, c
    call nc, $d511
    ld d, e
    ld d, c
    call nc, $d511
    ld d, c
    add e
    call nc, $d511
    ld d, c
    call c, $11b2
    add c
    add e
    db $fd
    nop
    and l
    ld b, e
    db $db
    inc bc
    pop hl
    ld [de], a
    ld [hl], $d8
    inc c
    jp nz, $10d4

jr_03c_4457:
    jr nc, jr_03c_4457

    sbc $44
    ld h, b
    ld d, b
    ld sp, $d531
    pop bc
    call nc, $d511
    ld d, c

Jump_03c_4465:
    ld d, c
    call nc, $3010
    cp $de
    ld b, h
    ld h, b
    ld d, b
    ld sp, $d531

Call_03c_4471:
    pop bc
    call c, $d4c4
    rla
    push de
    and c
    and c
    call nc, $1111
    ld h, c
    and c
    add c
    ld h, c
    push de
    add c
    add c
    call nc, $1111
    ld d, c
    add c
    ld h, c
    ld d, c
    push de
    ld h, c
    ld h, c
    and c
    and c
    call nc, Call_03c_6131
    ld d, c
    ld sp, $3151
    ld hl, $2131
    push de
    or c
    and c
    add c
    and c
    and c
    call nc, $1111
    ld h, c
    and c
    add c
    ld h, c
    push de
    add c
    add c
    call nc, $1111
    ld d, c
    add c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld sp, $dc61
    jp nz, $3353

    call c, $11c4
    push de
    add c
    call nc, $d551
    add c
    call nc, $d511
    add c
    call nc, $d551
    add c
    call nc, $d511
    add c
    call nc, $d551
    add c
    call c, $d4c2
    ld de, $1111
    call nc, $3010
    db $fd
    nop
    ld e, b
    ld b, h
    ld d, c
    ld d, c
    add c
    add c
    ld de, $5131
    ld de, $5060
    ld sp, $c1d5
    and c
    add c
    call nc, $81a1
    db $10
    jr nc, jr_03c_4544

    ld d, c
    add c
    add c
    ld de, $5131
    ld de, $efff
    ldh a, [$d8]
    inc c
    dec h
    pop hl
    add hl, bc
    daa
    ld bc, $d501
    add b
    nop
    call nc, RST_10
    ld d, b
    ld [bc], a
    ld d, b
    nop
    push de
    and b
    nop
    call nc, TimerOverflowInterrupt
    push de
    ld h, b
    nop
    call nc, $0210
    push de
    and b
    nop
    add b
    nop
    call nc, RST_10
    push de
    ret nz

    nop
    add b
    nop
    call nc, RST_10
    push de
    add b
    nop
    call nc, RST_10
    ld d, b
    ld [bc], a
    stop
    ld d, b
    nop
    ld d, b
    nop
    push de
    ld h, b
    nop
    call nc, RST_10
    push de
    add b
    nop
    ret nz

    nop

jr_03c_4544:
    call nc, TimerOverflowInterrupt
    push de
    add b
    nop
    add b
    ld [bc], a
    ld d, e
    add e
    call nc, $d513
    add e
    ld h, e
    ld [hl], e
    call nc, $d513
    jp $8353


    call nc, $d513
    add c
    ld d, c
    add c
    call nc, $d511
    pop bc
    add c
    call nc, $d511
    pop bc
    call nc, $3111
    dec d
    push de
    ld h, l
    and e
    call nc, $d515
    add l
    and c
    or c
    push bc
    add l
    call nc, Call_03c_6131
    push de
    and l
    ld d, c
    call nc, $2151
    push de
    and c
    add c
    and l
    call nc, $d515
    and e
    add l
    call nc, $6115
    ld d, c
    ld h, l
    ld h, c
    ld d, c
    ld bc, $d531
    pop bc
    call nc, $d515
    add l
    call nc, $5313
    inc de
    push de
    add b
    nop
    call nc, RST_10
    db $10
    ld [bc], a
    db $fd
    nop
    inc b
    ld b, l
    rst $28
    rrca
    db $e3
    nop
    ret c

    inc c
    ld bc, $6101
    ld h, l
    ld h, c
    ld h, c
    ld h, c
    ld bc, $6363
    ld h, c
    ld h, e
    db $fd
    nop
    or b
    ld b, l
    ret nz

    bit 0, l
    ld bc, $460b
    ld [bc], a
    ld l, $46
    inc bc
    ld l, l
    ld b, [hl]
    jp c, Jump_03c_7000

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    pop hl
    inc c
    ld [hl+], a
    and $00
    ld bc, $f0ef
    ret c

    inc c
    sub e
    rrca
    rrca
    rrca
    dec bc
    push de
    jr nc, @+$52

    ld h, b
    ld [hl], b
    call c, $d497
    rla
    call c, $1777
    call c, Call_03c_5797
    call c, Call_03c_5777
    call c, $7797
    call c, Call_03c_7777
    call c, Call_03c_6777
    call c, Call_03c_6757
    db $fd
    inc bc
    and $45
    rrca
    rrca
    rrca
    rrca

jr_03c_4607:
    db $fd
    nop
    and $45
    pop hl
    ld [$db25], sp
    inc bc
    ret c

    inc c
    call nz, $81d5
    ld sp, $a981
    add c
    ld sp, $d481
    inc de
    push de
    jp $81a1


    ld sp, $a981
    ld h, c
    ld de, $b361
    and e
    ld h, c
    db $fd
    nop
    db $10
    ld b, [hl]
    ret c

    inc c
    jr z, jr_03c_4607

    ld sp, $3181
    add c
    ld sp, $3181
    add c
    push de
    ld sp, $3181
    add c
    ld sp, $3181
    add c
    push de
    ld sp, $3181
    add c
    ld sp, $3181
    add c
    push de
    ld de, $1161
    ld h, c
    ld de, $1161
    ld h, c
    db $fd
    inc bc
    ld sp, $3346
    add e
    inc sp
    add e
    ld d, e
    add e
    ld d, e
    add e
    ld [hl], e
    and e
    ld [hl], e
    and e
    ld d, e
    add e
    ld d, e
    add e
    db $fd
    nop
    ld l, $46
    db $e3
    dec b
    ret c

    inc c
    rrca
    rrca
    rrca
    rrca
    ret c

    ld b, $ef
    rrca
    or e
    or a
    or e
    or e
    or e
    rst $28
    ldh a, [$a1]
    and c
    or c
    or c
    or e
    or e
    or a
    or e
    or e
    rst $28
    rrca
    or b
    or b
    and b
    and b
    or b
    or b
    or b
    or b
    db $fd
    nop
    ld [hl], a
    ld b, [hl]
    add b
    and b
    ld b, [hl]
    ld bc, $46c4
    ld [bc], a
    call nc, $da46
    nop
    sub b
    push hl
    ld [hl], a
    db $db
    ld [bc], a
    and $00
    ld bc, $0cd8
    add c
    ld bc, $00e0
    ld b, b
    pop bc
    ldh [rP1], a
    ld d, l
    pop bc
    ldh [rP1], a
    ld b, l
    ld d, c
    inc bc
    ldh [rP1], a
    jr nc, jr_03c_4712

    ldh [rP1], a
    ld b, b
    jp $dbff


    ld [bc], a
    ret c

    inc c
    jp $c3d4


    jp $91c1


    ret c

    inc c
    call nz, Call_03c_57d3
    rst $38
    ret c

    inc c
    db $10
    call nc, $0151
    ld d, c
    ld bc, $9151
    ld d, l
    ld bc, $c0ff
    db $ed
    ld b, [hl]
    ld bc, $474f
    ld [bc], a
    sbc a
    ld b, a
    inc bc
    db $eb
    ld b, a
    jp c, $8400

    push hl
    ld [hl], a
    pop hl
    ld b, $34
    and $00
    ld bc, $02db
    ret c

    inc c
    sub d
    push de
    ldh [rP1], a
    ld c, d
    db $10
    ldh [rP1], a
    ld c, d
    add b
    ldh [rP1], a
    ld c, d
    db $10
    ldh [rP1], a
    ld c, d
    add b
    inc bc
    db $db
    inc bc
    rst $28

jr_03c_4712:
    rrca
    cp $37
    ld b, a
    ret c

    inc c
    and h
    ld [hl], e
    cp $37
    ld b, a
    ret c

    inc c
    and h
    ld [hl], e
    db $fd
    ld [bc], a
    inc de
    ld b, a
    cp $43
    ld b, a
    ret c

    inc c
    and h
    sub e
    cp $43
    ld b, a
    ret c

    inc c
    and h
    sub e
    db $fd
    nop
    inc de
    ld b, a
    ret c

    inc c
    and d
    push de
    inc de
    add e
    inc de
    add e
    inc de
    add e
    inc de
    rst $38
    ret c

    inc c
    and d
    push de
    inc sp
    and e
    inc sp
    and e
    inc sp
    and e
    inc sp
    rst $38
    db $db
    ld [bc], a
    pop hl
    ld [$d825], sp
    inc c
    and d
    call nc, $3080
    add b
    jr nc, jr_03c_4760

    db $db
    inc bc
    rst $28

jr_03c_4760:
    ldh a, [$fe]
    add a
    ld b, a
    ret c

    inc c
    or l
    and e
    cp $87
    ld b, a
    ret c

    inc c
    or l
    jp $02fd


    ld h, c
    ld b, a
    cp $93
    ld b, a
    ret c

    inc c
    or l
    jp $93fe


    ld b, a
    ret c

    inc c
    or l
    call nc, $d523
    db $fd
    nop
    ld h, c
    ld b, a
    ret c

    inc c
    or d
    push de
    add e
    inc sp
    add e
    inc sp
    add e
    inc sp
    add e
    rst $38
    ret c

    inc c
    or d
    push de
    and e
    ld d, e
    and e
    ld d, e
    and e
    ld d, e
    and e
    rst $38
    ret c

    inc c
    ld d, $07
    cp $bf
    ld b, a
    push de
    and e
    cp $bf
    ld b, a
    push de
    jp $02fd


    and e
    ld b, a
    cp $d5
    ld b, a
    push de
    jp $d5fe


    ld b, a
    call nc, $fd23
    nop
    and e
    ld b, a
    sub $a1
    ld bc, $31d5
    ld bc, $a1d6
    ld bc, $31d5
    ld bc, $a1d6
    ld bc, $31d5
    ld bc, $a1d6
    ld bc, $d6ff
    pop bc
    ld bc, $51d5
    ld bc, $c1d6
    ld bc, $51d5
    ld bc, $c1d6
    ld bc, $51d5
    ld bc, $a1d6
    ld bc, $e3ff
    dec b
    ret c

    inc c
    rlca
    rst $28
    ldh a, [$b5]
    or e
    rst $28
    rrca
    ld d, c
    ld d, c
    ld d, c
    db $fd
    nop
    ldh a, [rBGP]
    ld [bc], a
    nop
    ld c, b
    jp c, $0001

    ret c

    inc c
    jr nz, @-$2a

    push bc
    db $d3
    jr nz, jr_03c_480b

jr_03c_480b:
    call nc, $d3c5
    jr nz, jr_03c_4810

jr_03c_4810:
    call nc, $00c0
    db $d3
    ld d, b
    nop
    ld b, b
    nop
    jr nz, jr_03c_481a

jr_03c_481a:
    call nc, $00c0
    and b
    nop
    sub b
    nop
    ld [hl], b
    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld [hl], b
    nop
    and b
    nop
    ld [hl], b
    nop
    and b
    nop
    ld [hl], b
    nop
    db $d3
    jr nz, jr_03c_4860

    jr nz, jr_03c_4852

jr_03c_4852:
    call nc, $0070
    ld d, b
    nop
    sub b
    nop
    ld d, b
    nop
    sub b
    nop
    ld d, b
    nop
    db $d3

jr_03c_4860:
    ld d, b
    ld b, b
    ld d, b
    nop
    call nc, VBlankInterrupt
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld [hl], b
    nop
    and b
    nop
    ld [hl], b
    nop
    and b
    nop
    ret nz

    nop
    and b
    nop
    sub b
    nop
    ld [hl], b
    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    ret nz

    nop
    ld d, b
    nop
    push de
    ret nz

    nop
    call nc, RST_20
    jr nc, jr_03c_48a9

jr_03c_48a9:
    ld b, b
    nop
    ld [hl], b
    nop
    push de
    ret nz

    nop
    call nc, $0070
    ld b, b
    nop
    ld [hl], b
    nop
    push de
    ret nz

    nop
    call nc, $0070
    ld d, b
    nop
    sub b
    nop
    push de
    ret nz

    nop
    call nc, $0090
    ld d, b
    nop
    sub b
    nop
    push de
    ret nz

    nop
    call nc, $0090
    ld [hl], b
    nop
    and b
    nop
    jr nz, jr_03c_48d7

jr_03c_48d7:
    and b
    nop
    ld [hl], b
    nop
    and b
    nop
    jr nz, jr_03c_48df

jr_03c_48df:
    and b
    nop
    ret nz

    or b
    ret nz

    nop
    ld d, b
    nop
    ld [hl], b
    nop
    sub b
    nop
    push de
    ret nz

    nop
    call nc, RST_20
    jr nc, jr_03c_48f3

jr_03c_48f3:
    ld b, b
    nop
    ld [hl], b
    nop
    push de
    ret nz

    nop
    call nc, $0070
    ld b, b
    nop
    ld [hl], b
    nop
    push de
    ret nz

    nop
    call nc, $0070
    ld d, b
    nop
    sub b
    nop
    push de
    ret nz

    nop
    call nc, $0090
    ld d, b
    nop
    sub b
    nop
    push de
    ret nz

    nop
    call nc, $0090
    ld [hl], b
    nop
    and b
    nop
    jr nz, jr_03c_4921

jr_03c_4921:
    and b
    nop
    ld [hl], b
    nop
    and b
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    and b
    nop
    and b
    nop
    sub b
    nop
    push de
    ret nz

    nop
    call nc, RST_20
    ld b, b
    nop
    db $fd
    nop
    inc hl
    ld c, b
    inc b
    ld hl, $045d
    ld [hl-], a
    ld e, l
    inc b
    sbc l
    ld e, l
    inc b
    cp a
    ld e, l
    rlca
    db $d3
    ld e, h
    inc b
    adc d
    ld e, l
    inc b
    xor h
    ld e, l
    inc b
    call nc, $045d
    db $e3
    ld e, l
    inc b
    ld c, $5e
    inc b
    ld hl, $045e
    inc [hl]
    ld e, [hl]
    inc b
    ld c, a
    ld e, [hl]
    inc b
    ld h, [hl]
    ld e, [hl]
    inc b
    ld a, e
    ld e, [hl]
    inc b
    sub [hl]
    ld e, [hl]
    inc b
    or c
    ld e, [hl]
    inc b
    cp h
    ld e, [hl]
    rlca
    rst $00
    ld e, [hl]
    rlca
    call nc, $445e
    dec b
    ld e, a
    dec b
    inc e
    ld e, a
    inc b
    cpl
    ld e, a
    rlca
    ld a, [hl-]
    ld e, a
    ld b, h
    ld d, e
    ld e, a
    dec b
    ld [hl], d
    ld e, a
    inc b
    sub c
    ld e, a
    rlca
    ld hl, sp+$5c
    rlca
    ld [$445d], sp
    rrca
    ld e, l
    dec b
    ld d, $5d
    ld b, h
    ld b, e
    ld e, l
    dec b
    ld c, d
    ld e, l
    ld b, h
    ld d, l
    ld e, l
    dec b
    ld h, b
    ld e, l
    inc b
    ld l, a
    ld e, l
    rlca
    ld a, d
    ld e, l
    ld b, h
    or [hl]
    ld c, c
    dec b
    push de
    ld c, c
    db $db
    ld [bc], a
    ld [bc], a
    pop af
    nop
    rlca
    ld bc, $00e1
    ld b, $01
    pop hl
    add b
    ld b, $01
    pop hl
    ret nz

    ld b, $02
    pop hl
    nop
    rlca
    ld [bc], a
    pop hl
    ret nz

    rlca
    rrca
    ld a, [c]
    ldh [rTAC], a
    rst $38
    db $db
    ld [bc], a
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    and c
    ld bc, $0107
    sub c
    ld bc, $0106
    sub c
    add c
    ld b, $01
    sub c
    pop bc
    ld b, $02
    sub c
    ld bc, $0207
    sub c
    pop bc
    rlca
    rrca
    jp nc, $07e1

    rst $38
    ld b, $da
    ld e, h
    inc b
    xor [hl]
    ld e, a
    ld b, h
    ret


    ld e, a
    dec b
    jp nc, $445f

    db $f4
    ld e, a
    rlca
    rst $38
    ld e, a
    ld b, h
    inc bc
    ld h, b
    rlca
    ld a, [bc]
    ld h, b
    rlca
    inc d
    ld h, b
    ld b, h
    ld [hl], $60
    dec b
    ld b, a
    ld h, b
    inc b
    ld d, d
    ld h, b
    rlca
    ld d, e
    ld h, l
    rlca
    adc b
    ld h, l
    rlca
    adc h
    ld h, l
    rlca
    sub b
    ld h, l
    rlca
    sbc d
    ld h, l
    rlca
    and c
    ld h, l
    inc b
    or h
    ld h, l
    inc b
    jp Jump_03c_4465


    adc $65
    dec b
    db $dd
    ld h, l
    inc b
    db $ec
    ld h, l
    rlca
    ld l, a
    ld h, b
    inc b
    ld [hl], e
    ld h, b
    inc b
    ld a, [hl]
    ld h, b
    rlca
    adc c
    ld h, b
    rlca
    adc l
    ld h, b
    rlca
    sub c
    ld h, b
    rlca
    sbc e
    ld h, b
    rlca
    and l
    ld h, b
    rlca
    xor h
    ld h, b
    rlca
    cp c
    ld h, b
    rlca
    jp $0760


    ret nc

    ld h, b
    rlca
    sbc $60
    rlca
    db $eb
    ld h, b
    rlca
    ld hl, sp+$60
    rlca
    ld de, $0761
    dec de
    ld h, c
    rlca
    jr z, jr_03c_4ad4

    rlca
    cpl
    ld h, c
    rlca
    add hl, sp
    ld h, c
    rlca
    ld b, b
    ld h, c
    rlca
    ld b, a
    ld h, c
    rlca
    ld d, c
    ld h, c
    ld b, h
    ld e, b
    ld h, c
    rlca
    ld l, c
    ld h, c
    rlca
    db $76
    ld h, c
    rlca
    add e
    ld h, c
    rlca
    adc d
    ld h, c
    rlca
    sbc d
    ld h, c
    rlca
    and c
    ld h, c
    ld b, h
    or c
    ld h, c
    rlca
    cp h
    ld h, c
    rlca
    jp $0761


    db $d3
    ld h, c
    add h
    jp hl


    ld h, c
    dec b
    db $fc
    ld h, c
    rlca
    rrca
    ld h, d
    add h
    ld a, [de]
    ld h, d
    dec b
    add hl, hl
    ld h, d
    rlca
    jr c, jr_03c_4b17

    ld b, h
    ld b, e
    ld h, d
    rlca
    ld e, d
    ld h, d
    add h
    ld l, [hl]
    ld h, d
    dec b
    adc c
    ld h, d
    rlca
    and b
    ld h, d
    ld b, h
    or c
    ld h, d
    rlca
    ret nc

    ld h, d
    add h
    rst $20
    ld h, d
    dec b
    ld a, [$0762]
    dec c
    ld h, e
    add h

jr_03c_4ad4:
    ld e, $63
    dec b
    dec [hl]
    ld h, e
    rlca
    ld c, h
    ld h, e
    add h
    ld d, a
    ld h, e
    dec b
    ld l, [hl]
    ld h, e
    rlca
    add l
    ld h, e
    add h
    sub [hl]
    ld h, e
    dec b
    and l
    ld h, e
    rlca
    or h
    ld h, e
    add h
    cp a
    ld h, e
    dec b
    sbc $63
    rlca
    ld sp, hl
    ld h, e
    ld b, h
    inc c
    ld h, h
    dec b
    inc hl
    ld h, h
    ld b, h
    ld a, [hl-]
    ld h, h
    dec b
    ld b, l
    ld h, h
    ld b, h
    ld c, h
    ld h, h
    dec b
    ld h, e
    ld h, h
    add h
    ld a, d
    ld h, h
    dec b
    adc c
    ld h, h
    rlca
    sbc b
    ld h, h
    ld b, h
    and l
    ld h, h
    dec b
    or [hl]

jr_03c_4b17:
    ld h, h
    add h
    jp z, $0564

    add hl, bc
    ld h, l
    rlca
    ld c, b
    ld h, l
    inc b
    reti


    ld e, a
    add h
    rla
    ld h, [hl]
    dec b
    inc h
    ld h, [hl]
    rlca
    ld c, $67
    inc b
    pop af
    ld h, [hl]
    inc b
    rst $38
    ld h, [hl]
    call nz, Call_03c_6722
    dec b
    ld c, e
    ld h, a
    ld b, $4b
    ld h, a
    rlca
    ld d, h
    ld h, a
    call nz, Call_03c_4b4b
    dec b
    ld e, a
    ld c, e
    ld b, $6d
    ld c, e
    rlca
    ld a, a
    ld c, e

Call_03c_4b4b:
    rst $18
    jp c, Jump_03c_7800

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    ret c

    ld [$d5b1], sp
    pop bc
    pop bc
    pop bc
    call c, $d4b3
    sbc e
    rst $38
    rst $18
    db $db
    ld [bc], a
    ret c

    ld [$d4c1], sp
    ld d, c
    ld d, c
    ld d, c
    call c, $cbc3
    rst $38
    rst $18
    ret c

    ld [$d425], sp
    sub b
    nop
    sub b
    nop
    sub b
    nop
    db $d3
    ld d, h
    call c, Call_03c_5235
    inc bc
    rst $38
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    dec de
    rst $38
    call nz, Call_03c_4b92
    dec b
    xor b
    ld c, e
    ld b, $b8
    ld c, e
    rlca
    adc $4b

Call_03c_4b92:
    rst $18
    jp c, Jump_03c_7800

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    ret c

    ld b, $b1
    push de
    jp $c1c1


    jp Jump_03c_53d4


    call c, $9fb3
    rst $38
    rst $18
    db $db
    ld [bc], a
    ret c

    ld b, $c1
    call nc, $5153
    ld d, c
    ld d, e
    sub e
    call c, $cfc3
    rst $38
    rst $18
    ret c

    ld b, $25
    call nc, $0191
    sub b
    nop
    sub b
    nop
    sub c
    ld bc, $01c1
    db $d3
    ld d, a
    call c, Call_03c_5335
    inc bc
    rst $38
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    rra
    rst $38
    call nz, Call_03c_4be1
    dec b
    cp $4b
    ld b, $13
    ld c, h
    rlca
    daa
    ld c, h

Call_03c_4be1:
    rst $18
    jp c, $6800

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    ret c

    inc c
    adc b
    push de
    and e
    ld bc, $00a0
    or e
    ld bc, $00b0
    call nc, $0111
    push de
    or c
    ld bc, $05a1
    rst $38
    rst $18
    db $db
    ld [bc], a
    ret c

    inc c
    pop bc
    db $d3
    ld h, c
    ld d, c
    ld sp, $d411
    or c
    db $d3
    ld de, $5131
    ld h, e
    add e
    ld h, a
    rst $38
    rst $18
    ret c

    inc c
    dec h
    call nc, $0163
    ld h, b
    nop
    ld h, e
    ld bc, $0060
    and c
    ld bc, $0151
    ld h, c
    dec b
    rst $38
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    rra
    rrca
    rst $38
    call nz, Call_03c_4c3b
    dec b
    ld d, h
    ld c, h
    ld b, $68
    ld c, h
    rlca
    add c
    ld c, h

Call_03c_4c3b:
    rst $18
    jp c, $6c00

    push hl
    ld [hl], a
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    ld [$d4b2], sp
    dec d
    ld de, $1161
    add e
    add e
    add e
    ld l, e
    dec bc
    rst $38
    rst $18
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    ld [$d4c3], sp
    and l
    and c
    and c
    and c
    or e
    or e
    or e
    xor e
    dec bc
    rst $38
    rst $18
    ret c

    ld [$d425], sp
    ld h, e
    ld bc, $0060
    ld h, b
    nop
    ld h, b
    nop
    ld b, c
    ld bc, $0141
    ld d, c
    ld bc, $dc65
    dec [hl]
    ld h, e
    dec c
    rst $38
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    rra
    rrca
    rst $38
    call nz, Call_03c_4c95
    dec b
    or l
    ld c, h
    ld b, $ce
    ld c, h
    rlca
    ld [c], a
    ld c, h

Call_03c_4c95:
    rst $18
    jp c, Jump_03c_7000

    push hl
    ld [hl], a
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    ld [$d4b3], sp
    dec d
    push de
    and l
    ld l, e
    call c, $d4b1
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add c
    call c, $6bb3
    rst $38
    rst $18
    db $db
    ld [bc], a
    pop hl
    ld [$d827], sp
    ld [$d4c3], sp
    and l
    ld h, l
    dec de
    call c, $b1c1
    or c
    or c
    add c
    add c
    or c
    call c, $abc3
    rst $38
    rst $18
    ret c

    ld [$d525], sp
    dec de
    dec d
    sub $a1
    push de
    ld de, $8561
    or l
    and l
    call c, $a235
    ld [bc], a
    rst $38
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    rra
    rrca
    rst $38
    call nz, Call_03c_4cf6
    dec b
    rla
    ld c, l
    ld b, $32
    ld c, l
    rlca
    ld c, [hl]
    ld c, l

Call_03c_4cf6:
    rst $18
    jp c, Jump_03c_7000

    push hl
    ld [hl], a
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    inc c
    or c
    call nc, Call_03c_4041
    ld b, b
    push de
    or c
    or b
    or b
    call nc, Call_03c_4041
    ld b, b
    ld h, c
    ld h, b
    ld h, b
    call c, $bfa5
    rst $38
    rst $18
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    inc c
    pop bc
    call nc, $8081
    add b
    ld b, c
    ld b, b
    ld b, b
    sub c
    sub b
    sub b
    or c
    or b
    or b
    call c, $d3b5
    ld c, a
    rst $38
    rst $18
    ret c

    inc c
    dec h
    call nc, VBlankInterrupt
    push de
    or c
    call nc, VBlankInterrupt
    push de
    or c
    call nc, VBlankInterrupt
    ld de, $0030
    push de
    or c
    ld b, e
    call c, Call_03c_4235
    ld [$dfff], sp
    ldh a, [rDIV]
    ret c

    inc c
    rra
    rrca
    rst $38
    add h
    dec [hl]
    ld h, [hl]
    dec b
    ld e, b
    ld h, [hl]
    rlca
    ld [hl], e
    ld h, [hl]
    call nz, Call_03c_4d6b
    dec b
    adc d
    ld c, l
    ld b, $a6
    ld c, l
    rlca
    or [hl]
    ld c, l

Call_03c_4d6b:
    rst $18
    jp c, Jump_03c_7c00

    push hl
    ld [hl], a
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    inc c
    or c
    call nc, Call_03c_6061
    ld h, b
    ld de, $1010
    ld d, c
    add b
    add b
    ld de, $5050
    call c, Call_03c_6fa5
    rst $38
    rst $18
    pop hl
    ld [$db27], sp
    ld [bc], a
    ret c

    inc c
    pop bc
    call nc, $a0a1
    and b
    ld h, c
    ld h, b
    ld h, b
    db $d3
    ld de, $1010
    call nc, $b0b1
    or b
    call c, $afb5
    rst $38
    rst $18
    ret c

    inc c
    dec h
    call nc, $1167
    ld d, c
    add c
    or c
    and e
    call c, $a235
    ld [$dfff], sp
    ldh a, [rDIV]
    ret c

    inc c
    rra
    rrca
    rst $38
    add h
    add a
    ld h, [hl]
    dec b
    xor a
    ld h, [hl]
    rlca
    ret c

    ld h, [hl]
    call nz, Call_03c_4dd3
    dec b
    ldh a, [rKEY1]
    ld b, $08
    ld c, [hl]
    rlca
    inc e
    ld c, [hl]

Call_03c_4dd3:
    rst $18
    jp c, Jump_03c_7c00

    push hl
    ld [hl], a
    db $db
    inc bc
    ret c

    inc c
    and d
    ld bc, $13d5
    sub e
    call nc, $d511
    ld h, b
    sub c
    db $10
    ld h, c
    or d
    call nc, $1122
    rlca
    rst $38
    rst $18
    rst $18
    db $db
    inc bc
    ret c

    inc c
    jp nz, $d401

    ld b, c
    ld hl, $4111
    ld h, c
    nop
    sub d
    db $d3
    ld de, $d442
    add d
    sub c
    rlca
    rst $38
    rst $18
    rst $18
    ret c

    inc c
    dec h
    ld bc, $46d5
    nop
    sub c
    nop
    ld de, $9100
    add c
    nop
    or d
    sub c
    rlca
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    ld de, $0f0f
    rst $38
    rst $18
    add h
    cpl
    ld c, [hl]
    dec b
    ld b, l
    ld c, [hl]
    ld b, $56
    ld c, [hl]
    rst $18
    jp c, Jump_03c_7800

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    ret c

    inc c
    and h
    call nc, $a060
    db $d3
    db $10
    ld h, b
    nop
    db $10
    dec [hl]
    rst $38
    rst $18
    rst $18
    db $db
    ld [bc], a
    ret c

    inc c
    or h
    call nc, $d3a0
    db $10
    ld h, b
    and b
    nop
    ld h, b
    add l
    rst $38
    rst $18
    rst $18
    ret c

    inc c
    dec h
    push de
    and b
    ld h, b
    and b
    call nc, RST_10
    push de
    and b
    push bc
    rst $38
    rst $18
    call nz, Call_03c_4e72
    dec b
    sbc e
    ld c, [hl]
    ld b, $be
    ld c, [hl]
    rlca
    ret nc

    ld c, [hl]

Call_03c_4e72:
    rst $18
    jp c, Jump_03c_7800

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    db $db
    ld [bc], a
    ret c

    ld [$01a1], sp
    push de
    ld de, $a161
    ld h, c
    or c
    call nc, $dc31
    and d
    ld h, l
    call c, $dba1
    inc bc
    push de
    ld d, c
    add c
    call nc, $dc11
    and h
    ld l, b
    ld [$dfff], sp
    rst $18
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    ld [$01c2], sp
    call nc, $0161
    and c
    call c, $b1c1
    and c
    or c
    call c, $d3c2
    dec d
    call c, $d4c1
    ld de, $8151
    call c, $a8c4
    ld [$dfff], sp
    rst $18
    ret c

    ld [$0125], sp
    push de
    dec d
    sub $b5
    push de
    ld de, $8161
    or l
    xor b
    ld [$dfff], sp
    rst $18
    ldh a, [rDIV]
    ret c

    ld [$d801], sp
    inc c
    rrca
    dec bc
    rst $38
    rst $18
    call nz, Call_03c_4ee8
    dec b
    dec c
    ld c, a
    ld b, $37
    ld c, a
    rlca
    ld d, e
    ld c, a

Call_03c_4ee8:
    rst $18
    jp c, Jump_03c_7400

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    pop hl
    inc c
    ld b, h
    ret c

    inc c
    and h
    rlca
    sub $80
    ld bc, $5020
    ld b, b
    ld d, e
    call c, $81a1
    ld h, c
    ld d, c
    ld sp, $c191
    call c, $d5a6
    add hl, sp
    dec b
    rst $38
    rst $18
    rst $18
    db $db
    inc bc
    pop hl
    inc c
    ld b, h
    ret c

    inc c
    ld [hl], h
    rst $10
    ret nz

    sub $30
    ld h, b
    sub b
    call c, $3094

jr_03c_4f1f:
    ld h, b
    sub b
    ret nz

    call c, $d5b4
    jr nz, @+$03

    sub $b0
    push de
    inc hl
    ld bc, $b1dc
    ld hl, $5141
    call c, Call_03c_6fb6
    dec b
    rst $38
    rst $18
    rst $18
    ret c

    ld b, $25
    sub $97
    and a
    or c
    inc bc
    or b
    nop
    or a
    inc bc
    push de
    ld hl, $1101
    ld bc, $b1d6
    ld bc, $0cd8
    jr nz, jr_03c_4f1f

    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [$03]
    ret c

    inc c
    ld h, a
    rrca
    rrca
    dec b
    rst $38
    rst $18
    call nz, $4f6a
    dec b
    sub d
    ld c, a
    ld b, $ad
    ld c, a
    rlca
    jp nc, $df4f

    jp c, Jump_03c_7400

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    pop hl
    inc c
    inc [hl]
    ret c

    ld [$d4a1], sp
    ld d, c
    ld d, c
    ld d, c
    ld de, $a1d5
    ld h, c
    and c
    call nc, Call_03c_6111
    ld de, $a1d5
    call nc, $a161
    and c
    and c
    call c, $cba7
    dec b
    rst $38
    rst $18
    rst $18
    db $db
    ld [bc], a
    ret c

    ld [$d4b1], sp
    add c
    add c
    add c
    and e
    pop bc
    call c, $d3b4
    dec de
    call c, $11b1
    ld de, $dc11
    or a
    dec sp
    dec b
    rst $38
    rst $18
    rst $18
    ret c

    ld [$d525], sp
    stop
    stop
    stop
    sub $61
    ld bc, $61d5
    sub $61
    ld bc, $61d5
    sub $61
    ld bc, $61d5
    jr nc, jr_03c_4fc9

jr_03c_4fc9:
    jr nc, jr_03c_4fcb

jr_03c_4fcb:
    jr nc, jr_03c_4fcd

jr_03c_4fcd:
    sub $8b
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [$03]
    ret c

    ld [$fd20], sp
    ld b, $d7
    ld c, a
    set 1, e
    rlc l
    rst $38
    rst $18
    call nz, Call_03c_4fee
    dec b

jr_03c_4fe6:
    jr nz, @+$52

    ld b, $3d
    ld d, b
    rlca
    ld d, h
    ld d, b

Call_03c_4fee:
    rst $18
    jp c, Jump_03c_7c00

jr_03c_4ff2:
    push hl
    ld [hl], a
    db $db
    inc bc
    pop hl
    inc c
    inc [hl]
    ret c

    inc c
    and c
    db $d3
    ld sp, $c1d4
    db $d3
    ld sp, $60b0
    jr nc, jr_03c_5066

    call c, $3091
    call nc, Call_03c_60b0
    or b
    call c, $d381
    jr nc, jr_03c_4fe6

    or b
    ld h, b
    jr nc, jr_03c_4ff2

    and c
    ld de, $8151
    call c, $a9a7
    dec b
    rst $38
    rst $18
    rst $18
    db $db
    inc bc
    pop hl
    inc c
    inc [hl]
    ret c

    inc c
    pop bc
    push de
    pop bc
    add c
    pop bc
    call c, $d4b6
    dec sp
    call c, Call_03c_51c1
    add c
    db $d3
    ld de, $b7dc
    add hl, sp
    dec b
    rst $38
    rst $18
    rst $18
    ret c

    inc c
    dec h
    sub $80
    nop
    add b
    nop
    add b
    nop
    or l
    ld h, l
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    add hl, sp
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    ld b, $33
    inc sp
    inc sp
    set 1, c
    jr nz, jr_03c_5080

    inc sp
    inc sp
    inc sp
    ret c

    inc c
    ret


jr_03c_5066:
    dec b
    rst $38
    rst $18
    call nz, Call_03c_5075
    dec b
    xor c
    ld d, b
    ld b, $c9
    ld d, b
    rlca
    db $ec
    ld d, b

Call_03c_5075:
    rst $18
    jp c, $9800

    push hl
    ld [hl], a
    db $db
    inc bc
    ret c

    ld b, $a4

jr_03c_5080:
    push de
    ld d, b
    nop
    ld d, b
    nop
    call nc, $d523
    ld h, b
    nop
    ld h, b
    nop
    call nc, $d533
    ld d, b
    nop
    ld d, b
    nop
    call nc, $dc53
    ld [hl], c
    push de
    ld d, b
    ld [hl], b
    sub b
    and b
    call c, $c091
    call nc, $3020
    ld b, b
    call c, Call_03c_53a4
    dec bc
    rst $38
    rst $18
    rst $18
    db $db
    inc bc
    ret c

    ld b, $b4
    push de
    and b
    nop
    and b
    nop
    call nc, $d553
    and b
    nop
    and b
    nop
    call nc, $d563
    and b

jr_03c_50bf:
    nop
    and b
    nop
    call nc, $9783
    and e
    dec bc
    rst $38
    rst $18
    rst $18
    ret c

    ld b, $25
    push de
    jr nz, jr_03c_50d0

jr_03c_50d0:
    jr nz, jr_03c_50d2

jr_03c_50d2:
    sub $a3
    push de
    jr nc, jr_03c_50d7

jr_03c_50d7:
    jr nc, jr_03c_50d9

jr_03c_50d9:
    sub $a3
    push de
    stop
    stop
    sub $a3
    push de
    ld d, c
    sub $91
    pop bc
    sub c
    and e
    dec bc
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    ld b, $31
    ld hl, $31c3
    ld hl, $31c3
    ld hl, $2030
    jr nc, jr_03c_511d

    ld sp, $2121
    ld sp, $ffcf
    rst $18
    call nz, Call_03c_5110
    dec b
    ld sp, $0651
    ld c, h
    ld d, c
    rlca
    ld l, d
    ld d, c

Call_03c_5110:
    rst $18

Call_03c_5111:
    jp c, $9000

    push hl
    ld [hl], a
    db $db
    inc bc
    pop hl
    ld [$d824], sp
    inc c

jr_03c_511d:
    and e
    call nc, RST_30
    push de
    ret nz

    call nc, $8530
    call c, Call_03c_51b1
    ld [hl], c
    add c
    call c, $77a5
    dec b
    rst $38
    rst $18
    rst $18
    db $db
    inc bc
    pop hl
    ld [$d824], sp
    inc c
    or e
    call nc, $0080
    jr nc, jr_03c_50bf

    push bc
    call c, $a1c1
    pop bc
    db $d3
    ld de, $b5dc
    scf
    dec b
    rst $38
    rst $18
    rst $18
    ret c

    ld b, $25
    sub $c1
    ld bc, $c181
    push de
    inc sp
    sub $80
    nop
    add b
    nop
    add e
    push de
    ld de, $d601
    pop bc
    ld bc, $13d5
    sub $af
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    ld b, $33
    ld hl, $c731
    inc sp
    inc hl
    inc sp
    jr nz, @+$22

    ld sp, $05cf
    rst $38
    rst $18
    call nz, Call_03c_5189
    dec b
    cp [hl]
    ld d, c
    ld b, $f5
    ld d, c
    rlca
    dec de
    ld d, d

Call_03c_5189:
    rst $18
    jp c, Jump_03c_7800

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    pop hl
    ld [$d824], sp
    ld b, $92
    call nc, $fe62
    xor d
    ld d, c
    or d
    reti


    ld [bc], a
    cp $aa
    ld d, c
    reti


    nop
    call c, $afa7
    dec b
    rst $38
    rst $18
    inc b
    push de
    ld h, c
    sub c
    call nc, Call_03c_6121

Call_03c_51b1:
    ld hl, $61d5
    sub c
    call nc, $d521
    ld h, c
    sub c
    call nc, Call_03c_6121
    rst $38
    rst $18
    db $db
    inc bc

Call_03c_51c1:
    pop hl
    ld [$d824], sp
    ld b, $b5
    db $d3
    ld [hl+], a
    ld [bc], a
    call nc, $0090
    sub a
    push de
    ld hl, $d601
    sub c

Jump_03c_51d3:
    nop
    call c, $d395
    db $10
    call c, $21b5
    ld bc, $0131
    ld b, d
    ld [bc], a
    call nc, $00b0
    or a
    push de
    ld b, c
    ld bc, $b1d6
    nop
    call c, $d395
    jr nc, @-$22

    or l
    ld b, a
    ld l, a
    dec b
    rst $38
    rst $18
    rst $18
    ret c

    ld b, $25
    sub $92
    ld [bc], a
    push de
    jr nz, jr_03c_51ff

jr_03c_51ff:
    daa
    sub c
    ld bc, $0161
    ld hl, $d611
    or c
    sub c
    add d
    ld [bc], a
    push de
    ld b, b
    nop
    ld b, a
    or c
    ld bc, $0181
    add c
    ld h, c
    add c
    ld b, c
    ld l, a
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    ld b, $cb
    jr nc, jr_03c_5253

    ld sp, $3333
    jr nc, jr_03c_5248

    jr nz, jr_03c_524a

    jr nz, @+$22

    jr nz, jr_03c_524e

    db $fd
    ld [bc], a
    jr nz, jr_03c_5284

    rst $08
    dec b
    rst $38

Call_03c_5235:
    rst $18
    call nz, Call_03c_5242
    dec b
    ld h, [hl]
    ld d, d
    ld b, $83
    ld d, d
    rlca
    and c
    ld d, d

Call_03c_5242:
    rst $18
    jp c, $9000

    push hl
    ld [hl], a

jr_03c_5248:
    db $db
    ld [bc], a

jr_03c_524a:
    ret c

    ld [$d582], sp

jr_03c_524e:
    sub c
    inc bc
    ld hl, $9161

jr_03c_5253:
    ld h, c
    sub c
    call nc, Call_03c_6131
    ld sp, $c1d5
    or c
    ld [hl], c
    or c
    sub c
    ld [hl], c
    call c, $9d97
    dec b
    rst $38
    rst $18
    rst $18
    db $db
    ld [bc], a
    ret c

    ld [$02b3], sp
    call nc, $d3c0
    ld de, $93d4
    or c
    call c, $c3c1
    or c
    sub e
    ld h, c
    ld [hl], e
    ld h, c
    ld b, e
    call c, Call_03c_6db7
    dec b
    rst $38
    rst $18
    rst $18

jr_03c_5284:
    ret c

    ld [$d525], sp
    ld hl, $6101
    ld b, c
    ld hl, $3191
    ld bc, $d631
    sub c
    pop bc
    push de
    ld sp, $0141
    sub $b1
    push de
    ld de, $2d01
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [$03]
    ret c

    ld [$3345], sp
    ld b, c
    ld b, e
    ld b, c
    inc sp
    ld b, c
    inc sp
    ld b, c
    inc sp
    call $ff05
    rst $18
    ld b, h
    cp d
    ld d, d
    rlca
    push hl
    ld d, d
    rst $18
    ret c

    ld bc, $dbf1
    nop
    db $d3
    ld h, h
    and h
    jp nc, Jump_03c_5414

    db $d3
    ld [hl], h
    or h
    jp nc, Jump_03c_5424

    db $fd
    inc bc
    ret nz

    ld d, d
    call c, $d3c1
    ld h, h
    and h
    call c, $d291
    inc d
    ld d, h
    call c, $d371
    ld [hl], h
    or h
    call c, $d251
    inc h
    ld d, h
    rst $38
    add hl, bc
    sbc [hl]
    nop
    add hl, bc
    cp [hl]
    ld de, $06fd
    push hl
    ld d, d
    add hl, bc
    and a
    nop
    db $10
    ld [hl], l
    ld de, $04ff
    ld sp, hl
    ld d, d
    db $db
    ld bc, $a5dd
    ld [bc], a
    pop af
    ldh [rTMA], a
    dec c
    xor a
    or b
    dec b
    inc b
    nop
    nop
    nop
    add hl, bc
    db $f4
    jr @+$09

    db $fd
    inc bc
    db $fd
    ld d, d

Call_03c_5311:
    db $dd
    ld [$07ff], sp
    rla
    ld d, e
    dec bc
    ld a, l
    ld d, b
    ld b, $7d
    ld c, a
    dec bc
    ld a, a
    ld b, a
    rrca
    ld l, [hl]
    ld [hl+], a
    db $fd
    inc bc
    rla
    ld d, e
    ld b, $6d
    ld d, b
    dec b
    ld e, l
    ld c, a
    dec b
    ld c, a
    ld b, a
    ld a, [bc]
    ld [hl-], a
    ld b, [hl]
    rst $38
    ld b, h

Call_03c_5335:
    ld a, [hl-]
    ld d, e
    rlca
    ld b, l
    ld d, e
    sbc $f2
    db $dd
    push af
    inc e
    ld hl, sp-$80
    dec b
    db $dd
    ld [$04ff], sp
    ld hl, sp+$6c
    inc b
    ret z

    ld e, h
    inc b
    ld a, b
    ld e, e
    db $10
    ld sp, $ff5a
    rlca
    ld d, l
    ld d, e
    inc b
    ld hl, sp+$5d
    inc b
    ret c

    ld l, a
    db $fd
    ld [bc], a
    ld d, l
    ld d, e
    rst $38
    ld b, h
    ld h, [hl]
    ld d, e
    rlca
    ld a, c
    ld d, e
    db $db
    inc bc
    inc b
    ld a, [c]
    add e
    inc b
    inc b
    ld a, [c]
    ld de, $0405
    ld a, [c]
    adc c
    dec b
    inc b
    ld a, [c]
    db $ed
    dec b
    rst $38
    inc d
    sbc d
    add hl, bc
    rst $38
    ld b, h
    add e
    ld d, e
    rlca
    sub d
    ld d, e
    db $db
    nop
    inc bc
    pop de
    or b
    rlca
    inc bc
    pop de
    jp nz, $1807

    jp nc, $07d5

    rst $38
    inc bc
    db $f4
    ld a, [de]
    inc bc
    db $f4
    add hl, de
    jr @-$0c

    jr @+$01

    rlca
    sbc a
    ld d, e
    nop
    nop
    nop
    inc b
    pop hl

Call_03c_53a4:
    ld [de], a
    nop
    nop
    nop
    ld [bc], a
    or c
    ld [hl+], a
    db $fd
    ld [bc], a
    sbc a
    ld d, e
    rst $38
    inc b
    or e
    ld d, e
    rst $18
    ret c

    ld [bc], a
    db $f4
    db $db
    nop
    call nc, $b222
    call c, $22d2
    or d
    call c, $12b1
    and d
    call c, $1281
    and d
    rst $18
    rst $38
    ld b, h
    ret nc

    ld d, e
    rlca
    di
    ld d, e
    db $db
    nop
    jr nz, @+$81

Jump_03c_53d4:
    jr nz, jr_03c_53dd

    db $dd
    sub l
    inc b
    ld hl, sp+$20
    ld b, $04

jr_03c_53dd:
    add sp, $30
    ld b, $04
    ret c

    ld b, b
    ld b, $04
    sub l
    jr nz, jr_03c_53ee

    inc b
    ld [hl], e
    jr nc, @+$08

    inc b
    ld d, c

jr_03c_53ee:
    ld b, b
    ld b, $dd
    ld [$20ff], sp
    rst $28
    nop
    rst $38
    ld b, h
    db $fd
    ld d, e
    rlca
    ld d, $54
    rst $18
    db $db
    ld [bc], a
    ret c

    ld [bc], a
    pop af
    db $d3
    ld [de], a
    call c, $1241
    call c, $22f1
    call c, $2241
    call c, $32f1
    call c, $3241

Jump_03c_5414:
    rst $18
    rst $38
    ld de, $19af
    ld [de], a
    xor a
    jr @+$01

    inc b
    jr nz, jr_03c_5474

    db $db
    nop
    db $dd
    inc [hl]

Jump_03c_5424:
    inc bc
    cp d
    ld sp, $0206
    nop
    nop
    nop
    inc bc
    ld hl, sp+$21
    ld b, $02
    nop
    nop
    nop
    inc bc
    ld hl, sp+$11
    ld b, $02
    nop
    nop
    nop
    inc bc
    add sp, $01
    ld b, $02
    nop
    nop
    nop
    inc bc
    add sp, -$0f
    dec b
    ld [bc], a
    nop
    nop
    nop
    db $fd
    ld [bc], a
    inc h
    ld d, h
    db $dd
    ld [$07ff], sp
    ld d, [hl]
    ld d, h
    ld [bc], a
    ld [$024b], a
    ld [$025b], a
    nop
    nop
    inc b
    xor $47
    inc b
    xor $46
    inc b
    xor $45
    rst $38
    inc b
    ld l, h
    ld d, h
    db $db
    ld [bc], a
    ld [bc], a
    pop bc
    ret z

    rlca
    ld [bc], a
    pop de

jr_03c_5474:
    jp c, $fd07

    ld [bc], a
    ld l, [hl]
    ld d, h
    ld a, [de]
    pop af
    ld [c], a
    rlca
    rst $38
    inc b
    add d
    ld d, h
    db $db
    nop
    db $dd
    sub a
    ld [bc], a
    db $f4
    ld [hl], d
    rlca
    inc b
    nop
    nop
    nop
    ld [bc], a
    call nz, $0772
    inc b
    nop
    nop
    nop
    ld [bc], a
    or h
    ld [hl], d
    rlca
    inc b
    nop
    nop
    nop
    ld [bc], a
    and c
    ld [hl], d
    rlca
    db $dd
    ld [$44ff], sp
    xor e
    ld d, h
    rlca
    or [hl]
    ld d, h
    db $db
    ld [bc], a
    db $dd
    xor h
    inc c
    pop af
    and e
    dec b
    db $dd
    ld [$0cff], sp
    or c
    ld l, h
    rst $38
    inc b
    cp l
    ld d, h
    db $db
    ld [bc], a
    db $dd
    sub l
    ld [bc], a
    ret


    or e
    inc bc
    dec b
    ld hl, sp+$63
    inc b
    inc b
    pop de
    ld b, e
    dec b
    db $dd
    ld [$44ff], sp
    sub $54
    rlca
    db $eb
    ld d, h
    db $db
    ld [bc], a
    db $dd
    push bc
    inc bc
    ld hl, sp-$7f
    dec b
    ld bc, $0000
    nop
    db $dd
    rl b
    ld a, [c]
    pop de
    dec b
    db $dd
    ld [$03ff], sp
    ld [c], a
    ld l, [hl]
    ld bc, $0000
    db $10
    ld [c], a
    ld l, l
    rst $38
    inc b
    ld hl, sp+$54
    inc bc
    db $f4
    or l
    rlca
    inc bc
    push af
    ret z

    rlca
    ld [$daf4], sp
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld [$dac1], sp
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld [$da91], sp
    rlca
    rst $38
    inc b
    jr jr_03c_556d

    rst $18
    pop hl
    nop
    ld [de], a
    db $db
    inc bc
    db $dd
    db $fd
    ret c

    inc bc
    ld hl, sp-$2b
    ld h, d
    sub d
    jp nz, $8252

    or d
    call c, Call_03c_42bf
    ld [hl], d
    and d
    call c, $325f
    call c, Call_03c_622f
    sub d
    db $dd
    ld [$ffdf], sp
    rlca
    dec a
    ld d, l
    dec bc
    ld [$0b6c], a
    ld [$0b6b], a
    ld [$0b6a], a
    ld [$0b69], a
    pop hl
    ld e, c
    rst $38
    ld b, h
    ld d, e
    ld d, l
    dec b
    ld h, c
    ld d, l
    rst $18
    db $db
    nop
    pop hl
    ld [de], a
    ld d, e
    ret c

    ld [$d4af], sp
    xor b
    sbc b
    rst $18
    rst $38
    rst $18
    db $db
    nop
    pop hl
    ld [de], a
    ld d, e
    ret c

    ld [$d4af], sp
    jr @-$29

jr_03c_556d:
    ret z

    rst $18
    rst $38
    ld b, h
    db $76
    ld d, l
    rlca
    and c
    ld d, l
    db $db
    ld [bc], a
    db $dd
    sub a
    inc b
    ld hl, sp-$80
    ld b, $14
    ld hl, sp-$80
    ld b, $14
    ret z

    ld h, b
    ld b, $14
    xor b
    ld [hl], b
    ld b, $14
    adc b
    add b
    ld b, $14
    ld hl, sp+$61
    dec b
    inc d
    ret z

    ld b, c
    dec b
    inc d
    xor b
    ld hl, $1405
    adc b
    ld de, $dd05
    ld [$04ff], sp
    ret z

    ld b, h
    inc d
    ret z

    ld d, b
    inc d
    ret z

    ld d, d
    inc d
    ret z

    ld d, h
    inc d
    ret z

    ld d, [hl]
    ld b, b
    rst $00
    ld d, a
    rst $38
    inc b
    or a
    ld d, l
    db $db
    nop
    db $dd
    ld [hl], a
    inc b
    xor c
    ldh a, [rTMA]
    inc c
    ld hl, sp+$20
    rlca
    db $dd
    ld a, a
    ld [$40f1], sp
    rlca
    db $dd
    ld [$04ff], sp
    rst $08
    ld d, l
    db $db
    nop
    ld [bc], a
    di
    sub [hl]
    rlca
    ld [bc], a
    inc hl
    sub [hl]
    rlca
    inc d
    pop af
    call nz, $ff07
    rlca
    pop hl
    ld d, l
    ld [bc], a
    pop hl
    ld c, c
    nop
    nop
    nop
    db $fd
    ld [$55e1], sp
    ld [$49e1], sp
    rst $38
    inc b
    ld a, [c]
    ld d, l
    db $dd
    ld [hl], a
    db $db
    inc bc
    ld [bc], a
    ld hl, sp+$20
    rlca
    ld bc, $6088
    ld b, $02
    ld hl, sp-$70
    rlca
    db $fd
    dec b
    ld a, [$0c55]
    ld hl, sp+$00
    rlca
    inc c
    ret z

    jr nz, @+$09

    inc c
    xor b
    nop
    rlca
    inc c
    ld a, b
    jr nz, jr_03c_561d

    inc c
    ld c, b
    nop
    rlca
    inc c
    jr z, jr_03c_563d

jr_03c_561d:
    rlca
    db $dd
    ld [$04ff], sp
    inc h
    ld d, [hl]
    db $db
    ld bc, $f101
    jp c, $0107

    pop de
    reti


    rlca
    ld bc, $daf1
    rlca
    ld [$dbd1], sp
    rlca
    rst $38
    inc b
    ld a, [hl-]
    ld d, [hl]
    db $db
    nop
    db $dd

jr_03c_563d:
    cp a
    ld [$59f1], sp
    rlca
    db $dd
    ld d, a
    ld [$59f1], sp
    rlca
    stop
    nop
    nop
    db $fd
    ld [bc], a
    inc a
    ld d, [hl]
    db $dd
    ld [$04ff], sp
    ld d, [hl]
    ld d, [hl]
    db $db
    ld [bc], a
    db $dd
    rst $10
    ld [$50e1], sp
    rlca
    db $dd
    rst $20
    ld [$e048], sp
    ld b, $08
    ld e, b
    ld hl, sp+$06
    ld [$1068], sp
    rlca
    ld [$2878], sp
    rlca
    ld [$4088], sp
    rlca
    ld [$5898], sp
    rlca
    db $10
    xor b
    ld [hl], b
    rlca
    db $dd
    ld [$04ff], sp
    add d
    ld d, [hl]
    db $db
    ld [bc], a
    db $dd
    and h
    ld [bc], a
    ld [$04e0], a
    dec c
    rst $30
    sub b
    ld [bc], a
    db $dd
    sbc [hl]
    inc b
    ret


    pop hl
    dec b
    ld [bc], a
    nop
    nop
    nop
    db $fd
    ld b, $84
    ld d, [hl]
    db $dd
    ld [$04ff], sp
    and d
    ld d, [hl]
    db $db
    ld [bc], a
    db $dd
    sub $02
    pop af
    ld b, b
    rlca
    ld bc, $0000
    nop
    db $fd
    inc bc
    and [hl]
    ld d, [hl]
    db $10
    pop af
    add b
    rlca
    db $dd
    ld [$04ff], sp
    cp h
    ld d, [hl]
    db $db
    inc bc
    ld [bc], a
    pop af
    db $e4
    rlca
    ld [bc], a
    pop af
    ldh [rTAC], a
    dec b
    ld a, [c]
    rst $20
    rlca
    db $fd
    inc bc
    cp [hl]
    ld d, [hl]
    ld bc, $0000
    nop
    ld [$e7c2], sp
    rlca
    ld bc, $0000
    nop
    ld [$e782], sp
    rlca
    rst $38
    inc b
    ld [c], a
    ld d, [hl]
    db $db
    ld [bc], a
    ld bc, $d0f8
    rlca
    inc b
    pop af
    ldh [rTAC], a
    db $fd
    ld [bc], a
    db $e4
    ld d, [hl]
    db $10
    pop af
    ldh [rTAC], a
    db $10
    pop de
    ldh [rTAC], a
    db $10
    add c
    ldh [rTAC], a
    rst $38
    ld b, h
    inc bc
    ld d, a
    rlca
    ld a, [de]
    ld d, a
    db $db
    ld [bc], a
    db $dd
    adc $10
    nop
    nop
    nop
    ld [bc], a
    ld hl, sp+$74
    rlca
    inc h
    nop
    nop
    nop
    db $fd
    ld [bc], a
    dec bc
    ld d, a
    db $dd
    ld [$30ff], sp
    rra
    ld [hl], $30
    db $76
    ld [hl], $ff
    rlca
    inc h
    ld d, a
    ld [bc], a
    add sp, $69
    ld b, $d8
    inc h
    ld [bc], a
    add sp, $6c
    inc b
    ret z

    ld b, [hl]
    ld b, $d1
    inc h
    rst $38
    inc b
    scf
    ld d, a
    db $db
    ld [bc], a
    db $dd
    sub [hl]
    ld b, $f8
    ld h, b
    rlca
    ld b, $e8
    jr nz, jr_03c_574a

    db $dd
    rst $18
    ld d, $f1
    jr nc, jr_03c_5750

    db $dd

jr_03c_574a:
    ld [$44ff], sp
    ld d, d
    ld d, a
    rlca

jr_03c_5750:
    ld [hl], c
    ld d, a
    db $db
    ld [bc], a
    db $dd
    rst $30
    jr nz, jr_03c_574a

    add b
    ld b, $01
    pop af
    ld h, b
    rlca
    jr nz, jr_03c_5760

jr_03c_5760:
    nop
    nop
    ld bc, $60f1
    rlca
    ld a, [de]
    nop
    nop
    nop
    ld bc, $60f1
    rlca
    db $dd
    ld [$20ff], sp
    ld a, [c]
    jr nz, @+$01

    inc b
    ld a, b

Call_03c_5777:
    ld d, a
    rst $18
    ret c

    ld bc, $dbf1
    nop
    call nc, $1040
    nop
    ld [hl], b
    rst $38
    inc b
    add a
    ld d, a
    rst $18
    ret c

    ld bc, $d4c1
    ld de, $1151
    ld d, d
    add d
    jp nz, Jump_03c_51d3

    ld de, $8251

Call_03c_5797:
    jp nz, $1fd1

    rst $38
    inc b
    sbc [hl]
    ld d, a
    rst $18
    db $db
    ld bc, $02d8
    pop hl
    jp nc, $d1c1

    ld sp, $c1d2
    add c
    pop bc

jr_03c_57ac:
    or c
    and c
    or c
    and c
    call c, $91c1

Call_03c_57b3:
    add c
    ld [hl], c
    call c, Call_03c_6191
    ld d, c
    ld b, c
    call c, $3161
    ld hl, $ff11
    inc b
    jp $df57


    ret c

    ld [bc], a
    pop af
    db $db
    ld [bc], a
    db $d3
    ld d, b
    stop
    add b
    jr nc, jr_03c_57ac

jr_03c_57d0:
    ld [c], a
    add $dc

Call_03c_57d3:
    add d
    add $dc
    ld b, d
    add $ff
    rlca
    call c, $0857
    rst $08
    ld c, l
    ld [$37f1], sp
    ld bc, $4ff8
    nop
    ret z

    ld h, $01
    ret c

    ld e, a
    nop
    xor b
    scf
    db $fd
    inc c
    ld [c], a
    ld d, a
    inc bc
    ld hl, sp+$6f
    inc b
    ret c

    ld e, a
    inc c
    ret c

    ld e, h
    jr z, jr_03c_57d0

    ld c, a
    rst $38
    rlca
    ld [bc], a
    ld e, b
    ld bc, $4f88
    ld [bc], a
    adc a
    ld [bc], a
    ld [bc], a
    ld e, a
    ld [de], a
    ld [bc], a
    ccf
    ld [hl+], a
    nop
    ld hl, sp+$27
    ld bc, $4ff8
    ld [$00f1], sp
    rst $38
    inc b
    dec de
    ld e, b
    db $db
    ld bc, $efdd
    ld bc, $e840
    rlca
    ld bc, $e860

jr_03c_5826:
    rlca
    ld [bc], a
    add b
    add sp, $07
    dec b
    and b
    add sp, $07
    ld b, $a0
    add sp, $07
    rlca
    add b
    add sp, $07
    ld [$e860], sp
    rlca
    add hl, bc
    jr nc, jr_03c_5826

    rlca
    rrca
    ld [de], a
    add sp, $07
    db $dd
    ld [$04ff], sp
    ld c, c
    ld e, b
    db $db
    inc bc
    db $dd
    ld a, a
    inc b
    ld d, l
    ld [c], a
    rlca
    dec b
    ld [hl], l
    ld [c], a
    rlca
    ld b, $94
    ld [c], a
    rlca
    rlca
    or h
    ld [c], a
    rlca
    ld [$e2b3], sp
    rlca
    add hl, bc
    sub e
    ld [c], a
    rlca
    ld a, [bc]
    ld [hl], d
    ld [c], a
    rlca
    ld a, [bc]
    ld d, e
    ld [c], a
    rlca
    ld a, [bc]
    inc [hl]
    ld [c], a
    rlca
    ld a, [bc]
    dec d
    ld [c], a
    rlca
    db $dd
    ld [$c4ff], sp
    add h
    ld e, b
    dec b
    sbc e
    ld e, b
    ld b, $ad
    ld e, b
    rlca
    ret z

    ld e, b
    rst $18
    jp c, Jump_03c_7c00

    push hl
    ld [hl], a
    ret c

    ld [$d5b1], sp
    and e
    ld [hl], c
    and e
    ld [hl], c
    dec h
    add l
    ld [hl], l
    ld d, c
    ld d, c
    ld d, c
    dec [hl]
    rst $38
    rst $18
    rst $18
    ret c

    ld [$d5c1], sp
    jp $c3a1


    and c
    ld b, l
    or l
    and l
    and c
    and c
    add c
    ld [hl], l
    rst $38
    rst $18
    rst $18
    ret c

    ld [$d425], sp
    dec [hl]
    push de
    and c
    ld bc, $b3a1
    add c
    call nc, $3145
    inc bc
    push de
    ld d, b
    nop
    ld [hl], b
    nop
    add b
    nop
    and c
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    dec h
    rrca
    dec bc
    rst $38
    rst $18
    call nz, Call_03c_58de
    dec b
    ld bc, $0659
    ld e, $59
    rlca
    ccf
    ld e, c

Call_03c_58de:
    rst $18
    jp c, Jump_03c_7800

    push hl
    ld [hl], a
    db $db
    inc bc
    pop hl
    ld [de], a
    inc [hl]
    ret c

    ld b, $b1
    rlca
    push de
    ld d, e
    ld d, e
    and e
    call nc, $dc23
    and h
    inc sp
    inc de
    push de
    and c
    add c
    ld [hl], e
    adc a
    sub $c7
    rlca
    rst $38
    rst $18
    rst $18
    db $db
    ld [bc], a
    pop hl
    ld [de], a
    inc [hl]
    ret c

    ld b, $c1
    call nc, Call_03c_7353
    add e
    add e
    add e
    add e
    call c, $73b4
    add e
    and e
    db $d3
    inc de
    call nc, $87cf
    rlca
    rst $38
    rst $18
    rst $18
    ret c

    inc c
    dec h
    inc bc
    sub $a0
    push de
    jr nz, @+$52

    and d
    jr nz, jr_03c_592b

jr_03c_592b:
    jr nc, jr_03c_599d

    and b
    call nc, $d632
    and b
    nop
    add b
    ret nz

    push de
    jr nc, @-$7c

    sub $c0
    nop
    add e
    inc bc
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    inc c
    inc de
    inc sp
    jr nz, jr_03c_5968

    jr nz, @+$22

    db $fd
    inc bc
    ld b, l
    ld e, c
    scf
    rst $38
    rst $18
    call nz, Call_03c_595d
    dec b
    add d
    ld e, c
    ld b, $a3
    ld e, c
    rlca
    ret nz

    ld e, c

Call_03c_595d:
    rst $18
    jp c, Jump_03c_7000

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc

jr_03c_5968:
    ret c

    ld [$d5b4], sp
    add b
    nop
    add b
    nop
    add l
    ld bc, $0080
    add b
    nop
    call c, Call_03c_63c1
    add e
    and e
    ret c

    inc c
    xor b
    cp e
    inc bc
    rst $38
    rst $18
    rst $18
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    ld [$d5c4], sp
    or b
    nop
    or b
    nop
    or l
    ld bc, $00b0
    or b
    nop
    call c, $d4d1
    ld b, e
    ld b, e
    ld b, e
    ret c

jr_03c_599d:
    inc c
    cp b
    dec sp
    inc bc
    rst $38
    rst $18
    rst $18
    ret c

    ld [$d525], sp
    ld b, b
    nop
    ld b, b
    nop
    ld b, l
    ld bc, $0040
    ld b, b
    nop
    ld de, $1101
    ld bc, $0111
    ret c

    inc c
    dec h
    sub $bb
    inc bc
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    ld [$3131], sp
    inc sp
    inc sp
    ld sp, $3331
    inc sp
    jr nz, @+$22

    jr nz, jr_03c_59f1

    ret c

    inc c
    rst $08
    rst $38
    db $fd
    call nz, Call_03c_59e2
    dec b
    inc b
    ld e, d
    ld b, $1f
    ld e, d
    rlca
    ld c, d
    ld e, d

Call_03c_59e2:
    rst $18
    jp c, Jump_03c_7c00

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    ld [$d5b2], sp

jr_03c_59f1:
    ld de, $8151
    call nc, $d513
    jp $b3a3


    call nc, $8343
    ret c

    inc c
    xor b
    ld a, e
    inc bc
    rst $38
    rst $18
    rst $18
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    ld [$d5b2], sp
    ld d, c
    add c
    call nc, Call_03c_5311
    inc sp
    inc de
    ld b, e
    add e
    or e
    ret c

    inc c
    cp b
    xor e
    inc bc
    rst $38
    rst $18
    rst $18
    ret c

    ld [$d525], sp
    stop
    stop
    stop
    ld de, $8151
    call nc, $d511
    inc de
    ld b, c
    add c
    or c
    call nc, $d541
    ld b, e
    jr nc, jr_03c_5a3a

jr_03c_5a3a:
    jr nc, jr_03c_5a3c

jr_03c_5a3c:
    sub $a1
    push de
    jr nc, jr_03c_5a41

jr_03c_5a41:
    jr nc, jr_03c_5a43

jr_03c_5a43:
    sub $a1
    push de
    dec [hl]
    dec b
    rst $38
    rst $18
    rst $18
    ldh a, [rDIV]
    ret c

    ld [$2020], sp
    jr nz, jr_03c_5a73

    jr nz, @+$22

    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    jr nz, jr_03c_5a7c

    jr nz, jr_03c_5a7e

    inc sp
    ld sp, $3131
    ld sp, $ffcb
    rst $18
    call nz, Call_03c_5a72
    dec b
    or d
    ld e, d
    ld b, $da
    ld e, d
    rlca
    inc c
    ld e, e

Call_03c_5a72:
    rst $18

jr_03c_5a73:
    jp c, Jump_03c_7000

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    db $db

jr_03c_5a7c:
    inc bc
    ret c

jr_03c_5a7e:
    ld [$d5a5], sp
    pop bc
    add c
    pop bc
    call nc, $013d
    db $db
    ld [bc], a
    call c, $d685
    ld h, b
    nop
    ld h, l
    call c, $dba5
    inc bc
    push de
    and c
    add c
    ld l, c
    ld bc, $02db
    call c, $d685
    ld h, b
    nop
    ld h, l
    call c, $dba5
    inc bc
    push de
    cp e
    call c, $83b2
    and e
    or e
    ret c

    inc c
    xor b
    xor l
    ld bc, $dfff
    rst $18
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    ld [$d4b5], sp
    add c
    ld sp, $6d81
    inc bc
    ld h, c
    ld d, c
    ld sp, $d511
    pop bc
    xor c
    inc bc
    and c
    call nc, $3111
    ld c, e
    call c, $83c2
    add e
    add e
    ret c

    inc c
    cp b
    ld a, l
    ld bc, $dfff
    rst $18
    ret c

    ld [$d525], sp
    add l
    or e
    ld h, c
    or b
    nop
    or b
    nop
    or b
    nop
    or c
    ld bc, $0030
    dec [hl]
    and e
    ld h, c
    and b
    nop
    and b
    nop
    and b
    nop
    and c
    ld bc, $0010
    dec d
    add e
    ld b, c
    add b
    nop
    add b
    nop
    add b
    nop
    or e
    add e
    ld b, e
    ret c

    inc c
    dec h
    dec a
    ld bc, $dfff
    rst $18
    ldh a, [rDIV]
    ret c

    ld [$3131], sp
    ld sp, $3135
    ld sp, $3531
    jr nz, @+$22

    jr nz, jr_03c_5b3d

    jr nz, jr_03c_5b3f

    db $fd
    ld [bc], a
    inc d
    ld e, e
    dec [hl]
    ld sp, $2031
    jr nz, jr_03c_5b5c

    inc sp

jr_03c_5b2a:
    inc sp
    jr nz, jr_03c_5b2a

    ld [de], a
    dec hl
    ld e, e
    dec [hl]
    rst $38
    rst $18
    rlca
    ld [hl], $5b
    inc b
    pop af
    ld e, a
    ld bc, $42a0
    db $10

jr_03c_5b3d:
    pop af
    ld d, e

jr_03c_5b3f:
    rst $38
    rlca
    ld b, e
    ld e, e
    inc b
    pop af
    ld e, [hl]
    ld bc, $12a0
    inc b
    ldh a, [$32]
    db $10
    pop af
    ld b, h
    rst $38
    rlca
    ld d, e
    ld e, e

jr_03c_5b53:
    inc bc
    pop af
    ld c, a
    ld bc, $22c8
    ld [bc], a
    ld hl, sp+$3f

jr_03c_5b5c:
    inc bc
    ret nc

    dec d
    jr nz, jr_03c_5b53

    dec [hl]
    rst $38
    ld b, h
    ld l, c
    ld e, e
    dec b
    adc h
    ld e, e
    db $db
    ld [bc], a
    ld [$40e1], sp
    rlca
    rla
    nop
    nop
    nop
    ld [$40b1], sp
    rlca
    rla
    nop
    nop
    nop
    ld [$4081], sp
    rlca
    rla
    nop
    nop
    nop
    ld [$4051], sp
    rlca
    rla
    nop
    nop
    nop
    rst $38
    db $db
    ld [bc], a
    ld [bc], a
    ld [$0000], sp
    ld [$41b1], sp
    rlca
    rla
    nop
    nop
    nop
    ld [$4181], sp
    rlca
    rla
    nop
    nop
    nop
    ld [$4151], sp
    rlca
    rla
    nop
    nop
    nop
    ld [$4121], sp
    rlca
    rla
    nop
    nop
    nop
    rst $38
    ld b, h
    cp c
    ld e, e
    rlca
    call z, $dd5b
    xor a
    db $db
    ld bc, $f806
    ldh a, [rTIMA]
    ld [bc], a
    pop af
    jr nz, @+$08

    db $10
    pop af
    ld d, b
    ld b, $dd
    ld [$02ff], sp
    add sp, $22
    ld de, $00aa
    inc b
    reti


    db $10
    ld [$0091], sp
    ld [bc], a
    ld h, c
    rlca
    db $fd
    dec b
    jp nc, $045b

    sbc c
    nop
    ld a, [bc]
    ld h, c
    nop
    ld b, $59
    nop
    ld [bc], a
    ld hl, $ff07
    ld b, h
    ld a, [c]
    ld e, e
    dec b
    ld bc, $db5c
    ld [bc], a
    ld bc, $89e1
    rlca
    ld bc, $a2e1
    rlca
    db $10
    pop hl
    or c
    rlca
    rst $38
    db $db
    ld [bc], a
    ld bc, $a2e1
    rlca
    ld bc, $b1e1
    rlca
    db $10
    pop hl
    call nz, $ff07
    inc b
    inc de
    ld e, h
    jr nz, jr_03c_5c15

jr_03c_5c15:
    nop
    nop
    db $db
    ld bc, $a7dd
    dec de
    db $f4
    ld d, b
    rlca
    dec de
    call nc, $0750
    dec de
    or h
    ld d, b
    rlca
    dec de
    sub h
    ld d, b
    rlca
    dec de
    ld [hl], h
    ld d, b
    rlca
    dec de
    ld d, h
    ld d, b
    rlca
    dec de
    inc [hl]
    ld d, b
    rlca
    dec de
    inc d
    ld d, b
    rlca
    db $dd
    ld [$04ff], sp
    ld b, c
    ld e, h
    jr nz, jr_03c_5c43

jr_03c_5c43:
    nop
    nop
    db $db
    ld [bc], a
    db $dd
    cp a
    dec de
    inc d
    cp h
    rlca
    dec de
    inc [hl]
    cp h
    rlca
    dec de
    ld d, h
    cp h
    rlca
    dec de
    ld [hl], h
    cp h
    rlca
    dec de
    sub h
    cp h
    rlca
    dec de
    or h
    cp h
    rlca
    dec de
    call nc, $07bc
    dec de
    db $f4
    cp h
    rlca
    db $dd
    ld [$84ff], sp
    ld a, h
    ld e, h
    dec b
    ld [hl], l
    ld e, h
    rlca
    sbc e
    ld e, h
    and $00
    ld [$0008], sp
    nop
    nop
    db $db
    ld [bc], a
    inc b
    ld e, a
    sub c
    ld b, $04
    ld l, a
    sub h
    ld b, $04
    ld a, b
    sub a
    ld b, $04
    ld a, a
    sbc d
    ld b, $04
    ld l, b
    xor [hl]
    ld b, $10
    ld l, a
    xor e
    ld b, $68
    ld h, l
    xor b
    ld b, $ff
    dec b
    xor a
    db $10
    inc b
    sbc a
    jr nz, jr_03c_5ca6

    adc a
    ld hl, $7f04

jr_03c_5ca6:
    ld [hl+], a
    inc b
    adc a
    ld hl, $9f04
    jr nz, jr_03c_5cb2

    sbc a
    db $10
    ld l, b
    and e

jr_03c_5cb2:
    nop
    rst $38
    inc b
    or a
    ld e, h
    db $db
    ld [bc], a
    db $dd
    ld a, c
    ld bc, $6399
    dec b
    inc b
    ld a, [c]
    or l
    inc b
    db $dd
    ld b, e
    db $10
    ld hl, sp-$33
    dec b
    db $fd
    ld [bc], a
    cp c
    ld e, h
    db $dd
    ld [$07ff], sp
    ld l, h
    ld h, l
    ld bc, $33e2
    ld [$22e1], sp
    rst $38
    jp c, $0001

    push hl
    ld [hl], a
    rst $18
    pop hl
    db $10
    inc d
    ret c

    inc c
    db $10
    db $d3
    ld d, c
    ld h, c
    add e
    and c
    add c
    jp nc, $1113

    ld sp, $d311
    add c
    and c
    ld h, c
    add a
    dec bc
    rst $38
    ld [bc], a
    rst $30
    inc h
    ld [bc], a
    rst $30
    inc [hl]
    inc b
    rst $30
    ld b, h
    ld [$55f4], sp
    ld [$44f1], sp
    rst $38
    add hl, bc
    pop af
    ld b, h
    ld [$43d1], sp
    rst $38
    db $db
    ld [bc], a
    ld [$40e1], sp
    rlca
    rst $38
    db $db
    ld [bc], a
    ld [bc], a
    ld [$0000], sp
    ld [$41b1], sp
    rlca
    rst $38
    db $db
    ld [bc], a
    db $dd
    ld a, [hl-]
    inc b
    ld a, [c]
    nop
    ld [bc], a
    db $dd
    ld [hl+], a
    ld [$00e2], sp
    ld [bc], a
    db $dd
    ld [$dbff], sp
    ld [bc], a
    db $dd
    ld a, [hl-]
    inc b
    ld a, [c]
    nop
    inc b
    db $dd
    ld [hl+], a
    ld [$00e2], sp
    inc b
    db $dd
    ld [$dbff], sp
    ld [bc], a
    inc b
    pop af
    add b
    rlca
    rst $38
    db $db
    ld [bc], a
    ld bc, $0008

jr_03c_5d4f:
    nop
    inc b
    and c
    ld h, c
    rlca
    rst $38
    db $db
    ld [bc], a
    inc b
    pop hl
    nop
    rlca
    jr jr_03c_5d4f

    ldh [rTAC], a
    rst $38
    db $db
    ld [bc], a
    ld bc, $0008
    nop
    inc b
    sub c
    pop bc
    ld b, $18
    and d
    and c
    rlca
    rst $38
    db $db
    ld [bc], a
    db $dd
    ld e, d
    rrca
    pop af
    nop
    inc bc
    db $dd
    ld [$02ff], sp
    pop af
    ld d, h
    inc c
    ld [hl], c
    inc hl
    ld [bc], a
    or c
    ld d, h
    inc c
    ld h, c
    inc hl
    ld b, $41
    ld d, h
    rst $38
    db $db
    ld [bc], a
    nop
    sub c
    ret nz

    rlca
    nop
    add c
    ret nc

    rlca
    nop
    sub c
    ret nz

    rlca
    inc c
    and c
    ret nc

    rlca
    rst $38
    db $db
    ld [bc], a
    db $dd
    rla
    rrca
    ldh a, [$f0]
    inc b
    rrca
    ld a, [c]
    ld d, b
    ld b, $dd
    ld [$dbff], sp
    nop
    db $dd
    inc d
    inc b
    ld a, [c]
    nop
    ld b, $fd
    inc b
    xor h
    ld e, l
    rrca
    di
    nop
    ld b, $dd
    ld [$dbff], sp
    ld [bc], a
    db $dd
    inc d
    inc b
    ld a, [c]
    nop
    ld b, $04
    ld a, [c]
    nop
    ld b, $dd
    rla
    rrca
    ld a, [c]
    nop
    ld b, $dd
    ld [$dbff], sp
    ld [bc], a
    db $dd
    dec d
    rrca
    ldh a, [$f0]
    inc b
    rrca
    ld a, [c]
    ld d, b
    ld b, $dd
    ld [$dbff], sp
    ld [bc], a
    rrca
    ld a, [c]
    ret nz

    rlca
    rrca
    nop
    nop
    nop
    inc bc
    and c
    add b
    rlca
    inc bc
    and c
    nop
    rlca
    inc bc
    and c
    ld b, b
    rlca
    inc bc
    and c
    nop
    rlca
    inc bc
    and c
    add b
    rlca
    inc bc
    and c
    nop
    rlca
    inc bc
    and c
    ret nz

    rlca
    ld [$00a1], sp
    rlca
    rst $38
    db $db
    ld [bc], a
    inc b
    ldh a, [rP1]
    ld b, $04
    ldh a, [rP1]
    inc b
    inc b
    ldh a, [rP1]
    ld [bc], a
    ld bc, $0000
    nop
    rst $38
    db $db
    ld [bc], a
    ld b, $f0
    nop
    rlca
    inc b
    nop
    nop
    nop
    ld b, $f0
    nop
    rlca
    ld bc, $0000
    nop
    rst $38
    db $db
    ld bc, $17dd
    rrca
    rst $10
    nop
    ld b, $0f
    or a
    add b
    dec b
    rrca
    add a
    nop
    dec b
    rrca
    ld b, a
    add b
    inc b
    rrca
    rla
    nop
    inc b
    db $dd
    ld [$dbff], sp
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [bc], a
    pop af
    add b
    ld b, $01
    nop
    nop
    nop
    inc b
    pop af
    add b
    rlca
    inc b
    nop
    nop
    nop
    rst $38
    db $db
    ld [bc], a
    db $dd
    inc l
    inc b
    ld a, [c]
    nop
    dec b
    db $dd
    ld [hl+], a
    ld [bc], a
    pop af
    nop
    dec b
    db $dd
    ld [$0001], sp
    nop
    nop
    rst $38
    db $db
    ld bc, $17dd
    rrca
    rst $10
    nop
    dec b
    rrca
    or a
    add b
    dec b
    rrca
    add a
    nop
    ld b, $0f
    ld b, a
    add b
    ld b, $0f
    rla
    nop
    rlca
    db $dd
    ld [$dbff], sp
    ld bc, $17dd
    rrca
    rst $10
    nop
    rlca
    rrca
    or a
    add b
    ld b, $0f
    add a
    nop
    ld b, $0f
    ld b, a
    add b
    dec b
    rrca
    rla
    nop
    dec b
    db $dd
    ld [$dbff], sp
    ld bc, $16dd
    rrca
    jp nc, $0500

    db $dd
    ld [$dbff], sp
    ld [bc], a
    db $dd
    sub l
    rrca
    ld a, [c]
    nop
    inc b
    db $dd
    ld [$02ff], sp
    pop af
    ld [hl-], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    pop af
    ld [hl+], a
    ld bc, $0000
    rst $38
    ld [bc], a
    pop af
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    and c
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    pop de
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    add c
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    or c
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld h, c
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    sub c
    ld [de], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, c
    ld [de], a
    ld [bc], a
    nop
    nop
    rst $38
    db $db
    inc bc
    db $dd
    ld e, d
    inc b
    ldh a, [rP1]
    dec b
    db $dd
    ld [$0004], sp
    nop
    nop
    rrca
    ldh a, [rP1]
    dec b
    ld bc, $0000
    nop
    rst $38
    db $db
    inc bc
    inc b
    ldh a, [rSB]
    inc b
    inc b
    nop
    nop
    nop
    rrca
    ldh a, [rSB]
    inc b
    ld bc, $0000
    nop
    rst $38
    db $db
    nop
    db $dd
    rla
    rrca
    jp nc, $0700

    db $dd
    ld [$04ff], sp
    and d
    inc hl
    ld [$34f1], sp
    rrca
    nop
    nop
    ld [bc], a
    rst $30
    inc h
    ld [bc], a
    rst $30
    inc [hl]
    inc b
    rst $30
    ld b, h
    ld [$55f4], sp
    ld [$44f1], sp
    rst $38
    db $db
    ld [bc], a
    rrca
    ldh a, [rP1]
    dec b
    inc b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    dec b
    rrca
    ldh a, [rP1]
    dec b
    rrca
    ldh a, [rP1]
    dec b
    rrca
    ldh a, [rP1]
    dec b
    rrca
    ld a, [c]
    nop
    dec b
    rst $38
    db $db
    inc bc
    rrca
    ldh a, [$82]
    inc b
    inc b
    nop
    nop
    nop
    rrca
    ldh a, [$82]
    inc b
    rrca
    ldh a, [$82]
    inc b
    rrca
    ldh a, [$82]
    inc b
    rrca
    ldh a, [$82]
    inc b
    rrca
    ld a, [c]
    add d
    inc b
    rst $38
    db $db
    ld bc, $3add
    inc b
    ld a, [c]
    nop
    dec b
    db $dd
    ld [hl+], a
    inc b
    ld [c], a
    nop
    dec b
    db $dd
    ld a, [hl-]
    inc b
    ld a, [c]
    nop
    rlca
    db $dd
    ld [hl+], a
    rrca
    ld [c], a
    nop
    rlca
    db $dd
    ld [$dbff], sp
    ld [bc], a
    rrca
    di
    jr nc, jr_03c_5fbb

    ld [$3065], sp
    rlca
    rrca
    db $f4
    nop

jr_03c_5fbb:
    rlca
    rrca
    ld [hl], h
    nop
    rlca
    rrca
    ld b, h
    nop
    rlca
    rrca
    inc h
    nop
    rlca
    rst $38
    db $db
    ld [bc], a
    db $dd
    cpl
    rrca
    ld a, [c]
    add b
    rlca
    rst $38
    db $db
    ld [bc], a
    rrca
    jp nz, $0782

    rst $38
    db $db
    nop
    nop
    jp nc, $0700

    nop
    jp nc, $0740

    nop
    jp nc, $0780

    nop
    jp nc, $07c0

    ld a, [bc]
    pop hl
    ldh [rTAC], a
    ld bc, $0000
    nop
    rst $38
    db $db
    ld [bc], a
    db $dd
    ld d, $0f
    ld a, [c]
    nop
    inc b
    db $dd
    ld [$0fff], sp
    and d
    ld [hl+], a
    rst $38
    rrca
    pop de
    nop
    ld [bc], a
    db $dd
    ld [$04ff], sp
    push af
    inc sp
    ld [$22f4], sp
    rrca
    ld a, [c]
    ld hl, $02ff
    ld h, c
    inc hl
    ld [bc], a
    and c
    inc sp
    ld [bc], a
    pop bc
    inc sp
    ld [bc], a
    ld d, c
    ld de, $f102
    inc sp
    ld [bc], a
    ld b, c
    ld de, $c102
    inc sp
    ld [bc], a
    ld sp, $0211
    add c
    inc sp
    ld [bc], a
    ld sp, $0811
    ld b, c
    inc sp
    rst $38
    db $db
    ld [bc], a
    db $dd
    ld b, h
    rrca
    ldh a, [$f0]
    inc b
    db $dd
    rla
    rrca
    ld a, [c]
    ld d, b
    ld b, $dd
    ld [$dbff], sp
    ld [bc], a
    rrca
    sub d
    nop
    ld b, $0f
    sub d
    add d
    rlca
    rst $38
    db $dd
    ld h, a
    inc b
    rst $30
    and b
    rlca
    inc b
    rst $30
    and b
    rlca
    inc b
    rst $30
    and b
    rlca
    inc b

Call_03c_6061:
    rst $30
    and b
    rlca
    inc b
    rst $30
    and b
    rlca
    db $dd
    ld [$0004], sp
    nop
    nop
    rst $38
    ld [bc], a
    and c
    ld [de], a
    rst $38
    db $db
    ld bc, $afdd
    rrca
    ld a, [c]
    add b
    rlca
    db $dd
    ld [$dbff], sp
    ld bc, $97dd
    rrca
    ld a, [c]
    nop
    dec b
    db $dd
    ld [$02ff], sp
    and c
    ld [hl+], a
    rst $38
    ld [$54f1], sp
    rst $38
    rrca
    adc a
    ld de, $ff04
    ld [de], a
    ld a, [bc]
    pop af
    ld d, l
    rst $38
    rrca
    adc a
    inc [hl]
    ld [$35f2], sp
    ld a, [bc]
    pop af
    ld d, l
    rst $38
    rrca
    sbc a
    inc hl
    ld [$21f1], sp
    rst $38
    ld [bc], a
    pop hl
    ld c, e
    ld a, [bc]

Call_03c_60b0:
    pop af
    ld b, h
    ld [bc], a
    pop hl
    ld a, [hl-]
    ld b, $f1
    inc [hl]
    rst $38
    ld [bc], a
    db $f4
    ld b, h
    ld [bc], a
    db $f4
    inc d
    rrca
    pop af
    ld [hl-], a
    rst $38
    inc b
    adc a
    ld d, l
    ld [bc], a
    db $f4
    ld b, h
    ld [$22f4], sp
    rrca
    ld a, [c]
    ld hl, $08ff
    ld c, a
    inc hl
    inc b
    call nz, $0622
    ld a, [c]
    inc hl
    db $fd
    inc b
    ret nc

    ld h, b
    rst $38
    ld [$334f], sp
    inc b
    call nz, $0622
    ld a, [c]
    inc hl
    rrca
    ld a, [c]
    ld [hl+], a
    rst $38
    ld [$32ff], sp
    ld [$43f4], sp
    ld [$54f2], sp
    ld [$65f1], sp
    rst $38
    ld bc, $33c2
    ld [bc], a
    ld a, [c]
    ld hl, $e201
    inc sp
    ld bc, $32c2
    ld bc, $1292
    ld bc, $31b2
    inc c
    sub c
    db $10
    ld [$41f2], sp
    rst $38

Call_03c_6111:
    ld bc, $2394
    ld bc, $22b4
    ld [$44f1], sp
    rst $38
    ld [bc], a
    sub h
    inc sp
    inc b
    or h
    ld [hl+], a

Call_03c_6121:
    inc b
    pop af
    ld b, h
    ld [$55f1], sp
    rst $38
    inc b
    rst $38
    ld d, l
    ld [$65f1], sp
    rst $38
    ld [bc], a
    add h

Call_03c_6131:
    ld b, e
    ld [bc], a
    call nz, $0822
    ld a, [c]
    inc [hl]
    rst $38
    inc b
    pop af
    inc [hl]
    rrca
    ld a, [c]
    ld h, h
    rst $38
    ld [bc], a
    pop af
    ld [hl+], a
    rrca
    ld a, [c]
    ld [de], a
    rst $38
    ld [bc], a
    jp nz, $0f01

    db $f4
    ld bc, $f20f
    ld bc, $08ff
    pop af
    ld [hl-], a
    ld [$33f1], sp
    rst $38
    db $db
    nop
    db $dd
    ld a, [hl-]
    inc b
    ld a, [c]
    nop
    ld [bc], a
    db $dd
    ld [hl+], a
    ld [$00e2], sp
    ld [bc], a
    db $dd
    ld [$00ff], sp
    pop de
    ld b, d
    inc b
    and c
    ld [hl-], a
    nop
    pop de
    ld [hl+], a
    ld b, $a1
    ld [hl-], a
    rst $38
    inc bc
    sub d
    ld sp, $b203
    ld [hl-], a
    inc bc
    jp nz, $0833

    pop af
    ld d, h
    rst $38
    inc c
    pop af
    ld d, h
    ld [$64f1], sp
    rst $38
    ld [bc], a
    pop af
    inc sp
    ld [bc], a
    pop bc
    ld [hl-], a
    ld [bc], a

Call_03c_6191:
    and c
    ld sp, $820f
    ld [hl-], a
    ld [$34f1], sp
    rst $38
    ld [bc], a
    jp nc, $0f32

    ld a, [c]
    ld b, e
    rst $38
    ld [bc], a
    ld a, [c]
    ld b, e
    inc b
    or l
    ld [hl-], a
    add hl, bc
    add [hl]
    ld sp, $6407
    nop
    rrca
    ld a, [c]
    ld d, l
    rst $38
    db $db
    ld bc, $97dd
    rrca
    ld a, [c]
    nop
    rlca
    db $dd
    ld [$0fff], sp
    ccf
    ld [hl+], a
    rrca
    ld a, [c]
    ld hl, $0fff
    ld c, a
    ld b, c
    ld [$418f], sp
    ld [$41cf], sp
    ld [$42f2], sp
    rrca
    ld a, [c]
    ld b, c
    rst $38
    ld a, [bc]
    rst $38
    ld d, b
    rrca
    rst $38
    ld d, c
    ld [$51f2], sp
    ld b, $ff
    ld d, d
    ld b, $ff
    ld d, e
    ld [$54ff], sp
    rrca
    ld a, [c]
    ld d, h
    rst $38
    db $db
    ld [bc], a
    rrca
    ccf
    ret nz

    rlca
    rrca
    rst $18
    ret nz

    rlca
    db $fd
    inc b
    rst $28
    ld h, c
    rrca
    pop de
    ret nz

    rlca
    rst $38
    sbc $b3
    rrca
    cpl
    ret z

    rlca
    rrca
    rst $08
    rst $00
    rlca
    db $fd
    inc b
    ld [bc], a
    ld h, d
    rrca
    pop bc
    ret z

    rlca
    rst $38
    inc bc
    sub a
    ld [de], a
    inc bc
    and c
    ld de, $0afd
    rrca
    ld h, d
    rst $38
    db $db
    nop
    nop
    pop af
    ret nz

    rlca
    nop
    pop af
    nop
    rlca
    db $fd
    inc c
    ld a, [de]
    ld h, d
    rst $38
    sbc $b3
    nop
    pop hl
    pop bc
    rlca

Call_03c_622f:
    nop
    pop hl
    ld bc, $fd07
    inc c
    add hl, hl
    ld h, d
    rst $38
    ld bc, $49d1
    ld bc, $29d1
    db $fd
    ld b, $38
    ld h, d
    rst $38
    sbc $c9
    dec bc
    di
    jr nz, jr_03c_624a

    add hl, bc

jr_03c_624a:
    db $d3
    ld d, b
    ld bc, $05fd
    ld b, e
    ld h, d
    ld [$30e3], sp
    ld bc, $c20f
    db $10
    ld bc, $0aff
    di
    dec [hl]
    ld c, $f6
    ld b, l
    db $fd
    inc b
    ld e, d
    ld h, d
    inc c
    db $f4
    cp h
    inc c
    push af
    sbc h
    rrca
    db $f4
    xor h
    rst $38
    sbc $39
    inc b
    db $f4
    nop
    ld b, $03
    call nz, $0500
    dec b
    or l
    nop
    ld b, $0d
    ld [c], a
    ret nz

    ld b, $fd
    inc bc
    ld l, [hl]
    ld h, d
    ld [$00d1], sp
    ld b, $ff
    sbc $8d
    dec b
    db $e4
    ldh [rTIMA], a
    inc b
    or h
    ldh [rDIV], a
    ld b, $a5
    add sp, $05
    ld c, $d1
    and b
    ld b, $fd
    inc bc
    adc c
    ld h, d
    rst $38
    dec b
    jp $0333


    sub d
    ld b, e
    ld a, [bc]
    or l
    inc sp
    rrca
    jp $fd32


    ld [bc], a
    and b
    ld h, d
    rst $38
    sbc $d2
    inc bc
    add c
    nop
    inc bc
    inc bc
    pop bc
    nop
    inc b
    inc bc
    pop af
    nop
    dec b
    inc bc
    or c
    nop
    inc b
    inc bc
    ld [hl], c
    nop
    inc bc
    db $fd
    dec b
    or c
    ld h, d
    ld [$0081], sp
    inc b
    rst $38
    inc bc
    ld h, d
    ld [hl+], a
    inc bc
    and d
    ld [hl-], a
    inc bc
    jp nc, $0333

    sub d
    inc hl
    inc bc
    ld d, d
    ld [de], a
    db $fd
    dec b
    ret nc

    ld h, d
    ld [$1281], sp
    rst $38
    sbc $39
    rrca
    db $f4
    nop
    dec b
    rrca
    call nz, $0400
    rrca
    ld [c], a
    ret nz

    dec b
    db $fd
    inc bc
    rst $20
    ld h, d
    rst $38
    sbc $8d
    rlca
    db $e4
    jr nc, jr_03c_6304

    rrca
    or h
    jr nc, @+$05

jr_03c_6304:
    rrca
    and d
    jr c, @+$06

    db $fd
    inc b
    ld_long a, $ff62
    add hl, bc
    db $f4
    ld b, h
    add hl, bc
    ld a, [c]
    ld b, e
    rrca
    db $f4
    ld b, d
    rrca
    db $f4
    ld b, c
    db $fd
    inc bc
    dec c
    ld h, e
    rst $38
    sbc $a1
    ld a, [bc]
    pop af
    ld b, b
    ld b, $0a
    di
    add b
    ld b, $0a
    ld a, [c]
    jr nz, jr_03c_6332

    db $fd
    inc b
    ld e, $63
    ld a, [bc]
    pop af

jr_03c_6332:
    ld b, b
    ld b, $ff
    sbc $b3
    ld a, [bc]
    di
    ld [hl], c
    dec b
    rlca
    db $e3
    ld sp, $0a05
    pop af
    ld d, c
    dec b
    db $fd
    inc b
    dec [hl]
    ld h, e
    ld a, [bc]
    pop af
    ld [hl], c
    dec b
    rst $38
    ld [bc], a
    pop de
    ld c, d
    ld [bc], a
    jp nc, $fd2a

    dec d
    ld c, h
    ld h, e
    rst $38
    db $db
    nop
    ld [bc], a
    pop af
    nop
    ld [bc], a
    inc bc
    pop af
    nop
    rlca
    inc b
    pop af
    nop
    dec b
    dec b
    pop af
    ldh a, [rTAC]
    db $fd
    ld [$6357], sp
    rst $38
    sbc $b3
    ld [bc], a
    pop hl
    ld [bc], a
    inc bc
    inc bc
    pop hl
    ld a, [c]
    rlca
    inc b
    pop hl
    ld [bc], a
    ld b, $05
    pop hl
    ld [bc], a
    rlca
    db $fd
    ld [$636e], sp
    rst $38
    ld [bc], a
    db $d3
    db $10
    inc bc
    db $d3
    ld de, $d202
    db $10
    dec b
    jp nc, $fd12

    add hl, bc
    add l
    ld h, e
    rst $38
    sbc $2b
    inc bc
    pop af
    ldh a, [rTAC]
    inc b
    ld a, [c]
    nop
    ld [bc], a
    db $fd
    ld [$6396], sp
    rst $38
    sbc $b3
    inc b
    ld [c], a
    ld [bc], a
    ld [bc], a
    inc b
    pop hl
    ld [c], a
    rlca
    db $fd
    add hl, bc
    and l
    ld h, e
    rst $38

Call_03c_63b4:
    inc b
    rst $38
    ld b, e
    inc b
    ld a, [c]
    ld b, h
    db $fd
    add hl, bc
    or h
    ld h, e
    rst $38
    db $db
    ld [bc], a

Call_03c_63c1:
    db $dd
    rst $30
    ld [$bdc4], sp
    rlca
    ld [$bec4], sp
    rlca
    ld [$bfc4], sp
    rlca
    ld [$c0c4], sp
    rlca
    rrca
    call nz, $07c1
    rrca
    ld a, [c]
    ret nz

    rlca
    db $dd
    ld [$dbff], sp
    ld [bc], a
    ld [$70c4], sp
    rlca
    ld [$61c4], sp
    rlca
    ld [$62c4], sp
    rlca
    ld [$63c4], sp
    rlca
    rrca
    call nz, $0764
    rrca
    ld a, [c]
    ld h, h
    rlca
    rst $38
    rrca
    ccf
    inc d
    rrca
    rst $08
    inc de
    rrca
    rst $08
    ld [de], a
    rrca
    rst $08
    ld de, $cf0f
    db $10
    rrca
    jp nz, $ff10

    db $db
    ld [bc], a
    rrca
    rst $38
    ldh [rTAC], a
    rrca
    rst $38
    ldh [rTAC], a
    rrca
    rst $38
    ldh [rTAC], a
    rrca
    rst $38
    ldh [rTAC], a
    rrca
    ld a, [c]
    ldh [rTAC], a
    rst $38
    db $db
    inc bc
    rrca
    rst $38
    ld [c], a
    rlca
    rrca
    rst $38
    pop hl
    rlca
    rrca
    rst $38
    ld [c], a
    rlca
    rrca
    rst $38
    pop hl
    rlca
    rrca
    ld a, [c]
    ld [c], a
    rlca
    rst $38
    db $db
    ld [bc], a
    db $dd
    xor a
    ld [$00f1], sp
    rlca
    db $dd
    ld [$dbff], sp
    inc bc
    ld [$01f1], sp
    rlca
    rst $38
    db $db
    ld [bc], a
    ld b, $f1
    nop
    dec b
    ld b, $f1
    add b
    dec b
    ld b, $f1
    nop
    ld b, $06
    pop af
    add b
    ld b, $08
    pop af
    nop
    rlca
    rst $38
    db $db
    inc bc
    ld b, $e1
    db $10
    dec b
    ld b, $e1
    sub b
    dec b
    ld b, $e1
    db $10
    ld b, $06
    pop hl
    sub b
    ld b, $08
    pop hl
    db $10
    rlca
    rst $38
    sbc $ed
    ld [$f8ff], sp
    inc bc
    rrca
    rst $38
    nop
    inc b
    rrca
    di
    nop
    inc b
    rst $38
    sbc $b4
    ld [$c0ef], sp
    inc bc
    rrca
    rst $28
    ret nz

    inc bc
    rrca
    db $e3
    ret nz

    inc bc
    rst $38
    inc b
    rst $38
    ld d, c
    ld [$54ff], sp
    rrca
    rst $38
    ld d, l
    rrca
    di
    ld d, [hl]
    rst $38
    rst $18
    pop hl
    ld a, [bc]
    inc h
    db $db
    ld [bc], a
    ret c

    ld a, [bc]
    add a
    db $d3
    add a
    jp nc, $4363

    db $d3
    add a
    rst $38
    rst $18
    pop hl
    ld a, [bc]
    inc hl
    db $db
    ld [bc], a
    ret c

    dec bc
    ld h, a
    db $d3
    add a
    ret c

    ld a, [bc]
    ld h, a
    jp nc, $4363

    db $d3
    add a
    rst $38
    db $db
    nop
    ld [bc], a
    pop af
    add b
    rlca
    ld [bc], a
    pop af
    nop
    rlca
    ld [bc], a
    pop af
    sub b
    rlca
    ld [bc], a
    pop af
    nop
    rlca
    ld [bc], a
    pop af
    and b
    rlca
    ld [bc], a
    pop af
    nop
    rlca
    ld [bc], a
    pop af
    or b
    rlca
    ld [bc], a
    pop af
    nop
    rlca
    ld [bc], a
    pop af
    ret nz

    rlca
    ld [bc], a
    pop af
    nop
    rlca
    ld [bc], a
    pop af
    ret nc

    rlca
    ld [bc], a
    pop af
    nop
    rlca
    ld [bc], a
    pop af
    ldh [rTAC], a
    db $fd
    inc c
    ld hl, sp+$64
    rrca
    pop af
    nop
    rlca
    rst $38
    sbc $b3
    ld [bc], a
    pop af
    add c
    rlca
    ld [bc], a
    pop af
    ld bc, $0207
    pop af
    sub c
    rlca
    ld [bc], a
    pop af
    ld bc, $0207
    pop af
    and c
    rlca
    ld [bc], a
    pop af
    ld bc, $0207
    pop af
    or c
    rlca
    ld [bc], a
    pop af
    ld bc, $0207
    pop af
    pop bc
    rlca
    ld [bc], a
    pop af
    ld bc, $0207
    pop af
    pop de
    rlca
    ld [bc], a
    pop af
    ld bc, $0207
    pop af
    pop hl
    rlca
    db $fd
    inc c

Call_03c_6541:
    scf
    ld h, l
    rrca
    pop af
    ld bc, $ff07
    ld bc, $49d1
    ld bc, $29d1
    db $fd
    ld a, [de]
    ld c, b
    ld h, l
    rst $38
    ld b, $20
    db $10
    ld b, $2f
    ld b, b
    ld b, $4f
    ld b, c
    ld b, $8f
    ld b, c
    ld b, $cf
    ld b, d
    ld [$42d7], sp
    rrca
    rst $20
    ld b, e
    rrca
    ld a, [c]
    ld b, e
    rst $38
    ld bc, $1010
    ld [bc], a
    jr nz, @+$12

    ld [bc], a
    jr nc, jr_03c_6595

    ld [bc], a
    ld b, b
    jr nz, @+$04

    ld d, b
    ld hl, $6002
    ld [hl+], a
    inc b
    ld [hl], b
    ld [hl+], a
    ld [$2280], sp
    rrca
    sub h
    ld [hl+], a
    rst $38
    inc b
    pop de
    ld b, c
    rst $38
    inc b
    pop bc
    ld b, d
    rst $38
    ld [bc], a
    ld l, a
    ld hl, $af02

jr_03c_6595:
    ld sp, $f20f
    ld b, c
    rst $38
    ld [bc], a
    jp nc, $0f32

    ld a, [c]
    ld b, e
    rst $38
    ld [bc], a
    ld [hl], b
    ld [hl+], a
    ld [bc], a
    add b
    inc hl
    ld [bc], a
    sub b
    inc h
    ld [bc], a
    and b
    dec h
    ld [bc], a
    or b
    ld h, $0f
    jp nz, $ff26

    db $db
    ld [bc], a
    ld bc, $a0f2
    ld b, $01
    ld a, [c]
    ldh [rTMA], a
    ld [$00f1], sp
    rlca
    rst $38
    db $db
    ld [bc], a
    ld [bc], a
    pop af
    nop
    rlca
    ld [$e081], sp
    rlca
    rst $38
    db $db
    inc bc
    dec b
    pop hl
    nop
    rlca
    ld [bc], a
    pop hl
    add b
    rlca
    rrca
    pop af
    ret nz

    rlca
    rst $38
    db $db
    ld [bc], a
    inc b
    pop bc
    pop bc
    ld b, $02
    pop bc
    ld b, c
    rlca
    rrca
    pop de
    add c
    rlca
    rst $38
    db $db
    ld [bc], a
    db $dd
    ld e, a
    inc b
    ld b, b
    ldh [rTAC], a
    inc b
    ld h, b
    ldh [rTAC], a
    inc b
    add b
    ldh [rTAC], a
    ld [$e0a0], sp
    rlca
    ld [$e0a0], sp
    rlca
    ld [$e080], sp
    rlca
    ld [$e060], sp
    rlca
    ld [$e030], sp
    rlca
    rrca
    ld [de], a
    ldh [rTAC], a
    db $dd
    ld [$02ff], sp
    rst $30
    ld bc, $0206
    rst $30
    ld bc, $fd07
    ld [$6617], sp
    rst $38
    ld bc, $fff7
    rst $38
    ld [bc], a
    rst $30
    ld [bc], a
    ld b, $02
    rst $30
    ld [bc], a
    rlca
    db $fd
    ld [$6617], sp
    rst $38
    rst $18
    db $ec
    jp c, $0001

    push hl
    ld [hl], a
    and $00
    ld bc, $03db
    ret c

    ld b, $b5
    push de
    sub e
    ret c

    inc b
    or d
    ld h, c
    sub c
    and c
    or c
    ld [hl], c
    or c
    call nc, $1113
    ret c

    inc b
    or [hl]
    dec hl
    db $ed
    rst $38
    rst $18
    db $db
    ld [bc], a
    ret c

    ld b, $c5
    call nc, $d825
    inc b
    pop bc
    jr nz, @+$22

    jr nz, @-$26

    inc b
    jp nz, $2141

    ld b, c
    ld d, e
    ld d, c
    ret c

    inc b
    add $6b
    rst $38
    rst $18
    ret c

    ld b, $10
    db $d3
    ld hl, $2101
    ld bc, $04d8
    db $10
    ld hl, $2101
    ld b, c
    ld bc, $9561
    rst $38
    rst $18
    db $ec
    jp c, $0001

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $06d8
    or e
    push de
    ld h, e
    inc hl
    ld [hl], e
    ld b, e
    sub e
    ld h, e
    or e
    ld [hl], e
    ret c

    inc b
    or e
    or e
    jp $13d4


    inc hl
    ld b, e
    inc de
    ret c

    inc b
    or [hl]
    dec hl
    db $ed
    rst $38
    rst $18
    db $db
    ld [bc], a
    ret c

    ld b, $c4
    call nc, $d823
    inc b
    call nz, $d521
    or c
    call nc, $4521
    ld b, c
    push de
    pop bc
    call nc, Call_03c_6541
    ld h, c
    ld hl, $7561
    ld [hl], c
    ld b, c
    ld [hl], c
    inc hl
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    sub e
    ret c

    inc b
    add $7b
    rst $38
    rst $18
    ret c

    ld b, $10
    call nc, $03b3
    jp $d303


    inc hl
    inc bc
    ld b, e
    inc bc
    ret c

    inc b
    db $10
    ld h, e
    ld b, e
    inc hl
    or e
    sub e
    ld h, e
    ld [hl], l
    rst $38
    db $db
    ld [bc], a
    inc b
    cp b
    ld a, e
    rlca
    ld [bc], a
    ld hl, $077b
    stop
    nop
    nop
    db $db
    ld [bc], a
    inc d
    add sp, $0b
    rlca
    inc e
    nop
    nop
    nop
    db $fd
    inc bc
    rst $38
    ld h, [hl]
    rst $38
    ld bc, $41f8
    ld [bc], a
    sbc h
    inc h
    nop
    nop
    nop
    inc bc
    ld e, c
    ld d, $02
    nop
    nop
    db $fd
    inc bc
    ld c, $67
    rst $38

Call_03c_6722:
    db $db
    ld [bc], a
    db $dd
    ld e, d
    ld [bc], a
    pop af
    nop
    inc bc
    db $fd
    jr nc, jr_03c_6753

    ld h, a
    db $dd
    ld [$02db], sp
    rrca
    di
    jr nc, jr_03c_673d

    ld [$3065], sp
    rlca
    rrca
    db $f4
    nop

jr_03c_673d:
    rlca
    rrca
    ld [hl], h
    nop

jr_03c_6741:
    rlca
    rrca
    ld b, h
    nop
    rlca
    rrca
    inc h
    nop
    rlca
    rst $38
    ld h, b
    nop
    nop
    nop
    ld d, e
    nop
    nop
    nop

jr_03c_6753:
    rst $38
    ld h, b
    nop
    nop

Call_03c_6757:
    ld d, e
    nop
    nop
    rst $38
    inc b
    ld e, [hl]
    ld h, a
    db $db
    ld [bc], a
    ld bc, $60f8
    rlca
    inc b
    add d
    ld h, b
    rlca
    rst $38
    inc b
    ld l, h
    ld h, a
    db $db
    ld [bc], a
    jr nz, jr_03c_6741

    call c, $ff07
    ld b, h
    ld a, c
    ld h, a
    dec b

Call_03c_6777:
    add b
    ld h, a
    db $db
    ld [bc], a
    db $10
    pop af
    call c, $ff07
    db $db
    ld [bc], a
    db $10
    pop de
    db $dd
    rlca
    rst $38
    rrca
    nop
    add b
    nop
    add c
    nop
    rrca
    nop
    jr nz, jr_03c_6791

jr_03c_6791:
    nop
    ld bc, $000f
    nop
    nop
    ld b, b
    ld bc, $0004
    ld h, b
    nop
    ret nz

    nop
    inc b
    nop
    jr nz, jr_03c_67a3

jr_03c_67a3:
    ret nz

    nop
    inc b
    nop
    nop
    nop
    nop
    ld bc, $001d
    ld h, b
    nop
    ret nz

    nop
    dec e
    nop
    jr nz, jr_03c_67b5

jr_03c_67b5:
    ret nz

    nop
    inc de
    nop
    nop
    nop
    nop
    ld bc, $0016
    add b
    nop
    and b
    nop
    inc e
    nop
    call z, $8100
    nop
    ld d, $00
    ld [hl], a
    nop
    ret nz

    nop
    dec d
    nop
    xor $00
    add c
    nop
    inc de
    nop
    rst $38
    nop
    add c
    nop
    inc de
    nop
    ld h, b
    nop
    nop
    ld bc, $000e
    rst $18
    nop
    add h
    nop
    inc d
    nop
    jr z, jr_03c_67eb

jr_03c_67eb:
    ld b, b
    ld bc, $0014
    ld de, $7f00
    ld bc, $0022
    nop
    nop
    nop
    ld bc, $0022
    jr nz, jr_03c_67fd

jr_03c_67fd:
    ld a, a
    ld bc, $0010
    nop
    nop
    nop
    ld bc, $0018
    ld b, b
    nop
    jr nz, jr_03c_680c

    rla

jr_03c_680c:
    nop
    ld [de], a
    nop
    ret nz

    nop
    rla
    nop
    ldh [rP1], a
    sub b
    nop
    rrca
    nop
    xor $00
    add c
    nop
    add hl, bc
    nop
    xor $00
    adc b
    nop
    nop
    nop
    jr nz, jr_03c_6827

jr_03c_6827:
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    inc l
    nop
    ld h, b
    ld bc, $000a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    inc l
    nop
    ld b, b
    ld bc, $0009
    nop
    nop
    nop
    ld bc, $0019
    call z, $8100
    nop
    add hl, de
    nop
    xor d
    nop
    and b
    nop
    inc h
    nop
    ld c, a
    nop
    sub b
    nop
    inc h
    nop
    adc b
    nop
    ldh [rP1], a
    ld c, $00
    rst $38
    nop
    or l
    nop
    ld c, $00
    ld l, b
    nop
    ldh [rP1], a
    dec e
    nop
    ldh [rP1], a
    nop
    ld bc, $001d
    ld a, [$0000]
    ld bc, $0008
    db $dd
    nop
    add c
    nop
    ld [$aa00], sp
    nop
    ret nz

    nop
    inc hl
    nop
    ld [hl+], a
    nop
    ld a, a
    ld bc, $001e
    jr nz, jr_03c_6899

jr_03c_6899:
    ld h, b
    ld bc, $001e
    ld b, d
    nop
    ld a, a
    ld bc, $001a
    ld b, h
    nop
    ret nz

    nop
    ld a, [de]
    nop
    add hl, hl
    nop
    nop
    ld bc, $000b
    xor d
    nop
    add c
    nop
    dec bc
    nop
    ld a, [hl+]
    nop
    sub b
    nop
    add hl, de
    nop
    ld [hl], a
    nop
    sub b
    nop
    add hl, de
    nop
    sbc c
    nop
    ld a, a
    ld bc, $0021
    jr nz, jr_03c_68c9

jr_03c_68c9:
    ldh [rP1], a
    ld hl, $ff00
    nop
    ret nz

    nop
    ld a, [bc]
    nop
    db $dd
    nop
    ldh [rP1], a
    ld a, [bc]
    nop
    xor a
    nop
    ret nz

    nop
    rra
    nop
    jr nz, jr_03c_68e1

jr_03c_68e1:
    ret nz

    nop
    dec d
    nop
    nop
    nop
    nop
    ld bc, $000e
    rst $38
    nop
    ld a, a
    ld bc, $000e
    ld [hl], a
    nop
    ldh [rP1], a
    ld c, $00
    nop
    nop
    ld a, a
    ld bc, $001c
    ret nz

    nop
    add c
    nop
    inc e
    nop
    xor b
    nop
    ld b, b
    ld bc, $001c
    sbc b
    nop
    ld a, a
    ld bc, $001f
    xor $00
    add c
    nop
    rra
    nop
    ld c, b
    nop
    ldh [rP1], a
    rra
    nop
    ld [$4000], sp
    ld bc, $0021
    ld d, l
    nop
    add c
    nop
    dec h
    nop
    ld b, h
    nop
    and b
    nop
    dec h
    nop
    ld h, [hl]
    nop
    ld c, h
    ld bc, $001a
    nop
    nop
    nop
    ld bc, $001a
    xor $00
    ld a, a
    ld bc, $0024
    ldh a, [rP1]
    sub b
    nop
    inc h
    nop
    nop
    nop
    nop
    ld bc, $0012
    ldh [rP1], a
    ret nz

    nop
    dec h
    nop
    nop
    nop
    nop
    ld bc, $0025
    jr nz, jr_03c_6959

jr_03c_6959:
    ld b, b
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $001f
    nop
    nop
    nop
    ld bc, $001c
    add b
    nop
    ldh [rP1], a
    inc e
    nop
    jr nz, jr_03c_6971

jr_03c_6971:
    ld b, b
    ld bc, $0010
    db $dd
    nop
    add c
    nop
    dec bc
    nop
    cp e
    nop
    add c
    nop
    dec bc
    nop
    sbc c
    nop
    and b
    nop
    inc c
    nop
    adc b
    nop
    ld b, b
    ld bc, $000c
    inc hl
    nop
    ld a, a
    ld bc, $0005
    nop
    nop
    nop
    ld bc, $0007
    rst $28
    nop
    ld a, a
    ld bc, $0018
    nop
    nop
    nop
    ld bc, $0018
    ld l, a
    nop
    ld h, b
    ld bc, $001c
    nop
    nop
    nop
    ld bc, $001c
    jr nc, jr_03c_69b3

jr_03c_69b3:
    ret nz

    nop
    rlca
    nop
    nop
    nop
    ld a, a
    ld bc, $0017
    rst $38
    nop
    ld b, b
    ld bc, $000d
    adc b
    nop
    and b
    nop
    dec c
    nop
    xor $00
    ret nz

    nop
    jr nz, jr_03c_69cf

jr_03c_69cf:
    jr nz, jr_03c_69d1

jr_03c_69d1:
    ld h, b
    ld bc, $0020
    xor $00
    ld h, b
    ld bc, $0006
    db $ed
    nop
    nop
    ld bc, $0006
    xor b
    nop
    db $10
    ld bc, $000b
    nop
    nop
    nop
    ld bc, $000d
    nop
    nop
    nop
    ld bc, $0019
    nop
    nop
    nop
    ld bc, $0008
    ld c, a
    nop
    ldh [rP1], a
    ld [de], a
    nop
    add b
    nop
    ld b, b
    ld bc, $000c
    xor $00
    ld b, b
    ld bc, $000c
    nop
    nop
    nop
    ld bc, $0012
    and $00
    ld e, l
    ld bc, $0012
    rst $38
    nop
    ld a, a
    ld bc, $0004
    nop
    nop
    nop
    ld bc, $0011
    nop
    nop
    nop
    ld bc, $0014
    ld a, [bc]
    nop
    ld b, b
    ld bc, $0012
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    ld bc, $0019
    sbc c
    nop
    sub b
    nop
    add hl, de
    nop
    inc a
    nop
    add c
    nop
    ld d, $00
    add b
    nop
    ret nz

    nop
    ld d, $00
    stop
    ld a, a
    ld bc, $001e
    ld [bc], a
    nop
    and b
    nop
    ld e, $00
    nop
    nop
    nop
    ld bc, $0020
    ld [$c000], sp
    nop
    ld d, $00
    nop
    nop
    nop
    ld bc, $000d
    rst $38
    nop
    ld a, a
    ld bc, $0006
    adc a
    nop
    ld a, a
    ld bc, $0004
    rst $38
    nop
    or b
    nop
    inc d
    nop
    nop
    nop
    nop
    ld bc, $001d
    ld de, $c000
    nop
    rla
    nop
    add b
    nop
    add b
    nop
    rla
    nop
    nop
    nop
    nop
    ld bc, $001b
    nop
    nop
    nop
    ld bc, $000e
    rst $38
    nop
    ld a, a
    ld bc, $001a
    adc b
    nop
    ldh [rP1], a
    ld a, [de]
    nop
    xor d
    nop
    ld a, a
    ld bc, $001a
    dec a
    nop
    nop
    ld bc, $001a
    stop
    and b
    nop
    dec h
    nop
    xor d
    nop
    ld a, a
    ld bc, $001f
    ldh a, [rP1]
    add c
    nop
    rra
    nop
    rst $38
    nop
    ret nz

    nop
    ld d, $00
    cp e
    nop
    ret nz

    nop
    jr jr_03c_6ad1

jr_03c_6ad1:
    xor $00
    add c
    nop
    inc hl
    nop
    jr nz, jr_03c_6ad9

jr_03c_6ad9:
    ld [hl], b
    ld bc, $0005
    ld d, l
    nop
    add c
    nop
    add hl, bc
    nop
    add b
    nop
    ret nz

    nop
    jr jr_03c_6ae9

jr_03c_6ae9:
    rst $38
    nop
    nop
    ld bc, $0009
    ld hl, sp+$00
    ret nz

    nop
    rrca
    nop
    ld h, b
    nop
    ret nz

    nop
    rrca
    nop
    ld b, b
    nop
    nop
    ld bc, $000f
    inc a
    nop
    ld b, b
    ld bc, $001e
    sbc c
    nop
    ld a, a
    ld bc, $001e
    xor $00
    ld a, a
    ld bc, $0031
    ldh a, [rIE]
    or b
    nop
    ld sp, $de00
    rst $38
    jr nz, @+$03

    ld sp, $4900
    rst $38
    nop
    ld [bc], a
    jr nc, jr_03c_6b25

jr_03c_6b25:
    ld b, a
    inc bc
    add b
    nop
    jr nc, jr_03c_6b2b

jr_03c_6b2b:
    ld hl, $2003
    ld bc, $003a
    nop
    rrca
    call nc, $3200
    nop
    ld l, h
    inc b
    add sp, $00
    ld [hl-], a
    nop
    ld b, b
    inc b
    db $10
    ld bc, $0032
    db $fc
    inc bc
    add b
    ld bc, $002e
    adc d
    nop
    cp b
    nop
    ld l, $00
    ld l, e
    nop
    ld [bc], a
    ld bc, $002d
    sub c
    nop
    ret c

    nop
    dec l
    nop
    nop
    nop
    and b
    ld bc, $0036
    nop
    nop
    sbc $00
    ld [hl], $00
    ld l, d
    rst $38
    jr c, jr_03c_6b6c

    daa

jr_03c_6b6c:
    nop
    ld de, $0000
    ld [bc], a
    daa
    nop
    ld d, d
    rst $38
    ld [c], a
    ld bc, $001d
    ldh a, [rIE]
    ld b, b
    ld bc, $0030
    ret


    inc bc
    ld b, b
    ld bc, $0030
    ret nc

    ld [bc], a
    db $10
    ld bc, $0040
    nop
    nop
    ld b, b
    ld bc, $0034
    ld h, c
    nop
    sub c
    nop
    ld sp, $e800
    nop
    add sp, $00
    jr z, jr_03c_6b9d

jr_03c_6b9d:
    stop
    nop
    ld bc, $002c
    dec sp
    nop
    jr c, jr_03c_6ba7

jr_03c_6ba7:
    dec sp
    nop
    sbc c
    rst $38
    nop
    ld bc, $003b
    ld e, c
    rst $38
    ld l, b
    ld bc, $002b
    ld [hl+], a
    nop
    ret c

    nop
    dec hl
    nop
    ld sp, hl
    rst $38
    add b
    ld bc, $003e
    add h
    rst $38
    add sp, $00
    inc [hl]
    nop
    add h
    nop
    ld d, b
    ld bc, $0026
    dec de
    ld bc, $0120
    ld h, $00
    or [hl]
    nop
    add b
    ld bc, $0034
    ld b, b
    rrca
    add b
    ld bc, $0034
    ld e, l
    db $fd
    ret z

    ld bc, $0034
    dec sp
    nop
    ret z

    nop
    inc [hl]
    nop
    daa
    nop
    jr c, jr_03c_6bf0

    inc [hl]

jr_03c_6bf0:
    nop
    nop
    nop
    add b
    ld bc, $0041
    xor a
    rst $38
    add sp, $00
    ld h, $00
    dec hl
    ld bc, $00b8
    dec a
    nop
    ldh [rIE], a
    add b
    ld bc, $0032
    ld sp, $c800
    nop
    jr c, jr_03c_6c0f

jr_03c_6c0f:
    sub e
    nop
    xor a
    nop
    jr c, jr_03c_6c15

jr_03c_6c15:
    ld a, [hl-]
    rst $38
    ld b, b
    ld bc, $0041
    and d
    nop
    ld b, b
    ld bc, $001a
    rla
    rst $38
    ldh a, [rP1]
    ld h, $00
    pop hl
    rst $38
    add b
    ld bc, $002f
    inc b
    ld bc, $0200
    dec l
    nop
    jr nc, @+$03

    add sp, $00
    dec l
    nop
    ld h, d
    ld bc, $0100
    ld a, $00
    ld a, e
    ld [bc], a
    ld b, h
    ld bc, $0029
    ld b, c
    nop
    nop
    ld [bc], a
    cpl
    nop
    add b
    nop
    nop
    ld bc, $002f
    nop
    nop
    add b
    ld bc, $0042
    call nz, $0001
    ld bc, $0033
    cp $fe
    nop
    ld bc, $003a
    rst $28
    nop
    rst $30
    nop
    ld b, d
    nop
    ld [de], a
    ld bc, $00e8
    ld b, d
    nop
    nop
    nop
    add b
    ld bc, $002f
    ld h, b
    ld bc, $00e0
    ld a, $00
    nop
    nop
    ld h, b
    ld bc, $0042
    sub b
    ld [bc], a
    xor b
    nop
    ld a, $00
    dec [hl]
    nop
    ldh [rP1], a
    jr c, jr_03c_6c8d

jr_03c_6c8d:
    ld d, e
    nop
    xor a
    nop
    inc a
    nop
    and d
    rlca
    ld l, [hl]
    nop
    inc a
    nop
    ld b, b
    ld b, $d8
    nop
    dec [hl]
    nop

jr_03c_6c9f:
    jr z, jr_03c_6c9f

    ld b, b
    ld bc, $003f
    di
    db $fd
    ret nz

    ld bc, $0030
    cp $01
    ld b, b
    ld bc, $003f
    rst $30
    cp $00
    ld bc, $003f
    and c
    nop
    add sp, $00
    dec a
    nop
    dec c
    nop
    nop
    ld bc, $0032
    nop
    nop
    add b
    ld bc, $003c
    ld [bc], a
    nop
    ld l, d
    nop
    add hl, sp
    nop
    ld b, d
    rst $38
    ldh a, [rP1]
    ld a, $00
    xor c
    ld [$0180], sp
    jr nc, jr_03c_6cdb

jr_03c_6cdb:
    add hl, sp
    nop
    ld b, b
    ld bc, $0032
    or $fe
    nop
    ld bc, $0035
    ei
    ld [bc], a
    nop
    ld bc, $002e
    ld c, b
    nop
    jr nc, jr_03c_6cf3

    ld b, e
    nop

jr_03c_6cf3:
    nop
    nop
    and b
    ld bc, $0029
    ld [hl], e
    nop
    ld b, b
    ld [bc], a
    ld b, c
    nop
    and b
    cp $80
    ld bc, $0040
    and $fd
    ldh a, [rSB]
    ld b, c
    nop
    inc l
    nop
    ld [$3501], sp
    nop
    nop
    nop
    nop
    ld bc, $0026
    ld l, b
    nop
    nop
    ld bc, $003d
    jr z, @-$01

    or h
    nop
    inc a
    nop
    db $76
    ld bc, $003a
    inc sp
    nop
    inc sp
    cp $a0
    ld bc, $002f
    sub e
    ld [bc], a
    ld b, b
    ld bc, $002a
    ld l, $02
    jr nz, jr_03c_6d3a

    scf

jr_03c_6d3a:
    nop
    nop
    nop
    and b
    ld bc, $003f
    nop
    nop
    add b
    ld bc, $002a
    ld e, a
    nop
    ret nc

    nop
    daa
    nop
    dec h
    cp $50
    ld bc, $002a
    nop
    rst $38
    add b
    ld bc, $003a
    nop
    nop
    nop
    ld bc, $0041
    nop
    nop
    add b
    ld bc, $0037
    ld c, d
    ld bc, $0111
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    jp nc, $056f

    pop af
    ld l, a
    rlca
    inc c
    ld [hl], b
    ld b, h
    rra
    ld [hl], b
    dec b
    ld [hl+], a
    ld [hl], b
    ld b, h
    dec [hl]
    ld [hl], b
    dec b
    jr c, jr_03c_6e06

    add h
    ld c, b
    ld [hl], b
    dec b
    ld e, e
    ld [hl], b
    rlca
    ld l, [hl]
    ld [hl], b
    add h
    ld a, e
    ld [hl], b
    dec b
    sbc d
    ld [hl], b
    rlca
    cp l
    ld [hl], b
    add h
    sub $70
    dec b
    ld sp, hl
    ld [hl], b
    rlca
    inc d
    ld [hl], c
    ld b, h
    ld hl, $0571
    add hl, hl
    ld [hl], c

Call_03c_6db7:
    add h
    dec sp
    ld l, a
    dec b
    ld e, d
    ld l, a
    rlca
    ld [hl], c
    ld l, a
    ld b, h
    dec sp
    ld [hl], c
    dec b
    ld b, e
    ld [hl], c
    add h
    ld d, [hl]
    ld [hl], c
    dec b
    ld e, c
    ld [hl], c
    rlca
    ld a, b
    ld [hl], c
    add h
    ld a, a
    ld [hl], c
    dec b
    add d
    ld [hl], c
    rlca
    sbc c
    ld [hl], c
    ld b, h
    and b
    ld [hl], c
    rlca
    ld a, b
    ld [hl], c
    add h
    and l
    ld [hl], c
    dec b
    xor l
    ld [hl], c
    rlca
    call nz, Call_03c_4471
    call nc, $0771
    db $eb
    ld [hl], c
    add h
    ld hl, sp+$71
    dec b
    nop
    ld [hl], d
    rlca
    dec de
    ld [hl], d
    add h
    ld l, $72
    dec b
    ld c, c
    ld [hl], d
    rlca
    ld h, h
    ld [hl], d
    add h
    ld l, $72
    dec b
    ld c, c
    ld [hl], d
    rlca

jr_03c_6e06:
    ld [hl], h
    ld [hl], d
    add h
    add h
    ld [hl], d
    dec b
    cp e
    ld [hl], d
    rlca
    jp c, $8472

    rst $20
    ld [hl], d
    dec b
    ld [bc], a
    ld [hl], e
    rlca
    dec e
    ld [hl], e
    add h
    add h
    ld [hl], d
    dec b
    cp e
    ld [hl], d
    rlca
    jr nc, jr_03c_6e96

    add h
    scf
    ld [hl], e
    dec b
    ld [bc], a
    ld [hl], e
    rlca
    dec e
    ld [hl], e
    add h
    ld d, e
    ld [hl], e
    dec b
    ld [hl], b
    ld [hl], e
    rlca
    add a
    ld [hl], e
    add h
    sbc d
    ld [hl], e
    dec b
    or c
    ld [hl], e
    rlca
    ret z

    ld [hl], e
    add h
    push de
    ld [hl], e
    dec b
    db $fc
    ld [hl], e
    rlca
    rrca
    ld [hl], h
    add h
    adc d
    ld l, a
    dec b
    xor e
    ld l, a
    rlca
    jp nz, $846f

    ld [hl+], a
    ld [hl], h
    dec b
    ld b, c
    ld [hl], h
    rlca
    ld h, b
    ld [hl], h
    add h
    inc bc
    ld l, a
    dec b
    ld h, $6f
    rlca
    ld sp, $846f
    or h
    ld l, [hl]
    dec b

jr_03c_6e66:
    db $d3
    ld l, [hl]
    rlca
    ld a, [c]
    ld l, [hl]
    add h
    ld a, l
    ld l, [hl]
    dec b
    sub h
    ld l, [hl]
    rlca
    and a
    ld l, [hl]
    add h
    inc a
    ld [hl], e
    dec b
    ld b, l
    ld [hl], e
    rlca
    ld c, h
    ld [hl], e
    db $dd
    rst $38
    sbc $63
    ld bc, $f8f8
    dec b
    ld [$d89f], sp
    inc b
    ld b, $f8
    call nz, $1405
    ld a, [c]
    ld [hl], h
    dec b
    db $dd
    adc b
    rst $38
    sbc $33

jr_03c_6e96:
    ld bc, $40c8
    ld b, $06
    rst $38
    ld l, b
    ld b, $07
    xor b
    inc [hl]
    dec b
    inc d
    and d
    and h
    inc b
    rst $38
    ld a, [bc]
    sub $6a
    ld b, $bc
    ld l, h
    ld b, $e2
    ld e, h
    jr nz, jr_03c_6e66

    ld l, h
    rst $38
    sbc $c4
    inc b
    xor a
    jr nz, jr_03c_6ec1

    ld [bc], a
    ld hl, sp+$1c
    rlca
    ld [bc], a
    ld hl, sp+$18

jr_03c_6ec1:
    rlca
    ld [bc], a
    ld hl, sp+$08
    rlca
    ld [bc], a
    ld hl, sp+$0e
    rlca
    inc c
    ret z

    ld [de], a
    rlca
    inc b
    sub c
    ld c, $07
    rst $38
    sbc $0a
    ld bc, $10b8
    rlca
    inc bc
    ret c

    inc l
    rlca
    inc b
    ret c

    ld h, l
    ld b, $01
    cp b

jr_03c_6ee3:
    ld d, [hl]
    ld b, $01
    ret c

    ld e, h
    ld b, $0c
    ld hl, sp+$60
    rlca
    inc b

jr_03c_6eee:
    pop bc
    ld d, b
    rlca
    rst $38
    ld [bc], a
    add sp, $3b
    ld bc, $4ef1
    db $fd
    dec b
    push af
    ld l, [hl]
    ld [bc], a
    ret c

    ccf
    inc d
    jp nz, $ff5f

    sbc $22
    ld bc, $b0f8
    dec b
    ld bc, $b4f8
    inc b
    ld bc, $b8f8
    dec b
    inc bc
    ld hl, sp-$40
    dec b
    ld [$90c8], sp
    inc b
    ld [$80c8], sp
    inc b
    db $dd
    cp $10
    jp $0490


    db $dd
    adc b
    rst $38
    sbc $22
    ld [$c8b8], sp
    inc b
    jr nz, jr_03c_6ee3

    db $10
    inc b
    rst $38
    inc bc
    rst $38
    ld c, e
    inc bc
    rst $28
    ld c, h
    jr nz, jr_03c_6eee

    ld e, a
    rst $38
    sbc $33
    ld [bc], a
    pop af
    ld d, b
    dec b
    ld [bc], a
    pop af
    jr nc, jr_03c_6f4a

    ld [bc], a
    pop af
    db $10
    dec b
    ld [bc], a

jr_03c_6f4a:
    ld a, [c]
    ld d, b
    ld b, $02
    ld a, [c]
    ld b, b
    ld b, $02
    ld a, [c]
    jr nc, @+$08

    db $10
    ld a, [c]
    ld d, b
    dec b
    rst $38
    sbc $f2
    inc b
    pop hl
    jr nz, jr_03c_6f66

    dec b
    ld [c], a
    nop
    dec b
    ld b, $e1

jr_03c_6f66:
    jr nz, jr_03c_6f6e

    ld [bc], a
    pop hl
    jr nz, jr_03c_6f71

    db $10
    ld [c], a

jr_03c_6f6e:
    nop
    dec b
    rst $38

jr_03c_6f71:
    ld [bc], a
    adc d
    ld e, l
    ld [bc], a
    sbc d
    ld c, h
    dec b
    sbc d
    ld e, l
    ld [bc], a
    sbc d
    ld c, l
    ld [bc], a
    sbc d
    ld c, e
    ld [bc], a
    sbc d
    ld c, l
    ld [bc], a
    sbc d
    ld e, a
    db $10
    or d
    ld l, a
    rst $38
    db $db
    nop
    db $dd
    rst $30
    ld [bc], a
    ld hl, sp-$73
    rlca
    ld [bc], a
    ld hl, sp-$6f
    rlca
    db $dd
    rst $38
    ld [bc], a
    ld hl, sp-$53
    rlca
    db $dd
    adc b
    ld [bc], a
    ld hl, sp-$4c
    rlca
    db $dd
    rst $30
    ld [bc], a

Call_03c_6fa5:
    ld hl, sp-$48
    rlca
    db $dd
    adc b
    rst $38
    sbc $10
    ld [bc], a
    ret z

    ld l, l
    rlca
    ld [bc], a
    ret z

    ld [hl], c
    rlca
    ld [bc], a

Call_03c_6fb6:
    ret z

    adc l
    rlca
    ld [bc], a
    ret z

    sub h
    rlca
    ld [bc], a
    ret z

    sbc b
    rlca
    rst $38
    ld [bc], a
    cp b
    ld bc, $b802
    add hl, de
    ld [bc], a
    ret z

    jr jr_03c_6fce

    cp b
    db $10

jr_03c_6fce:
    ld [$18c2], sp
    rst $38
    sbc $22
    ld [bc], a
    adc b
    ret c

    ld b, $08
    ld [c], a
    ldh [rTMA], a
    ld [bc], a
    ld h, c
    push hl
    ld b, $02
    add sp, -$40
    ld b, $02
    add sp, -$48
    ld b, $02
    ret c

    or b
    ld b, $08
    pop bc
    xor d
    ld b, $ff
    sbc $63
    ld [bc], a
    ld l, b
    or c
    ld b, $05
    pop bc
    cp c
    ld b, $05
    sbc c
    ld h, b
    rlca
    ld [bc], a

Jump_03c_7000:
    cp b
    adc h
    ld b, $02
    xor b
    add h
    ld b, $0a
    sub d
    ld a, e
    ld b, $ff
    ld bc, $6c99
    ld bc, $5c92
    ld a, [bc]
    ld h, d
    ld c, h
    ld [bc], a
    ld l, b
    ld l, d
    ld [bc], a
    ld l, b
    ld l, e
    ld a, [bc]
    ld h, d
    ld l, h
    rst $38
    and $00
    ld [bc], a
    sbc $52
    inc b
    pop af
    sub [hl]
    rlca
    inc b
    pop af
    dec l
    rlca
    rlca
    nop
    nop
    nop
    db $10
    pop af
    and a
    rlca
    rst $38
    and $00
    ld [bc], a
    cp $22
    ld [hl], b
    db $fd
    ld [bc], a
    jr c, jr_03c_70af

    ld c, $00
    nop
    nop
    ld [$c2f2], sp
    rlca
    rst $38
    db $db
    ld bc, $2c03
    call nz, $0107
    nop
    ld bc, $0500
    ld e, c
    cp c
    rlca
    ld b, $b4
    cp e
    rlca
    rst $38
    sbc $2a
    inc bc
    inc l
    rst $00
    rlca
    ld bc, $0000
    nop
    dec b
    ld e, c
    cp [hl]
    rlca
    ld b, $b4
    cp l
    rlca
    rst $38
    inc bc
    sub d
    db $10
    ld bc, $0039
    dec b
    ld l, c
    db $10
    ld b, $93
    nop
    rst $38
    sbc $f8
    ld [bc], a
    pop af
    or b
    inc b
    ld [bc], a
    rst $30
    sub b
    dec b
    ld [$10f8], sp
    dec b
    inc bc
    ld a, [c]
    ret nz

    ld b, $03
    ld hl, sp-$46
    ld b, $03
    ld a, [c]
    or b
    ld b, $10
    ld a, [c]
    sub b
    ld b, $ff
    sbc $f2
    ld [bc], a
    pop af
    jr nz, jr_03c_70a7

    ld [bc], a
    pop hl
    ld d, b
    ld b, $04
    pop af
    ld d, b

jr_03c_70a7:
    rlca
    inc b
    pop de
    and b
    inc bc
    inc bc
    pop af
    ld [hl], b

jr_03c_70af:
    ld b, $03
    pop hl
    add b
    ld b, $03
    ld a, [c]
    sub b
    ld b, $10
    ld [c], a
    and b
    ld b, $ff
    ld [bc], a
    adc c
    ld l, $02
    sbc c
    rra
    inc b
    adc c
    ld c, [hl]
    inc b
    adc c
    ld a, e
    inc bc
    ret c

    ld c, e
    inc bc
    rst $20
    ld c, h
    inc bc
    db $ec
    ld c, l
    db $10
    jp nc, $ff4f

    sbc $66
    inc b
    ld a, b
    ld d, b
    ld b, $04
    ld hl, sp+$60
    ld b, $04
    ld hl, sp+$5c
    ld b, $01
    ld hl, sp+$7c
    ld b, $04
    ld hl, sp-$80
    ld b, $04
    ld hl, sp+$7c
    ld b, $04
    ld hl, sp+$78
    ld b, $04
    pop af
    ld [hl], h
    ld b, $ff
    sbc $22
    ld [bc], a
    and c
    nop
    ld b, $fd

jr_03c_7100:
    inc bc
    ei
    ld [hl], b
    ld [bc], a
    and c
    jr nc, jr_03c_710d

    db $fd
    inc b
    inc bc
    ld [hl], c
    inc b
    and d

jr_03c_710d:
    inc [hl]
    ld b, $04

jr_03c_7110:
    sub c
    jr c, jr_03c_7119

    rst $38
    ld bc, $3668
    db $10
    adc b

jr_03c_7119:
    ld l, d

jr_03c_711a:
    ld bc, $5e98
    db $10
    and a
    ld l, [hl]
    rst $38
    and $00
    jr nz, jr_03c_7100

    nop
    db $fc
    dec hl
    ld [hl], c
    sbc $1b
    ld [$2d39], sp
    rlca
    ld [$20f1], sp
    rlca
    rst $38
    ld [$003b], sp
    ld [$0092], sp
    rst $38
    and $00
    jr nz, jr_03c_711a

    nop
    db $fc
    ld b, l
    ld [hl], c
    sbc $01
    inc b
    ld a, [hl-]
    dec a
    rlca
    ld b, $f8
    ld h, d
    rlca
    ld b, $f8
    ld h, b
    rlca
    ld b, $f1
    ld e, [hl]
    rlca
    rst $38
    and $00
    jr nz, @-$23

    ld [bc], a
    ld [$072f], sp
    ld bc, $e100

jr_03c_7161:
    add e
    inc b
    nop
    ld d, c
    ld c, [hl]
    inc b
    db $fd
    inc b
    ld e, a
    ld [hl], c
    nop
    pop hl
    jp c, $0103

    ld d, c
    ld [de], a
    inc bc
    db $fd
    inc b
    ld l, e
    ld [hl], c
    rst $38
    ld [$523f], sp
    jr nz, jr_03c_7110

    ld c, a
    rst $38
    and $00
    jr nz, jr_03c_7161

    ld hl, $c802
    ld b, c
    ld b, $02
    ld c, b
    ld b, c
    ld b, $06
    ld hl, sp-$70
    rlca
    inc b
    ld hl, sp-$72
    rlca
    inc b
    pop af
    adc e
    rlca
    rst $38
    inc b
    sub c
    db $10
    ld [$0394], sp
    rst $38
    sbc $a2
    db $fc
    ld b, l
    ld [hl], c
    db $db
    ld bc, $00e6
    inc b
    db $fc
    xor a
    ld [hl], c
    sbc $41
    inc b
    ld l, b
    ld e, b
    rlca
    ld [bc], a
    add sp, $60
    rlca
    ld [bc], a
    add sp, $67
    rlca
    ld [bc], a
    add sp, $6c
    rlca
    rlca
    pop af
    ld h, a
    rlca
    rst $38
    inc b
    add hl, hl
    nop
    ld [bc], a
    add hl, sp
    ld bc, $4902
    ld [bc], a
    ld [bc], a
    ld e, c
    ld bc, $4107
    nop
    rst $38
    sbc $91
    inc c
    ld a, [c]
    and [hl]
    rlca
    inc b
    ld hl, sp-$50
    rlca
    inc b
    add sp, -$50
    inc bc
    ld b, $f8
    and b
    inc bc
    ld [$90e1], sp
    ld [bc], a
    rst $38
    inc c
    or d
    ld d, b
    ld [$60a8], sp
    ld b, $a8
    ld e, e
    ld [$5ca1], sp
    rst $38
    and $00
    ld [bc], a
    db $db
    ld [bc], a
    db $fc
    ld [bc], a
    ld [hl], d
    sbc $01
    inc bc
    ld hl, sp-$6f
    rlca
    inc bc
    ret c

    adc l
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld bc, $c178
    ld b, $01
    ld hl, sp+$41
    rlca
    inc b
    pop hl
    ld d, c
    rlca
    rst $38
    inc bc
    ld e, c
    ld hl, $8103
    nop
    ld [bc], a
    jr nz, jr_03c_7224

jr_03c_7224:
    ld bc, $2180
    ld bc, $1080
    inc b
    add a
    nop
    rst $38
    db $db
    ld [bc], a
    ld [bc], a
    sbc c
    jr jr_03c_723b

    inc b
    xor e
    ld [hl+], a
    rlca
    ld [$34ab], sp

jr_03c_723b:
    rlca
    inc b
    sub $16
    rlca
    ld [$12d1], sp
    rlca
    ld [$0000], sp
    nop
    rst $38
    sbc $07
    ld [bc], a
    cp c
    jr c, jr_03c_7256

    inc b
    bit 0, d
    rlca
    ld [$54cb], sp

jr_03c_7256:
    rlca
    inc b
    or $36
    rlca
    ld [$32f1], sp
    rlca
    ld [$0000], sp
    nop
    rst $38
    ld [bc], a
    ld e, e
    inc b
    inc b
    ld l, b
    inc de
    ld [$2068], sp
    inc b
    ld l, b
    inc de
    db $10
    ld d, c
    inc b
    rst $38
    ld [bc], a
    adc e
    ld e, c
    inc b
    xor b
    ld l, d

jr_03c_727a:
    ld [$70a8], sp
    inc b
    xor b
    ld l, c
    db $10
    sub d
    ld l, h
    rst $38
    sbc $12
    inc bc
    pop bc
    sub c
    rlca
    db $fd
    inc bc
    add [hl]
    ld [hl], d
    inc bc
    pop de
    or c
    inc b
    db $fd
    ld b, $8e
    ld [hl], d
    ld bc, $91d1
    inc b
    ld bc, $51b1
    inc b
    db $fd
    ld b, $96
    ld [hl], d
    ld bc, $71a3
    inc b
    ld bc, $4181
    inc b
    db $fd
    ld b, $a2
    ld [hl], d
    ld bc, $2141
    inc b
    ld bc, $0121
    inc b
    db $fd
    inc b
    xor [hl]

jr_03c_72b9:
    ld [hl], d
    rst $38
    sbc $78
    ld [$4099], sp
    rlca
    ld [$4679], sp
    rlca
    db $10
    or $8d
    rlca
    ld [$91f8], sp
    rlca
    ld [$8df8], sp
    rlca
    ld [$87f8], sp
    rlca
    jr jr_03c_72b9

    add e
    rlca
    rst $38
    db $10
    and [hl]
    ld d, $18
    sbc b
    dec a
    jr nz, jr_03c_727a

    ld e, h
    jr nz, @+$77

    ld e, a
    rst $38
    sbc $de
    inc b
    ld hl, sp-$4f
    rlca
    inc b
    ld hl, sp-$50
    rlca
    inc b
    ld c, b
    xor a
    rlca
    inc b
    ld hl, sp-$4e
    rlca
    inc b
    ld hl, sp-$4d
    rlca
    inc b
    ld c, b
    or h
    rlca
    rst $38
    sbc $f2
    inc b
    ld hl, sp-$4e
    rlca
    inc b
    ld hl, sp-$4f
    rlca
    inc b
    jr z, @-$4e

    rlca
    inc b
    ld hl, sp-$4c
    rlca
    inc b
    ld hl, sp-$4a
    rlca
    inc b
    ld c, b
    cp b
    rlca
    rst $38
    inc b
    adc b
    dec b
    inc b
    adc b
    inc b
    inc b
    jr c, jr_03c_7329

    inc b
    adc b
    dec b

jr_03c_7329:
    inc b
    adc b
    inc b
    inc b
    add a
    inc b

jr_03c_732f:
    rst $38
    ld [$3aa6], sp
    ld [$5aa1], sp
    rst $38
    db $db
    nop
    db $fc
    jp hl


    ld [hl], d
    db $db
    nop
    cp $e9
    ld [hl], d
    cp $f5
    ld [hl], d
    rst $38
    cp $02
    ld [hl], e
    cp $10
    ld [hl], e
    rst $38
    cp $1d
    ld [hl], e
    cp $26
    ld [hl], e
    rst $38

Call_03c_7353:
    sbc $de
    ld bc, $20c1
    dec b
    ld bc, $20a1
    inc b
    db $fd
    inc b
    ld d, l

jr_03c_7360:
    ld [hl], e
    db $db
    nop
    inc b
    ld a, b
    ld h, b
    rlca
    inc b
    ld a, b
    jr nc, jr_03c_7372

    jr jr_03c_732f

    jr nz, @+$06

    rst $38
    sbc $32

jr_03c_7372:
    ld [$00f8], sp
    rlca

jr_03c_7376:
    rlca
    ld hl, sp+$20
    rlca
    inc b
    ld hl, sp-$70
    rlca
    inc b
    ld hl, sp+$60
    rlca
    jr jr_03c_7376

    jr nc, jr_03c_738d

    rst $38
    inc b
    adc b
    ld l, l
    inc b
    ret c

    ld l, b

jr_03c_738d:
    rlca
    ret z

    ld l, c
    inc b
    sbc b
    ld a, [hl-]
    inc b
    sbc b
    inc a
    jr @-$2c

    ld e, e
    rst $38
    sbc $32
    ld [$30f8], sp
    inc bc
    ld [$40f8], sp
    inc bc
    ld [$b2c8], sp
    rlca
    ld [$b3b8], sp
    rlca
    jr nz, jr_03c_7360

    or h
    rlca
    rst $38
    sbc $12
    ld [$20e8], sp
    inc bc

Call_03c_73b7:
    ld [$28e8], sp
    inc bc
    ld [$8098], sp
    rlca
    ld [$8288], sp
    rlca
    jr nz, jr_03c_7437

    add h
    rlca
    rst $38
    ld [bc], a
    cp [hl]
    ld c, c
    dec b
    cp [hl]
    ld a, [hl-]
    ld [bc], a
    cp [hl]
    add hl, hl
    jr z, @-$2b

    ld l, [hl]
    rst $38
    sbc $39
    db $dd
    rst $38
    ld [bc], a
    ld hl, sp+$20
    rlca
    ld [bc], a
    ld hl, sp+$27
    rlca
    ld [bc], a
    ld hl, sp-$80
    rlca
    db $dd
    adc b
    ld [bc], a
    ld hl, sp+$79
    rlca
    inc b
    ld hl, sp+$40
    rlca
    inc b
    ld hl, sp+$3c
    rlca
    db $dd
    rst $38
    ld [$37f1], sp
    rlca
    db $dd
    adc b
    rst $38
    sbc $22
    ld b, $b2

Jump_03c_7400:
    ld e, $07
    dec b
    sub d
    ld a, c
    rlca
    inc b
    add d
    ld a, $07
    ld [$35a1], sp
    rlca
    rst $38
    ld [bc], a
    ld h, h
    ld a, a
    ld [bc], a
    add h
    ld a, l
    ld [bc], a
    and h
    ld l, a
    ld [bc], a
    ld h, h
    ld l, h
    ld [bc], a
    sub h
    ld l, a
    ld [bc], a
    ld h, c
    ld l, e
    rst $38
    sbc $d2
    inc bc
    ld hl, sp-$50
    ld b, $01
    ld hl, sp-$5b
    ld b, $01
    ld hl, sp-$63
    ld b, $07
    pop af
    adc d
    ld b, $03
    ld hl, sp+$36

jr_03c_7437:
    rlca
    inc bc
    ld hl, sp+$20
    rlca
    inc d
    ld a, [c]
    ld c, $07
    rst $38
    sbc $27
    ld bc, $b4f1
    rlca
    db $fd
    ld [$7443], sp
    ld bc, $90c1
    rlca
    db $fd
    inc bc
    ld c, e
    ld [hl], h
    ld bc, $8db1
    rlca
    db $fd
    ld [bc], a
    ld d, e
    ld [hl], h
    db $10
    sub d
    sub l
    rlca
    rst $38
    nop

jr_03c_7461:
    pop af
    jr z, jr_03c_7461

    inc b
    ld h, b
    ld [hl], h
    nop
    sub c
    ld c, c
    ld bc, $4aa8
    nop
    pop hl
    ld c, e
    dec b
    jp nc, $034f

    jp nz, $034e

    or d
    ld c, l
    inc d
    and e
    ld c, h
    rst $38
    add h
    ld [hl], a
    ld a, b
    dec b
    add [hl]
    ld a, b
    rlca
    sub l
    ld a, b
    add h
    add a
    ld a, d
    dec b
    sbc d
    ld a, d
    rlca
    xor l
    ld a, d
    add h
    db $fc
    ld a, c
    dec b
    dec bc
    ld a, d
    rlca
    add hl, de
    ld a, d
    add h
    sub [hl]
    ld [hl], a
    dec b
    or l
    ld [hl], a
    rlca
    call nc, $8477
    ld b, l
    ld a, e
    dec b
    ld h, h
    ld a, e
    rlca
    add e
    ld a, e
    add h
    dec h
    ld a, c
    dec b
    jr c, jr_03c_7529

    rlca
    ld c, d
    ld a, c
    add h
    rst $08
    ld a, b
    dec b
    jp hl


    ld a, b
    rlca
    ld [$8478], a
    db $fd
    ld a, b
    dec b
    inc c
    ld a, c
    rlca
    dec de
    ld a, c
    add h
    dec d
    ld a, e
    dec b
    jr z, jr_03c_7546

    rlca
    dec sp
    ld a, e
    add h
    rra
    db $76
    dec b
    inc a
    db $76
    rlca
    ld e, l
    db $76
    add h
    cp d
    ld a, d
    dec b
    reti


    ld a, d
    rlca
    db $fc
    ld a, d
    add h
    ld c, e
    ld a, c
    dec b
    db $76
    ld a, c
    rlca
    sub l
    ld a, c
    add h
    xor [hl]
    ld a, c
    dec b
    push de
    ld a, c
    rlca
    ei
    ld a, c
    add h
    ld a, [de]
    ld a, d
    dec b
    add hl, sp
    ld a, d
    rlca
    ld l, b
    ld a, d
    add h
    sbc a
    ld a, b
    dec b
    or d
    ld a, b
    rlca
    push bc
    ld a, b
    add h
    pop hl
    ld [hl], a
    dec b
    db $fc
    ld [hl], a
    rlca
    rla
    ld a, b
    add h
    daa
    ld a, b
    dec b
    ld c, d
    ld a, b
    rlca
    ld l, l
    ld a, b
    add h
    inc bc
    ld [hl], a
    dec b
    ld [hl+], a
    ld [hl], a
    rlca
    ld b, l
    ld [hl], a
    add h
    dec de
    ld a, h
    dec b
    ld l, $7c
    rlca
    ld b, c
    ld a, h
    add h

jr_03c_7529:
    ld c, [hl]
    ld a, h
    dec b
    ld l, c
    ld a, h
    rlca
    add h
    ld a, h
    add h
    sub a
    ld a, h
    dec b
    and [hl]
    ld a, h
    rlca
    or l
    ld a, h
    add h
    dec h
    ld a, l
    dec b
    ld b, b
    ld a, l
    rlca
    ld e, e
    ld a, l
    add h
    cp b
    ld a, e

jr_03c_7546:
    dec b
    rst $00
    ld a, e
    rlca
    sub $7b
    add h
    ld l, [hl]
    ld a, l
    dec b
    add c
    ld a, l
    rlca
    sub h
    ld a, l
    add h
    ld a, [hl]
    ld a, [hl]
    dec b
    and c
    ld a, [hl]
    rlca
    call nz, $847e
    sub [hl]
    ld a, e
    dec b
    and l
    ld a, e
    rlca
    or a
    ld a, e
    add h
    rst $28
    ld a, l
    dec b
    ld a, [bc]
    ld a, [hl]
    rlca
    dec h
    ld a, [hl]
    add h
    ldh [$7b], a
    dec b
    rst $30
    ld a, e
    rlca
    ld c, $7c
    add h
    and c
    ld a, l
    dec b
    call nz, $077d
    rst $18
    ld a, l
    add h
    jr c, jr_03c_7603

    dec b
    ld d, e
    ld a, [hl]
    rlca
    ld l, [hl]
    ld a, [hl]
    add h
    cp a
    ld a, h
    dec b
    ld [c], a
    ld a, h
    rlca
    add hl, bc
    ld a, l
    add h
    rst $10
    ld a, [hl]
    dec b
    ld [$077e], a
    db $fd
    ld a, [hl]
    add h
    ld a, [bc]
    ld a, a
    dec b
    dec e
    ld a, a
    rlca
    jr nc, jr_03c_7625

    add h
    dec a
    ld a, a
    dec b
    ld h, b
    ld a, a
    rlca
    add d
    ld a, a
    add h
    add e
    ld a, a
    dec b
    sub [hl]
    ld a, a
    rlca
    xor c
    ld a, a
    add h
    db $76
    db $76
    dec b
    adc l
    db $76
    rlca
    and b
    db $76
    add h
    xor l
    db $76
    dec b
    ret nc

    db $76
    rlca
    di
    db $76
    add h
    ld e, e
    ld [hl], a
    dec b
    ld [hl], d
    ld [hl], a
    rlca
    adc c
    ld [hl], a
    sbc $f0
    rrca
    ldh [$80], a
    rlca
    rrca
    ldh a, [$84]
    rlca
    rrca
    jp $05e0


    rrca
    call nz, $0600
    ld a, [bc]
    ld l, h
    add b
    rlca
    ld [$8471], sp
    rlca
    rst $38
    sbc $05
    rrca
    and b
    ld b, c
    rlca
    rrca
    or b
    ld b, e
    rlca
    rrca
    sub e
    or c
    dec b
    rrca
    sub h
    pop bc
    dec b
    ld a, [bc]
    ld c, h
    ld b, c

jr_03c_7603:
    rlca
    ld [$4631], sp
    rlca
    rst $38
    ld [bc], a
    ld a, [c]
    ld c, h
    ld b, $e0
    ld a, [hl-]
    rrca
    ret nc

    ld a, [hl-]
    ld [$2cd0], sp
    ld b, $e6
    ld c, h
    inc c
    ld a, l
    ld c, h
    rrca
    db $d3
    ld c, h
    rst $38
    sbc $f0
    rrca
    rst $30
    and b
    rlca

jr_03c_7625:
    ld b, $e6
    and e
    rlca
    ld a, [bc]
    db $f4
    and b
    rlca
    sbc $a5
    ld a, [bc]
    or $d8
    rlca
    inc b
    db $e3
    rst $10
    rlca
    rrca
    ld a, [c]
    ret c

    rlca
    rst $38
    sbc $05
    ld [bc], a
    ld [$0000], sp
    rrca
    and a
    and c
    ld b, $06
    add [hl]
    and d
    ld b, $0a
    ld [hl], h
    and c
    ld b, $de
    ld e, a
    ld a, [bc]
    db $76
    sub $06
    inc b
    add e
    reti


    ld b, $0f
    and d
    rst $10
    ld b, $ff
    ld [bc], a
    ld a, [c]
    inc a
    ld [$3ee4], sp
    rrca
    rst $10
    inc a
    ld b, $c5
    dec sp
    ld b, $e4
    dec a
    ld [$3cb6], sp
    ld b, $d4
    dec a
    ld [$3bc1], sp
    rst $38
    sbc $f0
    rrca
    rst $30
    ret nz

    rlca
    ld b, $e4
    pop bc
    rlca
    ld a, [bc]
    or $c0
    rlca
    inc b
    db $d3
    jp nz, $0807

    pop bc
    ret nz

    rlca
    rst $38
    sbc $5f
    rrca
    sub a
    add c
    rlca
    ld b, $84
    add b
    rlca
    ld a, [bc]
    sub [hl]
    add c
    rlca
    rrca
    add e
    add c
    rlca
    rst $38
    inc bc
    ld a, [c]
    inc a
    dec c
    and $2c
    rrca
    rst $10
    inc a
    ld [$2cc1], sp
    rst $38
    sbc $f0
    rrca
    rst $30
    add b
    ld b, $0a
    and $84
    ld b, $0f
    rst $10
    sub b
    ld b, $08
    push de
    sub b
    ld b, $06
    call nz, $0688
    dec b
    db $d3
    ld [hl], b
    ld b, $04
    db $d3
    ld h, b
    ld b, $08
    pop bc
    ld b, b
    ld b, $ff
    sbc $05
    rrca
    or a
    ld b, c
    ld b, $0a
    sub [hl]
    ld b, d
    ld b, $0f
    and a
    ld d, c
    ld b, $08
    and l
    ld d, c
    ld b, $06
    sub h
    ld b, a
    ld b, $05
    and e
    ld sp, $0406
    sub e
    ld [hl+], a
    ld b, $08
    ld [hl], c
    ld bc, $ff06
    rrca
    db $e4
    inc a
    ld a, [bc]
    rst $00
    ld c, h
    ld a, [bc]
    rst $00
    inc a
    inc c
    or a
    ld c, h
    rrca
    and d
    ld e, h
    rst $38
    sbc $f0
    ld b, $f7
    and b
    rlca
    ld [$a4e6], sp
    rlca
    inc b
    sub $a0
    rlca
    rrca
    db $d3
    jr nz, @+$09

    ld [$23c3], sp
    rlca
    ld [bc], a
    jp nz, $0728

    ld [$30b1], sp
    rlca
    rst $38
    sbc $0a
    inc b
    ld [$0000], sp
    ld b, $a7
    ld b, c
    rlca
    ld [$4386], sp
    rlca
    inc b
    db $76
    ld b, c
    rlca
    dec c
    add e
    jp nz, $0706

    ld [hl], e
    pop bc
    ld b, $03
    add d
    call z, $0806
    ld [hl], c
    ret c

    ld b, $ff
    ld [bc], a
    ld a, [c]
    ld c, h
    ld b, $e6
    ld a, [hl-]
    inc b
    rst $10
    ld a, [hl-]
    ld b, $d6
    inc l
    ld [$3ce5], sp
    inc c
    jp nc, $083d

    pop de
    inc l
    rst $38
    sbc $a5
    ld b, $f4
    ld b, b
    rlca
    rrca
    db $e3
    jr nc, jr_03c_776c

    inc b
    db $f4
    ld b, b
    rlca
    dec b
    or e
    ld c, b

jr_03c_776c:
    rlca
    ld [$50d1], sp
    rlca
    rst $38
    sbc $77
    ld b, $c3
    ld [de], a

Call_03c_7777:
    rlca
    rrca
    or e
    inc b
    rlca
    inc bc
    jp $0712


    inc b
    jp $0721


    ld [$32b1], sp
    rlca
    rst $38
    ld [$2cd6], sp
    inc c
    add $3c
    ld a, [bc]
    or [hl]
    inc l
    ld [$1c91], sp
    rst $38
    sbc $f0
    inc b
    rst $30
    ld [$0606], sp
    and $00
    ld b, $06
    rst $10
    ldh a, [rTIMA]
    ld b, $c4
    ldh [rTIMA], a
    dec b
    db $d3
    ret nz

    dec b
    inc b
    db $d3
    and b
    dec b
    ld [$80e1], sp
    dec b
    rst $38
    sbc $0a
    inc b
    rst $00
    inc b
    dec b
    ld b, $a6
    ld [bc], a
    dec b
    ld b, $97
    pop af
    inc b
    inc b
    or h
    pop hl
    inc b
    dec b
    and e
    jp nz, $0404

    or e
    and e
    inc b
    ld [$82c1], sp
    inc b
    rst $38
    inc c
    db $e4
    ld c, h
    ld a, [bc]
    rst $00
    ld e, h
    inc c
    or [hl]
    ld c, h
    rrca
    and d
    ld e, h
    rst $38
    sbc $f1
    inc b
    rst $30
    ret nz

    rlca
    inc c
    and $c2
    rlca
    ld b, $b5
    add b
    ld b, $04
    call nz, $0670
    inc b
    or l
    ld h, b
    ld b, $08
    pop bc
    ld b, b
    ld b, $ff
    sbc $cc
    inc bc
    rst $00

Jump_03c_7800:
    add c
    rlca
    inc c
    or [hl]
    add b
    rlca
    ld b, $a5
    ld b, c
    ld b, $04
    call nz, $0632
    ld b, $b5
    ld hl, $0806
    and c
    ld [bc], a
    ld b, $ff
    inc bc
    db $e4
    inc a
    inc c
    sub $2c
    inc b
    db $e4
    inc a
    ld [$5cb7], sp
    rrca
    jp nz, $ff5d

    sbc $c9
    ld [$80f7], sp
    ld b, $02
    rst $30
    ld h, b
    ld b, $01
    rst $20
    ld b, b
    ld b, $01
    rst $20
    jr nz, jr_03c_783f

    rrca
    pop de
    nop
    ld b, $04
    rst $00

jr_03c_783f:
    ld b, b
    rlca
    inc b
    and a
    jr nc, jr_03c_784c

    rrca
    sub c
    jr nz, @+$09

    rst $38
    sbc $79

jr_03c_784c:
    ld a, [bc]
    rst $20
    add d
    ld b, $02
    rst $20
    ld h, d
    ld b, $01
    rst $10
    ld b, d
    ld b, $01
    rst $10
    ld [hl+], a
    ld b, $0f
    pop bc
    ld [bc], a
    ld b, $04
    or a
    ld b, d
    rlca
    ld [bc], a
    sub a
    ld [hl-], a
    rlca
    rrca
    add c
    ld [hl+], a
    rlca
    rst $38
    inc b
    ld [hl], h
    ld hl, $7404
    db $10
    inc b
    ld [hl], c
    jr nz, @+$01

    sbc $f5
    inc b
    di
    jr jr_03c_7884

    rrca
    push hl
    sbc b
    rlca
    ld [$5891], sp

jr_03c_7884:
    rlca
    rst $38
    sbc $a0
    dec b
    or e
    ld [$0f07], sp
    push bc
    adc b
    rlca
    ld [$4871], sp
    rlca
    rst $38
    inc bc
    and c
    inc e
    ld c, $94
    inc l
    ld [$1c81], sp
    rst $38
    sbc $a5
    inc b
    pop hl
    nop
    rlca
    inc b
    ld a, [c]
    add b
    rlca
    ld [bc], a
    sub d
    ld b, b
    rlca
    ld [$00e1], sp
    ld b, $ff
    sbc $0a
    inc b
    or c
    pop hl
    ld b, $03
    jp nz, $06e1

    inc bc
    ld h, d
    add c
    ld b, $08
    or c
    pop hl
    dec b
    rst $38
    ld [bc], a
    ld h, c
    ld [hl-], a
    ld [bc], a
    ld h, c
    ld hl, $6108
    ld de, $deff
    ld a, [$8306]
    ld b, a
    ld [bc], a
    rrca
    ld h, d
    ld h, $02
    inc b
    ld d, d
    ld b, l
    ld [bc], a
    add hl, bc
    ld h, e
    ld b, $02
    rrca
    add d
    dec h
    ld [bc], a
    rrca
    ld b, d
    rlca
    ld [bc], a
    rst $38
    ld [$8cd4], sp
    inc b
    ld [c], a
    sbc h
    rrca
    add $8c
    ld [$ace4], sp
    rrca
    rst $10
    sbc h
    rrca
    ld a, [c]
    xor h
    rst $38
    sbc $f0
    inc b
    di
    ldh [rTMA], a
    rrca
    db $e4
    ld b, b
    ld b, $08
    pop bc
    jr nz, @+$08

    rst $38
    sbc $0a
    inc bc
    jp $0683


    ld c, $b4
    ld [bc], a
    ld b, $08
    and c
    ld bc, $ff06
    inc b
    db $d3
    ld e, h
    rrca
    and $4c
    ld [$5cb1], sp
    rst $38
    sbc $0a
    ld b, $e2
    nop
    dec b
    ld b, $e3
    add b
    dec b
    ld b, $d3
    ld [hl], b
    dec b
    ld [$60a1], sp
    dec b
    rst $38
    sbc $f5
    ld b, $e2
    add d
    inc b
    ld b, $d3
    ld bc, $0605
    or d
    ld [c], a
    inc b
    ld [$c181], sp
    inc b
    rst $38
    sbc $cc
    inc b
    pop af
    nop
    rlca
    inc b
    pop hl
    add b
    rlca
    inc b
    pop de
    ld b, b
    rlca
    inc b
    pop hl
    ld b, b
    rlca
    inc b
    pop af
    add b
    rlca
    inc b
    pop de
    nop
    rlca
    inc b
    pop af
    ld bc, $0407
    pop de
    add d
    rlca
    inc b
    pop bc
    ld b, d
    rlca
    ld [$41b1], sp
    rlca
    rst $38
    sbc $44
    inc c
    ld [$0000], sp
    inc b
    pop af
    ld bc, $0407
    pop hl
    add d
    rlca
    inc b
    pop de
    ld b, c
    rlca
    inc b
    pop hl
    ld b, c
    rlca
    inc b
    pop af
    add d
    rlca
    ld [$01d1], sp
    rlca
    rst $38
    rrca
    ld [$0400], sp
    ld [$0400], sp
    pop de
    ld c, h
    inc b
    or c
    inc l
    inc b
    pop de
    inc a
    inc b
    or c
    inc a
    inc b
    pop bc
    inc l
    ld [$4ca1], sp
    rst $38
    sbc $cc
    ld [$00f5], sp
    ld b, $02
    jp nc, $0638

    ld [bc], a
    jp nz, $0630

    ld [bc], a
    jp nz, $0628

    ld [bc], a
    or d
    jr nz, jr_03c_79ca

    ld [bc], a
    or d
    db $10
    ld b, $02
    and d

jr_03c_79ca:
    jr jr_03c_79d2

    ld [bc], a
    or d
    db $10
    ld b, $08
    pop bc

jr_03c_79d2:
    jr nz, @+$08

    rst $38
    sbc $44
    inc c
    jp $05c0


    inc bc
    or c
    ld sp, hl
    dec b
    ld [bc], a
    and c
    pop af
    dec b
    ld [bc], a
    and c
    jp hl


    dec b
    ld [bc], a
    sub c
    pop hl
    dec b
    ld [bc], a
    sub c
    reti


    dec b
    ld [bc], a
    add c
    pop de
    dec b
    ld [bc], a
    sub c
    reti


    dec b
    ld [$e191], sp
    dec b
    rst $38
    sbc $00
    ld [$80f5], sp
    inc b
    ld [bc], a
    pop hl
    ldh [rTIMA], a
    ld [$dcd1], sp
    dec b
    rst $38
    sbc $a5
    rlca
    sub l
    ld b, c
    inc b
    ld [bc], a
    add c
    ld hl, $0805
    ld h, c
    ld a, [de]
    dec b
    rst $38
    sbc $88
    dec b
    ld a, [c]
    ld d, b
    ld b, $09
    pop de
    ld h, b
    ld b, $05
    ld [c], a
    ld [de], a
    ld b, $09
    pop bc
    ld [hl+], a
    ld b, $05
    ld a, [c]
    db $10
    ld b, $06
    pop de
    jr nz, @+$08

    db $fd
    ld [bc], a
    ld a, [de]
    ld a, d
    rst $38
    sbc $40
    inc b
    ld [$0000], sp
    dec b
    ld a, [c]
    ld d, c
    ld b, $09
    pop de
    ld h, c
    ld b, $05
    ld [c], a
    inc d
    ld b, $08
    pop bc
    inc h
    ld b, $05
    ld a, [c]
    ld de, $0c06
    pop de
    ld hl, $0506
    ld [c], a
    inc d
    ld b, $08
    pop bc
    inc h
    ld b, $05
    ld a, [c]
    ld de, $0406
    pop de
    ld hl, $ff06
    ld b, $d2
    inc e
    add hl, bc
    or c
    inc l
    ld [$2cc2], sp
    add hl, bc
    or c
    inc a
    ld b, $c2
    inc l
    add hl, bc
    and d
    inc a
    rlca
    jp nz, $052c

    and c
    inc a
    add hl, bc
    jp nz, $042c

    and c
    inc a
    rst $38
    sbc $a0
    inc b
    di
    nop
    ld b, $08
    push de
    ld h, b
    rlca
    inc bc
    ld [c], a
    jr nz, jr_03c_7a9c

    ld [$10d1], sp
    rlca
    rst $38
    sbc $5a

jr_03c_7a9c:
    dec b
    or e
    pop af
    ld b, $07
    push bc
    ld d, d
    rlca
    inc bc
    and d
    ld de, $0807
    or c
    ld bc, $ff06
    inc bc
    and d
    inc a
    inc c
    sub h
    inc l
    inc bc
    add d
    inc e
    ld [$2c71], sp
    rst $38
    sbc $f0
    ld [$e0f7], sp
    ld b, $06
    and $e5
    ld b, $03
    db $f4
    ldh [rTMA], a
    inc bc
    or $d0
    ld b, $03
    db $e3
    ret nz

    ld b, $04
    ld a, [c]
    or b
    ld b, $0f
    and d
    ret z

    ld b, $ff
    sbc $05
    inc bc
    ld [$0000], sp
    ld [$a1a7], sp
    ld b, $06
    add [hl]
    and e
    ld b, $03
    ld [hl], h
    and c
    ld b, $03
    db $76
    sub c
    ld b, $03
    add e
    add d
    ld b, $04
    and d
    ld [hl], c
    ld b, $0f
    ld [hl], d
    adc c
    ld b, $ff
    ld [bc], a
    ld a, [c]
    inc a
    ld [$3ee4], sp
    ld [$3cd7], sp
    dec b
    push bc
    dec sp
    inc bc
    call nc, $022c
    or [hl]
    inc a
    inc bc
    and h
    inc l
    ld [$3c91], sp
    rst $38
    sbc $f0
    rrca
    or $65
    dec b
    ld a, [bc]
    db $e4
    ld a, h
    dec b
    inc bc
    jp nz, $055c

    rrca
    or d
    inc a
    dec b
    rst $38
    sbc $5a
    ld c, $d6
    inc bc
    dec b
    add hl, bc
    or h
    dec de
    dec b
    inc b
    sub d
    ld a, [$0f04]
    and d
    db $db
    inc b
    rst $38
    inc c
    and $4c
    dec bc
    rst $10
    ld e, h
    rrca
    jp nz, $ff4c

    sbc $f0
    inc b
    rst $30
    and b
    ld b, $08
    and $a4
    ld b, $04
    sub $a0
    ld b, $0c
    db $d3
    jr nz, @+$08

jr_03c_7b57:
    ld [$24c3], sp
    ld b, $04
    jp nz, $0620

    ld [$10b1], sp
    ld b, $ff
    sbc $5a
    inc b
    rst $20
    ld bc, $0806
    sub $03
    ld b, $04
    add $01
    ld b, $0c
    jp $0581


    ld [$83b3], sp
    dec b
    inc b
    or d
    add d
    dec b
    ld [$71a1], sp
    dec b
    rst $38
    rlca
    sub $5c
    ld [$4ce6], sp
    inc b
    call nc, $045c
    call nc, $074c
    jp $084c


    and c
    ld e, h
    rst $38
    sbc $1b
    rlca
    jp nc, $0740

    rrca
    push hl
    ld h, b
    rlca
    jr @-$3d

    jr nc, jr_03c_7bab

    rst $38
    sbc $81
    ld [bc], a
    jp nz, $0701

jr_03c_7bab:
    inc b
    jp nz, $0708

    rrca
    rst $10
    ld b, c
    rlca
    jr jr_03c_7b57

    ld bc, $ff07
    sbc $f0
    rrca
    rst $10
    add b
    rlca
    inc b
    and $a0
    rlca
    rrca
    jp nc, $0740

    rst $38
    sbc $5a
    rrca
    rst $00
    ld d, e
    rlca
    dec b
    or [hl]
    ld [hl], d
    rlca
    rrca
    jp nz, $0711

    rst $38
    dec c
    or $4c
    inc b
    and $3c
    rrca
    ld a, [c]
    ld c, h
    rst $38
    sbc $f0
    ld b, $f7
    ret nz

    ld b, $0f
    rst $20
    nop
    rlca
    inc b
    db $f4
    ldh a, [rTMA]
    inc b
    db $e4
    ldh [rTMA], a
    ld [$d0d1], sp
    ld b, $ff
    sbc $0a
    rlca
    and $81
    ld b, $0e
    push de
    pop bc

Jump_03c_7c00:
    ld b, $04
    call nz, $06b1
    inc b
    call nc, $06a1
    ld [$91c1], sp
    ld b, $ff
    ld a, [bc]
    and [hl]
    inc a
    ld c, $94
    inc l
    dec b
    and e
    inc a
    ld [$2c91], sp
    rst $38
    sbc $a5
    inc c
    ld a, [c]
    ld b, b
    inc b
    rrca
    db $e3
    and b
    inc b
    inc b
    jp nc, $0490

    ld [$80d1], sp
    inc b
    rst $38
    sbc $ee
    dec bc
    jp nc, $0438

    ld c, $c6
    sbc b
    inc b
    inc bc
    or d
    adc b
    inc b
    ld [$78b1], sp
    inc b
    rst $38
    ld a, [bc]
    and $6c
    rrca
    jp nc, $035c

    jp nz, $086c

    pop de
    ld e, h
    rst $38
    sbc $33
    rrca
    or $c0
    dec b
    ld [$bce3], sp
    dec b
    ld b, $d2
    ret nc

    dec b
    ld b, $b2
    ldh [rTIMA], a
    ld b, $c2
    ldh a, [rTIMA]
    ld [$00b1], sp
    ld b, $ff
    sbc $99
    ld c, $c6
    or c
    inc b
    rlca
    jp $04ad


    dec b
    or d
    pop bc
    inc b
    ld [$d192], sp
    inc b
    ld b, $a2
    pop hl
    inc b
    ld [$f191], sp
    inc b
    rst $38
    ld a, [bc]
    and $5c
    ld a, [bc]
    sub $6c
    inc b
    jp nz, $064c

    db $d3
    ld e, h
    ld [$4cb3], sp
    ld [$5ca1], sp
    rst $38
    sbc $f0
    ld [$90e4], sp
    rlca
    rrca
    push af
    ret nz

    rlca
    ld [$d8d1], sp
    rlca
    rst $38
    sbc $a5
    ld a, [bc]
    call nz, $0771
    rrca
    or [hl]
    and d
    rlca
    ld [$b7a1], sp
    rlca
    rst $38
    ld [$4ce4], sp
    ld c, $c4
    inc a
    ld [$2cd1], sp
    rst $38
    sbc $f0
    ld b, $f2
    nop
    ld b, $06
    ld [c], a
    ld b, b
    ld b, $06
    jp nc, $0680

    ld b, $e2
    ret nz

    ld b, $06
    jp nc, $0700

    ld b, $c2
    ld b, b
    rlca
    ld b, $b2
    add b
    rlca
    ld [$c0a1], sp
    rlca
    rst $38
    sbc $11
    inc bc
    ld [$0001], sp
    ld b, $c2
    pop bc
    dec b
    ld b, $b2
    ld [bc], a
    ld b, $06
    and d
    ld b, c
    ld b, $06
    or d
    add d
    ld b, $06
    and d
    jp nz, $0606

    sub d
    ld bc, $0607
    and d
    ld b, d
    rlca
    ld [$8181], sp
    rlca
    rst $38
    ld b, $08
    ld bc, $e205
    ld e, h
    dec b
    jp nz, $054c

    jp nc, $053c

    or d
    inc l
    dec b
    jp nz, $051c

    and d
    dec de
    dec b
    sub d
    ld a, [de]
    ld [$1881], sp
    rst $38
    sbc $f0
    inc b
    di
    add b
    rlca
    rrca
    rst $20
    nop
    rlca
    ld [$10d3], sp
    rlca
    inc b
    jp nz, $0700

    inc b
    jp nc, $06f0

    ld [$e0c1], sp
    ld b, $ff
    sbc $5a
    ld b, $c3
    ld bc, $0e07
    or a
    add c
    ld b, $07
    or e
    sub d
    ld b, $03
    and d
    add c
    ld b, $04
    or d
    ld [hl], d
    ld b, $08
    and c
    ld h, c
    ld b, $ff
    ld b, $e3
    ld e, h
    ld c, $d6
    ld c, h
    ld b, $c6
    inc a
    inc bc
    or e
    ld c, h
    inc bc
    and d
    ld e, h
    ld [$6cb1], sp
    rst $38
    sbc $0f
    rrca
    rst $30
    nop
    dec b
    rrca
    rst $20
    ld [$0805], sp
    or h
    add b
    inc b
    rrca
    and d
    ld h, b
    inc b
    rst $38
    sbc $44
    ld c, $d7
    add c
    inc b
    ld c, $c7
    adc c
    inc b
    ld a, [bc]
    or h
    ld bc, $0f04
    jp nz, $03e1

    rst $38
    ld c, $f7
    ld a, h
    inc c
    or $6c
    add hl, bc
    db $e4
    ld a, h
    rrca
    ld [c], a
    ld l, h
    rst $38
    sbc $f5
    rlca
    sub $e1
    rlca
    ld b, $c6
    ld [c], a
    rlca
    add hl, bc
    sub $e1
    rlca
    rlca
    add $e0
    rlca
    dec b
    or [hl]
    ld [c], a
    rlca
    rlca
    add $e1
    rlca
    ld b, $b6
    ldh [rTAC], a
    ld [$dfa1], sp
    rlca
    rst $38
    sbc $44
    ld b, $c3
    ret


    rlca
    ld b, $b3
    rst $00
    rlca
    ld a, [bc]
    call nz, $07c3
    ld [$c7b4], sp
    rlca
    ld b, $c3
    ret


    rlca
    rrca
    and d
    push bc
    rlca
    rst $38
    dec c
    add hl, de
    ld a, h
    dec c
    rst $30
    adc h
    inc c
    sub $7c
    ld [$6cc4], sp
    rrca
    or e
    ld e, h
    rst $38
    sbc $f0
    ld b, $f7
    ld b, b
    rlca
    inc c
    and $44
    rlca
    ld b, $d5
    ld d, b
    rlca
    inc b
    jp $0760


    inc bc
    jp $0780


    ld [$a0d1], sp
    rlca
    rst $38
    sbc $0a
    ld b, $c7
    ld bc, $0b07
    or [hl]
    ld [bc], a
    rlca
    ld b, $a5
    ld de, $0407
    sub e
    ld hl, $0307
    and e
    ld b, c
    rlca
    ld [$6291], sp
    rlca
    rst $38
    inc bc
    ld [c], a
    inc a
    ld [$4cd6], sp
    dec b
    call nc, $0c3c
    rst $00
    ld c, h
    ld [bc], a
    ld [c], a
    inc a
    ld [$2cd1], sp
    rst $38
    sbc $f4
    rrca
    ldh a, [rTIMA]
    rlca
    ld a, [bc]
    ldh [rP1], a
    rlca
    ld b, $b4
    db $10
    rlca
    inc b
    db $d3
    nop
    rlca
    ld b, $b2
    jr nz, @+$08

    ld [$24a1], sp
    ld b, $ff
    sbc $22
    rrca
    or b
    jp $0a06


    and b
    pop bc
    ld b, $06
    add h
    jp nc, $0406

    sub e
    pop bc
    ld b, $06
    add d
    pop hl
    dec b
    ld [$e861], sp
    dec b
    rst $38
    ld b, $e6
    ld c, h
    rrca
    sub $3c
    ld a, [bc]
    push bc
    ld c, d
    ld bc, $5bb2
    rrca
    jp nz, $ff4c

    sbc $50
    ld a, [bc]
    push af
    add b
    ld b, $03
    ld [c], a
    and b
    ld b, $03
    ld a, [c]
    ret nz

    ld b, $03
    ld [c], a
    ldh [rTMA], a
    inc bc
    jp nc, $0700

    inc bc
    jp nz, $06e0

    inc bc
    jp nc, $06c0

    ld [$a0c1], sp
    ld b, $ff
    sbc $0f
    add hl, bc
    push de
    ld sp, $0306
    jp nc, $0652

    inc bc
    ld [c], a
    ld [hl], c
    ld b, $03
    or d
    sub c
    ld b, $03
    jp nz, $06b2

    inc bc
    or d
    sub c
    ld b, $03
    jp nz, $0671

    ld [$51b1], sp
    ld b, $ff
    ld b, $e3
    ld c, h
    inc b
    jp $053c


    call nc, $043c
    call nz, $062c
    or h
    inc a
    ld [$2cc1], sp
    rst $38
    sbc $a5
    inc bc
    db $f4
    ld b, c
    ld b, $0d
    sub $21
    rlca
    ld [$19f4], sp
    rlca
    ld [$1ac1], sp
    rlca
    rst $38
    sbc $cc
    inc b
    db $f4
    add b
    dec b
    ld c, $e6
    ldh [rTMA], a
    ld [$d8d5], sp
    ld b, $08
    pop de
    call c, $ff06
    dec b
    call nz, $0d46
    and l
    ld b, h
    ld [$45c4], sp
    ld [$44b1], sp
    rst $38
    sbc $f0
    dec c
    pop af
    ld de, $0d05
    pop hl
    dec d
    dec b
    dec c
    pop hl
    ld de, $0805
    pop de
    ld de, $ff05
    sbc $15
    inc c
    pop hl
    inc c
    dec b
    inc c
    pop de
    db $10
    dec b
    ld c, $c1
    inc c
    dec b
    ld [$0ac1], sp
    dec b
    rst $38
    ld c, $f2
    ld h, l
    dec c
    ld [c], a
    ld d, l
    ld c, $d2
    ld d, [hl]
    ld [$66d1], sp
    rst $38
    sbc $1b
    inc bc
    di
    ld h, h
    dec b
    ld [bc], a
    ld [c], a
    ld b, h
    dec b
    dec b
    pop de
    ld [hl+], a
    dec b
    ld [bc], a
    or d
    add h
    inc b
    ld [$a2d1], sp
    inc b
    inc bc
    di
    inc h
    dec b
    inc b
    db $e4
    db $e4
    inc b
    ld [$02d1], sp
    dec b
    rst $38
    sbc $cc
    inc bc
    db $d3
    ld h, b
    dec b
    ld [bc], a
    jp nz, $0540

    dec b
    pop bc
    jr nz, @+$07

    ld [bc], a
    sub d
    add b
    inc b
    ld [$a0c1], sp
    inc b
    inc bc
    db $d3
    jr nz, @+$07

    inc bc
    call nz, $04e0
    ld [$00c1], sp
    dec b
    rst $38
    sbc $11
    ld [bc], a
    dec a
    add c
    inc bc
    rlca
    push af
    ld bc, $0106
    jp nz, $0481

    ld [$8191], sp
    inc bc
    rst $38
    sbc $ee
    ld [bc], a
    ld a, $b0
    dec b
    rlca
    push de
    ld e, l
    rlca
    ld bc, $b0b2
    ld b, $08
    ld h, c
    or b
    dec b
    rst $38
    ld [bc], a
    sub d
    ld c, c
    rlca
    or l
    add hl, hl
    ld bc, $39a2
    ld [$4991], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
