; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

    ld a, $0f
    ld hl, $5f58
    rst $08
    ld hl, $cd99
    call $334e
    ld a, $0f
    ld hl, $6043

Call_05e_4011:
    rst $08
    ld hl, $cd9a
    call $334e
    ld a, $0f
    ld hl, $6e27
    rst $08
    ret


    add b
    jr z, jr_05e_4062

Call_05e_4022:
    ld bc, $4084
    ld [bc], a
    ld [c], a
    ld b, b
    jp c, $a800

    push hl
    ld [hl], a
    and $00
    ld bc, $0fef
    db $db
    ld [bc], a
    ret c

    inc c
    ld h, [hl]
    ld bc, $57fe
    ld b, b
    cp $76
    ld b, b
    push de
    ld [hl], e
    jp $c071


    nop
    ld b, e
    cp $76
    ld b, b
    push de
    ld [hl], c
    sub $c1
    push de
    ld b, d
    ld d, b
    ld b, a

Call_05e_4050:
    cp $57
    ld b, b
    db $fd
    nop
    jr c, @+$42

    push de
    sub [hl]
    call nc, Call_05e_4050
    nop
    push de
    ret nz

    nop
    ld [hl], e
    ld d, a

jr_05e_4062:
    ld b, b
    nop
    jr nz, jr_05e_4066

jr_05e_4066:
    ld b, e
    sub [hl]
    call nc, Call_05e_4050
    nop
    push de
    ret nz

    nop
    ld [hl], e
    and c

Call_05e_4071:
    ld d, c
    and d
    and b
    sub a
    rst $38
    ld d, b
    nop
    and b
    nop
    call nc, $d522
    ret nz

    and c
    call nc, TimerOverflowInterrupt
    inc hl
    rst $38
    rst $28
    ldh a, [$d8]
    inc c
    add h
    db $db
    ld [bc], a
    call nc, $9050
    cp $ae
    ld b, b
    ld d, a
    cp $d7
    ld b, b
    ld b, c
    ld hl, $5042
    ld [hl], a
    cp $d7
    ld b, b
    ld b, c
    ld d, c
    ld [hl], d
    sub b
    ld [hl], l
    ld d, b
    sub b
    cp $ae
    ld b, b
    ld d, l
    ld d, b
    sub b
    db $fd
    nop
    adc [hl]
    ld b, b
    call nc, $00c0
    ret nz

    nop
    and d
    sub b
    ld [hl], b
    nop
    ld b, b
    nop
    push de
    jp $21d4


    ld b, c
    ld d, d
    sub b
    ld [hl], l
    ld d, b
    sub b
    ret nz

    nop
    ret nz

    nop
    and d
    sub b
    ld [hl], b
    nop
    ld b, b
    nop
    push de
    jp $21d4


    push de
    pop bc
    call nc, Call_05e_4022
    rst $38
    and b
    nop
    and b
    nop
    sub d
    ld [hl], b
    ld d, c
    and b
    nop
    ld d, e
    rst $38
    pop hl
    ld [$d834], sp
    inc c
    dec h
    ld bc, $19fe
    ld b, c
    sub $c0

jr_05e_40ee:
    sub b
    cp $46
    ld b, c
    sub $c1
    ld bc, $71d5
    nop
    ld b, b
    ld [hl], c
    ld b, b
    nop
    sub $c1
    ld [hl], b
    sub b
    cp $46
    ld b, c
    sub $c1
    ld bc, $71d5
    nop
    ld b, b
    sub $c0
    nop
    push de
    ld b, b
    nop
    ld [hl], e
    cp $19
    ld b, c
    ld bc, $00fd
    jp hl


    ld b, b
    push de
    ld d, c
    ld bc, $00c1
    sub b
    ld b, b
    nop
    ret nz

    nop
    ld b, e
    ld hl, $a101
    nop
    ld [hl], b
    sub $c0
    nop
    push de
    ld b, b
    nop
    ld [hl], e
    ld d, c
    ld bc, $00c1
    sub b
    ld b, b
    nop
    ret nz

    nop
    ld b, e
    ld hl, $a101
    nop
    jr nz, @+$54

    call c, Call_05e_5235
    call c, $ff25
    and c
    ld bc, $a1d5
    nop
    jr nz, jr_05e_40ee

    call nc, RST_20
    push de
    and e
    rst $38
    ret nz

    ld e, a
    ld b, c
    ld bc, $4231
    ld [bc], a
    ld de, $0343
    ret nc

    ld b, e
    jp c, $8800

    push hl
    ld [hl], a
    and $00
    ld bc, $0cd8
    or e
    rlca
    rst $28
    rst $38
    rrca
    rrca
    db $db
    inc bc
    ret c

    ld b, $97
    rst $28
    rrca
    call nc, $0090
    sub b
    nop
    ld [hl], c
    sub c
    add hl, bc
    add hl, bc
    rst $28
    ldh a, [rNR42]
    ld h, c
    sub b
    nop
    sub b
    nop
    ld [hl], c
    sub c
    dec bc
    db $db
    ld [bc], a
    cp $04
    ld b, d
    rst $28
    rst $38
    cp $df
    ld b, d
    cp $22
    ld b, d
    cp $04
    ld b, d
    rst $28
    rst $38
    cp $df
    ld b, d
    cp $22
    ld b, d
    cp $04
    ld b, d
    db $db
    ld bc, $0121
    ld b, c
    ld bc, $0071
    sub c
    nop
    or c
    ret nz

    nop
    call nc, RST_20
    ld b, b
    nop
    push de
    pop bc
    ld bc, $91c1
    pop bc
    or c
    sub c
    add b
    ld b, d
    ld hl, $c1d6
    or b
    sub d
    or c
    add c
    or b
    push de
    ld [hl+], a
    ld b, c
    ld hl, $8240
    pop bc
    ld bc, $01b1
    sub c
    nop
    ld [hl], c
    nop
    ld b, c
    jr nz, jr_05e_41da

jr_05e_41da:
    ld b, b
    nop
    ld h, b
    nop
    ld hl, $9101
    call nc, $6121
    sub b
    nop
    ld b, b
    nop
    sub b
    ld [hl], d
    ld h, b
    nop
    ld b, b
    nop
    push de
    ret nz

    sub d
    ld [hl], b
    nop
    ld b, b
    nop
    sub b
    ld b, c
    ld [hl], b
    sub b
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    add b
    nop
    db $fd
    nop
    ld l, e
    ld b, c
    rst $28
    rrca
    ret c

    ld b, $84
    call nc, $dc41
    ld [hl], c
    jr nz, jr_05e_421f

    call c, $d551
    or b
    sub b
    call c, $8031
    ld h, b
    call c, Call_05e_4011
    jr nz, jr_05e_422d

    nop
    ret c

jr_05e_421f:
    inc c
    add h
    rst $38
    push de
    ld b, b
    nop
    sub $90
    nop
    push de
    ld b, b
    sub $90
    nop

jr_05e_422d:
    push de
    ld b, b
    ld bc, $e1ff
    ld [de], a
    inc [hl]
    db $db
    ld [bc], a
    ret c

    inc c
    and l
    ld b, $d5
    ld [hl], b
    rst $28
    rst $38
    cp $df
    ld b, d
    cp $a4
    ld b, d
    rst $28
    rst $38
    cp $cc
    ld b, d
    push de
    pop bc
    or c
    pop bc
    sbc a
    cp $a4
    ld b, d
    rst $28
    rst $38
    cp $cc
    ld b, d
    pop bc
    or c
    pop bc
    sbc a
    cp $a4
    ld b, d
    ld [hl], c
    ld bc, $0191
    or c
    nop
    pop bc
    nop
    call nc, $4021
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld b, c
    ld bc, $7191
    sub c
    ld c, l
    jr nz, jr_05e_42b5

    dec h
    push de
    ret nz

    call nc, Call_05e_4720
    ld [hl], c
    ld bc, $0161
    ld b, c
    nop
    ld hl, $d500
    pop bc
    sub b
    nop
    or b
    nop
    ret nz

    nop
    sub c
    ld bc, $21d4
    ld h, c
    sub c
    call $c0b0
    sbc c
    call c, $d684

jr_05e_4298:
    ld b, b
    nop
    ld [hl], b
    nop
    add b
    nop
    call c, $fda5
    nop
    inc a
    ld b, d
    push de
    sub b
    nop
    ld b, b
    nop
    ld [hl], b
    ld b, b
    nop
    ld [hl], b
    ld bc, $f0ef
    call nc, $d890
    ld b, $81

jr_05e_42b5:
    add b
    ld h, b
    call c, Call_05e_4071
    jr nz, jr_05e_4298

    ld h, c
    db $10
    push de
    or b
    call c, $9041
    call c, $8021
    ld h, b
    nop
    ret c

    inc c
    and l
    rst $38
    call nc, $0191
    ld [hl], c
    ld bc, $0061
    ld b, c
    nop
    ld hl, $0040
    ld b, b
    nop
    jr nz, jr_05e_42dc

jr_05e_42dc:
    ld b, c
    ld bc, $d5ff
    sub b
    nop
    ld b, b
    nop
    ld [hl], b
    ld b, b
    nop
    ld [hl], b
    ld h, b
    nop
    jr nz, jr_05e_42ec

jr_05e_42ec:
    sub $c0
    sub d
    push de
    sub b
    nop
    ld b, b
    nop
    ld [hl], b
    ld b, b
    nop
    ld [hl], b
    ld h, b
    nop
    jr nz, jr_05e_42fc

jr_05e_42fc:
    sub $c0
    sub c
    push de
    ld [hl], b
    sub b
    nop
    ld b, b
    nop
    ld [hl], b
    ld b, b
    nop
    ld [hl], b
    ld h, b
    nop
    jr nz, jr_05e_430d

jr_05e_430d:
    sub $c0

jr_05e_430f:
    sub d
    rst $38
    ret c

    inc c
    inc d

jr_05e_4314:
    rlca
    cp $a7
    ld b, e
    cp $a7
    ld b, e
    cp $a7
    ld b, e
    sub $90
    nop
    push de
    ld [hl], b
    nop
    sub $90
    push de
    ld b, c
    sub $90
    ld bc, $00c0
    sub e
    db $fd
    inc bc
    dec d
    ld b, e
    ld [hl], b
    nop
    or b
    nop
    push de
    jr nz, jr_05e_430f

    ld [hl], b
    nop
    push de
    jr nz, jr_05e_4314

    ld [hl], b
    nop
    or c
    push de
    jr nz, jr_05e_4344

jr_05e_4344:
    sub $71
    sub b
    nop
    sub b
    nop
    ret nz

    sub b
    nop
    push de
    ld b, b
    sub $90
    nop
    push de
    sub c
    sub $90
    nop
    push de
    ld b, c
    sub $40
    nop
    ld b, b
    nop
    sub b
    ld b, b
    nop
    or b
    ld b, b
    nop
    sub c
    or b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    ld b, b
    nop
    or b
    ld b, b
    nop
    push de
    ld b, c
    sub $40
    nop
    add c
    cp $bc
    ld b, e
    push de
    jr nz, jr_05e_437f

jr_05e_437f:
    jr nz, jr_05e_4381

jr_05e_4381:
    ld h, b
    jr nz, jr_05e_4384

jr_05e_4384:
    sub b
    sub $90
    nop
    push de
    ld h, c
    sub $90
    nop
    push de
    ld hl, $bcfe
    ld b, e
    sub b
    nop
    sub b
    nop
    ret nz

    sub c
    push de
    ld b, b
    sub $90
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    add b
    nop
    db $fd
    nop
    dec d
    ld b, e
    sub $90
    nop
    push de
    ld [hl], b
    nop
    sub $90
    push de
    ld b, c
    sub $90
    push de
    jr nz, jr_05e_43b6

jr_05e_43b6:
    ret nz

    nop
    jr nz, @+$63

    jr nz, @+$01

    sub $90
    nop
    sub b
    nop
    ret nz

    sub b
    nop
    push de
    ld b, b
    sub $90
    nop
    pop bc
    push de
    ld b, b
    nop
    sub $91
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    ld b, c
    ld sp, $3031

jr_05e_43d8:
    jr nc, jr_05e_43d8

    inc c
    ld b, h
    cp $0c
    ld b, h
    cp $0c
    ld b, h
    cp $24
    ld b, h
    db $fd
    inc b
    reti


    ld b, e
    cp $0c
    ld b, h
    cp $0c
    ld b, h
    cp $0c
    ld b, h
    rst $28
    rst $38
    ld b, c
    rst $28
    ldh a, [$81]
    rst $28
    rst $38
    ld sp, $0fef
    add b
    add b
    rst $28
    ldh a, [$81]
    rst $28
    rst $38
    ld sp, $3031
    jr nc, @-$01

    nop
    reti


    ld b, e
    rst $28
    rst $38
    ld b, c
    rst $28
    ldh a, [$81]
    rst $28
    rst $38
    ld sp, $0fef
    add b
    add b
    rst $28
    ldh a, [$81]
    rst $28
    rst $38
    ld b, c
    ld sp, $0fef
    add c
    rst $38
    rst $28
    rst $38
    ld b, c
    rst $28
    ldh a, [$81]
    rst $28
    rst $38
    ld sp, $0fef
    add b
    add b
    rst $28
    ldh a, [$81]
    rst $28
    rst $38
    ld b, c
    ld sp, $3030
    rst $38
    ret nz

    ld b, a
    ld b, h
    ld bc, $451a
    ld [bc], a
    db $db
    ld b, l
    inc bc
    adc [hl]
    ld b, [hl]
    jp c, $8800

    push hl
    ld [hl], a
    pop hl
    ld a, [bc]
    inc [hl]
    and $00
    ld bc, $0fef
    ret c

    inc c
    or e
    rlca
    db $db
    inc bc
    ret c

    ld b, $96
    push de
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld d, c
    ld [hl], c
    inc bc
    ld [hl], c
    ld [$5008], sp
    nop
    ld d, b
    nop
    ld sp, $0351
    ld d, c
    ld [$5008], sp
    nop
    ld d, b
    nop
    ld hl, $0351
    ld d, c
    ld [$5008], sp
    nop
    ld d, b
    nop
    ld hl, $0251
    ld h, b
    ld [hl], e
    inc bc
    ld d, e
    inc bc
    inc hl
    db $db
    ld [bc], a
    cp $f9
    ld b, h
    call nc, $0121
    push de
    pop bc
    ld bc, $d4b1
    dec h
    inc bc
    push de
    ld [hl], e
    inc bc
    ld d, e
    cp $f9
    ld b, h
    call nc, $0121
    ld hl, $d501
    or c
    push bc
    or e
    ld [hl], e
    call c, $dba5
    nop
    call nc, $b571
    db $db
    ld [bc], a
    call c, $d372
    ld sp, $c1d4
    ld [hl], c
    ld sp, $04fd
    or h
    ld b, h
    db $d3
    ld sp, $c1d4
    ld [hl], c
    ld sp, $a1d5
    ld [hl], c
    ld sp, $a1d6
    pop bc
    push de
    ld sp, $a171
    pop bc
    call nc, $7131
    pop bc
    db $d3
    ld sp, $91d4
    ld d, c
    push de
    pop bc
    db $fd
    inc b
    call nc, $d344
    ld hl, $b1d4
    ld [hl], c
    ld hl, $b1d5
    ld [hl], c
    ld hl, $b1d6
    push de
    ld hl, $7151
    or c
    call nc, Call_05e_5121
    ld [hl], c
    or c
    db $fd
    nop
    ld e, b
    ld b, h
    ccf
    call nc, $0131
    ld d, c
    ld bc, $3571
    push de
    ld e, a
    pop bc
    ld bc, $21d4
    ld bc, $d531
    push bc
    call nc, $0151
    ld d, c
    ld bc, $2531
    ld hl, $2101
    ld bc, $c1d5
    and l
    rst $38
    db $db
    inc bc
    pop hl
    ld a, [bc]
    inc [hl]
    ret c

    inc c
    or e
    rlca
    rst $28
    ldh a, [$d8]
    ld b, $b8
    push de
    ret nz

    nop
    ret nz

    nop
    and c
    pop bc
    inc bc
    pop bc
    dec b
    rst $28
    rst $38
    rst $00
    and e
    rst $28
    ldh a, [$90]
    nop
    sub b
    nop
    ld [hl], c
    sub c
    inc bc
    sub c
    dec b
    rst $28
    rst $38
    ld [hl], a
    sub e
    rst $28
    ldh a, [$a0]
    nop
    and b
    nop
    add c
    and c
    inc bc
    and c
    dec b
    rst $28
    rst $38
    and a
    add e
    rst $28
    ldh a, [rSVBK]
    nop
    ld [hl], b
    nop
    ld d, c
    ld [hl], c
    ld [bc], a
    and b
    or e
    inc bc
    ld [hl], e
    inc bc
    ld d, e
    cp $9a
    ld b, l
    ld [hl], c
    ld bc, $0151
    ld sp, $fe55
    ret z

    ld b, l
    cp $9a
    ld b, l
    ld [hl], c
    ld bc, $0171
    ld d, c
    dec [hl]
    cp $c8
    ld b, l
    ret c

    inc c
    or a
    pop bc
    ld bc, $01c1
    call nc, $0031
    ld hl, $d500
    rst $08
    ld bc, $01c1
    call nc, $0131
    ld hl, $d500
    pop bc
    nop
    cp a
    ld bc, $00fd
    inc hl
    ld b, l
    pop bc
    ld bc, $31d4
    ld bc, $a571
    rst $00
    ld bc, $c1a1
    db $d3
    ld hl, $0131
    ld hl, $3101
    dec h
    call nc, $dccb
    adc b
    or b
    and b
    call c, $9068
    ld [hl], b
    call c, $d3b8
    ld hl, $2101
    ld bc, $c1d4
    and l
    add c
    ld bc, $0181
    ld [hl], c
    ld d, l
    rst $38
    daa
    call c, $1088
    push de
    ret nz

    or b
    call c, $9068
    ld [hl], b
    call c, Call_05e_5048
    jr nz, jr_05e_45d8

jr_05e_45d8:
    call c, $ffb8
    ret c

    ld b, $16
    rrca
    sub $c3
    push de
    and c
    ld bc, $d673
    ret nz

    nop
    jp $c1a1


    push de
    pop bc
    sub $c1
    push de
    and c
    sub $c1
    push de
    ld [hl], c
    ld d, e
    sub c
    ld bc, $50c3
    nop
    ld d, l
    sub $b1
    push bc
    sub e
    and e
    push de
    add c
    ld bc, $d653
    and b
    nop
    and e
    add c
    and c
    push de
    and c
    sub $a1
    push de
    add c
    sub $a1
    push de
    ld d, c
    sub $73
    or c
    ld bc, $23d5
    sub $70
    nop
    ld [hl], l
    sub e
    inc bc
    or e
    jp $a1d5


    ld bc, $d673
    ret nz

    nop
    push bc
    push de
    ld sp, $7101
    dec [hl]
    ld d, e
    sub c
    ld bc, $50c3
    nop
    ld d, l
    ld sp, $d601
    pop bc
    sub l
    and e
    push de
    ld hl, $5301
    sub $a0
    nop
    and l
    push de
    ld d, e
    ld hl, $55d6
    db $fd
    ld [bc], a
    dec d
    ld b, [hl]
    ld [hl], e
    or c
    ld bc, $21d5
    ld [hl], l
    sub $71
    ld bc, $23d5
    sub $b1
    push de
    ld [hl], l
    sub $c3
    push de
    jp $c3d6


    push de
    ld [hl], c
    and l
    sub $c3
    push de
    ld [hl], e
    sub $c3
    and e
    ld bc, $01b3
    push bc
    ld bc, $a3c3
    ld [hl], e
    ld d, e
    push de
    ld d, e
    sub $53
    sub c
    push de
    dec [hl]
    sub $53
    jp Jump_05e_53d5


    ld [hl], e
    ld bc, $0153
    daa
    sub $c7
    or e
    db $fd
    nop
    rst $18
    ld b, l
    db $e3
    inc bc
    ret c

    inc c
    ld b, c
    ld b, c
    ld sp, $3030
    cp $d3
    ld b, [hl]
    cp $d9
    ld b, [hl]
    cp $d3
    ld b, [hl]
    cp $df
    ld b, [hl]
    db $fd
    ld [bc], a
    sub a
    ld b, [hl]
    cp $d3
    ld b, [hl]
    cp $d9
    ld b, [hl]
    cp $d3
    ld b, [hl]
    ld sp, $3141
    ld b, b
    jr nc, @+$33

    ld b, c
    ld sp, $3030
    ld sp, $3241
    ld b, b
    ld b, c
    ld b, c
    ld sp, $3141
    ld b, c
    ld [hl-], a
    ld b, b
    ld b, c
    ld sp, $3031
    jr nc, @-$01

    ld [bc], a
    cp d
    ld b, [hl]
    db $fd
    nop
    sub a
    ld b, [hl]
    ld b, e
    ld [hl-], a
    ld b, d
    ld b, c
    inc sp
    rst $38
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld b, c
    inc sp
    rst $38
    ld b, e
    ld sp, $3240
    ld sp, $3041
    jr nc, @+$01

    ret nz

    db $f4
    ld b, [hl]
    ld bc, $477a
    ld [bc], a
    ret z

    ld b, a
    inc bc
    db $10
    ld c, b
    jp c, $8800

    push hl
    ld [hl], a
    and $00
    ld [bc], a
    pop hl
    db $10
    inc [hl]
    db $db
    inc bc
    rst $28
    ldh a, [$d8]
    inc c
    sub d
    sub $71
    ld [hl], e
    ld [hl], c
    ld [hl], c
    ld [hl], e
    ld [hl], c
    ld [hl], c
    ld [hl], e
    ld [hl], c
    ld [hl], c
    ld [hl], l
    ret c

    inc c
    or h
    sub $c1
    ld [hl], c
    ld d, c
    pop bc
    push de
    ld hl, $91d6
    ld [hl], c
    push de

Call_05e_4720:
    ld hl, $71d6
    ld hl, $c1d7
    sub $71
    push de
    ld [hl], c
    sub $71
    pop bc
    push de
    ld d, c
    ld [hl], c
    ld d, c
    sub $c1
    ld [hl], c
    pop bc
    push de
    ld d, c
    ld [hl], c
    ld d, c
    sub $c1
    ld [hl], c
    pop bc
    push de
    ld d, c
    sub $37
    push de
    ld sp, $a1d6
    add c
    push de
    ld sp, $d651
    pop bc
    and c
    push de
    ld d, c
    sub $a1
    ld d, c
    ld sp, $d5a1
    and c
    sub $a1
    push de
    ld sp, $a151
    ld d, c
    ld sp, $a1d6
    push de
    ld sp, $a151
    ld d, c
    call nc, $d511
    add c
    ld [hl], c
    call nc, $d811
    inc c
    and b
    scf
    scf
    ret c

    inc c
    and a
    scf
    ret c

    inc c
    or d
    sub $3f
    rst $38
    ret c

    inc c
    and d
    db $db
    inc bc
    pop hl
    ld [$d644], sp
    pop bc
    jp $c1c1


    jp $c1c1


    jp $c1c1


    pop bc
    ret c

    inc c
    and d
    sub $50
    ret nz

    push de
    ld d, b
    ld [hl], b
    ret c

    inc c
    rst $00
    ld d, a
    ld [hl], a
    sub $c7
    ret c

    inc c
    or b
    push de
    rst $00
    ret c

    inc c
    rst $00
    rst $08
    rrca
    add a
    and a
    scf
    ret c

    inc c
    rst $00
    call nc, $d837
    inc c
    ld a, h
    scf
    ret c

    inc c
    rst $00
    scf
    add a
    ret c

    inc c
    or b
    ld [hl], a
    ld [hl], a
    ret c

    inc c
    rst $00
    ld [hl], a
    ret c

    inc c
    jp nz, $3fd5

    rst $38
    ret c

    inc c
    ld d, $d7
    jp $06d8


    ld d, $c0
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ret c

    inc c
    ld d, $c3
    jp $d8c3


    ld b, $16
    ret nz

    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ret c

    inc c
    ld d, $c3
    jp $c7d6


    ld [hl], a
    ld b, a
    jp $c373


    push de
    ld d, e
    ld [hl], e
    ld d, e
    inc sp
    inc hl
    sub $a7
    push de

jr_05e_47fe:
    scf
    sub $a7
    ld [hl], a
    push de
    inc sp
    ld d, e
    ld [hl], e
    ld d, e
    inc sp
    inc hl
    rla
    scf
    ccf
    sub $30
    ld c, $ff
    rst $28
    rrca
    db $e3
    inc bc
    ret c

    inc c
    rrca
    dec bc
    sub $20
    jr nz, jr_05e_483c

    jr nz, jr_05e_4851

    ret c

    ld [$2020], sp
    jr nz, jr_05e_4844

    jr nz, jr_05e_4846

    dec [hl]
    jr nz, jr_05e_4849

    jr nz, @+$22

    jr nz, jr_05e_484d

    ld [hl-], a
    ret c

    inc c
    jr nz, @+$22

    add b
    add b
    jr nz, jr_05e_4856

    ld hl, $2020
    add c
    jr nc, jr_05e_485c

jr_05e_483c:
    and b
    add b
    jr nc, jr_05e_4870

    add b
    nop
    jr nz, jr_05e_4864

jr_05e_4844:
    and b
    add b

jr_05e_4846:
    jr nz, jr_05e_4878

    add b

jr_05e_4849:
    add b
    jr nc, jr_05e_487c

    and c

jr_05e_484d:
    ld hl, $2121
    and c

jr_05e_4851:
    ld sp, $2020
    jr nz, jr_05e_4876

jr_05e_4856:
    inc sp
    jr nz, jr_05e_4879

    jr nz, @+$22

    inc sp

jr_05e_485c:
    jr nz, jr_05e_487e

    jr nz, jr_05e_4880

    and b
    add b
    jr nc, @+$22

jr_05e_4864:
    add b
    add b
    jr nz, jr_05e_4888

    and b
    add b
    jr nc, jr_05e_488c

    add b
    add b
    jr nc, jr_05e_4890

jr_05e_4870:
    and b
    add b
    jr nz, jr_05e_4894

    jr nc, @+$22

jr_05e_4876:
    jr nz, jr_05e_48a8

jr_05e_4878:
    and b

jr_05e_4879:
    add b
    jr nc, jr_05e_489c

jr_05e_487c:
    jr nz, jr_05e_47fe

jr_05e_487e:
    jr nc, jr_05e_48a0

jr_05e_4880:
    ld hl, $0131
    ld sp, $0531
    rrca
    rrca

jr_05e_4888:
    rst $38
    ret nz

    sub l
    ld c, b

jr_05e_488c:
    ld bc, $496d
    ld [bc], a

jr_05e_4890:
    jr nz, @+$4c

    inc bc
    dec c

jr_05e_4894:
    ld c, e
    jp c, $8d00

    push hl
    ld [hl], a
    and $00

jr_05e_489c:
    ld bc, $12e1
    inc [hl]

jr_05e_48a0:
    rst $28
    rrca
    ret c

    ld b, $94
    rrca
    rrca
    dec bc

jr_05e_48a8:
    dec bc
    db $db
    ld [bc], a
    push de
    ld de, $8351
    cp $5e
    ld c, c
    add c
    ld bc, $0313
    call c, $8192
    ld h, c
    ld de, $8151
    call nc, $8151
    ld d, c
    push de
    add c
    ld d, c
    cp $5e
    ld c, c
    add c
    ld bc, $b3d6
    inc bc
    call c, $d592
    add c
    ld b, c
    ld de, $a161
    call nc, Call_05e_6111
    ld de, $a1d5
    ld h, c
    call c, $3193
    ld bc, $6353
    add c
    and c
    or a
    sub $b7
    push de
    ld de, $3301
    ld d, e
    ld h, c
    add c
    and a
    sub $a7
    or c
    ld bc, $13d5
    inc sp
    ld b, c
    ld h, c
    ld b, e
    ld h, e
    add e
    or e
    call nc, $0111
    push de
    ld h, e
    inc bc
    sub $a1
    push de
    ld de, $0353
    db $db
    inc bc
    ld de, $8351
    and e
    ld h, a
    ld h, c
    add c
    and a
    add e
    ld h, e
    scf
    or c
    ld sp, $6151
    add c
    and c
    or c
    call nc, $3111
    ld de, $4131
    ld h, e
    push de
    ld h, a
    ld hl, $6741
    add e
    ld h, e
    ld h, e
    rla
    add c
    ld h, c
    ld d, a
    call nc, $d511
    or c
    add c
    ld d, c
    inc de
    ld h, a
    ld de, $a761
    or e
    call nc, $d513
    or e
    ld h, a
    or e
    call nc, $d537
    or c
    and c
    ld h, e
    sub e
    ld h, a
    sub e
    ld h, e
    ld b, e
    inc hl
    ld h, e
    call c, $d494
    inc de
    push de
    ld d, l
    ld bc, $0050
    ld d, b
    nop
    ld d, e
    dec bc
    db $fd
    nop
    and l
    ld c, b
    call c, $a194
    ld bc, $0313
    and b
    nop
    and b
    nop
    inc de
    ld h, e
    inc bc
    and e
    rst $38
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    ld b, $b8
    push de
    ld h, c
    ld bc, $a3d6
    inc bc
    push de
    ld h, b
    nop
    ld h, b
    nop
    sub $a3
    push de
    ld h, e
    inc bc
    sub $a1
    ld bc, $61d5
    ld bc, $a3d6
    inc bc
    and $00
    ld bc, $00a0
    push de
    stop
    ld h, e
    inc bc
    and $00
    nop
    call c, $81b7
    call nc, $5311
    cp $15
    ld c, d
    or e
    ld bc, $d861
    inc c
    or a
    dec de
    ret c

    ld b, $b7
    cp $15
    ld c, d
    ret c

    inc c
    or a
    or c
    nop
    add b
    xor e
    or b
    nop
    or e
    add b
    and b
    or e
    inc sp
    and b
    nop
    and e
    add b
    and b
    ld h, a
    add b
    nop
    add e
    or b
    and b
    or e
    ld b, e
    ld h, b
    nop
    ld h, e
    add b
    ld h, b
    ld d, a
    rst $28
    ldh a, [$db]
    ld [bc], a
    ld h, l
    and b
    or b
    db $d3
    inc de
    call nc, $a1b1
    cp a
    or l
    add b
    and b
    or e
    db $d3
    ld de, $b1d4
    and l
    or b
    and b
    add a
    and l
    ld h, b
    and b
    db $d3
    inc de
    ld sp, $3541
    ld de, $b7d4
    db $d3
    dec h
    ld de, $b1d4
    sub c
    ld h, c
    sub c
    add h
    nop
    ret c

    ld b, $b7
    add b
    nop
    add b
    nop
    add e
    inc bc
    rst $28
    rst $38
    db $db
    inc bc
    push de
    ld de, $5331
    db $fd
    nop
    ld [hl], b
    ld c, c
    ld h, c
    ld bc, $1167
    ld h, c
    db $d3
    rla
    call nc, $a3b3
    rst $38
    pop hl
    ld [de], a
    inc [hl]
    ret c

    ld b, $16
    rst $28
    rst $38
    cp $fe
    ld c, d
    ld de, $6301
    inc bc
    sub $a0
    nop
    push de
    stop
    ld h, e
    inc bc
    rst $28
    ldh a, [rNR22]
    cp $fe
    ld c, d
    ld de, $6301
    inc bc
    stop
    stop
    ld d, e
    inc de
    inc bc
    ld de, $fe01
    cp $4a
    sub $b1
    ld bc, $43d5
    inc bc
    sub $b0
    nop
    or b
    nop
    push de
    inc de
    ld h, e
    inc bc
    stop
    ld de, $b1d6
    ld bc, $63b3
    push de
    ld h, b
    nop
    ld h, c
    sub $b1
    ld bc, $31d5
    ld bc, $1167
    ld bc, $d613
    ld h, e
    push de
    ld h, b
    nop
    ld h, b
    nop
    sub $a1
    ld bc, $11d5
    ld bc, $4167
    ld bc, $d643
    add e
    push de
    add b
    nop
    add b
    nop
    sub $81
    ld bc, $01b1
    push de
    ld b, a
    ld h, c
    ld bc, $0313
    ld de, $61d6
    add e
    inc bc
    rst $28
    rst $38
    add c
    push de
    ld de, $6353
    rla
    ld h, b
    nop
    ld h, b
    nop
    and e
    dec d
    ld bc, $0010
    stop
    ld h, e
    scf
    ld h, b
    nop
    ld h, b
    nop
    or e
    and e
    ld h, e
    inc sp
    ld h, e
    daa
    ld h, b
    nop
    ld h, b
    nop
    or e
    ld h, a
    jr nz, jr_05e_4ac1

jr_05e_4ac1:
    jr nz, jr_05e_4ac3

jr_05e_4ac3:
    inc de
    ld h, a
    stop
    stop
    add e
    inc de
    inc sp
    ld d, e
    ld h, e
    rla
    ld h, b
    nop
    ld h, b
    nop
    and e
    rla
    ld h, c
    ld bc, $d663
    or a
    push de
    ld h, b
    nop
    ld h, b
    nop
    or e
    sub $b3
    push de
    inc sp
    ld d, e
    ld h, e
    sub $97
    push de
    jr nz, jr_05e_4aeb

jr_05e_4aeb:
    jr nz, jr_05e_4aed

jr_05e_4aed:
    sub e
    sub $97
    push de
    inc hl
    inc de
    add a
    stop
    stop
    add e
    dec bc
    db $fd
    nop
    ld h, $4a
    push de
    ld de, $6301
    inc bc
    stop
    stop
    ld h, e
    inc de
    inc bc
    ld de, $ff01
    db $e3
    inc bc
    ret c

    inc c
    cp $58
    ld c, e
    ld sp, $3033
    jr nc, @+$35

    jr nc, jr_05e_4b3b

    jr nc, jr_05e_4b3d

    cp $58
    ld c, e
    cp $61
    ld c, e
    db $fd
    ld [bc], a
    dec e
    ld c, e
    cp $6c
    ld c, e
    cp $61
    ld c, e
    cp $6c
    ld c, e
    ld sp, $3033
    jr nc, jr_05e_4b6c

    cp $76
    ld c, e
    ld sp, $3131

jr_05e_4b3b:
    jr nc, @+$32

jr_05e_4b3d:
    ld sp, $3031
    jr nz, @+$32

    jr nz, @-$01

    inc bc
    dec [hl]
    ld c, e
    cp $76
    ld c, e
    ld sp, $3131
    jr nc, @+$32

    inc sp
    jr nc, @+$22

    jr nc, jr_05e_4b74

    db $fd
    nop
    ld de, $314b
    inc sp
    jr nc, @+$32

    ld sp, $3033
    jr nc, @+$01

    ld sp, $3033
    jr nc, jr_05e_4b97

    ld sp, $2030
    jr nc, @+$22

    rst $38

jr_05e_4b6c:
    ld sp, $3033
    jr nc, jr_05e_4ba2

    ld sp, $3031

jr_05e_4b74:
    jr nc, @+$01

    ld sp, $3121
    jr nc, @+$22

    ld sp, $3121
    jr nc, jr_05e_4ba0

    rst $38
    add b
    adc d
    ld c, e
    ld bc, $4dec
    ld [bc], a
    ld [hl+], a
    ld d, c
    jp c, Jump_05e_6500

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    ld [de], a
    dec d

jr_05e_4b97:
    ret c

    inc c
    or a
    call nc, $90a0
    add e
    ld d, c
    ld b, b

jr_05e_4ba0:
    jr nc, @+$25

jr_05e_4ba2:
    push de
    or c
    and b
    sub b
    add e
    ld d, c
    ld b, b
    jr nc, jr_05e_4bce

    sub $b1
    ret c

    inc c
    or d
    and c
    and e
    and c
    and c
    and e
    and c
    and c
    and e
    and c
    and c
    and c
    ret c

    inc c
    or e
    call nc, Call_05e_5163
    ret c

    inc c
    or d
    sub $a3
    and c
    and c
    and e
    and c
    and c
    and e
    and c
    and c

jr_05e_4bce:
    and c
    ret c

    inc c
    or e
    call nc, Call_05e_5163
    ret c

    inc c
    or d
    sub $a3
    and c
    and c
    and e
    and c
    and c
    and e
    and c
    and c
    and c
    ret c

    inc c
    or e
    call nc, Call_05e_5163
    ret c

    inc c
    or d
    sub $a3
    and c
    and c
    and e
    and c
    and c
    and e
    and c
    and c
    and c
    and b
    ret nz

    push de
    ld d, b
    sub b
    ret c

    inc c
    or h
    sub $a1
    pop bc
    ld d, c
    push de
    ld d, e
    sub $c1
    and c
    ld d, c
    ld sp, $3151
    and e
    ld d, c
    ld sp, $d551
    ld sp, $a1d6
    push de
    ld sp, $a151
    ld d, c
    ld sp, $a1d6
    push de
    ld sp, $a151
    ld d, c
    ld sp, $a1d6
    push de
    ld sp, $1151
    ld sp, $81d6
    push de
    add e
    ld sp, $d611
    add c
    push de
    ld de, $d631
    add c
    push de
    ld h, e
    ld d, c
    ld sp, $8161
    ld d, c
    sub $81
    push de
    ld d, c
    add c
    and l
    add e
    ld h, e
    ld d, c
    dec [hl]
    sub $a1
    pop bc
    ld d, c
    push de
    ld d, e
    sub $c1
    and c
    ld d, c
    ld sp, $3151
    and e
    ld d, c
    ld sp, $d551
    ld sp, $a1d6
    push de
    ld sp, $a151
    ld d, c
    ld sp, $a1d6
    push de
    ld sp, $a151
    ld d, c
    ld sp, $a1d6
    push de
    ld sp, $1151
    ld sp, $81d6
    push de
    add e
    ld sp, $d611
    add c
    push de
    ld de, $d631
    add c
    push de
    ld h, e
    ld d, c
    ld sp, $d461
    ld de, $81d5
    ld de, $81a3
    ld h, c
    and c
    add c
    and c
    ld de, $13d4
    push de
    and c
    add c
    ld de, $0cd8
    or e
    sub $c1
    push de
    ld de, $5301
    ld sp, $d611
    pop bc
    pop bc
    push de
    ld de, $3151
    ld de, $c1d6
    and c
    pop bc
    push de
    ld de, $81d6
    ld bc, $0cd8
    or [hl]
    push de
    adc c
    ret c

    inc c
    or e
    ld de, $81d6
    ld bc, $0cd8
    or a
    push de
    adc c
    ret c

    inc c
    or e
    sub $c1
    push de
    ld de, $5301
    ld sp, $d611
    pop bc
    pop bc
    push de
    ld de, $3151
    ld de, $c1d6
    and c
    pop bc
    push de
    add c
    ld de, $11d4
    push de
    add c
    ld [hl], c
    sub $c1
    push de
    pop bc
    ld [hl], c
    ld d, c
    sub $a1
    push de
    and c
    ld d, c
    ld de, $d481
    ld de, $81d5
    ret c

    inc c
    or d
    sub $c1
    push bc
    pop bc
    push bc
    pop bc
    push bc
    pop bc
    ret c

    inc c
    or h
    push de
    dec d
    ret c

    inc c
    or d
    sub $c1
    pop bc
    ret c

    inc c
    or l
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    sub $c1
    pop bc
    ret c

    inc c
    or l
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    sub $c1
    pop bc
    ret c

    inc c
    or l
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    sub $c1
    push de
    ld de, $c0d6
    push de
    ld [hl], b
    and b
    call nc, $d810
    inc c
    or d
    push de
    pop bc
    pop bc
    ret c

    inc c
    or l
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    push de
    pop bc
    pop bc
    ret c

    inc c
    or l
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    push de
    pop bc
    pop bc
    ret c

    inc c
    or l
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    push de
    pop bc
    ret c

    inc c
    or l
    call nc, $d815
    inc c
    or d
    push de
    pop bc
    pop bc
    ret c

    inc c
    or h
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    push de
    pop bc
    pop bc
    ret c

    inc c
    or h
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    push de
    pop bc
    pop bc
    ret c

    inc c
    or h
    rst $10
    ld [hl], e
    ret c

    inc c
    or d
    push de
    pop bc
    ret c

    inc c
    or l
    call nc, $d815
    inc c
    or a
    sub $c7
    ld d, a
    push de
    rla
    sub $a7
    rst $00
    ld d, a
    ld l, c
    ld de, $1131
    ret c

    inc c
    and b
    rst $10
    ld [hl], a
    rst $00
    add a
    sub $17
    rst $10
    rst $00
    ld d, a
    ld h, a
    ret c

    inc c
    and a
    ld h, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ret c

    inc c
    or d
    inc bc
    push de
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, e
    ld d, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    pop hl
    ld [$db24], sp
    ld [bc], a
    ret c

    inc c
    sub [hl]
    call nc, Call_05e_7555
    push de
    and e
    call nc, $e1af
    ld [de], a
    dec d
    db $db
    inc bc
    db $fd
    nop
    db $fc
    ld c, e
    db $db
    inc bc
    pop hl
    inc d
    inc [hl]
    and $00
    ld bc, $0cd8
    jp Jump_05e_50d3


    call nc, $a150
    db $d3
    ld d, b
    call nc, $a150
    db $d3
    ld d, b
    call nc, $a150
    db $d3
    ld d, b
    call nc, $a150
    db $d3
    ld d, b
    call nc, $a150
    db $d3
    ld d, b
    call nc, $a150
    db $d3
    ld d, b
    call nc, $a150
    db $d3
    ld d, b
    call nc, $a550
    ret c

    inc c
    jp nz, Jump_05e_57d6

    ld d, a
    ld d, a
    ret c

    inc c
    jp $b3d4


    ret c

    inc c
    jp nz, $d6a3

    ld d, a
    ld d, a
    ld d, a
    ret c

    inc c
    jp $b3d4


    ret c

    inc c
    jp nz, $d4a3

    ld d, a
    ld d, a
    ld d, a
    ret c

    inc c
    jp $b3d4


    ret c

    inc c
    jp nz, $d4a3

    ld d, a
    ld d, a
    ld d, a
    ld d, e
    ret c

    inc c
    rst $00
    push de
    and a
    rst $00
    scf
    ret c

    inc c
    or b
    call nc, $d837
    inc c
    or [hl]
    scf
    pop hl
    db $10
    inc h
    db $db
    ld [bc], a
    ret c

    inc c
    and h
    db $d3
    and l
    push bc
    inc sp
    jp nc, $e137

    inc d
    inc [hl]
    db $db
    inc bc
    ret c

    inc c
    rst $00
    call nc, $3717
    push de
    add a
    call nc, $d867
    inc c
    or b
    ld e, c
    ret c

    inc c
    or a
    ld d, l
    ret c

    inc c
    and l
    sub $83
    and e
    add e
    jp $0cd8


    rst $00
    push de
    and a
    rst $00
    scf
    ret c

    inc c
    rst $00
    call nc, $d837
    inc c
    ld c, h
    inc sp
    ret c

    inc c
    add $33
    ret c

    inc c
    and h
    pop hl
    ld [$db24], sp
    ld [bc], a
    db $d3
    and l
    push bc
    inc sp
    jp nc, $e137

    inc d
    inc [hl]
    ret c

    inc c
    rst $00
    db $db
    inc bc
    call nc, $3717
    push de
    add a
    call nc, $d867
    inc c
    ld c, h
    ld d, a
    ret c

    inc c
    rst $00
    ld d, a
    ret c

    inc c
    add $17
    add a
    ret c

    inc c
    jp nz, Jump_05e_71d5

    add c
    ld bc, $a1c3
    add c
    ld [hl], c
    ld [hl], c
    add c
    pop bc
    and c
    add c
    ld [hl], c
    ld d, c
    ld [hl], c
    add c
    ld de, $d801
    inc c
    rst $00
    call nc, $d819
    inc c
    jp $81d4


    ld de, $d801
    inc c
    rst $00
    db $d3
    add hl, de
    ret c

    inc c
    jp Jump_05e_71d4


    add c
    ld bc, $a1c3
    add c
    ld [hl], c
    ld [hl], c
    add c
    pop bc
    and c
    add c
    ld [hl], c
    ld d, c
    ld [hl], c
    ret c

    inc c
    rst $00
    add a
    ld [hl], a
    ld d, a
    add a
    ret c

    inc c
    jp nz, Jump_05e_71d5

    ld [hl], l
    ld [hl], c
    ld [hl], l
    ld [hl], c
    ld [hl], l
    ld [hl], c
    ret c

    inc c
    or a
    add l
    ret c

    inc c
    jp nz, $7171

    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d5

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d5

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d5

    ret c

    inc c
    rst $00
    add l
    ret c

    inc c
    jp nz, Jump_05e_71d4

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d4

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d4

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d4

    ret c

    inc c
    rst $00
    add l
    ret c

    inc c
    jp nz, $7171

    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d4

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d4

    ld [hl], c
    ret c

    inc c
    rst $00
    rst $10
    jp $0cd8


    jp nz, Jump_05e_71d4

    ret c

    inc c
    rst $00
    add l
    ret c

    inc c
    or b
    push de
    ld [hl], a
    sub $c7
    push de
    add a
    ld d, a
    ld [hl], a
    sub $c7
    push de
    rla
    ret c

    inc c
    or a
    push de
    rla
    ret c

    inc c
    rst $00
    rst $10
    rst $00
    sub $57
    rla
    ld h, a
    ld d, a
    rst $10
    rst $00
    ret c

    inc c
    or b
    sub $19
    ret c

    inc c
    or a
    sub $15
    ret c

    inc c
    jp $c1d7


    sub $51
    rst $10
    ld h, c
    sub $63
    ld d, c
    rst $10
    pop bc
    ld h, c
    pop bc
    sub $51
    ld h, c
    ld d, c
    rst $10
    pop bc
    ld h, c
    pop bc
    sub $51
    rst $10
    pop bc
    sub $51
    rst $10
    ld h, c
    sub $63
    ld d, c
    rst $10
    pop bc
    ld h, c
    pop bc
    sub $51
    ld h, c
    ld d, c
    rst $10
    pop bc
    ld h, c
    pop bc
    sub $51
    pop bc
    push de
    ld d, c
    sub $61
    push de
    ld h, e
    ld d, c
    sub $c1
    ld h, c
    pop bc
    push de
    ld d, c
    ld h, c
    ld d, c
    sub $c1
    ld h, c
    pop bc
    push de
    ld d, c
    sub $c1
    push de
    ld d, c
    sub $61
    push de
    ld h, e
    ld d, c
    sub $c1
    ld h, c
    pop bc
    push de
    ld d, c
    ld h, c
    ld d, c
    sub $c1
    ld h, c
    pop bc
    push de
    ld d, c
    ld sp, $d681
    sub c
    push de
    sub e
    add c
    ld sp, $91d6
    push de
    ld sp, $9181
    add c
    ld sp, $91d6
    push de
    ld sp, $3181
    add c
    sub $91
    push de
    sub e
    add c
    ld sp, $91d6
    push de
    ld sp, $9181
    add c
    ld sp, $91d6
    push de
    ld sp, $c181

Call_05e_5048:
    call nc, $d551
    ld h, c
    call nc, Call_05e_5163
    push de
    pop bc
    ld h, c
    pop bc
    call nc, Call_05e_6151
    ld d, c
    push de
    pop bc
    ld h, c
    pop bc
    call nc, $d551
    pop bc
    call nc, $d551
    ld h, c
    call nc, Call_05e_5163
    push de
    pop bc
    ld h, c
    pop bc
    call nc, Call_05e_6151
    ld d, c
    push de
    pop bc
    ld h, c
    pop bc
    call nc, $3151
    add c
    push de
    sub c
    call nc, $8193
    ld sp, $91d5
    call nc, $8131
    sub c
    add c
    ld sp, $91d5
    call nc, $8131
    ld sp, $d581
    sub c
    call nc, $8193
    ld sp, $91d5
    call nc, $8131
    sub c
    add c
    ld sp, $91d5
    call nc, $8131
    ret c

    inc c
    jp nz, $d8a7

    inc c
    jp $a1d6


    pop bc
    ld d, c
    push de
    ld d, e
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    push de
    ld d, c
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    and c
    pop bc
    ld d, c
    push de
    ld d, e
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    push de
    ld d, c
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    push de
    ld de, $d631
    add c
    push de
    add e

Jump_05e_50d3:
    ld sp, $d611
    add c
    push de
    ld de, $8131
    ld sp, $d611
    add c
    push de
    ld de, $1131
    ld sp, $81d6
    push de
    add e
    ld sp, $d611
    add c
    push de
    ld de, $8131
    ld sp, $d611
    add c
    push de
    ld de, $d631
    and c
    pop bc
    ld d, c
    push de
    ld d, e
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    push de
    ld d, c
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    and c
    pop bc
    ld d, c
    push de
    ld d, e
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    push de
    ld d, c
    sub $c1
    and c
    ld d, c
    and c
    pop bc
    db $fd
    nop
    ld c, [hl]

Call_05e_5121:
    ld c, [hl]
    ret c

    inc c
    jr @+$11

    inc bc
    sub $a3
    ld sp, $b151
    add c
    ld sp, $d751
    and c
    sub $a3
    ld d, c
    ld sp, $a1d7
    sub $31
    ld d, c
    and c
    ld d, c
    ld sp, $a1d7
    sub $31
    ld d, c
    ld sp, $d751
    and c
    sub $a3

Call_05e_5148:
    ld d, c
    ld sp, $a1d7
    sub $31
    ld d, c
    and e
    ld d, c
    rst $10
    and c
    sub $31
    ld d, c
    ld sp, $d751
    and c
    sub $a3
    ld d, c
    ld sp, $a1d7
    sub $31
    ld d, c

Call_05e_5163:
    and c
    ld d, c
    ld sp, $a1d7
    sub $31
    ld d, c
    ld sp, $d751
    and c
    sub $a3
    ld d, c
    ld sp, $a1d7
    sub $31
    ld d, c
    and e
    ld d, c
    rst $10
    and c
    sub $31
    ld d, c
    ret c

    inc c
    ld d, $d7
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    and c
    ld sp, $a1d7
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    ld sp, $11a1
    add c
    ld de, $1181
    push de
    ld de, $11d6
    add c
    ld de, $1181
    add c
    ld de, $11d5
    sub $11
    add c
    ld de, $1181

Jump_05e_51d5:
    add c
    ld de, $d581
    ld de, $81d6
    ld de, $1181
    push de
    inc de
    sub $81
    ld h, c
    ld sp, $a1d7
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    and c
    ld sp, $a1d7
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    ld sp, $11a1
    add c
    ld de, $1181
    push de
    ld de, $11d6
    add c
    ld de, $1181
    add c
    ld de, $11d5
    sub $81
    push de

Call_05e_5235:
    ld de, $81d6
    push de
    ld de, $81d6
    push de
    ld de, $81d6
    push de
    ld de, $81d6
    push de
    ld de, $11d6
    add c
    ld de, $13d5
    sub $81
    ld de, $d781
    pop bc
    sub $71
    pop bc
    ld [hl], c
    rst $10
    pop bc
    sub $71
    rst $10
    pop bc
    sub $71
    rst $10
    pop bc
    sub $71
    pop bc
    ld [hl], c
    rst $10
    pop bc
    sub $71
    rst $10
    pop bc
    sub $71
    ld de, $d581
    ld de, $81d6
    ld de, $1181
    add c
    ld de, $d581
    ld de, $83d6
    ld de, $11d5
    sub $81
    ld sp, $d5a1
    ld sp, $a1d6
    ld sp, $31a1
    and c
    ld sp, $d5a1
    ld sp, $a1d6
    ld sp, $31a1
    and c
    ld de, $d581
    ld de, $81d6
    rst $10
    pop bc
    sub $71
    rst $10
    pop bc
    sub $71
    rst $10
    and c
    sub $51
    and c
    ld d, c
    ld de, $1181
    add c
    ld [hl], c
    ld [hl], c
    inc bc
    ld [hl], c
    ld [hl], c
    inc bc
    ld [hl], c
    ld [hl], c
    inc bc
    ld [hl], c
    add l
    ld [hl], c
    ld [hl], c
    inc bc
    ld [hl], c
    ld [hl], c
    inc bc
    ld [hl], c
    ld [hl], c
    inc bc
    ld [hl], c
    add l
    pop bc
    pop bc
    rst $10
    jp $c1d6


    pop bc
    rst $10
    jp $c1d6


    pop bc
    rst $10
    jp $c1d6


    push de
    dec d
    ld [hl], c
    ld [hl], c
    rst $10
    jp Jump_05e_71d5


    ld [hl], c
    rst $10
    jp Jump_05e_71d5


    ld [hl], c
    rst $10
    jp Jump_05e_71d5


    add l
    sub $77
    rst $10
    rst $00
    sub $87
    ld d, a
    ld [hl], a
    rst $10
    rst $00
    sub $19
    ld de, $1131
    rst $10
    rst $00
    sub $57
    rla
    ld h, a
    ld d, a
    rst $10
    rst $00
    sub $1f
    inc bc
    rst $10
    pop bc
    dec b
    pop bc
    ld bc, $c103
    dec b
    pop bc
    ld bc, $c103
    dec b
    pop bc
    ld bc, $c103
    dec b
    pop bc
    ld bc, $d6c1
    ld h, c
    pop bc
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    rst $10
    pop bc
    sub $61
    pop bc
    ld h, c
    pop bc
    ld h, c
    rst $10
    pop bc
    sub $61
    ld sp, $d591
    ld sp, $31d6
    sub c

Call_05e_5351:
    push de
    ld sp, $31d6
    sub c
    ld sp, $d591
    ld sp, $31d6
    sub c
    push de
    ld sp, $31d6
    sub c
    ld sp, $d591
    ld sp, $31d6
    sub c
    push de
    ld sp, $31d6
    sub c
    ld sp, $d591
    ld sp, $91d6
    push de
    ld sp, $91d6
    ld sp, $c191
    ld h, c
    rst $10
    pop bc
    sub $c1
    ld h, c
    rst $10
    pop bc
    sub $c1
    ld h, c
    pop bc
    ld h, c
    rst $10
    pop bc
    sub $c1
    ld h, c
    rst $10
    pop bc
    sub $c1
    ld h, c
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    pop bc
    rst $10
    pop bc
    sub $61
    push de
    ld sp, $91d6
    ld sp, $31d5
    sub $91
    ld sp, $31d5
    sub $91
    push de
    ld sp, $91d6
    ld sp, $31d5
    sub $91
    ld sp, $31d5
    sub $91
    ld sp, $d591
    ld sp, $31d6
    sub c
    push de
    ld sp, $31d6

Jump_05e_53d5:
    sub c
    ld sp, $d591
    ld sp, $91d6
    push de
    ld sp, $91d6
    ld sp, $a391
    inc bc
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $a1
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    and c
    ld sp, $a1d7
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    rst $10
    and c
    sub $31
    ld de, $d581
    ld de, $11d6
    add c
    push de
    ld de, $11d6
    add c
    ld de, $d581
    ld de, $11d6
    add c
    push de
    ld de, $11d6
    add c
    ld de, $d581
    ld de, $11d6
    add c
    push de
    ld de, $11d6
    add c
    ld de, $d581
    ld de, $11d6
    add c
    push de
    ld de, $11d6
    add c
    rst $10
    and c
    sub $51
    and c
    rst $10
    and c
    sub $51
    and c
    rst $10
    and c
    sub $51
    rst $10
    and c
    sub $51
    and c
    rst $10
    and c
    sub $51
    and c
    rst $10
    and c
    sub $51
    rst $10
    and c
    sub $51
    and c
    rst $10
    and c
    sub $51
    and c
    rst $10
    and c
    sub $51
    rst $10
    and c
    sub $51
    rst $10
    and c
    sub $a3
    ld d, c
    ld sp, $fd51
    nop
    add d
    ld d, c
    ret nz

    sub a
    ld d, h
    ld bc, $553a
    ld [bc], a
    xor [hl]
    ld d, l
    inc bc
    db $10
    ld d, [hl]
    jp c, $9800

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $08e1
    ld [hl+], a
    rst $28
    ldh a, [$d8]
    inc c
    ld [hl], d
    ret c

    inc c
    ld [hl], d
    push de
    sub c
    ret c

    inc c
    ld [hl], e
    sub $c1
    push de
    ld d, c
    sub c
    ld d, c
    sub $c1
    push de
    ld d, c
    sub c
    ret c

    inc c
    ld [hl], d
    ld [hl], c
    ret c

    inc c
    ld [hl], e
    sub $c1
    push de
    ld [hl], c
    ld d, c
    ld b, c
    sub $c1
    push de
    ld b, c
    ld [hl], c
    ret c

    inc c
    ld [hl], d

jr_05e_54d1:
    sub c
    ret c

    inc c
    ld [hl], e
    sub $c1
    push de
    ld d, c
    sub c
    sub $c1
    push de
    ld d, c
    pop bc
    call nc, $d851
    inc c
    ld [hl], d
    ld [hl], d
    ret c

    inc c
    ld [hl], e
    jr nc, jr_05e_553b

    push de
    pop bc
    sub c
    ld d, c
    sub c
    pop bc
    ret c

    inc c
    ld [hl], d
    ld hl, $0cd8
    ld [hl], e
    ld b, c
    ld d, c
    jr nz, jr_05e_54d1

    ret nz

    and e
    ret c

    inc c
    ld h, d
    and e
    ret c

    inc c
    ld [hl], d
    pop bc
    ret c

    inc c
    ld [hl], e
    push de
    ld hl, $5041
    ld [hl], b
    sub e
    ret c

    inc c
    ld h, d
    sub $93
    ret c

    inc c
    ld [hl], d
    and c
    ret c

    inc c
    ld [hl], e
    pop bc
    push de
    ld hl, $5030
    ld sp, $7151
    and c
    ret c

    inc c
    ld [hl], d
    pop bc
    ret c

    inc c
    ld [hl], e
    jp $90a0


    ret c

    inc c
    ld [hl], d
    ld [hl], e
    ret c

    inc c
    ld [hl], l
    sub $c3
    db $fd
    nop
    xor c
    ld d, h
    db $db

jr_05e_553b:
    ld [bc], a
    pop hl
    db $10
    inc [hl]
    rst $28
    rrca
    ret c

    inc c
    add d
    ret c

    inc c
    add d
    call nc, Call_05e_5351
    push de
    ret nz

    call nc, $c350
    and c
    sub c
    and d
    ld d, b
    push de
    jp $0cd8


    ld h, l
    ld [hl], e
    sub $c3
    ret c

    inc c
    add d
    call nc, Call_05e_5351
    push de
    ret nz

    call nc, $c350
    and c
    sub c
    and d
    ld [hl], b
    ret c

    inc c
    add a
    sbc e
    ret c

    inc c
    add d
    push de
    and c
    ret c

    inc c
    add h
    and e
    ld [hl], b
    sub b
    and e
    ret c

    inc c
    add d
    inc hl
    call nc, $d891
    inc c
    add h
    sub e
    ld [hl], b
    sub b
    ld d, e
    ret c

    inc c
    add d
    push de
    ld d, e
    call nc, $d871
    inc c
    add h
    ld [hl], e
    and b
    sub b
    and e
    inc sp
    ret c

    inc c
    add d
    ld d, c
    ret c

    inc c
    add h
    ld d, e
    ld [hl], b
    ld d, b
    ld b, e
    ret c

    inc c
    ld [hl], e
    push de
    ld b, b
    ld [hl], b
    ret nz

    call nc, $fd40
    nop
    ld b, h
    ld d, l
    ret c

    inc c
    ld de, $c1d6
    push de
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $d651
    pop bc
    push de
    ld d, c
    ld bc, $0151
    ld b, c
    ld bc, $d641
    pop bc
    push de
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $d651
    and c
    push de
    ld sp, $d601
    and c
    pop bc
    push de
    ld d, c
    ld bc, $d651
    and c
    push de
    ld hl, $51d6
    push de
    ld d, c
    sub $a1
    push de
    ld hl, $0151
    sub $c1
    push de
    ld d, c
    sub $51
    push de
    ld d, c
    sub $91
    pop bc
    push de
    ld d, c
    ld bc, $d631
    ld [hl], c
    and c
    push de
    ld [hl], c
    sub $71
    and c
    push de
    ld sp, $5171
    sub $c1
    ld d, c
    pop bc
    ld [hl], c
    ld d, c
    ld b, c
    ld [hl], c
    db $fd
    nop
    or c
    ld d, l
    db $e3
    nop
    ret c

    inc c
    ld bc, $6363
    ld h, c
    ld h, e
    db $fd
    nop
    ld [de], a
    ld d, [hl]
    ret nz

    add hl, hl
    ld d, [hl]
    ld bc, $56cc
    ld [bc], a
    ld [hl], a
    ld d, a
    inc bc
    rlca
    ld e, b
    jp c, $a000

    push hl
    ld [hl], a
    db $db
    ld bc, $00e6
    ld [bc], a
    pop hl
    ld [$ef22], sp
    ldh a, [$d8]
    inc c
    and d
    push de
    ld d, c
    ld h, c
    add e
    add c
    and c
    jp Jump_05e_51d5


    ld de, $d451
    ld de, $81d5
    pop bc
    and c
    add c
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $6151
    add c
    add c
    ld sp, $c181
    add c
    and c
    add c
    ld h, c
    ld d, c
    add c
    and c
    pop bc
    call nc, $d511
    pop bc
    and c
    add c
    ld d, c
    ld de, $d451
    ld de, $81d5
    pop bc
    and c
    add c
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $6151
    add c
    add c
    ld sp, $c381
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $3111
    ld d, c
    ld h, c
    add c
    and c
    ld d, c
    ld sp, $3113
    ld d, c
    ld h, c
    add c
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $6151
    add c
    ld h, c
    ld d, c
    inc sp
    sub $c1
    push de
    ld de, $6131
    ld d, c
    ld h, c
    add c
    and c
    add a
    call nc, $d511
    pop bc
    and e
    add c
    and c
    pop bc
    call nc, $3111
    ld de, $c3d5
    and c
    pop bc
    call nc, $3111
    push de
    pop bc
    and c
    add e
    ld h, c
    add c
    and c
    ld h, c
    add c
    ld h, c
    ld d, c
    ld sp, $3111
    ld d, c
    ld h, c
    db $fd
    nop
    ld b, d
    ld d, [hl]
    ret c

    inc c
    jp nz, $03db

    add hl, bc
    rst $10
    add c
    and c
    pop bc
    sub $11
    ld d, c
    rst $10
    add c
    sub $51
    ld de, $6151
    ld d, c
    ld sp, $d781
    add c
    sub $81
    ld sp, $d781
    add c
    sub $81
    ld sp, $d781
    add c
    sub $81
    ld sp, $6181
    add c
    ld d, c
    add c
    ld d, c
    add c
    ld d, c
    add c
    rst $10
    add c
    sub $81
    ld de, $d751
    add c
    sub $51
    ld de, $6151
    ld d, c
    ld sp, $d781
    add c
    sub $81
    ld sp, $d781
    add c
    sub $81
    ld sp, $d781
    add c
    sub $81
    ld sp, $6181
    add c
    ld de, $d751
    add c
    sub $51
    ld de, $81a1
    ld h, c
    ld d, c
    add c
    ld de, $5181
    add c
    ld de, $6181
    and c
    ld de, $61a1
    and c
    ld de, $31a1
    ld h, c
    rst $10
    pop bc
    sub $61
    ld sp, $d761
    pop bc
    sub $61
    ld d, c
    add c
    ld de, $5181
    add c
    ld de, $5181
    add c
    ld de, $5181
    add c
    ld de, $6181
    and c
    ld de, $61a1
    and c
    ld de, $31a1
    ld h, c
    rst $10
    pop bc
    sub $61
    ld sp, $d761
    pop bc
    sub $61
    ld d, c
    add c
    ld de, $5181
    ld h, c
    ld d, c
    ld sp, $00fd
    sub $56
    ret c

    inc c
    inc h
    pop hl
    db $10
    inc [hl]
    call nc, $a181
    jp $d3c1


    ld de, $d833
    inc c
    dec h
    ld de, $81d4
    db $d3
    ld de, $6383
    ld d, c
    ld sp, $c5d4
    ret c

    inc c
    db $10
    jp nc, $0080

    jr nc, jr_05e_579b

jr_05e_579b:
    pop de
    jr nc, jr_05e_57a0

    ret c

    inc c

jr_05e_57a0:
    dec h
    call nc, $81c1
    pop bc
    db $d3
    ld d, e
    inc sp
    call nc, $d3c1
    ld de, $d455
    ld d, c
    ld h, c
    ld sp, $d351
    ld de, $81d4
    db $d3
    ld de, $6383
    ld d, c
    ld sp, $c5d4
    ret c

    inc c
    db $10
    jp nc, $0080

    jr nc, jr_05e_57c6

jr_05e_57c6:
    pop de
    jr nc, jr_05e_57cb

    ret c

    inc c

jr_05e_57cb:
    dec h
    call nc, $81c1
    pop bc
    db $d3
    ld d, e
    inc sp
    call nc, $d3c1

Jump_05e_57d6:
    rla
    call nc, $a181
    pop bc
    db $d3
    ld sp, $18e1
    ld b, h
    ld d, a
    add a
    ld h, c
    add c
    ld h, c
    ld d, c
    scf
    call nc, $d3c7
    scf
    ld d, c
    ld h, c
    ld d, c
    ld sp, $5717
    add a
    ld h, c
    ld d, c
    ld h, c
    add c
    and a
    add e
    ld h, c
    ld d, c
    ld h, a
    ld d, c
    ld h, c
    ld d, c
    ld sp, $e117
    db $10
    inc [hl]
    db $fd
    nop
    adc b
    ld d, a
    db $e3
    inc bc
    rst $28
    rrca
    ret c

    inc c
    and a
    and e
    jr nz, jr_05e_5831

    jr nz, @+$22

    and c
    ld hl, $2121
    and c
    ld hl, $2131
    db $fd
    inc bc

jr_05e_581d:
    inc de
    ld e, b
    and c
    ld hl, $2121
    and c
    ld sp, $2020
    jr nz, jr_05e_5849

    db $fd
    nop
    inc de
    ld e, b
    inc b

jr_05e_582e:
    jr nc, jr_05e_5888

    pop hl

jr_05e_5831:
    ld bc, $dba3
    ld [bc], a
    ld [$0539], sp
    rlca
    jr nz, jr_05e_581d

    dec b
    rlca
    rst $38
    dec b
    ld b, c
    ld e, b
    pop hl
    ld bc, $db73
    ld [bc], a
    ld [$5839], sp

jr_05e_5849:
    rlca
    jr nz, jr_05e_582e

    ld e, b
    rlca
    rst $38
    ld b, $52
    ld e, b
    pop hl
    ld bc, $0353
    ld [hl-], a
    jp nz, $0307

    ld [hl+], a
    jp nz, $0307

    ld [de], a
    jp nz, $1007

    ld [de], a
    jp nz, $0607

    ld [hl+], a
    jp nz, $0607

    ld [hl-], a
    jp nz, $ff07

    inc b
    ld [hl], c
    ld e, b
    db $db
    ld [bc], a
    db $dd
    ld e, $03
    add d
    nop
    rlca
    ld bc, $0131
    rlca
    db $dd
    ld d, $04
    or c
    ld b, b
    ld b, $10
    ld sp, $0641
    rst $38

jr_05e_5888:
    inc b
    adc e
    ld e, b
    db $db
    ld bc, $26dd
    inc d
    dec sp
    ld b, b
    inc b
    inc b
    sub a
    ret nz

    inc b
    inc b
    ld h, a
    pop bc
    inc b
    inc b
    ld b, d
    jp nz, $ff04

    rlca
    and e
    ld e, b
    ld bc, $5958
    ld [bc], a
    sub c
    inc hl
    rst $38
    inc b
    xor l
    ld e, b
    db $db
    inc bc
    db $dd
    ld c, l
    ld bc, $7088
    rlca
    inc bc
    nop
    nop
    nop
    db $dd
    rla
    ld [bc], a
    adc b
    db $76
    rlca
    rst $38
    rlca
    jp $0158


    and a
    ld sp, $9101
    nop
    ld bc, $2192
    ld bc, $0091
    ld bc, $2292
    ld bc, $1182
    ld bc, $2282
    ld bc, $1172
    ld bc, $1272
    ld bc, $1062
    ld bc, $0063
    ld bc, $1053
    ld bc, $0043
    ld bc, $1033
    ld bc, $0023
    ld bc, $1013
    rst $38
    rlca
    rst $30
    ld e, b
    ld bc, $3188
    ld [$1139], sp
    inc b
    and h
    db $10
    inc b
    ld b, h
    db $10
    inc b
    inc h
    db $10
    rst $38
    inc b
    ld a, [bc]
    ld e, c
    db $db
    ld [bc], a
    db $dd
    inc l
    ld [bc], a
    add d
    or b
    inc b
    nop
    ld sp, $04b0
    db $dd
    inc [hl]
    db $10
    or c
    jr nz, jr_05e_5920

    rst $38
    rlca
    jr nz, @+$5b

jr_05e_5920:
    ld bc, $5ca1
    nop
    nop
    nop
    ld bc, $4dc1
    nop
    nop
    nop
    inc b
    or d
    ld sp, $0000
    nop
    inc b
    and d
    ld [bc], a
    nop
    nop
    nop
    inc b
    sub d
    ld bc, $0000
    nop
    jr nz, jr_05e_59b2

    nop
    rst $38
    inc b
    ld b, l
    ld e, c
    rst $18
    db $db
    ld [bc], a
    ret c

    ld [bc], a

jr_05e_594a:
    or c
    db $dd
    rst $38
    reti


    ld a, [de]
    db $d3
    ld de, $8151
    jp nc, $5111

    add d
    call c, $8281
    call c, $8251
    call c, $8231
    rst $38
    inc b
    ld h, h
    ld e, c
    rst $18
    db $db
    ld bc, $0bd9
    ret c

    ld bc, $d3b1
    ld [de], a
    jp nc, $d381

    ld [de], a
    ld bc, $02fd
    ld l, h
    ld e, c
    ld de, $a1dc
    adc h
    rst $38
    inc b
    ld a, a
    ld e, c
    db $db
    ld [bc], a
    ld [bc], a
    add sp, -$3e
    rlca
    ld [bc], a
    jr z, jr_05e_594a

    rlca
    ld [bc], a
    add sp, -$3e
    rlca
    ld [bc], a
    jr z, @-$3c

    rlca
    rst $38
    add h
    sbc e
    ld e, c
    dec b
    cp l
    ld e, c
    ld b, $c4
    ld e, c
    rst $18
    db $db
    ld [bc], a
    ret c

    ld [bc], a
    add sp, -$27
    ld [bc], a
    call nc, $dc11
    ld c, b
    ld de, $e8dc
    add c
    call c, $8148
    db $d3
    call c, $51e8

jr_05e_59b2:
    call c, Call_05e_5148
    jp nc, $e8dc

    ld de, $43dc
    rra
    rst $38
    rst $18
    ret c

    ld [bc], a
    cp b
    ld [$ff0f], sp
    rst $18
    ret c

    ld [bc], a
    cp b
    ld [$ff0f], sp
    inc b
    adc $59
    rst $18
    db $db
    nop
    reti


    ld [bc], a
    ret c

    ld [bc], a
    pop hl
    push de
    add c
    call c, $d4b1
    ld sp, $e1dc
    pop bc
    call c, $81b1
    call c, $d3e1
    ld sp, $b1dc
    call nc, $dcc1
    pop hl
    db $d3
    add l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    db $fc
    inc e
    ld hl, sp+$18
    ld hl, sp+$18
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
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]

jr_05e_5a59:
    ld a, b
    ccf

jr_05e_5a5b:
    jr c, jr_05e_5a7c

jr_05e_5a5d:
    jr c, jr_05e_5a7e

jr_05e_5a5f:
    jr jr_05e_5a59

jr_05e_5a61:
    jr jr_05e_5a5b

jr_05e_5a63:
    jr jr_05e_5a5d

jr_05e_5a65:
    jr jr_05e_5a5f

jr_05e_5a67:
    jr jr_05e_5a61

    jr jr_05e_5a63

    jr jr_05e_5a65

    jr jr_05e_5a67

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_5a7c:
    nop
    nop

jr_05e_5a7e:
    nop
    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    jr c, jr_05e_5ac0

    jr c, jr_05e_5ac2

    jr c, jr_05e_5ac4

    jr c, jr_05e_5ac6

    jr c, jr_05e_5ac8

    jr c, jr_05e_5aca

    jr c, jr_05e_5acc

    jr c, jr_05e_5ace

    inc h
    jr jr_05e_5ab2

jr_05e_5ab2:
    ld a, [hl]
    add c
    ld e, d
    nop
    db $db
    nop
    rst $38
    add c
    ld b, d
    nop
    ld h, [hl]
    inc h
    jr jr_05e_5ac0

jr_05e_5ac0:
    nop
    nop

jr_05e_5ac2:
    nop
    nop

jr_05e_5ac4:
    nop
    nop

jr_05e_5ac6:
    nop
    nop

jr_05e_5ac8:
    nop
    inc a

jr_05e_5aca:
    inc a
    cp [hl]

jr_05e_5acc:
    cp h
    ld e, [hl]

jr_05e_5ace:
    nop
    nop
    nop
    nop
    jr jr_05e_5ad4

jr_05e_5ad4:
    jr jr_05e_5ad6

jr_05e_5ad6:
    jr jr_05e_5ad8

jr_05e_5ad8:
    jr jr_05e_5ada

jr_05e_5ada:
    jr jr_05e_5adc

jr_05e_5adc:
    jr jr_05e_5ade

jr_05e_5ade:
    jr jr_05e_5ae0

jr_05e_5ae0:
    jr nz, jr_05e_5ae2

jr_05e_5ae2:
    jr nc, jr_05e_5ae4

jr_05e_5ae4:
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05e_5b02

jr_05e_5b02:
    jr jr_05e_5b04

jr_05e_5b04:
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc e
    inc e
    ld [hl+], a
    nop
    ld a, $14
    ld a, $00
    ld a, $14
    ld a, $00
    inc e
    nop
    nop
    adc e
    adc e
    rst $18
    jp c, $abff

    rst $28
    adc d
    rst $08
    adc e
    call RST_00
    nop
    nop
    nop
    cp e
    cp e
    rst $38
    ld [hl+], a
    dec sp
    dec sp
    sbc l
    ld [$bbbf], sp
    db $dd
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    db $dd
    add hl, de
    db $fd
    and l
    rst $38
    cp l
    cp $a4
    or $00
    nop
    nop
    nop
    nop
    adc $ce
    rst $28
    ld [$6cfc], sp
    cp [hl]

jr_05e_5b58:
    jr z, jr_05e_5b58

    adc $67
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_05e_5b79:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05e_5b79

    inc e
    ld hl, sp+$1f
    db $fc
    rrca
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    jr c, jr_05e_5bd0

    jr c, jr_05e_5bd2

    ld hl, sp+$3f
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    cp b
    cp b
    db $fd
    and l
    rst $30
    and l
    rst $30
    and l
    ei
    cp c
    db $dd
    nop
    nop

jr_05e_5bd0:
    nop
    nop

jr_05e_5bd2:
    nop
    nop
    nop
    ld l, $2e
    cp a
    xor d
    rst $38
    ld l, d
    rst $38
    ld l, $b7
    nop
    jr jr_05e_5c00

    ldh a, [rIE]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_5c00:
    nop
    nop
    nop
    ld bc, $0703
    rlca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    rra
    ccf
    nop
    nop
    ld a, b
    db $fc
    cp $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$e0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    cp $c0
    ldh [$80], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    ld bc, $0101
    inc bc
    rlca
    rrca
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    add b
    ret nz

    ldh a, [$f8]
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
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
    add b
    add b
    add b
    ret nz

    nop
    nop
    ld bc, $0303
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
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
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh [$03], a
    rlca
    ld bc, $0003
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
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
    cp $ff
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    rra
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $20
    rst $28
    jp $c3c7


    jp $f0f0


    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld e, $3f
    nop
    nop
    jp $c3c3


    jp $e7c3


    rst $20
    rst $20
    rst $20
    rst $20
    add e
    rst $00
    inc bc
    inc bc
    ld bc, $e001
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$e0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rlca
    rlca
    rrca
    rrca
    nop
    nop
    ld c, $1f
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    add b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0f0f
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, e
    di
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
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $7f01
    rst $38
    rra
    ccf
    ld b, $0e
    nop
    ld [hl], b
    pop af
    ld sp, hl
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ld e, $3f
    ld a, a
    ld a, a
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
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $ff
    add b
    ret nz

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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    cp $78
    ld a, h
    nop
    ld sp, $0101
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
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    rra
    ccf
    rra
    rra
    ld b, $8f
    add b
    add b
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    add b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    inc bc
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
    rst $30
    rst $30
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $30
    rst $30
    di
    di
    pop af
    di
    pop af
    ld sp, hl
    pop af
    ld sp, hl
    ldh a, [$f9]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    ld b, $0f
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f0]
    ldh [$f0], a
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    ld a, h
    db $fc
    jr nc, jr_05e_60b7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, d
    ld a, d
    dec a
    ld hl, $4253
    ld a, $1e
    ccf
    inc hl
    rra
    inc e
    ld c, $00
    ld [$7e08], sp
    ld a, [hl]
    ccf
    ld [$7e7e], sp
    ccf
    jr c, jr_05e_60e6

    ld c, h
    ld a, $32
    add hl, de
    nop
    jr nc, jr_05e_60a1

    jr jr_05e_6073

jr_05e_6073:
    ld a, h
    ld a, h
    ld a, $08
    inc e
    db $10
    jr c, jr_05e_60a3

    ld l, [hl]
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $04
    inc c
    ld [$1018], sp
    jr nc, jr_05e_60ab

    ld h, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, $0c
    jr jr_05e_60a7

    jr nc, jr_05e_60b9

    jr nc, jr_05e_60bb

    inc e
    inc e
    ld c, $00
    jr nz, jr_05e_60c1

jr_05e_60a1:
    jr nc, jr_05e_60c3

jr_05e_60a3:
    jr nc, jr_05e_60c5

    ld [hl], b
    ld [hl], b

jr_05e_60a7:
    ld l, h
    ld c, b
    xor h
    adc b

jr_05e_60ab:
    add $86
    ld b, e
    nop
    jr nz, jr_05e_60d1

    db $fc
    db $ec
    ld a, [hl]
    ld [hl-], a
    inc sp
    ld [hl+], a

jr_05e_60b7:
    ld [hl], e
    ld h, d

jr_05e_60b9:
    or e
    and d

jr_05e_60bb:
    scf
    inc h
    ld [hl-], a
    nop
    inc b
    inc b

jr_05e_60c1:
    sbc [hl]
    sbc [hl]

jr_05e_60c3:
    rst $08
    add h

jr_05e_60c5:
    add $84
    sbc $9c
    cp $a4
    sbc $9a
    ld c, l
    nop
    jr nz, jr_05e_60f1

jr_05e_60d1:
    jr nc, jr_05e_60f3

    jr nc, jr_05e_60f5

    ld [hl], b
    ld [hl], b
    ld l, h
    ld c, b
    xor h
    adc b
    add $86
    ld b, e
    nop
    nop
    nop
    ld a, h

jr_05e_60e2:
    ld a, h
    ld a, $02
    ld [bc], a

jr_05e_60e6:
    nop
    nop
    nop
    ret nz

    add b
    ld a, [hl]
    ld a, [hl]
    ccf

jr_05e_60ee:
    nop
    inc a
    inc a

jr_05e_60f1:
    ld e, $00

jr_05e_60f3:
    inc a

jr_05e_60f4:
    inc a

jr_05e_60f5:
    ld e, [hl]

jr_05e_60f6:
    ld b, d
    ld [hl+], a
    ld [bc], a
    ld b, $04
    ld e, $18
    inc c

jr_05e_60fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld d, $12
    ld a, [de]
    ld [$0008], sp

jr_05e_610f:
    ld hl, sp+$18

Call_05e_6111:
    ld sp, hl

jr_05e_6112:
    jr @-$05

jr_05e_6114:
    jr jr_05e_610f

    jr @-$06

    jr jr_05e_6112

    jr jr_05e_6114

    jr @-$05

    jr jr_05e_6120

jr_05e_6120:
    jr c, jr_05e_60e2

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    jr c, jr_05e_612a

jr_05e_612a:
    jr c, jr_05e_612c

jr_05e_612c:
    jr c, jr_05e_60ee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_613a:
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc e
    nop
    inc e
    nop
    inc e
    nop
    nop
    inc bc
    jr jr_05e_6170

Call_05e_6151:
    jr @-$5f

    jr jr_05e_60f4

    jr jr_05e_60f6

    jr jr_05e_6178

    jr jr_05e_617a

    jr jr_05e_617c

    jr jr_05e_60fe

    add hl, de
    ld hl, sp+$19
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$19
    ld hl, sp+$19
    ld hl, sp+$18
    ld hl, sp-$40

jr_05e_6170:
    nop
    ret nz

    nop
    nop
    jr c, jr_05e_6176

jr_05e_6176:
    jr c, jr_05e_6178

jr_05e_6178:
    jr c, jr_05e_613a

jr_05e_617a:
    nop
    ret nz

jr_05e_617c:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    inc e
    nop
    inc e
    nop
    inc e
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_05e_61b5

    jr jr_05e_61b7

jr_05e_6198:
    jr jr_05e_61b9

    sbc b
    rra
    sbc b
    rra
    jr jr_05e_6198

    jr @+$01

    rrca
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    rst $38

jr_05e_61b5:
    rst $38
    rst $38

jr_05e_61b7:
    rst $38
    rst $38

jr_05e_61b9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld a, a
    ld a, c
    ld a, a
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ld h, b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    rst $38
    inc h
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
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fd
    cp [hl]
    rst $38
    inc e
    nop
    nop
    ldh a, [$f8]
    ld hl, sp+$7c
    ld hl, sp+$3c
    ld hl, sp+$3c
    ld hl, sp+$7c
    cp b
    ld a, h
    ld hl, sp+$3c
    ld a, a
    ld a, a
    ld [hl], l
    ld a, a
    ld l, d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp-$04
    ld e, b
    db $fc
    cp b
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ldh a, [$1f]
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    call z, $0c00
    nop
    call nz, RST_00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    call z, $c400
    nop
    db $e4
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
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
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
    ccf
    nop
    ccf
    nop
    dec sp
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
    sub e
    nop
    sub e
    nop
    sub e
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $00
    add b
    nop
    sbc c
    nop
    sbc c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    cp h
    inc bc
    cp [hl]
    ld bc, $00ff
    rst $38
    nop
    nop
    rst $38

jr_05e_62d1:
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
    ldh a, [rIF]
    jr jr_05e_62d1

    add hl, de
    ldh [rNR32], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    nop
    inc d
    nop
    ld [hl], $00
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e4
    nop
    db $e4
    nop
    ld h, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    xor $00
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $7300
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub e
    nop
    sub b
    nop
    or c
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    nop
    di
    nop
    di
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    adc h
    xor $11
    xor $11
    ld [hl], d
    adc l
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    sbc c
    xor d
    ld d, l
    ld h, $d9
    xor d
    ld d, l
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    adc [hl]
    or a
    ld c, b
    or c
    ld c, [hl]
    ld [hl], a
    adc b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, $e9
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c
    ld [de], a
    db $ed
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    sbc l
    xor [hl]
    ld d, c
    and [hl]
    ld e, c
    ld h, d
    sbc l
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    add a
    cp b
    ld b, a
    ld a, b
    add a
    cp b
    ld b, a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    cp e
    rst $38
    jp z, $8aff

    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld l, b
    nop
    rst $38
    rst $38
    ld [bc], a
    cp $fd
    db $fd
    rlca
    rst $38
    dec b
    rlca
    push hl
    rlca
    push hl
    rlca
    ld b, l
    rlca
    rst $38
    rst $38
    ld b, b
    ld a, a
    and b
    cp a
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $ca7f


    rst $38
    cp d
    rst $38
    jp z, $8bff

    rst $38
    adc b
    rst $38
    adc e
    rst $38
    adc e
    cp $cb
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    push hl
    rlca
    and $06
    dec b
    dec b
    rst $38
    rst $38
    ld bc, $fdff
    rst $38
    dec b
    rst $38
    dec b
    rlca
    add e
    cp $43
    ld a, [hl]
    and a
    cp h
    rst $20
    db $fc
    add a
    rst $38
    add h
    db $fc
    add h
    db $fc
    add d
    cp $ff
    nop
    rst $38
    ld a, $e3
    ld h, e
    db $dd
    ld e, l
    db $dd
    db $dd
    ld e, l
    ld e, l
    ld h, e
    ld h, e
    ld a, $3e
    db $e3
    ccf
    db $e3
    ccf
    di
    rra
    di
    rra
    di
    rst $38
    inc de
    rra
    inc de
    rra
    inc hl
    ccf
    cp e
    cp $cb
    cp $8b
    cp $8b
    cp $8b
    cp $8b
    cp $cb
    rst $38
    cp b
    rst $38
    ld a, b
    nop
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    push hl
    rlca
    and $06
    ld b, l
    dec b
    rst $20
    rlca
    push hl
    rlca
    dec b
    rlca
    db $fd
    rst $38
    ld bc, $82ff
    cp $41
    ld a, a
    and b
    cp a
    ldh [rIE], a
    add b
    rst $38
    cp $ff
    add c
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    pop bc
    pop bc
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc hl
    ccf
    ld b, e
    ld a, a
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    set 7, a
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    jp z, $baff

    rst $38
    jp z, $ffff

Jump_05e_6500:
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    ld a, [hl]
    db $fd
    rst $38
    ld b, $fe
    dec b
    dec b
    rst $20
    rlca
    push hl
    rlca
    ld b, l
    rlca
    push hl
    rlca
    push hl
    rlca
    add b
    rst $38
    ld b, b
    ld a, a
    and b
    cp a
    rst $28
    ldh a, [$80]
    rst $38
    adc a
    ldh a, [$80]
    rst $38
    adc a
    ldh a, [$7f]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    di
    rrca
    inc bc
    rst $38
    di
    rrca
    inc bc
    rst $38
    di
    rrca
    adc d
    rst $38
    adc e
    rst $38
    adc b
    rst $38
    adc e
    rst $38
    jp z, $baff

    rst $38
    jp z, $8aff

    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, b
    nop
    nop
    nop
    dec b
    rlca
    cp $fe
    dec b
    db $fd
    rst $38
    rst $38
    dec b
    rst $38
    dec b
    rlca
    push hl
    rlca
    push hl
    rlca
    add b
    rst $38
    ld c, a
    ld a, a
    xor a
    cp b
    db $ec
    ld hl, sp-$74
    ld hl, sp-$74
    ld hl, sp-$74
    ld hl, sp-$74
    ld hl, sp+$00
    rst $38
    rst $38
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
    inc bc
    rst $38
    di
    rst $38
    di
    rra
    inc de
    rra
    inc de
    rra
    inc de
    rra
    inc de
    rra
    inc de
    rra
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    jp z, $bbff

    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, b
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, [hl]
    ld b, $e5
    dec b
    rst $20
    rlca
    dec b
    rlca
    db $fd
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld c, h
    ld a, b
    xor h
    cp b
    rst $28
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
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
    inc de
    rra
    inc de
    rra
    di
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    nop
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $db
    inc h
    ld d, l
    xor d
    sub c
    ld l, [hl]
    push de
    ld a, [hl+]
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    adc e
    dec h
    jp c, $ab54

    ld [hl], h
    adc e
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld h, c
    ccf
    ld a, a
    ccf
    ld h, l
    ccf
    ld a, a
    jr nz, jr_05e_66de

    nop
    nop
    nop
    cp $fe
    cp $fe
    add $fe
    add $fe
    xor $fe
    add $7e
    add $3f
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
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_05e_66a8
    call Call_05e_6751
    ld hl, $d088
    bit 5, [hl]
    jr z, jr_05e_66a6

    ld de, $d073
    push de
    call Call_05e_6721
    pop de
    xor a
    ret


jr_05e_66a6:
    scf
    ret


Call_05e_66a8:
    push de
    push bc
    ld hl, $d086
    ld bc, $000a
    xor a
    call $3041
    ld hl, $d1ea
    ld bc, $0010
    ld a, $ff
    call $3041
    pop bc
    ld a, c
    and a
    jr z, jr_05e_66c9

    ld hl, $d088
    set 4, [hl]

jr_05e_66c9:
    pop de
    call Call_05e_66f5
    call Call_05e_6ba0
    ld a, $41
    ld hl, $6464
    rst $08
    call Call_05e_6c0c
    ld a, $41
    ld hl, $4000

jr_05e_66de:
    rst $08
    call Call_05e_6bcf
    ld a, $12
    ld hl, $5409
    rst $08
    ld a, $12
    ld hl, $5420
    rst $08
    call $32f9
    call $045a
    ret


Call_05e_66f5:
    ld hl, $d1ea
    ld c, $00
    ld b, $08

jr_05e_66fc:
    ld a, [de]
    call Call_05e_6713
    jr c, jr_05e_670e

    ld a, [de]
    swap a
    call Call_05e_6713
    jr c, jr_05e_670e

    inc de
    dec b
    jr nz, jr_05e_66fc

jr_05e_670e:
    ld a, c
    ld [$d08c], a
    ret


Call_05e_6713:
    and $0f
    cp $0a
    jr nc, jr_05e_671d

    ld [hl+], a
    inc c
    and a
    ret


jr_05e_671d:
    ld [hl], $ff
    scf
    ret


Call_05e_6721:
    push de
    ld h, d
    ld l, e
    ld bc, $0008
    ld a, $ff
    call $3041
    pop de
    ld hl, $d1ea
    ld b, $08

jr_05e_6732:
    ld c, $00
    ld a, [hl+]
    cp $0a
    jr nc, jr_05e_6748

    ld c, a
    ld a, [hl+]
    cp $0a
    jr nc, jr_05e_674c

    swap a
    or c
    ld [de], a
    inc de
    dec b
    jr nz, jr_05e_6732

    ret


jr_05e_6748:
    ld a, $ff
    ld [de], a
    ret


jr_05e_674c:
    ld a, $f0
    or c
    ld [de], a
    ret


Call_05e_6751:
    xor a
    ld [$d087], a

jr_05e_6755:
    call Call_05e_6781
    call Call_05e_67ae
    call Call_05e_697b
    call Call_05e_6770
    call Call_05e_678f
    ld hl, $d08f
    inc [hl]
    ld a, [$d087]
    bit 7, a
    jr z, jr_05e_6755

    ret


Call_05e_6770:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call $3016
    call Call_05e_69cb
    pop af
    ldh [$d8], a
    ret


Call_05e_6781:
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call $0a57
    pop af
    ldh [$aa], a
    ret


Call_05e_678f:
    ld hl, $d088
    bit 7, [hl]
    res 7, [hl]
    jr nz, jr_05e_679f

    ld a, $41
    ld hl, $402d
    rst $08
    ret


jr_05e_679f:
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    ld a, [$d087]
    inc a
    ld [$d087], a
    ret


Call_05e_67ae:
    ld a, [$d087]
    ld hl, $67b6
    rst $28
    ret


    jp nz, $cd67

    ld h, a
    ret c

    ld h, a
    rst $38
    ld h, a
    ld a, [de]
    ld l, b
    db $f4
    ld h, a
    ld a, $04
    call Call_05e_6ad3
    ld a, $01
    ld [$d087], a
    ret


    call Call_05e_683c
    call Call_05e_68ae
    ret c

    call Call_05e_6848
    ret


    call Call_05e_683c
    call Call_05e_6848
    ld hl, $d08b
    dec [hl]
    ret nz

    call Call_05e_6c1d
    call Call_05e_6c2a
    ld hl, $d088
    set 7, [hl]
    ld a, $01
    ld [$d087], a
    ret


    ld hl, $d08b
    dec [hl]
    ret nz

    ld hl, $d087
    set 7, [hl]
    ret


    ld hl, $d08b
    dec [hl]
    ret nz

    call Call_05e_6c1d
    call Call_05e_6c2a
    ld hl, $d088
    set 7, [hl]
    ld hl, $d088
    set 5, [hl]
    ld hl, $d087
    set 7, [hl]
    ret


    call $3c74
    ret nc

    ldh a, [$a7]
    and $03
    ret z

    call $1c07
    call Call_05e_6c1d
    call Call_05e_6c2a
    ld hl, $d088
    set 7, [hl]
    ld hl, $d088
    res 6, [hl]
    ld a, $01
    ld [$d087], a
    ret


Call_05e_683c:
    ldh a, [$a9]
    and $f0
    ld c, a
    ldh a, [$a7]
    and $0b
    or c
    ld c, a
    ret


Call_05e_6848:
    ld a, c
    and $60
    cp $60
    jr z, jr_05e_6876

    ld a, c
    and $50
    cp $50
    jr z, jr_05e_687d

    ld a, c
    and $a0
    cp $a0
    jr z, jr_05e_6884

    ld a, c
    and $90
    cp $90
    jr z, jr_05e_688b

    bit 6, c
    jr nz, jr_05e_6892

    bit 7, c
    jr nz, jr_05e_6899

    bit 5, c
    jr nz, jr_05e_68a0

    bit 4, c
    jr nz, jr_05e_68a7

    xor a
    ret


jr_05e_6876:
    ld a, $09
    call Call_05e_6ad0
    scf
    ret


jr_05e_687d:
    ld a, $0a
    call Call_05e_6ad0
    scf
    ret


jr_05e_6884:
    ld a, $0b
    call Call_05e_6ad0
    scf
    ret


jr_05e_688b:
    ld a, $0c
    call Call_05e_6ad0
    scf
    ret


jr_05e_6892:
    ld a, $05
    call Call_05e_6ad0
    scf
    ret


jr_05e_6899:
    ld a, $06
    call Call_05e_6ad0
    scf
    ret


jr_05e_68a0:
    ld a, $07
    call Call_05e_6ad0
    scf
    ret


jr_05e_68a7:
    ld a, $08
    call Call_05e_6ad0
    scf
    ret


Call_05e_68ae:
    bit 1, c
    jr nz, jr_05e_68bc

    bit 0, c
    jr nz, jr_05e_68cc

    bit 3, c
    jr nz, jr_05e_68d7

    xor a
    ret


jr_05e_68bc:
    ld a, $0b
    ld [$d08a], a
    call Call_05e_6a98
    call Call_05e_6943
    call Call_05e_6a88
    scf
    ret


jr_05e_68cc:
    call Call_05e_6ad7
    call Call_05e_6a98
    call Call_05e_68de
    scf
    ret


jr_05e_68d7:
    ld a, $0c
    call Call_05e_6ad3
    scf
    ret


Call_05e_68de:
    ld a, $02
    call Call_05e_6ae0
    ld a, [hl]
    cp $f1
    jr z, jr_05e_68fd

    cp $f0
    jr z, jr_05e_6904

    cp $f2
    jr z, jr_05e_6911

    ld e, a
    call Call_05e_6964
    ld a, $02
    ld [$d087], a
    call Call_05e_6a88
    ret


jr_05e_68fd:
    call Call_05e_6943
    call Call_05e_6a88
    ret


jr_05e_6904:
    call Call_05e_6ad7
    call Call_05e_6a98
    call Call_05e_691e
    call Call_05e_6a88
    ret


jr_05e_6911:
    call Call_05e_6a98
    ld a, $05
    ld [$d087], a
    xor a
    call Call_05e_6a88
    ret


Call_05e_691e:
    ld a, [$d08c]
    cp $07
    jr c, jr_05e_692c

    ld a, $03
    ld [$d087], a
    xor a
    ret


jr_05e_692c:
    call $1d6e
    call Call_05e_699e
    ld hl, $d088
    set 7, [hl]
    ld hl, $d088
    set 6, [hl]
    ld a, $04
    ld [$d087], a
    scf
    ret


Call_05e_6943:
    ld a, [$d08c]
    and a
    jr z, jr_05e_695d

    dec a
    ld [$d08c], a
    ld c, a
    ld b, $00
    ld hl, $d1ea
    add hl, bc
    ld [hl], $ff
    ld a, $02
    ld [$d087], a
    and a
    ret


jr_05e_695d:
    ld a, $05
    ld [$d087], a
    xor a
    ret


Call_05e_6964:
    ld a, [$d08c]
    cp $10
    jr nc, jr_05e_6979

    ld c, a
    ld b, $00
    inc a
    ld [$d08c], a
    ld hl, $d1ea
    add hl, bc
    ld [hl], e
    and a
    ret


jr_05e_6979:
    scf

jr_05e_697a:
    ret


Call_05e_697b:
    ld hl, $c4b5
    ld bc, $0212
    call $0fb6
    ld hl, $c4cb
    ld de, $d1ea
    ld a, [$d08c]
    and a
    ret z

    ld c, a

jr_05e_6990:
    ld a, [de]
    inc de
    cp $0a
    jr nc, jr_05e_699d

    add $f6
    ld [hl+], a
    dec c
    jr nz, jr_05e_6990

    ret


jr_05e_699d:
    ret


Call_05e_699e:
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_05e_6c46
    ld hl, $c5ba
    ld de, $69b2
    call $1078
    ret


    inc sp
    sbc $dc
    ld a, [hl-]
    sbc $2a
    or e
    ld h, $7f
    ret nz

    jr nc, jr_05e_697a

    cp b
    ld c, [hl]
    jp z, $dfb2

    jp $b27f


    rst $08
    cp [hl]
    sbc $e7
    ld d, b

Call_05e_69cb:
    ld de, $c400
    ld hl, $d088
    bit 6, [hl]
    jr nz, jr_05e_69df

    call Call_05e_69e3
    call Call_05e_6a22
    call Call_05e_69f5
    ret


jr_05e_69df:
    call Call_05e_69e3
    ret


Call_05e_69e3:
    ld a, $03
    ld [$d08e], a
    ld hl, $6a77
    ld b, $08
    ld c, $08
    ld a, $05
    call Call_05e_6a4a
    ret


Call_05e_69f5:
    ld a, [$d08c]
    cp $10
    ret nc

    ld a, [$d08f]
    swap a
    and $01
    add $01
    ld [$d08e], a
    ld a, [$d08c]
    cp $10
    jr c, jr_05e_6a0f

    dec a

jr_05e_6a0f:
    ld c, $08
    call $3105
    add $18
    ld b, a
    ld c, $11
    ld hl, $6a72
    ld a, $04
    call Call_05e_6a4a
    ret


Call_05e_6a22:
    ld a, $00
    ld [$d08e], a
    push de
    ld a, $03
    call Call_05e_6ae0
    add a
    add a
    add a
    add $00
    push af
    ld a, $04
    call Call_05e_6ae0
    add a
    add a
    add a
    add $08
    ld c, a
    pop af
    ld b, a
    pop de
    ld a, $00
    ld hl, $6a77
    call Call_05e_6a4a
    ret


Call_05e_6a4a:
    ld [$d08d], a
    ld a, b
    add $08
    ld b, a
    ld a, c
    add $10
    ld c, a
    ld a, [hl+]

jr_05e_6a56:
    push af
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [$d08d]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [$d08e]
    or [hl]
    inc hl
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_05e_6a56

    ret


    ld bc, $0000
    nop
    nop
    inc b
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

Call_05e_6a88:
    jr c, jr_05e_6a91

    ld de, $0020
    call $3c23
    ret


jr_05e_6a91:
    ld de, $0019
    call $3c23
    ret


Call_05e_6a98:
    ld a, $05
    ld [$d08b], a
    call Call_05e_6aa9
    call Call_05e_6ac3
    ld hl, $d088
    set 7, [hl]
    ret


Call_05e_6aa9:
    ld a, $03
    call Call_05e_6ae3
    ld c, a
    ld b, $00
    ld hl, $cdd9
    add hl, bc
    push hl
    ld a, $04
    call Call_05e_6ae3
    ld bc, $0014
    pop hl
    call $30fe
    ret


Call_05e_6ac3:
    ld a, $0b
    push hl
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld de, $0014
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ret


Call_05e_6ad0:
    call Call_05e_6ae0

Call_05e_6ad3:
    ld [$d089], a
    ret


Call_05e_6ad7:
    push af
    ld a, [$d089]
    ld [$d08a], a
    pop af
    ret


Call_05e_6ae0:
    call Call_05e_6ad7

Call_05e_6ae3:
    push af
    ld a, [$d08a]
    ld bc, $000d
    ld hl, $6af7
    call $30fe
    pop af
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ret


    nop
    nop
    ld bc, $0506
    add hl, bc
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    inc b
    nop
    nop
    ld [bc], a
    add hl, bc
    dec b
    ld a, [bc]
    inc b
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    inc bc
    dec b
    nop
    nop
    inc bc
    inc c
    dec b
    dec bc
    dec b
    ld bc, $0100
    nop
    inc b
    nop
    nop
    nop
    inc b
    ld b, $08
    nop
    ld b, $05
    inc b
    dec b
    ld bc, $0705
    nop
    nop
    dec b
    add hl, bc
    ld [$0701], sp
    inc bc
    dec b
    nop
    ld [bc], a
    ld b, $08
    nop
    nop
    ld b, $0c
    ld [$0802], sp
    inc b
    inc bc
    ld bc, $0703
    inc bc
    nop
    nop
    rlca
    ld b, $0b
    inc bc
    add hl, bc
    ld [$0807], sp
    inc b
    ld [$000a], sp
    nop
    ld [$0b09], sp
    inc b
    ld a, [bc]
    ld b, $08
    inc bc
    dec b
    add hl, bc
    dec bc
    nop
    nop
    add hl, bc
    inc c
    dec bc
    dec b
    dec bc
    rlca
    ld b, $04
    ld b, $0a
    ld b, $00
    nop
    ld a, [c]
    ld b, $0e
    ld b, $00
    inc c
    ld a, [bc]
    inc c
    rlca
    inc c
    nop
    nop
    nop
    nop
    add hl, bc
    ld c, $07
    ld bc, $0b09
    ld b, $08
    ld bc, $0001
    nop
    pop af
    inc c
    ld c, $08
    ld [bc], a
    ld a, [bc]
    inc c
    rlca
    inc c
    ld [bc], a
    inc c
    nop
    nop
    ldh a, [rNR10]
    ld c, $0c
    inc c
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc

Call_05e_6ba0:
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld hl, $9000
    ld de, $6fa5
    ld bc, $5e80
    call $0f82
    pop af
    ldh [rVBK], a
    ld hl, $8000
    ld de, $7465
    ld bc, $5e05
    call $0f82
    ld hl, $8050
    ld de, $601a
    ld bc, $4504
    call $0f82
    ret


Call_05e_6bcf:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $6c55
    ld de, $d000
    ld bc, $0030
    call $3026
    ld hl, $6c95
    ld de, $d040
    ld bc, $0040
    call $3026
    ld hl, $74b5
    ld de, $d048
    ld bc, $0010
    call $3026
    ld hl, $7471
    ld de, $d058
    ld bc, $0008
    ld a, $02
    call $0e8d
    pop af
    ldh [rSVBK], a
    ret


Call_05e_6c0c:
    call Call_05e_6c1d
    call Call_05e_6c2a
    ld hl, $c4a0
    ld b, $02
    ld c, $12
    call Call_05e_6c46
    ret


Call_05e_6c1d:
    ld hl, $6cd5
    ld de, $c4f0
    ld bc, $0118
    call $3026
    ret


Call_05e_6c2a:
    ld hl, $6e3d
    ld de, $ce29
    ld bc, $0118
    call $3026
    ld hl, $ce29
    ld bc, $0118

jr_05e_6c3c:
    ld a, [hl]
    or $08
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_05e_6c3c

    ret


Call_05e_6c46:
    ld a, [$d088]
    bit 4, a
    jr nz, jr_05e_6c51

    call $0fe8
    ret


jr_05e_6c51:
    call $3eea
    ret


    nop
    nop
    ld c, c
    ld h, l
    ld [hl], b
    ld a, [hl]
    rst $38
    ld a, a
    ld h, l
    dec h
    rst $00
    ld sp, $5b11
    db $fc
    ld a, a
    nop
    nop
    inc bc
    jr z, jr_05e_6ccd

    ld b, b
    ld b, $65
    ld h, l
    dec h
    db $fc
    ld a, a
    rst $00
    ld sp, $5b11
    nop
    nop
    ld b, l
    ld b, b
    ld [$2d69], sp
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld h, h
    inc c
    cp a
    ld bc, $7fff
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rra
    nop
    ld [hl], b
    nop
    ld a, h
    ld l, $ff
    ld a, a
    rra
    ld [bc], a
    ret


    db $10
    rra
    ld [bc], a
    rra
    inc bc
    ld e, a
    ld a, [de]
    ld h, b
    nop
    jr nz, jr_05e_6cbc

    add b

jr_05e_6cbc:
    ld bc, $0200
    ret nz

    ld [bc], a
    jr nz, @+$05

    ld h, b
    inc bc
    ldh [$03], a
    db $e3
    inc bc
    add sp, $03
    xor $03

jr_05e_6ccd:
    ldh a, [$03]
    or $03
    ei
    inc bc
    rst $38
    inc bc
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld b, d
    ld b, c
    ld b, b
    ccf
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    cpl
    dec c
    inc bc
    inc b
    ld hl, $0605
    ld hl, $0605
    ld c, $2f
    ld b, d
    ld b, c
    ld b, b
    ccf
    ld b, b
    ld b, c
    ld b, d
    cpl
    ld l, $0d
    rrca
    db $10
    inc l
    ld de, $2c12
    inc de
    inc d
    ld c, $2e
    cpl
    ld b, d
    ld b, c
    ld b, b
    ld b, c
    ld b, d
    cpl
    ld l, $2d
    dec c
    dec bc
    rla
    inc a
    dec bc
    rla
    inc a
    dec bc
    rla
    ld c, $2d
    ld l, $2f
    ld b, d
    ld b, c
    ld b, d
    cpl
    ld l, $2d
    inc h
    dec c
    rlca
    ld [$0921], sp
    ld a, [bc]
    ld hl, $0a09
    ld c, $24
    dec l
    ld l, $2f
    ld b, d
    cpl
    ld l, $2d
    inc h
    inc hl
    dec c
    dec d
    ld d, $2c
    inc de
    inc d
    inc l
    ld de, $0e14
    inc hl
    inc h
    dec l
    ld l, $2f
    ld l, $2d
    inc h
    inc hl
    ld [hl+], a
    dec c
    dec bc
    rla
    inc a
    dec bc
    rla
    inc a
    dec bc
    rla
    ld c, $22
    inc hl
    inc h
    dec l
    ld l, $2f
    ld l, $2d
    inc h
    inc hl
    dec c
    dec de
    inc e
    ld hl, $0609
    ld hl, $0609
    ld c, $23
    inc h
    dec l
    ld l, $2f
    ld b, d
    cpl
    ld l, $2d
    inc h
    dec c
    dec h
    db $10
    inc l
    ld de, $2c14
    inc de
    inc d
    ld c, $24
    dec l
    ld l, $2f
    ld b, d
    ld b, c
    ld b, d
    cpl
    ld l, $2d
    dec c
    dec bc
    rla
    inc a
    dec bc
    rla
    inc a
    dec bc
    rla
    ld c, $01
    ld [bc], a
    ld [bc], a
    inc c
    ld b, c
    ld b, b
    ld b, c
    ld b, d
    cpl
    ld l, $0d
    rra
    jr nz, jr_05e_6dc7

    dec de
    inc e
    ld hl, $1e1d
    ld c, $0d
    ld a, [hl-]
    dec sp
    ld c, $40
    ccf
    ld b, b
    ld b, c
    ld b, d
    cpl
    dec c
    ld a, [hl+]
    dec hl
    inc l
    ld h, $27
    inc l
    jr z, jr_05e_6de8

    ld c, $0d
    ld c, d
    ld c, e
    ld c, $3f
    ld a, $3f

jr_05e_6dc7:
    ld b, b
    ld b, c
    ld b, d
    jr @+$1b

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    jr jr_05e_6def

    add hl, de
    ld a, [de]
    ld a, $49
    ld b, e
    ld b, h
    ld b, l
    dec a
    jr nc, jr_05e_6e11

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05e_6e21

jr_05e_6de8:
    dec a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop

jr_05e_6def:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_6e11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_6e21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    nop
    ld bc, $0001
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0401
    ld bc, $0401
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0400
    inc bc
    dec bc
    rlca
    dec d
    ld c, $08
    inc e
    inc l
    jr jr_05e_6fc6

jr_05e_6fc6:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld bc, $ffff
    cp $f7
    cp $e7
    or $e7
    and $e7
    and $e7
    and $e7
    xor $00
    rst $38
    ld a, a
    rst $38
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp+$7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    ld hl, sp+$01
    rst $38
    rst $38
    cp $07
    ld e, $07
    ld b, $e7
    and $e7
    and $e7
    and $07
    ld l, $00
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $28
    ld h, a
    rst $20
    ld h, a
    rst $20
    ld h, a
    rst $20
    ld h, b
    add sp, $01
    rst $38
    rst $38
    cp $f7
    cp $e7
    or $e7
    and $e7
    and $e7
    and $07
    ld l, $00
    rst $38
    ld a, a
    rst $38
    ld h, b
    ldh a, [$60]
    add sp, $67
    rst $20
    ld h, a
    rst $20
    ld h, a
    rst $20
    ld h, b
    add sp, $01
    rst $38
    rst $38
    cp $1f
    ld a, $0f
    ld e, $ff
    cp $ff
    cp $ff
    cp $17
    ld a, $00
    nop
    ld d, l
    ld bc, $002a
    ld d, l
    ld bc, $002a
    ld d, l
    ld bc, $002a
    ld bc, $0001
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    ret nc

    ldh [$e8], a
    jr nc, jr_05e_70aa

    db $10
    inc [hl]
    jr jr_05e_708e

    jr nc, jr_05e_7090

    jr nc, jr_05e_7092

    jr nc, jr_05e_7094

    jr nc, jr_05e_7096

    jr nc, jr_05e_7098

    jr nc, jr_05e_709a

    jr nc, jr_05e_709c

    jr nc, jr_05e_7092

    jr jr_05e_7094

    jr jr_05e_7096

    jr jr_05e_7098

    jr jr_05e_709a

jr_05e_708e:
    jr jr_05e_709c

jr_05e_7090:
    jr jr_05e_709e

jr_05e_7092:
    jr jr_05e_70a0

jr_05e_7094:
    jr jr_05e_7115

jr_05e_7096:
    rst $38
    ld a, a

jr_05e_7098:
    rst $38
    ld a, a

jr_05e_709a:
    rst $38
    ld a, a

jr_05e_709c:
    rst $38
    ld a, a

jr_05e_709e:
    rst $38
    ld a, a

jr_05e_70a0:
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    rst $20
    or $e7
    and $e7

jr_05e_70aa:
    and $e7
    and $e7
    or $f7
    cp $ff
    cp $ff
    nop
    ld h, b
    ldh a, [$67]
    rst $20
    ld h, a
    rst $20
    ld h, a
    rst $20
    ld h, b
    ldh [$60], a
    ld hl, sp+$7f
    rst $38
    rst $38
    add b
    rrca
    ld e, $ff
    cp $ff
    cp $ff
    cp $0f
    ld e, $07
    ld c, $ff
    cp $ff
    nop
    ld h, b
    ldh a, [$7f]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp+$7f
    rst $38
    rst $38
    add b
    rlca
    ld d, $e7
    and $e7
    and $e7
    and $07
    ld d, $07
    ld c, $ff
    cp $ff
    nop
    ld h, b
    ldh a, [$7f]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    rlca
    ld d, $e7
    and $e7
    and $e7
    and $e7
    or $f7
    cp $ff
    cp $ff
    nop

jr_05e_7115:
    nop
    add b
    ld d, h
    nop
    ld a, [hl+]
    add b
    ld d, h
    nop
    ld a, [hl+]
    add b
    ld d, h
    nop
    ld a, [hl+]
    add b
    nop
    nop
    inc l
    jr jr_05e_7140

    inc c
    inc d
    rrca
    dec bc
    rlca
    ld b, $01
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_05e_7140:
    nop
    nop
    nop
    nop
    nop
    inc d
    jr c, jr_05e_7160

    jr nc, jr_05e_7172

    ldh a, [$d0]
    ldh [$60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld h, b
    ldh a, [$60]
    add sp, $67
    rst $20
    ld h, a

jr_05e_7160:
    rst $20
    ld h, a
    rst $20
    ld h, a
    rst $28
    ld bc, $ffff
    cp $07
    ld e, $07
    ld b, $e7
    and $e7
    and $e7

jr_05e_7172:
    and $e7
    xor $00
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    db $fd
    ld d, b
    ldh a, [$5d]
    db $dd
    ld bc, $ffff
    cp $ff
    cp $ff
    cp $ff
    cp $f7
    or $83
    jp nz, $e6e7

    nop
    rst $38
    ld d, a
    rst $10
    ld b, c
    jp $9515


    ld e, a
    rst $18
    ld c, l
    db $ed
    ld l, b
    db $ec
    ld a, c
    ei
    ld bc, $ffff
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    ld a, [hl]
    rra
    ld a, $5f
    ld e, [hl]
    nop
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    nop
    nop
    nop

Jump_05e_71d4:
    nop

Jump_05e_71d5:
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    ld h, a
    rst $30
    ld h, a
    rst $20
    ld h, a
    rst $20
    ld h, a
    rst $20
    ld h, b
    ldh [$60], a
    ld hl, sp+$7f
    rst $38
    rst $38
    add b
    rst $20
    or $e7
    and $e7
    and $e7
    and $07
    ld d, $07
    ld c, $ff
    cp $ff
    nop
    ld e, l
    db $dd
    ld e, l
    db $dd
    ld e, l
    db $dd
    ld l, e
    ei
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    rst $10
    sub $e7
    and $f7
    or $cf
    xor $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    ld a, d
    ld a, [$fd78]
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    rst $18
    sbc $43
    ld h, d
    rst $30
    or $c3
    and $fb
    ld a, [$cacb]
    jp $ffc6


    nop
    nop
    xor d
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
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
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    ld c, $02
    ld [bc], a
    add h
    add h
    ld [$0608], sp
    ld b, $00
    nop
    add b
    add b
    ld b, b
    ld b, b
    sub b
    sub b
    ld hl, $3021
    jr nc, jr_05e_7315

    ld d, l
    ld c, h
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add h
    push hl
    push hl
    sub h
    sub h
    sub l
    sub l
    or l
    or l
    nop
    nop
    jr nz, jr_05e_72f7

    ld d, b
    ld d, b
    and h
    and h
    ret z

    ret z

    adc h
    adc h
    push de
    push de
    sub e
    sub e
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld a, [hl-]
    ld a, [hl-]
    inc b
    inc b
    nop
    nop
    ld b, h
    ld b, h
    jr c, jr_05e_732b

    nop
    nop
    nop
    nop

jr_05e_72f7:
    ld h, b
    ld h, b
    nop
    nop
    ldh [$e0], a
    db $10
    db $10
    db $10
    db $10
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld b, h
    ld b, h
    ld b, c
    ld b, c
    ld d, c
    ld d, c
    ld c, h
    ld c, h
    nop
    nop

jr_05e_7315:
    nop
    nop
    ld b, $06
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    ld h, c
    ld h, c
    pop hl
    pop hl
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b

jr_05e_732b:
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    dec bc
    dec bc
    inc de
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1008], sp
    db $10
    and d
    and d
    db $10
    db $10
    adc b
    adc b
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, c
    db $e3
    ld b, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld bc, $ffff
    cp $ff
    cp $ff
    cp $bb
    cp $b3
    cp d
    and a
    or [hl]
    adc a
    xor [hl]
    nop
    nop
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05e_738e

jr_05e_738e:
    jr jr_05e_7390

jr_05e_7390:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05e_739d

jr_05e_739d:
    jr jr_05e_739f

jr_05e_739f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05e_73c5

    jr jr_05e_73c7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05e_73be

jr_05e_73be:
    jr jr_05e_73c0

jr_05e_73c0:
    nop
    nop
    nop
    nop
    nop

jr_05e_73c5:
    nop
    nop

jr_05e_73c7:
    nop
    nop
    nop
    nop
    jr jr_05e_73cd

jr_05e_73cd:
    jr jr_05e_73cf

jr_05e_73cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    reti


    ld c, c
    reti


    ld b, c
    reti


    ld b, c
    pop hl
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    adc a
    sbc [hl]
    add a
    adc [hl]
    and e
    and [hl]
    or e
    or d
    rst $38
    cp $ff
    cp $ff
    cp $ff
    nop
    nop
    rra
    ld c, $31
    rra
    ld l, $19
    ld l, $1f
    ld l, $1f
    ld l, $1f
    ld l, [hl]
    ccf
    ld c, [hl]
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
    db $fc
    ld hl, sp+$06
    xor h
    ld d, d
    cpl
    ld e, [hl]
    ld a, $5f
    ccf
    ld e, a
    ccf
    ld e, a
    cpl
    ld e, a
    jr nc, jr_05e_74e0

    rra
    ld h, b
    nop
    ccf
    db $f4
    ld a, [$faf4]
    db $f4
    ld a, [$faf4]
    db $f4
    ld a, [$f20c]
    ld hl, sp+$06
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
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
    jp nz, $d828

    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_74c6:
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_05e_74cc:
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

jr_05e_74d6:
    nop
    rst $38
    nop
    jp $813c


jr_05e_74dc:
    ld a, [hl]
    jr jr_05e_74c6

    inc a

jr_05e_74e0:
    jp $c33c


    jr jr_05e_74cc

    add c
    ld a, [hl]
    jp $c33c


    inc a
    add c
    ld a, [hl]
    jr jr_05e_74d6

    inc a
    jp $c33c


    jr jr_05e_74dc

    add c
    ld a, [hl]
    jp $fc3c


    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    rst $38
    nop
    or a
    nop
    add a
    nop
    add e
    nop
    ld c, l
    nop
    ld c, l
    nop
    sbc l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp e
    nop
    cp e
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    cp e
    nop
    cp e
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $10

Call_05e_7555:
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $00
    nop
    reti


    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$06
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $003c


    inc a
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
    ccf
    ret nz

    rra
    ldh [$1f], a
    ld h, b
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rra
    nop
    rrca
    jr nc, jr_05e_75df

    jr nc, jr_05e_75e1

    jr nc, jr_05e_75e3

    jr nc, jr_05e_75f5

    nop
    rra
    nop
    ld hl, sp+$06
    ld hl, sp+$07
    db $fc
    inc bc

jr_05e_75df:
    rst $38
    nop

jr_05e_75e1:
    rst $38
    nop

jr_05e_75e3:
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
    inc a
    jp $ff3c


    nop
    rst $38
    nop

jr_05e_75f5:
    rst $38
    nop
    rst $38
    nop
    rra
    ld h, b
    rra
    ldh [$3f], a
    ret nz

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
    nop
    jr nc, jr_05e_760c

jr_05e_760c:
    ld a, b
    nop
    db $fc
    nop
    ld a, b
    nop
    ld a, b
    ld c, b
    jr nc, jr_05e_768e

    nop
    jr nc, jr_05e_7619

jr_05e_7619:
    jr nc, jr_05e_761b

jr_05e_761b:
    ld a, b
    nop
    ld c, b
    jr nc, jr_05e_7620

jr_05e_7620:
    ld a, b
    nop
    ld a, b
    nop
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_05e_762a

jr_05e_762a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05e_768e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
