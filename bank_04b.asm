; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    ld l, l
    dec bc
    inc a
    ld a, h
    inc bc
    add e
    jr nc, jr_04b_4078

    dec c
    ld e, $05
    dec b
    nop
    inc bc
    db $ec
    ld [hl-], a
    ld bc, $0001
    ld hl, sp+$25
    add c
    ld a, [de]
    ld bc, $0702
    dec de
    rla
    ld a, [hl-]
    add hl, hl
    dec h
    ld b, d
    ld h, a
    pop bc
    cp $c6
    ld a, [de]
    ld a, [hl+]
    ld [$e017], sp
    adc a
    ld [hl], b
    ld a, a
    ret z

    rst $08
    inc e
    ccf
    inc bc
    inc bc
    ld [hl+], a
    ld bc, $c384
    inc d
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    inc c
    ld c, $0d
    ld c, $0b
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    inc b
    ld b, $04
    inc b
    nop
    ld [hl+], a
    ld [$0010], sp
    ld de, $1211
    ld b, $23
    cpl
    dec h
    ld e, $4a
    db $18, $9c
    jr nz, jr_04b_408d

    ld b, b
    ld b, b
    add b
    or d
    pop af
    rra
    rlca
    rlca
    ld [$0708], sp
    rlca
    ld b, $06
    add hl, bc
    add hl, bc
    ld c, $0e
    inc bc
    rlca
    rra
    ccf
    db $fc
    cp $70
    ld hl, sp-$02

jr_04b_4078:
    rst $38
    xor a
    ld a, a
    ld d, b
    or b
    adc b
    ld hl, sp+$48
    ld a, b
    inc b
    inc a
    ld b, e
    inc b
    db $fc
    ldh [$2e], a
    ld [$09f9], sp
    ei
    inc de

jr_04b_408d:
    rst $30
    daa
    rst $28
    xor h
    ccf
    dec de
    rra
    sub a
    cp a
    cp [hl]
    cp [hl]
    rst $38
    di
    ld a, [$f5e5]
    ld c, d
    ld hl, sp+$47
    ldh a, [rIF]
    or h
    ld c, l
    cp b
    ld e, c
    add sp, $6b
    ld h, b
    sbc a
    ld bc, $017f
    ccf
    ld b, [hl]
    rst $38
    ei
    ld a, d
    add d
    add e
    ld bc, $0101
    sbc d
    nop
    ld c, a
    ld [de], a
    inc bc
    inc bc
    rst $08
    call z, $30ff
    rst $38
    add c
    ld a, a

jr_04b_40c4:
    jr jr_04b_40c4

    cp $01
    ld bc, $c4c4
    ld b, $86
    rlca
    ld b, e
    rlca
    inc bc
    ld [bc], a
    inc bc
    pop bc
    jp $00c3


    sub d
    ld bc, $0404
    ld [hl+], a
    ld [$38e0], sp
    jr jr_04b_4112

    ld a, b
    pop af
    ldh a, [$fb]
    ldh [$dd], a
    db $e3
    ld e, [hl]
    xor $f2
    ld [$dfd0], a
    db $10
    rra
    ld [$060f], sp
    rlca
    add c
    add c
    ld b, a
    rst $00

Jump_04b_40f8:
    ld e, e
    db $dd
    ld a, a
    ldh [$7f], a
    ret nz

    rst $38
    ld b, b

Jump_04b_4100:
    ld [$f6d5], a
    xor a
    ld sp, hl
    add hl, de
    jp $fe81


    ld h, e
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    adc b
    ld a, a

jr_04b_4112:
    adc h
    rst $38
    ld c, l
    ld a, a
    ccf
    ccf
    inc hl
    rra
    dec b
    rrca
    rrca
    dec bc
    rrca
    rrca
    add hl, bc
    ld b, h
    rlca
    dec b
    ld [de], a
    inc b
    rra
    jr @+$81

    ld h, e
    db $fc
    adc h
    ldh a, [$30]
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    jr nz, jr_04b_4156

    ldh a, [$f0]
    inc hl
    jr nz, jr_04b_417f

    ld d, b
    ld [hl], b
    ldh [$33], a
    ldh a, [$b0]
    ldh a, [$a0]
    ldh [$d8], a
    ld hl, sp-$3a
    cp $eb
    push af
    ld [hl], h
    db $eb
    add sp, $77
    ldh [$3f], a
    cpl
    rst $18
    call nz, $20b4
    reti


jr_04b_4156:
    ret nz

    ccf
    adc b
    ld c, a
    inc c
    add a
    dec b
    add a
    ld b, $c6
    call nz, $c6c4
    ld h, d
    db $e3
    inc hl
    ld [c], a
    or e
    jp nc, Jump_04b_5293

    db $db
    ld [$2a4b], a
    ei
    ld a, [bc]
    ei
    inc b
    ld c, b
    rst $38
    nop
    inc b
    inc b
    rst $38
    inc c
    rst $38
    inc e
    ld [hl+], a
    rst $38
    inc hl

jr_04b_417f:
    cp $03
    cp h
    cp h
    inc l
    inc a
    ld b, l
    inc a
    inc h
    inc de
    cp h
    and h
    sbc h
    sub h
    ld a, [de]
    ld [de], a
    ld c, $0a
    dec c
    add hl, bc
    rra
    inc e
    cpl
    jr z, jr_04b_4217

    ld h, e
    sbc a
    adc a
    ldh a, [$f0]
    or h
    nop
    ld h, c
    ld [hl+], a
    add b
    ld c, c
    ld b, b
    ret nz

    and l
    ld bc, $1224

jr_04b_41a9:
    add hl, de
    dec sp
    nop
    ld b, h
    ld c, b
    ld c, b
    ret nc

    adc b
    xor $90
    ld e, [hl]
    pop af
    ld c, a
    pop af
    daa
    ld a, [$fc27]
    add hl, de
    ld b, h
    cp $11
    dec b
    inc de
    db $fd
    ld e, $fe
    jr @-$06

    ld b, e
    jr nz, jr_04b_41a9

    nop
    ret nz

    cp d
    nop
    add hl, de
    add hl, bc
    ldh [$e0], a
    cp $1e
    cp c
    ld hl, $9f9f
    ld [hl], b
    ld [hl], b
    db $f4
    jr z, jr_04b_41dc

jr_04b_41dc:
    dec h
    add hl, bc
    add b
    ld b, b
    ld h, b
    jr nc, jr_04b_41f3

    jr c, jr_04b_421d

    ld b, h
    call nz, $2482
    ld [bc], a
    add hl, bc
    add [hl]
    ld [bc], a
    call z, $f804
    jr @-$1e

    ld h, b

jr_04b_41f3:
    add b
    add b
    db $f4
    ld a, [hl+]
    nop
    inc hl
    nop
    add b
    ld h, c
    add h
    nop
    stop
    ld c, $8e
    ld bc, $0226
    ld bc, $0301
    and a
    ld [bc], a
    ld a, d
    adc c
    nop
    add b
    add hl, bc
    jr jr_04b_4290

    inc l
    ld l, a
    ld [hl], e
    ld l, e
    ld [hl], c
    pop de

jr_04b_4217:
    pop hl
    and c
    and e
    nop
    adc [hl]
    add a

jr_04b_421d:
    nop
    sbc b
    adc b
    nop
    ldh a, [rP1]
    ld hl, sp-$7b
    nop
    ld a, [$c00f]
    ret nz

    nop
    add b
    ld a, $7f
    rrca
    rra
    inc bc
    rlca
    ret nz

    pop bc
    rrca
    rra
    ccf
    ld a, a
    and l
    ld [bc], a
    ld b, e
    dec bc
    db $10
    ld [hl-], a
    ld h, e
    ld a, [c]
    db $e3
    ld [c], a
    jp $01c2


    add c
    pop hl
    pop hl
    add a
    ld [bc], a
    ld a, d
    dec b
    add b
    add b
    ld b, a
    rst $00
    ld e, e
    call c, $01a6
    inc a
    ld [de], a
    ldh [$f0], a
    ld hl, sp+$7b
    rst $38
    sbc a
    db $fc
    rst $28
    ret nz

    adc h
    inc bc
    inc sp
    ld c, $0e
    ccf
    di
    ld [hl-], a
    jp nz, $873d

    ld bc, $05fe
    add b
    rst $38
    ld h, b
    ld a, a
    dec de
    rra
    ld b, e
    ld e, $12
    inc c
    or $f2
    rst $30
    inc sp
    db $e4
    daa
    db $ec
    daa

Jump_04b_427f:
    ld c, b
    rst $08
    sbc b
    ld c, a
    db $10
    ld b, l
    rst $38
    nop
    nop
    rst $38
    adc e
    inc bc
    ld [bc], a
    inc de
    ldh [$60], a
    or b

jr_04b_4290:
    ld d, b
    ld c, b
    cp b
    xor b
    ld a, b
    cpl
    rst $28
    ld [hl], b
    ldh a, [$03]
    add c
    ld e, $0f
    cp h
    or b
    ld a, a
    rst $00
    and l
    ld bc, $0174
    add b
    add b
    add a
    ld [bc], a
    ld e, b
    dec c
    inc b
    ld c, $77
    di
    inc e
    inc c
    ldh a, [rSVBK]
    add b
    add b
    inc e
    ld [c], a
    ld a, b
    ld a, h
    xor b
    nop
    ld c, [hl]
    inc bc
    ld bc, $0200
    ld bc, $0384
    add hl, hl
    add l
    inc bc
    ld b, b
    adc b
    ld [bc], a
    ldh [$08], a
    ld bc, $0602
    jr jr_04b_4308

    ld b, a
    rst $00
    jr nc, @+$3a

    add a
    inc bc
    add d
    add l
    inc bc
    ld d, b
    ldh [$31], a
    dec b
    db $fd
    rrca
    rst $38
    rla
    rst $30
    daa
    and $4f
    call z, $e85f
    sbc a
    ldh [$ca], a
    push af
    xor c
    cp a
    add [hl]
    cp $50
    ld c, a
    adc b
    add a
    inc c
    inc bc
    inc e
    rra
    ld h, a
    ld a, e
    ld b, $9e
    dec c
    dec d
    add hl, bc
    dec a
    dec de
    ld a, [hl+]
    inc bc
    ld a, [hl+]
    inc de
    ld [hl], d
    inc sp
    ld d, d

jr_04b_4308:
    nop
    ld d, c
    ld hl, $c1a1
    pop bc
    ld h, a
    ldh [$31], a
    rra
    rra
    add hl, sp
    ld a, l
    di
    ld_long a, $ffef
    rst $38
    cp $f1
    ld a, [hl-]
    xor e
    ld e, d
    ld d, l
    xor l
    add l
    ld a, l
    ld [hl+], a
    cp $c2
    sbc $82
    sbc [hl]
    add d
    cp $02
    cp $07
    rst $38
    rlca
    db $fc
    ccf
    db $f4
    rst $38
    db $e4
    rst $28
    or h
    or $13
    ld a, [$fd0b]
    ld [$04fe], sp
    ld a, [c]
    rrca
    ret nz

    ccf
    adc l
    ld bc, $0792
    rrca
    rrca
    rlca
    rlca
    dec b
    rlca
    inc bc
    nop
    ld b, e
    inc bc
    ld [bc], a
    dec b
    rlca
    inc b
    rra
    add hl, de
    ld a, [hl]
    ld h, d
    adc l
    ld bc, $23b2
    cp $01
    sub [hl]
    sbc [hl]
    ld b, e
    sbc [hl]
    sub d
    dec b
    sbc b
    sub [hl]
    sbc h
    sub h
    inc e
    inc d
    adc [hl]
    ld bc, $0024
    ld bc, $ecff
    ld d, a
    ld bc, $0303
    inc hl
    inc b
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101
    ld a, [hl]
    dec bc
    ld b, $08
    add hl, bc
    ld [$0008], sp
    inc c
    inc b
    inc b
    ld b, $04
    ld [bc], a
    sbc d
    xor a
    add e
    pop de
    ld bc, $0b00
    ld b, e
    ld [$050f], sp
    ld b, $07
    inc bc
    inc bc
    nop
    ld bc, $0343
    ld [bc], a
    dec h
    inc b
    add l
    or e
    ld de, $e1e1
    ld a, [hl]
    ld e, $3e
    ld [bc], a
    db $fc
    inc b
    cp $04
    rst $38
    add h
    ld [hl], e
    ld l, [hl]
    ld a, [de]
    rra
    ld b, $06
    ret


    xor [hl]
    ld a, [bc]
    inc b
    inc c
    inc bc
    inc de

Jump_04b_43be:
    nop
    stop
    ld [$0406], sp
    rlca
    add e
    nop
    ld e, l
    ld a, [bc]
    inc bc
    add d
    add e
    ld b, [hl]
    ld b, h
    jr nz, @+$36

    dec c
    add hl, bc
    ld b, $06
    ld h, c
    ldh [rBCPD], a
    ret nz

    nop
    pop hl
    add b
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, [hl]
    cp [hl]
    ld c, d
    sub [hl]
    cp d
    cp [hl]
    sub c
    ld e, a
    ld d, c
    ccf
    ld [hl-], a
    inc a
    inc h
    jr c, @+$2a

    ld hl, sp-$16
    dec e
    dec d
    inc e
    db $f4
    ld c, $fa

jr_04b_43f5:
    ld b, $e5

jr_04b_43f7:
    inc bc
    add d
    nop
    rlca
    nop
    rrca
    ret nz

    rst $08
    jr nc, @+$01

    ret z

    ccf
    cp $17
    push af
    ld de, $20cb
    rst $30
    jr nz, jr_04b_43f7

    jr nc, jr_04b_43f5

    add sp, -$20
    daa
    ld h, b
    jr nz, jr_04b_4434

    jr nc, jr_04b_4446

    jr jr_04b_4488

    ld d, $f8
    add hl, bc
    db $fc
    inc b
    ld a, a
    add e
    ccf
    ld b, b
    rra

Call_04b_4422:
    cpl
    ldh a, [$f0]
    nop
    ld bc, $6222
    db $10
    sub d
    ld [$848c], sp
    add h
    nop
    add b
    inc bc
    inc bc
    inc b

jr_04b_4434:
    dec b
    rlca
    rlca
    push bc
    ld [hl], $8b
    jp $0014


    rra
    rra
    ldh [$e0], a
    and l
    nop
    sub e
    rlca
    ld l, a

jr_04b_4446:
    rra
    ccf
    ldh [$1f], a
    db $10
    ld c, a
    ld c, b
    ld b, h
    rrca
    ld [$3f03], sp
    ld b, b
    ret nz

    ld [$0061], sp
    ld [$1061], sp
    ld a, [hl-]
    ld a, h
    cp a
    sbc a
    ldh [rIE], a
    ld b, b
    ld a, a
    jr nc, jr_04b_44a3

    adc a
    rst $08
    ld l, a
    ldh a, [$1f]
    rst $38
    nop
    ld b, e
    ldh a, [rP1]
    ld b, $e0
    nop
    ldh [$e1], a
    pop hl
    rst $38
    ld e, $47
    rst $38
    nop
    inc bc
    rra
    ldh [rP1], a
    rra
    and l
    nop
    and l
    ld bc, $3f00
    ld h, c
    ld [bc], a
    ldh [$e0], a

jr_04b_4488:
    nop
    ld [hl+], a
    rst $38
    rrca
    add b
    add b
    ld b, b
    ld b, b
    ld b, $46
    add hl, bc
    add hl, hl
    ld de, $0b31
    ld bc, $8097
    ld c, a
    ret nz

    ld b, e
    rst $18
    ld b, b
    ldh [rNR42], a
    and e
    adc h

jr_04b_44a3:
    ld d, a
    ld [bc], a
    db $eb
    pop bc
    scf
    jr nc, jr_04b_44b9

    inc c
    inc bc
    ld [bc], a
    nop
    ld bc, $8040
    sub c
    ld h, b
    ld sp, hl
    inc e
    db $e3
    ld [hl+], a
    ret z

    ld c, c

jr_04b_44b9:
    pop bc
    ld b, c
    ld b, c
    pop bc
    pop hl
    pop hl
    dec de
    ld a, [de]
    rlca
    add h
    add e
    nop
    call nz, $c11b
    push hl
    sbc $99
    ld a, [hl]
    di
    ld a, l
    rst $20
    ei
    adc [hl]
    db $fc
    ccf
    ldh a, [rIE]
    ld b, b
    ccf
    jr nz, jr_04b_44f8

    nop
    rra
    ld bc, $c70f
    rst $08
    ld sp, hl
    ccf
    rst $38
    ld bc, $ff43
    nop
    dec b
    cp $01
    ldh [rNR34], a
    nop
    ldh [$61], a
    dec bc
    ld bc, $0107
    add hl, de
    inc bc
    ld [c], a
    dec c
    ld c, $38

jr_04b_44f8:
    ccf
    add $c7
    adc e
    nop
    sub d
    ld [$3010], sp
    ret c

    ret z

    jr c, jr_04b_450d

    ldh a, [rNR10]
    ldh [$a4], a
    nop
    jp $8017


jr_04b_450d:
    add c
    add d
    add d
    call nz, $c844
    ld e, b
    ldh [$e0], a
    add c
    add b
    rlca
    nop
    rrca

jr_04b_451b:
    ld bc, $02fe
    db $fc
    inc c
    ret c

    jr c, jr_04b_451b

    adc b
    ld b, e
    ldh a, [$50]
    ldh [$2a], a
    ldh [$60], a
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld a, b
    ld hl, sp-$7a
    cp $81
    rst $38
    ldh [$1f], a
    ld d, b
    rlca
    xor b
    inc bc
    ld d, h
    add e
    cpl
    rst $00
    inc e
    call z, $f878
    adc b
    ld hl, sp+$1c
    db $e4
    inc a
    call nz, $847c
    ld hl, sp-$78
    ld hl, sp-$38
    ldh a, [$b0]
    ld hl, sp-$78
    call z, $8422
    dec c
    add [hl]
    ld [bc], a
    adc $02
    cp $02
    db $fc
    inc b
    adc b
    ld a, b
    inc b
    add h
    ld hl, sp-$08
    db $76
    ld bc, $20c0
    ld b, e
    jr nz, jr_04b_45cc

    and [hl]
    nop
    ld e, l
    cp e
    nop
    ld h, d
    inc hl
    add b
    inc bc
    add b
    add b
    add b
    add b
    db $ec
    add hl, hl
    add l
    ld bc, $0302
    ld a, a
    ld b, [hl]
    cp a

Jump_04b_4582:
    ld c, e
    add e
    ld bc, $850c
    ld bc, $0570
    rst $38
    db $10
    rst $38
    ld [$f8ff], sp
    add e
    ld bc, $877c
    ld bc, $07e0
    rst $38
    ld [hl+], a
    cp $41
    rst $38
    ld a, c
    ld b, a
    rst $00
    adc d
    xor a
    ld bc, $974a
    adc l
    xor a
    inc bc
    ld [$08ff], sp
    rst $08
    adc l
    xor a
    dec b
    ld b, c
    ld a, a
    pop bc
    rst $38
    pop hl
    rra
    adc h
    ld bc, $ccf3
    nop
    sbc l
    nop
    ld [bc], a
    ret z

    add b
    ld c, $60
    add b
    sub b
    adc b
    adc b
    add h
    add h
    ld b, d
    ld b, e
    ld h, b
    ld b, b
    jr nc, jr_04b_45ec

jr_04b_45cc:
    jr c, jr_04b_45ee

    and h
    ld [bc], a
    ld a, $03
    ld b, $03
    inc bc
    ld [bc], a
    and h
    ld [bc], a
    pop bc
    adc e
    nop
    and h
    ld h, e
    ld b, $0c
    inc c
    ld [de], a
    ld [de], a
    ld de, $1011
    and h
    nop
    db $fd
    ld h, c
    ldh [$33], a
    ret nz

jr_04b_45ec:
    add b
    ld a, c

jr_04b_45ee:
    ld b, [hl]
    jr c, jr_04b_4619

    jr nc, jr_04b_4623

    ld hl, $6621
    ld b, [hl]
    ld a, b
    ld c, b
    ldh [$f0], a
    jr nz, jr_04b_461d

    ld bc, $0300
    rlca
    jr jr_04b_460b

    pop hl
    ld de, $9070
    ldh a, [$30]
    ldh a, [$50]

jr_04b_460b:
    ld a, e
    ld c, e
    db $fc
    call nz, Call_04b_4878
    ldh a, [$d0]
    jr nc, @+$16

    scf
    db $e3
    ld e, c
    jp hl


jr_04b_4619:
    inc e
    db $f4
    ld c, $8a

jr_04b_461d:
    rlca
    dec b
    adc c
    ld bc, $0926

jr_04b_4623:
    jr nz, jr_04b_4655

    ld c, b
    ld c, b
    ld bc, $0249
    add [hl]
    inc b
    add h
    ld h, c
    dec c
    jr c, jr_04b_4669

    ld b, l
    ld e, h
    ld a, h
    ld [hl], h
    ld e, h
    ld h, l
    ld a, [hl-]
    jr c, jr_04b_467f

    nop
    ld a, a
    ld a, a
    add a
    ld [bc], a
    and $04

jr_04b_4641:
    ld e, [hl]
    ccf
    ccf
    ret nz

    rst $38
    and e
    ld bc, $0405
    ld b, d
    ld a, [hl]
    ld b, d
    ld e, [hl]
    ld a, a
    jp $bb01


    add hl, bc
    nop
    ld [bc], a

jr_04b_4655:
    nop
    jr nz, jr_04b_4663

    rlca
    ld a, a
    rst $38
    ld h, b
    ccf
    ld b, e
    ret nz

    rst $38
    rlca
    ld h, b
    ld a, a

jr_04b_4663:
    ccf
    ld e, $cf
    ret nz

    rra
    rst $38

jr_04b_4669:
    add l
    ld bc, $619a
    ld a, [de]
    add b
    ret nz

    nop
    jr nz, jr_04b_4677

    ld h, $78
    add hl, sp
    ld b, d

jr_04b_4677:
    ld hl, $02fc
    ld a, h
    inc b
    db $fc
    inc b
    ld a, b

jr_04b_467f:
    adc b
    cp b
    ld a, b
    ld c, b
    jr jr_04b_4641

    inc b
    ld hl, sp-$1b
    ld a, $c4
    inc bc
    add $11
    call nz, $9300
    ldh [$1f], a
    db $10
    cpl
    inc l

jr_04b_4695:
    rrca
    ld a, [bc]
    dec c
    dec bc
    rrca
    sub c
    ld e, a
    ld [hl], c
    rra
    add hl, bc
    add e
    nop
    ldh a, [$0e]
    add [hl]
    res 7, l
    scf
    db $fd
    rst $20
    ld a, d
    rst $08
    ld [hl], h
    rst $08
    ld sp, hl
    sbc [hl]
    ldh a, [$3f]
    ret nz

    adc b
    ld [bc], a
    rlca
    add e
    inc bc
    pop bc
    ld c, $02
    ld [de], a

jr_04b_46bb:
    ld h, $22
    ld b, b
    ld b, [hl]
    adc h
    add h
    inc c
    inc b
    jr jr_04b_46cd

    jr c, jr_04b_46cf

    ld [hl], b
    add h
    ld [bc], a
    ld b, c
    dec b
    ret nz

jr_04b_46cd:
    ld b, b
    and b

jr_04b_46cf:
    ld b, b
    ld h, b
    and b
    add e
    ld [bc], a
    ld b, d
    daa
    add b
    dec b
    ld a, b
    ld hl, sp+$06
    cp $01
    rst $38
    rst $38
    ld a, b
    ld [hl+], a
    ld bc, $0609
    rlca
    ld [$110f], sp
    ld e, $13
    inc e
    inc hl
    inc a
    ld b, e
    daa
    jr c, @+$05

    inc hl
    inc a
    jr nz, jr_04b_4734

    ld b, e
    db $10
    rra
    dec bc
    jr @+$21

    ld [de], a
    inc de
    inc bc
    inc hl
    inc h
    inc h
    jr z, @+$2a

    db $10
    jr nc, jr_04b_4695

    or d
    nop
    inc bc
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $b9c2
    db $ec
    add hl, hl
    ldh [rNR42], a
    ld b, b
    ld b, b
    and b
    and b
    jr nz, jr_04b_46bb

    jr nc, jr_04b_472d

    ldh a, [$e0]
    db $10
    ldh a, [$08]
    ld hl, sp-$7c
    ld a, h
    add $3e
    jp $c33f


    ld a, $83
    ld a, [hl]

jr_04b_472d:
    inc bc
    db $fc
    inc bc
    cp $02
    rst $38
    inc b

jr_04b_4734:
    db $fc
    ld d, h
    call c, $8823
    ld bc, $4808
    inc hl
    ld d, b

jr_04b_473e:
    ld bc, $2020
    ld h, e
    dec d
    inc a
    inc a
    ld a, a
    ld b, e
    ld a, a
    add b
    rst $20
    ld hl, sp-$47
    ld b, $7f
    nop
    cp a
    nop
    db $e3
    db $fc
    cp a
    nop
    ld e, a
    nop
    rst $38
    rst $38
    ld a, l
    dec b
    inc bc
    inc bc
    dec b
    rlca
    nop
    inc b
    ld [hl+], a
    ld [$0d04], sp
    nop
    rlca
    inc b
    rlca
    ld [hl+], a
    inc bc
    ld bc, $0102
    add [hl]
    nop
    ld d, e
    rlca
    ld bc, $8201
    add e
    ld a, a
    db $fc
    xor a
    ld d, b
    ld b, e
    or a
    ld c, b
    inc bc
    ld l, a

Jump_04b_477f:
    sub e
    cp $ff
    rst $00
    nop
    ld c, a
    dec c
    ld bc, $0403
    inc c
    ld [$1810], sp
    jr nz, jr_04b_47ce

    ld b, b
    ld a, a
    call nz, $83ff
    ld b, h
    rst $38
    add b
    inc c
    adc [hl]
    ei
    ld c, d
    rst $38
    ld c, $ff
    nop
    rst $38
    inc bc
    rst $38
    inc a
    rst $00
    add $98
    nop
    ld d, [hl]
    ld a, [bc]
    jr nz, jr_04b_47fb

    ld d, b
    jr nc, jr_04b_473e

    jr nc, jr_04b_47c0

    ld l, b
    jr @-$1e

    cp b
    ld b, e
    inc b
    db $fc
    dec b
    nop
    ld hl, sp+$08
    ld hl, sp+$30
    ldh a, [$a3]
    rst $28

jr_04b_47c0:
    dec bc
    ldh [rNR41], a

Jump_04b_47c3:
    rst $38
    rra
    ldh [rIE], a
    sbc b
    rst $20
    inc bc
    db $fc
    rlca
    ld hl, sp+$44

jr_04b_47ce:
    add a
    ld a, b
    ld c, $f8
    rrca
    ldh a, [$1f]
    ldh a, [$7f]
    adc h
    ld a, a
    add e
    db $fc
    jp nz, $bafc

jr_04b_47de:
    rst $38
    rlca
    ld b, e
    ld a, a
    nop
    ld b, [hl]
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    db $fc
    add l
    add a
    dec b
    cp $02
    rst $38
    sub e
    rst $38
    inc c
    jp $038d


    cp $81
    ld a, a
    ld [hl], b
    ld b, e

jr_04b_47fb:
    ld c, a
    ld b, b
    ld b, e
    cpl
    ld hl, $1e43
    ld [de], a
    ld bc, $0c0c
    db $db
    nop
    ld [hl], c
    ld b, e
    ld [bc], a
    inc bc
    add e
    add l
    add hl, bc
    jp $3fc2


    db $fc
    dec c
    ld a, [$7b8d]
    add [hl]
    ld a, [hl]
    ld b, e
    call nz, $193c
    ret z

    jr c, jr_04b_47de

    ld a, [hl]
    rst $38
    push bc
    ccf
    ld b, d
    ld a, [hl]
    add e
    ld a, a
    add e
    db $fc
    call nz, $3cfc
    cp $02
    rst $38
    ld bc, $01fe
    rst $38
    ld b, b
    rst $38
    add b
    ld b, [hl]
    rst $38
    nop
    inc b
    add c
    cp $81
    db $fd
    add d
    and h
    rst $38
    ld [bc], a
    jr c, @+$45

    rst $00
    cp l
    nop
    ld d, d
    ld bc, $2020
    ld b, e
    db $10
    ld d, b
    ld [hl+], a
    adc b
    ld [$8498], sp
    db $fc
    ld [bc], a
    cp $01
    rst $38

jr_04b_4859:
    pop hl
    rst $38
    ld b, e
    ldh a, [$1f]
    rrca
    ld [hl], b
    sbc a
    ld h, b
    rst $38
    add b
    rst $38
    add [hl]
    cp $59
    ld e, c
    ld [$2848], sp
    jr z, jr_04b_487e

    db $10
    ld h, c
    inc bc
    call c, $1edc
    and d
    ld b, e
    ccf
    ld b, c

Call_04b_4878:
    dec b
    rst $38
    pop bc
    ld a, $22
    inc e

jr_04b_487e:
    inc e
    ld h, e
    inc bc
    adc a
    adc a
    rst $38
    ldh a, [$a3]
    rst $30
    ld bc, $9f6f
    ld b, e
    rst $38
    nop
    ld bc, $1fee
    ld b, [hl]
    rst $38
    nop
    ld [bc], a
    ldh [rIF], a
    rra
    db $ec
    dec l
    dec h
    add b
    nop
    ret nz

    and e
    nop
    ld c, [hl]
    ld bc, $2040
    jp c, $8600

    inc de
    add b
    add b
    ret nz

    ld h, b
    ldh a, [rNR10]
    ldh a, [$08]
    ret c

    add sp, -$08
    jr @-$06

    inc b
    db $fc
    inc b
    db $ec
    db $f4
    ld hl, sp+$18
    ld b, e
    ld hl, sp+$08
    ld bc, $f0f0
    ld [hl], c
    ld bc, $fcfc
    xor l
    ld [bc], a
    ld h, d
    rlca
    rst $38
    dec c
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr c, jr_04b_4859

    ld bc, $0338
    rra
    ld a, h
    cp a
    db $e3
    and l
    ld bc, $09f4
    rst $38
    inc hl
    ld a, a
    inc e
    ld a, a
    nop
    cp $9a
    rst $38
    dec b
    jp $9801


    add a
    ld bc, $0fa8
    inc d
    db $fc
    ld a, h
    db $e4
    db $fc
    add h
    jr c, jr_04b_493e

    jr nc, @+$72

    ldh a, [$f0]
    db $fc
    inc c
    cp $02
    add e
    nop
    ldh a, [rSC]
    db $10
    rrca
    ld [bc], a
    push bc
    nop
    add sp, $08
    ld bc, $0f10
    inc bc
    ld bc, $0107
    jr nz, @+$21

    ld h, c
    dec c
    db $10
    rrca
    nop
    inc bc
    ld bc, $4000
    ccf
    ld [bc], a
    inc bc
    nop
    ld bc, $0304
    add a
    ld bc, $6116
    dec c
    rlca
    nop
    ccf
    nop
    inc bc
    nop
    rra
    nop
    ld bc, $7f00
    nop
    add hl, de
    rlca
    ld h, c
    ld [bc], a
    ccf
    nop
    rst $38
    call nz, $018f
    ld a, a

jr_04b_493e:
    nop
    add e
    rst $38
    ld bc, $0007
    add e
    ld bc, $1960
    ld bc, $2087
    ld hl, sp+$30
    di
    add hl, bc
    add hl, sp
    ld b, $ff
    inc a
    rst $38
    ret z

    rst $38
    jr @-$0f

    ld bc, $03fe
    ld a, h
    nop
    rst $38
    rlca
    ld hl, sp-$80
    ld a, a
    push bc
    ld [bc], a
    dec bc
    rlca
    nop
    ld hl, sp+$7f
    ret nz

    or b
    rst $38
    add e
    inc bc
    jp nz, $87b3

    ld bc, $088f
    nop
    cp $01
    rst $38
    nop
    rst $18
    ldh [$f3], a
    ld a, h
    and l
    ld bc, $a38e
    push de
    ld bc, $80fe
    add d
    sbc l
    add [hl]
    nop
    ld a, a
    inc bc
    add b
    cp b
    nop
    sub b
    jp $fd02


    ld de, $fc04
    ldh [$1f], a
    ld [hl], b
    adc b
    ldh a, [rIF]
    ldh a, [$0c]
    ld h, b
    sbc [hl]
    ldh a, [$0c]
    nop
    rst $38
    nop
    ret nz

    add e
    ld [bc], a
    ld b, [hl]
    dec e
    nop
    rrca
    nop
    rst $00
    ld hl, sp-$68
    db $fd
    push bc
    ld hl, sp+$3f
    cp $06
    ldh [rP1], a
    cp $01
    ld hl, sp+$00
    db $ec
    rra
    ld a, e
    db $fc
    rst $38
    nop
    ld hl, sp+$00
    ld l, a
    pop af
    jr c, @+$3e

    add e
    call $0561
    ldh a, [$30]
    nop
    nop
    ld hl, sp+$00
    and l
    nop
    cp $09
    db $10
    ldh [rTMA], a
    ld hl, sp+$30
    ld b, b
    adc h
    ldh a, [rNR10]
    ld h, b
    ret z

    inc bc
    dec b
    inc b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld h, c
    inc bc
    ret nz

    nop
    rlca
    rst $38
    sub b
    nop
    and d
    nop
    inc b
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec bc
    ld [$1817], sp
    rlca
    dec d
    jr nz, jr_04b_4a22

    jr nz, jr_04b_4a34

    xor c
    ld bc, $2362
    ld bc, $fe0b
    rst $38
    inc b
    inc bc
    ld b, b
    jr nc, jr_04b_4a2e

    inc e
    add b
    ld [hl], b
    ld b, b
    ccf
    add e
    ld bc, $ac1c
    nop
    ldh [rP1], a
    ldh [rSCX], a
    db $10
    ldh a, [$a9]
    nop
    ld a, [c]
    add e

jr_04b_4a22:
    ld bc, $846c
    inc bc
    pop af
    ld b, $0f
    ret nz

    ccf
    nop
    inc bc
    rlca

jr_04b_4a2e:
    ld hl, sp+$43
    ld a, a
    nop
    rrca
    nop

jr_04b_4a34:
    ld hl, sp+$00
    db $fc
    db $10
    ldh a, [rP1]
    cp $20
    ldh [$c0], a
    db $fc
    ld hl, sp+$18
    cp $06
    adc a
    ld [bc], a
    sub $ff
    ld h, e
    dec b
    inc b
    inc c
    ld e, $12
    ld [de], a
    ld d, $43
    ld de, $0117
    dec d
    inc de
    ld b, l
    ld [$010b], sp
    ld a, [bc]
    add hl, bc
    ld b, h
    inc b
    dec b
    ldh [$2a], a
    dec c
    dec b
    inc d
    dec d
    inc d
    inc de
    inc d
    inc b
    inc hl
    daa
    jr nz, jr_04b_4a7b

    ld b, b
    ld b, a
    ld c, b
    ld b, h
    ld d, e
    dec h
    inc sp
    ld a, [hl+]
    add hl, sp
    inc e
    add hl, de
    ld a, [de]
    add hl, bc
    inc b
    add hl, de

jr_04b_4a7b:
    ld [bc], a
    add hl, de
    inc d
    add hl, hl
    ld a, [de]
    ld hl, $2d12
    rra
    db $10
    inc d
    dec de
    inc c
    rrca
    inc bc
    inc bc
    db $ec
    ld sp, $41e0
    ld bc, $0201
    ld [bc], a
    inc bc
    ld [bc], a
    add e
    add h
    add a
    add h
    ld b, a
    call nz, $df4f
    jr nc, @+$01

    ld c, b
    cp a
    ld b, b
    cp a
    pop de
    cp a
    pop hl
    ld a, a
    ld [bc], a
    rst $38
    ld a, [c]
    rrca
    db $e4
    rra
    adc $3f
    sbc l
    ld [hl], a
    ld h, c
    add $d7
    sub h
    sbc a
    sbc b
    ld e, [hl]
    pop hl
    ld a, $c3
    db $fc
    add e
    db $fc
    add a
    ld sp, hl
    adc a
    inc sp
    rst $38
    ld b, a
    rst $38
    rrca
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ldh a, [rIE]
    ld [hl], e
    adc a
    inc a
    ld a, h
    db $ec
    add hl, hl
    ldh [$3d], a
    rrca
    rra
    ld h, c
    ld h, b
    sub e

jr_04b_4ada:
    add b
    xor a
    nop
    rra
    ret nz

    rst $00
    jr c, jr_04b_4ada

    rlca
    db $fd
    ld [bc], a
    ld a, [$f505]
    jp z, $e5ba

    dec e
    ld a, [c]
    ld c, $fd
    dec bc
    rst $38
    rrca
    di
    adc a
    pop af
    sbc [hl]
    pop hl
    sbc l
    db $e3
    cp [hl]
    jp Jump_04b_4ff5


    jp $ed3f


    rra
    add [hl]
    rst $38
    ld b, $fe
    inc a
    db $fc
    ld l, b
    ld hl, sp-$38
    ld hl, sp-$58
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    inc hl
    add b
    db $f4
    cpl
    nop
    ld c, h
    ld b, $c0
    ld b, b
    rst $28
    ccf
    ld hl, sp+$30
    ret z

    ld b, e
    ld a, h
    add a
    inc e
    cp $83
    cp $c3
    ld a, [hl]
    ld [hl+], a
    rst $38
    jp nc, $2a7f

    rst $38
    sbc $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    push af
    rst $38
    ld l, a
    ld a, [$f5ff]
    adc [hl]
    adc a
    nop
    add b
    ldh a, [rNR42]
    nop

jr_04b_4b45:
    ld e, d
    nop
    nop
    ld b, a
    ld [bc], a
    inc bc
    sbc $00
    ld a, h
    ldh [$29], a
    add b
    ret nz

    ld h, b
    jr nz, jr_04b_4b45

    db $10
    xor $1f
    rst $30
    inc c
    rst $20
    inc e
    db $eb
    ld e, $c9
    ccf
    pop de
    ccf
    ld l, c
    cp a
    ld [hl], l
    rst $38
    ld a, d
    rst $38
    ld e, [hl]
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    rst $28
    rst $38
    ld a, c
    rst $38
    sbc h
    sub e
    dec d
    db $10
    ld a, [bc]
    ld [$0405], sp
    rst $08
    nop
    ld a, l
    ldh [$27], a
    ld [bc], a
    inc bc
    nop
    inc b
    ld bc, $0908
    ld [$781b], sp
    sbc a
    adc b
    inc [hl]
    rrca
    ld [hl], a
    rrca
    ei
    rrca
    push af
    rra
    db $db
    cpl
    xor l
    ld d, a
    rlca
    ei
    add e
    rst $38
    ld a, [hl]
    ld a, [hl]
    or $9e
    ei
    adc a
    rst $20
    sbc a
    ld c, a
    ld a, [hl]
    ccf
    inc a
    sub l
    ld bc, $e0aa
    ld b, a
    db $fc
    db $fc
    cp $62
    rst $18
    ld sp, $788f
    rrca
    ld hl, sp+$5e
    or c
    cp l
    ld d, e
    db $eb
    or l
    ld h, [hl]
    ei
    jp nz, $0cff

    rst $38
    db $f4
    rst $38
    add h
    rst $38
    ld c, [hl]
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $18
    ccf
    db $fc
    rst $38
    ld [hl+], a
    dec a
    ld l, l
    ld b, d
    ld d, [hl]
    ld b, c
    ld l, a
    ld b, b
    ld d, a
    ld b, b
    rst $38
    ret nz

    daa
    ld hl, sp-$60
    ld a, a
    ret c

    ccf
    rst $30
    rra
    pop af
    ccf
    ld a, c
    rst $38
    cp l
    rst $38
    ld e, [hl]
    cp $ac
    db $fc
    ldh a, [$f0]
    add a
    ld bc, $0d26
    ldh [$e0], a
    rla
    rst $30
    ld e, $f9
    ld e, a
    ld sp, hl
    cp a

jr_04b_4c01:
    rst $38
    rst $10
    ld [hl], a
    ldh [$e0], a
    cp c
    nop
    ld h, h
    ldh [$31], a
    and b
    jr nz, @+$62

    jr nz, @-$4e

    db $10
    ld hl, sp-$78

jr_04b_4c13:
    ld e, b
    add sp, $68
    ret c

    jr c, jr_04b_4c01

    jr z, jr_04b_4c13

    jr @-$06

    sub b
    ldh a, [$60]
    ldh [$b0], a
    ldh a, [$e8]
    ld hl, sp-$24
    db $e4
    cp [hl]
    ld [c], a
    ld a, [hl+]
    or $96
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    ld a, a
    rst $38
    db $fd
    ld a, a
    xor d
    ld a, [hl]
    ld d, [hl]
    cp $ac
    db $fc
    ld hl, sp-$08
    or e
    nop
    ld b, [hl]
    ld a, [bc]
    jr nc, @+$32

    ld a, b
    ld e, b
    add sp, -$08
    ld a, b
    ld hl, sp-$60
    ldh [$c0], a
    call nz, Call_04b_5801
    add a
    nop
    sub b
    rla
    sbc $3f
    add l
    ld h, a
    ld b, c
    add $d7
    sub h
    rrca
    rst $38
    ccf
    rst $38
    ld a, a

jr_04b_4c60:
    rst $38
    rst $38
    cp a
    ccf
    ld a, [hl]
    ld e, h
    ld a, a
    dec sp
    daa
    ld e, $1e
    add a
    ld bc, $0910
    ld b, h
    db $fc
    call nz, $e4fc
    db $fc
    ret c

    ld hl, sp-$38
    ld hl, sp+$44
    sub b
    ldh a, [rTMA]
    ld [hl], b
    jr nz, jr_04b_4c60

    ret nz

    ret nz

    add b
    add b
    adc e
    ld bc, $044e
    pop hl
    ld sp, $3efe
    res 1, b
    ld bc, $015f
    inc hl
    cp $89
    ld bc, $0b6a
    ld a, [$f5ff]
    rst $38
    ld l, d
    rst $38
    or l
    cp a
    sbc [hl]
    sbc a
    rlca
    add a
    rlc d
    xor c
    add hl, bc
    jr nc, jr_04b_4cb9

    jr c, jr_04b_4cb3

    and $1f
    sub a
    ld l, h
    ld [hl], c
    adc [hl]
    ld b, e
    db $e3

jr_04b_4cb3:
    ld e, $15
    jp nz, HeaderManufacturerCode

    rst $38

jr_04b_4cb9:
    rlca
    rst $38
    add hl, hl
    rst $38
    ld d, c
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    ld a, l
    rst $38
    ld hl, sp-$01
    sub l
    ret c

    add a
    ld [bc], a
    ld h, b
    ldh [rNR52], a
    db $fd
    rst $38
    ld hl, $683f
    ld b, a
    ld d, l
    ld b, e
    xor $83
    ret nc

    add a
    ld a, [$6587]
    rst $18
    xor d
    ld a, a
    db $dd
    ccf
    rst $30
    rra
    di
    ccf
    and b
    ldh [$f0], a
    ldh a, [$c8]
    ld hl, sp-$74
    db $f4
    ld e, $e2
    dec a
    jp $c3ff


    dec d
    ld b, h
    rst $38
    ld [bc], a
    ld b, $07
    rst $38
    rrca
    rst $38
    adc [hl]
    cp $7c
    add e
    ld [bc], a
    add a
    nop
    ret nz

    adc c
    inc bc
    ld d, b
    inc b
    ldh [rNR41], a
    di
    dec sp
    call z, $0386
    ld e, a
    ld bc, $7fc2
    adc l
    ld bc, $0968
    pop af
    rst $38
    ld h, d
    rst $38
    pop af
    rst $38
    sbc [hl]
    cp a
    rrca
    sbc a
    call $f902
    ld bc, $3070
    add e
    ld bc, $10d0
    rst $38
    ld c, $1b
    cp $27
    sbc $0b
    cp $06
    rst $38
    ld [de], a
    rst $38
    dec bc
    rst $38
    ld d, $ff
    cp a
    add h
    inc bc
    and l
    dec b
    ld a, c
    rst $38
    ldh a, [rIE]
    dec d
    sub b
    and e
    ld bc, $00c8
    inc bc
    ld [hl+], a
    inc b
    inc de
    add hl, bc
    ld [$080b], sp
    rra
    ld a, b
    sub a
    adc h
    ld b, d
    cp $a2
    cp $56
    cp $ac
    cp $f8
    db $fc
    ld [hl], b
    ldh a, [$63]
    dec c
    ld a, [hl]
    ld a, [hl]
    ld d, a
    ld l, a
    ld l, e
    ld d, a
    di
    adc a
    and $9f
    ld c, l
    ld a, [hl]
    dec sp
    ld a, [hl-]
    add e
    ld [bc], a
    ld l, $17
    rst $20
    rst $20
    ld e, $f9
    rra
    ld sp, hl
    ld e, a
    rst $38
    or a
    rst $30
    ret nc

    ld [hl], b
    ldh [$e0], a
    jr nc, jr_04b_4db9

    ld hl, sp-$28
    ld l, b
    ld hl, sp-$48
    ld hl, sp-$20
    ldh [$83], a
    inc bc
    ld c, h
    adc c
    inc bc
    ld c, $07
    adc $3f
    sub l
    ld a, a
    ld b, c
    cp $17
    db $e4
    adc l
    adc a
    inc b
    add a
    db $fc
    sbc a
    ld hl, sp+$7e
    adc h
    nop
    and e
    rst $38
    db $ec
    dec l
    inc hl
    ld bc, $000d
    ld bc, $0603
    rrca
    ld [$101b], sp

jr_04b_4db9:
    dec d
    db $10
    rrca
    ld [$0707], sp
    ld h, e
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc hl
    ld [$0601], sp
    ld b, $c3
    sbc [hl]
    dec b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld hl, sp+$20
    xor b
    inc c
    ld bc, $0602
    nop
    ld [$0809], sp
    rra
    db $10
    inc e
    inc de
    dec de
    inc e
    ld b, e
    rra
    db $10
    dec c
    inc a
    inc hl
    dec sp
    inc h
    ccf
    jr nz, jr_04b_4e0e

    ld de, $090f
    scf
    ld [hl], $43
    ld b, d
    ld b, e
    ld b, a
    ld b, h
    rlca
    adc a
    call z, $181f
    ccf
    ld l, b
    rst $30
    adc b
    ld b, e
    rst $28
    db $10
    rla
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld h, b
    cp a
    and b

jr_04b_4e0e:
    ld a, a
    ld b, b
    xor a
    ret nz

    rra
    ld b, b

jr_04b_4e14:
    rrca
    nop
    dec d
    nop
    ld a, [bc]
    nop
    ld bc, $8000
    ret nz

    and l
    rst $20
    rlca
    db $10
    jr jr_04b_4e14

    ldh a, [$08]
    ld [$0505], sp
    add a
    nop
    jr z, jr_04b_4e2f

    inc bc
    ld [bc], a

jr_04b_4e2f:
    inc bc
    adc h
    nop
    ld d, a
    dec de
    inc e
    inc e
    rst $38
    db $e3
    daa
    jr @+$7d

    inc b
    rst $38
    inc bc
    rst $38
    inc b
    rst $30
    ld [$10ee], sp
    rst $18
    ld hl, $41bf
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add e
    rst $38
    ld bc, $ff58
    nop
    inc b
    inc bc
    ld hl, sp+$0c
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld b, l
    ret nz

    ld b, b
    ld b, $41
    add b
    ldh [$a0], a
    rst $38
    sbc a
    rst $38
    ld b, e
    add b
    ld a, a
    ld b, e
    ld b, b
    ccf
    ld [de], a
    jr nz, jr_04b_4e7f

    jr jr_04b_4e75

    rlca
    ldh [$e0], a

jr_04b_4e75:
    jr c, jr_04b_4eaf

    rst $00
    rst $38
    ld hl, sp+$07
    ccf
    nop
    rst $38
    rlca

jr_04b_4e7f:
    ld hl, sp-$08
    ld l, l
    dec bc
    adc a
    cp a
    ld b, e
    ret nz

    dec b
    nop
    dec de
    nop
    rst $38
    nop
    rst $30
    nop
    ld b, h
    rst $38
    ld [$d383], sp
    inc b
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    ld b, [hl]
    rst $38
    nop
    dec b
    rlca
    ld sp, hl
    ld [$10fa], sp
    db $fd
    ld b, e
    db $10
    rst $38
    ld a, [de]
    ld [$06ff], sp
    rst $38
    ld bc, $80ff

jr_04b_4eaf:
    ccf
    ld h, b
    rra
    db $10
    cpl
    ld [$085f], sp
    cpl
    inc b
    ld d, a
    inc b
    and a
    ld b, $0f
    ld a, [bc]
    ccf
    ld sp, $c1ff
    ld b, e
    rst $38
    ld bc, $fe43
    ld [bc], a
    inc bc
    db $fc
    inc b
    ld hl, sp+$18
    and a
    nop
    ld a, $03
    ld a, a
    rst $38
    ret nz

    ret nz

    sub e
    nop
    ld l, b
    ld b, $ec
    ld hl, sp-$01
    db $10
    cp a
    ld h, b
    db $fc
    and [hl]
    rst $18
    dec b
    ld sp, hl
    ld b, $f6
    add hl, bc
    cp $09
    and e
    nop
    xor b
    and [hl]
    pop af
    inc b
    add e
    ld hl, sp+$70
    ld hl, sp+$0c
    ld b, l
    cp $00
    dec b
    db $fc
    ld [bc], a
    db $fc
    add d
    ld l, b
    db $f4
    and e
    nop
    ld d, c

jr_04b_4f02:
    inc bc
    ret nc

    jr nc, jr_04b_4f02

    inc c
    add l
    sbc a
    inc b
    push af
    nop
    xor d
    nop
    ld d, b
    ld h, l
    ld [bc], a
    db $10
    inc b
    inc c
    and a
    pop hl
    add hl, bc
    ld bc, $3e01
    ccf
    pop de
    sbc $0b
    inc c
    rlca
    ld b, $8d
    nop
    ld e, b
    dec b
    ldh a, [$f0]
    inc a
    inc c
    ld a, [hl]
    ld [bc], a
    ld b, h
    rst $38
    ld bc, $0002
    ccf
    ret nz

    call nz, $ac00
    ld c, $11
    rst $38

jr_04b_4f38:
    ld bc, $12ff
    rst $38
    inc e
    rst $38
    jr nz, @+$01

    jp $1cfc


    and $e6
    dec h
    ld bc, $0303
    inc bc
    rrca
    dec a
    add e
    nop
    ret c

    rlca
    ld bc, $0701
    ld b, $0f
    jr jr_04b_4f96

    ld [hl], b
    ld b, e
    rra
    db $10
    ld [$e0fa], sp
    push af
    nop
    xor b
    nop
    ld b, b
    nop
    add b
    add h
    nop
    reti


    dec de
    jr nz, @+$62

    jr jr_04b_4f85

    inc c
    ld c, $0b
    dec bc
    db $f4
    db $f4
    ld [$3008], sp
    jr nc, jr_04b_4f38

    ret nz

    db $10
    ldh a, [$f8]
    ld [$04fc], sp
    adc h
    inc b
    db $fc
    add h
    ld a, b
    ld a, b

jr_04b_4f85:
    or l
    nop
    ld a, [de]
    inc hl
    ret nz

    ld bc, $a0e0
    add e
    ld bc, $0520

jr_04b_4f91:
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b

jr_04b_4f96:
    add b
    or e
    nop
    ld e, $a5
    nop

jr_04b_4f9c:
    ld l, $0b
    add b
    ld b, b
    ld hl, sp+$78
    call nz, $c444
    call nz, Call_04b_6868
    jr jr_04b_4fc2

    inc hl
    inc b
    inc bc
    sbc b
    sbc b
    ld h, b
    ld h, b
    and h
    nop
    ld b, [hl]
    ld [bc], a
    db $10
    ldh [$e0], a
    ld [hl], l
    ld [bc], a
    ccf
    ldh [$3f], a
    add h
    ld bc, $526f
    rst $38

jr_04b_4fc2:
    nop
    add h
    ld bc, $8a8b
    ld bc, $0fe0
    ld bc, $06fa
    ldh a, [$08]
    ldh [rNR10], a
    call nz, $c62e
    ld de, $4193
    sub e
    jr nz, jr_04b_4f91

    ld b, e
    jr nz, jr_04b_4f9c

    ld bc, $df60
    call nz, $a900
    inc bc
    rst $38
    add hl, bc
    rst $38
    ld b, $85
    ld [bc], a
    ld a, [bc]
    add e
    ld [bc], a
    ld d, b
    dec c
    db $fd
    jp $1eee


    pop hl
    ld h, c

Jump_04b_4ff5:
    add c
    add c
    inc bc
    inc bc
    rrca
    dec c
    ld [bc], a
    inc de
    add [hl]
    nop
    ld c, [hl]
    rrca
    add a
    add b
    adc b
    add b
    add b
    add c
    add c
    add e
    add d
    adc a
    adc h
    ld a, d
    ldh a, [$f5]
    nop
    add sp, -$78
    ld [bc], a
    ld a, c
    ld h, e
    ld bc, $0702
    ld b, e
    ld bc, $c309
    nop
    ld c, c
    dec c
    nop
    inc c
    nop
    ld [de], a
    nop
    db $10
    ld [$0509], sp
    dec b

jr_04b_5029:
    ld bc, $0003
    ld bc, $1861
    rra
    ld de, $692f
    rla
    sub [hl]
    inc de
    ld [de], a
    rrca
    inc c
    rlca
    inc c
    adc a
    adc h
    dec de
    inc [hl]
    dec de
    ld b, h
    rra
    add h
    cp a
    add h
    ccf
    ld [$437f], sp
    ld [$02ff], sp
    sub b
    ld a, a
    ldh [$83], a
    inc bc
    jr nc, jr_04b_5059

    db $fd
    inc bc
    cp $03
    db $fc
    inc b

jr_04b_5059:
    ld hl, sp-$5d
    nop
    dec sp
    db $10
    db $10
    jp $c427


    jr z, jr_04b_5029

    ld [$28c6], sp
    db $e3
    inc b
    pop hl
    inc de
    ldh a, [$08]
    db $fc
    ld [bc], a
    ld c, c
    rst $38
    nop
    add a
    inc bc

jr_04b_5074:
    ld e, d
    add hl, bc
    di
    ccf
    add c
    pop hl
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    ld h, c
    ld de, $fc38
    cp $03
    rst $38
    ld bc, $017f
    cp $02
    ld hl, sp+$1c
    ret nz

    ldh [$03], a
    inc bc
    dec de
    inc a
    ld b, e
    rst $38
    nop
    ld bc, $00fe
    adc c
    ld [bc], a
    db $76
    add l
    ld [bc], a
    ret nz

    ld [bc], a
    add b
    ret nz

    nop
    ld [hl+], a
    jr nz, @-$5b

    nop
    ld d, [hl]
    inc bc
    ret nz

    ldh [rP1], a
    db $10
    push bc
    ld [bc], a
    rst $30
    ld [hl+], a
    ret nz

    ld [bc], a
    ld b, b
    add b
    ld b, b
    jp Jump_04b_4100


jr_04b_50ba:
    and l
    adc a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $c501
    add b
    ld bc, $0404
    xor [hl]
    ld bc, $02b6
    stop
    ld [$938a], sp
    ld [de], a
    ld b, b
    jr nz, jr_04b_50f3

    jr @+$1a

    inc d
    inc d
    inc hl
    daa
    ret z

    ret z

    jr nc, @+$32

    ldh [$60], a
    ret nc

    ld e, b
    ret nz

    call nz, $2423
    ld a, [bc]
    inc d
    inc d
    db $10
    jr jr_04b_50f3

    ld [$8888], sp
    ld d, b
    ld d, b
    jr nz, jr_04b_5074

    db $eb

jr_04b_50f3:
    and a
    nop
    ld d, [hl]
    add e
    nop
    ldh a, [rTIMA]
    rst $28
    db $10
    rst $18
    jr nz, jr_04b_50ba

    ld b, a
    add l
    nop
    ld a, [$1b00]
    add [hl]
    inc bc
    di
    ld bc, $0efd
    add l
    ld bc, $ff6a
    db $ec
    dec h
    inc hl
    ld bc, $021d
    inc bc
    rlca
    rlca
    add hl, bc
    ld [$0313], sp
    dec d
    ld d, $20
    add hl, sp
    jr nz, jr_04b_514e

    ld b, b
    ld h, [hl]
    ld b, b
    ld [hl], e
    jr nz, jr_04b_5161

    jr nc, @+$2e

    inc e
    inc de
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    res 3, [hl]
    inc hl
    ld bc, $aecd
    ld bc, $0001
    ld hl, sp+$25
    ret nz

    ldh [$37], a
    rlca
    rlca
    add hl, de
    add hl, de
    ld h, c
    ld [hl], b
    adc a
    ldh [rNR13], a
    call $9927
    adc $b2

jr_04b_514e:
    inc a

jr_04b_514f:
    call nz, $04fc
    ld hl, sp-$78
    ld a, [$7d68]
    sbc b
    ld a, [hl-]
    ret z

    rra
    ld h, h
    rrca

jr_04b_515d:
    inc [hl]
    rrca
    sub d
    rrca

jr_04b_5161:
    ld b, c
    rrca
    nop
    sbc a
    nop
    rst $38
    ld bc, $86ff
    db $fc
    jr jr_04b_515d

    jr nz, jr_04b_514f

    ret nz

    ld b, d
    ld b, b
    add l
    nop
    xor d
    add b
    rst $10
    nop
    ld b, [hl]
    rst $38
    nop
    ld c, $80
    ld a, a
    ld h, b
    rra
    rra
    ccf
    daa
    rst $38
    ld b, b
    ld e, c
    ld [$48ff], sp
    rst $38
    rst $38
    add [hl]
    ei
    ldh [$33], a
    inc bc
    nop
    inc b
    nop
    ld [$0909], sp
    inc bc
    ld de, $1216
    ld l, $2a
    ld c, [hl]
    ld b, [hl]
    ld e, a
    ld b, e
    ld a, a
    jr nz, @+$41

    jr nz, jr_04b_5204

    ld [hl], b
    rst $38
    ld h, b
    adc a
    add b
    rra
    db $10
    sbc a
    ld de, $c0ff
    rst $28
    rst $28
    rst $38
    ld b, b
    rst $38
    jr nc, @+$41

    rlca
    ld e, a
    inc bc
    cp a
    ld bc, $015f
    cp a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    cp $45
    ld [bc], a
    rst $38
    ldh [$2e], a
    dec b
    rst $38
    sbc b
    rst $38
    ldh [$bf], a
    di
    adc h
    cp $c8
    ld a, l

jr_04b_51d3:
    ld a, b
    dec a
    inc a
    rra
    ld e, a
    rra
    cp a
    rrca
    ld a, a
    rlca
    rst $38
    dec bc
    rst $38
    ld sp, $41ff
    cp $82
    cp $8c
    db $fc
    inc a
    cp $f6
    cp $aa
    cp $52
    db $fc
    ld h, h
    db $fc
    add h
    ld hl, sp-$78
    ldh a, [$f0]
    ld h, l
    dec de
    sbc h
    cp h
    ld b, [hl]
    ld b, a
    sbc b
    adc b
    ld [hl], e
    db $10
    ld h, a
    jr nz, jr_04b_51d3

jr_04b_5204:
    ld b, a
    rst $18
    ld e, b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $00
    inc bc
    adc h
    inc b
    sbc b
    adc [hl]
    db $e4
    ld l, [hl]
    rst $28
    ccf
    ld b, h
    rst $38
    nop
    ld [bc], a
    rlca
    rst $28
    add sp, -$7d
    add l
    ld [hl+], a
    rst $38
    add hl, bc
    db $fc
    adc e
    nop
    rla
    nop
    dec bc
    nop
    rla
    nop
    xor a
    add a
    nop
    push bc
    dec b
    ret nz

    rst $38
    jr nc, @+$01

    rst $08
    ccf
    ld b, h
    rst $38
    stop
    ccf
    ld [hl+], a
    rst $38
    inc bc
    cp $fc
    db $fc
    ld hl, sp+$43
    ld hl, sp-$10
    ld bc, $60fc
    ld b, e
    rra
    db $10
    dec b
    rrca
    ld [$0e0f], sp
    rlca
    dec b
    jp $2b00


    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    adc e
    nop
    ld l, b
    ld bc, $c0c0
    ld b, e
    ldh [rNR41], a
    add hl, bc
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [rNR10]
    ld hl, sp-$80
    ld hl, sp+$08
    ld b, e
    ld hl, sp-$78
    inc de
    db $fc
    adc h
    rst $38
    rrca
    rst $38
    ld [$88ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ret z

    rst $38
    inc b
    rst $38
    ld bc, $ff44
    nop
    ld b, e
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    ld b, h
    rst $38
    rrca
    rlca

Jump_04b_5293:
    add hl, de
    rst $38
    ld a, [hl]
    adc $f8
    rrca
    ldh a, [$1f]
    ld b, e
    ldh a, [rIE]
    inc b
    ld hl, sp-$01
    jr @+$41

    inc b
    and e
    nop
    cp d
    dec b
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    add h
    ld bc, $101a
    ld a, [bc]
    rst $38
    sub l
    rst $38
    ld a, [bc]
    rst $38
    push af
    rst $38
    ld e, [hl]
    rst $38
    xor b
    call $ff04
    call nz, $3f3f
    ld a, l
    rlca
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    and e
    ld bc, $1c8e
    ld hl, sp+$17
    db $fc
    sub e
    rst $38
    ld [$649f], sp
    rst $08
    ld sp, $19e7
    rst $30
    ld c, $fc
    dec de
    ldh a, [$ac]
    ldh [$d1], a
    add b
    and $00
    inc e
    nop
    inc sp
    ld bc, $8f0e
    add h
    ld bc, $016f
    db $fc
    inc e
    ld b, e
    ld hl, sp+$28
    ld bc, $10f0
    ld [hl+], a

jr_04b_52fb:
    ldh a, [rNR23]
    db $10
    ld hl, sp+$08
    ld hl, sp-$58
    ld hl, sp+$58
    ld hl, sp-$50
    ldh a, [$50]
    ldh a, [$a0]
    ldh [$e0], a
    ld hl, sp+$18
    db $f4
    inc b
    db $fc
    sub h
    ld hl, sp-$68
    ldh [$e0], a
    db $f4
    daa
    nop
    nop
    rra
    ldh [$60], a
    sub b
    ld [hl], b
    ld c, b
    cp b
    jr z, jr_04b_52fb

    or h
    ld c, h
    sub h
    ld l, h
    db $fc
    db $f4
    xor [hl]
    ld a, [bc]
    ld d, $02
    dec bc
    pop bc
    rrca
    sub c
    rrca
    ld sp, $e21e
    ld a, [hl]
    add d
    db $fc
    inc b
    ld hl, sp+$18
    ldh a, [$27]
    ret


    ldh [$29], a
    nop
    ld bc, $0600
    nop
    ld [$1001], sp
    ld [bc], a
    jr nz, @+$29

    jr nz, jr_04b_539c

    inc b
    ld c, a
    ld b, h
    ld e, a
    ld b, d
    ld e, a
    ld b, h
    sbc a
    inc bc
    xor a
    sub l
    xor a
    sub d
    adc a
    or l
    rst $08
    or d
    res 6, a
    rst $28
    sub b
    rst $38
    add b
    ld [hl], e
    ld c, h
    ld a, h
    ld b, e
    ld a, $31
    add e
    nop
    ld b, h
    ld h, c
    ldh [$37], a
    ld a, b
    ldh a, [rNR32]
    inc c
    ld l, $02
    ld e, a
    ld [$25ff], sp
    rst $38
    sub l
    rst $38
    ld d, l
    cp $56
    rst $38
    ld e, c
    rst $38
    pop af
    cp $b2
    db $fc
    ld a, h
    db $fc
    db $fc
    rst $20
    ld b, e
    jp $c19d


    rlca
    rst $08
    or c
    pop af
    adc [hl]
    ld sp, hl
    ld h, [hl]
    ld a, a
    sbc d
    rra
    ld [c], a
    adc $34

jr_04b_539c:
    db $fc
    call nz, $383c
    ld [$0a08], sp
    ld [$080d], sp
    ld a, [bc]
    ld [$0743], sp
    inc b
    add a
    ld bc, $a3b8
    ld [bc], a
    add $07
    inc e
    jr jr_04b_53e5

    jr nz, jr_04b_5417

    ld b, b
    ld b, d
    ld b, b
    add l
    ld bc, $0900
    ret nz

    ld a, a
    ldh a, [$27]
    ccf
    jr @+$61

    rlca
    cp a
    inc bc
    add e
    ld bc, $0460
    rst $20
    ld bc, $028e
    sbc h
    adc d
    ld bc, $0a69
    jp hl


    xor $03
    db $fc
    rrca
    db $e3
    rst $38
    ld c, $ff
    ld hl, sp-$75
    and [hl]
    ld [bc], a
    ld c, b
    dec bc
    nop

jr_04b_53e5:
    inc c
    nop
    db $10
    inc de
    db $10
    daa
    jr nz, jr_04b_541c

    ld [hl+], a
    ld c, a
    ld b, d
    ld b, e
    ld e, a
    ld c, c
    ld bc, $079f
    add l
    inc bc
    ld h, $01
    res 6, a
    ld h, c
    add hl, bc
    jr nc, jr_04b_5470

    ld [$3c88], sp
    inc b
    cp $02
    rst $38
    db $10
    ld b, h
    rst $38
    ld c, c
    ld c, $27
    rst $38
    dec h
    rst $38
    ld a, c
    cp $e6
    rst $38
    cp $e1
    reti


jr_04b_5417:
    pop bc
    add [hl]
    pop hl
    inc bc
    add h

jr_04b_541c:
    rst $28
    ld a, [bc]
    ld l, a
    ldh [$5f], a
    ldh [$3f], a
    jr nz, jr_04b_5454

    ld a, a
    db $10
    cp a
    rrca
    add l
    rst $18
    add hl, bc
    ld bc, $03fe
    db $fc
    rrca
    pop hl
    rst $38
    ld c, $fb
    ldh a, [$87]
    nop
    sub b
    dec b
    ld h, $9a
    call z, $3cb4
    call nz, $0183
    call nc, $fd04
    ld l, b
    ld a, d
    sbc b
    ccf
    adc b
    nop
    and a
    adc c
    ld bc, $0700
    ld e, a
    rlca
    ccf
    inc bc

jr_04b_5454:
    ld e, a
    ld bc, $00be
    add h
    ld bc, $8814
    ld bc, $8d17
    ld bc, $8e70
    ld bc, $0480
    nop
    rst $38
    ret nz

    rst $38
    inc b
    adc l
    ld bc, $fff2
    ld a, e
    ld [hl+], a

jr_04b_5470:
    ld bc, $0243
    inc bc
    ld b, e
    inc b
    rlca
    ld b, $05
    rlca
    dec bc
    ld c, $0a
    inc c
    inc c
    add e
    sub h
    ldh [$29], a
    ld b, $06
    nop
    ld [$1011], sp
    inc sp
    jr nz, jr_04b_54af

    jr nz, jr_04b_5505

    ld b, b
    ld l, e
    ld b, b
    ld d, a
    ld b, b
    db $eb
    add b
    or a
    ret nz

    cp a
    add b
    sbc a
    and b
    sbc a
    ret nz

    ld e, a
    ld b, b
    ld c, a
    ld d, b
    inc hl
    inc h
    jr nz, jr_04b_54d9

    db $10
    ld [de], a
    inc c
    dec c
    inc bc
    inc bc
    nop
    nop
    ld h, $01

jr_04b_54af:
    ret nc

    call nz, $0108
    inc bc
    inc b
    inc b
    ld bc, $0a09
    ld a, [bc]
    inc b
    ld [hl+], a
    inc d
    ld de, $1313
    ld [$1f08], sp
    rra
    ld h, $22
    ld e, [hl]
    ld b, d
    rst $38
    sbc c
    rst $38
    inc a
    db $eb
    ld a, [hl]
    ret


    ld a, a
    ld b, e
    adc b
    rst $38
    rrca
    ld h, h
    rst $38
    sub h

jr_04b_54d7:
    sbc a
    dec c

jr_04b_54d9:
    rrca
    ld b, $06
    jr z, jr_04b_5516

    db $fc
    call nz, $0878
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld [de], a
    jp $c441


    ld b, h

jr_04b_54ec:
    ret z

    ld c, b
    ldh a, [$30]
    ldh a, [rNR10]
    ret nz

    jr nz, jr_04b_54d7

    jr nz, jr_04b_54ec

    ld b, b
    ld [$d740], a
    ld b, [hl]
    add b
    rst $38
    ld a, [bc]
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    and b

jr_04b_5505:
    cp a
    sbc b
    ccf
    rlca
    ld a, [hl]
    ld b, h
    ld [bc], a
    cp $07
    db $fc
    ld [hl], h

jr_04b_5510:
    add h
    xor h
    adc b
    xor b
    ld [hl], b
    ld [hl], b

jr_04b_5516:
    ld h, l
    add hl, bc
    ld h, b
    ldh [rNR21], a
    rla
    ld l, a
    ld l, c
    adc h
    adc d
    ld c, $0a
    ld [hl+], a
    ld c, $14
    ld a, [bc]
    sbc a
    sub b
    ld [hl], a
    ld [hl], b
    inc hl
    jr nz, jr_04b_5510

    ldh [$33], a
    jr nz, @+$39

    jr nc, @+$01

    ldh a, [rIE]
    db $10
    rst $28
    and b
    ld l, a
    ret nz

    ld b, h
    ld a, a
    jp nz, $c006

    rst $38
    ldh a, [$3f]
    jr nz, @+$21

    jr @+$24

    rlca
    ld a, [bc]
    ld [bc], a
    rlca
    inc b
    rra
    jr @+$01

    ld h, b
    cpl
    nop
    ld e, a
    nop
    add a
    add e
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld b, [hl]
    ld [bc], a
    cp $43
    db $fc
    inc b
    dec bc
    ld hl, sp+$0a
    ld hl, sp+$09
    ldh a, [$30]
    ret nz

    ldh a, [$38]
    inc a
    rlca
    rlca
    ld b, a
    inc bc
    ld [bc], a
    add a
    nop
    ld h, d
    dec e
    inc a
    ld a, h
    add e
    add e
    jr c, jr_04b_55b1

    ld b, [hl]
    ld b, [hl]
    ld h, c
    ld h, c
    ld hl, sp-$48
    rst $38
    add a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    sbc b
    rst $20
    db $e4
    rst $30
    db $f4
    rst $18
    ld d, b
    rst $38
    jr nz, jr_04b_55dc

    rst $38
    nop
    jr jr_04b_55a6

    rst $38
    ld de, $22ff
    rst $38
    ld c, h
    rst $38
    jr nc, @+$01

    ret nz

jr_04b_55a0:
    rst $38
    ld bc, $00e7
    rlc b

jr_04b_55a6:
    push bc
    nop

jr_04b_55a8:
    db $eb
    jr nz, jr_04b_55a0

    jr nz, jr_04b_55a8

    jr nz, @+$45

    rst $38
    db $10

jr_04b_55b1:
    dec c
    rst $08
    ld [$4407], sp
    inc bc
    ld b, d
    ld bc, $0021
    stop
    inc c
    nop
    inc bc
    ld h, h
    inc d
    ret nz

    ld bc, $1f39
    ld e, $ff
    ldh [rIE], a
    jr @+$01

    rlca
    db $fc
    inc b
    ld l, b
    sbc b
    ld [$1048], sp
    ld d, b
    ldh [$e0], a
    add l
    nop
    jr jr_04b_55f0

    add b

jr_04b_55dc:
    add d
    ld b, d
    ld b, d
    inc h
    inc h
    sbc c

jr_04b_55e2:
    sbc l
    ld b, c
    ld h, c
    db $fc
    cp $f0
    jr nc, jr_04b_55e2

    ld [$04fc], sp
    cp $02
    rst $38

jr_04b_55f0:
    ld bc, $ff4c
    nop
    ld [bc], a
    ld h, b
    add a
    add b
    add h
    ld bc, $054b
    ld bc, $0e80
    add b
    ld [hl], b
    add b
    and e
    nop
    ld e, e
    inc b
    ldh [$c0], a
    ld e, a
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ldh [rNR42], a
    ld hl, sp+$0f
    ld hl, sp+$08
    db $f4
    inc c
    ld [c], a
    ld [de], a
    sub $36
    adc h
    rst $08
    ld [hl], c
    ld [hl], c
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld c, $fa
    ld a, $32
    ld a, [hl]
    ld b, d
    db $fc
    add h
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    or d
    nop
    inc c
    ld [hl+], a
    add b
    inc b
    inc bc
    rlca
    inc b
    inc b
    nop
    inc h
    ld [bc], a
    nop
    ld bc, $0444
    dec b
    dec bc
    adc a
    adc c
    cp a
    or c
    cp $43
    db $fc
    ld l, a
    ldh a, [$3f]
    ldh [$3f], a
    ld b, e
    ldh a, [$1f]
    rla
    cp $0f
    ld sp, hl
    add hl, bc
    ld a, b
    adc b
    jr c, jr_04b_5665

    inc [hl]
    inc c
    inc e
    inc b
    inc e
    inc h
    ld c, $d2

jr_04b_5665:
    ld c, $12
    ld e, $12
    rra
    ld sp, $e13f
    ld b, e
    ccf
    ld hl, $7d43
    ld b, c
    dec c
    ld sp, hl
    pop bc
    ld a, [$fec2]
    ld b, d
    db $fc
    add h
    ld hl, sp-$18
    sub b
    sub b
    ld h, b
    ld h, b
    db $ec
    ld hl, $8005
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [$50]
    ld b, e
    ld hl, sp-$18
    nop
    call c, $f446
    ld e, h
    dec c
    ld c, [hl]
    ld a, [$fa8e]
    xor [hl]
    ld a, [$dade]
    adc $ca
    adc h
    adc h
    add b
    add b
    db $ec
    ld b, l
    ld d, $01
    inc bc
    rrca
    inc c
    rra
    ld de, $1f0f
    ld b, $07
    ld bc, $1301
    inc de
    jr c, jr_04b_56f0

    rst $38
    rst $00
    rst $38
    ld e, $f5
    rst $38
    adc b
    ld b, h
    rst $38
    db $10
    ld b, e
    and b
    rst $38
    ld bc, $7f4f
    add a
    nop
    jp c, $2801

    jr c, @-$77

    nop
    ldh a, [rNR13]
    di
    jr nz, @-$07

    or b
    ld a, a
    ldh a, [$3f]
    ldh a, [$2f]
    ldh [$6f], a
    ret nz

    rst $38
    jp nz, Jump_04b_427f

    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    add e
    ld bc, $870c
    ld [bc], a
    jr nc, @+$13

    ldh [$e0], a
    ccf

jr_04b_56f0:
    rra
    rlca
    nop
    cp a
    cp a
    rst $38
    sbc a
    ld [hl], h
    ld e, a
    ld [hl], d
    ld e, a
    pop af
    sbc a
    ldh a, [$1f]
    ld b, e
    ldh [$bf], a
    rlca
    ret nz

    ld a, a
    jp $ec7f


    inc a
    ldh a, [$30]

jr_04b_570b:
    add h
    ld bc, $04fe
    ld [$08f8], sp
    ld a, b
    adc b
    rlc d
    dec l
    rlca
    ld hl, sp+$38
    cp $87
    rst $38
    pop af
    ld a, [hl]
    cp $c3
    sbc b
    ld bc, $f090
    ld b, e
    ld h, b
    ldh [$03], a
    jr nz, jr_04b_570b

    ldh [$e0], a
    reti


    nop
    ld [hl], e
    ld h, e
    adc b
    nop
    ret nz

    ld [bc], a
    add b
    cp a
    add b
    add e
    nop
    call z, $3e01
    ld [bc], a
    adc l
    nop
    adc $15
    sbc a
    sub b
    ld [hl], c
    ld [hl], b
    ld hl, $e320
    ldh [$37], a
    jr nz, jr_04b_578c

    jr nc, @+$01

    ld hl, sp-$19
    jr nz, @+$51

    ret nz

    cp a
    add h
    rst $38
    adc b
    add l
    or l
    inc bc
    ccf
    inc hl
    rrca
    inc c
    adc e
    ld bc, $8244
    rst $08
    add a
    ld bc, $02df
    inc b
    rst $38
    inc a
    ld b, [hl]
    rst $38
    db $fd
    inc b
    ld a, d
    rst $38
    add [hl]
    rst $38
    ld a, c
    adc c
    ld bc, $0386
    rst $38
    jr jr_04b_57ea

    sbc a
    adc c
    ld bc, $61b8
    add a
    rst $18
    dec bc
    rst $30
    jr nz, @+$01

    or b
    ld a, a
    ld hl, sp+$67
    ldh [rIE], a

jr_04b_578c:
    nop
    rst $38
    jr nc, jr_04b_57d4

    rst $38
    ld b, b
    ld [bc], a
    inc c
    rst $38
    ld [hl], b
    add e
    ld bc, $886c
    ld bc, $0a90
    ld b, [hl]
    ld bc, $0041
    jr nz, jr_04b_57a3

jr_04b_57a3:
    db $10
    db $fc
    inc c
    ld a, [$4307]
    ld sp, hl
    dec b
    add hl, de
    rst $30
    rrca
    ld [c], a
    jp nc, $3c3c

    inc bc
    inc bc
    ccf
    pop hl
    rst $38
    pop bc
    ld a, a
    add c
    ld a, [hl]
    add d
    cp $02
    ld a, h
    add h
    ld a, b
    sbc b
    ldh [$e0], a
    rst $08
    ld b, b
    adc l
    inc b
    ld [bc], a
    rst $38
    ld a, a
    inc hl
    ld bc, $0243
    inc bc
    dec bc
    inc bc
    inc bc
    rrca

jr_04b_57d4:
    inc c
    db $10
    stop
    jr nz, @+$22

    ld hl, $4242
    inc hl
    ld b, b
    ld de, $6060
    ld b, b
    ld h, b
    ld d, b
    ld d, b
    ld b, b
    ld d, b
    jr z, jr_04b_5812

jr_04b_57ea:
    inc a
    ld h, $1f
    ld de, $0c0f
    inc bc
    inc bc
    db $ec
    dec [hl]
    add l
    db $dd
    ld b, e
    dec b
    rlca
    ldh [rNR42], a
    jr jr_04b_581c

    ld a, b
    ld h, a
    db $fc
    add e

Call_04b_5801:
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ld [hl], b
    rst $38
    adc b
    adc a
    call z, $de47
    inc sp
    adc [hl]
    ei
    ccf

jr_04b_5812:
    dec bc
    rra
    rlca
    rrca
    rlca
    add hl, bc
    rlca
    ld c, $09
    daa

jr_04b_581c:
    jr nc, jr_04b_5861

    inc bc
    nop
    db $10
    rlca
    ld bc, $031f
    ld a, a
    adc a
    ld a, [c]
    ld [hl], a
    add l
    add a
    ld a, [bc]
    rrca
    dec c
    rra
    ld a, [de]
    rra
    dec e
    ld b, e
    rra
    rrca
    ld c, $0f
    rlca
    rrca
    rra
    rra
    ld l, $31
    ld e, h
    ld h, e
    ld b, b
    ld a, a
    jr nz, jr_04b_5882

    rra
    rra
    ld [hl], a
    ldh [$29], a
    inc a
    inc a
    jp $30ff


    rst $38
    ld [hl], h
    adc a
    ld [c], a
    sbc a
    jr nz, jr_04b_58d3

    add hl, sp
    ccf
    dec h
    daa
    add d
    add e
    ld b, h
    rst $00
    jr @+$01

    nop
    rst $38
    rlca

jr_04b_5861:
    cp $18
    ldh a, [rNR42]
    db $e3
    ld b, a
    rst $00
    ld c, $8e
    adc h
    sbc h
    sbc b
    sbc c
    add hl, de
    add hl, sp
    ld sp, $233b
    inc sp
    ldh [$29], a
    or e
    or e
    sub c
    cp e
    sbc c
    sbc c
    call z, $c6dc
    adc $63
    rst $20

jr_04b_5882:
    or b
    pop af
    ld e, h
    db $fc
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor [hl]
    cp $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc a
    cp $70
    ld hl, sp-$80
    add b
    ld a, e
    ld a, [bc]
    add c
    add e
    ld a, a
    db $fc
    ld a, $c1
    inc a
    jp $e719


    ld bc, $ff44
    nop
    nop
    ld b, h
    ld b, e
    rst $38
    nop
    ld bc, $3e00
    ld [hl+], a
    rst $38
    rra
    nop
    add b
    inc e
    ld a, $7f
    ld a, a
    pop bc
    db $e3
    add b
    add b
    inc e
    sbc [hl]
    ccf
    ccf
    ld hl, $0133
    ld bc, $8181
    jp $fee7


    rst $38

jr_04b_58d3:
    jr jr_04b_5911

    add b
    pop bc
    rst $38
    rst $38
    ld a, $7f
    ld h, c
    inc b
    ld d, h
    rst $38
    cp $ff
    add b
    db $f4
    ld a, [hl+]
    nop
    ld c, c
    rrca
    inc a
    inc a
    ld b, e
    rst $38
    ldh a, [$3f]
    call nz, $c27f
    cp a
    ret


    dec a
    or c
    ld [hl], c
    ld d, b
    pop de
    add e
    nop
    db $fc
    jr jr_04b_592c

    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    jr @+$21

    add l
    rst $00
    ld [hl], d
    ld a, e
    add hl, sp
    dec a
    inc c
    adc h
    call nz, Call_04b_70e6
    db $76
    jr nc, jr_04b_5941

jr_04b_5911:
    db $10
    jr c, jr_04b_592c

    inc h
    sbc b
    dec c
    db $10
    cp b
    jr nc, @+$32

    ld h, b
    ld [hl], b
    pop hl
    pop hl
    add d
    jp $0f0c


    ld [hl], b
    ld a, a
    add e
    ld bc, $016c
    add b
    rst $38
    add e

jr_04b_592c:
    nop
    adc $01
    jr nz, jr_04b_5970

    ld b, l
    db $10
    rra
    dec bc
    ld de, $131e
    inc e
    dec bc
    inc c
    add hl, bc
    ld c, $04
    rlca
    inc bc
    inc bc

jr_04b_5941:
    cp e
    nop
    ld l, d
    ld b, $20
    ldh [rNR23], a
    ld hl, sp+$06
    cp $01
    and h
    cp a
    ldh [$2b], a
    nop
    rst $38
    dec b
    rst $38
    dec hl
    rst $38
    ld d, h
    cp $a8
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld c, b
    ld c, b
    nop
    adc b
    add h
    add h
    add b
    add d
    ld b, b
    add b
    pop hl
    ret nz

    ld a, a
    ret nz

jr_04b_5970:
    ccf
    ldh [$1f], a
    ldh a, [$2c]
    rst $28
    cpl
    add sp, $47
    add $41
    pop bc
    ld b, l
    jr nz, @-$1e

    ld b, e
    db $10
    ldh a, [$0d]
    ld [$04f8], sp
    db $fc
    ld [bc], a
    cp $e1
    rra
    pop af
    rrca
    ldh [$1f], a
    add b
    ld a, a
    add e
    rst $00
    ld bc, $fefe
    db $f4
    inc hl
    nop
    ld e, [hl]
    ld [bc], a
    add b
    add b
    ret nz

    and h
    nop
    dec h
    inc c
    jr nc, @-$0e

    jr jr_04b_59be

    inc b
    inc b
    add d
    add d
    ld b, d
    ld b, d
    rlca
    ld hl, $4307
    ld de, $031f
    ld bc, HeaderManufacturerCode
    ld a, [hl]
    ld b, e
    ld [bc], a
    cp $08
    ld b, $f6
    ld a, [bc]

jr_04b_59be:
    adc h
    ld [hl], h
    ld a, h
    add h
    ld hl, sp+$08
    or a
    nop
    ld b, [hl]
    ld bc, $8080
    set 0, d
    add hl, bc
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    ld b, $05
    dec c
    ld a, [bc]
    jp $2502


    inc bc
    inc c
    dec bc
    add hl, bc
    ld c, $43
    rlca
    inc b
    ld b, e
    ld b, $05
    ld bc, $0704
    ld b, l
    ld [bc], a
    inc bc
    call $2300
    ld bc, $3fc0
    add e
    ld [bc], a
    sub h
    add e
    add e
    ldh [rNR51], a
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    ld b, c
    cp a
    add c
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    inc c
    db $fc
    db $10
    ldh a, [rNR41]
    db $e3
    ld b, d
    call nz, $c8c4
    adc b
    sub b
    add b
    sub b
    sub b
    and b
    add b
    and b
    ret nz

    ret nz

    add b
    ret nz

    ld b, b
    ld b, b
    ld [hl+], a
    ld b, c
    inc c
    ld b, b
    jr nz, @+$22

jr_04b_5a24:
    jr nc, jr_04b_5a46

    add hl, de
    db $10
    cpl
    inc a
    ld e, a
    ld h, e
    ld b, b
    ld a, a
    add e
    ld bc, $0910
    or c
    cp e
    di
    di
    inc sp
    inc sp
    dec sp
    db $db
    rst $08
    rlca
    adc c
    ret c

    inc bc
    ld [$0408], sp
    inc b
    jp $1603


jr_04b_5a46:
    dec b
    dec bc
    ld bc, $8097
    rst $28
    add b
    ld b, h
    rst $38
    ld b, b
    ld a, [bc]
    jr nz, @+$01

    ld de, $fefc
    ld a, [hl]
    ld a, a
    jr c, @+$3e

    db $10
    ld de, $0f22
    ld c, $07
    ld e, h
    inc b
    cp l
    rlca
    cp $07
    ld hl, sp+$08
    ldh a, [$88]
    and b
    ld [hl], b
    ret nz

    ld h, b
    rst $00
    ld [bc], a
    ld b, e
    adc c
    ld bc, $1a70
    ld bc, $1c81
    ld a, $7c
    ld a, h
    ret z

    add sp, -$78
    adc b
    db $10
    sub b
    inc sp
    jr nc, @+$40

    ld sp, $0a0c
    adc h
    adc d
    add $e4
    rst $20
    db $e4
    rra
    ld a, $81
    adc d
    ld bc, $8395
    ld bc, $03e0
    ld l, [hl]
    ld a, a
    ld sp, $8771
    ld [bc], a
    db $ec
    nop
    db $10
    ld h, c
    inc b
    jr nz, jr_04b_5a24

    ld b, b
    nop
    add b
    ld h, c
    nop
    ld bc, $0084
    xor l
    dec bc
    ld e, $02
    db $fc
    inc b
    db $fc
    jr @+$01

    ldh [$3f], a
    jr nz, jr_04b_5b38

    ld a, b
    jp $0401


    ld [de], a
    ld a, [hl-]
    push hl
    ld [hl], h
    set 5, b
    sub a
    ld h, b
    rst $38
    jr @+$81

    inc b

jr_04b_5ac9:
    rla
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    ld b, e
    ld [bc], a
    nop
    ld d, $01
    add b
    ld bc, $01c0
    add d
    ld bc, $0107
    ld c, $03
    dec e
    ld b, $7b
    dec b
    ld a, [$f00e]
    jr jr_04b_5ac9

    ld h, b
    ret nz

    ret nz

    and e
    inc bc
    ld a, [hl+]
    add a
    ld [bc], a
    add d
    and h
    ld [bc], a
    ld a, [de]
    inc bc
    ld hl, sp-$70
    ldh a, [$50]
    ld b, e
    ld [hl], b
    ld h, b
    inc b
    jr nc, jr_04b_5b70

Jump_04b_5b00:
    jr nc, @+$62

    jr nz, @-$3b

    sbc b
    dec de
    jr nc, @+$01

    inc a
    rst $00
    cp $83
    ldh a, [rIF]
    pop hl
    rra
    pop bc
    cp a
    add d
    rst $38
    ld b, h
    rst $38
    ld hl, sp+$3f
    db $fc
    ld b, a
    cp $83
    pop af
    rrca
    pop bc
    ccf
    add b
    ld a, a
    add e
    adc a
    rst $38
    ld h, l
    ld b, $f0
    ldh a, [rIE]
    adc a
    rra
    ld b, b
    inc bc
    ld b, e
    jr nz, jr_04b_5b31

jr_04b_5b31:
    inc d
    stop
    ld [$0400], sp
    nop

jr_04b_5b38:
    ld [bc], a
    nop
    ld bc, $7f00
    nop
    ld b, b
    nop
    jr nz, jr_04b_5b42

jr_04b_5b42:
    jr jr_04b_5b44

jr_04b_5b44:
    ld b, $00
    ld bc, $1575
    ld bc, $0f01
    ld c, $1e
    db $10
    jr c, @+$23

    ld [hl], b
    ld b, d
    ld [hl], b
    ld b, h
    ld h, b
    ld b, h
    ldh [$88], a
    pop hl
    adc c
    ld [c], a
    adc d
    jp nz, Jump_04b_4582

    call nz, $0184
    db $e4
    add h
    ld b, l
    ld l, b
    ld c, b
    dec b
    jr c, jr_04b_5b93

    jr c, jr_04b_5b8d

    db $10
    db $10
    ld [hl], e

jr_04b_5b70:
    ld [$e0e0], sp
    ld hl, sp+$18
    ld a, [hl]
    ld b, $0f
    ld bc, $8503
    sbc $06
    add b
    nop
    ldh [rP1], a
    inc e
    nop
    inc bc
    ld h, h
    ld [bc], a
    ret nz

    ld bc, $433d
    inc bc
    ld [bc], a
    ld b, l

jr_04b_5b8d:
    rlca
    inc b
    ld de, $0203
    rlca

jr_04b_5b93:
    rlca
    add hl, sp
    jr c, jr_04b_5c16

    ld b, h
    rst $00
    adc d
    add a
    inc de
    ld [bc], a
    ld [de], a
    inc b
    ld h, h
    add hl, bc
    adc c
    ld b, e
    inc de
    ld [de], a
    inc bc
    ld de, $f111
    pop af
    rst $08
    cp $01
    ld bc, $2201
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    daa
    ld bc, $0363
    ld b, $06
    rlca
    ld bc, $0145
    inc b
    nop
    nop
    ld b, e
    inc b
    nop
    dec e
    ld [bc], a
    add b
    add d
    ret nz

    ld b, d
    ldh [rNR43], a
    ldh [rNR13], a
    ld [hl], b
    inc de
    jr c, jr_04b_5bdc

    add hl, sp
    dec b
    inc e
    inc b
    rrca
    add e
    rrca
    ld h, c
    ld a, a

jr_04b_5bdc:
    ld [hl], e
    rst $38
    adc h
    adc a
    ld [bc], a
    rrca
    ld [bc], a
    ccf
    ld b, l
    ld bc, $e0ff
    jr c, @-$3c

    ccf
    and $bf
    ld hl, sp-$11
    ld l, b
    rst $00
    ld b, h
    add e
    add d
    ld bc, $3d01
    dec a
    rst $38
    jp $01f3


    pop hl
    nop
    pop af
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    adc l
    di
    sbc a
    ld [hl], e
    ld e, a
    ld h, e
    ld a, a
    and $fe
    db $e4
    cp h
    cp $de
    cp $ba
    cp $5e

jr_04b_5c16:
    rst $38
    and c
    rst $38
    ld b, c
    rst $38
    add e
    ld a, c
    ld e, l
    ld h, l
    ld h, l
    and d
    xor d
    add a
    nop
    ld h, h
    inc hl
    add b

jr_04b_5c27:
    and a
    nop
    sbc b
    ldh [rNR42], a
    ld l, h
    inc l
    ld a, e
    dec de
    ld a, l
    add hl, de
    ld a, [hl]
    inc e
    ld a, [hl]
    jr jr_04b_5c27

    ldh [$fe], a
    nop
    rst $38
    ret nz

    ccf
    or $ff
    di
    cp $12
    rst $38
    inc hl
    cp $20
    rst $38
    jr c, @+$01

    ld c, $ff
    ld de, $0eff
    ld b, e
    ld sp, hl
    rrca
    ldh [$2b], a
    rst $08
    dec bc
    rra
    add hl, de
    rst $38
    ld [de], a
    rst $28
    ld a, $c3
    rst $38
    db $e3
    cp a
    db $fd
    inc e
    add sp, $00
    rst $38
    adc a
    db $f4
    or b
    add sp, -$40
    db $f4
    add b
    ld_long a, $ff80
    rrca
    ld a, [$f430]
    ret nz

    ld_long a, $ff80
    ret nz

    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    add hl, de
    ld c, $0e
    ld a, a
    rlca
    ld b, $06
    sbc d

jr_04b_5c84:
    sbc d
    ld a, [hl]
    ld [hl], d
    ld b, $02
    add h
    nop
    db $d3
    ldh [rSCX], a
    nop
    ret nz

    nop
    pop hl
    add b
    ld a, d
    ld b, b
    cp l
    and b
    ld a, [de]
    sub b
    db $dd
    ldh a, [rIE]
    ld [$00ff], sp
    rst $38
    db $e4
    rst $38
    ld de, $eeee
    rst $38
    ccf
    rst $28
    jr c, @+$01

    jr nc, jr_04b_5c84

    ld d, h
    sbc b
    sub e
    ld a, [hl]
    ld a, h
    rst $38
    adc a
    ld [c], a
    ld b, d
    di
    ld b, c
    ld [hl], e
    ld h, c
    dec sp
    jr nz, jr_04b_5cfb

    db $10
    ccf
    ld de, $91ff
    ld a, $36
    inc a
    ld e, $29
    rra
    ld l, c
    cpl
    push hl
    daa
    rst $08
    ld c, d
    adc a
    adc b
    rrca
    ld [$430e], sp
    ld [$060f], sp
    inc c
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    ld a, a
    ld bc, $8080
    add a
    ld bc, $0154
    ret nz

    ld b, b
    xor e
    nop
    call nc, $0461
    sbc a
    sbc a
    rst $38
    ld h, b
    rst $38
    add l
    nop
    add l
    ld b, $7e
    add b
    add c
    ld c, [hl]
    ld c, [hl]
    ld [hl], c

jr_04b_5cfb:
    ld [hl], c
    call $87a8
    or l

Call_04b_5d00:
    rrca
    ldh [rNR41], a
    jr nc, jr_04b_5d15

    jr c, jr_04b_5d0f

    ld hl, sp+$18
    db $e4
    db $e4
    inc [hl]
    inc [hl]
    xor h
    xor h

jr_04b_5d0f:
    ld b, b
    ld b, b
    db $ec
    add hl, sp
    rla
    ret nz

jr_04b_5d15:
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    jr c, jr_04b_5d24

    inc e
    inc b
    inc c
    add h
    ld c, $42
    add [hl]
    and d

jr_04b_5d24:
    ld h, [hl]
    ld h, d
    inc sp
    ld sp, $1113
    dec bc
    add hl, bc
    ld b, e
    rlca
    dec b
    cp d
    rst $10
    add e
    nop
    ld de, $3e02
    nop
    ld hl, $0087
    db $10
    adc a
    nop
    inc h
    add [hl]
    nop
    add b
    inc b
    ret nz

    nop
    jr nc, jr_04b_5d46

jr_04b_5d46:
    inc c
    add a
    nop
    adc [hl]
    inc bc
    nop
    jr nc, jr_04b_5d4f

    dec c

jr_04b_5d4f:
    adc b
    nop
    sbc b
    add e
    and e
    ld [bc], a
    inc bc
    nop
    nop
    xor a
    ld [bc], a
    ld a, [hl]
    add a
    nop
    sub $88
    nop
    ldh a, [$0a]
    ld de, $0938
    jr c, jr_04b_5d6c

    inc e
    add h
    rrca
    ld b, e
    rrca

jr_04b_5d6c:
    ld hl, $018c
    inc b
    nop
    dec c
    ld h, c
    ld bc, $1ef3
    ld h, c
    ld bc, $0e3e
    ld h, c
    ld bc, $031c

jr_04b_5d7e:
    ld h, c
    inc c
    ld h, b
    jr nz, jr_04b_5df3

    db $10
    ld a, h
    inc e
    ld a, e
    dec de
    dec a
    add hl, bc
    ld a, $0c
    ld a, $86
    ld bc, $0369
    rst $38
    db $76
    rst $38
    inc sp
    adc b
    ld bc, $0474
    adc a
    ccf
    rla

jr_04b_5d9c:
    rst $38
    jr c, jr_04b_5e01

    nop
    pop bc
    ld h, c
    inc de
    ret nz

    call c, $0303
    db $fc
    cp $f8
    jr nz, jr_04b_5d9c

    ld b, b
    db $e3
    jp $8ccf


    sbc $90
    db $fc
    and b
    ld a, [$8bc0]
    ld bc, $01cc
    rlca
    inc bc
    sub d
    ld bc, $03da
    db $fd
    rst $38
    inc bc
    rst $38
    ld h, c
    ld [bc], a
    inc a
    nop
    jp $0361


    rst $38
    rst $38
    add d
    ld [c], a
    add e
    inc bc
    ld l, h
    ld bc, $c6ff
    ld h, c
    add a
    ld [bc], a
    ld [$0293], sp
    ld c, h
    rrca
    ldh [$60], a
    ldh a, [rNR10]
    jr c, jr_04b_5d6c

    inc c
    ld b, h
    add [hl]
    add d
    ld [hl], d
    ld [hl], b
    dec c
    dec c
    inc bc
    inc bc
    adc c
    ld [bc], a
    ld c, b
    add h
    inc bc

jr_04b_5df3:
    ld c, $00
    rrca
    adc e
    inc bc
    jr jr_04b_5d7e

    inc bc
    jr nc, jr_04b_5e01

    ldh [rP1], a
    jr jr_04b_5e01

jr_04b_5e01:
    inc c
    add h
    adc a
    ld [$0080], sp
    ld b, b
    nop
    jr nc, jr_04b_5e0b

jr_04b_5e0b:
    ld c, $01
    ld bc, $008b
    sbc b
    nop
    inc bc
    adc b
    inc bc
    ld d, l
    adc [hl]
    inc bc
    ld l, [hl]
    ld c, $85
    inc e
    call nz, $0dff
    di
    rra
    di
    ld e, $f7
    db $fc
    ld c, $0e
    rlca
    rlca
    add e
    xor e
    ld b, $ff
    adc a
    rst $38
    rst $10
    rst $38
    jr c, jr_04b_5eb1

    add e
    inc bc
    rst $00
    inc c
    ld [hl+], a
    ret nz

    call c, $23e3
    ld bc, $3f01
    ccf
    cp $c6
    db $e3
    pop bc
    adc b
    ld [bc], a
    ld [$0e0e], sp
    rst $38
    ld [de], a
    rst $38
    dec bc
    rst $18
    dec c
    rra
    dec e
    rst $38
    ld [de], a
    rst $28
    ccf
    jp $86ff


    ld bc, $08ec
    pop af
    rst $28
    xor $ff
    ld hl, sp-$08
    inc c
    ld hl, sp-$0d
    add l
    ld [bc], a
    ld e, h
    add [hl]
    ld [bc], a
    ld h, [hl]
    adc e
    rst $28
    nop
    inc de
    add h
    inc bc
    ld a, d
    nop
    inc b
    adc e
    rst $38
    inc bc
    add hl, sp
    add l
    inc e
    call nz, $0bff
    jr nc, jr_04b_5eee

    ld a, h
    adc h
    cp $b2
    ld c, a
    ld a, c
    inc hl
    ld a, $21
    ccf
    ld b, l
    db $10
    rra
    nop
    ld bc, $0f46
    ld [$0911], sp
    rrca
    ld de, $131f
    ld e, $17
    ld e, $2b
    ld a, $35
    ccf
    ld a, [hl+]
    ccf
    dec a
    ccf
    inc bc
    inc bc
    ld h, [hl]
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    dec b
    ld bc, $0001
    ld bc, $0100
    ld l, [hl]

jr_04b_5eb1:
    ld [$0a01], sp
    ld a, [de]
    rrca
    daa
    inc de
    rra
    add hl, bc
    rrca
    ld b, e
    inc b
    rlca
    ld bc, $0302
    inc h
    ld bc, $0100
    ld [hl], l
    ldh [$2d], a
    add b
    add c

jr_04b_5eca:
    ret nz

    ld b, c
    pop hl
    and c
    ld a, c
    reti


    db $ed
    push hl
    ld d, h
    dec a
    jp $3ffe


    db $e4
    rst $30
    db $ec
    dec a
    ld e, $3e
    ld bc, $305f
    rst $38
    jr nz, jr_04b_5eca

    rra
    rst $18
    ccf
    rst $28
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, b
    ld a, e

jr_04b_5eee:
    inc a
    ccf
    jr z, jr_04b_5f21

    ld [hl], b
    ld a, a
    or c
    rst $38
    ld b, e
    ld h, d
    ld a, [hl]
    dec bc
    di
    rst $38
    cp a
    ld a, h
    rst $38
    add b
    ld a, a
    add b
    ccf
    ld h, c
    ld c, $1e
    and [hl]
    jp nz, $811c

    ld b, c
    ld b, c
    and d
    ld h, a
    ld l, $e9
    rra
    ldh a, [$0e]
    ld sp, hl
    ld [$00ff], sp
    rst $38
    rlca
    rst $38
    inc b
    db $fc
    ld [$88f8], sp
    ld hl, sp-$70

jr_04b_5f21:
    ldh a, [$60]
    and b
    ret nz

    ret nz

    adc [hl]
    rst $28
    nop
    add b
    inc hl
    ld b, b
    ld d, $a0
    ld h, b
    jr c, @+$01

    ei
    inc b
    rst $38
    nop
    rst $38
    ld b, $38
    sbc e
    ldh [$e3], a
    ld d, b
    db $d3

jr_04b_5f3d:
    ld hl, sp+$3f
    ld hl, sp+$07
    ld a, h
    adc a
    ld hl, sp+$44
    rst $38
    ldh a, [$0d]
    jr nc, @+$01

    ld b, e
    rst $18
    inc h
    rst $38
    ret z

    rst $38
    ld c, b
    ld a, a
    sub b
    rst $38
    sbc b
    rst $38
    ld b, e
    cp b
    ld a, a
    ldh [$2b], a
    add sp, $7f
    ld h, b
    rst $38
    db $f4
    db $eb
    ld l, d
    ld d, l
    ld [hl], l
    ld c, d
    cp $81
    rst $08
    add b
    add a
    nop
    inc bc
    nop
    db $10
    ld bc, $012b
    ld d, l
    nop
    xor e
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, [hl]
    pop bc
    ccf

jr_04b_5f7c:
    pop hl
    rst $18
    pop af
    ccf
    add hl, sp
    ld b, $07
    ld bc, $0001
    nop
    sub l
    nop
    ld e, [hl]
    rlca
    jr jr_04b_5fc5

    db $e4
    call nz, $0cf4
    ret c

    jr c, jr_04b_5f3d

    nop
    ld e, b
    ld bc, $c040
    ld b, l
    jr nz, jr_04b_5f7c

    ldh [rSCX], a
    ld b, b
    ret nz

    ldh a, [$f0]
    ld a, b
    ret z

    add hl, hl
    reti


    ld d, e
    ld a, [c]
    ld h, a
    db $e4
    cpl
    jp hl


    ld a, a
    di
    ld a, $c7
    dec a
    rst $08
    ld a, [de]
    rst $38
    dec d
    rst $38
    dec bc
    rst $38
    ld [hl+], a
    sbc $54
    xor h
    cp d
    ld e, [hl]
    ld h, d
    cp [hl]
    pop bc
    rst $38
    and e
    cp a
    daa

jr_04b_5fc5:
    inc a
    ld h, a
    inc e
    rst $38
    sbc b
    rst $00
    cp b
    cp a
    add b
    cp a
    add c
    ccf
    ld bc, $037e
    cp $03
    db $fc
    rlca
    cp b
    rst $08
    sbc b
    rst $28
    ret nc

    cp a
    cp $1f
    pop hl
    ld hl, $008d
    ret c

    ld de, $0c04
    inc b
    inc d
    inc de
    rla
    rra
    db $10
    dec a
    ld [hl-], a
    rra
    ld c, e
    ld a, a
    ld c, b
    ccf
    ld sp, $090f
    ld b, e
    ld c, $0b
    ld [bc], a
    inc c
    dec bc
    inc c
    ld b, l
    rla
    inc e
    inc d
    inc de
    ld a, $23
    ld a, a
    rst $08
    push af
    rra
    ld [$d57f], a
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    and a
    rst $38
    ld e, b
    ld hl, sp-$20
    ldh [$af], a
    ld bc, $294a
    add b
    call nz, $02d6
    pop bc
    ccf
    cp $43
    ld e, a
    and b
    rlca
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, a
    ld hl, sp-$08
    adc a
    nop
    ld a, $0a
    rrca
    ld e, $7f
    ld h, b
    cp $8f
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    ld d, h
    rst $38
    nop
    ld [$ffe0], sp
    ld e, h
    rst $38
    xor d
    rst $38
    ld d, b
    rst $38
    add b
    ld [hl+], a
    rst $38
    pop de
    ld bc, $005b
    nop
    ld b, h
    ld [bc], a
    inc bc
    ret z

    nop
    ld h, c
    inc c
    inc c
    rra
    jr nc, @+$01

    ret nz

    rst $38
    ld bc, $02fe

jr_04b_6062:
    db $fc
    inc c
    ldh a, [$30]
    adc a
    nop
    ret c

    inc c
    inc bc
    rlca
    rra
    add hl, sp
    rst $38
    jp $1ffd


    jp nz, $04fe

    db $fc
    inc b
    and h
    nop
    dec bc
    inc bc
    db $10
    ldh a, [rNR10]
    ldh a, [rLYC]
    jr nz, jr_04b_6062

    ld bc, $e060
    ld b, e
    ld b, b
    ret nz

    ld bc, $c040
    ld a, [hl+]
    add b
    xor l
    nop
    dec sp
    ld a, [de]
    inc c
    ld b, $12
    ld c, [hl]
    ld h, d
    ld d, $8a
    ld h, [hl]
    ld a, [de]
    cp $2a
    cp [hl]
    ld c, d
    or $4a
    xor $92
    cp $12
    db $fc
    inc a
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ld a, e
    add l
    ld [bc], a
    add d
    ld b, e
    inc bc
    ld [bc], a
    dec de
    dec b
    dec b
    dec bc
    ld [$1007], sp
    ld b, $21
    dec l
    inc hl
    dec c
    ld b, e
    ld e, d
    ld b, a
    ld d, a
    ld c, a
    ld d, $8e
    ld a, [hl+]
    sbc d
    xor c
    sbc c
    xor b
    sbc c
    ldh a, [$91]
    jr nc, jr_04b_6120

    ld b, e
    ld d, b
    ld [hl], b
    ld bc, $2020
    adc c
    nop
    ld b, [hl]
    rlc b
    ld b, [hl]
    and a
    ld [bc], a
    ret nc

    jp Jump_04b_5b00


    ld bc, $e4e7
    adc e
    nop
    adc d
    dec c
    rst $30
    rst $38
    ld l, e
    rst $38
    rst $10
    rst $38

jr_04b_60ef:
    xor b
    ei
    ld e, h
    rst $38
    xor b
    rst $28
    ld [hl], b
    rst $38
    adc e
    nop
    and h
    add hl, de
    ld b, [hl]
    rst $08
    jr z, jr_04b_60ef

    inc [hl]
    ldh [rOCPS], a
    ret nz

    sub l
    and b
    ld l, a
    ld b, b
    cp a
    and b
    dec hl
    ld [hl], h
    sub a
    sbc b
    ld l, e
    db $f4
    scf
    add sp, $2f
    ldh a, [rNR22]
    ld hl, sp+$43
    rra
    ldh a, [rNR21]
    ld e, $f1
    dec e
    ld a, [c]
    ld e, $f1
    ld l, l

jr_04b_6120:
    or d
    cp d
    ld h, l
    ld a, l
    and d
    ld a, [$95e5]
    xor e
    dec de
    ld h, $57
    inc l
    rst $28
    cp b
    rst $10
    adc d
    ld bc, $61a5
    ld c, $80
    ret nz

    jr nz, jr_04b_6169

    add b
    ld [$0444], sp
    ld [c], a
    ld [bc], a
    ld sp, hl
    ld bc, $00fc
    cp $8a
    ld [bc], a
    ld d, b
    dec b
    ld e, a
    and b
    xor e
    ld d, h
    ld d, l

jr_04b_614d:
    xor d
    jp $0580


    and d
    ld e, [hl]
    jr jr_04b_614d

    ld h, b
    ldh [$84], a
    ld bc, $0a6c
    ld b, b
    jr nz, @+$22

    sub b
    db $10
    ret nc

    db $10
    ret z

    ld [$08e8], sp
    ld b, e
    ldh a, [rNR10]

jr_04b_6169:
    ld bc, $a060
    add e
    ld [bc], a
    ld a, [$0289]
    db $76
    adc b
    nop
    sub b
    ld bc, $2f7f
    ld [hl+], a
    ld a, a
    rla
    ld a, h
    db $fd
    ld a, $3f
    inc d
    rla
    jr c, @+$41

    ld e, b
    ld a, a
    or c
    cp a
    sub c
    sbc a
    ld e, a
    ld e, a
    ld e, [hl]
    ld a, a
    ld sp, $1e2e
    add hl, de
    inc bc
    rlca
    adc c
    nop
    or [hl]
    ld b, $f8
    rlca
    inc [hl]
    rst $08
    db $fc
    rst $38
    db $fc
    ld b, h
    rst $38
    ld hl, sp+$0b
    ld hl, $32ef
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    adc b
    cp a
    adc b
    rst $38
    ld b, e
    jr jr_04b_6230

    add hl, bc
    sbc b
    rst $38
    jr nz, @+$01

    inc [hl]
    db $eb
    ld l, d
    push de
    push af
    jp z, $0189

    ld h, $87
    nop
    ldh a, [rTAC]
    inc a
    sbc a
    db $f4
    rst $38
    ld b, h
    rst $38
    ld hl, sp+$3f
    rst $38
    db $ec
    dec hl
    inc bc
    ld bc, $0201
    ld [bc], a
    inc hl
    inc b
    ld bc, $0303
    ld [hl], e
    rlca
    inc bc
    rlca
    jr jr_04b_6216

    ld b, b
    ld b, b
    rra
    ld a, $c3
    and h
    dec c
    ld bc, $0f03
    inc e
    ccf
    jr nz, @+$47

    ld b, e
    ld a, [hl-]
    inc sp
    dec c
    ld [$0606], sp
    ld hl, sp+$2d
    or [hl]
    ld a, [de]
    inc bc
    inc bc
    ld c, $0c
    dec d
    db $10
    dec hl
    jr nz, jr_04b_6255

    ld c, b
    xor e
    add h
    ld d, e
    inc b
    dec l
    ld [bc], a
    ld d, h
    inc bc
    cpl
    inc bc
    rst $18
    rst $00
    cpl
    cpl
    dec d
    rra
    ld a, [hl+]
    ld [hl+], a
    ccf
    dec bc
    nop

jr_04b_6216:
    ld c, e
    ld b, b
    ld d, a
    nop
    xor e
    add b
    rst $10
    ret nz

    rst $38
    jr nz, jr_04b_6260

    ld b, e
    jr nc, jr_04b_6243

    rlca
    ldh [$3f], a
    ret nz

    rst $38
    add b
    rst $18
    add b
    xor a
    add e
    add e
    add hl, bc

jr_04b_6230:
    sbc $5f
    pop de
    ld [hl], c
    jr nz, jr_04b_6296

    sub d
    rra
    db $ec
    db $ec
    adc [hl]
    nop
    inc [hl]
    ld h, $01
    nop
    nop
    ld [hl+], a
    ld [bc], a

jr_04b_6243:
    nop
    inc bc
    adc b
    add e
    inc hl
    ld bc, $1f13
    rra
    db $eb
    pop hl
    ld d, a
    nop
    cp a
    nop
    ld l, a
    db $10
    xor a

jr_04b_6255:
    ld d, b
    or a
    ld c, b
    sub $29
    rst $10
    cpl
    cp a
    ld a, a
    daa
    rst $38

jr_04b_6260:
    inc bc
    ld [hl], b
    rst $38
    cp [hl]
    rst $38
    add e
    adc h
    ld [bc], a
    rrca
    rst $38
    inc bc
    ld b, h
    rst $38
    nop
    dec c
    ld e, $ff
    ld hl, $4ce1
    sbc $56
    sub $5f
    sbc $4d
    sbc $27
    pop hl
    push bc
    adc l
    dec bc
    add b
    rst $08
    ld b, h
    ld b, e
    ld b, a
    ld b, b
    rst $10
    add b
    xor a
    ld bc, $fe7c
    ld h, l
    ldh [rNR51], a
    jr nc, @+$72

    adc h
    adc h
    ld d, $02
    dec hl

jr_04b_6296:
    ld bc, $0055
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld e, a
    inc c
    cp [hl]
    ld e, $5f
    rra
    cp a
    rrca
    ld a, a
    ld b, $ff
    nop
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    inc c
    ld b, h
    rst $38
    ld [bc], a
    rrca
    ld bc, $fdff
    ld sp, hl
    rst $38
    db $fc
    cp $18
    db $fd
    ret nz

    cp $e0
    db $fd
    ldh [$fe], a
    ret nz

    and h
    sbc [hl]
    ld [bc], a
    add [hl]
    rst $38
    ret nz

    ld b, h
    rst $38
    ldh [rDIV], a
    ld [hl], c
    rst $38
    ld sp, $19ff
    ld b, h
    rst $38
    adc b
    ld [bc], a
    and b
    rst $38
    or b
    jp $0e89


    cp $e9
    cp $1b
    db $fc
    ld [hl], e
    db $fc
    inc bc
    cp $07
    cp $99
    ld a, c
    ldh [$e1], a
    or c
    nop
    inc e
    inc b
    add c
    add c
    ld b, d
    ld b, d
    call nz, Call_04b_4422

jr_04b_62fc:
    inc b

jr_04b_62fd:
    xor d
    jr z, jr_04b_62fd

    jr jr_04b_62fc

    ld b, e
    db $10
    rst $38
    nop
    db $10
    ld b, [hl]
    rst $38
    jr nz, @-$1e

    jr nz, jr_04b_6335

    rst $38
    inc l
    rst $18
    inc h
    rst $38
    ld b, b
    cp [hl]
    ld b, b
    db $fd
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld d, b
    rrca
    cp b
    rrca
    ld e, b
    rlca
    cp l
    ld h, a
    db $fc
    ld [hl], e
    cp $33
    cp $03
    db $fc
    dec b
    ld a, [$0f43]
    ld a, [c]

jr_04b_6330:
    ldh [rNR51], a
    rra
    db $e3
    sbc [hl]

jr_04b_6335:
    ld [c], a
    cp [hl]
    jp nz, $c4bc

jr_04b_633a:
    inc a
    call nz, $fc38
    rst $38
    rst $00
    rst $38
    nop
    jr c, jr_04b_633a

    cp $39
    cp $18
    rst $10
    add hl, bc
    xor e
    dec b
    ld [hl], c
    inc [hl]
    cp b
    ld [hl-], a
    ld d, b
    ld bc, $c060
    ld hl, $1c21
    ld e, $83
    nop
    sub b
    dec b
    inc c
    inc c
    jr nc, jr_04b_6390

    ld b, b
    ld b, b
    and l
    nop
    ld h, h
    ld [bc], a
    ld [bc], a
    nop
    dec b
    and h
    ld bc, $035b
    xor e
    nop
    ld a, a
    ld h, b
    ld b, h
    rst $38
    ldh a, [$0b]
    ldh [$fe], a
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nc

    nop
    and c
    add d
    sub e
    call nz, $9501
    dec c
    rlca
    ld hl, sp+$38
    ldh [$60], a
    ld hl, sp-$68
    rst $38
    rlca

jr_04b_6390:
    cp $00
    rst $38
    ld h, b
    cp $c3
    ld bc, $0a6d
    jr @+$01

    inc e
    cp $0c
    db $fd
    ret nz

    ld a, $30
    rrca
    rrca
    add h
    ld bc, $15c4
    ret nz

    ld [hl], b
    jr c, jr_04b_6330

    ld b, $40
    add c
    add c
    ld [hl], c
    ld b, [hl]
    ld [bc], a
    sub b
    sbc b
    and b
    and b
    nop
    jr nz, @+$42

    ret nz

    add b
    ld b, b
    nop
    add h
    pop hl
    dec b
    ldh [$e0], a
    inc e
    inc e
    ld [bc], a
    ld [bc], a
    dec h
    ld bc, $020b
    ld [bc], a
    and h
    inc b
    ld d, h
    inc b
    xor b
    ld [$0858], sp
    cp b
    ld [$f045], sp
    stop
    sbc b
    ld [hl+], a
    ld [$00c3], sp
    ld sp, $0603
    ld [bc], a
    ld a, $02
    ld b, e
    db $fc
    inc b
    inc bc
    ld hl, sp+$08
    ldh a, [rSVBK]
    and a
    nop
    ld h, h
    dec b
    ret nz

    ret nz

    or b
    jr nc, @+$5a

    ld [$b183], sp
    ld b, $a4
    inc b
    ld e, b
    ld [$08a8], sp
    db $10

Jump_04b_6401:
    db $f4
    inc h
    nop
    ld h, c
    add a
    nop
    ld d, b
    add hl, bc
    rra
    inc a
    ld a, a
    ld b, b
    dec h
    inc hl
    ld a, [de]
    inc de
    dec c
    inc c
    adc l
    nop
    sub $07
    jr nz, @+$70

    sbc [hl]
    rra
    or $f6
    rrca
    rrca
    ld h, a
    add e
    ld bc, $0540
    ld d, a
    ld b, b
    xor a
    add c
    ld a, h
    cp $6f
    inc bc
    add c
    add c
    add d
    add d
    add e
    ld bc, $03ce
    jp z, $ed48

    jr z, @-$75

    ld bc, $85d6
    ld [bc], a
    jr nz, jr_04b_6443

    ret nc

    ld bc, $e040

jr_04b_6443:
    rrca
    call nz, $06ea
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [$88]
    ld [bc], a
    ld d, a
    adc l
    ld [bc], a
    add b
    add hl, bc
    ld b, h
    ld b, $a8
    adc b
    ret nz

    adc b
    db $10
    db $10
    ld b, b
    ldh [$87], a
    ld [bc], a
    sbc b
    inc bc
    ldh a, [$f0]
    inc c
    inc c
    add e
    ld [bc], a
    jp nz, $0206

    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld d, $02
    xor h
    jp $c202


    dec b
    ld [$040c], sp
    inc e
    inc b
    ld a, h
    add h
    ld [bc], a
    rlc e
    ld hl, sp+$18
    ldh [$e0], a
    ld h, a
    dec b
    ldh [$e0], a
    sbc b
    jr @+$56

    inc b
    add a
    ld [bc], a
    xor [hl]
    ld bc, $10b0
    and e
    nop
    ld [hl-], a
    add a
    inc bc
    ld c, $03
    rlca
    rrca
    ccf
    jr nc, @-$7a

    inc bc
    ld a, [de]
    dec b
    dec de

jr_04b_64a2:
    ld bc, $0204
    ld [bc], a
    nop
    adc d
    nop
    ld h, l
    rlca
    ld h, $6e
    xor a
    cpl
    di
    rst $38
    ld [$a70e], sp
    rst $00
    ld bc, $c344
    add e
    inc bc
    ld b, d
    ld [bc], a
    rst $28
    add c
    db $fc
    add [hl]
    inc bc
    ld c, c
    rlca
    jr c, jr_04b_653d

    add [hl]
    add [hl]
    dec d
    ld bc, $002a
    add a
    ld bc, $8358
    inc bc
    ld h, b
    inc bc
    call $ea48
    jr nz, @-$71

    inc bc
    ld l, b
    dec b
    add b
    ld bc, $8f07
    jr nc, jr_04b_6558

    ld h, e
    add hl, bc
    and b
    jp nz, $c4c4

    nop
    inc b
    jr nc, jr_04b_64a2

    add b
    ret nz

    ret z

    inc bc
    rst $10
    nop
    jr @-$39

    nop
    inc sp
    dec c
    ld [bc], a
    ld [bc], a
    ld d, d
    ld [bc], a
    xor d
    ld [bc], a
    ld d, h
    inc b
    xor h
    inc b
    ld d, h
    inc b
    db $ec
    inc b
    ld b, a
    ld hl, sp+$08
    call nz, $c303
    inc bc
    inc b
    inc b
    inc b
    db $fc
    add a
    inc bc
    ret


    adc b
    ld [bc], a
    db $ed
    dec b
    ld hl, sp-$08
    add h
    inc b
    ld d, h
    inc b
    rst $38
    db $ec
    inc l
    ld [hl+], a
    ld bc, $81c9
    rrca
    rlca
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld [hl+], a
    dec a
    inc hl
    inc a
    ld de, $081e
    rrca
    push bc
    adc [hl]
    dec de
    inc bc
    rlca
    add hl, bc
    jr @+$03

    jr nz, jr_04b_6564

jr_04b_653d:
    jr nz, jr_04b_657d

    ld hl, $1619
    rra
    jr jr_04b_6564

    db $10
    add hl, de
    jr nz, jr_04b_656c

    jr nz, jr_04b_6552

    ld b, b
    ld c, $41
    ld a, b
    ld b, a
    ccf
    ccf

jr_04b_6552:
    sub e
    ret nc

    ldh [rVBK], a
    ld b, $07

jr_04b_6558:
    add hl, bc
    ld c, $00
    rra
    db $10
    rra
    jr nz, jr_04b_658f

    ld [$1c47], sp
    add e

jr_04b_6564:
    ld e, a
    add b
    ld a, a
    ld b, b
    scf
    ld h, b
    rrca
    ld d, b

jr_04b_656c:
    dec e
    sub d
    adc c
    adc $99
    sbc $d7
    inc [hl]
    ld h, a
    jr @+$41

    nop
    sbc a
    add b
    ld bc, $7080

jr_04b_657d:
    ld b, b
    rst $38
    cp b
    rst $38
    rrca
    db $fd
    rlca
    cp $05
    di
    rrca
    ld h, e
    sbc h

jr_04b_658a:
    ld b, $f9
    cp $01
    ld a, b

jr_04b_658f:
    add a
    jr @+$01

jr_04b_6592:
    and $e7
    ld bc, $c001
    ret nz

    db $e3
    inc hl
    db $fd
    inc e
    cp [hl]
    ld b, b
    rrca
    ldh a, [$c7]
    jr c, jr_04b_658a

    jr jr_04b_6607

    dec e
    ld b, e
    ret nz

    ccf
    dec b
    sbc l
    ld a, [hl]
    inc hl
    ld [c], a
    jp $cec2


    jp c, $26e0

    ld bc, $0e07
    scf
    ld [hl], b
    adc a
    ret nz

    jp $f000


    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    jr c, jr_04b_6592

    rst $38
    nop
    rst $20
    db $10
    rst $00
    jr nz, @-$20

    ld hl, $27d9
    ld [c], a
    ld e, $fc
    ld c, $fc
    inc bc
    ld b, l
    rst $38
    nop
    inc bc
    ld a, $01
    rst $30
    rrca
    inc hl
    rst $38
    add hl, de
    rra
    rst $38
    add e
    ld a, a
    ldh [rIE], a
    ld a, b
    rst $38
    ld [hl], $ff
    jr z, @+$01

    ld d, l
    rst $38
    ld [$f7ff], a
    rst $38
    db $fc
    rst $38
    jp nz, Jump_04b_40f8

    rra
    and b
    rrca
    add e
    xor c
    ld de, $609f
    ld a, c
    add [hl]

jr_04b_6607:
    sbc h
    inc bc
    inc e
    inc bc
    ld a, $01
    cp $01
    db $fd
    inc bc
    cp $8e
    ld [hl], b
    ld [hl], b
    ld l, c
    inc bc
    ld hl, sp-$08
    rst $38
    rlca
    ld b, e
    rst $38
    nop
    jp $0b87


    rrca
    nop
    cp $01
    ld hl, sp+$07
    pop bc
    ld a, $0f
    ldh a, [$3f]
    ret nz

    and e
    ld sp, hl
    inc d
    adc [hl]
    ld a, a
    ld [hl], b
    di
    add b
    add e
    nop
    rlca
    ld b, b
    ld e, a
    nop
    rst $38
    ld [c], a
    rra
    ld hl, sp+$0f
    add sp, $1f
    db $fc
    sbc a
    cp h
    ld b, h
    rst $18
    db $fd
    add hl, de
    db $dd
    rst $38
    jp nc, $04ff

    rst $38
    rrca
    ld hl, sp+$1f
    ldh a, [$3c]
    db $e3
    ld [hl], b
    rst $08
    add b
    rst $38
    ld [bc], a
    ld sp, hl
    dec b
    ret nz

    xor e
    nop
    rst $10
    nop
    ccf
    ret nz

    jp $01b4


    ldh a, [rIF]
    ld b, e
    ld hl, sp+$07
    dec b
    ld a, c
    add a
    cp $86
    ld hl, sp-$08
    ld [hl], e
    dec c
    ret nz

    ret nz

    jr nc, @+$32

    inc a
    inc c
    ld a, [c]
    ld c, $c1
    ccf
    ld bc, $07fe
    ld hl, sp+$43
    rst $38
    nop
    ld b, $3f
    ret nz

    ld c, $f1
    nop
    rst $38
    add b
    ld b, h
    rst $38
    nop
    inc de
    rlca
    ld hl, sp+$2b
    call nc, $aa55
    xor e
    ld d, h
    call nc, $e8eb
    rst $30
    di
    rst $38
    db $fc
    db $fc
    ld hl, sp-$10
    rst $38
    ret nz

    add e
    nop

jr_04b_66a7:
    ld hl, sp+$01
    ld b, c
    cp [hl]
    ld b, e
    pop af
    ld c, $1d
    ld a, c
    add a
    ld a, [hl-]
    rst $00
    ld a, [de]
    rst $20
    ld e, $e3
    ld e, $f3

jr_04b_66b9:
    ld e, $f7
    cp b
    ld a, a
    and b
    ld a, a
    db $e3
    ld e, h
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $00
    ld a, b
    add e
    db $fc
    jr @+$01

    rst $20
    rst $20
    db $f4
    inc hl
    nop
    dec c
    inc bc
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_04b_66b9

    ld b, e
    db $10
    ldh a, [rNR24]
    jr c, jr_04b_66a7

    ld a, b
    adc b
    db $f4
    inc c
    db $e3
    rra
    pop hl
    ld e, $c7
    jr c, jr_04b_66f8

    ldh a, [$3c]
    ret nz

    rst $38
    nop
    ld a, a
    nop
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ld b, e

jr_04b_66f8:
    add b
    ld a, a
    ld [$3dc2], sp
    push de
    ld l, d
    xor d
    push de
    rra
    ldh [rIE], a
    and h
    ld bc, $0365
    ld bc, $00fe
    rst $38
    and e
    ld bc, $0d6c
    db $fd
    ld [bc], a
    ld [$d015], a
    cpl
    db $ec
    inc de
    ld [hl], b
    adc a
    inc bc
    rst $38
    db $fc
    db $fc
    db $ec
    dec [hl]
    dec bc
    add b
    ret nz

    nop
    jr nz, jr_04b_6746

    db $10
    ld [hl], b
    db $10
    ret z

    jr c, jr_04b_6734

    ld hl, sp+$43
    db $10
    ldh a, [rLYC]

jr_04b_6731:
    jr nz, @-$1e

    inc bc

jr_04b_6734:
    jr nc, @-$2e

    ld d, b
    or b
    jp $158c


    ld hl, sp+$08
    db $e4
    inc e
    call nz, $823c
    ld a, [hl]
    ld [bc], a
    cp $16

jr_04b_6746:
    ld [$d62a], a
    ld d, h
    xor h
    xor h
    ld d, h
    jr @-$06

    jr nz, jr_04b_6731

    call $cd01
    db $10
    inc bc
    rlca
    ld [$0108], sp
    db $10
    rla
    db $10
    ld e, $11
    add hl, de
    ld e, $18
    db $10
    ld de, $1700
    ld b, h
    jr nz, jr_04b_67a8

    inc b
    ld l, $31
    db $10
    rra
    rrca
    jp Jump_04b_6401


    ldh [rNR51], a
    nop
    dec sp
    ld h, b
    dec e
    ld d, d
    inc c
    ld c, e
    ld d, h
    sub a
    ret nz

    cp a
    cp a
    add b
    rst $00
    nop
    db $10
    ldh [$6e], a
    ldh a, [$f8]
    rst $38
    ccf
    scf
    ld a, a
    ld b, c
    rst $38
    add c
    rst $38
    rlca
    ei
    rrca
    rst $38
    dec bc
    db $fd
    ld b, $66
    sbc a
    rlca
    adc d
    nop
    or l
    rlca
    ldh [$e0], a
    di
    inc de
    db $fd
    inc c
    sbc $20
    add l
    nop

jr_04b_67a8:
    ret z

    nop
    ld [c], a
    add h
    nop
    rst $08
    dec b
    sbc h
    ld a, a
    ld [hl+], a
    db $e3
    pop bc
    pop bc
    ld h, l
    add hl, bc
    ld sp, hl
    nop
    db $e3
    db $10
    call c, $db23
    daa
    ld e, h
    and a
    and e
    ld bc, $04d8
    rla
    nop
    jr c, @+$09

    rrca
    inc l
    rst $38
    ld [$fff1], sp
    ldh [$1f], a
    nop
    rst $38
    ret nz

    rst $38
    inc a
    sub b
    ld bc, $1129
    rst $18
    jr nz, jr_04b_6818

    call nz, $821d
    inc e
    inc bc
    inc a
    inc bc
    cp $01
    ld a, h
    add e
    ld bc, $8eff
    cp $83
    ld bc, $094c
    ldh a, [rIF]
    ld e, $ff
    ld [c], a
    db $e3
    nop
    inc bc
    ret nz

    ld c, a
    add e
    ld bc, $02e6
    ret nz

    ccf
    ld l, d
    ld b, e
    sbc a
    ld a, [$df03]
    ld hl, sp-$21
    db $fc
    add h
    ld bc, $048b
    db $dd
    rst $38
    adc $ff
    ld c, h
    adc h
    ld bc, $0493
    db $eb
    db $f4

jr_04b_6818:
    db $f4
    ei
    ld hl, sp-$76
    ld bc, $07f5
    ldh a, [$f0]
    ld c, a
    ccf
    db $fd
    nop
    xor $10
    add a
    inc bc
    ld l, b
    ld bc, $0ff0
    cpl
    rst $38
    adc l
    inc bc
    and d
    ld [bc], a
    ld l, d
    sbc a
    cp d
    ld b, h
    rst $18
    ld a, [$dc0a]
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    sbc $ff
    ld e, h
    adc h
    rst $18
    adc l
    ld bc, $04e0
    push de
    ld [$f06e], a
    rst $38
    adc h
    inc bc
    ld b, e
    ld bc, $3fc0
    dec l
    rst $38
    nop
    db $fc
    sub d
    rst $18
    ld b, h
    cp $df
    ld bc, $deff
    ld b, h
    rst $38
    db $fc
    nop
    cp $8e

Call_04b_6868:
    rst $18
    rst $38
    ld a, e
    add hl, bc
    ld bc, $0601
    inc b
    ld [$0b08], sp
    nop
    rra
    inc d
    ld b, e
    rra
    db $10
    db $10
    rrca
    dec bc
    inc c
    inc c
    ld [$0408], sp
    inc b
    ld b, $04
    rrca
    dec bc
    dec de
    ld de, $1015
    dec sp
    ld b, l
    jr nz, jr_04b_68cd

    inc b
    dec l
    rra
    dec d
    ld a, [bc]
    ld a, [bc]
    ld a, d
    ldh [rNR50], a
    ld b, $00
    dec b
    ld bc, $0005
    dec bc
    ld [$280b], sp
    ld l, a
    jr jr_04b_6903

    inc b
    ld e, a
    jr nz, jr_04b_68d7

    jr nz, jr_04b_68e9

    ld hl, $533f
    ld e, [hl]
    ld [hl], e
    ld e, h
    rst $38
    adc b
    rst $38
    ldh [$1f], a
    ld bc, $007f
    rst $38
    jr nc, @+$01

    ld b, b
    ld b, e
    rst $38
    nop
    inc bc
    cp [hl]
    pop bc
    ld a, $7f
    ld h, l
    dec bc
    ld d, l
    nop
    ld_long $ffc0, a
    ccf
    rst $38

jr_04b_68cd:
    rlca
    ld hl, sp+$38
    pop bc
    pop bc
    inc hl
    ld bc, $0301
    inc bc

jr_04b_68d7:
    ld b, e
    rlca
    dec b
    ld b, e
    add hl, bc
    ld [$0d0f], sp
    ld [$080a], sp
    rlca
    inc b
    rlca
    ld b, $0d
    dec bc
    ld [de], a

jr_04b_68e9:
    inc d
    rra
    inc d
    rrca
    rrca

jr_04b_68ee:
    ld h, l
    ldh [$27], a
    ld [$a818], sp
    xor b
    ret z

    ret c

    ld c, b
    ld hl, sp+$08
    ld hl, sp+$1e
    cp $7f
    pop hl
    sbc a
    add b
    ccf
    inc e

jr_04b_6903:
    ld l, a
    ld l, $c7
    ld b, [hl]
    rst $10
    or $bf
    cp b
    rst $38
    ret nz

    rst $38
    inc bc
    db $fc
    inc b
    add sp, $78
    ret nz

    ld c, b
    ret nc

    ld d, b
    ldh [$e0], a
    ld h, e
    dec d
    dec b
    nop
    xor e
    ld bc, $0257
    cp a
    inc e
    rst $38
    ldh [rIE], a
    add b
    rst $10

jr_04b_6928:
    add b

Jump_04b_6929:
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    add b
    nop
    ld a, [hl]
    ld h, c
    dec d
    add b
    jr c, jr_04b_68ee

    call nz, $c2bc
    ret nz

    ld a, h
    pop af

jr_04b_693c:
    jr nz, jr_04b_693c

    db $10
    rst $38
    inc c
    rst $38
    jp $023e


    db $fc
    adc h
    ldh a, [$f0]
    ld [hl], b
    ld [$8103], sp
    add l
    jp hl


    ld l, e
    pop af
    scf
    pop af
    rra
    ld b, e
    ld hl, sp+$0f
    inc d
    db $fc
    rlca
    cp $63
    ccf
    ld hl, $a1be
    ld a, $61
    ld a, $11
    ld e, $11
    ld a, $00
    ld e, h
    ld [bc], a
    cp h
    ld [bc], a
    ld a, h
    ld b, h
    ld [bc], a
    db $fc
    ld b, e
    ld hl, sp+$04
    rrca
    ldh a, [$08]
    ldh a, [$09]
    pop hl
    ld [de], a
    jp $0724


    ret z

    rlca
    ld [$0403], sp
    nop
    inc bc
    ld h, c
    dec c
    ld [bc], a
    nop
    dec b
    nop
    ld d, b
    ld c, $ae
    ld de, $104f
    or $c9
    ccf
    ccf
    ld a, h
    rrca
    jr nc, jr_04b_6928

    ret nc

    sub b
    or b
    sub b
    ldh a, [rNR42]
    db $e3
    cp a
    db $fc
    ld l, d
    ld h, b
    dec [hl]
    ld b, b
    dec hl
    ld b, e
    ld b, b
    ccf
    ld b, $00
    rra
    inc hl
    inc e
    inc l
    db $10
    jr nc, jr_04b_69f5

    ld de, $2331
    add hl, bc
    ldh [rNR51], a
    inc b
    inc b
    dec b
    push bc
    add $22
    db $e3
    inc de
    rst $20
    ld [de], a
    ld [c], a
    db $10
    call nz, $0c20
    call nz, $0454
    xor [hl]
    ld [$085f], sp
    cp a
    db $10
    ld e, a
    db $10
    ccf
    and b
    rst $38
    add $fc
    ret z

    jr c, jr_04b_69fb

    rra
    add hl, de
    rlca
    rlca
    ld a, l
    rrca
    ldh a, [$f0]
    db $fc
    inc c
    cp $02
    db $fc
    inc b
    cp $02
    cp $06
    ld hl, sp-$18
    jr jr_04b_6a08

    ld h, e
    ld a, [de]
    add [hl]
    add [hl]
    ld c, d

jr_04b_69f5:
    jp z, Jump_04b_6929

    dec de
    ld [hl], c
    sub a

jr_04b_69fb:
    pop af
    ld e, a
    ld [hl], c
    cp a
    ld sp, $027e
    cp $82
    ld a, h
    ld b, h
    cp h
    inc h

jr_04b_6a08:
    ld a, b
    jr z, jr_04b_6a3b

    db $10
    ld [hl], b
    ld b, h
    db $10
    ldh a, [rSCX]
    ldh [rNR41], a
    add hl, bc
    ret nc

    sub b
    ld [$0408], sp
    inc h
    db $fc
    inc h
    ld hl, sp-$08
    adc e
    nop
    ld [de], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, h
    rlca
    inc b
    inc b
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    db $d3
    nop
    dec e
    rlca
    rlca
    inc bc
    ld a, [de]
    jr jr_04b_6a6d

    jr nz, @+$81

    ld b, b

jr_04b_6a3b:
    ld b, h
    rst $38
    add b
    inc b
    and e
    ld a, h
    ld l, h
    db $10
    db $10
    ld h, l
    ld [$0e3e], sp
    pop bc
    ld b, c
    rrca
    inc c
    rra
    db $10
    ld a, a
    jp $8900


    nop
    ld a, $26
    rst $38
    ld [bc], a
    ccf
    rst $38
    rst $18
    ld b, e
    ccf
    cpl
    ld b, e
    rra
    rla
    ld [hl+], a
    rrca
    ld b, $0b
    inc a
    ccf
    ld e, b
    ld e, a
    ret nc

    rst $18
    ld b, e
    or b
    cp a

jr_04b_6a6d:
    ldh [rNR51], a
    cp b
    cp a
    call c, $c75f
    ld b, a
    ldh [$a0], a
    jr jr_04b_6a91

    ld b, $06
    nop
    jr nc, jr_04b_6a86

    add hl, hl
    ld b, $2e
    ld [hl+], a
    ld a, $a0
    cp a
    db $fc

jr_04b_6a86:
    ld a, a
    db $e3
    ld hl, $10ff
    rst $38
    rlca
    db $fd
    inc bc
    cp $82

jr_04b_6a91:
    rst $38
    pop bc
    rst $38
    pop hl
    ld b, h
    rst $38
    ldh a, [$0e]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    xor d
    cp $52
    ld a, [c]
    ld a, [bc]
    ld a, [$fe04]

jr_04b_6aa8:
    ld b, e
    inc b
    db $fc
    ld de, $f808
    db $10
    ldh a, [$60]
    ldh [$80], a
    add b
    ld [bc], a
    nop
    dec b
    ld bc, $061f
    rst $38
    ld hl, sp+$3f
    ret nz

    adc e
    ld bc, $1904
    nop
    ret nz

    ld b, b
    ld b, b
    jr nz, jr_04b_6aa8

    inc l
    db $ec
    inc h
    db $fc
    nop
    db $fc
    adc b
    ld hl, sp-$08
    add hl, sp
    ldh a, [rNR12]
    db $fc
    adc l
    ld hl, sp-$35
    ld hl, sp-$31
    db $fc
    add a
    ld b, e
    db $fc
    rlca

jr_04b_6adf:
    ldh [$34], a
    cp $63
    cp a
    and c
    sbc [hl]
    sub c
    ld a, $71
    ld a, $11
    ld e, $01
    ld l, $00
    inc e
    ld [bc], a
    inc a
    ld [de], a
    ld e, h
    ld [de], a
    inc a
    ld [de], a
    ld a, h
    ld [hl+], a
    cp b
    inc h
    ld a, b

jr_04b_6afc:
    ld b, h
    ldh a, [rOBP0]
    ldh a, [$89]
    pop hl
    ld [de], a
    add h
    add b
    add l
    add c
    add [hl]
    add d
    add h
    add b
    adc h
    adc b
    or e
    or b
    ld l, e
    ldh [$73], a
    ret nz

    ei
    ret nz

    ld a, e
    ld b, e
    ld b, b
    ccf
    rrca
    ld b, c
    ld a, $40
    ld a, $44
    ld a, $04
    ld a, [de]
    jr z, jr_04b_6afc

    ret c

    ld l, h
    ld h, h
    inc e
    inc c
    ld a, $84
    ld [bc], a
    inc bc
    rlca
    call c, $5804
    ld [$0050], sp
    ld d, b
    ld d, b
    ld b, h
    ld d, b
    ld b, b
    ld bc, $4000
    and h
    ld [bc], a
    ld b, l
    add hl, hl
    add b
    rla
    or b
    or b
    ld c, b
    ret c

    ld [$90f8], sp
    ldh a, [$71]
    ld [hl], b
    add hl, sp
    ld e, b
    scf
    ld b, [hl]
    dec hl
    ld b, b
    dec [hl]
    nop
    dec de
    jr nz, jr_04b_6b76

    jr nz, jr_04b_6b98

    jr nz, jr_04b_6adf

    nop
    ld h, $43
    ld [$040f], sp
    inc b
    rlca
    jp $20c7


    ld b, e
    ld [$0200], sp
    jr z, jr_04b_6b6c

jr_04b_6b6c:
    jr z, @+$24

    jr nz, jr_04b_6b85

    ldh [$80], a
    ldh [rLCDC], a
    ld h, b
    nop

jr_04b_6b76:
    ldh a, [rNR10]
    or $16
    ld a, [$f90a]
    add hl, bc
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    add hl, hl
    rst $38

jr_04b_6b85:
    reti


    adc l
    rst $08
    ld bc, $fb09
    add e
    nop
    and h
    dec c
    ld bc, $0b09
    add hl, bc
    rra
    ld de, $3c3f
    ld d, l

jr_04b_6b98:
    ld b, c
    add c
    add b
    cp a
    add b
    and e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    jr jr_04b_6bab

    add $00
    ld e, $09
    pop af

jr_04b_6ba9:
    jr nz, jr_04b_6ba9

jr_04b_6bab:
    jr @+$01

    inc c
    rst $38
    rlca
    ld hl, sp+$08
    add l
    ld bc, $ff1c
    db $ec
    inc hl
    inc c
    inc bc
    inc bc
    rrca
    inc c
    add hl, bc
    db $10
    ld de, $0110
    jr nz, jr_04b_6be7

    jr nz, jr_04b_6bd5

    ld b, e
    ld b, b
    ld a, a
    ld c, $80

jr_04b_6bcb:
    rst $30
    adc b
    rst $38
    adc b
    cp $89
    db $f4
    rst $08
    and e
    rst $38

jr_04b_6bd5:
    ld e, h
    ld a, h
    jr c, jr_04b_6c11

    db $ec
    ld c, e
    rla
    ld bc, $7e01
    cp $00
    cp $84
    ld a, h
    ret z

    jr c, jr_04b_6bcb

jr_04b_6be7:
    inc a
    add sp, $38
    or b
    ld [hl], b
    ret z

    ld e, c
    ret c

    ld e, d
    xor d
    ld l, b
    xor b
    ld l, h
    ld b, e
    sub h
    db $f4
    dec b
    ldh [$e2], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $008d
    jr jr_04b_6c0a

    ld b, $04
    ld [$0108], sp
    db $10
    ld [de], a
    db $10

jr_04b_6c0a:
    dec e
    ld b, e
    db $10
    rrca
    ld c, $08
    rlca

jr_04b_6c11:
    ld c, $1f
    add hl, de
    scf
    jr z, jr_04b_6c59

    ld d, c
    ld l, b
    ld d, d
    dec a
    ld [hl-], a
    rrca
    rrca
    ld h, l
    ldh [$30], a
    ld b, $06
    nop
    add hl, bc
    add hl, bc
    dec c
    dec c
    inc c
    rrca
    inc c
    dec bc
    inc e
    rra
    jr jr_04b_6c4c

    dec de
    db $10
    inc e
    jr jr_04b_6c45

    jr nc, jr_04b_6c57

    db $10
    jr nz, @+$72

    ld b, b
    ld a, b
    ld b, b
    cp a
    ret nz

    rra
    ld h, b
    rra
    ld d, b
    add a
    ret z

jr_04b_6c45:
    rst $18
    sbc b
    ld c, a
    xor b
    cpl
    ld e, b
    ld a, c

jr_04b_6c4c:
    ld d, b
    add c
    jr nc, jr_04b_6c81

    jr nz, jr_04b_6c85

    ld b, h
    jr nz, jr_04b_6c94

    ldh [rNR44], a

jr_04b_6c57:
    ld e, $21

jr_04b_6c59:
    ld e, $11
    dec a
    inc de
    ld l, $0e
    ld b, b
    nop
    ret z

    add b
    ld b, b
    ld c, b
    ld e, b
    ld e, b
    ld a, $37
    ld e, h
    ld h, e
    rst $18
    and b
    cpl
    db $10
    rla
    ld [$02ad], sp
    ld e, a
    nop
    cp a
    nop
    ei
    rlca
    or $0e
    ld b, e
    pop hl
    rra
    ld bc, $ff81

jr_04b_6c81:
    ld b, e
    ld [c], a
    ld e, $05

jr_04b_6c85:
    ld c, h
    inc a
    or b
    ld [hl], b
    ret nz

    ret nz

    ld l, h
    ld [hl+], a
    add b
    dec b
    ret nz

    ld b, b
    ld a, $ff
    adc a

jr_04b_6c94:
    nop
    ld b, l
    rlca
    nop
    dec b
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    ld b, a
    rst $38
    nop
    rla
    or $0f
    pop af
    ld de, $24e4
    ldh [$3f], a
    rst $20
    jr c, jr_04b_6c81

    inc a
    sub c
    ld a, [hl]
    db $10
    rst $38
    jr nz, @+$01

    ld b, a
    rst $38
    ld a, [$05f8]
    nop
    add e
    nop
    xor a
    rrca
    ld [bc], a
    nop
    ld bc, $2804
    ld [bc], a
    inc de
    ld b, $b9
    cp a
    ret nz

    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    ld b, e
    rst $38
    nop
    inc bc
    inc a
    rst $38
    jp $ecc3


    jr nz, @+$13

    ld bc, $0602
    rrca
    jr jr_04b_6d5d

    db $e3
    rst $30
    rrca
    rst $38
    ld e, $fd
    ld c, $ff
    dec b
    rst $38
    ld bc, $43fd
    inc bc
    rst $38
    ldh [$30], a
    dec b
    rst $30
    inc c
    or $0d
    call nz, $033f
    rst $38
    add l
    cp $05
    db $fc
    adc d
    ld a, h
    add l
    ld a, b
    dec de
    ldh a, [$35]
    db $e3
    ld [c], a
    jp z, $0454

    inc l

jr_04b_6d0b:
    add h
    inc d
    ld b, h
    xor d
    ld [bc], a
    ld d, l
    daa
    adc d
    ld l, $72
    ld a, $c2
    ld a, [hl]
    add h
    db $fc
    inc b
    db $fc
    ld [bc], a

jr_04b_6d1d:
    cp $07
    ld sp, hl
    rra
    ldh [rLYC], a
    rst $38
    nop
    dec c
    ccf
    ret nz

    rst $08
    ldh a, [rNR43]
    dec a
    jr jr_04b_6d4d

    dec d
    rra
    db $10
    rra
    rla
    jr jr_04b_6d78

    rrca
    ld [$0701], sp
    rlca
    ld l, e
    ld e, $20
    ld [hl], b
    or b
    sub b
    ld [hl], b

jr_04b_6d41:
    db $10
    ret nz

    and b
    ldh [$a0], a
    ldh a, [$78]
    add [hl]
    add a
    inc bc
    add b
    inc bc

jr_04b_6d4d:
    inc b
    adc l
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    add d
    jr c, jr_04b_6d1d

    add h
    rst $38
    adc a
    rst $38
    ld [hl], b
    ld b, e
    rst $38

jr_04b_6d5d:
    ret nz

    ld d, $7f
    ldh [$7f], a
    ld hl, sp+$57
    rst $18
    ld [hl], b
    rst $28
    ld hl, sp+$5f
    ld e, b
    ld c, a
    ld c, b
    ld c, a
    db $e4
    db $ed
    and [hl]
    ld c, [hl]
    rst $20
    add hl, de
    add hl, bc
    ldh a, [rNR23]
    xor e
    rst $00

jr_04b_6d78:
    add e
    ld bc, $1b5a
    ldh [rNR41], a
    ret nc

    jr nc, jr_04b_6d41

    jr nc, jr_04b_6d0b

jr_04b_6d83:
    ld a, b
    ld [$18f8], sp
    ld hl, sp+$24
    db $fc
    jp nz, $02fe

    cp $f9
    rlca
    ld a, c
    add a
    adc l
    adc e
    cp $8e
    ld [hl], b
    ld [hl], b
    cp b
    ld bc, $0db3
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$48
    ld a, b
    ret z

    sub b
    ldh a, [$e0]
    ld b, h
    ldh [rNR41], a
    ld b, e
    db $10
    ldh a, [rSB]
    jr nc, jr_04b_6d83

    ld b, e
    ld hl, sp+$08
    ld b, l
    db $f4
    inc c
    dec b
    add sp, $18
    db $10
    ldh a, [$e0]
    ldh [$ec], a
    dec a
    ldh [$3e], a
    ld [bc], a
    rlca
    ld bc, $0908
    jr c, jr_04b_6e0a

    ld e, b
    dec bc
    adc h
    sbc a
    add h
    ld a, a
    ld b, d
    ccf
    jr nz, jr_04b_6e4c

    ld a, b
    sub a
    adc h
    rra
    add b
    ld e, [hl]
    ld h, c
    ld e, $39
    dec e
    inc de
    ld c, $22
    inc a
    inc h
    jr jr_04b_6dfe

    rra
    sbc a
    and $fe
    ret


    ld a, c
    db $d3
    ld [hl], c
    rst $30
    ld hl, $02ce
    ld a, [$c406]
    inc a
    inc b
    db $fd
    ld [$1afa], sp
    ld hl, sp+$28
    db $ec

jr_04b_6dfe:
    call nz, $04c4
    inc b
    nop
    ld [hl+], a
    ld [bc], a
    add l
    ld bc, $0300
    rst $08

jr_04b_6e0a:
    sbc b
    ld e, a
    cp b
    add l
    ld bc, $890a
    ld bc, $0170
    ld [c], a
    ld [hl+], a
    add e
    ld bc, $887c
    ld bc, $00d0
    inc b
    ld b, e
    cp $01
    inc bc
    db $fd
    inc bc
    ei
    ld b, $43
    di
    ld c, $02
    jp nz, HeaderManufacturerCode

    add [hl]
    ld bc, $16e9
    ldh [$a0], a
    ld hl, sp+$3c
    jp HeaderCGBFlag


    ret nz

    add c
    add d
    add $81
    rst $38
    add c
    cp a
    pop bc
    sbc h
    db $e3
    jp nz, Jump_04b_477f

    rst $38
    jr c, jr_04b_6e8c

    rst $38
    ldh [rSC], a

jr_04b_6e4c:
    ccf
    ldh [$3f], a
    add l
    ld [bc], a
    ld e, [hl]
    nop
    ld d, a
    adc d
    ld [bc], a
    ld h, l
    add [hl]
    ld [bc], a
    or c
    nop
    ld h, b
    add e
    ld [bc], a
    cp d
    ld [$04fc], sp
    db $fc
    inc h
    inc a
    db $e4
    ld c, b
    ld hl, sp-$10
    ld c, b
    ldh a, [rNR10]
    ld bc, $d030
    add h
    ld bc, $0af0
    ldh [$e2], a
    ret z

    ld d, c
    inc b
    ld a, [hl+]

jr_04b_6e79:
    add b
    dec d
    ld b, d
    xor c

jr_04b_6e7d:
    inc bc
    adc e
    ld [bc], a
    ld d, b
    inc de
    and b
    ld a, a
    add sp, $37
    rst $38
    rla
    xor b
    jr @+$56

    inc d

jr_04b_6e8c:
    and d
    daa
    ld h, a
    dec h
    and d
    daa
    ld d, b
    ld d, b
    adc a
    sbc b
    adc l
    ld [bc], a
    ld a, [hl+]
    rlca
    add b
    add b
    ld hl, sp+$08
    cp b
    ret z

    ld [hl], h
    ld c, h
    ld b, e
    ld [hl], h
    inc l
    rla
    ld l, b
    jr c, jr_04b_6e79

    ld [hl], b
    ldh [$e0], a
    sbc l
    ld a, [hl]
    ld [hl+], a
    db $e3
    ld b, c
    pop bc
    adc e
    sbc [hl]
    sub l
    sub h
    adc c
    sbc h
    ld b, e
    ld b, c
    cp [hl]
    inc hl
    ld e, [hl]
    ld a, $8d
    ld [bc], a
    ld [bc], a
    adc l
    ld [bc], a
    ld d, b
    ld de, $77d8
    cp a
    ret nc

    xor a
    sbc b
    ld e, a
    jr jr_04b_6e7d

    cp b
    db $e3
    cp h
    xor c
    xor [hl]
    ld b, d
    ld b, e
    add c
    add c
    adc [hl]
    ld [bc], a
    xor b
    nop
    add b
    add l
    ld bc, $0d10
    rrca
    jr nc, jr_04b_6f02

    db $10
    ld e, $11
    jr z, jr_04b_6ef7

    cpl
    rrca
    db $e3
    inc a
    sub c
    ld a, [hl]
    ld b, e
    sub b
    ld a, a
    rlca
    daa
    rst $38
    ld a, d
    ld hl, sp-$1b

jr_04b_6ef7:
    add b
    ld [bc], a
    nop
    rst $38
    db $ec
    inc h
    inc h
    ld bc, $0d06
    dec c

jr_04b_6f02:
    dec bc
    ld a, [bc]
    ld bc, $0508
    ld b, e
    inc b
    inc bc
    ld a, [de]
    ld [bc], a
    inc bc
    inc bc
    ld c, $1f
    inc c
    inc hl
    dec sp
    inc h
    dec de

jr_04b_6f15:
    jr jr_04b_6f2c

    db $10
    inc de
    db $10
    dec b
    jr nz, jr_04b_6f48

    jr nz, jr_04b_6f5e

    ld b, b
    ld a, a
    ld b, b
    ld a, d
    ld b, l
    dec d
    ld [$8045], a
    rst $38
    dec b
    ld b, e
    ld a, a

jr_04b_6f2c:
    inc h
    and h
    ret c

    ret c

    sbc l
    ret nc

    rra
    ld [bc], a
    ld b, $05
    dec b
    inc b
    inc b
    ld b, $04
    rlca
    inc b
    inc bc

jr_04b_6f3e:
    add [hl]
    inc bc
    ld c, d
    xor b
    jr z, jr_04b_6f15

    jr nc, @+$6d

    and b
    rst $30

jr_04b_6f48:
    ld c, h
    rst $38
    ld c, b
    cp $21
    sbc a
    ld a, a
    ld a, a
    add c
    di
    dec c
    ld b, e
    db $e3
    inc e
    ldh [rNR42], a
    scf
    ret


    ccf
    pop bc
    ld a, a
    add b

jr_04b_6f5e:
    rst $38
    ld b, a
    rst $38
    jr c, jr_04b_6f3e

    jr nc, jr_04b_6fda

    and b
    or a
    ld l, a
    dec sp
    ldh a, [rPCM34]
    ret nz

    ld l, d
    pop bc
    or $c1
    ld a, $21
    inc a
    inc hl
    ld e, e
    ld e, a
    and h
    and h
    db $db
    db $db
    add l
    set 4, b
    dec l
    ld hl, $5361
    ld d, d
    ld d, l
    ld d, h
    ld l, [hl]
    ld c, h
    push de
    adc h
    xor d
    add b
    db $dd
    add b
    cp $c0
    rst $38
    ld b, b

jr_04b_6f90:
    rst $38
    nop
    rst $38
    add b
    ei
    rst $00
    cp c
    ld hl, sp-$31
    ld b, b
    rst $38
    jr nz, jr_04b_6f90

    inc c
    xor $11
    sbc $23
    call c, $fa2e
    ld a, [de]
    rst $30
    rrca
    rst $38
    nop
    ld sp, hl
    cp $22
    rst $38
    ld [hl+], a
    ld a, a
    ldh [rNR44], a
    or $ff
    xor b
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    rst $38
    cp h
    rst $18
    pop hl
    ld a, [hl]
    rst $38
    sbc b
    ld a, a
    adc b
    ld a, a
    adc h
    rst $38
    ld l, d
    rst $38
    dec d
    rst $38
    rra
    rst $38
    jr nz, @+$01

    ld [hl], $ff
    ld c, a
    ret


    add [hl]
    add [hl]
    add b
    add b
    ld h, c
    ld b, $c0
    ret nz

jr_04b_6fda:
    ldh [rNR41], a
    and b
    jr nz, jr_04b_703f

    add h
    add e
    ldh [rNR43], a
    or b
    db $10

jr_04b_6fe5:
    ld [hl], b
    db $10
    ld hl, sp+$08
    ld a, h
    inc c
    ld a, [$fb0a]
    dec de
    ei
    add hl, de
    rst $20
    jr z, @+$01

    or c
    sbc a
    ld [hl], c
    rst $38
    inc hl
    rst $18
    db $e3
    rst $38
    rlca
    db $fd
    and $3b
    ld c, h
    ccf
    ld b, b
    ccf
    ld b, c
    ld a, a
    jp $e0f3


    ld h, $00
    cp l
    jp nz, $221f

    cp a
    cp h
    xor a
    or b
    ld a, a
    db $e4
    ld a, e
    adc h
    rst $30
    jr c, jr_04b_6fe5

jr_04b_701a:
    ld [hl], h
    sub a
    add sp, $2b
    push de
    ld d, l
    xor e
    ld a, [hl+]
    rst $10
    ld d, h
    xor a
    add hl, sp
    rst $38
    cp $ff
    jr z, jr_04b_701a

    ld h, h
    rst $20
    db $e4
    and a
    ld [c], a
    db $e3
    db $d3
    nop
    ld [hl], a
    ldh [rNR44], a
    inc bc
    rlca
    ld [$4318], sp
    ld h, b
    sbc a
    add c
    ld a, a

jr_04b_703f:
    rrca

jr_04b_7040:
    rst $38
    ccf
    db $fd
    ld a, a
    ld a, [$f4ff]
    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    pop bc
    ld a, [hl]
    add c
    ld a, [hl]
    add e
    db $fc
    adc a
    pop af
    ld a, $c6
    ld hl, sp+$38
    ret nz

    ret nz

    ld c, b
    ret nz

    ld b, b
    ld b, a
    jr nz, jr_04b_7040

    rrca
    ld h, b
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld a, b
    or h
    db $fc
    call nz, $c43c
    inc e
    ld b, h
    ld [c], a
    ld e, $07
    ld c, $f2
    ld e, d
    cp $a5
    and l
    ld e, d
    ld e, d
    ld l, c
    dec b
    inc e
    ld e, $26
    ld [c], a
    inc a
    inc b
    call nz, $0aa5
    ret nc

    db $fc
    adc $fe
    jp nz, $8c7c

    ldh a, [$90]
    ld h, b
    and b
    push bc
    jp $8003


    add b
    add b
    add b
    db $ec
    inc a
    nop
    ld bc, $0222
    ld b, [hl]
    ld [bc], a
    inc bc
    rla
    ld bc, $0005
    adc b
    inc bc
    ld d, b
    xor [hl]
    inc hl
    rst $28
    jr nc, @+$77

    sbc e
    rst $30
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $619f
    ld a, a
    add b
    di
    inc c
    add h
    nop
    sbc d
    ld [bc], a
    ret z

    ccf
    ret nz

    adc l
    nop
    and d
    dec c
    ld d, a
    ldh [$5a], a
    pop hl
    call c, $20e3
    ccf
    jr nc, jr_04b_7110

    ccf
    dec hl
    rla
    ld d, $85
    ld bc, $0f7a
    inc b

jr_04b_70da:
    ld b, $0a
    ld a, [bc]
    dec bc
    add hl, bc
    inc c
    ld de, $101b
    dec d
    db $10
    dec de

Call_04b_70e6:
    db $10
    rra
    db $10
    ld b, e
    ccf
    jr z, @+$1c

    cp a
    and b
    ld a, a
    ld h, b
    ld [hl], c
    ld l, a
    or b
    ld [hl], b
    reti


    ld b, $77
    adc b
    ld l, a
    ld de, $06fc
    ld sp, hl
    add hl, bc
    cp $03
    rst $18
    ldh [rIE], a
    ld hl, sp-$03
    cp $fe
    call nz, $f900
    ld [de], a
    cp a
    ld a, a
    or $7f

jr_04b_7110:
    db $e4
    ld a, a
    ld b, b
    rst $38
    ldh [$bf], a
    pop hl
    cp a
    cp a
    sbc $7f
    pop hl
    cp [hl]
    ld a, a
    adc h
    adc [hl]
    ld bc, $010b
    add $c6
    add e
    ld [bc], a
    ld [$100c], sp
    jr nc, jr_04b_7164

    jr z, @+$6a

    ld c, b
    ld e, b
    ld c, b
    add sp, -$78
    ret c

    adc b
    jr z, jr_04b_70da

    pop hl
    inc e
    inc b
    jp c, $fd06

    dec b
    db $fd
    dec c
    push af
    dec d
    rst $30
    db $10
    rst $30
    ret c

    rst $38
    jr nc, @+$01

    ld h, c
    rst $38
    inc bc
    rst $38
    db $e3
    rra
    daa
    dec de
    inc h
    ccf
    ld b, b
    rst $38
    ld bc, $ff45
    nop
    dec d
    cp a
    ret nz

    ccf
    ld [hl+], a
    ld a, a
    ld a, h
    adc a
    ldh a, [$3f]
    db $e4

jr_04b_7164:
    ld a, e
    call z, $98f7
    db $e3
    cp h
    rst $00
    ld a, b
    adc e
    push af
    dec d
    db $eb
    add e
    ld bc, $016a
    add hl, bc
    rst $38
    add l
    ld bc, $048c
    ld h, a
    ld h, b
    sbc a
    add e
    rst $38
    add e
    ld bc, $0097
    rst $38
    add e
    ld bc, $039c
    add sp, -$01
    ldh [$3f], a
    add e
    ld bc, $05a6
    rra
    pop hl
    db $f4
    ld c, $f0
    ld hl, sp-$7c
    ld [bc], a
    ld [bc], a
    ret z

    ld bc, $15c3
    ld a, $7f
    add a
    add c
    ld a, [hl]
    ld b, $d8
    ld l, b
    ld hl, sp-$18
    db $fc
    xor $fe
    pop hl
    ld e, [hl]
    rst $20
    cp b
    ret z

    jr nc, @-$2e

    ld b, b
    or b
    add e
    ld [bc], a
    nop
    add l
    ld [bc], a
    ld [$0287], sp
    add b
    rlca
    jr c, @+$41

    ccf
    dec hl
    scf
    ld [hl], $01
    ld bc, $028d
    ldh [rSB], a
    add b
    add b
    adc c
    ld bc, $0030
    rst $28
    add h
    ld bc, $093b
    ccf
    ldh [$7e], a
    pop hl
    and b
    cp a
    db $10
    rra
    rrca
    rrca
    ld h, l
    add l
    xor a
    dec b
    db $76
    rst $38
    rrca
    adc c
    ld b, $06
    ld h, e
    add l
    nop

jr_04b_71eb:
    ldh [$09], a
    rst $28
    db $10
    rst $18
    jr nz, jr_04b_71eb

    rlca
    rst $38
    ld e, $ff
    nop
    add [hl]
    ld bc, $0240
    ld b, $bb
    call z, $03c4
    jr nz, @+$6c

    add l
    nop
    ld a, d
    add l
    nop
    ret nz

    inc de
    ld de, $2b19
    ld a, [hl+]
    dec l
    inc l
    ld l, $24
    ld e, l
    ld b, h
    ld l, d
    ld b, b
    ld e, l
    ld b, b
    ld a, [hl]
    ld b, b
    rst $38
    ldh [rIE], a
    and b
    add l
    nop
    jp c, $0188

    and b
    ld b, $fd
    adc [hl]
    ld a, [c]
    inc a
    call z, $30f0
    add l
    ld bc, $05f0
    ld hl, sp-$24
    db $f4
    call z, $9868
    add e
    ld bc, $8ffc
    ld [bc], a
    ld [bc], a
    rst $38
    ld a, c
    ld bc, $0101
    push bc
    add b
    add hl, bc
    ld bc, $0f03
    inc c
    inc e
    db $10
    ld sp, $2320
    jr nc, @+$45

    ld b, a
    ld c, b
    add hl, bc
    add e
    adc l
    add d
    sub d
    adc h
    xor h
    sub b
    or b
    ld h, b
    ld h, b
    ld h, l
    ld de, $3130
    inc e
    ld c, l
    ld c, a
    ld b, e
    ld h, a
    ld b, b
    rra
    ld hl, $213f
    rra
    ld de, $0c0f
    inc bc
    inc bc
    add e
    or c
    add hl, bc
    nop
    inc b
    nop
    add hl, bc
    nop
    ld a, [bc]
    inc b
    inc b
    inc bc
    inc bc
    adc e
    rst $08
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0407
    ld b, e
    ld b, $05
    ldh [$2e], a
    inc b
    rlca
    ld hl, sp-$01
    rra
    rst $20
    rrca
    ldh a, [$87]
    ld hl, sp+$41
    ld a, [hl]
    ret nz

    rst $38
    and b
    ld a, a
    ld hl, sp+$3f
    adc $37
    rst $28
    ld de, $39ff
    rst $08
    rst $38
    inc hl
    ccf
    add hl, de
    rla
    inc de
    ld e, $3b
    ld a, $4f
    ld a, [hl]
    ld c, a
    cp h
    rst $00
    cp h
    sbc l
    ld a, [hl]
    cp a
    ld h, c
    rst $38
    ret nz

    rst $08
    ld b, e
    add b
    add a
    inc d
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add c
    rst $38
    jp nz, $3bc7

    cp h
    jp nz, $a41c

    db $10
    jr jr_04b_7330

    ld h, b
    and e
    nop
    inc e
    ldh [rNR44], a
    ld [bc], a

jr_04b_72d7:
    ld [bc], a
    rlca
    dec b
    rrca
    add hl, bc
    dec c
    dec bc
    inc e
    inc de
    sbc b
    sub a
    ld d, b
    rst $18
    ld l, b
    rst $28
    jr z, jr_04b_72d7

    ld c, a
    rst $00
    ld e, a
    call nz, $c97f
    ld a, a
    jp nz, $c2ff

    ei
    ld b, h
    cp e
    ld h, h
    ld a, e
    db $e4
    rst $18
    ret nz

    ld b, h
    rst $38
    ldh [rNR10], a
    ret nz

    ld a, a
    add b
    rst $38
    add c
    cp l
    add c
    cp b
    add b
    nop
    add b
    ret nz

    ld b, e
    jp c, $e03c

    nop
    ld b, e
    ret nz

    nop
    nop
    add b
    and l
    nop
    jr jr_04b_735e

    ld b, b
    ret nz

    rlca
    add b
    add b
    ret nz

    nop
    rst $38
    rlca
    ldh a, [$f8]
    ld [hl], c
    inc de
    inc bc
    inc bc
    adc a
    adc h
    sbc [hl]
    sub c
    and b
    cp a
    ld b, b
    rst $38
    db $fd

jr_04b_7330:
    rst $20
    adc $47
    sbc e
    adc a
    dec a
    inc c
    ld l, a
    jr jr_04b_737d

    rst $38
    ld de, $dd05
    inc hl
    rst $38
    ld [bc], a
    rst $38
    inc b
    ld b, e
    rst $38
    nop
    ld [de], a
    or a
    ld a, b
    rst $30
    ld hl, sp-$51
    or c
    and [hl]
    jp $0f04


jr_04b_7351:
    jr nc, @+$01

    db $ec
    rra
    rla
    rrca
    rrca
    inc b
    rlca
    daa
    inc bc
    ld [bc], a
    ld [bc], a

jr_04b_735e:
    ld bc, $4302
    rlca
    inc b
    dec c
    rrca
    ld [$311f], sp
    inc a
    jp $8cf0


    ld a, h
    ld [hl], b
    ccf
    jr nz, jr_04b_7390

    inc e
    adc c
    nop
    ld e, [hl]
    inc de
    jr jr_04b_7394

    db $fc
    db $e4
    db $e4
    inc e
    adc b

jr_04b_737d:
    ld a, b
    ld [$10f8], sp
    ldh a, [rNR23]
    db $fc
    db $fd
    db $e3
    ld a, a
    add b
    jr c, jr_04b_7351

    ld b, e
    add b
    rst $38
    ldh [$3f], a
    inc bc

jr_04b_7390:
    rst $38
    db $ec
    db $fc
    ld a, a

jr_04b_7394:
    sbc a
    call nz, $f807
    rrca
    ldh a, [$1f]
    cp h
    ld a, a
    db $e3
    rst $38
    sbc b
    rst $38
    ld b, $ff
    dec a
    jp $807f


    rra
    ldh [rP1], a
    rst $38
    pop hl
    rst $38
    rst $38
    rra
    ld [hl], e
    adc h
    rst $28
    ret nc

    or e
    ldh [$78], a
    ldh [$bc], a
    ldh [$de], a
    ldh a, [$9f]
    ldh a, [$cf]
    ld hl, sp-$3a
    rst $38
    ld hl, $1c3f
    inc de
    add [hl]
    push bc
    ld h, b
    ld h, b
    db $10
    sub b
    ld c, b
    adc b
    ld hl, sp-$08
    or a
    nop
    inc bc
    dec b
    and b
    ld h, b
    db $10
    ldh a, [rNR41]
    ldh [$a5], a
    rst $38
    dec e
    ret nz

    ret nz

    ldh a, [$30]
    ld a, h
    adc h
    ld a, $c2
    ld bc, $8eff
    cp $f0
    ldh a, [$30]
    ldh a, [$88]
    ld hl, sp+$44
    db $fc
    ld [hl+], a
    cp $21
    rst $38
    pop bc
    rst $38
    ld c, $fe
    ldh a, [$f0]
    and h
    ld bc, $166a
    ld [$3848], sp
    add h
    ld b, h
    add b
    ld b, h
    ld b, b
    jp nz, $2222

    ld [bc], a
    ld [de], a
    adc d
    adc d
    ld b, b
    ld c, d
    jr nz, jr_04b_7435

    inc d
    inc d
    ld [$6508], sp
    dec c
    ld a, b
    rst $38
    inc a
    rst $30
    inc sp
    rst $20
    ld l, a
    ld [c], a
    ld l, e
    push bc
    ld e, a
    add $d7
    jp z, $0083

    sbc $10
    ld e, e
    db $e4
    sbc a
    ret nz

    rst $18
    ldh [$bf], a
    ret nz

    rst $38
    add b
    ld a, a
    add b

jr_04b_7435:
    rst $38
    ld bc, $017d
    jr nc, jr_04b_749c

    inc b
    add b
    ret


    ld [hl], b
    ret z

    ld c, $85
    nop
    ld a, [$400e]
    rst $38
    db $fd
    rst $30

jr_04b_7449:
    and $47
    adc e
    add a
    scf
    ld c, $7b
    inc c
    rst $20

jr_04b_7452:
    jr jr_04b_7452

    add e
    ld bc, $023f
    inc bc
    db $fd
    ld b, $43
    rst $38
    nop
    dec c
    sub a
    ld a, b
    ld a, a
    cp b
    ld [hl], $b9
    or l
    jp $070e


    ld e, b
    ccf
    inc l
    rst $18
    add a
    ld bc, $1b58
    rst $00
    rst $38
    ld c, h
    add a
    cp h
    rlca
    ld hl, sp+$0f
    call c, $a33f
    ld a, a
    ld e, b
    rst $38
    add [hl]
    rst $38
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, a
    jr nz, jr_04b_74c6

    jr jr_04b_74a8

    ld b, $0f
    dec bc
    rrca
    ld b, e
    dec c
    dec bc
    ld b, e
    add hl, de
    rla
    dec d
    rra
    ld e, $3f
    ld sp, $6073
    ld [hl], c
    and b

jr_04b_749c:
    ld sp, hl
    and b
    sbc a
    ld h, b
    cp a
    ld [hl], b
    rst $38
    ret nc

    adc $89
    add [hl]
    add l

jr_04b_74a8:
    add [hl]
    inc bc
    add l
    nop
    xor d
    add [hl]
    nop
    ldh a, [rNR24]
    jp $fcda


    ldh [rLCDC], a
    pop hl
    inc hl
    db $e4
    inc e
    and c
    ld h, c
    add hl, bc
    add a
    push bc
    cp c
    ld hl, $ef61
    inc a
    rst $38
    rst $00

jr_04b_74c6:
    cp b
    jr c, jr_04b_7449

    add b
    jp $018e


    ld de, $018a
    ld d, b
    ld [$611e], sp
    pop hl
    add d
    add b
    dec b
    nop
    ccf
    nop
    ld b, h
    rst $38
    nop
    ld b, $80
    ld a, a
    pop hl
    dec e
    ld e, $5f
    ld sp, $0189
    or b
    dec d
    rst $18
    ld a, a
    ld h, b
    rst $38
    or e
    rra
    ld a, [hl]
    ld c, $fe
    ld a, [bc]
    ld a, [$f30f]
    dec e
    db $e3
    ld a, l
    pop bc
    rst $38
    pop bc
    cp $21
    ld a, $8d
    ld [bc], a
    db $10
    ld h, c
    ld a, [bc]
    cp e
    ld h, h
    ld a, e
    call nz, $80df
    cp a
    add b
    rst $38
    add b
    cp a
    add e
    nop
    db $eb
    nop
    add b
    adc c
    ld bc, $e040
    jr nz, @+$79

    ld [$18f7], sp
    xor a
    ld [hl], c
    sbc c
    rla
    ld d, c
    rlca
    cpl
    ld b, $17
    ld bc, $000b
    dec b
    nop
    ld [hl+], a
    nop
    ld de, $4800
    nop
    and h
    nop
    jp nc, $8980

    add b
    add h
    nop
    adc $84
    push af
    rrca
    adc b
    nop
    ld d, h
    nop
    dec hl
    nop
    rla
    nop
    adc b
    nop
    dec b
    ld bc, $0002
    add c
    add b
    adc e
    inc bc
    db $10
    dec c
    ld a, b
    ldh [rSB], a
    nop
    rrca
    nop
    ld a, [hl]
    nop
    pop hl
    nop
    rrca
    nop
    ld a, a
    nop
    adc l
    inc bc
    ld a, [hl+]
    inc c
    ldh [rIE], a
    jp $1f01


    nop
    ld hl, sp+$00
    add $02
    ld a, $06
    cp $8a
    inc bc
    ld b, l
    rst $38
    ld [hl], l
    rla
    jr jr_04b_75b1

    ld h, $26
    ld de, $0811
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

jr_04b_7585:
    ld bc, $0e01
    rrca
    db $10
    db $10
    inc b
    inc c
    ld [bc], a
    ld [bc], a
    inc hl
    ld bc, $0605
    ld b, $08
    ld [$0707], sp
    ld a, c
    ld bc, $0101
    res 0, b
    ld [bc], a
    jr @+$1a

    jr c, jr_04b_75c6

    jr z, jr_04b_7585

    ld [hl-], a
    add hl, hl
    ld l, c
    ld c, c
    ld a, c
    ld c, c
    ld e, d
    ld l, d
    ld a, [$f6aa]
    xor [hl]

jr_04b_75b1:
    db $f4
    db $ec
    rst $30
    rst $28
    ld [hl], a
    ld l, l
    push af
    ld [$e877], a
    ld a, e
    ld h, b
    dec [hl]
    jr nz, jr_04b_75e3

    jr nz, @+$67

    ld b, b
    ld d, e
    ld h, b
    ccf

jr_04b_75c6:
    ldh a, [$27]
    jr z, jr_04b_7609

    jr c, @+$41

    jr jr_04b_760d

    and b
    sbc a
    sub e
    rrca
    inc c
    inc bc
    rlca
    ld bc, $d013
    ret nc

    ld [hl+], a
    jr nz, jr_04b_75e8

    ld [hl+], a
    ld b, d
    ld b, d
    ld c, [hl]
    ld c, [hl]
    sbc d
    sbc [hl]

jr_04b_75e3:
    ld h, c
    rst $38
    add hl, hl
    scf
    add hl, sp

jr_04b_75e8:
    daa
    ld b, l
    ld a, d
    ld b, [hl]
    add hl, bc
    db $f4
    adc h
    sub h
    inc c
    db $e4
    inc e
    xor b
    ld hl, sp+$70
    ld [hl], b
    xor e
    pop af
    add hl, de
    ld b, b
    ld b, b
    ld b, d
    ld b, e
    dec h
    dec h
    add hl, hl
    add hl, hl
    ld d, c
    ld e, c
    ld [hl], c
    ld d, c
    ld a, [c]
    sub d
    rst $08

jr_04b_7609:
    dec a
    jp z, $8d3d

jr_04b_760d:
    ld [hl], e
    cp a
    ld b, c
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ld b, e
    db $fc
    inc bc
    ld b, $fb
    rlca
    rst $38
    rrca
    rst $30
    rla
    cp $43
    rra
    db $fc
    ld a, [bc]
    inc bc
    ldh a, [rIF]
    call c, $e13f
    rst $38
    rlca
    cp $fc
    ld hl, sp-$7b
    nop
    ld d, b
    dec c
    ld bc, $3221
    inc sp
    ld [hl-], a
    dec sp
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    add d
    add e
    ld [bc], a
    inc bc
    inc hl
    ld bc, $00d1
    ld d, l
    ldh [rNR42], a
    ld [bc], a
    ld b, $0a
    ld a, [bc]
    ld [de], a
    ld [de], a
    inc h
    inc h
    ld b, a
    ld b, a
    adc a
    adc h
    ccf
    ld sp, $477f

jr_04b_7657:
    rst $38
    adc a
    rst $38
    cp [hl]
    rst $38
    inc a
    cp $79
    db $fd
    ld [hl], e
    ld a, [c]
    xor $0c
    db $fc
    jr nc, jr_04b_7657

    jr nz, @-$1e

    ld b, e
    db $10
    ldh a, [$e0]
    inc hl
    ld [$10f8], sp
    ldh a, [rSVBK]
    pop hl
    ldh a, [$80]
    ld h, b
    ret nz

    jp nz, $0182

    ld bc, $0800
    rrca
    rrca
    ld [$850f], sp
    add a
    ld b, [hl]
    add $20
    db $e4
    ld [de], a

jr_04b_7689:
    ld a, [c]
    sbc d
    ld a, d
    call c, $e83e
    jr jr_04b_7689

    ld [$7845], sp
    adc b
    add hl, bc
    ld a, h
    add h
    and h
    call nz, $e29e
    ld c, d
    ld a, [hl]
    inc a
    inc a
    ld l, c
    rla
    inc e
    inc a
    ld c, h
    call nz, $0e3e
    cp $0a
    ld a, [$fc96]
    and h
    db $f4
    ld l, h
    jp hl


    ld e, c
    res 7, e
    adc h
    db $fc
    ld sp, $c2f1
    jp $dba3


    ldh [rNR44], a
    db $10
    rra
    ld a, $ff
    ld bc, $0201
    inc bc
    inc c
    rrca
    ld de, $309f
    ld a, a
    ld [$700f], sp
    ld a, a
    add e
    rst $38
    adc l
    rst $38
    ld bc, $38ff
    rst $38
    ret nz

    rst $38
    ld h, d
    ld a, a
    inc e
    rra
    inc b
    rlca
    dec b
    ld b, $43
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $7f01
    add hl, de
    jr nc, @+$32

    ld [hl], b
    ld d, b
    ldh a, [$90]
    ld h, b
    and b
    and b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    adc h

jr_04b_76fb:
    adc [hl]
    xor $f2
    inc a
    call nz, $e818
    db $10
    ldh a, [rNR41]
    ldh [$a5], a
    ld bc, $070c
    ld [hl], b
    ldh a, [$38]
    ret z

    ld [hl], b
    ldh a, [$80]
    add b
    and l
    nop
    ld a, [$4043]
    ret nz

    dec b
    jr nz, jr_04b_76fb

    ld h, b
    and b
    ldh [rNR41], a
    call nz, $4901
    ld [bc], a
    and b
    ret nz

    ret nz

    ld [hl], c
    add hl, bc
    ld b, b
    ldh [$80], a
    sub b
    ld c, h
    ld c, h
    inc hl
    inc hl
    db $10
    db $10
    add e
    nop
    inc e
    add hl, bc
    inc bc
    inc bc
    inc c
    inc c
    jr nc, jr_04b_776c

    ld b, b
    ld b, b
    ccf
    ccf
    ret


    ld bc, $8ed7
    ld bc, $04ca
    ld bc, $1111
    add hl, sp
    add hl, hl
    ld b, e
    ld a, [hl-]
    ld a, [hl+]
    ldh [$3d], a
    ld e, d
    ld c, d
    ld a, d
    ld c, d
    jp c, $fcaa

    xor h
    cp b
    add sp, -$4c
    db $ec
    push af
    db $ed
    rst $30
    xor $ff
    ld [$f4db], a
    rst $28
    ret nc

jr_04b_7767:
    ld [hl], a
    ld b, b
    ld l, e
    ld b, b
    ld b, a

jr_04b_776c:
    ld b, b
    res 0, b
    rst $20
    add b
    ld e, a
    ld h, b
    ld e, a
    ld b, b
    ld a, a
    ldh a, [rIE]
    or b
    ld a, a
    ld b, b
    ccf
    ld h, $1f
    jr jr_04b_7767

    rst $28
    ld [hl+], a
    daa
    ld b, c
    ld b, e
    db $fc
    add h
    inc d
    inc c
    ld a, b
    ld [$f090], sp
    ldh [$e0], a
    adc e
    nop
    cp [hl]
    nop
    ld b, c
    ld [hl+], a
    ld b, l
    inc hl
    add hl, hl
    dec d
    ld sp, $1031
    db $10
    ld b, b
    ld d, b
    and c
    and c
    pop hl
    and c
    rst $20
    ld h, $9f
    ld a, d
    sub a
    ld a, d
    dec de
    and $7f
    add l
    rst $38
    dec b
    ld b, l
    ld hl, sp+$07
    ld b, $f6
    rrca
    cp $0f
    or $17
    db $fc
    ld b, e
    ccf
    ld hl, sp+$14
    rlca
    pop hl
    rra
    cp b
    ld a, a
    jp $0eff


    db $fc
    ld sp, hl
    pop af
    pop hl
    pop hl
    ld bc, $1211
    inc de
    ld [hl-], a
    inc sp
    ld a, [hl+]
    dec hl
    add e
    ld bc, $0306
    add c
    add c
    ld [$230c], sp
    inc d
    rra
    inc b
    inc h
    daa
    daa
    ld c, h
    ld c, h
    ld e, e
    ld e, b
    cp a
    and b
    rst $38
    add $ef
    sbc l
    rst $18
    dec a
    cp a
    ld a, l
    cp $7b
    or $fa
    db $e4
    db $fc
    call z, $d8f4
    add sp, -$70
    ldh a, [$60]
    ldh [$83], a
    ld [bc], a
    ld [$4005], sp
    ret nz

    db $10
    ldh a, [rNR41]
    pop hl
    ld b, e
    ld h, b
    ret nz

    rlca
    pop bc
    add e
    ret nz

    ld bc, $8880
    rrca
    ld c, $85
    ld bc, $095c
    ld [hl+], a
    ld [c], a
    db $10
    ld a, [c]
    sbc c
    ld a, c
    call $ea3d
    dec de
    add e
    ld bc, $0d6c
    ld a, h
    add h
    cp h
    call nz, $c2be
    ld h, d
    ld b, d
    ld e, e
    ld h, c
    dec h
    ccf
    ld e, $1e
    ret


    ld [bc], a
    scf
    rla
    ld b, b
    ld b, b
    add $46
    adc [hl]
    adc d
    sbc d
    sub [hl]
    db $fc
    and h
    ld [hl], h
    call z, $8d75
    ld l, d
    sbc d
    call z, $d9bc
    cp c
    and d
    db $e3
    ld b, d
    ld b, e
    add l
    ld bc, $09b0
    jp $3dff


    ld a, a
    ld de, $e01f
    rst $38
    ret nz

    rst $38
    add l
    ld [bc], a
    ldh a, [$09]
    jp hl


    rra
    cp b
    ld a, a
    ei
    rst $38
    db $f4
    db $fc
    reti


    ld sp, hl
    ld h, l
    add hl, bc
    jp Jump_04b_47c3


    ld b, l
    rst $08
    ld c, c
    sbc [hl]
    sub d
    cp d
    and [hl]
    adc c
    cp a
    dec b
    ret


    cp c
    or d
    di
    ld b, d
    ld b, e
    adc [hl]
    nop
    ld [$1802], sp
    jr c, jr_04b_78b0

    adc c
    ld bc, $03f2
    ld b, a
    rst $00
    sbc a
    sbc c
    add e
    nop
    ldh a, [rSC]
    ld sp, hl
    rst $38
    rst $20
    adc b
    nop
    rst $30
    ld bc, $0c0c
    and e
    nop
    ld h, d
    add hl, bc
    inc [hl]
    dec h
    dec [hl]
    dec h
    ld a, l
    ld b, l
    ld l, [hl]
    ld d, [hl]
    ld l, [hl]
    or [hl]
    rst $38
    db $ec
    add hl, hl
    add hl, bc
    rlca

jr_04b_78b0:
    rrca
    ld d, $31
    jr jr_04b_78fc

    nop
    rst $38
    ld a, a
    ld a, a
    ld l, h
    ld [de], a
    ld h, b
    add b
    sbc b
    add e
    add a
    ld h, b
    ld b, b
    jr nc, @+$22

    inc e
    jr jr_04b_78d6

    inc c
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $41ec
    rlca
    ld b, $07
    dec sp
    ld a, [hl]
    or d

jr_04b_78d6:
    adc a
    inc bc
    rst $38
    ld b, e
    rlca
    db $fc
    ldh [rNR42], a
    ld c, $f9
    rst $18
    rst $38
    daa
    jr nz, @+$3e

    ld b, e
    ld [hl], b
    ld c, a
    ld h, b
    sbc a
    ret nz

    cp a
    add b
    rst $38
    ld a, b
    rst $38
    add [hl]
    rst $38
    and c
    rst $18
    ret nc

    xor a
    and b
    rst $18
    ret nz

    rst $38
    jr c, jr_04b_793b

jr_04b_78fc:
    ccf
    rlca
    add b
    ld a, a
    ld b, e
    add b
    rst $38
    ld c, $40
    ld a, a
    jr nc, jr_04b_7947

    rla
    ccf
    ld e, b
    ld d, a
    ld c, [hl]
    ld c, l
    daa
    daa
    ld c, $1f
    ld bc, $28f0
    nop
    ld d, e
    ld a, [de]
    rrca
    rra
    jr nz, jr_04b_797c

    ld bc, $0f80
    nop
    ld hl, sp+$07
    ldh a, [rIE]
    inc c
    rst $38
    and e
    ld e, a
    ld d, h
    xor e
    and b
    ld e, a
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld [$ff46], sp
    inc b
    ld b, e
    add hl, bc
    rst $38
    ld c, $93

jr_04b_793b:
    rst $38
    ld h, d
    rst $38
    dec b
    cp $05
    rst $38
    rlca
    rst $38
    dec bc
    db $fc
    adc c

jr_04b_7947:
    cp $8f
    ld b, h
    rst $38
    ld c, a
    ld de, $ff47
    add a
    rst $38
    inc bc
    rst $38
    ld bc, $38ff
    rst $38
    call nz, $02ff
    rst $38
    db $fc
    rst $38
    rra
    rra
    ld a, e
    db $10
    inc bc
    rlca
    ld [$2018], sp
    ccf
    rst $18
    rst $38
    db $f4
    dec bc
    ld [$fdf5], a
    ld a, [de]
    ld b, $ff
    ld bc, $ff44
    nop
    inc b
    inc bc
    rst $38
    call z, $30ff
    ld b, [hl]

jr_04b_797c:
    rst $38
    nop
    dec d
    rlca
    rst $38
    ccf
    rst $38
    ld [hl], a
    ei
    ld h, d
    db $e3
    db $e3
    and d

jr_04b_7989:
    add a
    inc c
    rst $28
    ldh a, [$7f]
    add b
    rst $38
    dec c
    jp $e0f2


    pop hl
    ld b, e
    ldh [rNR41], a
    rlca
    nop
    ldh a, [$f3]
    ldh a, [rIE]
    db $fc
    add e
    jp $0063


    add b
    ld b, [hl]
    ret nz

    ld b, b
    cp a
    nop
    sub $12
    pop hl

jr_04b_79ac:
    db $e3
    ld a, l
    inc e
    ld [hl], a
    adc e
    ld a, [hl+]
    push de
    push hl
    ld a, [$7d9a]
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $80ff
    and [hl]
    di
    ld a, [bc]
    inc c
    ldh a, [$30]
    ret nz

    ld b, b
    add b
    jr c, jr_04b_7989

    add a
    ld hl, sp-$10
    ld [hl+], a
    rst $38
    ld bc, $03ff
    ld c, b
    rst $38
    nop
    ldh [rNR44], a
    ret nz

    rst $18
    jr nz, jr_04b_7a59

    sub b
    ld a, a
    db $10
    ld a, [hl]
    db $10
    call z, $ec30
    jr nc, jr_04b_79ac

    ldh a, [$98]
    ldh [$6c], a
    ld [hl], b
    ld a, a
    ld e, h
    di
    adc [hl]
    jp Jump_04b_43be


    ld a, [hl]
    ld a, h
    ld a, a
    ld b, b
    ld c, h
    jr nc, jr_04b_7a2f

    ld [$0708], sp
    ret c

    nop
    ld a, [hl+]
    ld a, [bc]
    ret nz

    ret nz

    ldh a, [$38]
    cp [hl]
    add $f1
    rst $38
    ld l, h
    cp a
    ld [de], a
    ld b, h
    rst $38
    add hl, bc
    dec de
    db $10
    rst $38
    rst $20
    rst $38
    dec de
    db $fc
    cpl
    ldh a, [$5a]
    ldh [$75], a
    ld b, b
    ld a, [hl-]
    jr nc, jr_04b_7a99

    ld c, $fb
    dec b
    call nc, $282b
    rst $10
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rlca
    ld c, l
    rst $38
    nop
    ld b, [hl]
    ld a, a
    nop

jr_04b_7a2f:
    inc d

jr_04b_7a30:
    ld bc, $037f
    rst $38
    rrca
    di
    ccf
    pop af
    ld c, a
    pop hl
    ld e, a
    jp nz, $bf7e

    ld a, a
    ld b, h
    and h
    jr jr_04b_7abb

    ld h, b
    ld h, b
    sbc a
    ld bc, $e0b8
    add hl, hl
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_04b_7a30

    db $10
    ldh a, [rP1]
    ldh a, [$88]
    ld hl, sp-$38
    ld hl, sp-$08

jr_04b_7a59:
    inc a
    ld a, h
    inc c
    cp h
    inc b
    ld e, h
    ld b, $be
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    cp [hl]
    add d
    ld a, a
    pop hl
    rra
    ld sp, hl
    rlca
    db $fd
    inc bc
    rst $38
    jp $f3ff


    ccf
    rst $38
    dec c
    ld b, e
    rst $38
    ld bc, $fe01
    nop
    ld b, e
    xor $12
    inc de
    cp $22
    db $fd
    cpl
    pop af
    ld e, a
    pop de
    cp a
    or c
    rst $18
    pop de
    cp a
    cp [hl]
    ld c, [hl]
    ld [bc], a
    ld a, $01
    add hl, de
    ld a, $3e
    ret


    ld [bc], a
    ld c, c
    ld [bc], a
    ld bc, $0200

jr_04b_7a99:
    and e
    ld bc, $0ab0
    inc bc
    dec b
    ld b, $0a
    dec c
    dec d
    ld a, [de]
    ld a, [de]
    dec d
    jr nc, @+$31

    ld b, e
    jr nz, @+$41

    ld c, e
    ld b, c
    ld a, a
    ld bc, $7f40
    ld b, e
    jr nz, jr_04b_7af3

    ld b, e
    db $10
    rra
    ld b, e
    ld [$040f], sp

jr_04b_7abb:
    inc b
    ld h, a
    add d
    sbc e
    add c
    add l
    nop
    ld b, l
    ld [de], a
    db $10
    rlca
    inc c
    inc bc
    inc bc
    ldh [$e0], a
    cp b
    ld e, b
    ld b, h
    cp h
    ld [bc], a
    cp $c2
    cp $32
    cp $20
    cp $43
    ld b, h
    db $fc
    ld b, e
    adc b
    ld hl, sp+$1c
    ld d, $f7
    dec de
    cp $12
    rst $38
    dec bc
    rst $38
    rrca
    db $fc
    rrca
    ld hl, sp-$61
    ei
    xor a
    db $fc
    add a
    db $fc
    ld b, [hl]
    db $fd
    ld b, d

jr_04b_7af3:
    rst $38
    ld hl, $10ff
    rst $38
    ld [$06ff], sp
    add h
    ld bc, $1ce7
    ldh [$7f], a
    ldh a, [$1f]
    ld a, h
    rrca
    rst $38
    inc bc
    ld a, h
    db $e3
    rra
    ccf
    jr c, jr_04b_7b3c

    ld [hl], d
    ld c, l
    ld h, l
    ld e, e
    dec sp
    dec [hl]
    dec h
    dec sp
    ld h, e
    ld b, h
    ld b, c
    ld b, d
    jr nz, jr_04b_7b3e

    rrca
    adc d
    ld bc, $074b
    ld d, h
    xor e
    and b
    rst $18
    ldh [$7f], a
    ret nc

    ccf
    ld b, l
    ld [$10ff], sp
    ld [hl], b
    rst $38
    inc bc
    rst $38
    jr @+$01

    add e
    rst $38
    ccf
    rst $38
    ld b, $ff
    dec de
    db $fc
    cp $e1

jr_04b_7b3c:
    adc a
    ld [hl+], a

jr_04b_7b3e:
    rst $38
    ld de, $ffdf
    dec sp
    rst $30
    rst $08
    db $fc
    add e
    ld a, a
    ld d, c
    xor a
    and d
    ld e, [hl]
    call nz, $38fc
    ld hl, sp+$30
    jr nc, @-$33

    ld [bc], a
    ld c, c
    ld [hl+], a
    ldh [$03], a
    and b
    sub b
    ld [hl], b
    inc de
    add h
    ld bc, $8da7
    nop
    ld e, $07
    db $10
    jr nc, jr_04b_7b67

    ld b, b

jr_04b_7b67:
    ld c, $81
    ldh a, [$8f]
    add l
    nop
    call nz, $3f02
    ccf
    ld hl, $0383
    dec h
    adc c
    nop
    inc sp
    rlca
    add b
    ld h, b
    ld h, b
    sub b
    ld [hl], b
    ld [$08f8], sp
    ld b, h
    ld hl, sp+$28
    inc b
    adc $ff
    sbc e
    cp $1a
    add h
    inc bc
    ld l, e
    rlca
    ei
    db $fc
    pop bc
    cp $30
    rst $38
    rst $08
    rst $38
    add a
    rst $28
    dec d
    ccf
    rrca
    ldh [$1f], a
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$81

    ld e, b
    ld a, a
    ld b, a
    ld a, a
    ld h, b
    ld a, a
    ld d, e
    ld e, a
    inc l
    cpl
    dec bc
    rra
    adc c
    nop
    ld d, d
    add e
    ld bc, $0630
    ld c, a
    rst $38
    dec hl
    rst $38
    daa
    db $fd
    ld [hl+], a
    and h
    ld [bc], a
    nop
    dec b
    pop hl
    rst $38
    ld [de], a
    rst $38
    inc c
    cp $a9
    inc bc
    and h
    adc e
    ld bc, $a3a0
    nop
    ld d, b
    add hl, bc
    ld [c], a
    rst $38
    add l
    cp $1b
    db $fc
    rst $28
    ldh a, [rIE]
    nop
    add l
    ld bc, $ff9a
    ld l, a
    ld bc, $0406
    ld b, e
    ld c, $0a
    ld c, $16
    ld [de], a
    rra
    ld de, $64fc
    sbc a
    add e
    ld c, a
    ld b, c
    ccf
    ld hl, $202f
    cpl
    ld b, l
    jr nz, jr_04b_7c20

    nop
    nop
    ld b, e
    inc de
    db $10
    ld [bc], a
    ld de, $0900
    ld [hl+], a
    ld [$1405], sp
    db $10
    ld e, $1e
    ld bc, $7f01
    ld de, $0707
    add hl, de
    rra
    inc h
    daa
    ld c, h
    ld b, a
    ld e, c
    ld c, a
    ld e, c
    ld e, a
    ccf
    ld [hl], $1d
    dec d
    inc c
    inc c
    ld a, c

jr_04b_7c20:
    ld bc, $8080
    and a
    rst $08
    rra
    add b
    add b
    ldh a, [$60]
    sub b
    sub b
    and b
    and b
    pop de
    ld de, $0eac
    sub $02
    db $ec
    inc b
    db $fc
    inc b
    ld hl, sp+$21
    ld e, b
    ld c, c
    dec sp
    dec hl
    add hl, de
    add hl, bc
    ret c

    pop bc
    jr c, jr_04b_7c74

    inc c
    inc c
    inc hl
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, e
    inc b
    rlca
    inc bc
    nop
    rlca
    ld [bc], a
    inc bc
    inc hl
    ld bc, $020f
    ld [bc], a
    inc bc
    rlca
    ld a, b
    ld sp, hl
    nop
    add e
    add c
    rst $38
    ld b, d
    cp $4c
    db $fc
    ldh a, [$f0]
    inc hl
    ld b, b
    ld bc, $8080
    db $ec
    dec h
    ldh [rBGP], a
    inc bc
    inc bc
    inc c

jr_04b_7c74:
    rra
    jr nz, jr_04b_7cda

    add b
    add c
    nop
    ld bc, $0300
    nop
    dec b
    nop
    dec hl
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    ld b, c
    ld e, a
    ld c, $fe
    inc de
    di
    ld e, $76
    ld de, $07b1
    ld [hl], e
    add hl, bc
    add hl, sp
    cp $f8
    ld b, l
    db $dd
    ld b, b
    rst $08
    ldh [$e7], a
    ld sp, $2ef3
    ld l, a
    ld b, h
    push bc
    ld c, d
    adc $91
    sub e
    sub b
    sub a
    db $10
    rra
    inc c
    rrca
    dec bc
    rrca
    ld b, $07
    dec bc
    add hl, bc
    ld c, $0e
    ld l, e
    dec c
    jr c, jr_04b_7cf5

    ld c, [hl]
    ld b, [hl]
    scf
    ld hl, $1012
    add hl, de
    jr jr_04b_7cda

    db $10
    inc e
    ld [$0085], sp
    or d
    dec bc
    rlca
    rlca
    ld [$0408], sp
    inc b
    inc bc
    ld [bc], a
    ld [c], a
    ld [c], a
    ld e, $fe
    ld b, a

jr_04b_7cda:
    inc b
    db $fc
    dec bc
    nop
    db $fc
    inc bc
    cp $0d
    rst $38
    inc d
    rst $30
    inc h
    rst $20
    and b
    and a
    add e
    di
    inc d
    ld b, b
    ld a, a
    and b
    ccf
    jr nz, jr_04b_7d31

    call c, $139f

jr_04b_7cf5:
    rra
    ldh a, [$df]
    sub b
    sbc a
    ldh [rIE], a
    nop
    rst $38
    ld a, $ff
    pop bc
    ld b, e
    rst $38
    nop
    inc d
    ld a, a
    ld e, $bf
    ld h, c
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld l, a
    rst $38
    adc c
    ld sp, hl
    ld sp, $faf1
    jp z, $3c3c

    dec b
    inc b
    call Call_04b_5d00
    ld bc, $a0b0
    ld b, e
    ret nc

    ld d, b
    inc bc
    ldh a, [$30]
    ld hl, sp+$08
    ld b, e
    ld a, h
    inc b
    ld a, [bc]
    ld [hl], $02
    dec sp
    inc bc
    or h

jr_04b_7d31:
    nop
    sbc e
    inc bc
    dec e
    ld bc, $441b
    ld bc, $0f1f
    ccf
    ld bc, $033f
    inc a
    nop
    ld a, a
    rlca
    ld a, h
    inc b
    ld a, [$720e]
    cp $02
    cp $43

jr_04b_7d4c:
    ld bc, $0bff
    inc bc
    rst $38
    inc b
    db $fc
    ld [$08f8], sp
    db $fc
    jr c, @+$01

    ret z

    rst $38
    jp nz, $a489

    ld bc, $1d15
    ld c, $ff
    rst $30
    rst $38
    jr @+$01

    jr nz, jr_04b_7d4c

    ld b, b
    rst $00
    call c, $83df
    rst $20
    add b
    add a
    nop
    rrca
    nop
    rrca
    pop bc
    rst $38
    ld b, e
    ld a, [hl]

jr_04b_7d79:
    add $7e
    and [hl]
    cp [hl]
    rra
    dec e
    rst $18
    nop
    ld sp, hl
    sbc e
    adc a
    ld de, $c0c0
    jr nc, jr_04b_7d79

    ld [$0cf8], sp
    ld a, h
    inc de
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    inc de
    di
    ld h, c
    pop hl
    ld [hl+], a
    ret nz

    ld b, h
    ret nz

    ld b, b
    and l
    nop
    cp b
    ld a, [bc]
    db $10
    ldh a, [rNR11]
    pop af
    and b
    ld [c], a
    ld h, l
    rst $20
    dec h
    push hl
    and d
    ld [hl+], a
    ld [c], a
    rlca
    ld h, e
    inc hl
    jr nc, jr_04b_7dc2

    ldh a, [rNR10]
    ldh [$e0], a
    db $ec
    ld b, e
    ld [$e0e0], sp
    ld d, b
    ldh a, [$90]
    ldh a, [rNR10]
    ld [hl], b
    add b

jr_04b_7dc2:
    ld b, e
    cp b
    adc b
    nop
    sbc b
    ld b, h
    ld b, h
    ld e, h
    inc d
    ld a, h
    db $f4
    db $fc
    adc h
    sbc h
    inc b
    inc a
    ld [bc], a
    ld a, [hl]
    add d
    cp $62
    ld a, [hl]
    sub $52
    sub h
    sub h
    inc l
    inc h
    jr c, jr_04b_7e18

    xor l
    nop
    ld a, [hl]
    add hl, hl
    ld bc, $022d
    inc b
    rlca
    rlca
    inc b
    inc b
    inc bc
    xor d
    nop
    reti


    dec c
    rlca
    rlca
    add hl, de
    add hl, de
    and e
    and c
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld [bc], a
    sbc a
    ld bc, $073f
    ld b, e
    inc a
    inc b
    rlca
    ld e, a
    rlca
    dec a
    add hl, bc
    ld e, d
    ld [bc], a
    ccf
    inc bc
    ld b, l
    ld a, [hl]
    ld [bc], a
    dec bc
    inc a
    inc b
    cp h
    dec b
    jr c, jr_04b_7e1e

    sbc e
    adc e
    ld e, c

jr_04b_7e18:
    ld c, c
    ld c, b
    ld b, c
    xor l
    nop
    ld l, h

jr_04b_7e1e:
    add hl, bc
    rra
    rra
    jr nz, jr_04b_7e43

    jr jr_04b_7e3d

    ld b, $04
    dec b
    dec b
    push de
    ld bc, $1a03
    jr jr_04b_7e47

    add sp, -$18
    inc e
    inc b
    inc bc
    inc bc
    rrca
    ld bc, $0007
    add a

jr_04b_7e3a:
    add b
    ld b, e
    ld b, b

jr_04b_7e3d:
    ld [hl], b
    ld h, b

jr_04b_7e3f:
    ld d, c
    ld b, b
    sub b
    sub b

jr_04b_7e43:
    ldh a, [$f0]
    jr jr_04b_7e3f

jr_04b_7e47:
    nop
    jp $a400


    inc b

jr_04b_7e4c:
    db $fc
    dec b
    ld hl, sp+$01
    db $fc
    ld h, e
    dec d
    ldh a, [$b0]
    ret nc

    ret nc

    and b
    jr nz, jr_04b_7e3a

    jr nz, jr_04b_7e4c

    db $10
    ld a, b
    ld [$08b8], sp
    ld a, h
    inc b
    cp a
    rlca
    ld sp, hl

jr_04b_7e66:
    ld bc, $02fe
    ld b, h
    db $fc
    inc b
    dec b
    inc c
    db $fc
    inc c
    ld a, [$e21e]
    adc d
    ld bc, $63f5
    rrca
    ld [hl], b
    ld [hl], b
    adc [hl]
    adc a
    ld h, e
    ld b, a
    jr c, jr_04b_7ea7

    jr jr_04b_7ea1

    ld sp, $523f
    ld c, [hl]
    ld e, l
    ld c, l
    adc e
    inc bc
    ld l, [hl]
    add l
    nop
    ret nz

    dec bc
    ld [c], a
    ld [c], a
    dec de
    sbc e

jr_04b_7e93:
    add h
    push af
    add b
    rst $38
    ldh a, [rIE]
    ld c, a
    ld c, a
    adc l
    nop
    ret c

    rrca
    ld d, $f6

jr_04b_7ea1:
    dec de
    ld [hl], e
    rla
    or a
    dec bc
    ld [hl], e

jr_04b_7ea7:
    rrca
    ccf
    ei
    ei
    ld b, a
    rst $18
    ld b, b
    call $018d
    jr nc, jr_04b_7e93

    ld h, $90
    sbc a
    and b
    ccf
    and b
    cp a

jr_04b_7eba:
    ld e, h
    rra
    db $d3
    rst $18
    or b
    sbc a
    ret nc

    rst $18
    and b
    cp a
    nop
    rst $38
    ld b, b
    ret nz

    ld b, c
    pop bc
    jp nz, $24c3

    and $2b
    jp hl


    ld d, $f6
    ld a, [de]
    ld a, [$e2a3]
    ld h, c
    pop hl
    jr nz, jr_04b_7eba

    and b
    ld [hl+], a
    ldh [rSB], a
    ld h, b
    jr nz, jr_04b_7e66

    ld [bc], a
    sbc d
    rrca
    adc b
    ld hl, sp-$28
    ld hl, sp+$04
    inc e
    ld [bc], a
    ld a, [hl]
    add [hl]
    ld a, [$7179]
    call $837d
    add e
    add a
    ld bc, $0010
    nop
    jp $ad01


    inc c
    ld a, a
    rrca
    rst $38
    inc bc
    cp $01
    rst $38
    inc c
    rst $38
    inc [hl]
    rst $30
    ldh [$e7], a
    add l
    ld bc, $ff8a
    db $ec
    ld a, [hl+]
    ld b, $03
    ld [bc], a
    ld b, $03
    rlca
    nop
    inc bc
    db $ec
    dec sp
    dec e
    ld bc, $0100
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld e, $0f
    rrca
    ld e, $1c
    cp $fe
    ld a, h
    cp $fc
    inc e
    cp $0f
    ld e, $1e
    rrca
    rlca
    rrca
    inc bc
    rlca
    ld bc, $f803

jr_04b_7f3a:
    inc hl
    sbc l
    add hl, bc
    inc b
    inc bc
    rrca
    rra
    rla
    inc sp
    ld a, $3f
    ld a, b
    inc a
    ld b, e
    jr c, @+$7a

    ld [bc], a
    ld a, d
    db $fc
    cp $22
    rst $38
    ld [bc], a
    or a
    rst $08
    add l
    jp $12d4


    ld sp, $5811
    ld sp, $0078
    ld sp, $0103
    add l
    inc bc
    or a
    rst $08
    rst $38
    rst $38
    cp $ff
    ld a, d
    db $fc
    ld b, e
    jr c, jr_04b_7fe5

    ld [$3c78], sp
    ld a, $3f
    rla
    inc sp
    rrca
    rra
    inc b
    sub h
    nop
    ld sp, $0801
    ldh a, [rSCX]
    ld hl, sp-$04
    ld bc, $f008
    xor e
    nop
    ld h, e
    ld [bc], a
    add b
    ret nz

    ldh [$a3], a
    nop
    ld [hl], c
    ld c, $fe
    or $f3
    cp $ff
    ldh [$fe], a
    ret nz

    ldh [$e0], a
    ret nz

    add b
    ret nz

    nop
    add b
    sub c
    or e
    db $ec
    ld d, [hl]
    and h
    nop
    ld [hl], c
    rlca
    ld [hl], b
    ld hl, sp+$38
    ld a, h
    jr jr_04b_7fe7

    nop
    jr jr_04b_7f3a

    rst $38
    ld [$1818], sp
    inc a
    jr c, @+$7e

    ld [hl], b
    ld hl, sp-$20
    ldh a, [$b5]
    nop
    ld l, $07

jr_04b_7fbd:
    jr nz, jr_04b_7fd7

    jr c, jr_04b_7fbd

    ld hl, sp-$04
    ldh [$f8], a
    sub d
    sbc e
    ld [$e0c0], sp
    ld hl, sp-$08
    db $fc
    jr c, @-$02

    jr nz, jr_04b_7fe9

    add l
    nop
    ld [hl], b
    ld c, $1f
    rrca

jr_04b_7fd7:
    ld c, $1f
    dec e
    rst $38
    db $fd
    ld a, a
    db $fd
    rst $38
    dec e
    rst $38
    ld c, $1f
    rra
    adc d

jr_04b_7fe5:
    nop
    add l

jr_04b_7fe7:
    add e
    nop

jr_04b_7fe9:
    ret nz

    ld c, $87
    rst $38
    ld a, e
    rst $38
    sbc l
    rst $38
    ld c, [hl]
    cp a
    ld c, $ff
    sbc [hl]
    rst $38
    cp $ff
    db $fd
    rst $00
    adc e
    add h
    nop
    db $db
    rst $38
