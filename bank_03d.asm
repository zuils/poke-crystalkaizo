; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    ret nz

    inc c
    ld b, b
    ld bc, $4125
    ld [bc], a
    ld e, $42
    inc bc
    rst $18
    ld b, d
    jp c, $9d00

    push hl
    ld [hl], a
    rst $28
    rrca
    db $db
    ld [bc], a
    pop hl
    ld [de], a
    inc [hl]
    ret c

    inc c
    and a
    push de
    ld [hl], b
    ld [bc], a
    ld [hl], c
    inc bc

Call_03d_4020:
    ld [hl], c
    ld bc, $0070
    ld [hl], e
    ld bc, $31d4
    ld bc, $a1d5
    ld bc, $0070
    ld [hl], b
    ld [bc], a
    ld [hl], c
    inc bc
    ld [hl], c
    ld bc, $0080
    inc bc
    add a
    inc bc
    cp $c5
    ld b, b
    inc bc
    cp $c5
    ld b, b
    call nc, $fe13
    rrca
    ld b, c
    call nc, $81c1
    ld sp, $c1d5
    ld [hl], c
    ld d, c
    ld [hl], b
    nop
    and b

Call_03d_4050:
    ld [bc], a
    ld [hl], c
    and b
    nop
    call nc, RST_20
    ld bc, $a0d5
    nop
    call nc, RST_20
    ld [hl], b
    nop
    call c, $d387
    ld [hl], e
    ld h, e
    call c, $d5a7
    add l
    rst $00
    call nc, $0151
    ld d, c
    push de
    jp $7181


    ld d, e
    ld sp, $a1d6
    push de
    jr nc, jr_03d_4079

jr_03d_4079:
    ld [hl], b
    ld [bc], a
    ld sp, $0070
    and b
    nop
    ld bc, $a071
    nop
    call nc, RST_10
    ld b, c
    ld de, $c1d5
    and c
    cp $0f
    ld b, c
    call nc, $81a1
    ld sp, $d581
    ld [hl], c
    ld d, c
    ld [hl], b
    nop
    and b
    ld [bc], a
    ld [hl], c
    and b
    nop
    call nc, RST_10
    ld bc, $0151
    ld de, $d501
    and c
    ld bc, $8571
    ret nz

    nop
    call nc, Call_03d_7153
    add l
    ld d, c
    ld bc, $81d5
    call nc, $0151
    ld [hl], l
    inc sp
    push de
    and e
    ld [hl], e
    add b
    ld [bc], a
    add a
    or e
    db $fd
    nop
    add hl, sp
    ld b, b
    push de
    and b
    ld [bc], a
    and c
    inc bc
    and c
    ld bc, $00a0
    call nc, $0113
    push de
    and c
    ld bc, $11d4
    push de
    and b
    nop
    call nc, RST_10
    push de
    ret nz

    ld [bc], a
    add c
    inc bc
    add c
    ld bc, $31d4
    ld bc, $c1d5
    ld bc, $0080
    add e
    ld bc, $00c0
    call nc, $0230
    ld sp, $3103
    ld bc, $0030
    push de
    add e
    ld bc, $20d4
    nop
    ld d, b
    nop
    inc sp
    jr nz, jr_03d_4103

jr_03d_4103:
    push de
    and b
    ld [bc], a
    ld [hl], c
    inc bc
    ld [hl], c
    ld bc, $0080
    inc bc
    add a
    rst $38
    push de
    pop bc

Call_03d_4111:
    ld sp, $0080
    ret nz

    ld [bc], a
    add c
    ret nz

    nop
    call nc, RST_30
    ld bc, $c1d5
    call nc, RST_30
    add b
    nop
    rst $38
    pop hl
    db $10
    ld b, [hl]
    db $db
    ld bc, $0cd8
    or a
    rst $28
    ldh a, [$d6]
    inc sp

Call_03d_4131:
Jump_03d_4131:
    ld bc, $00a0
    and e
    inc bc
    inc sp
    ld bc, $00a0
    and b
    nop
    push de
    inc hl
    sub $a0
    nop
    inc sp
    ld bc, $00a0
    and e
    ld bc, $0050
    inc bc
    ld d, a
    inc bc
    cp $c0
    ld b, c
    inc bc
    cp $c0
    ld b, c
    sub $73
    cp $01
    ld b, d
    add e
    ld bc, $30d5
    nop
    sub $80
    nop
    push de

Call_03d_4161:
Jump_03d_4161:
    inc sp
    sub $c1
    cp $0b
    ld b, d
    ld bc, $0171
    push de
    jr nz, jr_03d_416d

jr_03d_416d:
    inc hl
    inc de
    cp $15

Call_03d_4171:
    ld b, d
    ld d, e
    ld bc, $00c0
    ld d, c
    pop bc
    add e
    inc sp
    ld bc, $00a0
    and e
    ld de, $0121
    ld b, c
    and b
    nop
    push de
    stop
    ld b, c
    ld de, $a1d6
    ld [hl], c
    cp $01
    ld b, d
    add e
    ld bc, $00c0

Jump_03d_4193:
    add b
    nop
    jp $fe81


    dec bc
    ld b, d
    ld bc, $0171
    and c
    ld bc, $11d5

Call_03d_41a1:
    ld bc, $41d6
    cp $15
    ld b, d
    ld d, e
    ld bc, $00b0
    or e
    ld bc, $0080
    inc sp
    ld bc, $00a0
    and e
    ld bc, $0030

Call_03d_41b7:
    ld d, b
    ld [bc], a
    ld d, a
    rst $10
    and e
    db $fd
    nop
    ld c, h
    ld b, c
    sub $33
    ld bc, $00a0
    and e
    inc bc
    ld b, e
    ld bc, $00a0
    and b
    nop
    push de
    inc de
    sub $a0
    nop
    ld d, e
    ld bc, $00c0
    jp Jump_03d_5303


    ld bc, $00c0
    ret nz

    nop
    push de
    inc sp
    sub $c0
    nop
    add e
    ld bc, $30d5
    nop
    inc sp
    inc bc
    sub $a3
    ld bc, $50d5
    nop
    ld d, b
    nop
    add e
    ld d, b
    nop
    sub $33
    ld bc, $00a0
    and e
    ld bc, $0050
    inc bc
    ld d, a
    rst $38
    add e
    ld bc, $30d5
    nop
    inc sp
    sub $61
    ld [hl], c
    rst $38
    ld [hl], e
    ld bc, $20d5
    nop
    inc hl
    sub $51
    ld h, c
    rst $38
    sub $53
    ld bc, $00c0
    jp Jump_03d_4131


    rst $38
    pop hl
    ld [de], a
    inc h
    ret c

    inc c
    inc de
    rst $28
    rst $38
    call nc, $02a0
    and c
    inc bc
    and c
    ld bc, $00a0
    and e
    ld bc, $71d3
    ld bc, $0121
    call nc, $00a0
    and b
    ld [bc], a
    and c
    inc bc
    and c
    ld bc, $30d3
    nop
    inc bc
    scf
    ld [hl], c
    add c
    call c, $fe13
    and d
    ld b, d
    db $d3
    ld [hl], c
    add c
    cp $a2
    ld b, d
    ld d, e
    pop hl
    jr jr_03d_427a

    call c, $cb25
    add e
    jp nc, Jump_03d_5137

    ld sp, $d321
    pop bc
    xor e
    ld [hl], e
    and a
    and e
    sub e
    ld e, c
    ld d, c
    ld [hl], c
    add c
    ld bc, $7381
    ld d, e
    add e
    ld a, e
    inc sp
    and e
    inc bc
    jp nc, $d317

    set 2, d
    ld hl, $5131

jr_03d_427a:
    ld bc, $0131
    ld hl, $d301
    pop bc
    ld bc, $a1a9
    pop bc
    jp nc, $0111

    db $d3
    pop bc
    ld bc, $01a1
    ld [hl], c
    ld bc, $818b
    and c
    or l
    and c
    ld bc, $b181
    ld bc, $03ad
    jr nc, jr_03d_429e

    scf
    ld d, e

jr_03d_429e:
    db $fd
    nop
    ld b, [hl]
    ld b, d
    db $d3
    and c
    ld bc, $0181
    ld [hl], c
    dec b
    ld bc, $8171
    and c
    ld bc, $81a1
    ld [hl], c
    add c
    ld d, c
    call nc, $03c1
    pop bc
    ld bc, $81d3
    ld bc, $0131
    call nc, $00c0
    jp Jump_03d_51d3


    ld [hl], c
    add c
    ld bc, $0171
    ld d, c
    dec b
    ld bc, $7151
    add c
    ld bc, $7181
    ld d, c
    ld [hl], c
    ld sp, $a1d4
    inc bc
    and c
    ld bc, $30d3
    nop
    inc bc
    scf
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    cp $1d
    ld b, e
    cp $2c
    ld b, e
    cp $1d
    ld b, e
    cp $1d
    ld b, e
    cp $1d
    ld b, e
    cp $2c
    ld b, e
    cp $1d
    ld b, e
    cp $1d
    ld b, e
    cp $1d
    ld b, e
    cp $2c
    ld b, e
    cp $3b
    ld b, e
    cp $4b
    ld b, e
    cp $3b
    ld b, e
    cp $3b
    ld b, e
    cp $3b
    ld b, e
    cp $4b

Call_03d_4312:
    ld b, e
    cp $3b
    ld b, e
    cp $3b
    ld b, e
    db $fd
    nop
    jp hl


    ld b, d
    ld d, c
    ld d, c
    ld sp, $3153
    ld d, c

Call_03d_4323:
    ld [hl], c
    ld d, c
    ld d, c
    inc sp
    ld d, c
    ld sp, $7151
    rst $38
    ld d, c
    ld d, c

jr_03d_432e:
    ld sp, $3153
    ld d, c
    ld [hl], c
    ld d, c
    ld d, c
    ld [hl], e
    ld sp, $b131
    or c
    rst $38
    ld b, c
    ld [hl], c
    ld sp, $4141
    ld [hl], c
    inc sp
    ld b, c

Call_03d_4343:
    ld [hl], c
    ld sp, $4141
    ld [hl], c
    ld sp, $ff41
    ld b, c
    ld [hl], c
    ld sp, $4141
    ld [hl], c

jr_03d_4351:
    inc sp
    ld b, c
    ld [hl], c
    ld sp, $4141
    ld sp, $7131
    rst $38
    add b
    ld h, h
    ld b, e
    ld bc, $4406
    ld [bc], a
    sub d

Call_03d_4363:
    ld b, h
    jp c, $9200

    push hl
    ld [hl], a
    and $00
    ld bc, $0fef
    ret c

    inc c
    and [hl]
    push de
    and [hl]
    call c, $90a1
    and b
    ld [hl-], a
    ld d, c
    ld [hl], c
    cp $cc
    ld b, e
    ld sp, $a070
    jr nc, jr_03d_43f2

    and b
    ld [hl], b
    db $fd
    inc bc
    ld a, l
    ld b, e
    ld sp, $c080
    call nc, $1030
    push de
    ret nz

    add b
    cp $cc
    ld b, e
    jr nc, @+$22

    jr nc, jr_03d_43e8

    ld [hl], b
    add b
    and b

Call_03d_439b:
    ret nz

    and c
    add c
    ld [hl], c

Call_03d_439f:
    ld d, c

Call_03d_43a0:
    ld a, a
    cp $e1
    ld b, e
    cp $fe
    ld b, e
    sub $c1
    or b
    ret nz

    push de
    jr nc, jr_03d_432e

    and b
    add b
    ld [hl], b
    add b
    and b
    sub b

jr_03d_43b4:
    and b
    call nc, $d510
    ret nz

    and b
    cp $e1
    ld b, e
    cp $fe
    ld b, e
    ld sp, $3020
    ld [hl], b
    add b
    and b
    add b

Call_03d_43c7:
    and a
    db $fd
    nop
    ld l, h
    ld b, e
    ld sp, $c080
    jr nc, jr_03d_4351

    ret nz

    add b
    db $fd
    inc bc

Jump_03d_43d5:
    call z, $3143
    ld [hl], b
    and b
    call nc, $2030
    jr nc, jr_03d_43b4

    and b
    rst $38
    sub $81
    ret nz

jr_03d_43e4:
    push de
    jr nc, jr_03d_43e4

    inc b

jr_03d_43e8:
    pop hl
    ld b, e
    ld de, $c0d6
    push de
    db $10
    jr nc, @+$52

    ld [hl], b

jr_03d_43f2:
    and b
    add b
    and b
    ret nz

    call nc, $3010
    jr nz, jr_03d_442b

    push de
    ret nz

    rst $38
    ld sp, $a070
    db $fd
    inc b
    cp $43
    rst $38
    pop hl
    ld [de], a
    inc [hl]
    db $db
    ld [bc], a
    rst $28
    ldh a, [$d8]
    inc c
    or a
    call nc, $2030
    jr nc, @+$52

    ld [hl], b
    ld d, b
    ld [hl], b
    add b
    and a
    cp $63
    ld b, h
    and e
    ld [hl], e
    and c
    ld [hl], l
    and b
    add b
    ld [hl], b
    add b
    and c
    pop bc
    add e
    jp Jump_03d_63fe


jr_03d_442b:
    ld b, h
    call c, $a1c1
    add c
    ld [hl], c
    add c
    ld [hl], c
    ld d, c
    ld sp, $3321
    jr nc, jr_03d_4489

    ld [hl], b
    and b
    call c, $d3b3
    dec [hl]
    call c, $d7a2
    ld [hl], c
    cp $74
    ld b, h
    rst $10
    add d
    ret nz

    and c
    sub $31
    rst $10
    and l
    ld [hl], c
    cp $74
    ld b, h
    rst $10
    and d
    sub $30
    and e
    dec [hl]
    call c, $d497
    ld [hl], b
    and b
    db $d3
    ccf
    db $fd
    nop
    ld a, [de]
    ld b, h
    call c, $d4b2
    jp $c183


    add l
    ret nz

    add b
    and b
    ret nz

    db $d3
    ld de, $c1d4
    and a
    rst $38
    add d
    ret nz

    sub $33
    rst $10
    add c
    pop bc
    sub $33
    rst $10
    add d
    sub $10
    inc sp
    rst $10
    add c
    pop bc
    sub $33
    rst $10
    and d

jr_03d_4489:
    sub $30
    ld [hl], e
    rst $10
    and c
    sub $31
    ld [hl], e
    rst $38
    pop hl
    ld [de], a
    inc h
    ret c

    inc c
    dec h
    push de
    and c
    ld bc, $0171
    scf
    cp $fd
    ld b, h
    sub $a1
    ld bc, $33d5
    db $fd
    inc bc
    and c
    ld b, h
    sub $80
    nop
    ret nz

    nop
    push de
    ld [hl-], a
    sub $70
    cp $fd
    ld b, h
    and b
    nop
    push de
    jr nc, jr_03d_44bb

jr_03d_44bb:
    push de
    ld [hl], d
    sub $90
    and b
    nop
    push de
    jr nz, jr_03d_44c4

jr_03d_44c4:
    ld d, c
    ld hl, $0531
    sub $a1
    dec b
    call c, $fe10
    db $10
    ld b, l
    db $d3
    ld d, c
    ld bc, $0171
    inc sp
    inc bc
    rla
    call nc, $c1a1
    db $d3
    ld de, $5131
    ld bc, $5131
    inc sp
    inc bc
    cp $10
    ld b, l
    db $d3
    ld d, c
    ld bc, $5131
    inc sp
    inc bc
    rla
    and c
    add c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld sp, $3151
    dec b
    db $fd
    nop
    sub l
    ld b, h
    sub $81
    ld bc, $33d5
    db $fd
    inc bc
    db $fd
    ld b, h
    sub $a0
    nop
    push de
    jr nc, jr_03d_450c

jr_03d_450c:
    ld [hl], d
    sub $90
    rst $38
    db $d3
    scf
    ld de, $c1d4
    and c
    pop bc
    rst $38
    add b
    ld hl, $0145
    ld [hl], l
    ld b, l
    ld [bc], a
    call nz, $da45
    nop
    ld a, [hl]
    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $0cd8
    or c
    push de
    ret nz

    and b
    sub b
    ld [hl], b
    call c, $5bb6
    rst $28
    rrca
    cp $5c
    ld b, l
    ld [hl], c
    ld [hl], c
    ld [hl], e
    cp $5c
    ld b, l
    sub e
    call c, $d578
    add e
    reti


Call_03d_4547:
    ld bc, $5cfe
    ld b, l
    ld [hl], c
    ld [hl], c
    ld [hl], e
    cp $5c
    ld b, l
    sub e
    reti


    nop
    call c, $d578
    ld [hl], e
    db $fd
    nop
    jr c, jr_03d_45a1

    call c, $d571
    sub b
    ret nz

    call nc, $d551
    pop bc
    call nc, $d551
    sub b
    ld [hl], b
    ld d, b
    ld [hl], b
    sub c
    ld d, c
    and b
    call nc, $5120
    ld d, c
    and c
    rst $38
    pop hl
    ld [de], a
    inc h
    db $db
    ld [bc], a
    ret c

    inc c
    pop de
    call nc, Call_03d_7050
    sub b
    and b
    call c, $cbd6
    rst $28
    ldh a, [$fe]
    or l
    ld b, l
    call nc, $c1c1
    jp $b5fe


    ld b, l
    call nc, $dcc3
    add c
    db $10
    ld d, b
    add b
    or b
    reti


    ld bc, $b5fe
    ld b, l
    call nc, $c1c1

jr_03d_45a1:
    jp $b5fe


    ld b, l
    call nc, $d9c3
    nop
    call c, $d581
    ret nz

    call nc, Call_03d_7040
    and b
    db $fd

Call_03d_45b2:
    nop
    add a
    ld b, l
    call c, $d481
    pop bc
    and c
    sub c
    and c
    pop bc
    pop bc
    jp $21d3


    ld hl, $ff23
    ret c

    inc c
    jr nz, jr_03d_45cd

    jp nc, VBlankInterrupt

    ld d, b
    ld [bc], a

jr_03d_45cd:
    ld d, b
    ld [bc], a
    cp $f4
    ld b, l
    ld b, c
    ld hl, $c1d6
    ld bc, $f4fe
    ld b, l
    ld d, c
    ld bc, $d913
    ld bc, $f4fe
    ld b, l
    ld b, c
    ld hl, $c1d6
    ld bc, $f4fe
    ld b, l
    ld d, c
    ld bc, $00d9
    sub $c3
    db $fd
    nop
    rst $08
    ld b, l
    call c, $d525
    ld d, c
    inc bc
    ld d, c
    ld bc, $0131
    ld sp, $0321
    ld hl, $80ff
    dec bc
    ld b, [hl]
    ld bc, $461b
    ld [bc], a
    ld h, $46
    jp c, $7e00

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $0cd8
    and c
    db $fc
    ld [hl], $45
    pop hl
    ld [de], a
    inc h
    ret c

    inc c
    pop bc
    db $db
    ld [bc], a
    db $fc
    add l
    ld b, l
    ret c

    inc c
    dec h
    db $fc
    rst $08
    ld b, l
    ret nz

    jr c, jr_03d_4675

    ld bc, $46bd
    ld [bc], a
    scf
    ld b, a
    inc bc
    push hl
    ld b, a
    jp c, $7400

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    and $00
    ld bc, $0cd8
    or a
    call nc, $d535
    and b
    call nc, Call_03d_7530
    jr nc, jr_03d_46c1

    and l
    ld [hl], b
    and b
    db $d3
    scf
    rst $28
    rrca
    db $db
    ld bc, $89fe
    ld b, [hl]
    call nc, Call_03d_5323
    cp $89
    ld b, [hl]
    ld [hl], a
    db $fd
    ld [bc], a
    ld e, b
    ld b, [hl]
    db $db
    ld [bc], a
    cp $a0
    ld b, [hl]
    and e
    add e
    ld [hl], l
    jr nc, jr_03d_46c2

    ld [hl], l
    ld d, c
    scf

jr_03d_4675:
    daa
    db $db
    inc bc
    cp $a0
    ld b, [hl]
    inc hl
    ld d, e
    add l
    and b
    add b
    and l
    add c
    call c, Call_03d_7f87
    db $fd
    nop
    ld e, b
    ld b, [hl]
    call c, $d591
    ld [hl], c
    and c
    call nc, $d531
    and b
    ld [hl], b
    ld d, c
    and c
    call nc, $d521
    and b
    ld d, b
    ld sp, $c181
    add b
    jr nc, @+$01

    call c, $d587
    ld a, l
    jr nc, @+$72

    and a
    ld [hl], e
    and b
    sub b
    ld [hl], b
    and b
    sbc l
    ld d, b
    sub b
    rst $00
    call nc, $5033
    jr nc, @+$52

    jr nc, @+$2f

    push de
    and b
    call nc, Call_03d_5720
    rst $38
    pop hl
    ld [de], a
    inc [hl]
    db $db

jr_03d_46c1:
    inc bc

jr_03d_46c2:
    ret c

    inc c
    rst $10
    call nc, Call_03d_70a5
    and b
    db $d3
    dec [hl]
    call nc, $d3a0
    jr nc, jr_03d_474f

    db $db
    inc bc
    call c, $fea1
    ld de, $a347
    and e
    cp $11
    ld b, a
    dec [hl]
    db $db
    ld [bc], a
    ret nz

    db $d3

jr_03d_46e1:
    jr nz, jr_03d_46e1

    ld de, $a347
    and e
    cp $11
    ld b, a
    scf
    db $db
    inc bc
    cp $20
    ld b, a
    ld [hl], e
    ld d, e
    dec a
    call nc, $dcc1
    and a
    xor a
    db $db
    ld [bc], a
    cp $20
    ld b, a
    call nc, $d3a3
    inc hl
    dec a
    ld d, c
    call c, $3ba6
    ld bc, $03db
    call nc, $d3c0
    jr nz, @-$01

    nop
    ret nc

    ld b, [hl]
    db $d3
    ld sp, $d421
    jp $21d3


    call nc, $a3c1
    pop bc
    and c
    add c
    ld [hl], c
    rst $38
    call c, $a598
    ld [hl], b
    and b
    db $d3
    scf
    ccf
    call nc, $90c5
    ret nz

    db $d3
    ld d, a
    ld e, a
    call nc, $5085
    add b
    db $d3
    daa
    daa
    rst $38
    ret c

    inc c
    dec h
    push de
    ld a, a
    add hl, sp
    sub $a1
    pop bc
    push de
    ld hl, $f0ef
    ld sp, $d603

Call_03d_4747:
    and c
    push de
    ld hl, $d603
    and c
    pop bc
    inc bc

jr_03d_474f:
    add c
    and c
    ld bc, $23d5
    ld sp, $d603
    and c
    push de
    ld hl, $d603
    and c
    pop bc
    inc bc
    add c
    push de
    ld sp, $fd05
    ld [bc], a
    ld b, h
    ld b, a
    cp $9e
    ld b, a
    push de
    ld sp, $3101
    call nc, $0131
    push de
    ld sp, $3171
    and c
    ld bc, $a1d6
    push de
    ld d, c
    ld bc, $a1d6
    push de
    ld hl, $a1d6
    cp $9e
    ld b, a
    push de
    ld sp, $8101
    call nc, $0131
    push de
    ld sp, $5181
    ld sp, $3101
    and c
    ld bc, $a1d6

Jump_03d_4797:
    pop bc
    push de
    ld hl, $00fd
    ld b, h
    ld b, a
    push de
    ld sp, $3101
    call nc, $0131
    push de
    ld sp, $3171
    and c
    ld bc, $7131
    ld bc, $a1d6

Call_03d_47b0:
    push de
    ld sp, $a1d6
    push de

Call_03d_47b5:
    ld d, c
    ld bc, $d451
    ld d, c
    ld bc, $51d5
    sub c
    ld d, c
    pop bc
    ld bc, $9151
    ld bc, $c1d6
    push de

Call_03d_47c7:
    ld d, c
    sub $c1
    and c
    ld bc, $d5a1
    and c
    ld bc, $a1d6
    push de
    ld hl, $a1d6
    push de
    and c
    ld bc, $a1d6
    push de
    ld d, c
    ld bc, $a1d6
    push de
    ld hl, $a1d6
    rst $38
    db $e3
    inc b
    ret c

    inc c
    rst $08
    rst $08
    cp $0b
    ld c, b
    ld b, l
    ld b, c
    ld b, a
    cp $0b
    ld c, b
    ld b, l
    ld b, c
    ld b, e
    jr nz, @+$22

    jr nz, jr_03d_481b

    ld b, c
    add c
    ld sp, $8141
    ld b, c
    ld sp, $fd81
    db $10
    ei
    ld b, a
    db $fd
    nop
    db $eb
    ld b, a
    ld b, l
    ld b, c
    ld b, e
    ld sp, $fd41
    inc bc
    dec bc
    ld c, b
    rst $38
    ld b, b
    dec de
    ld c, b
    ld bc, $485d

jr_03d_481b:
    jp c, $7000

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    and $00
    ld bc, $d800
    inc c
    ld b, h
    call nc, Call_03d_5131
    ld [hl], e
    ld [hl], c
    and c
    db $d3

Call_03d_4830:
    inc sp
    db $fd
    ld [bc], a
    add hl, hl
    ld c, b
    call nc, Call_03d_7151
    sub e
    sub c
    pop bc
    db $d3
    ld d, e
    db $fd
    ld [bc], a
    dec [hl]
    ld c, b
    call nc, $3121
    ld d, e
    ld d, c
    add c
    db $d3
    inc hl
    db $fd
    ld [bc], a
    ld b, c
    ld c, b
    call nc, Call_03d_5131
    ld [hl], e
    ld [hl], c
    and c
    db $d3
    inc sp
    db $fd
    ld [bc], a
    ld c, l
    ld c, b
    db $fd
    nop
    ld h, $48
    db $db
    ld [bc], a
    pop hl
    jr jr_03d_4886

    ret c

    inc c
    add d
    call nc, Call_03d_5131
    ld [hl], e
    ld [hl], c
    and c
    db $d3
    inc sp
    ret c

    inc c
    ld h, d
    db $fd
    ld [bc], a
    ld h, l
    ld c, b
    ret c

    inc c
    add d
    call nc, Call_03d_7151
    sub e
    sub c
    pop bc
    db $d3
    ld d, e
    ret c

    inc c
    ld h, d
    db $fd
    ld [bc], a
    ld [hl], a
    ld c, b

jr_03d_4886:
    ret c

    inc c
    add d
    call nc, $3121
    ld d, e
    ld d, c
    add c
    db $d3
    inc hl
    ret c

    inc c
    ld h, d
    db $fd
    ld [bc], a
    adc c
    ld c, b
    ret c

    inc c
    add d
    call nc, Call_03d_5131
    ld [hl], e
    ld [hl], c
    and c
    db $d3
    inc sp
    ret c

    inc c

jr_03d_48a5:
    ld h, d
    db $fd
    ld [bc], a
    sbc e
    ld c, b
    db $fd
    nop
    ld h, d
    ld c, b
    ret nz

    cp d
    ld c, b
    ld bc, $497c
    ld [bc], a
    scf
    ld c, d
    inc bc
    push bc
    ld c, d
    jp c, $9c00

    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    ld [de], a
    inc h
    db $db
    ld bc, $0cd8
    or a
    call nc, $d671
    and b
    and b
    and b
    ld [bc], a
    call nc, $d651
    add b
    add b
    add b
    ld [bc], a
    call nc, $d631
    jr nc, jr_03d_490c

    jr nc, jr_03d_48de

jr_03d_48de:
    push de
    jr nc, jr_03d_4911

    ret nz

    add b
    jr nc, jr_03d_48a5

    call nc, $d520
    and b
    ld d, b
    call nc, $d550
    xor e
    ld [hl], c
    and c
    add b
    ld bc, $5150
    ld de, $11d4
    push de
    pop bc
    and c
    add c
    ld [hl], a
    and e
    ld [hl], c
    and c
    ld d, b
    nop
    ld d, b
    ld [hl], b
    add e
    call nc, $d511
    pop bc
    and c
    call nc, $3511

jr_03d_490c:
    push de
    and c
    ld [hl], c
    ld d, c
    add c

jr_03d_4911:
    and c
    ret nz

    ld bc, $8380
    call nc, $0150
    db $10
    ld de, $c0d5
    or b
    xor e
    ld [hl], c
    and c
    call nc, $d511
    add b
    call nc, Call_03d_5110
    ld de, $1051
    ld d, b
    add e
    dec [hl]
    push de
    and b
    ld [bc], a
    and b
    nop
    and b
    call nc, $8372
    ld [hl], e
    ld d, e
    inc de
    jr nc, jr_03d_493c

jr_03d_493c:
    jr nc, @+$52

    ld bc, $c3d5
    ld [hl], c
    ld sp, $b071
    and b
    add b
    ld h, b
    call nc, $1033
    push de
    or b
    and b
    add b
    call nc, Call_03d_7553
    push de
    and b
    ld [bc], a
    and b
    nop
    and b
    call nc, $a372
    add e
    ld [hl], e
    ld d, e
    jr nc, @-$29

    ret nz

    ld [hl], b
    call nc, $7350
    ld d, b
    db $10
    push de
    add b
    call nc, $8370
    and b
    add b
    ld [hl], b
    ld d, b
    and e
    db $d3
    inc sp
    call nc, $80a0
    ld [hl], b
    ld d, b
    db $fd
    nop
    ret


    ld c, b
    db $db
    ld bc, $f0ef
    ret c

    inc c
    jp $31d6


    rst $10
    jr nc, jr_03d_49b8

    ld sp, $d6a0
    ld [hl], b
    ld de, $10d7
    db $10
    ld de, $80d6
    ld d, b
    rst $10
    add c
    rst $10
    add b
    add b
    add c
    rst $10
    add b
    add b
    and e
    sub $a1
    push de
    db $10

jr_03d_49a2:
    jr nz, jr_03d_49a2

    jp hl


    ld c, c
    push de
    ld d, c
    db $10

jr_03d_49a9:
    jr nz, jr_03d_49a9

    jp hl


    ld c, c
    push de
    db $10
    ld d, b

Call_03d_49b0:
    add b
    call nc, $dc10
    jp nc, $15fe

Call_03d_49b7:
    ld c, d

jr_03d_49b8:
    rst $10
    ld [hl], b
    ret nz

    ld [hl], c
    sub $71
    rst $10
    pop bc
    or e
    or c
    ld h, b
    ld h, b
    add b
    sub $10
    rst $10
    add c
    sub $81
    ld d, c
    cp $15
    ld c, d
    rst $10
    add b
    sub $10
    rst $10
    add c
    sub $51
    ld de, $3133
    rst $10
    and b
    and b
    and b
    sub $30
    rst $10
    and c
    sub $71
    ld sp, $00fd
    add b
    ld c, c
    push de
    ld [hl-], a
    sub $32
    ld sp, $3030
    ld sp, $31d5
    sub $a1
    push de
    ld [de], a
    sub $12
    ld de, $1010
    ld de, $51d5
    db $10
    jr nz, @+$34

    sub $32
    ld sp, $3030
    ld sp, $31d5
    sub $a1
    push de
    ld [de], a
    sub $12
    ld de, $1010
    ld de, $d6ff
    inc sp
    ld sp, $a0d7
    and b
    and b
    sub $30
    rst $10
    and c
    sub $a1
    ld sp, $1113
    rst $10
    add b
    add b
    add b
    sub $10
    rst $10
    add c
    sub $81
    ld de, $c1d7
    ld bc, $70c1
    ld [hl], b
    rst $38
    pop hl
    inc d
    inc hl
    rst $28
    rst $38
    ret c

    inc c
    inc d
    jp nc, $d431

    jr nc, jr_03d_4a74

    jr nc, jr_03d_4a46

jr_03d_4a46:
    db $d3
    and b
    jp nc, $1130

    call nc, $1010
    stop
    db $d3
    and b
    jp nc, $d310

    pop bc
    push de
    add b
    add b
    add b
    nop
    db $d3
    ret nz

    ret nz

    jp $23d2


    db $d3
    dec sp
    call nc, $d3a1
    ld sp, $0150
    db $10
    inc de
    add e
    ld d, e
    dec sp
    call nc, $d3a1
    ld sp, $0010

jr_03d_4a74:
    db $10
    jr nc, @+$59

    inc bc
    ld a, e
    ld d, c
    ld [hl], c
    add b
    ld bc, $5350
    jp nc, $0110

    db $d3
    add b
    add e
    ld a, e
    ld d, c
    ld [hl], c
    add c
    ld d, b
    add b
    jp nc, $d317

    jp $13dc


    cp $b3
    ld c, d

jr_03d_4a94:
    ld bc, $d2a1
    ld sp, $a1d3
    jp nc, $d313

    or e
    and e
    add e
    cp $b3
    ld c, d
    and b
    nop
    and b
    ret nz

    jp nc, $3013

    nop
    jr nc, jr_03d_4afd

    ld [hl], a
    ld d, e
    db $fd
    nop
    inc a
    ld c, d
    db $d3
    and l
    jp nc, $d335

    and e
    jp nc, $d313

    jp $83a3


    ld [hl], b
    nop
    ld [hl], b
    add b
    and e
    rst $38
    db $e3
    inc b
    ret c

    inc c
    ld sp, $2020
    jp $2031


    jr nz, jr_03d_4a94

    ld sp, $2020
    ld sp, $2020
    or b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_03d_4afd

    jr nc, jr_03d_4b0f

    ret c

    ld b, $35
    dec [hl]
    inc sp
    ld sp, $3331
    jr nz, jr_03d_4b09

    jr nz, jr_03d_4b0b

    jr nz, jr_03d_4b0d

    jr nz, jr_03d_4b0f

    dec [hl]
    dec [hl]
    inc sp
    ld sp, $3331
    rst $00
    db $fd
    inc b
    pop hl
    ld c, d
    ld b, e
    ld [hl], e
    inc sp

jr_03d_4afd:
    ld b, c
    ld sp, $3141
    ld b, e
    inc sp
    ld [hl], e
    db $fd
    ld [$4afa], sp
    db $fd

jr_03d_4b09:
    nop
    rst $00

jr_03d_4b0b:
    ld c, d
    add b

jr_03d_4b0d:
    dec d
    ld c, e

jr_03d_4b0f:
    ld bc, $4ba1
    ld [bc], a
    ld a, [hl+]
    ld c, h
    jp c, $bc00

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc h
    and $00

Call_03d_4b1f:
    ld bc, $0fef
    db $db
    ld [bc], a
    ret c

    inc c
    ld a, b
    push de
    res 4, b
    jr nc, @+$72

    and b
    bit 0, b
    add b
    ret nz

    call nc, Call_03d_5340
    inc sp
    inc de
    push de
    and e
    call c, $8777
    call c, Call_03d_7378
    and e
    res 4, b
    jr nc, jr_03d_4bb3

    and b
    add c
    pop bc
    call nc, $8351
    ld [hl], c
    add c
    and c
    ld d, c
    ld sp, $5111
    ld [hl], c
    ld d, c
    ld sp, $d511
    rst $00
    call c, $c777
    db $db
    inc bc
    call c, $8192
    ld d, c
    add c
    ld d, c
    add c
    ld b, c
    add c
    ld b, c
    call c, $805f
    and b
    ret nz

    call nc, $3110
    add e
    ld sp, $d511
    pop bc
    db $fd
    ld [bc], a
    ld e, c
    ld c, e
    call c, $d43f
    inc de
    push de
    jp $83a3


    ld [hl], e
    inc sp
    ld d, e
    call c, $1072
    ld d, b
    add b
    call nc, $3010
    and b
    db $d3
    ld sp, $62dc
    ld sp, $22dc
    ld sp, $2fdc
    push de
    inc sp
    ld d, e
    add l
    and b
    add b
    call c, Call_03d_771f
    db $fd
    nop
    ld [hl+], a
    ld c, e
    pop hl
    ld [de], a
    ld b, h
    db $db
    ld [bc], a
    rst $28

Call_03d_4ba7:
    ldh a, [$d8]
    inc c
    adc b
    rst $10
    add c
    pop bc
    sub $31
    add l
    ld [hl], e
    rst $10

jr_03d_4bb3:
    add c
    pop bc
    sub $31
    add l
    rst $10
    jp $11d6


    rst $10
    add c
    pop bc
    sub $13
    ld sp, $7151
    add c
    ld sp, $3303
    ld [hl], e
    rst $10
    add c
    pop bc
    sub $31
    add l
    ld [hl], e
    ld d, c
    ld sp, $d751
    jp $31d6


    ld d, c
    ld [hl], c
    add a
    and a
    add c
    ld sp, $d581
    inc sp
    sub $c1
    push de
    ld de, $dc31
    and d
    push de
    ld d, c
    sub $11
    push de
    ld d, c
    sub $11
    push de
    ld b, c
    sub $11
    push de
    ld b, c
    sub $11
    call c, $8593
    add b
    add d
    ld sp, $fd83
    ld [bc], a
    push hl
    ld c, e
    ld de, $53d5
    sub $10
    push de
    ld [de], a
    sub $11
    ld d, c
    ld de, $d531
    inc sp
    sub $30
    add d
    ld d, c
    add c
    ld d, c
    call c, Call_03d_731f
    call c, $7388
    jp $a183


    ld sp, $3381
    ld de, $c1d7
    and c
    db $fd
    nop
    xor b
    ld c, e
    pop hl
    inc d
    inc h
    ret c

    inc c
    db $10
    jp nc, $1131

    db $d3
    pop bc
    and c
    jp nc, Jump_03d_5181

    ld [hl], c
    ld d, c
    dec [hl]
    db $d3
    pop bc
    add b
    nop
    add b
    nop
    and b
    nop
    ret nz

    nop
    jp nc, $0117

    db $d3
    ld [hl], c
    add c
    and c
    push bc
    jp nc, $d310

    ret nz

    and a
    jp nc, $1131

    db $d3
    pop bc
    jp nc, $8031

jr_03d_4c5b:
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    add b
    nop
    ld d, l
    jr nc, jr_03d_4c65

jr_03d_4c65:
    scf
    ld de, $c1d3
    and c
    add c
    jp nc, $1131

    db $d3
    pop bc
    and c
    add a
    ld bc, $a181
    pop bc
    jp nc, $3517

    ld de, $c7d3
    ld bc, $a181
    pop bc
    jp nc, $0111

    inc de
    dec [hl]
    db $10
    jr nc, jr_03d_4c5b

    rst $00
    ld bc, $a1c1
    add c
    and a
    ld d, e
    jp $83a7


    ld d, e
    halt
    add d
    nop
    jp nz, $c700

    and a

jr_03d_4c9b:
    db $fd
    nop
    dec l
    ld c, h
    add b
    xor c
    ld c, h
    ld bc, $4d31
    ld [bc], a
    add d
    ld c, l
    inc bc
    jp c, $a400

    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    ld b, $25
    db $db
    ld bc, $0cd8
    sub h
    rlca
    push de
    ret nz

    call nc, Call_03d_4020
    ld d, b
    jr nz, jr_03d_4d01

    ld d, b
    ld [hl], b
    ld b, l
    jr nz, jr_03d_4c9b

    ret nz

    ld [hl], b
    sub b
    ld [hl], b
    nop
    ld [hl], b
    nop
    and b
    or b
    pop bc
    ld [hl], b
    sub b
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    sub b
    ld [hl], b
    nop
    or e
    call nc, $2045
    push de
    ret nz

    sub b
    ret nz

    ld b, b
    nop
    ld b, b
    nop
    or b
    ret nz

    ld [hl], b
    or b
    ld b, b
    nop
    ld b, b
    nop
    ld [hl], b
    or b
    ld b, b
    nop
    ld b, b
    nop
    or e
    ld d, c
    sub $c0
    push de
    ld d, b
    sub c
    ld d, b
    sub b
    ret nz

    call nc, $d520

jr_03d_4d01:
    ret nz

    call nc, $d520
    jp $4071


    ld [hl], b
    pop bc
    ld [hl], b
    ret nz

    call nc, $5040
    ld b, b
    ld d, b
    ld b, e
    push de
    or c
    call nc, Call_03d_5121
    ld [hl], c
    ld hl, $7151
    ld d, c
    ld hl, $b0d5
    nop
    ret nz

    nop
    call nc, RST_20
    ld b, b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    db $fd
    nop
    jp $e14c


    ld [$db24], sp
    inc bc
    ret c

    inc c
    and a
    rst $28
    rst $38
    push de
    ret nz

    call nc, Call_03d_4020
    ld d, b
    jr nz, jr_03d_4d83

    ld d, b
    ld [hl], b
    ld b, b
    ld d, b
    ld [hl], b
    sub b
    ld d, b
    ld [hl], b
    sub b
    or b
    push bc
    or b
    sub b
    ld [hl], l
    ld h, b
    ld [hl], b
    sub e
    ld [hl], a
    ld [hl], e
    sub l
    ld [hl], b
    ld d, b
    ld b, l
    jr nc, @+$42

    ld d, e
    ld b, a
    ld b, e
    ld d, l
    push de
    ret nz

    call nc, $9750
    ld [hl], l
    ld b, b
    ld [hl], b
    rst $00
    or e

jr_03d_4d6a:
    pop bc
    or c
    sub e
    or c
    sub c
    ld [hl], c
    jr nz, jr_03d_4d72

jr_03d_4d72:
    ld b, b

jr_03d_4d73:
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    add b
    nop
    sub b
    nop
    or b
    nop
    db $fd
    nop
    ld c, l
    ld c, l
    pop hl

jr_03d_4d83:
    ld b, $38
    ret c

    inc c
    dec h
    rst $28
    ldh a, [rTAC]
    push de
    ld [hl], b
    ld d, b
    ld b, b
    jr nz, jr_03d_4de1

    ld b, b
    jr nz, jr_03d_4d6a

    or b
    push bc
    push de
    ld b, b
    ld [hl], b
    push bc
    ld b, b
    jr nz, jr_03d_4d73

    jp $c7d5


    call nc, $d543
    sub l
    ld b, b
    sub b
    sub $95
    push de
    ld b, b
    sub b
    ld b, l
    ld [hl], c
    or c
    sub c
    ld [hl], c
    ld b, c
    ld d, c
    inc bc
    ld d, b
    ld d, b
    ld d, b
    nop
    ld d, b
    nop
    jp $0371


    ld [hl], b
    ld [hl], b
    sub $c0
    nop
    ret nz

    nop
    push de
    jp $d471


    ld [hl], c
    push de
    ld d, c
    call nc, $d551
    ld hl, $21d4
    sub $b1
    push de
    or c
    sub $71
    push de
    or b
    nop
    sub b
    nop
    ld [hl], b
    nop
    ld d, b
    nop
    ld b, b
    nop

jr_03d_4de1:
    jr nz, jr_03d_4de3

jr_03d_4de3:
    sub $b0
    nop
    db $fd
    nop
    sub l
    ld c, l
    add b
    di
    ld c, l
    ld bc, $4e7e
    ld [bc], a
    push af
    ld c, [hl]
    jp c, Jump_03d_7600

    push hl
    ld [hl], a
    pop hl
    ld [de], a
    inc [hl]
    and $00
    ld bc, $f0ef
    db $db
    inc bc
    ret c

    inc c
    sbc b
    sub $70
    ret nz

    push de
    ld b, b
    ld [hl], b
    xor a
    sub a
    call c, $9797
    call c, $fe91
    ld b, d
    ld c, [hl]
    cp $42
    ld c, [hl]
    cp $4d
    ld c, [hl]
    cp $4d
    ld c, [hl]
    db $fd
    ld [bc], a
    db $10
    ld c, [hl]
    cp $58
    ld c, [hl]
    cp $58
    ld c, [hl]
    cp $6c
    ld c, [hl]
    cp $6c
    ld c, [hl]
    reti


    ld [bc], a
    cp $58
    ld c, [hl]
    cp $58
    ld c, [hl]
    reti


    nop
    cp $6c
    ld c, [hl]
    cp $6c
    ld c, [hl]
    db $fd
    nop
    ld [hl+], a
    ld c, [hl]
    sub $c1
    push de
    ld d, c
    sub c
    ld d, c
    pop bc
    ld d, c
    sub c
    ld d, c
    rst $38
    sub $c1
    push de
    ld b, c
    ld [hl], c
    ld b, c
    pop bc
    ld b, c
    ld [hl], c
    ld b, c
    rst $38
    sub $a1
    push de
    ld hl, $2051
    ld d, b
    ld hl, $92dc
    and c
    call c, $2191
    call c, Call_03d_5192
    call c, $ff91
    sub $c0
    push de
    ld d, b
    call c, $9392
    ld d, e
    call c, Call_03d_5091
    sub b
    call c, $c392
    call c, $ff91
    pop hl
    ld [de], a
    inc [hl]
    db $db
    inc bc
    ret c

    inc c
    xor b
    push de
    ret nz

    call nc, Call_03d_7040
    or b
    rst $08
    call c, $c9a7
    db $db
    ld [bc], a
    call c, $d5b2
    pop bc
    call nc, $4121
    ld d, e
    ld b, c
    inc hl
    call c, $c191
    db $d3
    ld hl, $5341
    ld b, c
    inc hl
    call c, $d5b2
    pop bc
    and c
    sub c
    and e
    ret nz

    nop
    jp $91dc


    call nc, $a1c1
    sub c
    and e
    pop bc
    jp $02fd


    sub d
    ld c, [hl]
    dec b
    call c, $25b4
    push de
    and b
    call nc, Call_03d_5520
    jr nz, @+$52

    ld [hl], e
    ld d, e
    ld b, e
    inc hl
    push de
    push bc
    sub b
    ret nz

    call nc, $dc57
    add d
    push bc
    sub b
    ret nz

    call c, $d383
    ld d, a
    call c, $d5b4
    and l
    ld [hl], b
    and b
    call nc, Call_03d_5347
    ld b, e
    inc hl
    inc de
    push de
    push bc
    sub b
    ret nz

    call nc, $d555
    ret nz

    call nc, $9f50
    db $fd
    nop
    cp a
    ld c, [hl]
    rst $28
    rrca
    ret c

    inc c
    inc d
    inc bc
    push de
    ld d, c
    ld bc, $50d4
    nop
    push de
    and c
    ld bc, $c1d6
    push de
    ret nz

    nop
    ld d, c
    cp $3d
    ld c, a
    cp $3d
    ld c, a
    cp $3d
    ld c, a

Call_03d_4f13:
    cp $4c
    ld c, a
    cp $4c
    ld c, a
    db $fd
    ld [bc], a
    dec c
    ld c, a
    cp $5a
    ld c, a
    cp $5a
    ld c, a
    cp $69
    ld c, a
    cp $69
    ld c, a
    reti


    ld [bc], a
    cp $5a
    ld c, a
    cp $5a
    ld c, a
    reti


    nop
    cp $69
    ld c, a
    cp $69
    ld c, a
    db $fd
    nop
    dec e
    ld c, a
    ld d, c
    ld bc, $50d4
    nop
    push de
    sub c
    ld bc, $c1d6
    push de
    ret nz

    nop
    ld d, c
    rst $38
    sub $c1
    ld bc, $40d4
    nop
    push de
    ld b, c
    ld bc, $c071
    nop
    ld b, c
    rst $38
    sub $a1
    ld bc, $a0d5
    nop
    sub $a1
    ld bc, $51d5
    and b
    nop
    ld hl, $d6ff
    sub c
    ld bc, $90d5
    nop
    sub $91
    ld bc, $51d5
    sub b
    nop
    sub $c1
    rst $38
    ret nz

    add l
    ld c, a
    ld bc, $5010
    ld [bc], a
    add [hl]
    ld d, b
    inc bc
    ld b, $51
    jp c, $7000

    push hl
    ld [hl], a
    db $db
    ld bc, $00e6
    ld bc, $12e1
    dec d
    rst $28
    rrca
    ret c

    inc c
    or d
    call nc, $d510
    or b
    sub c
    or b
    sub b
    ld [hl], c
    ld h, l
    call c, $95b7
    call c, $b3b2
    ld h, c
    sub e
    call c, $99a0
    call c, $97a5
    call c, Call_03d_77a6
    call c, Call_03d_63b5
    ld b, c
    ld h, l
    ld h, c

Call_03d_4fb7:
    add c
    sub e
    or e
    sub c
    add e
    call c, Call_03d_61a0
    call c, Call_03d_6fa7
    call c, $0166
    ld h, c
    add e
    call c, $93b6
    call nc, $d513
    or e
    sub c
    or l
    call c, $b1b4
    call nc, $2111
    ld hl, $4141
    ld hl, $dc15
    or a
    push de
    cp e
    sub c
    add c
    sub c
    cp c
    jp $15d4


    push de
    or l
    call nc, $1131
    push de
    or l
    adc c
    or l
    sub l
    call nc, $d511
    or c
    sub a
    ld h, l
    ld de, $b2dc
    ld h, l
    call c, $93b7
    ld [hl], c
    ld h, c
    ld b, c
    db $fd
    inc bc
    rst $30
    ld c, a
    call c, Call_03d_61b2
    sub e
    call c, $95b7
    ld [hl], e
    db $fd
    nop
    or c
    ld c, a
    db $db
    inc bc
    pop hl
    ld [$ef36], sp
    ldh a, [$d8]
    inc c
    jp nz, Jump_03d_71d4

    ld h, c
    ld b, c
    ld hl, $dc15
    rst $00
    ld b, l
    call c, Call_03d_63c2
    ld de, $dc43
    or b
    ld c, c
    call c, Call_03d_4fb7
    call c, $1bc7
    call c, $11c4
    ld sp, $3343
    ld de, $dc33
    or b
    dec d
    call c, $17b7
    call c, $d5b4
    and c
    add c
    and c
    call c, $d4c6
    dec d
    call c, Call_03d_47c7
    ld l, e
    call c, Call_03d_61c4
    add c
    sub c
    sub c
    add c
    add c
    ld h, c
    call c, $85c4
    call c, Call_03d_6fb0
    call c, Call_03d_6fb7
    call c, $8bb0
    ld h, e
    ld e, a
    ld l, e
    ld b, e
    call c, $37c7
    call c, $11c4
    ld sp, $3040
    ld b, c
    call c, $15c2
    call c, $45c7
    call c, Call_03d_63c2
    db $fd
    inc bc
    ld [hl], b
    ld d, b
    ld de, $dc43
    rst $00
    ld c, c
    db $fd
    nop
    ld l, $50
    ret c

    inc c
    jr z, @+$03

    call nc, $d511
    sub c
    ld [hl], c
    ld h, e
    sub c

Call_03d_5091:
    ld b, e
    ld de, $4131
    sub c
    ld [hl], c
    ld h, c
    ld c, c
    ld c, c
    ld de, $7141
    cp $ef
    ld d, b
    db $fd

Call_03d_50a1:
    inc bc
    sbc l
    ld d, b
    ld h, e
    ld de, $9143
    add c
    ld [hl], c
    cp $f7
    ld d, b
    or c
    ld h, c
    add c
    sub e
    ld h, c
    add c
    sub b
    and b
    cp $ff
    ld d, b
    or c
    ld h, c
    add c
    sub e
    ld h, c
    or c
    pop bc
    call nc, $d513
    add c
    or e
    add c
    and c
    or c
    call nc, $d513
    add c
    or e
    add c
    and c
    or b
    and b
    cp $f7
    ld d, b
    cp $ff
    ld d, b
    cp $ef
    ld d, b
    cp $ef
    ld d, b
    ld h, c
    ld de, $4331
    ld de, $4031
    ld d, b
    ld h, c
    ld de, $4331
    ld de, $5171
    db $fd
    nop
    sbc l
    ld d, b
    ld h, c
    ld de, $4331
    ld de, $4131
    rst $38
    or c
    ld h, c
    add c
    sub e
    ld h, c
    add c
    sub c
    rst $38
    or e
    ld h, c
    sub e
    ld h, c
    add c
    sub c
    rst $38
    rst $28
    ldh a, [$e3]
    inc bc
    ret c

    inc c
    rlca
    rrca
    ld b, c
    inc sp

Call_03d_5110:
    dec [hl]

Call_03d_5111:
    inc sp
    ld b, e
    ld b, e
    ld sp, $3131
    ld sp, $3143
    ld b, e
    ld b, c
    inc sp
    ld b, e
    ld sp, $4143

Call_03d_5121:
    ld sp, $fd31
    nop
    jr jr_03d_5178

    ret nz

    inc sp
    ld d, c
    ld bc, $5153
    ld [bc], a
    ld l, d
    ld d, c
    inc bc

Call_03d_5131:
    ld a, d
    ld d, c
    jp c, $7000

    push hl

Jump_03d_5137:
    ld [hl], a
    db $db
    nop
    and $00
    ld bc, $08e1
    inc d
    rst $28
    ldh a, [$d8]

jr_03d_5143:
    inc c
    or d
    sub $93
    sub e
    call c, $d582
    sub c
    sub c
    sub c
    sub c
    db $fd
    nop
    or c
    ld c, a
    db $db

Call_03d_5154:
    ld bc, $06e1
    dec [hl]
    rst $28
    rrca
    ret c

    inc c
    jp nz, $93d4

    sub e
    call c, $91a2

Call_03d_5163:
    sub c
    sub c
    sub c
    db $fd
    nop
    ld l, $50
    ret c

    inc c
    jr z, jr_03d_5143

    ld b, c
    ld bc, $0141
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    db $fd
    nop

jr_03d_5178:
    sbc l
    ld d, b
    db $e3
    inc bc
    rst $28
    rrca
    ret c

    inc c
    inc sp

Call_03d_5181:
Jump_03d_5181:
    inc sp
    ld b, c
    ld sp, $3131
    db $fd
    nop
    jr @+$53

    add b
    sub h
    ld d, c
    ld bc, $5317
    ld [bc], a

Call_03d_5191:
    inc c

Call_03d_5192:
    ld d, h
    inc bc
    jp c, Jump_03d_6c00

    push hl
    ld [hl], a
    ret c

    inc c
    and a
    rst $28
    rrca
    db $db
    ld [bc], a
    pop hl
    db $10
    inc h
    call c, $d573
    ld h, b

Call_03d_51a7:
    nop
    ld b, b
    nop
    call c, Call_03d_6073
    nop
    ld b, b
    nop
    sub b
    nop
    ld b, b
    nop
    call c, Call_03d_6073

Call_03d_51b7:
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld b, b
    call c, $0093
    sub b
    nop
    ld b, b
    nop
    call c, $60a7
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld b, b
    call c, $00b7
    or c
    sub c
    ld h, c

Jump_03d_51d3:
    ld sp, $08d8

Jump_03d_51d6:
    rst $00
    sub $b1
    push de
    ld sp, $dc61
    rst $30
    sub c
    or c
    call nc, $db31
    nop
    cp $33
    ld d, d
    db $db
    ld bc, $08d8
    and a
    cp $33
    ld d, d
    cp $93
    ld d, d
    call nc, $d511
    add c
    ld b, c
    ld de, $8141
    call nc, Call_03d_4111
    add c
    db $db
    ld bc, $06d8
    sub a
    cp $93
    ld d, d
    call c, $95a8
    and l
    or d
    call nc, $dc32
    xor b
    db $db
    ld bc, $d9fe
    ld d, d
    push de
    ld b, a
    sub a
    ld b, a
    db $db
    inc bc
    ret c

    ld [$fe98], sp
    reti


    ld d, d
    ret c

    inc c
    and a
    push de
    ld c, e
    sub $63
    ld b, e
    ld h, e
    sub e
    ld b, c
    sub c
    pop bc
    push de
    ld b, c
    db $fd
    nop
    sbc [hl]
    ld d, c
    ret c

    inc c
    and a
    push de
    ld b, e
    or b
    nop
    call nc, VBlankInterrupt
    push de
    or b
    nop
    call nc, VBlankInterrupt
    push de
    ld b, e
    or b
    nop
    call nc, VBlankInterrupt
    push de
    or b
    nop
    call nc, VBlankInterrupt
    push de
    inc hl
    or b
    nop
    call nc, RST_20
    push de
    or b
    nop
    call nc, RST_20
    push de
    inc hl
    or b
    nop
    call nc, RST_20
    push de
    or b
    nop
    call nc, RST_20
    push de
    inc de
    sub b
    nop
    call nc, RST_10
    push de
    sub b
    nop
    call nc, RST_10
    push de
    inc de
    sub b
    nop
    call nc, RST_10
    push de
    sub b
    nop
    call nc, RST_10
    ret c

    ld b, $a7
    push de
    or b
    adc $d4
    ld b, e
    push de
    jp Jump_03d_6797


    inc hl
    inc sp
    rst $38
    call nc, Call_03d_439f
    inc de
    push de
    sub e
    call nc, $3313
    ld b, e
    add e
    sub e
    ret c

    ld [$b192], sp
    ld h, c
    ld sp, $3161
    push de
    or c
    call nc, $d531
    or c
    ld h, c
    or c
    ld h, c
    ld sp, $b1d6
    push de
    ld sp, $9161
    or c
    call nc, $d831
    ld b, $97
    jr nz, jr_03d_52fd

    add e
    inc sp
    push de
    or e
    call nc, Call_03d_6333
    add e
    and e
    or e
    ret c

    ld [$d392], sp
    ld de, $81d4
    ld b, c
    add c
    ld b, c
    ld de, $1141
    push de
    add c
    rst $38
    push de
    or d
    add d
    or d
    call nc, $d848
    ld b, $58
    jr nc, @+$22

    db $10
    push de
    ret nz

    or b
    and b
    sub b
    add b
    call c, $43a8
    inc sp
    ld b, e
    add e
    and e
    sub e
    add e
    ld [hl], e
    ld h, e
    ld d, e
    add a
    daa
    or a
    and b
    or d
    sub e

jr_03d_52fd:
    call nc, Call_03d_6b13
    call c, $4058

Jump_03d_5303:
    jr nc, jr_03d_5325

    db $10
    push de
    ret nz

    or b
    and b
    add b
    call c, $97a8
    call nc, $d543
    jp Jump_03d_4797


    sub $c7
    rst $38
    ret c

    inc c
    jp nz, $f0ef

    db $db
    ld [bc], a
    pop hl
    inc d
    inc hl
    rst $10
    or e

Call_03d_5323:
    sub $b0

jr_03d_5325:
    ld [bc], a
    or b
    ld [bc], a
    db $fd
    inc bc
    ld hl, $d753
    or e
    sub $60
    ld [bc], a
    or b
    ld [bc], a
    ld b, e
    add c
    sub c
    or e
    ld b, e
    add c
    sub c
    or e
    inc hl
    add c
    sub c
    or e
    inc hl

Call_03d_5340:
    add c
    sub c
    or e
    inc de
    ld h, c
    add c
    sub e

Call_03d_5347:
    inc de
    ld h, c
    add c
    sub e
    rst $10
    jp Jump_03d_61d6


    add c
    sub c
    or c
    jp $93b3


    db $fd
    ld [bc], a
    inc sp
    ld d, e
    call c, $fec7
    or d
    ld d, e
    ld b, e
    inc sp
    inc hl
    cp $b2
    ld d, e
    inc sp
    ld b, e
    rst $10
    or e
    ret c

    ld b, $b8
    cp $d6
    ld d, e
    db $db
    ld bc, $b8dc
    cp $e8
    ld d, e
    db $db
    ld [bc], a
    cp $f3
    ld d, e
    db $db
    ld bc, $b8dc
    cp $04
    ld d, h
    push de
    rst $08
    call nc, $d927
    inc c
    db $db
    inc bc
    cp $d6
    ld d, e
    call c, $dbb8
    ld bc, $e8fe
    ld d, e
    db $db
    inc bc
    cp $f3
    ld d, e
    call c, $dbb8
    ld bc, $04fe
    ld d, h
    reti


    nop
    ret c

    inc c
    cp b
    call nc, $dbcb
    ld [bc], a
    or e
    sub e
    ld b, e
    sub e
    or e
    jp $00fd


    rla

Call_03d_53b1:
    ld d, e

Call_03d_53b2:
    rst $10
    sub e
    push de
    ld h, e
    ld b, e
    rst $10
    sub e
    push de
    ld b, e
    inc sp
    rst $10
    or e
    push de
    inc de
    sub $b3
    rst $10
    or e
    sub $93
    or e
    rst $10
    add e
    push de
    inc sp
    inc de
    rst $10
    add e
    sub $b3
    add e
    inc de

Jump_03d_53d2:
    push de
    ld h, e
    add e
    rst $38
    call nc, Call_03d_4363
    ld h, e
    adc e
    call c, Call_03d_7058
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_03d_5403

    db $10
    push de
    ret nz

    and b
    rst $38
    or [hl]
    call nc, $2f17
    inc de
    push de
    jp $1fd4


    add a
    rst $38
    ld [hl], b
    add d
    ld h, e
    add e
    sbc e
    call c, $8058
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_03d_5421

    push de
    ret nz

jr_03d_5403:
    rst $38
    call nc, $8317
    sub e
    or a
    sub a
    ld b, a
    rst $38
    rst $28
    rst $38
    ret c

    inc c
    dec d
    pop hl
    ld d, $23
    call nc, $d3bb
    dec de
    scf
    ld b, e
    ld h, e
    add e
    sub e
    call c, $bb12
    inc bc

jr_03d_5421:
    sub e
    add e
    ret c

    ld b, $12
    ld [hl], b
    adc [hl]
    sub e
    add e
    ld l, a
    call nc, $d8b7
    inc c
    ld [de], a
    db $d3
    sbc a
    add e
    ld h, e
    ret c

    ld b, $12
    ld d, b
    ld l, [hl]
    add e
    ld h, e
    ld c, a
    ld h, a
    ret c

    inc c
    inc d
    cp e
    inc bc
    sub e
    add e
    ret c

    ld b, $14
    ld [hl], b
    adc [hl]
    sub e
    add e
    ld l, a
    call nc, $d8b7
    inc c
    inc d
    db $d3
    sbc a
    add e
    ld h, e
    ret c

    ld b, $14
    ld d, b
    ld l, [hl]
    add e
    ld h, e
    ld c, a
    jp nc, $d847

    inc c
    inc de
    rra
    inc sp
    ld b, e
    ret c

    ld b, $13
    jr nc, jr_03d_54b8

    inc sp
    inc de
    db $d3
    ccf
    jp nc, $d837

    inc c
    inc de
    db $d3
    cp e
    ret c

    ld b, $13
    and b
    or [hl]
    jp nc, $3717

    ld l, a
    ld b, e
    inc sp
    ld c, a
    scf
    ret c

    inc c
    inc d
    dec de
    inc de
    inc sp
    ld b, e
    ret c

    ld b, $14
    jr nc, jr_03d_54dc

    inc sp
    inc de
    db $d3
    ccf
    jp nc, $d837

    inc c
    inc d
    db $d3
    cp e
    ret c

    ld b, $14
    and b
    or [hl]
    jp nc, $3717

    ret c

    inc c
    inc d
    ld l, e
    add a
    db $d3
    or e
    call c, $fe15
    ret z

    ld d, h
    sub $c3
    push de
    ld b, e
    ld h, e
    sub e
    or e
    jp $c8fe


    ld d, h

jr_03d_54b8:
    sub $c3
    push de
    ld b, e
    sub e
    set 2, [hl]
    set 2, l
    ld b, a
    sub $c3
    db $fd
    nop
    inc c
    ld d, h
    push de
    ld b, e
    add b
    ld [bc], a
    or b
    ld [bc], a
    ld b, e
    add b
    ld [bc], a
    or b
    ld [bc], a
    inc hl
    add b
    ld [bc], a
    or b
    ld [bc], a
    inc hl
    add b
    ld [bc], a
    or b

jr_03d_54dc:
    ld [bc], a
    inc de
    ld h, b
    ld [bc], a
    sub b
    ld [bc], a
    inc de
    ld h, b
    ld [bc], a
    sub b
    ld [bc], a
    rst $38
    ret nz

    db $f4
    ld d, h
    ld bc, $5652
    ld [bc], a
    inc hl
    ld d, a
    inc bc
    cp b
    ld d, a
    jp c, $c000

    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    jr @+$26

    db $db
    ld bc, $0cd8
    ld [hl], a
    ld bc, $4afe
    ld d, l
    cp $4a
    ld d, l
    ret c

    ld b, $67
    cp $3a
    ld d, [hl]
    ret c

    inc c
    ld [hl], a
    rrca
    sub $b0
    push de
    jr nc, jr_03d_5579

jr_03d_5519:
    sub b
    jr nc, @+$62

    or b
    ret c

    ld b, $67

Call_03d_5520:
    call nc, $2030
    jr nc, jr_03d_5525

jr_03d_5525:
    jr nc, jr_03d_5527

jr_03d_5527:
    jr nz, jr_03d_5529

jr_03d_5529:
    jr nc, jr_03d_552d

    jr nc, jr_03d_552f

jr_03d_552d:
    jr nc, jr_03d_552f

jr_03d_552f:
    cp $3a
    ld d, [hl]
    call c, $d577
    ld d, b
    ld h, h
    ld b, e
    ld bc, $671b
    jr nz, jr_03d_5519

    sbc b
    ccf
    call c, $3677
    ret c

    inc c
    ld [hl], a
    inc bc
    db $fd
    nop
    inc b
    ld d, l
    sub $95
    push de
    ld h, c
    call c, Call_03d_6047
    sub b
    call c, Call_03d_6057
    sub b
    call c, Call_03d_6077
    sub b
    call c, Call_03d_6097
    sub b
    call c, $d677
    and l
    push de
    ld [hl], c

jr_03d_5564:
    call c, Call_03d_7047
    and b

jr_03d_5568:
    call c, Call_03d_7057
    and b
    call c, $7077
    and b
    call c, $7097
    and b
    call c, $d677
    sub l
    push de

jr_03d_5579:
    ld h, c
    call c, $d447
    db $10
    jr nz, @-$22

    ld d, a
    db $10
    jr nz, @-$22

    ld [hl], a
    db $10
    jr nz, jr_03d_5564

    sub a
    db $10
    jr nz, jr_03d_5568

    ld [hl], a
    sub $a5
    push de
    ld hl, $47dc
    call nc, Call_03d_4020
    call c, $2057
    ld b, b
    call c, $2077
    ld b, b
    call c, $2097
    ld b, b
    call c, $2177
    push de
    or c
    call nc, $d521
    or c
    call nc, $d521
    or c
    call nc, $d521

Call_03d_55b2:
    or c
    call nc, $d521
    and c

Call_03d_55b7:
    call nc, $d521
    and c
    call c, $d447
    jr nz, @+$42

    call c, $2057
    ld b, b
    call c, $2077
    ld b, b
    call c, $2097
    ld b, b
    call c, $1177
    push de
    sub c
    call nc, $d511
    sub c
    call nc, $1141
    ld b, c
    ld de, $d531
    or c
    call nc, $d531
    or c
    call c, $d457
    ld h, b
    ld b, b
    call c, $3067
    ld b, b
    call c, Call_03d_6077
    ld [hl], b
    call c, $9097
    or b
    call c, $2177
    push de
    or c
    call nc, $d521
    or c
    call nc, $d521
    or c
    call nc, $d521
    or c
    call nc, $d521
    and c
    call nc, $d521
    and c
    call c, $d447
    jr nz, jr_03d_5650

    call c, $2057
    ld b, b
    call c, $2077
    ld b, b
    call c, $2097
    ld b, b
    call c, $1177
    push de
    sub c
    call nc, $d511
    sub c
    call nc, $1141
    ld b, c
    ld de, $d531
    or c
    call nc, $d531
    or c
    call nc, $d531
    or c
    call nc, $d531
    or c
    rst $38
    rrca
    ld [bc], a
    call nc, $b0b0
    nop
    or b
    nop
    or b
    nop
    or c
    inc bc
    rrca
    ld [bc], a
    and b
    and b
    nop
    and b
    nop
    and b
    nop
    and c

jr_03d_5650:
    inc bc
    rst $38
    pop hl
    inc d
    inc h
    db $db
    ld bc, $0cd8
    and a
    ld bc, $f0ef
    ret c

    inc c
    and a
    cp $b8
    ld d, [hl]
    push de
    scf
    cp $b8
    ld d, [hl]
    ld bc, $a7dc
    call nc, Call_03d_7191
    ld h, c
    ret c

    ld b, $a7
    cp $f5
    ld d, [hl]
    push de
    ret nz

    call nc, $d514
    sub e
    ld bc, $b7d4
    sub c
    ld bc, $0171
    sub e
    ld d, b
    ld l, l
    call c, $8087
    sub b
    nop
    sub b
    nop
    add b
    nop
    sub b
    ld [bc], a
    sub b
    ld [bc], a
    sub b
    nop
    call c, $fea7
    push af
    ld d, [hl]
    push de
    ret nz

    call nc, $d514
    sub e
    ld bc, $d4bb
    rla
    push de
    and b
    pop hl
    nop
    nop
    call c, $bfb8
    pop hl
    inc d
    inc h
    call c, $bab7
    sub $41
    ld sp, $00fd
    ld e, l
    ld d, [hl]
    sub $25
    sub c
    push de
    daa
    sub $25
    and c
    push de
    daa
    sub $25
    sub c
    push de
    daa
    sub $25
    and c
    push de
    ld [hl], a
    rst $10
    ld [hl], l
    sub $21
    or a
    rst $10
    ld [hl], l
    sub $21
    and a
    rst $10
    ld h, l
    sub $11
    sub a
    rst $10
    or l
    sub $61
    push de
    scf
    rst $10
    ld [hl], l
    sub $21
    or a
    rst $10
    ld [hl], l
    sub $21
    and a
    rst $10
    ld h, l
    sub $11
    sub a
    rst $10
    or l
    sub $61
    rst $38
    call nc, Call_03d_6450
    ld [hl], e
    ld bc, $dc26
    add a
    db $d3
    ld d, b
    ld h, b
    nop
    ld h, b
    nop
    ld d, b
    nop
    ld h, c
    call c, $d5a7
    or c
    call nc, $d421
    ld d, b
    ld h, h
    ld [hl], e
    ld bc, $dc46
    add a
    db $d3
    jr nc, jr_03d_5757

    nop
    ld b, b
    nop
    jr nc, jr_03d_571c

jr_03d_571c:
    ld b, c
    call c, $d4a7

Call_03d_5720:
    ld sp, $ff21
    pop hl
    ld d, $24
    ret c

    inc c
    ld de, $90d4
    or b
    rst $28
    rst $38
    cp $56
    ld d, a
    db $d3
    cp l

Jump_03d_5733:
    call nc, $b090
    cp $56
    ld d, a
    db $d3
    or a
    call nc, $dc37
    dec d
    cp $8f
    ld d, a
    call nc, $d530
    ld h, d
    cp $8f
    ld d, a
    call nc, $d530
    ld h, b
    call c, $d411
    sub b
    or b
    db $fd
    nop
    ld l, $57
    db $d3

jr_03d_5757:
    rra
    dec l
    sub b
    or b
    jp nc, $291f

    ld de, $4121
    ld h, c
    ld b, c
    ld hl, $b9d3
    jp nc, Jump_03d_4161

    ld hl, $a8d3
    jp nc, $d230

    ld b, c
    ld hl, $d311
    sub e
    jp nc, Jump_03d_4193

    ld l, l
    jr nc, jr_03d_57ba

    ld h, c
    ld b, c
    ld hl, $b9d3
    jp nc, Jump_03d_4161

    ld hl, $a9d3
    jp nc, $2141

    ld de, $93d3
    or e
    jp nc, $ff11

    sub $72
    push de
    ld hl, $b300
    jr nz, jr_03d_5797

jr_03d_5797:
    or b
    ld [hl+], a
    sub $72
    push de
    ld hl, $a300
    jr nz, jr_03d_57a1

jr_03d_57a1:
    and b
    ld [hl+], a
    sub $62
    push de
    ld de, $9300
    stop
    sub b
    ld [de], a
    sub $b2
    push de
    ld h, c
    nop
    call nc, $d533
    ld h, b
    nop

Call_03d_57b7:
    rst $38
    db $e3
    inc bc

jr_03d_57ba:
    ret c

    inc c
    ld bc, $fd0f
    rla
    cp l
    ld d, a
    rlca
    or c
    ld sp, $30b0
    pop bc
    or c
    add b
    add b
    ld sp, $8080
    or c
    add b
    add b
    ld sp, $fdc1
    rlca
    ret z

    ld d, a
    or c
    add b
    add b
    ld sp, $8080
    or c
    ld b, b
    ld b, b
    jr nc, jr_03d_5812

    or b
    ld b, b
    db $fd
    nop
    cp l
    ld d, a
    ret nz

    db $f4
    ld d, a
    ld bc, $591d
    ld [bc], a
    ld [$035a], sp
    push hl
    ld e, d
    jp c, $a000

    push hl
    ld [hl], a
    db $db
    ld [bc], a
    rst $28
    rrca
    ret c

    inc c
    and c
    ld bc, $a1dc
    push de
    ld h, c
    call c, Call_03d_6161
    ld h, c
    call c, Call_03d_61a1
    call c, Call_03d_6161
    ld h, c
    ld h, c
    ld h, c

jr_03d_5812:
    db $fd
    ld [bc], a
    ld bc, $fe58
    adc h
    ld e, b
    rst $28
    ldh a, [$dc]
    and h
    sub c
    or b
    ld [bc], a
    call nc, $d813
    ld b, $a4
    add b
    sub d
    ld [hl], e
    ld b, c
    ld bc, $0fef
    cp $8c
    ld e, b
    rst $28
    ldh a, [$d8]
    ld b, $a4
    ld b, e
    inc de
    ld [bc], a
    ret nz

    call nc, $d51b
    or e
    ld [hl], e
    rst $28
    rrca
    cp $12
    ld e, c
    call c, $b3a3
    call nc, $0121
    ld de, $dc01
    and c
    push de
    inc hl
    and c
    dec c
    cp $12
    ld e, c
    call c, $d4a3
    db $10
    ld [hl+], a
    ld h, c
    ld bc, $0121
    call c, $d5a1
    add e
    or e
    add a
    call c, $b3a2
    call nc, $d523
    or e
    ld [hl], e
    daa
    ld [hl], e
    inc bc
    or e
    call nc, $d523
    or e
    add e
    inc hl
    inc bc
    add e
    inc bc
    call nc, Call_03d_4323
    inc hl
    push de
    sub e
    ld b, e
    inc hl
    sub $93
    rlca
    ret c

    inc c
    cpl
    push de
    sbc l
    ld bc, $00fd
    ld d, $58
    ret c

    inc c
    and c
    call nc, $dc61
    ld h, c
    ld h, c
    ld h, c
    call c, Call_03d_41a1
    call c, Call_03d_4161
    ld b, c
    call c, Call_03d_61a1
    call c, Call_03d_6161
    call c, $b1a1
    call c, $b161
    or c
    call c, $91a1
    call c, $9161
    sub c
    call c, $a1a1
    call c, $a161
    call c, $11a1
    call c, $1161
    ld de, $a1dc
    ld hl, $61dc
    ld hl, $2121
    ld hl, $a1dc
    ld b, c
    call c, Call_03d_4161
    ld b, c
    call c, $21a1
    call c, $2161
    ld hl, $0121
    call c, $d5a1
    ld h, c
    call c, Call_03d_6161
    ld h, c
    call c, Call_03d_71a1
    call c, Call_03d_7161
    ld [hl], c
    ld [hl], c
    ld [hl], c
    call c, Call_03d_61a1
    call c, Call_03d_6161
    ld h, c
    call c, Call_03d_41a1
    call c, Call_03d_4161
    ld b, c
    call c, $21a1
    call c, $2161
    call c, $11a1
    call c, $1161
    ld de, $a1dc
    sub $b1
    call c, $b161
    or c
    call c, $d5a1
    ld hl, $61dc
    ld hl, $dcff
    ld h, c
    sub a
    sub a
    call c, $a781
    call c, $a7a1
    rst $38
    pop hl
    ld [de], a
    inc hl
    db $db
    ld [bc], a
    rst $28
    ldh a, [$d8]
    inc c
    ld h, d
    nop
    call nc, $dc30
    or c
    ld b, c
    call c, Call_03d_4171
    ld b, c
    call c, $21b1
    call c, $2171
    ld hl, $51dc
    ld hl, $dc21
    or c
    ld de, $71dc
    ld de, $dc11
    or c
    ld hl, $71dc
    ld hl, $d821
    ld b, $b4
    ld h, [hl]
    db $db
    ld bc, $10d3
    cp $c7
    ld e, c
    inc hl
    ld de, $0220
    ret c

    ld b, $b4
    ld c, d
    rlca
    db $db
    ld bc, $10d3
    cp $c7
    ld e, c
    ld bc, $1121
    push de
    sub c
    ret c

    ld b, $b4
    ld [bc], a
    call nc, $9b80
    ld [hl], e
    ld h, e
    db $db
    nop
    jr nc, @+$44

    inc hl
    ld de, $9301
    inc bc
    ld [hl], e
    inc bc
    ld h, e
    ld b, e
    ld h, c
    ld bc, $0141
    daa
    dec bc
    jr nc, @+$44

    inc hl
    ld de, $9301
    inc bc
    and e
    inc bc
    db $d3
    inc de
    call nc, $d3c0
    ld [de], a
    ld hl, $1101
    ld bc, $63d4
    inc bc
    ld b, e
    inc bc
    inc hl
    db $db
    ld [bc], a
    ld h, e
    ld b, e
    inc hl
    ld h, e
    inc bc
    ld b, e
    inc bc
    inc hl
    ld h, e
    ld b, e
    inc hl
    ld h, e
    inc bc
    or e
    inc bc
    db $d3
    inc de
    ret c

    inc c
    or a
    call nc, Call_03d_439b
    call c, $1d1f
    ret c

    ld b, $b4
    db $db
    ld bc, $d391
    ld de, $00fd
    ld d, d
    ld e, c
    inc hl
    call nc, $0191
    db $d3
    ld de, $2701
    ld b, a
    ld h, c
    nop
    add b
    sbc e
    ld h, c

jr_03d_59d5:
    dec b
    ld b, a
    ld h, c
    nop
    db $10

jr_03d_59da:
    ret c

    inc c
    xor b
    pop hl
    nop
    nop
    daa
    call c, $e1a7
    ld [de], a
    inc hl
    cpl
    inc bc
    call c, $dbb4
    ld [bc], a
    push de
    or c
    call nc, RST_20
    ld [hl], a
    ld bc, $6171
    ld b, b
    nop
    dec h
    ld de, $1301
    jr nz, jr_03d_59d5

    ld b, $b4
    nop
    jr nc, jr_03d_59da

    inc c
    or a
    ld c, e
    call c, $ffb4
    rst $28
    rst $38
    pop hl
    ld b, $26
    ret c

    inc c
    dec h
    sub $90
    push de
    db $10
    jr nz, jr_03d_5a1a

    jr nz, jr_03d_5a1a

    jr nz, jr_03d_5a1a

jr_03d_5a1a:
    sub $93
    push de
    jr nz, jr_03d_5a23

    jr nz, jr_03d_5a23

    jr nz, jr_03d_5a23

jr_03d_5a23:
    sub e
    cp $86
    ld e, d
    sub e
    ld b, c
    cp $86
    ld e, d
    sub c
    ld bc, $fe71
    rst $08
    ld e, d
    or b
    nop
    call nc, RST_20
    ld h, c
    push de
    and e
    call nc, $0220
    ld h, b
    nop
    cp $cf
    ld e, d
    sub $b1
    push de
    ld h, b
    nop
    or b
    nop
    ld b, c
    sub $b1
    push de
    ld b, b
    ld [bc], a
    add c
    sub $70
    inc b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    push de
    ld hl, $d601
    ld h, b
    ld [hl], b
    add b
    inc b
    add b
    add b
    add b
    nop
    push de
    ld hl, $d601
    ld [hl], b
    add b
    sub b
    inc b
    sub b
    sub b
    sub b
    nop
    push de
    ld b, c
    ld bc, $70d6
    add b
    sub b
    inc b
    sub b
    sub b
    sub b
    nop
    push de
    ld b, c
    ld bc, $c0d6
    push de
    db $10
    db $fd
    nop
    inc h
    ld e, d
    jr nz, jr_03d_5a8c

    jr nz, jr_03d_5a8c

    jr nz, jr_03d_5a8c

jr_03d_5a8c:
    sub $93
    push de
    ld h, b
    inc b
    ld h, b
    nop
    stop
    ld h, e
    and c
    call c, $b015
    nop
    call c, $d425
    jr nz, jr_03d_5aa0

jr_03d_5aa0:
    ld h, b
    nop
    push de
    and e
    call nc, RST_20
    ld h, b
    nop
    push de
    sub e
    or b
    nop
    sub b
    nop
    add l
    inc bc
    ld [hl], b
    inc b
    ld [hl], b
    ld [bc], a
    ld [hl], b
    nop
    inc hl
    add b
    inc b
    add b
    ld [bc], a
    inc hl
    add b
    nop
    sub b
    inc b
    sub b
    nop
    ld b, b
    nop
    inc hl
    sub b
    nop
    sub b
    inc b
    sub b
    nop
    stop
    rst $38
    call c, $d535
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    call c, Call_03d_6025
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    ld h, c
    ld b, c
    ld [hl], c
    ld sp, $8040
    add b
    add b
    ld b, c
    ld sp, $8080
    ld b, c
    ld [hl], c
    ld sp, $8040
    add b
    add b
    ld b, c
    ld sp, $fd71
    nop
    ld [$c05a], a
    rrca
    ld e, e
    ld bc, $5b74
    ld [bc], a
    ret c

    ld e, e
    inc bc
    ld c, b
    ld e, h
    jp c, $9800

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $08e1
    dec d
    rst $28
    ldh a, [$d8]
    inc c
    or l
    add hl, bc
    push de
    ld de, $5131
    and e
    sub c
    and c
    or c
    and c
    add c
    ld h, c
    and l
    ld h, c
    ld de, $b1d6
    push de
    ld de, $8351
    ld [hl], c
    add c
    and c
    add c
    ld h, c
    ld d, c
    add l
    ld d, c
    ld de, $b1d6
    and c
    push de
    ld de, $b7dc
    sub $b5
    push de
    dec [hl]
    or e
    and l
    ld h, c
    rla
    sub $b5
    push de
    dec [hl]
    call c, $a3b5
    add e
    ld d, e
    inc sp
    ld d, e
    sub $b5
    push de
    dec [hl]
    or e
    and l
    ld h, c
    inc de
    sub $c3
    or l
    push de
    ld hl, $b3d6
    add e
    and e
    push de
    inc de
    sub $a3
    push de
    inc de
    db $fd
    nop
    ld h, $5b
    db $db
    inc bc
    pop hl
    db $10
    ld [hl], $ef
    rrca
    ret c

    inc c
    jp $11d5


    ld sp, $3151
    ld d, c
    add c
    and c
    or c
    call c, $d4c6
    dec d
    inc sp
    call c, $31b3
    ld de, $b1d5
    call c, $d4c7
    dec d
    push de
    and c
    ld h, a
    call c, $b5c6
    call nc, $dc13
    or e
    ld de, $b1d5
    and c
    call c, $b5c7
    add c
    ld d, a
    call c, $35a0
    ld h, l
    call nc, $1533
    call c, $d5a5
    and c
    call c, $67c7

Call_03d_5bb7:
    call c, $35a0
    ld h, l
    call nc, $dc33
    rst $00
    rra
    call c, $d5b5
    dec [hl]
    ld h, l
    call nc, $1533
    push de
    and c
    ld h, a
    dec h
    ld h, l
    add e
    call c, $67a0
    call c, Call_03d_67a7
    db $fd
    nop
    add a
    ld e, e
    ret c

    inc c
    ld d, $03
    call nc, $d511
    or c
    and c
    add c
    ld h, c
    ld d, c
    and c
    ld h, c
    and c
    call nc, $d513
    ld h, c
    add c
    and c
    and c
    ld h, c
    and c
    call nc, $d513
    ld h, c
    add c
    and c
    or c
    add c
    or c
    call nc, $d513
    ld h, c
    add c
    and c
    or e
    call nc, $d511
    or c
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $b163
    ld h, c
    or c
    and c
    add c
    ld h, c
    and e
    ld h, c
    and c
    ld h, c
    ld d, c
    ld b, c
    ld sp, $b163
    ld h, c
    or c
    and c
    add c
    ld d, c
    add c
    or c
    call nc, $d511
    or c
    and c
    add c
    ld h, c
    ld sp, $b163
    ld h, c
    or c
    and c
    add c
    ld h, c
    and e
    ld h, c
    and c
    ld h, c
    ld d, c
    ld b, c
    ld hl, $b163
    ld h, c
    or c
    and c
    add c
    ld h, c
    and c
    ld h, c
    and c
    ld h, c
    and c
    ld h, c
    and c
    db $fd
    nop
    db $e4
    ld e, e
    db $e3
    inc bc
    ret c

    inc c
    rrca
    ld hl, $8101
    ld hl, $7121
    inc hl
    ld hl, $8101
    jr nz, jr_03d_5c79

    ld [hl], e
    ld hl, $fd81
    nop
    ld c, l
    ld e, h
    ret nz

    ld l, h
    ld e, h
    ld bc, $5cd5
    ld [bc], a
    ld e, b
    ld e, l
    inc bc
    and l
    ld e, l
    jp c, $a000

    push hl
    ld [hl], a
    db $db
    ld bc, $00e6
    ld [bc], a
    pop hl
    jr jr_03d_5cad

jr_03d_5c79:
    rst $28
    rrca
    ret c

    inc c
    or e
    cp $cf
    ld e, h
    db $fd
    inc b
    ld a, [hl]
    ld e, h
    sub $91
    push de
    ld hl, $2153
    ld d, c
    ld h, e
    db $fd
    ld [$5c85], sp
    sub $a1
    push de
    ld sp, $3163
    ld h, c
    ld [hl], e
    db $fd
    inc b
    sub c
    ld e, h
    inc bc
    call c, Call_03d_6f80
    ld a, a
    adc a
    ld a, a
    add a
    ld [hl], a
    ld h, a
    ld d, a
    add a
    ld [hl], a
    call nc, $d517

jr_03d_5cad:
    and a
    call c, $e695
    nop
    inc b
    cp $cf
    ld e, h
    and $00
    ld [$cffe], sp
    ld e, h
    and $00
    inc c
    cp $cf
    ld e, h
    and $00
    db $10
    cp $cf
    ld e, h
    and $00
    ld [bc], a
    db $fd
    nop
    ld a, e
    ld e, h
    sub $91
    push de
    ld hl, $ff5b
    db $db
    inc bc
    pop hl
    ld [$d824], sp
    inc c
    call nz, $34fe
    ld e, l
    call c, $fec5
    inc [hl]
    ld e, l
    call c, $fec7
    inc [hl]
    ld e, l
    call c, $23c4
    push de
    jp $31d4


    ld d, c
    ld hl, $c1d5
    call nc, $d523
    jp $37d4


    push de
    jp $33d4


    ld [hl], c
    ld h, c
    ld hl, $c1d5
    call nc, $3327
    inc hl
    inc bc
    call c, $1fa0
    cpl
    ccf
    cpl
    ld e, a
    ld c, a
    cp a
    xor a
    call c, $e1a5
    ld b, $44
    cp $52
    ld e, l
    pop hl
    inc b
    inc sp
    cp $52
    ld e, l
    pop hl
    ld [bc], a
    ld [hl+], a
    cp $52
    ld e, l
    pop hl
    ld bc, $fe41
    ld d, d
    ld e, l
    pop hl
    ld [$fd24], sp
    nop
    jp c, $d45c

    inc de
    push de
    or e
    call nc, $4121
    ld de, $b1d5
    call nc, $d513
    or e
    call nc, $d527
    or e
    call nc, Call_03d_6123
    ld d, c
    ld de, $b1d5
    call nc, $2317
    inc de
    rst $38
    sub $91
    push de
    ld hl, $ff5b
    ret c

    inc c
    ld d, $ef
    ldh a, [rIF]
    db $fd
    rlca
    ld e, l
    ld e, l
    dec c
    call nc, $0111
    push de
    ld d, c
    ld bc, $9151
    ld d, c
    ld bc, $11d4
    db $fd
    inc b
    ld h, l
    ld e, l
    ld bc, $61d5
    ld bc, $a161
    ld h, c
    ld bc, $21d4
    db $fd
    inc b
    ld [hl], e
    ld e, l
    inc bc
    rla
    push de
    rst $00
    or a
    and a
    call nc, $1727
    push de
    rst $00
    or a
    and e
    add e
    or c
    call nc, $d511
    and c
    add c
    db $fd
    inc bc
    adc l
    ld e, l
    and e
    add e
    or a
    rrca
    db $fd
    inc b
    sbc h
    ld e, l
    db $fd
    nop
    ld e, l
    ld e, l
    db $e3
    ld bc, $0cd8
    rst $28
    ldh a, [rHDMA3]
    rst $28
    rst $38
    ld h, e
    rst $28
    rrca
    sub e
    rlca
    rst $28
    rrca
    ld d, e
    rst $28

Call_03d_5db7:
    rst $38
    ld h, e
    rst $28
    ldh a, [$93]
    rlca
    db $fd
    nop
    xor c
    ld e, l
    db $fd
    nop
    xor c
    ld e, l
    add b
    adc $5d
    ld bc, $5ea2
    ld [bc], a
    sub c
    ld e, a
    jp c, Jump_03d_6800

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
    call nc, $d510

jr_03d_5de1:
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
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_03d_5e14

    jr nc, @+$22

    db $10
    sub $c0
    push de
    db $10
    sub $c0
    or b
    and b
    or b
    ret nz

    push de
    db $10
    jr nz, jr_03d_5de1

    or d
    add l
    sub $b5
    push de
    inc sp
    inc de
    inc hl
    scf
    ld b, l
    sub $b5
    push de
    ld b, e
    inc de

jr_03d_5e14:
    inc sp
    call c, Call_03d_47b5
    call c, $d4b2
    dec [hl]
    push de
    or l
    call nc, $1333
    inc hl
    scf
    ld b, l
    push de
    or l
    call nc, $1343
    inc sp
    call c, $476f
    call c, $d5b6
    dec [hl]
    sub $c5
    jp Jump_03d_65d5


    ld d, l
    inc de
    sub a
    or b
    and b
    add b
    ld [hl], b
    add b
    sub b
    and b
    or b
    call nc, $d517
    ret nz

    or b
    sub b
    add b
    sub b
    and b
    or b
    ret nz

    dec [hl]
    sub $c5
    jp Jump_03d_65d5


    ld d, l
    inc sp
    ld d, a
    scf
    rla
    ld h, a
    ld b, l
    dec d
    inc de
    ld [hl], l
    ld h, l
    inc hl
    and a
    ret nz

    or b
    sub b
    add b
    sub b
    and b
    or b
    ret nz

    call nc, $1027
    push de
    ret nz

    and b
    sub b
    and b
    or b
    ret nz

    call nc, $d510
    ld b, l
    dec d
    inc de
    ld [hl], l
    ld h, l
    inc hl
    ld h, a
    ld b, a
    daa
    ld [hl], a
    call c, Call_03d_55b7
    dec [hl]
    ld d, e
    ld h, l
    ld d, l
    inc de
    ld h, a
    rla
    ld d, l
    dec [hl]
    ld h, e
    adc a
    call nc, $8737
    adc a
    ccf
    push de
    inc de
    inc sp
    inc de
    sub $c3
    push de
    rra
    inc sp
    ld d, e
    inc sp
    ld [hl], e
    adc a
    db $fd
    nop
    dec l
    ld e, [hl]
    db $db
    inc bc
    pop hl
    ld [$e636], sp
    nop
    ld bc, $5dfe
    ld e, a
    ret c

    inc c
    jp nz, $85d4

    push de
    dec [hl]
    add e
    ld h, e
    ld [hl], e
    add a
    sub l
    dec [hl]
    sub e
    ld h, e
    add e
    call c, $97c7
    call c, $d4c2

Call_03d_5ec3:
    add l
    dec [hl]
    add e
    ld h, e
    ld [hl], e
    add a
    sub l
    dec [hl]
    sub e
    ld h, e
    add e
    call c, $976f
    call c, $d5c4
    add l
    dec [hl]
    ld sp, $d481
    ld de, $c1d5
    and c
    add c
    ld h, c
    add c
    and c
    call nc, $dc21
    or b
    ld c, a
    call c, Call_03d_4fb7
    call c, $d5c4
    add l
    dec [hl]
    ld sp, $d481
    inc de
    push de
    jp $c3a3


    call c, $afb0
    call c, $afb6
    call c, $95c4
    ld b, l
    ld b, c
    sub c
    call nc, $1121
    push de
    or c
    sub c
    ld [hl], c
    sub c
    or c
    call nc, $dc31
    or b
    ld e, a
    call c, Call_03d_5fb7
    call c, $d5c4
    sub l
    ld b, l
    ld b, c
    sub c
    call nc, $1323
    push de
    or e
    sub e
    call c, $bfb0
    call c, $bfb5
    call c, $d4c6
    res 0, c
    pop bc
    db $d3
    ld sp, $d411
    pop bc
    and c
    add c
    and c
    pop bc
    add c
    xor e
    push de
    ld h, c
    and c
    call nc, $d511
    pop bc
    and c
    add c
    ld h, c
    add c
    and c
    call nc, $dc11
    rst $00
    ccf
    add a
    db $d3
    rla
    call nc, $8fcf
    push de
    ld d, e
    ld [hl], e
    ld d, e
    inc sp
    ld e, a
    add e
    and e
    add e
    or e
    rst $08
    db $fd
    nop
    pop de
    ld e, [hl]
    ret c

    inc c
    jp nz, $60d4

    ld [hl], b
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    call nc, $7060
    add b
    db $d3
    add b
    rst $38
    ret c

    inc c
    inc d
    call nc, $d381
    ld sp, $81d4
    db $d3
    ld hl, $71d4
    db $d3
    ld de, $71d4
    pop bc
    ld h, c
    or c
    ld h, c
    and c
    ld h, c
    ld sp, $6181
    ld sp, $3181
    add c
    ld sp, $3181
    add c
    ld sp, $3181
    add c

Call_03d_5fb7:
    ld sp, $6151
    add c
    cp $55
    ld h, b
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    ld b, c
    add c
    ld h, c
    ld sp, $fd81
    ld b, $c6
    ld e, a
    ld sp, $6151
    add c
    cp $55
    ld h, b
    ld h, c
    ld h, c
    add c
    add c
    sub c
    add c
    ld h, c
    ld b, c
    ld sp, $fd81
    rlca
    db $db
    ld e, a
    ld [hl], e
    cp $55
    ld h, b
    cp $55
    ld h, b
    ld sp, $fd81
    rlca
    add sp, $5f
    ld sp, $11a1
    ld h, c
    db $fd
    dec b
    ldh a, [$5f]
    ld d, c
    ld sp, $3111
    ld d, c
    ld h, c
    cp $55
    ld h, b
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    add e
    ld d, c
    and c
    db $fd
    ld [$6006], sp
    cp $55
    ld h, b
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    or c
    ld hl, $2171
    ld [hl], c
    ld hl, $2171
    ld [hl], c
    ld hl, $6171
    ld [hl], c
    sub c
    ld [hl], c

Call_03d_6025:
    ld h, c
    ld b, c
    ld sp, $fd81
    ld [$6027], sp
    ld de, $fd61
    rlca
    dec l
    ld h, b
    ld d, c
    ld de, $8333
    inc sp
    add e
    ld sp, $fd81
    inc c
    add hl, sp
    ld h, b
    ld de, $fd51
    rlca
    ccf
    ld h, b
    ld h, c
    ld [hl], c

Call_03d_6047:
    ld sp, $fd81
    ld b, $47
    ld h, b
    and c
    add c
    ld [hl], c
    ld d, c
    db $fd
    nop
    db $db
    ld e, a
    ld b, c
    sub c

Call_03d_6057:
    db $fd
    inc b
    ld d, l
    ld h, b
    rst $38
    add b
    ld h, l
    ld h, b
    ld bc, $6076
    ld [bc], a
    adc a
    ld h, b
    jp c, $6b00

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    db $10
    dec h
    db $fd

Call_03d_6073:
    nop
    db $db
    ld e, l
    db $db

Call_03d_6077:
    inc bc
    pop hl
    jr nz, jr_03d_60b1

    and $00
    ld bc, $5dfe
    ld e, a
    ret c

    inc c
    jp nz, $85d4

    and $00
    ld bc, $02db
    db $fd
    nop
    or d
    ld e, [hl]
    ret c

    inc c
    ld de, $00fd
    sub h
    ld e, a
    add b

Call_03d_6097:
    sbc a
    ld h, b
    ld bc, $62b3
    ld [bc], a
    sbc $64
    jp c, Jump_03d_6600

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
    sub d
    rlca
    push de

jr_03d_60b1:
    and b
    sub b
    add b
    sub b
    call c, $10b2
    sub $c0
    or b
    ret nz

    push de
    jr nz, jr_03d_60cf

    sub $c0
    push de
    db $10

Call_03d_60c3:
    jr nc, jr_03d_60e5

    db $10
    jr nz, @+$42

    jr nc, jr_03d_60ea

    jr nc, @+$52

    ld b, b
    jr nc, jr_03d_610f

jr_03d_60cf:
    ld d, l
    ld d, l
    ld d, e
    ld d, c
    ld sp, $6551
    call c, $33b7
    call c, Call_03d_55b2
    dec [hl]
    ld d, e
    ld d, c
    ld sp, $6551
    call c, Call_03d_63b7

jr_03d_60e5:
    call c, $d4b2
    ld d, l
    ld d, l

jr_03d_60ea:
    ld d, e
    ld d, c
    ld sp, $6151
    push de
    and c
    or c
    call c, $c3b7
    call c, $d4b2
    ld d, l
    ld d, l
    ld d, e
    ld d, c
    ld sp, $6551
    call c, $83b7
    call c, $feb4
    sbc a
    ld h, d
    call c, $b3b7
    call c, $80b3
    ld h, b
    ld d, b

jr_03d_610f:
    add b
    call c, $d4b7
    inc de
    call c, $d5b3
    and b
    add b
    ld h, b
    and b
    call c, $d4b7
    inc sp
    call c, $10b3
    push de

Call_03d_6123:
    or b
    and b
    call nc, $dc10
    or l
    ld h, c
    ld d, c
    ld sp, $fe11
    sbc a
    ld h, d
    call c, Call_03d_63b7
    ld d, c
    ld h, c
    call nc, $d513
    or c
    call nc, $dc11
    and b
    push de
    ld h, a
    call c, Call_03d_67a7
    call c, $a5b7
    ld d, l
    or e
    call nc, $6325
    ld d, c
    ld sp, $5161
    ld h, c
    ld d, c
    ld sp, $d521
    or c
    and c
    or c
    call c, $a7a0
    call c, $a7a7
    call c, Call_03d_57b7
    scf
    ld d, a

Call_03d_6161:
    ld h, a
    ld d, a
    scf
    add a
    ld h, a
    scf
    rla
    scf
    ld b, a
    scf
    rla
    scf
    ld b, a
    scf
    ld b, a
    ld d, a
    ld h, a
    call c, $81b4
    call nc, $d511
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c
    call nc, $1121
    ld hl, $2141
    ld de, $b1d5
    call c, $41b5
    ld sp, $b2dc
    ld b, e
    call c, $17b7
    ld b, e
    inc hl
    inc de
    ld b, e
    call c, $51b5
    ld b, c
    call c, Call_03d_53b2
    call c, $27b7

Call_03d_61a0:
    ld h, e

Call_03d_61a1:
    ld b, e
    inc hl
    ld h, e
    call c, Call_03d_71b5
    ld h, c
    call c, Call_03d_73b2
    call c, $37b7
    ld [hl], e
    ld d, e
    inc sp
    ld [hl], e

Call_03d_61b2:
    add a
    ld b, a
    or a
    add a
    call c, Call_03d_43a0
    call c, Call_03d_4ba7
    rrca
    call c, Call_03d_67b7
    call c, $83b4
    ld b, e

Call_03d_61c4:
    ld h, e
    add c
    ld b, c
    ld h, e
    sub $b3
    call c, $d5b7
    ld h, a
    call c, $83b4
    ld b, e
    ld h, e
    add c
    ld b, c
    ld h, e

Jump_03d_61d6:
    ld h, e
    db $fd
    ld [bc], a
    cp l
    ld h, c
    call c, Call_03d_67b7
    call c, $83b4
    ld b, e
    ld h, e
    sub c
    add c
    call c, Call_03d_67b7
    ld h, a
    call c, $83b5
    ld b, e
    ld h, e
    add c
    ld b, c
    call c, Call_03d_67b7
    ld h, a
    call c, $83b5
    ld b, e
    ld h, e
    add c
    ld b, c
    call c, $973f
    call c, $97b7
    call c, $d4a0
    rla
    call c, $17a7
    call c, $d5b2
    ld b, l
    ld b, l
    ld b, e
    ld b, l
    ld b, l
    call c, Call_03d_63b7
    call c, Call_03d_45b2
    ld b, l
    ld b, e
    ld b, l
    ld b, l
    call c, Call_03d_634c
    call c, $95b7
    add l
    ld h, e
    ld b, e
    ld h, e
    add e
    ld b, e
    ld h, e
    call nc, $1121
    push de
    ld h, e
    call nc, $1121
    push de
    ld h, c
    add c
    sub c
    call nc, $2111
    ld de, $b1d5
    sub c
    add l
    ld b, l
    add e
    call nc, $1323
    push de
    or e
    sub e
    ld h, e
    ld hl, $6341
    ld hl, $b341
    sub e
    add e
    ld h, e
    call c, $d690
    or a
    push de
    ld b, a
    sub $b7
    push de
    add a
    call c, $47a0
    or a
    add a
    call nc, $dc47
    and b

jr_03d_6260:
    push de
    or a
    call c, $b7a7
    call c, $85b7
    or l
    sub c
    add c
    call c, $47a0
    call c, $47a7
    call c, $b5b4
    add e
    add c
    cp e
    rrca
    rlca
    call c, $d4a0
    inc sp
    call c, $3ba7
    call c, $67a0
    call c, Call_03d_67a7
    call c, $feb3
    sbc a
    ld h, d
    ld h, e
    ld d, c
    ld h, c
    call nc, $d513
    or c
    call nc, $dc11
    and b
    push de
    ld l, c
    call c, Call_03d_65a7
    db $fd
    nop
    ld [bc], a
    ld h, c
    push de
    ld d, c
    ld sp, $a151
    pop bc
    and c
    add c
    and c
    call nc, $d511
    and c
    pop bc
    add c
    and c
    ld d, c
    ld h, c
    ld sp, $dbff
    inc bc
    pop hl
    ld [$e636], sp
    nop
    ld bc, $0cd8
    jp nz, $90d4

    add b
    ld [hl], b
    ld h, b
    sub b
    jr nc, @+$42

    ld d, b
    sub b
    ld b, b
    jr nc, jr_03d_630b

    sub b
    jr nc, jr_03d_62ee

    jr nc, jr_03d_6260

    jr nz, jr_03d_62e2

    jr nz, @-$6e

    push de
    or b
    ret nz

    call nc, $9010
    push de
    ret nz

    or b
    ret nz

    call nc, $d590
    or b

jr_03d_62e2:
    and b
    or b
    call c, $d4c2
    and l
    cp $9a
    ld h, h
    call c, $a5c2

jr_03d_62ee:
    cp $9a
    ld h, h
    call c, $d3c2
    dec d
    dec d
    inc de
    dec d
    dec d
    call c, $23c7
    call c, $11c2
    call c, $d5a4
    ld d, c
    and c
    call c, $d3c2
    ld de, $a4dc
    push de

jr_03d_630b:
    ld d, c
    and c
    call c, $d3c2
    ld de, $a4dc
    push de
    ld d, c
    call c, $d3c2
    ld de, $a4dc
    push de
    ld d, c
    pop bc
    call c, $d3c2
    ld de, $a4dc
    call nc, Call_03d_5111
    call c, $c3c7
    cp $a3
    ld h, h
    call c, $b73e
    call c, $b7c7

Call_03d_6333:
    cp $a3
    ld h, h
    call c, $33c4
    push de
    or c
    call nc, $6131
    ld d, c
    ld sp, $5161
    ld sp, $6151
    or c
    and c
    or c
    db $d3
    ld sp, $b0dc

Call_03d_634c:
    daa
    call c, $23b7
    call c, $d4c7
    or e
    call c, $afb0
    call c, $afb7
    call c, $d5c3
    and c
    add c
    and c
    call c, $b3c7
    call c, $a1c3
    add c
    or c
    db $fd
    inc bc
    ld e, d
    ld h, e
    and c
    call nc, $1131
    push de
    or c
    and c
    add c
    and c
    or c
    add c
    ld h, c
    add c
    call c, $93c7
    call c, $81c3
    ld h, c
    sub c
    db $fd
    inc bc
    db $76
    ld h, e
    ld h, c
    call nc, $d511
    or c
    sub c
    add c
    ld h, c
    add c
    sub c
    call c, $85c7
    call nc, $1135
    ld sp, $5363
    inc sp
    inc de
    call c, Call_03d_49b0
    call c, $45b7
    call c, $8790

Call_03d_63a3:
    call c, $8797
    call c, $d5c7
    ld h, a
    ld b, e
    ld h, e
    add e
    ld h, e
    ld b, e
    add e
    sub a
    ld h, e
    add e

Call_03d_63b3:
    sub e
    add e

Call_03d_63b5:
    ld h, e
    sub e

Call_03d_63b7:
    and a
    ld [hl], e
    sub e
    and e
    sub e
    ld [hl], e
    and e
    call c, $b7b0
    or a

Call_03d_63c2:
    call c, $d4b0
    ld b, a
    call c, $47b7
    call c, $fe62
    or [hl]
    ld h, h
    call c, $fe82
    or [hl]
    ld h, h
    call c, $fe92
    or [hl]
    ld h, h
    call c, $fea2
    or [hl]
    ld h, h
    call nc, $d541
    or c
    call nc, $d581
    or c
    call nc, $d541
    or c
    call nc, $d581
    or c
    db $fd
    ld [$63dd], sp
    cp $be
    ld h, h
    push de
    or c
    call c, $d4c7
    rla
    cp $be
    ld h, h
    add c

Jump_03d_63fe:
    call c, $67c7
    cp $be
    ld h, h
    push de
    or c
    call c, $d4b0
    rla
    call c, $17b7
    call c, Call_03d_4b1f
    call c, Call_03d_43c7
    call c, $d5c2
    add e
    ld b, c
    add l
    add e
    add c
    ld h, c
    ld b, c
    add l
    call c, $93c7
    call c, $83c2
    ld b, c
    add l
    add e
    add l
    add l
    call c, $934c
    cp $d2
    ld h, h
    call c, Call_03d_67b0
    call c, Call_03d_67b7
    call c, $97b0
    call c, $97b7
    cp $d2
    ld h, h
    call c, $27b0
    call c, $27b7
    call c, $23c7
    inc de
    push de
    or e
    sub e
    add l
    ld b, c
    or a
    or l
    add c

Call_03d_6450:
    call nc, Call_03d_4547
    push de
    or c
    call nc, $8587
    ld b, c
    or a
    add l
    or l
    sub c
    add c
    call c, Call_03d_47b0
    call c, $47b7
    call c, $45c7
    or l
    sub c
    add c
    call c, Call_03d_47b0
    call c, $47b7
    call c, $d5c7
    and l
    call nc, $3155
    ld d, c
    add e
    ld [hl], e
    ld d, e
    inc sp
    call c, Call_03d_67b0
    call c, Call_03d_67b7
    call c, $b7b0
    call c, $b7b7
    cp $a3
    ld h, h
    call c, $33c7
    push de
    or c
    call nc, $6131
    ld d, c
    ld sp, $fd61
    nop
    ld a, [hl+]
    ld h, e
    push de
    and l
    and e
    and l
    and l
    call c, $b3c7
    rst $38
    call c, $d5c7
    and l
    call nc, $3155
    ld d, c
    add e
    ld [hl], e
    ld d, e
    inc sp
    call c, Call_03d_67b0
    call c, Call_03d_67b7
    rst $38
    push de
    or c
    ld b, c
    call nc, $d541
    ld b, c
    rst $38
    call c, $d4c7
    ld h, e
    call c, $d5c4
    or c
    call nc, $9161
    add c
    ld h, c
    ld b, c
    jr nc, jr_03d_650e

    jr nc, jr_03d_6510

    ld h, c
    rst $38
    call c, $d4c7
    ld b, l
    or l
    sub c
    add c
    sub e
    add e
    ld h, e
    ld b, e
    rst $38
    ret c

    inc c
    add hl, de
    call nc, Call_03d_4050
    jr nc, jr_03d_6506

    jr nc, jr_03d_6508

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
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, c
    or c
    and c
    sub c
    and c
    ld d, c
    ld [hl], c
    add c
    ld d, c

jr_03d_6506:
    ld [hl], c
    add c

jr_03d_6508:
    ld d, c
    db $fd
    inc bc
    ld bc, $a165

jr_03d_650e:
    ld d, c
    ld [hl], c

jr_03d_6510:
    add c
    ld d, c
    ld [hl], c
    add c
    sub c
    cp $76
    ld h, [hl]
    call nc, $d511
    add c
    and c
    or c
    call nc, $2111
    ld de, $b1d5
    cp $76
    ld h, [hl]
    call nc, $d511
    add c
    and c
    or c
    add c
    and c
    or c
    add c
    cp $81
    ld h, [hl]
    ld d, c
    cp $92
    ld h, [hl]
    cp $92
    ld h, [hl]
    cp $81
    ld h, [hl]
    and c
    cp $92
    ld h, [hl]
    cp $92
    ld h, [hl]
    cp $9d
    ld h, [hl]
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    ld sp, $6151
    cp $9d
    ld h, [hl]
    ld d, c
    call nc, $5161
    ld sp, $a1d5
    sub c
    and c
    or c
    cp $a5
    ld h, [hl]
    ld sp, $31a1
    and c
    ld sp, $81a1
    and c
    cp $a5
    ld h, [hl]
    ld sp, $31d4
    ld de, $b1d5
    and c
    add c
    and c
    or c
    cp $ac
    ld h, [hl]
    ld de, $1181
    add c
    ld de, $6181
    add c
    cp $ac
    ld h, [hl]
    ld de, $11d4
    push de
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld sp, $6787
    ld d, a
    ld b, a
    push de
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    and c
    call nc, $fd11
    ld [bc], a
    sub c
    ld h, l
    cp $ac
    ld h, [hl]
    ld de, $11d4
    push de
    or c

Call_03d_65a7:
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld hl, $fd91
    rlca
    xor h
    ld h, l
    pop bc
    and c
    ld sp, $fda1
    dec b
    or h
    ld h, l
    pop bc
    and c
    sub c
    ld [hl], c
    sub c
    and c
    or e
    ld b, e
    db $fd
    inc b
    ret nz

    ld h, l
    call nc, $d583
    or e
    db $fd
    inc b
    add $65
    cp $b4
    ld h, [hl]
    ld b, c
    ld h, a
    cp $b4

Jump_03d_65d5:
    ld h, [hl]
    call nc, $d511
    or a
    db $fd
    ld [bc], a
    adc $65
    call nc, $1727
    push de
    or a
    sub a
    ld h, a
    add a
    sub a
    or a
    ld h, a
    add a
    sub e
    ld b, c
    sub c
    call nc, $1717
    ld b, a
    push de
    or c
    sub c
    add c
    ld h, c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    call nc, $d521
    or c

Jump_03d_6600:
    ld b, c
    or c
    call nc, $1121
    push de
    or c
    sub c
    add c
    sub c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    call nc, $d521
    or c
    ld b, c
    or c
    call nc, $2111
    ld b, c
    ld hl, $d511
    or c
    ld b, c
    or c
    db $fd
    ld [$661e], sp
    ld hl, $fd91
    ld b, $24
    ld h, [hl]
    ld hl, $11d4
    push de
    or c
    sub c
    ld b, c
    or c
    db $fd
    ld [$6630], sp
    ld hl, $fd91
    inc b
    ld [hl], $66
    ld hl, $21d4
    ld de, $b1d5
    add c
    sub c
    or c
    call nc, $d511
    ld b, a
    daa
    rla
    sub $b7
    push de
    or a
    sub a
    add a
    ld h, a
    call nc, Call_03d_4747
    push de
    or a
    or a
    add a
    add a
    ld b, a
    ld b, e
    or e
    xor a
    call nc, $d51f
    cp a
    call nc, $d53f
    xor a
    call nc, $d51f
    cp a
    call nc, $0137
    push de
    and c
    or c
    call nc, $fd31
    nop
    ld sp, $d465
    ld de, $81d5
    and c
    or c
    add c
    and c
    or c
    add c
    rst $38
    push de
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    ld [hl], c
    add c
    and c
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    ld [hl], c
    add c
    rst $38
    push de
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    and c
    or c
    call nc, $ff31
    push de
    ld d, c
    and c
    db $fd
    inc b
    sbc l
    ld h, [hl]
    rst $38
    ld sp, $fda1
    inc b
    and l
    ld h, [hl]
    rst $38
    push de
    ld de, $fd81
    inc b
    xor h
    ld h, [hl]
    rst $38
    or e
    ld b, c
    or c
    call nc, $1121
    push de
    or c
    sub c
    add b
    sub b
    add b
    sub b
    or c
    rst $38
    add b
    call z, $0166
    rrca
    ld h, a
    ld [bc], a
    add h
    ld h, a
    jp c, Jump_03d_7600

    push hl
    ld [hl], a
    rst $28
    rrca
    db $db
    inc bc
    ret c

    inc c
    and e
    push de
    add b
    sub b
    and b
    or b
    call c, $cf3e
    call c, $d4c3
    db $10
    ld [bc], a
    inc de
    ld bc, $dc15
    or e
    ld bc, $80d5
    nop
    ret nz

    nop
    add b
    nop
    call nc, RST_30
    db $10
    ld [bc], a
    stop
    rrca
    ld bc, $80d5
    nop
    ret nz

    nop
    add b
    nop
    call nc, RST_30
    db $10
    ld [bc], a
    stop
    rrca
    db $fd
    nop
    ld_long $ff66, a
    rst $28
    ldh a, [$e1]
    ld [de], a
    ld h, $db
    ld bc, $0cd8
    and e
    push de
    ret nz

    call nc, $2010
    jr nc, @-$22

    ld a, $d8
    inc c
    ld l, $8f
    ret c

    inc c
    or e
    call c, Call_03d_60c3
    ld [bc], a
    ld h, e
    ld bc, $db75
    inc bc
    call c, $01b3
    push de
    ret nz

    nop
    call nc, RST_30
    push de
    ret nz

    nop
    call nc, $0080
    ld h, b
    ld [bc], a
    ld h, b
    nop
    call c, $db97
    ld [bc], a
    ld b, b
    ld h, b
    ld b, b
    jr nc, jr_03d_675d

    nop
    push de
    sub b
    ld [bc], a
    ld h, b
    nop
    add b
    nop
    sub b
    nop
    db $db
    inc bc
    call c, $01b3
    ret nz

jr_03d_675d:
    nop
    call nc, RST_30
    push de
    ret nz

    nop
    call nc, $0080
    ld h, b
    ld [bc], a
    ld h, b
    nop
    db $db
    ld [bc], a
    call c, $9097
    or b
    sub b
    add b
    ld h, b
    nop
    db $10
    ld [bc], a
    push de
    sub b
    nop
    or b
    nop
    call nc, RST_10
    db $fd
    nop
    cpl
    ld h, a
    rst $38
    rst $28
    rst $38
    pop hl
    ld [bc], a
    inc h
    ret c

    inc c
    dec h
    inc bc
    sub $80
    nop
    push de
    add b
    nop
    sub $80
    nop
    push de

Jump_03d_6797:
    add b
    nop
    sub $80
    nop
    push de
    add b
    nop
    call c, $d615
    add b
    nop
    push de
    add b
    nop

Call_03d_67a7:
    jr nc, @+$04

    inc sp
    ld bc, $dc95
    dec h
    sub $80

Call_03d_67b0:
    nop
    push de
    add b
    nop
    sub $80
    nop

Call_03d_67b7:
    push de
    add b
    nop
    sub $80
    nop
    push de
    add b
    nop
    sub $80
    nop
    push de
    add b
    nop
    sub $60
    nop
    push de
    ld b, b
    nop
    sub $60
    nop
    push de
    ld b, b
    nop
    sub $60
    nop
    push de
    ld b, b
    nop
    sub $60
    nop
    push de
    ld b, b
    nop
    sub $80
    nop
    push de
    add b
    nop
    sub $80
    nop
    push de
    add b
    nop
    sub $80
    nop
    push de
    add b
    nop
    sub $80
    nop
    push de
    add b
    nop
    sub $90
    nop
    push de
    ld b, b
    nop
    sub $90
    nop
    push de

Jump_03d_6800:
    ld b, b
    nop
    sub $90
    nop
    push de
    ld b, b
    nop
    add b
    nop
    sub b
    nop
    db $fd
    nop
    xor [hl]
    ld h, a
    rst $38
    ret nz

    dec e
    ld l, b
    ld bc, $688b
    ld [bc], a
    ld hl, sp+$68
    inc bc
    ld c, b
    ld l, c
    jp c, $d000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    inc b
    pop hl
    ld [$ef45], sp
    ldh a, [$d8]
    inc c
    and l
    push de
    add e
    inc de
    sub a
    add e
    inc de
    sub $b1
    push de
    ld de, $d621
    or c
    push de
    add e
    inc de
    sub e
    ld h, e
    add e
    sub $83
    push de
    add l
    or c
    add c
    ld h, c
    ld hl, $9781
    add e
    call nc, $d513
    sub c
    add c
    ld h, c
    sub c
    add c
    ld hl, $b1d6
    push de
    add c
    sub e
    ld h, e
    add e
    sub $83
    push de
    add a
    call c, $d6a2
    add e
    adc e
    add e
    add a
    call c, $83a7
    call c, $93a2
    sub a
    call c, $83a7
    call c, $93a2
    sub a
    call c, $b3a7
    call c, $83a2
    adc e
    add e
    adc e
    add e
    adc e
    add e
    add a
    call c, $d5a5
    or e
    db $fd
    nop
    ld a, [hl+]
    ld l, b
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    jr jr_03d_68d7

    rst $28
    rst $38
    ret c

    inc c
    or l
    call nc, $1313
    ld hl, $d511
    or c
    call nc, $1321
    ld h, e
    inc hl
    push de
    or e
    call nc, $1313
    ld hl, $d511
    or c
    call nc, $1321
    push de
    inc de
    call nc, $ef17
    rrca
    db $fd
    ld [bc], a
    sub l
    ld l, b
    call c, $d5b2
    inc de
    dec de
    inc de
    rla
    call c, $13b7
    call c, $23b2
    daa
    call c, $13b7
    call c, $23b2
    daa
    call c, $43b7
    call c, $ef90
    rst $38
    add e

jr_03d_68d7:
    call nc, $d513
    or c
    sub c
    add c
    sub c
    add e
    inc de
    add a
    add e
    call nc, $d513
    or c
    call nc, $2111
    push de
    or c
    call nc, $d513
    inc de
    call nc, $dc15
    sub l
    ld hl, $00fd
    sub e
    ld l, b
    ret c

    inc c
    inc d
    rrca
    rrca
    rrca
    add hl, bc
    sub $81
    sub c
    or c
    push de
    rla
    daa
    ld d, a
    sub $b1
    push de
    ld de, $4121
    rla
    daa
    ld d, a
    call nc, $d517
    db $10
    ld [bc], a
    db $10
    ld a, [bc]
    db $10
    ld [bc], a
    db $10
    ld b, $13
    jr nz, jr_03d_6920

    jr nz, jr_03d_6926

jr_03d_6920:
    inc de
    jr nz, jr_03d_6925

    jr nz, jr_03d_692b

jr_03d_6925:
    ld b, e

jr_03d_6926:
    rst $28
    rrca
    db $10
    ld [bc], a
    db $10

jr_03d_692b:
    ld a, [bc]
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    rst $28
    rst $38
    sub $b1
    push de
    ld de, $4121
    rst $28
    rrca
    db $10
    ld [bc], a
    db $10
    ld a, [bc]
    db $10
    ld [bc], a
    db $10
    ld a, [bc]
    rst $28
    rst $38
    db $fd
    nop
    ei
    ld l, b
    db $e3
    nop
    ret c

    inc c
    rst $28
    rrca
    add c
    rst $28
    ldh a, [$80]
    add b
    rst $28
    rrca
    add c
    rst $28
    ldh a, [$63]
    rst $28
    rrca
    add c
    add c
    ld h, c
    rst $28
    ldh a, [$81]
    rst $28
    rrca
    add b
    add b
    rst $28
    ldh a, [$81]
    rst $28
    rrca
    ld h, e
    rst $28
    ldh a, [$81]
    add c
    ld h, c
    db $fd
    nop
    ld c, h
    ld l, c
    ret nz

    add b
    ld l, c
    ld bc, $69c8
    ld [bc], a
    dec h
    ld l, d
    inc bc
    ld a, d
    ld l, d
    jp c, $b000

    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    pop hl
    ld [$ef45], sp
    rrca
    ret c

    inc c
    and e
    rrca
    rrca
    dec b
    push de
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, e
    inc de
    inc hl
    ld b, e
    ld b, e
    ld b, e
    ld [hl], e
    ld [hl], e
    ld h, c
    ld [hl], c
    sub c
    ld [hl], c
    ld h, e
    ld [hl], c
    ld c, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $a5dc
    rla
    call c, $21a3
    ld de, $b1d6
    push de
    ld hl, $a7dc
    rra
    call c, Call_03d_63a3
    ld h, e
    ld [hl], e
    ld [hl], e
    ld h, e
    ld h, e
    ld b, e
    ld b, e
    db $fd
    nop
    sub h
    ld l, c
    db $db
    inc bc
    and $00
    ld bc, $08e1
    ld c, b
    ret c

    inc c
    or d
    push de
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld h, e
    ld h, e
    ld b, e
    ld b, e
    call c, $d4b5
    inc de
    push de
    or e
    call nc, $1123
    push de
    or c
    call nc, $d511
    or c
    ld [hl], e
    call c, Call_03d_67b7
    call c, Call_03d_73b5
    or e
    call nc, $2111
    ld de, $b1d5
    call nc, $2111
    ld b, c
    ld hl, $dc17
    or l
    ld hl, $d511
    or c
    ld [hl], c
    call c, $b7b7
    call c, $d4b5
    ld de, $b1d5
    ld [hl], c
    ld b, c
    call c, Call_03d_67b7
    call c, Call_03d_63b3
    ld h, e
    ld [hl], e
    or c
    ld h, b
    or b
    call c, $d4b7
    rra
    rrca
    db $fd
    nop
    call c, $e169
    inc d
    add sp, -$28
    inc c
    inc d
    push de
    ld h, c
    ld bc, $6111
    ld [hl], c
    ld b, c
    ld bc, $6171
    ld bc, $6111
    ld [hl], c
    ld b, c
    ld bc, $ef71
    ldh a, [$03]
    ld de, $7161
    ld b, c
    ld bc, $6171
    ld bc, $6111
    ld [hl], c
    ld b, c
    ld bc, $4161
    ld bc, $b1d6
    push de
    ld b, c
    ld [hl], c
    ld b, c
    ld bc, $6171
    ld bc, $6111
    ld [hl], c
    ld b, c
    ld bc, $6771
    ld [hl], e
    or e
    ld b, a
    ld h, e
    ld [hl], e
    ld l, a
    ld h, c
    ld bc, $6111
    ld [hl], c
    ld b, c
    ld bc, $6161
    ld bc, $6111
    ld [hl], c
    ld b, c
    ld bc, $fd61
    nop
    ld a, $6a
    db $e3
    nop
    ret c

    inc c
    inc bc
    ld [hl], e
    rst $28
    ldh a, [rSCX]
    ld [hl], c
    rst $28
    rrca
    ld b, c
    rst $28
    rst $38
    ld [hl], e
    ld [hl], e
    rst $28
    rrca
    ld b, e
    ld [hl], c
    rst $28
    ldh a, [rSTAT]
    rst $28
    rst $38
    ld [hl], e
    db $fd
    nop
    ld a, a
    ld l, d
    ret nz

    and l
    ld l, d
    ld bc, $6b29
    ld [bc], a
    and d
    ld l, e
    inc bc
    db $dd
    ld l, e
    jp c, $a800

    push hl
    ld [hl], a
    db $db
    ld bc, $00e6
    inc b
    pop hl

jr_03d_6ab0:
    ld [$ef45], sp
    ldh a, [$d8]
    inc c
    sub c
    ld bc, $a3d6
    and e
    and c
    call c, $d580
    ld b, l
    call c, $3391
    inc sp
    ld sp, $80dc
    dec h
    call c, $d691
    and e
    and e
    and c
    call c, $b580
    db $fd
    ld [bc], a
    ret z

    ld l, d
    jp c, $9600

    call c, $d6b1
    and e
    and e
    and c
    call c, $d5a0
    ld b, l
    call c, $33b1
    inc sp
    ld sp, $a0dc
    dec h
    call c, $d6b1
    and e
    and e
    and c

jr_03d_6af0:
    call c, $b5a0
    call c, $a3b1
    and e
    and c
    call c, $bfb3
    cp a
    cp a
    sub l
    call c, $a3b1
    and e
    and c
    call c, $b5a0
    call c, $c3b1
    jp $dcc1


    and b
    push de
    ld h, l
    call c, Call_03d_53b1
    ld d, e

Call_03d_6b13:
    ld d, c
    call c, $45a0
    call c, $d6b1
    jp $c1c3


    call c, $d5a0
    dec d
    db $fd
    ld [bc], a
    rla
    ld l, e
    db $fd
    nop
    ret c

    ld l, d
    db $db
    ld [bc], a
    pop hl
    jr nz, jr_03d_6ab0

    and $00
    ld [bc], a
    ret c

    inc c
    ld [hl], b
    cp $8e
    ld l, e
    call c, $fec5
    adc [hl]
    ld l, e
    call c, $dbc1
    inc bc
    ld bc, $a3d6
    and e
    and c
    call c, $d5b0
    ld b, l
    call c, $33c1
    inc sp
    ld sp, $b0dc
    dec h
    call c, $d6c1
    and e
    and e
    and c
    call c, $b3b0
    call c, $dcc1
    jp nz, $a0d5

    add b
    and b
    call nc, $e110
    nop
    nop
    call c, $573d
    pop hl
    jr nz, jr_03d_6af0

    call c, $d6b0
    add e
    db $db
    ld [bc], a
    call c, $d5b0
    ld [hl], e
    ld d, c
    ld [hl], c
    add e
    jp $23d4


    ld sp, $d521
    jp $7383


    ld d, c
    ld [hl], c
    add e
    ld d, e
    call c, Call_03d_7fb7
    db $fd
    nop
    add hl, sp
    ld l, e
    push de
    ld d, e
    ld sp, $6351
    and e
    jp $11d4


    push de
    pop bc
    and e
    ld h, e
    ld d, e
    ld sp, $6351
    inc sp
    ld e, a
    rst $38
    rst $28
    rrca
    ret c

    inc c
    inc d
    rrca
    rrca
    rrca
    dec bc
    push de
    ld b, e
    sub $a1
    push de
    ld d, c
    ld bc, $0151
    ld d, c
    ld h, e
    sub $a1
    push de
    ld d, c
    ld bc, $0151
    ld d, c
    ld b, e
    db $fd
    inc b
    xor l
    ld l, e
    sub $c1
    push de
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    add e
    sub $c1
    push de
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld h, e
    db $fd
    ld [bc], a
    jp $fd6b


    nop
    xor l
    ld l, e
    db $e3
    nop
    ret c

    inc c
    rrca
    db $fd
    inc b
    pop hl
    ld l, e
    ld bc, $f0ef
    add c
    sub c
    add e
    sub c
    add e
    db $fd
    nop
    rst $20
    ld l, e
    add c
    ei
    ld l, e
    ld [bc], a
    jr nz, jr_03d_6c64

    inc bc
    ld d, c
    ld l, h
    jp c, $9000

    push hl

jr_03d_6bff:
    ld [hl], a

Jump_03d_6c00:
    rst $28
    rrca
    db $db
    ld [bc], a
    ret c

    ld b, $b3
    push de
    ret nz

    call nc, $9050
    and b
    rst $00
    ret c

    inc c
    or c
    inc bc
    push de
    dec h
    inc sp
    ld de, $2501
    sub $53
    or c
    pop bc
    db $fd
    nop
    ld c, $6c
    rst $28
    ldh a, [$d8]
    ld b, $25
    push de
    ld d, b
    jr nc, jr_03d_6bff

    ret nz

    sub b
    ld d, a
    call c, $d623
    and c
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
    ld sp, $fd01
    nop
    ld l, $6c
    db $e3
    inc bc
    ret c

    inc c
    dec b
    ld b, b
    nop
    ld [hl], c
    jr nc, jr_03d_6c5b

jr_03d_6c5b:
    add b
    nop
    add b
    nop
    ld [hl], e
    jr nc, jr_03d_6c62

jr_03d_6c62:
    ld b, b
    nop

jr_03d_6c64:
    ld [hl], e
    jr nc, jr_03d_6c67

jr_03d_6c67:
    add b
    nop
    add b
    nop
    ld sp, $0040
    db $fd
    nop
    ld d, [hl]
    ld l, h
    ret nz

    ld a, [hl]
    ld l, h
    ld bc, $6cce
    ld [bc], a
    inc l
    ld l, l
    inc bc
    ld e, a
    ld l, l
    jp c, $9000

    push hl
    ld [hl], a
    rst $28
    rrca
    db $db
    inc bc
    and $00
    ld [bc], a
    ret c

    inc c
    or e
    cp $b9
    ld l, h
    db $fd
    ld b, $8d
    ld l, h
    call c, $d6b2
    and b
    push de
    jr nz, jr_03d_6ccb

    nop
    sub $a0
    call c, $d5b7
    ld [hl+], a
    sub $a0
    push de
    ld [hl-], a
    sub $a0
    push de
    sub d
    db $fd
    ld [bc], a
    sub h
    ld l, h
    cp $b9
    ld l, h
    db $fd
    ld [bc], a
    xor [hl]
    ld l, h
    db $fd
    nop
    adc l
    ld l, h
    call c, $d6b2
    add b
    ret nz

    push de
    stop
    sub $80
    call c, $c2b7
    add b
    push de
    ld [de], a
    sub $80

jr_03d_6ccb:
    push de
    ld [hl], d
    rst $38
    db $db
    inc bc
    pop hl
    db $10
    inc h
    ret c

    inc c
    jp nz, $1efe

    ld l, l
    ld bc, $1efe
    ld l, l
    nop
    call nc, $d810
    inc c
    or b
    ld d, a
    db $d3
    inc de
    call nc, Call_03d_5ec3
    ld b, b
    ret c

    inc c
    or b
    ld d, a
    db $d3
    inc de
    call nc, $d8c3
    inc c
    or b
    db $d3
    ld d, a
    ret c

    inc c
    or a
    ld d, a
    ret c

    inc c
    rst $00
    scf
    rst $28

jr_03d_6d00:
    ldh a, [rNR44]
    rst $28
    rrca
    call nc, $efa3
    rst $38
    db $d3
    rla
    rst $28
    rrca
    call nc, $efb3
    ldh a, [$63]
    rst $28
    rst $38
    xor e
    jr nc, jr_03d_6d86

    and b
    db $d3
    jr nz, jr_03d_6d59

    db $fd
    nop
    db $d3
    ld l, h
    push de
    ld d, b
    nop
    ld d, b
    nop
    ld [hl], b
    ld [hl], b
    ld bc, $9090
    ld bc, $a0a0
    rst $38
    rst $28
    ldh a, [$d8]
    inc c

jr_03d_6d30:
    jr z, jr_03d_6d30

    ld d, d
    ld l, l
    db $fd
    ld b, $31
    ld l, l
    jr nc, jr_03d_6d3a

jr_03d_6d3a:
    ret nz

    nop
    ld h, b
    and d
    jr nc, jr_03d_6d00

    ld bc, $c230
    db $fd
    ld [bc], a
    jr c, @+$6f

    cp $52
    ld l, l
    db $fd
    ld [bc], a
    ld b, a
    ld l, l
    db $fd
    nop
    ld sp, $d56d
    stop
    and b
    nop
    ld b, b
    add d

jr_03d_6d59:
    db $10
    and b
    ld bc, $a210
    rst $38
    db $e3
    nop
    ret c

    inc c
    ld sp, $4031
    ld [hl-], a
    ld b, b
    ld [hl-], a
    ld b, b
    ld [hl-], a
    ld sp, $4031
    ld [hl-], a
    ld b, b
    ld b, b
    ld sp, $3140
    ld b, b
    db $fd
    nop
    ld h, e
    ld l, l
    add b
    add d
    ld l, l
    ld bc, $6dc4
    ld [bc], a
    inc bc
    ld l, [hl]
    jp c, $e000

    push hl

jr_03d_6d86:
    ld [hl], a
    db $db
    inc bc
    and $00
    ld bc, $0cd8
    and a
    push de
    adc a
    call nc, $ef1f
    ldh a, [$d5]
    adc a
    rst $28
    rrca
    call nc, $ef17
    ldh a, [$d5]
    rst $00
    rst $28
    rrca
    adc a
    rst $28
    ldh a, [$d4]
    rla
    rst $28
    rrca
    push de
    rst $00
    rst $28
    ldh a, [$87]
    rst $28
    rst $38
    ld bc, $8181
    pop bc
    call nc, $d513
    jp $13d4


    push de
    jp $d48f


    rla
    push de
    rst $00
    db $fd
    nop
    adc h
    ld l, l
    pop hl
    db $10
    inc d
    db $db
    nop
    ret c

    inc c
    or h
    rrca
    add hl, bc
    call nc, $7181
    add c
    call c, Call_03d_5bb7
    ld sp, $6351
    add e
    ld h, c
    ld d, c
    ld sp, $5961
    call c, $31b5
    ld sp, $c7dc
    ld d, c
    ld h, e
    ld d, e
    ld h, e
    call c, $81b5
    add c
    ld b, c
    call c, Call_03d_5db7
    call c, $d587
    ld h, a
    add e
    call c, $d4b5
    add c
    add c
    call c, Call_03d_41b7
    ld e, a
    dec c
    db $fd
    nop
    call z, $d86d
    inc c
    ld de, $f0ef
    call nc, Call_03d_5111
    add c
    pop bc
    db $d3
    ld de, $c1d4
    and c
    add c
    rst $28
    rrca
    ld sp, $a161
    db $d3
    ld de, $1131
    call nc, $a1c1
    db $fd
    nop
    ld b, $6e
    ret nz

    cpl
    ld l, [hl]
    ld bc, $6ec1
    ld [bc], a
    ld c, l
    ld l, a
    inc bc
    ld a, [$da6f]
    nop
    sub b
    push hl
    ld [hl], a
    rst $28
    ldh a, [$db]
    inc bc
    and $00
    ld bc, $0cd8
    ld b, d
    push de
    inc sp
    call c, $3362
    call c, $3382
    call c, $33a2
    ret c

    ld [$fea2], sp
    xor [hl]
    ld l, [hl]
    ld b, c
    ld de, $1141
    cp $ae
    ld l, [hl]
    ld b, c
    ld de, $8141
    cp $ae
    ld l, [hl]
    ld de, $4111
    ld de, $aefe
    ld l, [hl]
    ld b, c
    ld de, $4121
    cp $b8
    ld l, [hl]
    ld h, c
    ld sp, $3161
    cp $b8
    ld l, [hl]
    ld h, c
    ld sp, $a161
    cp $b8
    ld l, [hl]
    ld sp, $6131
    ld sp, $b8fe
    ld l, [hl]
    ld h, c
    ld sp, $8161
    cp $b8
    ld l, [hl]
    ld h, c
    ld sp, $3161
    cp $ae
    ld l, [hl]
    ld b, c
    ld de, $1141
    sub $b1
    or c
    push de
    ld de, $2131
    ld de, $b1d6
    inc bc
    ld b, c
    inc bc
    push de
    ld b, c
    ld b, c
    ld h, c
    add c
    ld [hl], c
    ld h, c
    ld b, e
    ld h, c
    add e
    or c
    db $fd
    nop
    ld c, h
    ld l, [hl]
    inc bc
    push de
    ld b, b
    jr nc, jr_03d_6ef4

    ld bc, $4141
    ld bc, $03ff
    ld h, b
    ld d, b
    ld h, c
    ld bc, $6161
    ld bc, $dbff
    ld [bc], a
    pop hl
    db $10
    ld [hl+], a
    ret c

    inc c
    or d
    push de
    add e
    add e
    add e
    add e
    ret c

    inc c
    or a
    push de
    sbc e
    ret c

    ld [$41b3], sp
    sub c
    or c
    call nc, $0f11
    dec b
    ret c

    ld [$d5b7], sp
    sbc a
    ret c

    ld [$41b3], sp
    sub e
    or c
    call nc, $2113
    inc de
    ld hl, $2113
    ld de, $b1d5
    sub c
    ret c

jr_03d_6ef4:
    ld [$bfb7], sp
    ret c

    ld [$b1b3], sp
    ld h, c
    or c
    call nc, $3111
    rrca
    dec b
    ret c

    ld [$d5b7], sp
    cp a
    ret c

    ld [$61b3], sp
    or e
    call nc, $3311
    ld b, c
    inc sp
    ld b, c
    inc sp
    ld b, c
    ld sp, $d511
    pop bc
    ret c

    ld [$bfb7], sp
    ret c

    ld [$a1b3], sp
    or e
    call nc, $d811
    ld [$d5b7], sp
    sbc a
    ret c

    ld [$b1b3], sp
    sub e
    ld h, c
    ld b, c
    ld b, c
    ld h, c
    add c
    ld [hl], c
    ld h, c
    ld b, c
    ld bc, $40d4
    jr nc, jr_03d_6f7a

    inc b
    push de
    add c
    add c
    sub c
    or c
    and c
    sub c
    add c
    ld bc, $80d4
    ld [hl], b
    add b
    inc b
    db $fd
    nop
    adc $6e
    rst $28
    rrca
    ret c

    inc c
    ld d, $0f
    ret c

    ld [$fe16], sp
    add sp, $6f
    ld bc, $41d4
    cp $e8
    ld l, a
    call nc, $4191
    cp $e8
    ld l, a
    ld bc, $41d4
    push de
    sub c
    ld bc, $41d4
    push de
    ld b, c
    ld bc, $41d4
    push de
    sub c
    ld bc, $41d4
    push de
    ld b, c
    add c

jr_03d_6f7a:
    sub c
    push de
    or c
    ld bc, $61d4

Call_03d_6f80:
    push de
    ld h, c
    ld bc, $61d4
    push de
    add c
    ld bc, $61d4
    push de
    and c
    nop
    call nc, $0061
    db $fd
    inc bc
    ld a, e
    ld l, a
    push de
    or c
    ld bc, $61d4
    push de
    ld h, c
    ld bc, $61d4
    push de
    or c
    ld bc, $61d4
    ld sp, $d511
    pop bc

Call_03d_6fa7:
    or c
    ld bc, $61d4
    push de
    ld h, c
    ld bc, $61d4

Call_03d_6fb0:
    push de
    add c
    ld bc, $61d4
    push de
    ld h, c

Call_03d_6fb7:
    add c
    or c
    sub c
    ld bc, $41d4
    push de
    ld b, c
    ld bc, $41d4
    push de
    ld h, c
    ld bc, $41d4
    push de
    sub c
    ld bc, $11d4
    ld b, c
    ld b, c
    ld h, c
    add c
    ld [hl], c
    ld h, c
    ld b, c
    inc bc
    push de
    ld b, c
    inc bc
    call nc, $8181
    sub c
    or c
    and c
    sub c
    add c
    ld bc, $6141
    ld bc, $fd91
    nop
    ld d, [hl]
    ld l, a
    push de
    sub c
    ld bc, $41d4
    push de
    ld b, c
    ld bc, $41d4
    push de
    ld h, c
    ld bc, $41d4
    push de
    add c
    rst $38
    rst $28
    ldh a, [$e3]
    dec b
    ret c

    ld [$4cfe], sp
    ld [hl], b
    cp $42
    ld [hl], b
    inc de
    ld de, $1113
    inc de
    inc d
    ret c

    ld b, $30
    jr nc, jr_03d_7031

    jr nz, @-$26

    ld [$42fe], sp
    ld [hl], b
    cp $4c
    ld [hl], b
    cp $42
    ld [hl], b
    cp $4c
    ld [hl], b
    cp $42
    ld [hl], b
    cp $4c
    ld [hl], b
    cp $42
    ld [hl], b
    cp $4c
    ld [hl], b
    inc hl
    ld hl, $2123
    dec h

jr_03d_7031:
    ld de, $04d8
    inc b
    ret c

    ld b, $30
    jr nc, @-$26

    ld [$4cfe], sp
    ld [hl], b
    db $fd
    nop

Call_03d_7040:
    inc bc
    ld [hl], b
    inc de
    ld de, $1113
    inc de

Call_03d_7047:
    ld sp, $2131
    ld hl, $13ff
    ld de, $1313

Call_03d_7050:
Jump_03d_7050:
    inc de
    ld hl, $2131
    rst $38
    add b
    ld e, [hl]

Call_03d_7057:
    ld [hl], b

Call_03d_7058:
    ld bc, $70f8
    ld [bc], a
    ret z

    ld [hl], c
    jp c, $0001

    push hl
    ld [hl], a
    and $00
    ld bc, $02db
    rst $28
    ldh a, [$d8]
    inc c
    or a
    rst $10
    sbc a
    sbc a
    jp c, $a800

    db $db
    inc bc
    ret c

    ld b, $c7
    push de
    ld l, e
    and e
    call nc, $d51b
    pop bc
    or c
    adc e
    or e
    call nc, $314b
    ld hl, $06d8
    or l
    rla
    push de
    ld h, a
    and a
    jp $13d4


    ret c

    ld b, $b3
    push de
    or a
    daa
    sub $77
    rst $10
    rst $00
    ret c

    ld b, $b2
    inc bc
    push de
    or e
    or a
    sub e
    sub a
    add e
    add a

Call_03d_70a5:
    ld [hl], e
    ld [hl], a
    sub $a3
    and a
    sub e
    sub a
    add e
    add a
    ld [hl], e
    and a
    and e
    and a
    sub l
    sub l
    ld [hl], e
    add e
    ld h, e
    ret c

    ld [$d4b3], sp
    ld h, b
    add b
    and b
    or b
    ret nz

    db $d3
    db $10
    db $db
    ld [bc], a
    ret c

    inc c
    or e
    jr nc, jr_03d_70e9

    inc sp
    and b
    sub b
    and e
    call nc, $d3b1
    ld sp, $8561
    ld b, c
    ld sp, $4311
    ld [hl], c
    db $db
    inc bc
    ret c

    ld [$a092], sp
    ld h, b
    ld b, b
    db $10
    call nc, $80a0
    ld h, b
    ld b, b
    db $10
    push de
    and d

jr_03d_70e9:
    ret c

    inc c
    or d
    or c
    pop bc
    call nc, $3111
    ld b, c
    call c, $61c2
    add c
    xor a
    rst $38
    and $00
    ld bc, $0fef
    ret c

    inc c
    or a
    db $db
    ld [bc], a
    sub $1f
    rra
    db $db
    inc bc
    ret c

    inc c
    or d
    ld bc, $06d8
    ld h, d
    rst $10
    ld h, c
    and c
    sub $11
    ld d, c
    ld h, c
    and c
    push de
    ld de, $6151
    and c
    call nc, Call_03d_5111
    ld h, c
    and c
    db $d3
    ld de, $d751
    ld b, c
    add c
    or c
    sub $31
    ld b, c
    add c
    or c
    push de
    ld sp, $8141
    or c
    call nc, Call_03d_4131
    add c
    ret c

    inc c
    or a
    rst $10
    ld l, a
    call c, $d483
    ld h, c
    call c, $3181
    call c, $9193
    call c, $6191
    call c, $d3a3
    ld hl, $a1dc
    call nc, $dcb1
    or e

Call_03d_7151:
    db $d3
    ld [hl], c

Call_03d_7153:
    call c, $41c1
    call c, $d7b3
    or c
    ret c

    ld b, $b2
    call nc, $3333
    rst $10

Call_03d_7161:
    ld h, e
    call nc, $3333
    sub $13
    call nc, Call_03d_4343
    rst $10
    ld h, e
    call nc, Call_03d_4343
    rst $10
    or e
    push de
    inc sp
    inc sp
    rst $10
    jp $33d5


    inc sp
    sub $13
    push de
    ld b, e
    ld b, e
    rst $10
    jp Jump_03d_43d5


    ld [hl], e
    rst $10
    or e
    push de
    inc sp
    inc sp
    rst $10
    jp $35d5


    ld sp, $13d6
    push de
    ld b, e

Call_03d_7191:
    ld c, a
    sub $41
    push de
    add e
    add e
    add c
    sub $43
    push de
    ld [hl], e
    ld [hl], e
    sub $31
    push de
    ld h, e

Call_03d_71a1:
    ld h, e
    ld h, c
    sub $83
    push de
    jp $d6c3


    inc de
    push de
    ld b, e
    ld b, e
    sub $13
    push de
    ld b, e
    ld c, a
    ret c

    ld b, $a2

Call_03d_71b5:
    ld h, e
    add e
    sub e
    ret c

    ld b, $c2
    and e
    or e
    call nc, $d813
    ld b, $d2
    push de
    and e
    call nc, Call_03d_4f13
    rst $38
    ret c

    ld b, $10
    sub $33
    ret c

    ld b, $20
    inc sp
    ret c

    ld b, $30

Jump_03d_71d4:
    inc sp
    dec bc
    rlca
    ret c

    ld b, $10
    sub $40
    nop
    add b
    nop
    or b
    nop
    push de
    jr nc, jr_03d_71e4

jr_03d_71e4:
    ld b, b
    nop
    add b
    nop
    or b
    nop
    call nc, RST_30
    ld b, b
    nop
    add b
    nop
    or b
    nop
    db $d3
    jr nc, jr_03d_71f6

jr_03d_71f6:
    ld b, b
    nop
    add b
    nop
    or b
    nop
    jp nc, RST_30

    sub $60
    nop
    and b
    nop
    push de
    stop
    ld d, b
    nop
    ld h, b
    nop
    and b
    nop
    call nc, RST_10
    ld d, b
    nop
    ld h, b
    nop
    and b
    nop
    db $d3
    stop
    ld d, b
    nop
    ld h, b
    nop
    and b
    nop
    jp nc, RST_10

    ld d, b
    nop
    sub $40
    nop
    add b
    nop
    or b
    nop
    push de
    jr nc, jr_03d_722e

jr_03d_722e:
    ld b, b
    nop
    add b
    nop
    or b
    nop
    call nc, RST_30
    ld b, b
    nop
    add b
    nop
    or b
    nop
    db $d3
    jr nc, jr_03d_7240

jr_03d_7240:
    ld b, b
    nop
    add b
    nop
    or b
    nop
    jp nc, RST_30

    ret c

    ld [$6010], sp
    db $d3
    ret nz

    and b
    ret nz

    and b
    ld h, b
    and b
    ld h, b
    call nc, $d3c0
    ld h, b
    call nc, $a0c0
    ret nz

    and b
    ld h, b
    and b

Call_03d_7260:
    ld h, b
    push de
    ret nz

    call nc, $d560
    ret nz

    and b
    ret nz

    and b
    ld h, b
    db $d3
    and d
    ret c

    inc c
    db $10
    add b
    nop
    jp nc, $d311

    or b
    nop
    jp nc, $4061

    nop
    or c
    sub b
    nop
    rrca
    inc bc
    ret c

    ld b, $10
    sub $80
    ld [bc], a
    and c
    ld bc, $6bd3
    inc sp
    dec [hl]
    ld h, c
    ld c, e
    sub c
    ld bc, $4175
    ld l, e
    ld sp, $4501
    ld h, c
    add c
    ld bc, $0171
    add c
    ld bc, $43a3
    ld h, c
    ld bc, $b0d4
    nop
    db $d3
    jr nc, jr_03d_72a7

jr_03d_72a7:
    call nc, $00b0
    db $d3
    jr nc, jr_03d_72ad

jr_03d_72ad:
    call nc, $00b0
    db $d3
    jr nc, jr_03d_72b3

jr_03d_72b3:
    call nc, $00b0
    db $d3
    stop
    call nc, $00b0
    db $d3
    stop
    call nc, $00b0
    db $d3
    stop
    call nc, $00b0
    db $d3
    jr nc, jr_03d_72cb

jr_03d_72cb:
    call nc, $00b0
    db $d3
    jr nc, jr_03d_72d1

jr_03d_72d1:
    call nc, $00b0
    db $d3
    jr nc, jr_03d_72d7

jr_03d_72d7:
    call nc, $00b0
    db $d3
    stop
    jr nc, jr_03d_72df

jr_03d_72df:
    ld h, b
    nop
    jr nc, jr_03d_72e3

jr_03d_72e3:
    ld h, b
    nop
    add b
    nop
    or b
    nop
    add b
    nop
    or b
    nop
    add b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    ld [$0cd8], sp
    db $10
    dec c
    push de
    ld h, c
    ld b, b
    nop
    db $10
    inc c
    rst $38
    ret nz

    inc d
    ld [hl], e
    ld bc, $7358
    ld [bc], a
    sbc h
    ld [hl], e
    inc bc
    ld [$da73], a
    nop
    ld e, h
    push hl
    ld [hl], a
    db $db
    inc bc
    and $00
    ld [bc], a
    rst $28

Call_03d_731f:
    rrca
    ret c

    inc c
    dec a
    push de
    ld b, a
    ret c

    inc c
    pop bc
    push de
    ld sp, $3131
    call c, Call_03d_49b7
    call c, $31c1
    ld sp, $dc31
    or a
    ld h, e
    ld b, e
    ld de, $02fd
    dec h
    ld [hl], e
    call c, $31c1
    ld sp, $dc31
    or a
    ld c, c
    call c, $31c1
    ld sp, $dc31
    or a
    ld h, e
    add e
    or c
    call c, $afb0
    xor a
    call c, $d4b2
    ccf
    rst $38
    db $db
    inc bc
    pop hl
    inc d
    inc d
    rst $28
    ldh a, [$d8]
    inc c
    ccf
    push de
    or a
    ret c

    inc c
    pop de
    push de
    and c
    and c
    and c
    call c, $b9c7
    call c, $a1d1
    and c
    and c
    call c, $d4c7
    inc de
    push de

Call_03d_7378:
    or e
    add c
    call c, $a1d1
    and c
    and c
    call c, $b9c7
    call c, $a1d1
    and c
    and c
    call c, $d4c7
    inc de
    inc hl
    ld b, c
    call c, $37c7
    ld b, a
    ld h, a
    or a
    call c, $d3b0
    ccf
    ccf
    call c, $3fc2
    rst $38
    ret c

    inc c
    rla
    rlca
    sub $a0
    nop
    and b
    nop
    and b
    nop
    or a
    ld bc, $00a0
    and b
    nop
    and b
    nop
    inc sp
    ld h, e
    and c

Call_03d_73b2:
    ld sp, $31a1

Call_03d_73b5:
    and c
    sub c
    ld d, c
    add c
    ld h, c
    ld sp, $91a1
    ld d, c
    add c
    ld h, c
    ld de, $3141
    and c
    ld sp, $91a1
    ld d, c
    add c
    ld h, c
    ld sp, $91a1
    ld d, c
    add c
    ld h, c
    ld de, $3141
    ld [hl], c
    or c
    push de
    ld sp, $b1d6
    and c
    ld [hl], c
    ld b, c
    ld sp, $b171
    push de
    ld sp, $b1d6
    ld [hl], c
    or c
    push de
    ld hl, $0d31
    rst $38
    db $e3
    nop
    ret c

    ld b, $41
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld sp, $3131
    ret c

    inc c
    ld sp, $3131
    inc hl
    ld b, c
    ld b, c
    ld b, c
    ld sp, $3131
    dec h
    ret c

    ld b, $41
    ld b, c
    ld b, c
    ld b, c
    ret c

    inc c
    db $fd
    inc b
    ld hl, sp+$73
    rra
    rst $38
    ret nz

    dec e
    ld [hl], h
    ld bc, $7443
    ld [bc], a
    ld l, e
    ld [hl], h
    inc bc
    sub h
    ld [hl], h
    jp c, $8400

    push hl
    ld [hl], a
    and $00
    ld bc, $12e1
    inc h
    db $db
    ld [bc], a
    rst $28
    rrca
    ret c

    inc c
    ld l, b
    push de
    ld [hl], c
    ld h, c

jr_03d_7432:
    ld [hl], a
    ld sp, $5141
    ld h, c
    ld [hl], c
    inc bc
    ld [hl], c
    inc bc
    ld [hl], c
    ld bc, $0571
    db $fd
    nop
    inc sp
    ld [hl], h
    db $db
    nop
    ret c

    inc c
    and c
    inc bc
    rst $10
    ret nz

    call nz, $70d6
    ld [hl], h
    rst $10
    ret nz

    sub $30
    ld [hl], b
    jr nc, jr_03d_7432

    and c
    rst $10
    ret nz

    pop bc
    sub $30
    ld sp, $7170
    or b
    or c
    rst $10
    ret nz

    sub $30

jr_03d_7465:
    ld [hl], b
    jr nc, jr_03d_7465

    nop
    ld d, a
    ld [hl], h
    pop hl
    ld [de], a
    inc h
    rst $28
    ldh a, [$d8]
    inc c
    inc d
    call nc, $b1c1
    rst $00
    db $d3
    ld b, c
    ld sp, $1121
    cp $8a
    ld [hl], h
    add c
    sub c
    and c
    or c
    cp $8a
    ld [hl], h
    db $fd
    nop
    ld [hl], a
    ld [hl], h
    call nc, $03c1
    pop bc
    inc bc
    pop bc
    ld bc, $05c1
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    ld h, e
    rrca
    ld b, c
    add c
    ld sp, $fd81
    nop
    sbc d
    ld [hl], h
    ret nz

    xor [hl]
    ld [hl], h
    ld bc, $7514
    ld [bc], a
    sub a
    ld [hl], l
    inc bc
    jr c, jr_03d_7524

    jp c, Jump_03d_7b00

    push hl
    ld [hl], a
    reti


    ld [bc], a
    rst $28
    rrca
    db $db
    inc bc
    pop hl
    dec b
    ld h, h
    ret c

    inc c
    xor b
    call nc, $3010
    cp $e6
    ld [hl], h
    db $db
    ld bc, $a8dc
    cp $f7
    ld [hl], h
    cp $8a
    ld [hl], l
    call nc, $0070
    call c, $fe53
    inc c
    ld [hl], l
    call c, $fec3
    inc c
    ld [hl], l
    call c, $fee3
    inc c
    ld [hl], l
    rrca
    db $fd
    nop
    rst $00
    ld [hl], h
    ld b, b
    nop
    jr nc, jr_03d_74ea

jr_03d_74ea:
    jr nz, jr_03d_74ec

jr_03d_74ec:
    db $10
    ld [bc], a
    sub $60
    sub b
    ret nz

    push de
    jr nc, @+$62

    sub b
    rst $38
    ld bc, $40d5
    inc b
    ld b, e
    sub $a1
    push de
    ld b, b
    ld h, b
    ld [hl], l
    ld b, b
    ld [bc], a
    ld [hl], b
    nop
    ld b, b
    nop
    call nc, $0070
    rst $38
    ld bc, $c0d6
    ld b, $d5
    db $10
    inc b
    rst $38
    reti


    ld [bc], a
    pop hl
    inc b
    ld h, h
    db $db
    inc bc
    ret c

    inc c
    or a
    rst $28
    rst $38
    db $d3
    db $10

jr_03d_7522:
    jr nc, jr_03d_7522

jr_03d_7524:
    ld b, a
    ld [hl], l
    call c, $feb7
    adc d
    ld [hl], l
    db $d3
    stop
    cp $54

Call_03d_7530:
    ld [hl], l
    call c, $fe53
    ld l, b
    ld [hl], l
    call c, $fec3
    ld l, b
    ld [hl], l
    call c, $fee3
    ld l, b
    ld [hl], l
    cp $6f
    ld [hl], l
    db $fd
    nop
    ld h, $75
    ld b, b
    nop
    jr nc, jr_03d_754b

jr_03d_754b:
    jr nz, jr_03d_754d

jr_03d_754d:
    db $10
    ld [bc], a
    push de
    push bc
    db $db
    nop

Call_03d_7553:
    rst $38
    ld bc, $40d4
    inc b
    ld h, e
    db $10
    jr nc, jr_03d_759c

    ld h, b
    ld [hl], l
    ld b, b
    ld [bc], a

jr_03d_7560:
    ld [hl], b
    nop
    ld b, b
    nop
    db $d3
    ld b, b
    nop
    rst $38
    ld bc, $60d5
    ld b, $70
    inc b
    rst $38
    call c, $9063
    ld h, b
    jr nc, jr_03d_754b

    ret nz

    call c, $d5a3
    and b
    ld [hl], b
    ld b, b
    db $10
    call c, $b0c3
    add b
    ld d, b
    jr nz, jr_03d_7560

    di
    ret nz

    sub b
    ld h, b
    jr nc, @+$01

    push de
    ld bc, $0480
    and a
    or l
    and b
    ld [bc], a
    or b
    nop
    and b
    nop
    rst $38
    reti


    ld [bc], a
    pop hl
    inc b
    ld [hl+], a

jr_03d_759c:
    ret c

    inc c
    inc d
    rst $28
    ldh a, [rSB]
    cp $bf
    ld [hl], l
    cp $fe
    ld [hl], l
    cp $fe
    ld [hl], l
    call c, $fe24
    inc hl
    db $76
    call c, $fe14
    call z, $fe75
    inc hl
    db $76
    cp $e1
    ld [hl], l
    db $fd
    nop
    and l
    ld [hl], l
    push de
    ld h, b
    nop
    sub b
    nop
    call nc, RST_10
    jr nc, jr_03d_75cb

    push de
    dec [hl]

jr_03d_75cb:
    rst $38
    sub $90
    nop
    push de
    sub b
    nop
    sub $90
    nop
    sub b
    nop
    and b
    nop
    push de
    and b
    nop
    stop
    ld [hl], b
    nop
    rst $38
    call c, $d624
    sub b
    nop
    push de
    ld h, b
    nop
    sub $a0
    nop
    push de
    ld [hl], b
    nop
    call c, $d614
    or b
    nop
    push de
    add b
    nop
    sub $c0
    nop
    push de
    sub b
    nop
    rst $38
    stop

Jump_03d_7600:
    call nc, RST_10
    push de
    stop
    stop
    call nc, RST_10
    push de
    stop
    ld b, b
    nop
    add b
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    ld [hl], b
    nop
    and b
    nop
    rst $38
    sub $90
    nop
    push de
    sub b
    nop
    sub $90
    nop
    sub b
    nop
    and b
    nop
    push de
    and b
    nop
    sub b
    ld [hl], b
    ld b, b
    db $10
    rst $38
    db $e3
    inc bc
    ret c

    inc c
    ld bc, $5cfe
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $5c
    db $76
    db $fd
    nop
    ld b, b
    db $76
    rla
    ld sp, $2041
    jr nz, jr_03d_7692

    jr nc, @+$01

    ld b, c
    ld [hl], c
    ld sp, $4171
    ld [hl], c
    ld sp, $ff71
    ret nz

    ld a, c
    db $76
    ld bc, $773e
    ld [bc], a
    ld h, $78
    inc bc
    cp [hl]
    ld a, b
    jp c, $8000

    push hl
    ld [hl], a
    db $db
    inc bc
    rst $28
    rrca
    pop hl
    dec b
    ld h, h
    ret c

    inc c
    xor b
    call nc, $3010
    db $db
    inc bc
    ret c

    inc c
    xor b
    cp $e6

jr_03d_7692:
    ld [hl], h
    db $db
    ld bc, $a8dc
    cp $f7
    ld [hl], h
    cp $8a
    ld [hl], l
    call nc, $0070
    call c, $fe53
    inc c
    ld [hl], l
    call c, $fec3
    inc c
    ld [hl], l
    call c, $fee3
    inc c
    ld [hl], l
    rrca
    db $db
    nop
    ret c

    ld b, $b3
    pop hl
    ld b, $64
    cp $27
    ld [hl], a
    call nc, Call_03d_7260
    ld h, c
    ld bc, $0141
    ld de, $4131
    ld de, $b1d5
    add c
    or c
    call nc, $0311
    inc sp
    inc bc
    ld b, e
    inc bc
    ld b, c
    ld [hl], c
    cp $27
    ld [hl], a
    push de
    ld [hl], b
    add d
    ld h, c
    ld bc, $0141
    ld de, $4131
    ld de, $b1d6
    add c
    or c
    push de
    ld de, $3303
    inc bc
    ld b, e
    ld h, c
    ld d, c
    ld b, c
    ld sp, $6103
    dec c
    ld [hl], c
    add hl, bc
    db $fd
    inc bc
    rst $28
    db $76
    inc bc
    ld h, c
    dec c
    ld [hl], c
    ld bc, $0171
    ld b, c
    ld de, $a171
    db $fd
    inc b
    ld bc, $8177
    or c
    db $fd
    inc b
    rlca
    ld [hl], a
    sub c
    pop bc
    db $fd
    inc b
    dec c
    ld [hl], a
    push de
    and c
    call nc, $fd11
    inc b
    inc de
    ld [hl], a
    ret c

    inc c
    or e
    rrca

Call_03d_771f:
    dec bc
    ld h, c

jr_03d_7721:
    db $10
    jr nc, jr_03d_7721

jr_03d_7724:
    nop
    adc e
    db $76
    ld b, $c0
    call nc, $0511
    ld de, $d501
    add c
    dec b
    call nc, $374b
    push de
    or c
    dec b
    add c
    ld bc, $01a1
    or c
    add hl, bc
    rst $38
    rst $28
    rst $38
    pop hl
    inc b
    ld h, h
    db $db
    inc bc
    ret c

    inc c
    or a
    db $d3
    db $10
    jr nc, jr_03d_7724

    inc c
    or a
    cp $47
    ld [hl], l
    call c, $feb7
    adc d
    ld [hl], l
    db $d3
    stop
    cp $54
    ld [hl], l
    call c, $fe53
    ld l, b
    ld [hl], l
    call c, $fec3
    ld l, b
    ld [hl], l
    call c, $fee3
    ld l, b
    ld [hl], l
    cp $6f
    ld [hl], l
    pop hl
    ld b, $64
    cp $00
    ld a, b
    call nc, $e1a0
    nop
    nop
    call c, $bdb8
    pop hl
    dec b
    ld [hl+], a
    call c, $b4b7
    pop hl
    ld b, $64
    ret c

    inc c
    or a
    cp e
    ld bc, $10d3

jr_03d_778c:
    jr nc, jr_03d_778c

    nop
    ld a, b
    ret nz

    pop hl
    nop
    nop
    call c, $d4b8
    dec e
    pop hl
    dec b
    ld [hl+], a
    call c, $14b7
    pop hl
    ld b, $64
    ret c

    inc c
    or a
    dec de
    push de

Call_03d_77a6:
    or b
    and b
    sub b
    add b
    ret c

    ld b, $b7
    cp $1c
    ld a, b
    call nc, Call_03d_4830
    jr nc, @+$22

    dec de
    ld h, c
    ld bc, $0171
    cp $1c
    ld a, b
    push de
    pop bc
    ld bc, $11d4
    ld bc, $0131
    ld b, a
    inc bc
    ld sp, $1101
    push de
    add c
    ret nz

    call nc, $2f1e
    ccf
    ld c, a
    ld d, c
    ld hl, $b1d5
    add c
    call nc, $3161
    push de
    pop bc
    sub c
    call nc, Call_03d_4171
    ld de, $a1d5
    call nc, Call_03d_5181
    ld hl, $b1d5
    call nc, $6191
    ld sp, $c1d5
    call nc, Call_03d_71a1
    ld b, c
    ld de, $81b1
    ld d, c
    ld hl, $d3c3
    ld de, $fd31
    nop
    ld c, e
    ld [hl], a
    ret c

    ld b, $b7
    ld b, $d4
    jr nc, jr_03d_7848

    dec b
    ld b, c
    ld bc, $0511
    ld a, e
    ld h, a
    ld b, c
    dec b
    ld de, $3101
    ld bc, $0141
    push de
    ld b, c
    ld bc, $0141
    rst $38
    push de
    ret nz

    call nc, Call_03d_4312
    inc de
    ld [hl], a
    ld h, a
    inc de
    rst $38
    rst $28
    ldh a, [$e1]
    inc b
    ld [hl+], a
    ret c

    inc c
    inc d
    ld bc, $0cd8
    inc d
    cp $bf
    ld [hl], l
    cp $fe
    ld [hl], l
    cp $fe
    ld [hl], l
    call c, $fe24
    inc hl
    db $76
    call c, $fe14
    call z, $fe75
    inc hl
    db $76

jr_03d_7848:
    cp $e1
    ld [hl], l
    cp $fe
    ld [hl], l
    cp $fe
    ld [hl], l
    cp $fe
    ld [hl], l
    cp $fe
    ld [hl], l
    cp $23
    db $76
    cp $cc
    ld [hl], l
    cp $23
    db $76
    cp $cc
    ld [hl], l
    push de
    stop
    call nc, RST_10
    push de
    stop
    stop
    jr nz, jr_03d_7870

jr_03d_7870:
    call nc, RST_20
    push de
    or b
    add b
    ld d, b
    jr nz, jr_03d_78a9

    nop
    call nc, RST_30
    push de
    jr nc, jr_03d_7880

jr_03d_7880:
    jr nc, jr_03d_7882

jr_03d_7882:
    ld b, b
    nop
    call nc, VBlankInterrupt
    db $10
    push de
    and b
    ld [hl], b
    ld b, b
    ld d, b
    nop
    call nc, RST_20
    push de
    ld h, b
    nop
    call nc, RST_30
    push de
    ld [hl], b
    nop
    call nc, VBlankInterrupt
    push de
    add b
    nop
    call nc, TimerOverflowInterrupt
    push de
    sub b
    nop
    call nc, JoypadTransitionInterrupt

jr_03d_78a9:
    push de
    and b
    nop
    call nc, $0070
    push de
    or b
    nop
    call nc, $0080
    push de
    pop bc
    call nc, $0090
    db $fd
    nop
    cpl
    ld a, b
    db $e3
    inc bc
    ret c

    inc c
    ld bc, $5cfe
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $5c
    db $76
    or c
    ld [hl], c
    ld sp, $b171
    ld [hl], c
    ld sp, $fd71
    dec bc
    sbc $78
    cp $64
    db $76
    cp $64
    db $76
    cp $64
    db $76
    cp $5c
    db $76
    cp $5c
    db $76
    db $fd
    nop
    jp $c078


    add hl, bc
    ld a, c
    ld bc, $7940
    ld [bc], a
    ld l, c
    ld a, c
    inc bc
    sub [hl]
    ld a, c
    jp c, $a000

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
    rrca
    push de
    scf
    ret c

    inc c
    sub d
    push de
    dec h
    jr nz, jr_03d_7944

    ld hl, $2321
    db $fd
    ld [bc], a
    dec e
    ld a, c
    ld b, l
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, e
    sub $c5
    ret nz

    ret nz

    pop bc
    pop bc
    ret c

    inc c
    sub h
    push de
    inc de
    db $fd
    nop
    dec e
    ld a, c
    db $db
    inc bc
    rst $28
    rrca

jr_03d_7944:
    ret c

    inc c
    rrca
    push de
    add a
    ret c

    inc c
    and d
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], e
    db $fd
    ld [bc], a
    ld c, c
    ld a, c
    sub l
    sub b
    sub b
    sub c
    sub c
    sub e
    ld d, l
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ret c

    inc c
    and h
    ld h, e
    db $fd
    nop
    ld c, c
    ld a, c
    rst $28
    ldh a, [$d8]
    inc c
    dec h
    rlca
    sub $70
    inc b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld [bc], a
    db $fd
    ld [bc], a
    ld l, a
    ld a, c
    sub b
    inc b
    sub b
    sub b
    sub b
    nop
    sub b
    nop
    sub b
    ld [bc], a
    ld d, b
    inc b
    ld d, b
    ld d, b
    ld d, b
    nop
    ld d, b
    nop
    ld h, b
    ld [bc], a
    db $fd
    nop
    ld l, a
    ld a, c
    rst $28
    rrca
    db $e3
    inc bc
    ret c

    inc c
    rlca
    rrca
    rrca
    rrca
    dec bc
    jr nc, jr_03d_79d3

    jr nc, @+$32

    dec [hl]
    jr nc, jr_03d_79d8

    ld sp, $3331
    dec [hl]
    jr nc, @+$32

    ld sp, $4031
    ld b, b
    jr nc, @+$32

    db $fd
    nop
    and l
    ld a, c
    add b
    jp nz, $0179

    ld d, l
    ld a, d
    ld [bc], a
    call nc, $037a
    jp c, $a000

    push hl
    ld [hl], a
    rst $28
    rrca
    db $db
    ld bc, $06d8
    add a
    and $00
    ld bc, $a8fe

jr_03d_79d3:
    ld a, d
    and $00
    nop
    ret c

jr_03d_79d8:
    inc c
    or d
    cp $13
    ld a, d
    cp $13
    ld a, d
    cp $34
    ld a, d
    cp $34
    ld a, d
    cp $13
    ld a, d
    cp $13
    ld a, d
    cp $34
    ld a, d
    call c, $d5b4
    ld d, b
    call c, $d454
    ld d, b
    call c, $d5b4
    jr nc, jr_03d_79d8

    ld d, h
    call nc, $dc30
    or h
    sub $c0
    call c, $d554
    ret nz

    call c, $d6b4
    and b
    call c, $d554
    and b
    db $fd
    nop
    rst $10
    ld a, c
    call c, $d6b4
    ld h, b
    call c, $d574
    ld h, b
    call c, $d6b4
    and b
    call c, $d574
    and b
    call c, $d6b4
    ret nz

    call c, $d574
    ret nz

    call c, $d5b4
    jr nc, @-$22

    ld [hl], h
    call nc, $ff30
    call c, $d6b4
    ld d, b
    call c, $d574
    ld d, b

jr_03d_7a3c:
    call c, $d6b4
    and b
    call c, $d574
    and b
    call c, $d6b4
    ret nz

    call c, $d574
    ret nz

    call c, $d5b4
    jr nc, @-$22

    ld [hl], h

jr_03d_7a52:
    call nc, $ff30
    db $db
    nop
    ret c

    ld b, $a7
    rst $28
    ldh a, [$fe]
    xor b
    ld a, d
    db $db
    inc bc
    ret c

    inc c
    sub c
    db $d3
    ld d, b
    jr nc, jr_03d_7a3c

    ret nz

    and b
    ret nz

    and b
    ld d, b
    jr nc, jr_03d_7abf

    jr nc, @-$29

    ret nz

    and b
    ret nz

    and b
    ld d, b

jr_03d_7a76:
    jr nc, jr_03d_7a76

    sub h
    ld a, d

jr_03d_7a7a:
    db $d3
    ld h, b
    jr nc, jr_03d_7a52

    ret nz

    and b
    ret nz

    and b
    ld h, b
    jr nc, jr_03d_7ae5

    jr nc, @-$29

    ret nz

    and b
    ret nz

    and b
    ld d, b

jr_03d_7a8c:
    jr nc, jr_03d_7a8c

    sub h
    ld a, d
    db $fd
    nop
    ld e, a
    ld a, d
    db $d3
    ret nz

    and b
    ld d, b
    jr nc, jr_03d_7aea

    jr nc, @-$2a

    ret nz

    and b
    ret nz

    and b
    ld d, b
    jr nc, @+$52

    jr nc, jr_03d_7a7a

    ret nz

    ld d, b
    rst $38
    call nc, $d350
    ld e, a
    nop
    ld d, c
    ld [bc], a
    call c, Call_03d_51b7
    ld bc, $b7dc
    ld d, c
    nop
    call c, Call_03d_51a7
    nop
    ret c

    ld b, $65
    ld d, c

jr_03d_7abf:
    nop
    call c, Call_03d_5154
    nop
    call c, Call_03d_5163
    ld d, c
    call c, Call_03d_5191
    call c, Call_03d_50a1
    ret c

    ld [$50b1], sp
    ld d, b
    rst $38
    rst $28
    rst $38
    pop hl
    ld [de], a
    inc h
    ret c

    ld b, $13
    nop
    rrca
    db $d3
    ld d, b
    ld h, b
    ld d, c
    ret c

    inc c
    inc de

jr_03d_7ae5:
    ld e, e
    ret c

    ld b, $13
    db $d3

jr_03d_7aea:
    ld sp, $d351
    inc sp
    ld d, e
    ld h, e
    and e
    jp $c3a3


    jp nc, Jump_03d_5733

    ld h, b
    ld [hl], b
    ld h, c
    inc sp
    ld d, a
    inc sp
    ld d, e
    ld h, a
    and a

Jump_03d_7b00:
    ret nz

    pop de
    db $10
    jp nc, $a3c1

    ld h, e
    inc sp
    ld d, b
    ld h, b
    ld e, c
    ld h, c
    ld d, c
    scf
    ld d, a
    db $fd
    nop
    db $ec
    ld a, d
    add b
    inc e
    ld a, e
    ld bc, $7b68
    ld [bc], a
    push de
    ld a, e
    jp c, $f000

    push hl
    ld [hl], a
    rst $28
    ldh a, [$db]
    inc bc
    and $00
    ld [bc], a
    ret c

    inc c
    or h
    inc bc
    push de
    ld d, a
    ld d, a
    ret c

    inc c
    or e
    ld h, c
    ld d, c
    ld sp, $d411
    ld de, $c1d5
    and c
    rst $08
    ld bc, $83d6
    and a
    push de
    ld d, c
    add c
    ld h, e
    sub $67
    push de
    add c
    and c
    add e
    sub $53
    push de
    add c
    and c
    pop bc
    call nc, $d511
    rst $00
    and a
    add a
    sub $c1
    push de
    ld sp, $c3d6
    add a
    push de
    inc de
    ld d, c
    ld sp, $83d6
    and a
    db $fd
    nop
    ld b, b
    ld a, e
    rst $28
    rrca
    db $db
    inc bc
    and $00
    ld bc, $0cd8
    call nz, $d503
    rla
    sub $87
    and a
    push de
    ld d, a
    ret c

    inc c
    jp Jump_03d_51d6


    add c
    push de
    ld de, $d651
    add c
    push de
    ld de, $3151
    sub $51
    push de
    ld de, $61d6
    push de
    ld de, $51d6
    add c
    push de
    ld de, $d651
    and e
    inc de
    push de
    add c
    ld h, c
    ld d, c
    ld sp, $83d6
    inc de
    add c
    ld d, c
    push de
    ld de, $a1d6
    ld sp, $c181
    push de
    ld sp, $31d6
    ld [hl], c
    and c
    push de
    ld sp, $81d6
    push de
    ld sp, $3181
    sub $33
    add e
    ld d, c
    push de
    ld de, $d613
    add c
    push de
    ld d, c
    sub $81
    pop bc
    ld d, c
    push de
    ld de, $61d6
    push de
    ld de, $51d6
    add c
    db $fd
    nop
    sub h
    ld a, e
    pop hl
    db $10
    inc d
    ret c

    inc c
    db $10
    cp $05
    ld a, h
    cp $05
    ld a, h
    inc bc
    call nc, $d311
    ld h, c
    ld d, c
    ld h, c
    jp nc, $0313

    call nc, $d311
    add c
    ld [hl], c
    add c
    jp nc, $d313

    pop bc
    and c
    jp $81a1


    and e
    add c
    ld [hl], c
    add a
    inc bc
    cp $05
    ld a, h
    db $fd
    nop
    pop hl
    ld a, e
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
    add e
    rst $38
    ret nz

    ld [hl+], a
    ld a, h
    ld bc, $7cf4
    ld [bc], a
    or a
    ld a, l
    inc bc
    sbc d
    ld a, [hl]
    jp c, $9000

    push hl
    ld [hl], a
    rst $28
    rrca
    pop hl
    ld [$db24], sp
    ld [bc], a
    ret c

    inc c
    or a
    rlca
    call nc, RST_20
    ld [hl+], a
    nop
    jr nz, @+$22

    jr nc, jr_03d_7c3b

jr_03d_7c3b:
    ld [hl-], a
    nop
    jr nc, jr_03d_7c6f

    ld b, b
    nop
    ld b, d
    nop
    ld b, b
    ld b, b
    ld d, b
    nop
    ld d, d
    nop
    ld d, b
    ld d, b
    ret c

    inc c
    or c
    ld bc, $a1d6
    db $fd
    inc b
    ld c, [hl]
    ld a, h
    ld bc, $fdc1
    ld [$7c55], sp
    call c, $dbb4
    ld bc, $c5d5
    and b
    ret nz

    and l
    call nc, $5030
    call c, $dbb1
    ld [bc], a
    ld bc, $a1d6
    db $fd

jr_03d_7c6f:
    inc b
    ld l, e
    ld a, h
    ld bc, $01c1
    pop bc
    ret c

    ld b, $b7
    call nc, $0053
    push de
    ret nz

    call nc, $8050
    rst $00
    db $d3
    ld d, a
    call c, $03b1
    sub $c3
    inc bc
    push de
    ld d, e
    inc bc
    ld d, e
    inc bc
    sub $a3
    db $fd
    inc bc
    adc [hl]
    ld a, h
    call c, $d4a7
    ld [hl], e
    and e
    inc bc
    push de
    add c
    pop bc
    call nc, $0131
    push de
    pop bc
    add c
    call nc, $a080
    add b
    and b
    add b
    and b
    add b
    and b
    add a
    inc bc
    push de
    ld [hl], c
    and c
    call nc, $0131
    push de
    and c
    ld [hl], c
    call nc, $8070
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], a
    ld sp, $d501
    pop bc
    add c
    call nc, $0181
    ld sp, $c1d5
    call nc, $01c1
    sub c
    ld sp, $c1d5
    call nc, $9131
    pop bc
    ld hl, $2501
    ld bc, $2121
    ld sp, $3501
    ld bc, $3131
    ld b, c
    ld bc, $0145
    ld b, c
    ld b, c
    ld d, c
    ld bc, $0155
    ld d, c
    ld d, c
    db $fd
    nop
    ld c, e
    ld a, h
    rst $28
    ldh a, [$e1]
    ld [$db23], sp
    ld bc, $0cd8
    rst $00
    rlca
    call nc, $00a0
    and d
    nop
    and b
    and b
    db $fd
    inc b
    rst $38
    ld a, h
    db $db
    nop
    cp $8e
    ld a, l
    sub $51
    push de
    add b
    nop
    rst $10
    pop bc
    push de
    add b
    nop
    sub $51
    push de
    add b
    nop
    sub $81
    push de
    add b
    nop
    sub $a1
    push de
    and b
    nop
    sub $91
    push de
    sub b
    nop
    sub $81
    push de
    add b
    nop
    sub $51
    push de
    ld d, b
    nop
    cp $8e
    ld a, l
    sub $51
    push de
    add b
    nop
    rst $10
    pop bc
    push de
    add b
    nop
    sub $a1
    call nc, RST_20
    sub $51
    call nc, RST_20
    sub $31
    push de
    ld [hl], b
    nop
    rst $10
    and c
    push de
    ld [hl], b
    nop
    rst $10
    pop bc
    push de
    ld [hl], b
    nop
    sub $41
    push de
    and b
    nop
    db $db
    nop
    ld bc, $30d3
    nop
    ld hl, $0030
    call nc, $01c7
    db $d3
    jr nc, jr_03d_7d71

jr_03d_7d71:
    ld hl, $0030
    call nc, $01a7
    db $d3
    inc sp
    ld [hl], c
    ld d, c
    jr nc, jr_03d_7d7d

jr_03d_7d7d:
    ld hl, $0030
    ld d, b
    nop
    ld d, b
    ld [bc], a
    ld e, c
    and b
    nop
    and b
    ld [bc], a
    xor c
    db $fd
    nop
    ld a, [bc]
    ld a, l
    sub $31
    push de
    ld [hl], b
    nop
    rst $10
    and c
    push de
    ld [hl], b
    nop
    rst $10
    pop bc
    push de
    ld [hl], b
    nop
    sub $21
    push de
    ld [hl], b
    nop
    sub $51
    push de
    add b
    nop
    rst $10
    pop bc
    push de
    add b
    nop
    sub $21
    push de
    add b
    nop
    sub $41
    push de
    add b
    nop
    rst $38
    rst $28
    rst $38
    pop hl
    db $10
    inc hl
    ret c

    inc c
    inc d
    rlca
    push de
    and b
    nop
    and d
    nop
    and b
    and b
    ret nz

    nop
    jp nz, $c000

    ret nz

    call nc, RST_10
    ld [de], a
    nop
    db $10
    db $10
    jr nz, jr_03d_7dd6

jr_03d_7dd6:
    ld [hl+], a
    nop
    jr nz, jr_03d_7dfa

    ret c

    inc c
    inc d
    ld [hl], h
    nop
    ld [hl], b
    add b
    and e
    db $d3
    inc sp
    ld hl, $10dc
    ld d, b
    add b
    ret nz

    nop
    add b
    ld d, b
    ret c

    ld b, $20
    jp nc, Jump_03d_7050

    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, a

jr_03d_7dfa:
    call c, $d414
    ld e, c
    ld bc, $7151
    add a
    db $d3
    daa
    inc bc
    call c, Call_03d_5110
    add c
    and c
    ld bc, $1151
    jp nc, $3020

    jr nz, jr_03d_7e42

    jr nz, jr_03d_7e44

    jr nz, @+$32

    daa
    call c, $d315
    ld [hl], e
    inc bc
    add e
    inc bc
    and e
    inc bc
    jp nc, $0333

    dec hl
    db $d3
    pop bc
    jp nc, $d321

    jp $d203


    add e
    ld [hl], e
    inc bc
    db $d3
    add e
    and e
    jp Jump_03d_53d2


    inc sp
    inc hl
    db $d3
    pop bc
    jp nc, $3321

    rlca
    db $d3
    jp $00a3


    ld b, b

jr_03d_7e42:
    ld [hl], b
    and b

jr_03d_7e44:
    jp nc, $d517

    add c
    ld bc, $01c1
    ld sp, $c101
    ld bc, $0151
    pop bc
    ld bc, $0181
    pop bc
    ld bc, $0131
    ld [hl], c
    ld bc, $a1d6
    ld bc, $71d5
    ld bc, $0141
    call nc, $0111
    push de
    and c
    ld bc, $11d4
    ld bc, $81d5
    ld bc, $01c1
    ld sp, $c101
    ld bc, $0191
    pop bc
    ld bc, $0151
    pop bc
    ld bc, $01a1
    and l
    ld bc, $a1a1
    pop bc
    ld bc, $01c5
    pop bc
    pop bc
    call nc, $0111
    dec d
    ld bc, $1111
    ld hl, $2501
    ld bc, $2121
    db $fd
    nop
    jp c, $e37d

    inc b
    ret c

    ld b, $20
    jr nz, @+$22

    jr nz, jr_03d_7ec3

    jr nz, jr_03d_7ec5

    jr nz, jr_03d_7ec7

    jr nz, jr_03d_7ec9

    jr nz, jr_03d_7efc

    ld d, c
    cp $e2
    ld a, [hl]
    inc sp
    inc sp
    ld sp, $3121
    ld hl, $3333
    ld sp, $3121
    ld hl, $3333
    ld sp, $3121
    ld hl, $3333

jr_03d_7ec3:
    jr nz, @+$22

jr_03d_7ec5:
    jr nz, jr_03d_7ee7

jr_03d_7ec7:
    jr nz, @+$22

jr_03d_7ec9:
    jr nz, jr_03d_7eeb

    db $fd
    dec b
    xor a
    ld a, [hl]
    inc sp
    inc sp
    ld sp, $3131
    ld sp, $3333
    ld sp, $3131
    ld sp, $e2fe
    ld a, [hl]
    db $fd
    nop
    xor a
    ld a, [hl]
    inc sp
    rst $00
    ld sp, $3331

jr_03d_7ee7:
    rst $00
    ld sp, $3331

jr_03d_7eeb:
    rst $00
    ld sp, $3331
    rst $00
    ld sp, $ff31
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_7efc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03d_7f87:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03d_7fb7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
