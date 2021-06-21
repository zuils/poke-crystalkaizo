; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

    ld h, a
    inc b
    ld [bc], a
    ld bc, $0400
    nop
    ld [hl+], a
    ld [$0b0d], sp
    db $10
    rla
    jr @+$12

    rla
    inc bc
    jr nz, @+$09

    jr nz, jr_050_402c

    jr jr_050_401e

    rlca
    inc hl
    ld bc, $0322
    ld [bc], a
    ld [bc], a

jr_050_401e:
    ld bc, $6701
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $43
    dec c
    ld a, [bc]
    ld bc, $111e

jr_050_402c:
    ld b, l
    rla
    db $10
    ld b, $0b
    ld [$0809], sp
    inc b
    inc b
    ld [bc], a
    add d
    and c
    ld l, e
    ldh [$29], a
    cp b
    ld a, h
    ccf
    inc bc
    ld a, a
    nop
    ld [hl], a
    ld c, $e1
    dec d
    pop af
    dec d
    jp c, $7d75

    adc [hl]
    rst $38
    nop
    db $ed
    ld e, $be
    ld a, a
    pop hl
    rst $38
    add c
    rst $38
    ld bc, $03ff
    cp $8f
    ld sp, hl
    cp $86
    ld a, b
    ld a, b
    inc bc
    inc bc
    ccf
    inc a
    rst $28
    ret nc

jr_050_4066:
    ld b, l
    rst $18
    jr nz, jr_050_4073

    rst $28
    db $10
    di
    dec c
    ld a, $cf
    sbc [hl]
    db $76
    rst $38

jr_050_4073:
    ld bc, $ff45
    nop
    rlca
    ccf
    nop
    add e
    add b
    ld a, b
    ld a, b
    rlca
    rlca
    ld l, d
    ld [$e080], sp
    ld [hl], b
    ld hl, sp+$0c
    rst $38
    inc bc
    cp $01
    ld b, a
    rst $38
    nop
    ldh [rNR51], a
    cp $01
    db $fc
    ld a, [hl-]
    call nz, $c244
    ld b, d
    add e
    add d
    rlca
    inc b
    rra
    jr jr_050_410e

    ld [hl], b
    rst $28
    sub b
    rst $28
    db $10
    rst $30
    ld [$07f8], sp
    rst $38
    ld bc, $06fe
    ld hl, sp+$38
    ret nz

    ret nz

    inc bc
    inc bc
    rrca
    inc c
    rst $38
    ldh a, [$86]
    xor e
    ld b, $00
    pop af
    ld bc, $0e0e
    ldh [$f0], a
    ld [hl], c
    inc de
    ld b, b
    ret nz

    jr nz, jr_050_4066

    db $10
    sub b
    nop
    adc b
    ld [$0008], sp
    inc c
    inc c
    inc d
    inc e
    inc b
    inc a
    ld b, h
    ld a, h
    add h
    ld b, e
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    dec e
    ldh a, [rNR10]

jr_050_40df:
    ldh [rNR41], a
    ld b, a
    rst $00
    sbc a
    sbc b
    ccf
    jr nz, jr_050_4167

    ld b, b
    rst $38
    add b
    ccf
    ret nz

    rst $18
    jr nz, jr_050_40df

    inc de
    db $ec
    inc d
    db $ec
    inc e
    sub d
    ld [de], a
    ld h, d
    ld h, d
    add c
    add c
    ld a, h
    inc d
    jr nz, jr_050_413f

    ld d, b
    db $10
    ld d, b
    jr nc, jr_050_4134

    ld c, b
    ld c, b
    ld e, h
    ld e, h
    ld h, $22
    jr nz, @+$30

    ld [de], a
    ld [de], a

jr_050_410e:
    inc hl
    ld hl, $2d23
    add e
    add l
    ld de, $2127
    add $da
    ld hl, sp+$24
    cp $22
    sbc $32
    rst $18
    ld sp, $4dbb
    ld a, l
    adc e
    push af
    dec bc
    ld b, e
    ld [hl], a
    add hl, bc
    dec b
    ld l, $12
    add h
    db $fc
    ld a, b
    ld a, b
    and [hl]
    nop
    and e

jr_050_4134:
    ld h, c
    ld [$0402], sp
    inc b
    ld bc, $070b
    ld a, [bc]
    rrca
    inc c

jr_050_413f:
    ld b, e
    rlca
    inc b
    nop
    inc bc
    adc h
    nop
    ld b, a
    dec c
    ld c, $3f
    nop
    ret nz

    ret


    add hl, sp
    inc bc
    rlca
    rst $18
    ldh [rIE], a
    inc e
    rst $38
    ld [bc], a
    add [hl]
    nop
    adc [hl]
    ld b, $50
    rst $38
    xor d
    ld a, a
    ld [hl], l
    rra
    ld a, [de]
    adc h
    nop
    sbc h
    nop
    nop
    add l

jr_050_4167:
    nop
    ld a, d
    ld h, c

jr_050_416a:
    rlca
    add b
    ret nz

    jr nz, jr_050_41cf

    sub b
    ld d, b
    sbc b
    ret c

    and e
    ld bc, $0124
    cp a
    pop bc
    ld c, b
    rst $38
    nop
    ld b, $40
    cp $a1
    db $fc
    jp nz, $3838

    ld [hl+], a
    inc b
    inc b
    rlca
    rrca
    ld [$101f], sp
    add a
    nop
    ret z

    add e
    nop
    ld b, $19
    ld [$0004], sp
    db $10
    ld bc, $2320
    jr nz, jr_050_41cb

    ld b, b
    ld e, a
    ld h, b
    ld b, b
    ld e, a
    ccf
    add b
    ld e, a
    ldh [$7f], a
    ld a, a
    rra
    rra
    rrca
    rrca
    ld b, $07
    ld b, e
    ld [bc], a
    inc bc
    inc b
    rlca
    rlca
    dec c
    dec bc
    inc c
    adc b
    nop
    scf
    inc b
    ccf
    ccf
    pop bc
    ret nz

    rra
    add h
    pop de
    rlca
    rst $18
    jr c, jr_050_416a

    ld d, [hl]
    rst $08
    ld d, h
    ld a, a
    ldh [$a3], a

jr_050_41cb:
    nop
    ld h, [hl]
    inc b
    ei

jr_050_41cf:
    db $fc
    rst $38
    db $fc
    rrca
    ld b, e
    db $fd
    rlca
    ld a, [bc]
    ld a, [$fa07]
    rrca
    db $f4
    rst $38
    add sp, -$01
    db $10
    di
    db $ed
    add l
    nop
    adc d
    dec b
    ldh a, [$f0]
    cp $0e
    db $fd
    inc bc
    ld b, a
    db $fc
    ld [bc], a
    ld b, h
    ld hl, sp+$04
    ld b, $30
    ret z

    ld c, c
    adc e
    adc h
    sbc a
    sub b
    add e
    ld [bc], a
    ld [$f701], sp
    ld [$0084], sp
    and l
    inc b
    add b
    ld b, b
    ret nz

    jr nz, @+$22

    ld b, e
    db $10
    jr nc, jr_050_4250

    jr c, jr_050_4257

    ld bc, $8878
    ld b, l
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    inc b
    ldh [rNR41], a
    and a
    ld a, [$8c5f]
    rst $08
    ld h, [hl]
    ld c, $10
    jr nz, @+$2a

    ld [$1828], sp
    jr @+$26

    inc h
    ld e, $1e
    inc de
    ld de, $0f01
    adc c
    ld bc, $a766
    sbc a
    inc bc
    db $10
    inc d
    inc b
    inc d
    and e
    ld bc, $ff5c
    rlca
    inc bc
    inc bc
    inc b
    rlca
    ld [$100c], sp
    inc e
    ld b, e
    db $10
    rra
    rrca
    ld [$040f], sp
    rlca

jr_050_4250:
    inc bc
    inc bc
    ld bc, $1d01
    dec e
    ld [hl+], a

jr_050_4257:
    ld a, $41
    ld h, a
    add b
    rst $20
    ld b, e
    add b
    rst $38

jr_050_425f:
    dec b
    ld b, c
    ld a, a
    ld [hl+], a
    ld a, $1c
    inc e
    db $ec
    ld h, $22
    ld bc, $81c5
    rra
    rlca
    rlca
    add hl, bc
    ld [$101f], sp
    rrca
    ld [$0707], sp
    add b
    add b
    ld b, b
    pop bc
    jr nz, jr_050_425f

    ld [de], a
    ld a, [c]

Jump_050_427f:
    inc de
    ld a, [c]
    ld de, $20f1
    ldh [rBGP], a
    rst $00
    ret z

    rst $08
    ret nc

    ld e, c
    ldh [$39], a
    ld b, e
    ldh [$bf], a
    add hl, bc
    ldh a, [$9f]
    xor b
    adc a
    rst $18
    add a
    xor b
    ld [$c8f8], sp
    ld b, e
    inc a
    inc h
    inc b
    ld a, $22
    rra
    ld de, $c30f
    nop
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc hl
    ld bc, $0343
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld b, l
    rrca
    ld [$1e08], sp
    db $10
    inc a
    ld [hl], b
    ld a, h
    sub b
    inc a
    nop
    ld a, $43
    db $10
    rst $38
    inc c
    sub b
    rst $38
    ret z

    rst $38
    ld h, $ff
    ld bc, $06fe
    ld hl, sp+$18
    ldh [$e0], a
    ld h, c
    ldh [rNR42], a
    ret nz

    ret nz

    ld h, b
    jr nz, jr_050_4349

    db $10
    db $fc
    inc c
    cp $82
    ld e, a
    ld h, c
    rra
    db $10
    add a
    adc h
    ld b, e
    jp nz, $e223

    cpl
    db $ed
    ccf
    pop af
    ld l, d
    pop hl
    push de
    ret nz

    ld l, e
    ld b, b
    ccf
    jr nz, jr_050_4334

    inc h
    ld b, e
    ccf
    jr nz, jr_050_42fd

    jr c, jr_050_4324

    rst $38

jr_050_42fd:
    ret nz

    ld b, e
    rst $38
    ld b, b
    ld de, $80ef
    rst $08
    add b
    rst $18
    nop
    sbc a
    nop
    cp a
    nop

jr_050_430c:
    rst $38
    nop
    di
    nop
    db $e3
    nop
    rst $20
    nop
    ld b, l
    rst $38
    nop
    ld b, h
    ld a, a
    nop
    ld bc, $fe04
    ld b, l
    ld [$04ff], sp
    inc b
    rst $38
    inc bc

jr_050_4324:
    db $fc
    db $fc
    add a
    nop
    ld b, a
    ld bc, $0203
    push bc
    nop
    rrca
    rlca
    ld a, a
    ld h, c
    cp $82

jr_050_4334:
    db $fc
    inc b
    ld hl, sp+$18
    and h
    nop

jr_050_433a:
    sbc h
    ld [bc], a
    jr nc, jr_050_433a

    inc l
    ld b, e
    cp $02
    inc bc
    rst $38
    ld bc, $11ff
    ld b, e
    rst $38

jr_050_4349:
    ld bc, $8f05
    add hl, bc
    ld a, a
    ld bc, $01ff
    ld b, l
    cp $02
    rlca
    rst $38
    rlca
    cp a
    nop
    ccf
    nop
    ld a, a
    rrca
    and h
    nop
    ld e, d
    nop
    jr nz, jr_050_430c

    nop
    adc [hl]
    call nz, $2280
    ld b, b
    rlca
    ldh [rNR41], a
    rst $38
    rra
    ld a, [$7d80]
    ld b, b
    and h
    rlc d
    rlca
    ret nz

    ret nz

    inc hl
    jr nz, jr_050_437e

    ldh [rNR41], a
    ret nz

jr_050_437e:
    ret nz

    ld l, l
    rlca
    jr c, @+$3a

    ld b, h
    ld a, h
    add d
    adc $01
    rst $08
    and a
    nop
    inc e
    ld de, $3c3c
    dec e

jr_050_4390:
    dec d
    rra
    rla
    dec hl
    ld hl, $2037
    rst $38
    adc $f1
    rra
    ldh [$f3], a
    ld b, b
    ld [hl], e
    ld b, e
    ld b, b
    ld a, a
    dec b
    jr nz, @+$41

    ld de, $0e1f
    ld c, $71
    inc b
    ret nz

    ret nz

    ld h, b
    jr nz, jr_050_4390

    add d
    push de
    ld bc, $c0c0
    db $ec
    inc hl
    adc l
    db $eb
    inc bc
    call nz, $b87c
    cp b
    push bc
    ld bc, $0367
    ld b, b
    ret nz

    add b
    add b
    db $ec
    dec h
    adc c
    nop
    ld d, [hl]
    xor b
    ld bc, $4562

Jump_050_43cf:
    ld [bc], a
    inc bc
    ld c, b
    inc b
    rlca
    inc bc
    rra
    inc e
    ccf
    inc h
    ld b, e
    ld c, a
    ld b, b
    ld b, e
    ld a, a
    ld b, h
    inc bc
    rst $38
    ld [c], a
    rst $38
    ld hl, $0087
    cp b

Jump_050_43e7:
    add a
    nop
    ld [c], a
    ld bc, $203f
    sub e
    nop
    ld [$f300], a
    call nz, $c381
    adc c
    ld b, l
    rra
    nop
    ld bc, $01bf
    ld b, [hl]
    rst $38
    ld [bc], a
    ld [bc], a
    add c
    rst $38
    rst $38
    ld h, l
    add l
    ld bc, $033e
    ld a, a
    ld bc, $098f
    sub e
    ld bc, HeaderDestinationCode
    ldh a, [rNR10]
    ld c, e
    ldh [rNR41], a
    ld [bc], a
    ldh a, [rNR10]
    ld hl, sp+$44
    ld [$05c8], sp
    db $fc
    inc b
    ei
    inc bc
    db $fd
    ret nz

    add e
    ld bc, $8a7a
    ld [bc], a
    ld c, [hl]
    ld bc, $0101
    ld c, d
    ld [bc], a
    inc bc
    call nz, $1300
    inc c
    dec b
    rrca
    ld [$0809], sp
    dec de
    db $10
    rra
    db $10
    rst $38
    ldh a, [rIE]
    nop
    add a
    ld [bc], a
    ld a, b
    adc l
    ld [bc], a
    sub b
    ld [bc], a
    pop af
    nop
    ld sp, hl
    add h
    ld [bc], a
    and c
    inc b
    rst $30
    nop
    db $e3
    nop
    db $e3
    rst $00
    add c
    ld b, $80
    rst $38
    ret nz

    rst $38
    ld a, b
    add a
    add a
    ld h, l
    adc e
    ld [bc], a
    ret nc

    ld bc, $08f8
    ld c, c
    ldh a, [rNR10]
    rlca
    ld hl, sp+$28
    db $fc
    inc b
    db $f4
    ld b, h
    ld a, [c]
    ld b, d
    ld b, h
    cp $02
    inc b
    ld b, d
    ei
    ld b, c
    db $fd
    ldh [$85], a
    ld [bc], a
    ld a, [$66ff]
    inc h
    ld bc, $0001
    inc bc
    inc hl
    ld [bc], a
    inc de
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld b, $0b
    ld a, [bc]
    rrca
    ld c, $0f
    inc d
    rra
    db $10
    rla
    add hl, de
    rla
    jr jr_050_44de

    rrca
    ld [$0714], sp
    inc b
    nop
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc c
    rrca
    db $10
    dec l
    ld [hl+], a
    ccf
    ld [hl+], a
    rra
    ld e, $03
    ld [bc], a
    nop
    inc bc
    ld bc, $b3c4
    ld l, h
    ld bc, $4040
    inc h
    ldh [rSB], a
    and b
    ret nc

    ld b, e
    ld [hl], b
    db $10
    rla
    ld a, a
    rrca
    ret nz

    jr nc, jr_050_44ca

    add b
    rra
    nop

jr_050_44ca:
    ld a, a
    nop
    rst $38
    ld bc, $02fe
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    sbc b
    ld e, c
    rst $38
    nop
    dec bc

jr_050_44de:
    ld a, a
    nop
    ccf
    nop
    sbc [hl]
    add c
    ld c, a
    ld [hl], e
    db $fc
    add h
    ld a, b
    ld a, b
    ld l, a
    dec b
    ld bc, $8403
    adc h
    pop af
    ld [hl], b
    ld b, [hl]
    rst $38
    nop
    ld [$ff80], sp
    jp $c1ff


    cp $81
    rst $08
    jr nc, jr_050_4543

    add a
    ld a, b
    ld bc, $30cf
    ld b, e
    rst $38
    nop
    ld [bc], a
    sbc a
    ld a, b
    rra
    ld b, e
    add b
    rst $38
    ld [bc], a
    ld h, b
    rst $30
    jr jr_050_455d

    rst $38
    nop
    dec bc
    cp a
    nop
    rst $08
    nop
    rst $20
    ldh [rNR33], a
    rra
    rrca
    ld [$0707], sp
    ld l, e
    rlca
    ld b, $1f
    ld l, [hl]
    rst $28
    ld e, $0e
    ld a, h
    inc c
    and e
    nop
    inc h
    rlca
    ldh [rNR41], a
    ret nz

    ld b, b
    add c
    add c
    ld bc, $2301
    ld [bc], a
    dec e
    rlca
    add h
    add a
    add h
    adc a
    ld c, b
    rst $08

jr_050_4543:
    ld c, b
    xor a
    ld l, b
    daa
    db $e4
    and e
    ld h, d
    ld a, [c]
    inc de
    rst $30
    inc d
    sbc a
    ld a, b
    rla
    db $f4
    sbc l
    ld a, [hl]
    pop af
    rra
    and $3e
    ld hl, sp+$38
    ld b, e
    ldh [rNR41], a

jr_050_455d:
    inc bc
    ret nz

    ld b, b
    ret nz

    ret nz

    and e
    nop
    ld b, b
    ld [hl], a
    ld a, [bc]
    ld h, b
    ld h, b
    sub b
    sub b
    adc h
    adc h
    ld d, [hl]
    ld [bc], a
    dec hl
    ld bc, $4357
    ld bc, $04fe
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    add e
    db $e3
    rlca
    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$18
    ldh [rNR41], a
    add e
    cp l
    inc bc
    ret nz

    ld b, b
    add b
    add b
    ld a, d
    ld bc, $0103
    ld [hl+], a
    inc bc
    nop
    ld bc, $00c3
    ld c, $06
    inc b
    ld bc, $0604
    dec b
    inc b
    ld b, $89
    nop
    ld d, $43
    rlca
    inc b
    nop
    dec c
    ld b, e
    ld a, [bc]
    rrca
    ld b, $12
    rrca
    ld [de], a
    ld e, $13
    rrca
    rrca
    xor c
    nop
    nop
    ld de, $40c0
    ldh [rNR41], a
    rst $38
    rra
    add b
    ld h, b
    rlca
    nop
    rra
    inc bc
    ld a, l
    dec b
    rst $38
    rlca
    rst $38
    inc bc
    call nz, $ba00
    ld [$ffe4], sp
    ld hl, sp-$21
    ldh a, [$9f]
    ld [hl], b
    rst $38
    jr nz, jr_050_461a

    rst $38
    nop
    nop
    rst $38
    adc b
    nop
    and l
    dec c
    inc b
    ld b, $09
    ld [$1013], sp
    daa
    jr nz, @-$2f

    ret nz

    rst $38
    nop
    rst $38
    dec b
    ld b, e
    cp $82
    dec bc
    rst $38
    ld bc, $619f
    rrca
    di
    inc c
    db $f4
    sbc e
    ld l, b
    rst $38
    db $10
    and h
    nop
    or [hl]
    nop
    ld bc, $af86
    ld bc, $7030
    ld [hl+], a
    ldh a, [rDIV]
    ldh [$60], a
    and b
    ld h, b
    add b
    and e
    nop
    ld de, $0184
    scf
    add l
    ld bc, $130a
    inc bc

jr_050_461a:
    ld [bc], a
    ld b, $04
    add a
    add h
    rst $00
    ld b, h
    add a
    call nz, $c8cf
    xor a
    ld l, b
    cpl
    add sp, -$19
    inc h
    ld a, [c]
    inc de
    add a
    ld bc, $07c1
    ld h, b
    ld h, b
    jr nc, jr_050_4665

    ld e, b
    ld [$04bc], sp
    add l
    ld bc, $8962
    ld bc, $8466
    ld bc, $02d0
    nop
    ld a, a
    inc bc
    and h
    ld bc, $02e8
    add b
    rst $38
    nop
    add [hl]
    rst $38
    ld bc, $7e02
    add [hl]
    rst $38
    dec d
    rst $38
    nop
    di
    ld e, h
    xor l
    xor d
    cp a
    adc b
    rst $38
    add h
    cp a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld c, b

jr_050_4665:
    rst $38
    jr nc, @+$01

    ld bc, $0efc
    xor b
    ld bc, $08be
    nop
    sub e
    ld [hl], d
    rla
    db $f4

jr_050_4674:
    rst $18
    jr c, jr_050_4674

    ld e, $85
    ld bc, $9128
    ld bc, $8976
    nop
    jr nz, jr_050_4685

    dec de
    inc a
    ld e, [hl]

jr_050_4685:
    ld b, e
    and e
    ld bc, $0360
    rrca
    jr jr_050_4690

    ld b, $45
    inc bc

jr_050_4690:
    ld [bc], a
    add e
    nop
    inc a
    add a
    nop
    db $10
    rlca
    rlca
    inc b
    rrca
    ld c, $0f
    ld [$100f], sp
    adc b
    nop
    ld h, b
    ld bc, $ff00
    and e
    ld [bc], a
    add c
    nop
    ld b, b
    adc b
    nop
    or b
    ld b, $00
    rst $38
    jp $01ff


    cp $01
    rst $38
    ld l, b
    ld bc, $0c08
    ld b, h
    inc d
    inc e
    dec de
    ld e, $12
    ld c, $0a
    ld l, a
    ld l, c
    ld a, a
    ld d, c
    ld a, a
    ld c, b
    ld a, $21
    inc e
    inc de
    inc c
    dec bc
    ld b, $05
    ld a, $3b
    ld a, l
    ld b, e
    inc a
    inc sp
    inc c
    rrca
    inc bc
    inc bc
    ld l, c
    dec c
    inc bc
    inc bc
    inc b
    ld b, $09
    rrca
    dec bc
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $7f01
    ld bc, $0808
    ld b, l
    inc d
    inc e
    dec bc
    inc [hl]
    inc a
    ld d, d
    ld e, [hl]
    ld d, e
    ld e, a
    ld d, d
    ld e, a
    ld d, h
    ld e, a
    ld e, b
    ld a, a
    ld b, e
    pop de
    rst $38
    ld [bc], a
    ld h, d
    cp $22
    ld b, h
    rst $38
    inc d
    ldh [rNR42], a
    inc [hl]
    rst $38
    add hl, hl
    rst $38
    ld l, c
    rst $38
    ld a, [hl+]
    rst $38
    and b
    rst $38
    ld b, e
    ld a, a
    jr nz, jr_050_4748

    ld b, b
    ld c, a
    add b
    sbc a
    nop
    ccf
    ld bc, $033f
    cp a
    add a
    sbc $c5
    db $fd
    ld c, c
    ld sp, hl
    sub b
    ldh a, [$60]
    ld h, b
    call $00d6
    ld bc, $80cd
    ldh [$5a], a
    ld bc, $0200
    nop
    dec b
    nop
    dec bc
    db $10
    rra
    db $10
    rla
    and c
    xor a
    ld b, c
    rst $18
    ld b, d
    sbc $83
    cp a

jr_050_4748:
    add b
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc d
    rst $30
    ldh [$e7], a
    ld h, c
    ld h, a
    ld [bc], a
    adc a
    ld b, $fd
    rlca
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    inc b
    ei
    rst $08
    rst $38
    jr nc, @+$01

    nop
    cp e
    push hl
    ld a, a
    ld e, [hl]
    ccf
    inc sp
    inc c
    ld c, $20
    jr c, jr_050_47bf

    ld h, e
    add b
    rst $08
    add b
    rst $18
    inc bc
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    add b
    rst $38
    ld h, c
    ld a, a
    ld e, $1e
    and h
    sbc $03
    ret nz

    ld b, b
    ret nz

    nop
    jp nz, $a981

    push af
    ld c, $80
    add b
    ld b, c
    pop bc
    ld b, [hl]
    add $98
    sbc c
    ld h, b
    rst $20
    add c
    adc a
    ld [bc], a
    ccf
    nop
    ld b, h
    rst $38
    nop
    ldh [rNR42], a
    rrca
    rst $38
    ld [bc], a
    cp $01
    rst $38
    ld hl, sp-$01
    ld d, a

jr_050_47b9:
    rst $18
    ldh [rIE], a
    nop
    rst $38
    add e

jr_050_47bf:
    ld a, a
    call c, $cbbf
    cp e
    ld c, b
    cp b
    ret z

    jr c, jr_050_47b9

    ld d, b
    ld [hl], b
    sub b
    ldh a, [rSVBK]
    adc h

jr_050_47cf:
    db $fc
    ld [bc], a
    ld a, $43
    ld bc, $09ff
    ld sp, $c2ff
    cp $0e
    cp $74
    db $fc
    adc b
    ld hl, sp-$5d
    nop
    jr z, jr_050_4859

    add hl, bc

jr_050_47e5:
    ld c, $0e
    ld h, c
    ld [hl], a
    add [hl]
    cp [hl]
    jr jr_050_47e5

    jr nz, jr_050_47cf

    add e
    and c
    rlca
    ret nz

    ret nz

    jr c, @-$06

    inc b
    db $fc
    ld hl, sp-$08
    ld h, e
    inc de
    rrca
    rrca
    pop af
    cp $00
    rst $38
    ld bc, $1efe
    rst $38
    db $e3
    db $fc
    inc bc
    rst $38
    add e
    db $fc
    ld a, a
    ld a, b
    rlca
    rlca
    db $ec
    ld c, c
    add hl, de
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    cp $06
    ld hl, sp+$18
    inc a
    db $fc
    cp $02
    db $fc
    inc e
    ldh [$e0], a
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp-$38
    jr nc, jr_050_485d

    rst $18
    nop
    ld h, c
    ld b, $01
    ld bc, $0302
    inc b
    ld b, $0b
    add h
    nop
    dec sp
    ld de, $ff60
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    ld bc, $017f
    cp a
    add c
    rst $18
    jp Jump_050_69ff


    db $fd
    add e
    nop
    and d
    ld [hl], e
    ld bc, $0606
    ld b, h
    rlca
    dec b
    inc c

jr_050_4859:
    inc b
    rlca
    inc b
    inc bc

jr_050_485d:
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $c8d7
    dec b
    inc bc
    inc bc
    ld [$000c], sp
    ld e, $43
    rla
    rra
    dec b
    inc bc
    rrca
    add hl, bc
    rrca
    inc b
    rlca
    adc c
    and l
    ld b, $d3
    rst $18
    jp nc, $d4df

    ld e, a
    ret c

    adc h
    nop
    ld [hl], a
    add hl, bc
    or h
    rst $38
    xor c
    rst $38
    ld l, c
    ld a, a
    ld l, d
    ld a, a
    ld h, b
    ld a, a
    add h
    nop
    adc [hl]
    nop
    ld e, a
    add h
    nop
    sub h
    inc c
    ld a, a
    inc bc
    ld a, a
    rlca
    cp [hl]
    add l
    db $fd
    ret


Jump_050_48a2:
    ld sp, hl
    ret nz

    ld hl, sp+$10
    ldh a, [$a9]
    ld bc, $01be
    ld d, a
    rst $18
    and h
    ld bc, $0416
    ld a, [hl]
    ret c

    cp b
    ret z

    cp b
    add e
    ld bc, $8b5c
    ld bc, $1790
    pop bc
    pop bc
    inc bc
    ld [bc], a
    rst $00
    call nz, $f83f
    rlca
    db $fd
    cp $ff
    ld h, a
    ld a, h
    adc e
    db $fd
    scf
    rst $38
    pop bc
    cp $03
    rst $38
    inc e
    db $fc
    or l
    ld bc, $c3be
    ld bc, $439d
    ret nz

    ld b, b
    rrca
    add b
    add b
    ldh a, [$f8]
    ld hl, sp+$08
    ldh [$30], a
    add b
    add b
    ldh a, [$f0]
    ld hl, sp+$08
    ldh a, [$f8]
    ld l, l
    rst $38
    db $ec
    sub c
    ld de, $0606
    add hl, bc
    add hl, bc

Call_050_48f8:
    ld a, c
    ld a, c
    sub [hl]
    sbc a
    ld h, b
    ld a, a
    jr nc, jr_050_493f

Call_050_4900:
    add hl, hl
    cpl
    ld h, $26
    jr jr_050_491e

    ld l, a
    ld [bc], a
    inc bc
    inc bc
    inc b
    adc $80
    ldh [$37], a
    rlca
    rrca
    rra
    ld sp, $403f
    ld a, a
    ld b, b
    cp a
    ret nz

    sbc [hl]
    pop hl
    add c
    rst $38
    ld b, c

jr_050_491e:
    ld a, a
    daa
    ccf
    dec e
    dec e
    ld c, $0e
    jr nc, @+$32

    ld b, b
    ld b, b
    ld e, h
    ld e, b
    daa
    inc a
    dec sp
    cpl
    rra
    ld d, $0f
    ld [$0e0f], sp
    ld bc, $0701
    rlca
    ld a, [de]
    rra
    ld h, h
    ld a, a
    adc b
    rst $38

jr_050_493f:
    inc de
    db $fc
    rla
    ldh a, [rNR43]
    pop hl
    ld [c], a
    pop hl
    ld b, l
    ld b, e
    ld b, b
    ld bc, $4067
    ld b, e
    ccf
    jr nz, @+$45

    rra
    db $10
    dec c
    rrca
    ld [$3e37], sp
    pop bc
    rst $38
    ld d, b
    cpl
    nop
    ld c, a
    adc c
    adc a
    ld a, [hl]
    ld a, [hl]
    ld h, l
    rra
    inc a
    ld a, h
    ld a, [c]
    adc [hl]
    pop af
    rrca
    db $e3
    sbc [hl]
    pop bc
    ld a, [hl]
    ld c, [hl]
    rst $38
    sbc a
    ld h, c
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$2e], a
    pop af
    or c
    rst $38
    ld l, [hl]
    ld l, [hl]
    jr z, @+$2a

    jr jr_050_499b

    db $10
    rra
    ld b, a
    ld hl, sp+$0f
    inc bc
    ldh a, [$1f]
    di
    sbc a
    inc hl
    rst $38
    inc bc
    ld a, a
    rst $38
    ld e, $ff
    jp nz, Jump_050_48a2

    rst $38
    nop
    inc bc
    add b
    ld a, a

jr_050_499b:
    ret nz

    ccf
    ld b, e
    ldh [$1f], a
    ld bc, $0ff0
    ld b, e
    ldh a, [$1f]
    dec c
    ld hl, sp+$0f
    db $fc
    adc a
    ld a, c
    cp $58
    db $db
    sub b

jr_050_49b0:
    sub c
    inc de
    inc de
    inc c
    inc c
    ld h, l
    ld a, [bc]
    ld h, b
    ldh [$f8], a
    jr jr_050_49b0

    inc c
    ld a, [c]
    ld c, $e0
    rra
    ld bc, $ff44
    add c
    inc b
    ld [bc], a
    cp $06
    cp $19
    ld c, b
    rst $38
    nop
    dec e
    ld hl, $1eff
    cp $08
    ld hl, sp+$10
    ldh a, [$7c]
    db $fc
    di
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    inc bc
    rst $38
    db $10
    db $fc
    db $d3
    rst $38
    ld a, b

jr_050_49e8:
    rst $38
    ld b, a
    rst $00
    add b
    add b
    ld b, e
    ld b, b
    ret nz

    ld [bc], a
    inc hl
    db $e3
    inc a
    ld b, h
    rst $38
    db $10
    dec c
    ld de, $16ff
    cp $38
    ld hl, sp+$30
    ldh a, [$88]
    ld a, b
    ret z

    jr c, @+$0a

    ret z

    and e
    rst $18
    ld a, h
    inc hl
    add b
    jp nz, $ab81

    nop

jr_050_4a0f:
    xor h
    dec c
    jr nz, jr_050_4a33

    ldh [$e0], a
    jr jr_050_4a0f

    inc h
    db $e4
    sbc b
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$a5], a
    nop
    cp b
    jp $0384


    and b
    jr nz, jr_050_49e8

    ld b, b
    push de
    xor l
    add a
    nop
    ret nc

    dec c
    rra
    rra
    inc c
    inc c

jr_050_4a33:
    db $10
    db $10
    ld h, $20
    ccf
    inc h
    inc sp
    ld l, $1f
    inc d
    add e
    ld bc, $010c
    rlca
    ld b, $85
    nop
    db $ec
    add hl, bc
    ld l, h
    ld a, a
    sub b
    rst $38
    daa
    ld hl, sp+$56
    pop hl
    ld b, [hl]
    pop bc
    ld b, a
    add e
    add b
    ld bc, $80c7
    ld b, e
    ld a, a
    ld b, b
    add e
    ld bc, $0108
    rrca
    ld [$0185], sp
    jr nc, jr_050_4a6d

    adc $f1
    pop hl
    rst $38
    ld e, [hl]
    ld a, a
    ld hl, $1e3f

jr_050_4a6d:
    rra
    adc d
    ld bc, $0340
    ccf
    db $e3
    rst $38
    rst $38
    adc e
    ld bc, $8461
    ld bc, $656b
    dec b
    ld a, [bc]
    inc b
    inc d
    dec bc
    ld a, [bc]
    inc b
    ld h, e
    dec bc
    cp h
    sbc b
    rst $20
    cp h
    ld [hl], e
    ld a, [hl]
    add hl, de
    rra
    rla
    ld e, $0b
    inc c
    add e
    nop
    cp b
    and e
    ld bc, $43be
    inc b
    rlca
    inc bc
    ld [$090f], sp
    rrca
    and e
    ld [bc], a
    jr jr_050_4aa7

    inc b
    rlca
    ld [bc], a

jr_050_4aa7:
    inc bc
    xor e

jr_050_4aa9:
    ld [bc], a
    ld a, [hl+]
    ld d, $9f
    rst $38
    jr nz, @+$01

    jr z, jr_050_4aa9

    ld d, b
    rst $28
    di
    rst $28
    inc a
    and h
    ld e, e
    rst $10
    ld e, $9a
    daa
    or l
    rra
    ld hl, sp-$01
    ldh [$7f], a
    add [hl]
    ld bc, $0205
    rrca
    ld [$8801], sp
    ld bc, $0ca1
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$1a
    cp $01
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    ret nz

    add l
    ld bc, $055d
    rst $38
    inc bc
    ld a, a
    adc h
    rst $38
    ldh a, [$85]
    ld [bc], a
    and c
    ld [bc], a
    ccf
    ldh [$3f], a
    add l
    ld [bc], a
    xor h
    ld bc, $8080
    add l
    ld bc, $09be
    ld b, b
    ret nz

    add [hl]
    add [hl]
    ld c, e
    ret


    cpl
    jp hl


    ld sp, $45f7
    ld de, $43ff
    ld [de], a
    cp $01
    inc d
    db $fc
    add e
    ld bc, $0481
    ld b, b
    or b
    or d
    ld c, h
    ld c, b
    add [hl]
    ld bc, $8ddd
    nop
    ldh [$89], a
    ld [bc], a
    ld a, $01
    dec e
    rra
    add l
    nop
    jp c, $0285

    add b
    nop
    adc [hl]
    adc b
    ld [bc], a
    add a
    rst $38
    db $ec
    ld l, $08
    ld bc, $0602
    nop
    ld [$1301], sp
    inc de
    rla
    ld b, e
    daa
    cpl
    ld bc, $3f2f
    ld b, a
    ld c, a
    ld a, a
    nop
    cpl
    ld b, h
    ccf
    daa
    ld a, [bc]
    inc de
    rra
    ld [de], a
    rra
    add hl, bc
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $a7d4
    db $10
    ld bc, $0200
    ld [bc], a
    dec b
    inc b
    dec bc
    ld [$1017], sp
    dec d
    db $10
    ld a, [hl+]
    jr nz, jr_050_4b97

    jr nz, jr_050_4b83

    ld b, [hl]
    ld b, b
    ld e, a
    inc d
    ld a, a
    ld b, b
    ccf
    jr nz, @+$31

    jr nz, jr_050_4b8e

    db $10
    ccf
    add hl, sp
    add $c6
    ld bc, $0001
    pop af
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, [c]
    ld b, e
    rst $38
    pop hl
    ld c, b
    rst $38
    ret nz

jr_050_4b83:
    ld b, e
    ldh [rIE], a
    ld de, $fff0
    ld e, b
    rst $38
    xor [hl]
    rst $38
    ld d, l

jr_050_4b8e:
    rst $38
    db $eb
    rst $38
    inc a
    rst $38
    add b

jr_050_4b94:
    rst $38
    ld h, b
    ld a, a

jr_050_4b97:
    rra
    rra
    ld l, c
    add hl, bc
    ld b, $06
    rra
    add hl, de
    ld a, [hl]
    ld h, d
    cp [hl]
    add d
    cp $02
    ld b, l
    db $fc
    inc b
    rlca
    ld a, h
    inc b
    cp [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    cp $02
    ld b, [hl]
    rst $38
    ld bc, $0312
    xor $1e
    ld [c], a
    jr nz, jr_050_4b94

    ld e, c
    reti


    sbc c
    ld [hl+], a
    ld [hl+], a
    sbc [hl]
    sbc h
    ld d, l
    ret nz

    dec hl
    ldh [$1f], a

Call_050_4bc7:
    ldh a, [rSCX]
    rrca
    ld sp, hl
    dec b
    rlca
    db $fc
    add a
    db $fc
    add e
    db $fc
    ld b, l
    ld b, e
    cp $13
    ld b, c
    cp $43

jr_050_4bd9:
    cp $42
    cp $83
    db $fc
    add a
    db $fd
    ld b, $fe
    ld [$10f8], sp
    ldh a, [$60]
    ldh [$80], a
    add b
    db $ec
    inc hl
    ldh [rNR44], a
    inc bc
    ld bc, $383c
    jp $01c3


    jr jr_050_4bf7

jr_050_4bf7:
    jr jr_050_4bfa

    nop

jr_050_4bfa:
    ld [bc], a
    nop
    ld d, l
    nop
    xor e
    nop
    ld a, [hl]
    ld [hl], c
    adc [hl]
    adc c
    rlca
    inc b
    ld h, a
    ld h, h
    ld h, a
    ld h, b
    adc a
    adc b
    rst $38
    ld [hl], c
    rst $38
    ld b, $ff
    ld [$ff44], sp
    db $10
    ld c, $20
    ld a, a
    jr nz, jr_050_4bd9

    jr nz, jr_050_4c9b

    ld h, b
    sbc [hl]
    sub b
    rra
    db $10
    rrca
    ld [$0607], sp
    cp a
    db $dd
    db $10
    ld b, $06
    add hl, de
    dec de
    jr nz, jr_050_4c5d

    ld b, b
    ld a, a
    add a

jr_050_4c31:
    rst $38
    ld c, b
    ld a, b
    jr nc, jr_050_4c66

    sub b
    sub b
    ret nc

    ld [hl+], a
    ld d, b
    dec b
    and b
    jr nz, jr_050_4c9f

    jr nz, jr_050_4c31

    db $10
    ld b, e
    ld [hl], b
    sub b
    ld bc, $10f0
    ld b, e
    ldh [rNR41], a
    rla
    ret nz

    ld b, b
    ldh a, [$f0]
    call z, $f30c
    inc bc
    ld a, [$f500]
    nop
    db $eb
    nop
    rst $30
    nop
    db $eb

jr_050_4c5d:
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    ld b, h
    rst $38

jr_050_4c66:
    nop
    ld [bc], a
    pop bc
    ld a, $3e
    rst $18
    ld bc, $c539
    cp [hl]
    inc bc
    and b
    ldh [rLCDC], a
    ld b, b
    sbc d
    ld bc, $0426
    inc bc
    dec c
    dec c
    di
    pop af
    ld b, e
    rst $38
    ld bc, $fe01
    ld [bc], a
    add l
    nop
    adc $ad
    ld bc, $8972
    nop
    ldh a, [rTMA]
    ld c, $fa
    dec b
    db $fc
    add a
    db $fc
    adc e
    ld b, h
    ld hl, sp+$4f
    nop
    ld d, a
    ld b, [hl]

jr_050_4c9b:
    ldh a, [$5f]
    ld [bc], a
    sbc a

jr_050_4c9f:
    ldh a, [$8f]
    ld b, h
    ld hl, sp+$0f
    ld [$f417], sp
    ld h, a
    db $e4
    add e
    add d
    ld bc, $0001
    add h
    ld bc, $044f
    cp [hl]
    cp l
    rst $08
    jp $853f


    ld bc, $05d3
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    add h
    ld bc, $074d
    rst $10
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$08
    add a
    ld bc, $05b6
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nz

    ret nz

    adc b
    ld bc, $04b0
    and b
    ldh [$60], a
    ret nz

    ld b, b
    ld b, a
    ldh [rNR41], a
    ld bc, $40c0
    rst $00
    ld bc, $03fd
    sbc a
    sbc l
    ld d, l
    pop bc
    add h
    rst $38
    rlca
    ld hl, sp+$0f
    ld sp, hl
    rlca
    db $fd
    add a
    db $fd
    add d
    ld b, [hl]
    cp $43
    inc bc
    ld b, c
    rst $38
    ld b, e
    rst $38
    add e
    ld bc, $890c
    ld bc, $0940
    pop bc
    ret nz

    ld a, d
    jr c, @+$01

    ld b, $7f
    ld bc, $007f
    ld b, e
    cp a
    add b
    ld bc, $80ff
    ld b, e
    ld a, a
    nop
    inc b
    rst $38
    nop
    rst $18
    nop
    xor a
    add h
    add e
    dec c
    push de
    nop
    ld_long $ff00, a
    pop bc
    ld a, [hl]
    ld a, $f0
    db $10
    ldh a, [$90]
    ldh a, [$50]
    ld b, e
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld b, a
    ld hl, sp+$08
    ld [bc], a
    ldh a, [rNR10]
    ld [hl], b
    add [hl]
    ld [bc], a
    dec [hl]
    add l
    nop
    ldh [rIF], a
    and $1e
    db $e4
    ld [hl+], a
    and $41
    cp $a1
    inc a
    ld [hl+], a
    xor e
    nop
    ld c, $71
    db $76
    adc c
    ld b, e
    sbc e
    inc b
    dec b
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld [hl], c
    rst $38
    ld l, e
    rla
    ld bc, $1f01
    ld a, $4c
    ld b, e
    sbc a
    adc h
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    adc a
    ld [hl], e
    ld a, a
    cpl
    dec l
    ccf
    jr nz, @+$21

    jr @+$09

    ld b, $67
    dec bc
    rlca
    rlca
    ld a, [bc]
    ld [$101d], sp
    rrca
    inc c
    dec bc
    ld [$0707], sp
    ld a, e
    dec c
    rra
    rra
    ccf
    ld [hl+], a
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    rst $30
    adc b
    rst $08
    ld sp, $c33f
    ld b, h
    rst $38
    nop
    ld [$c01f], sp
    rst $38
    ld e, a
    ld a, a
    ld a, a
    ld b, b
    rst $38
    add b
    ld b, h
    rst $38
    nop
    ldh [rNR52], a
    ldh [rIF], a
    rrca
    rra
    inc e
    cp $e1
    ld e, $02
    cp [hl]
    ld [bc], a
    ld a, h
    ld [bc], a
    db $fc
    inc b
    db $fc
    ld a, $c6
    push bc
    rlca
    inc b
    rrca
    inc c
    rrca
    ld a, [bc]
    inc de
    ld [bc], a
    inc de
    ld de, $1017
    rrca
    ld [$0407], sp
    rlca
    rlca
    dec bc
    add hl, bc
    add e
    push hl
    ld de, $3878
    sbc [hl]
    add [hl]
    ld a, a
    ld sp, $48cf
    sub a
    inc d
    sub a
    sub [hl]
    or a
    or a
    and a
    or a
    rst $38
    or [hl]
    ld b, h
    rst $38
    nop
    ld [bc], a
    add h
    rst $38
    ld hl, sp+$48
    rst $38
    nop
    jr jr_050_4dfc

    rst $38
    ld sp, $c3fc
    db $fc
    nop
    ldh a, [$08]
    ld b, b

jr_050_4dfc:
    or b
    nop
    ld b, b
    nop
    ld b, c
    ld bc, $0342
    ld b, h
    rlca
    add hl, hl
    rlca
    jp hl


    rst $08
    ld [hl-], a
    ld b, h
    rst $38
    ld [bc], a
    inc c
    ld bc, $80ff
    rst $38
    ld h, b
    rst $38
    inc e

jr_050_4e16:
    rst $38
    db $e3
    db $fc
    inc c
    ldh a, [$f0]
    xor c
    nop
    inc b
    ld b, l
    ret nz

    ld b, b
    db $10
    ldh a, [$30]

jr_050_4e25:
    rst $28
    ccf
    db $e4

jr_050_4e28:
    inc a
    db $ed
    inc a

jr_050_4e2b:
    ld sp, hl
    jr jr_050_4e28

    jr jr_050_4e25

    db $10
    ld [c], a
    jr nz, jr_050_4e2b

    add l
    nop
    ld l, l
    dec c
    ld bc, $01ff
    ld a, [hl]
    add e
    inc a
    ld b, a
    ld [$3c3f], sp
    ld e, a
    ld b, a
    jp Jump_050_43cf


    add b
    rst $38
    ld [de], a
    ldh [$5f], a
    ld d, b
    ld c, a
    ld [$04f7], sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    inc sp
    db $fc
    db $fc
    ld [hl], a
    add hl, bc
    ret nz

    ret nz

    and b
    and b
    ldh [rNR41], a
    ldh [$60], a
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    ld bc, $8080
    push bc
    ld [$c003], a
    ret nz

    jr nz, jr_050_4e16

    jp $09f2


    jr nc, jr_050_4eab

    xor [hl]
    xor [hl]
    rst $00
    db $fd
    rst $08
    ld a, c
    rst $38
    ld h, c
    ld b, e
    cp $42
    dec b
    db $fc
    add h
    ld hl, sp-$78
    ldh a, [$30]
    res 6, b
    adc c
    nop
    db $10
    dec b
    ld [hl], c
    ld a, a
    cpl
    cpl
    jr jr_050_4eb1

    call nz, $2700
    inc c
    ld b, $19
    add hl, de
    ld d, $14
    cpl
    jr z, @+$41

    jr nz, jr_050_4ec6

    db $10
    rrca
    ld c, $cd

jr_050_4eab:
    nop
    dec c
    adc c
    nop
    ld h, b
    dec b

jr_050_4eb1:
    ld b, b
    ld a, a
    ld a, c
    ld a, a
    add [hl]
    add a
    jp $9700


    inc de
    jr z, jr_050_4eec

    jp nc, Jump_050_79db

    ld a, c
    rst $38
    ld c, [hl]
    rst $38
    jr nc, @+$01

jr_050_4ec6:
    rrca
    db $fc
    ld [bc], a
    db $fc
    db $e4
    inc e
    ld e, $06
    dec b
    add a
    nop
    adc b
    add [hl]
    nop
    or b
    ld a, [de]
    call nz, $f8ff
    ld a, a
    ldh a, [rIE]
    pop af
    ccf
    pop hl
    ccf
    and c
    ld a, a
    jp nz, Jump_050_427f

    db $fc
    add a
    db $fc
    ld [$38f0], sp
    ret nz

jr_050_4eec:
    ldh a, [rP1]
    ld b, b
    db $ec
    inc a
    ld b, e
    ld [c], a
    ld a, $0f
    db $f4
    inc e
    ld hl, sp+$18
    or $1e
    pop af
    rra
    rst $38
    ld c, a
    ld sp, hl
    add c
    db $fc
    add b
    rst $38
    nop
    ld b, e
    ld a, a
    add b
    dec d
    ccf
    ld b, b
    rrca
    ld a, $3f
    ld e, a
    ret nz

    ret nz

    jr nc, @+$32

    ld c, b
    ld [$04ac], sp
    db $fc
    inc c
    db $f4
    inc b
    add sp, $28
    ldh a, [$f0]
    add l
    nop
    add b
    dec d
    adc $cd
    ld a, a
    ld [hl], h
    rst $08
    call z, $aaff
    rst $38
    and [hl]
    ld a, a
    dec d
    ld a, a
    ld b, d
    ccf
    jr nz, jr_050_4f73

    ld hl, $131f
    inc c
    inc c
    ld h, e
    add [hl]
    nop
    ret nc

    inc b
    jr z, @+$09

    add sp, -$31
    ld sp, $ff46
    ld bc, $8006
    rst $38
    ld [hl], b
    rst $38
    ccf
    jp $a3c2


    ld bc, $615e
    dec bc
    ld a, [hl]
    adc a
    rst $38
    ld bc, $40ff
    res 0, b
    add l
    nop
    rlc b
    add $00
    ld [hl], h
    add e
    ld bc, $0633
    add b
    ccf
    ld bc, $a1ff
    cp $fe
    ld h, e
    add hl, bc
    sbc b
    sbc b
    db $e4
    db $ec

jr_050_4f73:
    call nz, $f27c
    ld a, [hl]
    cp $46
    jp $0395


    cp $82
    db $fc
    inc a
    adc e
    ld bc, $8584
    nop
    and b
    add hl, bc
    rst $18
    ld c, b
    cp a
    add h
    cp a
    add [hl]
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    ld h, e
    rrca
    ld [$2618], sp
    ld h, $07
    ld b, c
    ld b, e
    ld b, b
    ld [hl], e
    ld b, b
    add hl, sp
    jr nz, jr_050_4fde

    jr nz, jr_050_4fc1

    db $10
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    ld [bc], a
    ccf
    ld a, [hl]
    ccf
    ld b, h
    add b
    sbc a
    dec b
    ld a, a
    ld h, b
    rra
    jr jr_050_4fbd

    rlca
    ld [hl+], a
    ld bc, $0710
    rrca

jr_050_4fbd:
    ld [$3c1b], sp
    ccf

jr_050_4fc1:
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, l
    ld b, d
    ld a, [hl-]
    dec [hl]
    dec c
    ld c, $03
    inc bc
    ld h, e
    dec c
    ld bc, $0301
    inc bc
    rlca
    dec c
    ld [bc], a
    ld de, $1013
    rrca
    ld [$0707], sp
    ld [hl], a
    dec bc

jr_050_4fde:
    jr nz, jr_050_5050

    ldh a, [$88]
    ld hl, sp+$08
    ld hl, sp+$48
    ldh a, [$50]
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    rlca
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $ff45
    nop
    ldh [$35], a
    cp $01
    ld a, [hl]
    add d
    cp b
    ld b, h
    rst $38
    inc b
    rst $38
    add h
    rst $38
    add d
    ld a, a
    add c
    rst $38
    ld b, c
    ld a, a
    ret nz

    cp a
    ld b, b
    ld a, a
    add d
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add c
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    add b
    sbc h
    add b
    call z, $20c0
    jr nz, jr_050_5050

    jr z, jr_050_503a

    db $10
    jr nz, jr_050_504d

    ld hl, $1e21
    ld e, $ec
    inc hl
    dec bc
    ret nz

    ret nz

    ldh a, [$30]
    rst $38
    rrca

jr_050_503a:
    rst $38
    add b
    ld a, h
    ld h, e
    rst $38
    jr @+$47

    rst $38
    nop
    rlca
    ccf

jr_050_5045:
    ret nz

    rra
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    ld b, h

jr_050_504d:
    rst $38
    ld [bc], a
    inc de

jr_050_5050:
    nop
    rst $38
    ld [$90ff], sp
    rst $38
    ld h, b
    rst $38
    nop
    adc a
    nop
    sbc [hl]
    ld bc, $01f9
    ld a, b
    nop
    ld [hl], b
    nop
    jr nc, jr_050_50c7

    inc bc
    ldh [$e3], a
    rra
    rra
    db $ec
    ld hl, $00c3
    dec hl
    and e
    nop
    db $76
    inc bc
    rst $38
    ldh [$1f], a
    ldh [$57], a
    rst $38
    nop
    ld b, e
    db $fc
    nop
    dec b
    rst $38
    nop
    db $fc
    jr nc, @+$7a

    ret nz

    ld b, e
    jr c, jr_050_5087

jr_050_5087:
    inc bc
    db $fc
    add b
    ld [hl], b
    ld [hl], b
    ld h, l
    dec b
    add c
    jp $2222


    inc e
    inc e
    ld h, l
    rlca
    add hl, sp
    add hl, sp
    ld c, a
    ld b, [hl]
    ld c, a
    ld b, e
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_050_5045

    nop
    ld a, b
    and l
    nop
    ld a, d
    ld bc, $80ff
    ld c, b
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    inc bc
    ld b, e
    db $fc
    inc b
    ld b, e
    ld sp, hl
    add hl, bc
    inc b
    ei
    dec bc
    rst $38
    inc e
    rst $38
    adc c
    db $ed
    dec bc
    inc b
    rst $38
    dec de
    cp $22
    cp $42

jr_050_50c7:
    cp $02
    ld a, d
    ld [bc], a
    ld [hl], d
    ld [hl+], a
    ld [bc], a
    inc hl
    inc b
    dec b
    ld [$3204], sp
    ld [bc], a
    jp nz, $89c2

    db $dd
    inc bc
    ldh [$e0], a
    ldh a, [rNR10]
    ld b, l
    ld hl, sp+$08
    nop
    ld hl, sp-$58
    nop
    inc de
    ld bc, $20e0
    ld b, e
    ret nz

    ld b, b

jr_050_50ec:
    inc bc
    ldh a, [$f0]
    ld hl, sp-$78
    add h
    sub l
    ld [bc], a
    ld [hl], b
    add b
    add b
    add l
    and a
    inc bc
    ldh a, [rNR10]
    db $fc
    inc c
    and l
    ld bc, $038c
    ldh a, [$30]
    ret nz

    ld b, b
    add l

jr_050_5107:
    and a
    ld bc, $8080
    sbc a
    ld bc, $0f1d
    rlca
    rrca
    inc bc
    ld de, $1112
    rrca
    ld [$0607], sp
    ld bc, $ff01
    add c
    ld a, [hl]
    ld bc, $008b
    and h
    dec b
    rst $38
    ld hl, sp-$09
    ld hl, sp+$6f
    ldh a, [$83]
    ld bc, $0406
    sbc a
    nop
    ld hl, sp+$00
    ld a, b
    add [hl]
    ld bc, $0b5f
    db $ec
    ld [hl], b
    sbc b
    adc b
    sbc h
    add h
    cp $80
    ld a, h
    ld b, b
    jr nc, jr_050_5172

    adc a
    ld bc, $0972
    ld [bc], a
    rlca
    ld bc, $0b09
    add hl, bc
    ld b, $09
    rlca
    inc b
    add e
    nop
    inc a
    add e
    cp a
    inc bc
    rst $38
    ldh a, [rIE]
    ld h, b
    adc e
    cp a
    dec bc
    rst $18
    jr c, jr_050_50ec

    ld b, h
    call z, $fe44
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $20
    adc e
    nop
    jr nz, @+$05

    dec c
    dec e
    ld e, $23
    ld b, e

jr_050_5172:
    ccf
    jr nz, @+$07

    ld a, [de]
    dec d
    dec c
    ld a, [bc]
    ld b, $05
    and h
    ld [bc], a
    jr nz, jr_050_5107

    ld bc, $439f
    db $fd
    dec b
    ld [$0ef7], sp
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ld h, b
    ld a, a
    add l
    ld bc, $069b
    ld bc, $06fe
    cp $0a
    cp $12
    adc l
    ld bc, $85c2
    ld [bc], a
    nop
    adc h
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    jr c, @-$1e

    ld h, b
    add h
    ld bc, $02ee
    and b
    ld b, b
    ld b, b
    ld h, c
    adc d
    nop
    sub b
    inc b
    add b
    rst $38
    ld b, $ff
    add b
    adc d
    nop
    ldh a, [rDIV]
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, e
    ld b, e
    ld bc, $1500
    ld [de], a
    nop
    dec d
    nop
    ccf
    nop
    ld a, $01
    ld a, h
    inc bc
    ld a, l
    ld [bc], a
    ld [$f515], a
    ld a, [bc]
    ld a, [$f405]
    dec bc
    ld a, h
    inc bc
    ld b, l
    ld a, $01
    ld [$001f], sp
    rlca
    ld [$040b], sp
    dec b
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld bc, $1d11
    dec e
    daa
    inc hl
    ld l, $21
    inc e
    dec de
    jr z, jr_050_521d

    dec a
    ld [hl+], a
    ld a, [de]
    dec e
    rrca
    add hl, bc
    ld b, $06
    db $ec
    dec h
    ldh [rBGP], a
    ld [$1900], sp
    nop
    dec de
    inc b
    ld [hl], $08
    ld a, d
    inc b
    or $08
    cp h
    nop
    ld [hl], b
    ld [$1028], sp
    ld [hl], h
    ld [$14e8], sp
    ld [hl], b
    adc b
    jr z, @-$2e

    inc d

jr_050_521d:
    add sp, -$58
    ld d, h
    ld b, h
    cp b
    xor d
    ld d, h
    call nz, $093a
    or $06
    ld sp, hl
    inc bc
    db $fc
    dec c
    ld a, [c]
    ld a, [de]
    push hl
    db $f4
    dec bc
    add c
    ld h, c
    ld b, e
    jp nz, $2721

    jr nz, jr_050_5262

    ld hl, sp+$18
    ld hl, sp-$6a
    ld e, $f1
    inc c
    rst $38
    sub d
    ld h, e
    ld d, e
    and e
    db $fc
    ld a, h
    add b
    add b
    db $ec
    add hl, hl
    nop
    ld b, b
    ld h, h
    ld b, e
    ret nz

    nop
    inc hl
    ld bc, $4fe0
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    dec b
    add hl, bc
    rrca
    ld [$1008], sp
    db $10

jr_050_5262:
    jr jr_050_5278

    ld a, $32
    cpl
    ccf
    jr nz, jr_050_529d

    ld de, $9e13
    ld e, $64
    and h
    ld b, e
    or e
    cp $01
    ld l, c
    sbc l
    inc bc
    db $e3

jr_050_5278:
    add b
    nop
    call nz, Call_050_7e84
    ld b, d
    ld a, [de]
    ld h, $30
    ld e, $f1
    ld e, $f3
    ld e, $e2
    ccf
    call nz, $3cff
    ccf
    ld d, $1f
    dec l
    inc sp
    ld a, [hl]
    ld b, c
    ld a, l
    ld b, e
    cp a
    jp $e79b


jr_050_5298:
    add a
    rst $38
    ld b, a
    ld a, a
    inc hl

jr_050_529d:
    ccf
    ld a, [hl-]
    ld a, a
    ld a, a
    ld c, a
    ld a, a
    ld b, a
    inc a
    ld a, $8e
    nop
    ld c, $84
    rst $18
    ldh [$37], a
    rla
    jr jr_050_52ef

    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $00
    rst $38
    ld d, [hl]
    add c
    adc a
    nop
    ld d, a
    nop
    or $f9
    add $cf
    add a
    add c
    rlca
    nop
    rlca
    ld [$332f], sp
    ld sp, hl
    rst $38
    ld bc, $83ff
    rst $38
    ld a, a
    ld a, h
    ld h, c
    nop
    ld [hl], e
    add b
    rst $38
    add b
    rra
    jr nz, jr_050_5298

    jp $7cf8


    ld [hl], b
    jr nc, jr_050_530f

    rra
    dec de
    rlca
    dec a
    inc bc
    ld b, e
    rst $38
    ld bc, $7d02
    add e
    nop
    ld b, h
    rst $38
    nop

jr_050_52ef:
    ld [bc], a
    ret nz

    rst $38
    db $fc
    ld a, [hl+]
    rst $38
    rlca
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    ret nz

    ldh [$63], a
    dec c

Call_050_5300:
    inc e
    inc e
    ld [hl+], a
    ld l, $41
    ld a, a
    ld b, c
    ld b, a
    ld b, a
    ld b, c
    ld l, [hl]
    ld [hl], d
    ld l, h
    sbc h
    ld b, e

jr_050_530f:
    add sp, $18
    inc b

jr_050_5312:
    ret z

    jr c, jr_050_531d

    ld hl, sp-$18
    inc h
    ld hl, sp+$04
    rst $38
    rst $38
    inc a

jr_050_531d:
    rst $38
    jr jr_050_5364

    rst $38
    ld [$901f], sp
    rst $38
    call c, $da7f
    inc sp
    push af
    or c
    ei
    sbc c
    call $fea4
    inc b
    ld sp, hl
    inc b
    jp c, $f528

    jr nc, jr_050_5312

    ld h, c
    push de
    pop bc
    dec bc
    inc bc
    rlca
    rrca
    rra
    ccf
    rst $38
    ld sp, hl
    ld b, e
    ld sp, hl
    ldh a, [rSB]
    rst $38
    ld sp, hl
    add h
    jp c, $fc07

    cp $fc
    ld a, a
    cp $3f
    rst $38
    rrca
    add l
    jp hl


    inc bc
    rst $38
    ret nz

    ldh [rP1], a
    sbc [hl]
    nop
    rst $00
    ld [bc], a
    ld bc, $0001
    ld [hl+], a
    ld [bc], a

jr_050_5364:
    nop
    nop
    ld [hl+], a
    inc b
    dec b
    rst $20
    rst $20
    inc e
    db $fc
    ld [bc], a
    cp $43
    ld bc, $1dff
    nop
    rst $38
    jr nc, @+$01

    dec c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    xor d
    push de
    push af
    adc d
    ld a, [$fd85]
    add d
    cp $81
    rst $38
    add b
    cp $c1
    cp $e1
    db $fc
    di
    ld hl, sp-$09
    ld c, d
    ld hl, sp-$01
    rlca
    ld a, a
    ld a, b
    ccf
    ld [hl], c
    ccf
    rst $30
    ld a, a
    rst $08
    ld h, $ff
    inc bc
    rlca
    rrca
    ld bc, $f401
    ld hl, $23ef
    ld b, b

jr_050_53a9:
    rrca
    ld h, b
    jr nz, jr_050_53a9

    inc e
    ld a, [c]
    ld [bc], a
    ld a, [$7c82]
    ld c, h
    ld a, b
    ld c, b
    jr nc, jr_050_53e8

    ret nz

    ret nz

    inc hl
    add b

jr_050_53bc:
    and h
    ld bc, $025c
    ret nz

    ld b, b
    ret nz

    ld b, l
    jr nz, @-$1e

jr_050_53c6:
    ld c, e
    db $10
    ldh a, [rTIMA]
    jr nc, jr_050_53bc

    jr z, jr_050_53c6

    inc h
    db $fc
    ld b, e
    ld b, d
    cp $08
    add c
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ldh a, [rLY]
    cp $fa
    inc hl
    db $fc
    and h
    ld bc, $004a
    inc a
    ld h, l

jr_050_53e8:
    rst $38
    ld a, c
    dec de
    inc a
    inc e
    ld b, [hl]
    ld [hl-], a
    ld e, l
    ld e, e
    inc e
    add [hl]
    sbc e
    add [hl]
    sub e
    adc [hl]
    adc a
    cp a
    dec d
    adc [hl]
    ld d, a
    ld c, h
    dec sp
    inc a
    ld hl, $103e
    rra
    inc c
    rrca
    inc bc
    inc bc
    ld h, l
    inc bc
    ld bc, $0301
    ld [bc], a
    jp Jump_050_6d80


    ldh [$27], a
    ld bc, $0403
    inc b
    rlca
    ld [$080f], sp
    rlca
    ld [$0f0f], sp
    db $10
    inc de
    nop
    jr nz, jr_050_5444

    ld hl, $4302
    ld b, d
    ld b, d
    ld b, e
    ld b, e
    ld l, e
    ld b, e
    ld d, l
    ld b, e
    dec hl
    jr nz, jr_050_53e8

    and c
    sbc b
    sub a
    adc h
    adc a
    ld a, $31
    rst $38
    ret nz

    ld b, e
    rst $38
    jr nz, jr_050_544f

    ld hl, sp+$27
    xor a
    ld e, h
    ld a, $f9

jr_050_5444:
    db $ec
    db $eb
    rrca
    ld [$0f08], sp
    scf
    inc a
    push bc
    cp $c4

jr_050_544f:
    ccf
    ld b, e
    ld [$e0ff], sp
    ld b, l
    rst $38
    ldh a, [$7f]
    ld h, b
    rst $00
    add b
    sbc a
    add b
    rst $38
    add c
    ld a, h
    ld a, [hl]
    ld h, b
    ldh [$96], a
    sbc e
    db $76
    ld b, h
    dec sp
    ld [hl+], a
    adc h
    ld de, $11dd
    db $e4
    adc c
    ld l, a
    ld [$f51f], a
    ld c, e
    ld a, [hl]
    cpl
    or b
    ccf
    and b
    dec de
    and b
    ld de, $a3a0
    jp nz, $00ff

    rst $30
    adc a
    ld a, [hl]
    rst $38
    ld bc, $3fff
    rst $38
    adc [hl]
    ld a, a
    ldh [$1f], a
    ld d, l
    xor d
    ld [$bf15], a
    ld b, b
    ld a, a
    add b
    rst $28
    db $10
    sbc a
    ld h, b
    ld a, a
    add b
    ld b, e
    rst $38
    nop
    rrca
    ld a, h
    add e
    inc bc
    rst $38
    inc e
    rst $38
    jp hl


    ld l, [hl]
    adc b
    adc a
    add l
    add [hl]
    add h
    add a
    ld bc, $a703
    nop
    ld c, e
    inc c
    nop
    add b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    add b
    ret nz

    ret nz

    and b
    ldh [rNR41], a
    ret nz

    ld b, e
    ld d, b
    ret nc

    ldh [rNR50], a
    ld [hl], b
    ret nz

    ld [hl], b
    sub b
    ld l, b
    ld hl, sp+$48
    ld sp, hl

jr_050_54cd:
    add hl, bc
    or e
    ld a, [c]
    ld b, e
    jp nz, $f1b1

    inc c
    db $fc
    inc bc
    rst $38
    inc hl
    cp $63
    cp [hl]
    or c

jr_050_54dd:
    ld e, a
    call c, $bb3f
    ld c, e
    ret z

    jr c, jr_050_54dd

    ld [$7090], sp
    ret nc

    jr nc, jr_050_5530

    jr nz, jr_050_54cd

    dec bc
    and b
    ld h, b
    ld d, b
    or b
    cp b
    ld c, b
    call nz, Call_050_7804
    add h
    ldh a, [$f8]
    ld a, e
    add hl, de
    ld h, b
    ld a, b
    adc h
    add h
    cp h
    or d
    adc $42
    ld c, a
    pop bc
    sbc a
    ld sp, hl
    rst $28
    pop af
    sub d
    ld a, [hl]
    call z, $f83c
    ld [$10f0], sp
    ld h, b
    ldh [$80], a
    add b
    ld a, e
    inc de
    dec c
    rra
    ld h, $23
    ld e, c
    ld b, a
    sbc c
    cp a
    or l
    adc a
    jp nz, Jump_050_72bf

    sbc a
    ld l, h
    ld e, a
    dec sp
    ld a, a
    ld h, c
    ld e, a
    ld b, e
    jr nc, @+$31

    dec b

jr_050_5530:
    db $10
    rra
    add hl, de
    rla
    ld [$a30f], sp
    cp l
    adc [hl]
    nop
    ld b, d
    ldh [rNR50], a
    jr nz, @-$5d

    and c
    ld h, d
    db $e3
    and d
    ld [c], a
    ld b, e
    jp $c36b


jr_050_5548:
    ld d, l
    jp $a0ab


    scf
    ld hl, $1718
    sbc h
    sbc a
    cp $e1
    sbc l
    ld [c], a

jr_050_5556:
    nop
    rst $38
    ld bc, $0ffe
    db $fc
    rst $28
    add sp, $0e
    add hl, bc
    inc c
    dec bc
    add e
    nop
    add [hl]
    ldh [$29], a
    rla
    inc e
    dec h
    ld a, $c4
    rst $38

jr_050_556d:
    ldh [rNR41], a
    pop bc
    ld d, c
    jp nc, $d552

    ld [hl], l
    add $75
    sub h
    ld l, a
    ld a, [$f94b]
    add hl, bc
    or c
    pop af
    ld a, e
    ld a, [$e69f]
    dec e
    db $e3
    nop
    rst $38
    jr nz, @+$01

    ld a, b
    cp a
    or a
    ld d, a
    ret nc

    jr nc, jr_050_5548

    ld c, b
    adc e
    ld bc, $1b24
    ld [hl], b
    ldh a, [$28]
    jr jr_050_5556

    ld [hl], h
    ld c, [hl]
    jp nz, $829e

    cp a
    ret


    sbc l
    di
    pop bc
    rst $38
    and d
    ld a, [hl]
    sbc h
    ld a, h
    ld [$88f8], sp

jr_050_55ac:
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$a3], a
    nop
    inc [hl]
    jr jr_050_556d

    rst $08
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    add c
    rst $38
    cp a
    ld a, a
    ld d, b
    xor a
    ld [$b315], a
    ld a, [c]
    jp $b1e2


    pop af
    ld l, h
    db $fc
    jp $0186


    add hl, de
    dec bc

jr_050_55d2:
    nop
    jr nz, jr_050_55f6

    jr nz, jr_050_55d9

    ld b, b
    ld b, c

jr_050_55d9:
    ld b, b
    ld b, d
    ld b, b
    ld l, e
    ld b, d
    add e
    nop
    ld l, h
    db $10
    rra
    push af
    ld c, e
    ld a, $ef
    db $10
    rst $38
    nop
    ei
    nop
    pop af
    jr nz, jr_050_55d2

    jp nz, $00ff

    ldh [$a4], a
    nop
    ld d, l

jr_050_55f6:
    add hl, bc
    ldh a, [rNR10]
    ret nc

    jr nc, jr_050_55ac

    ld l, b
    ld hl, sp+$48
    jp hl


    add hl, de
    rst $38
    ld l, e
    rlca
    ld bc, $0301
    inc bc
    ld b, $06
    ld [bc], a
    ld b, $24
    inc c
    dec c
    inc d
    ld e, $16
    ld e, $12
    rra
    ld hl, $203f
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld c, a
    ld b, h
    add b
    add a
    inc b
    rst $08
    add b
    rst $38
    add b
    ld a, a
    call nz, $038b
    rra
    add hl, de
    ld b, $06
    adc e
    or a
    nop
    ld bc, $80c4
    dec bc
    rlca
    rlca
    ld a, $39
    ld a, b
    ld b, a
    ld a, a
    ld b, b
    ccf
    ld hl, $1e1e
    ld l, a
    dec b
    jr @+$3e

    ld h, [hl]
    rst $20
    add c
    add c
    ld [hl], c
    ld bc, $8080
    ld b, l
    ret nz

    ld b, b
    ld c, c
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    inc de
    add b
    add b
    rlca
    rlca
    jr jr_050_567b

    jr nz, @+$41

    ld b, [hl]
    ld a, c
    sbc a
    ld [c], a
    or a
    rst $08
    dec a
    sbc $3f
    call nz, $e51e
    ld b, e
    add b
    rst $38
    rrca
    ld b, b
    rst $38
    ldh [$3f], a
    ret c

    ld e, a
    add a
    add a
    ld bc, $0201
    inc bc
    ld [bc], a

jr_050_567b:
    inc bc
    ld bc, $9001
    rlc h
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_050_56a6

    ld [hl+], a
    stop
    jr jr_050_56ad

    ld [$0c00], sp
    ld [hl+], a
    inc b
    nop
    ld b, $24
    ld [bc], a
    nop
    inc bc
    call Call_050_4900
    ld d, $1f

jr_050_569b:
    rra
    ldh [rIE], a
    nop
    pop af
    nop
    db $e3
    nop
    rst $38
    add b
    ld a, a

jr_050_56a6:
    ret nz

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    add b

jr_050_56ad:
    ld a, a
    db $10
    rst $38
    db $10
    ld c, d
    rst $38
    nop
    rlca
    ldh a, [rIE]
    rra
    rst $38
    jr nz, jr_050_569b

    ret nz

    ret nz

    ld [hl], e
    inc b
    ld bc, $0201
    ld [bc], a
    inc b
    and e
    push hl
    jp $02df


    ld [$1810], sp
    ld h, $10
    nop
    sub b
    dec h
    or b
    ld b, e
    ret nc

    ldh a, [rDIV]
    ldh a, [$f0]
    inc a
    db $fc
    inc bc
    ld b, [hl]
    rst $38
    nop
    dec bc
    ld e, $e5
    ld a, a
    adc b
    cp l
    ld a, [hl]
    rst $28
    dec de
    ld a, a
    sub b
    inc a
    db $d3
    add a
    db $dd
    dec b
    inc bc
    rst $38
    ld a, $fe
    pop de
    rst $18
    ld b, e
    ld de, $011f
    ld c, $0e
    ld l, e
    dec b
    inc e
    inc e
    ld h, e
    ld [hl], e

Call_050_5700:
    add b
    add c
    ld h, e
    or a
    nop
    ld l, [hl]
    ld b, e
    rlca
    inc b
    nop
    ld c, $44
    ld [$e00c], sp
    ld hl, $080e
    rst $08
    ret z

    daa
    db $e4
    rla
    db $f4
    inc de
    di
    ld [$88f8], sp
    ld a, b
    add h
    ld a, h
    inc b
    db $fc
    ld [$0ff8], sp
    rst $38
    inc e
    di
    daa
    ld hl, sp-$0f
    adc $7f
    ld h, b
    rra
    inc e
    inc bc
    inc bc
    or a
    rst $00
    ld bc, $c040
    and l
    ld bc, HeaderTitle
    jr nz, jr_050_575d

    inc hl
    jr nc, jr_050_5785

    ld [hl], b
    ld d, b
    ld bc, $90f0
    ld b, e
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld [bc], a
    cp $02
    ld a, [hl]
    ld b, h
    ld [bc], a
    ld a, $01
    ld a, [hl]
    ld [bc], a
    ld b, e
    db $fc
    inc b
    inc bc
    ld hl, sp+$08
    ldh a, [$30]

jr_050_575d:
    adc c
    ld bc, $051c
    ldh a, [$f0]
    ld a, h
    adc h
    ld a, $c2
    and h
    nop
    ld [hl-], a
    ld [bc], a
    jr @-$1e

    ldh [$91], a
    nop
    ld a, [hl-]
    rlca
    ld bc, $0701
    ld b, $1f
    jr @+$3a

    daa
    adc e
    nop
    inc [hl]
    rlca
    jr nz, @+$01

    ld hl, sp+$3f
    rst $00
    ld b, a
    add c

jr_050_5785:
    add c
    add a
    nop
    cp b
    add a
    ld bc, $4300
    jr c, @+$01

    inc bc
    jr @+$01

    nop
    rst $38
    adc e
    ld bc, $0bc0
    inc c
    db $fc
    rla
    ei
    inc sp
    db $ec
    call c, Call_050_67e3
    ld e, b
    dec sp
    inc h
    and a
    pop hl
    ld bc, $30f0
    adc l
    ld bc, $011c
    ld h, b
    ldh [rSCX], a
    ldh a, [rNR10]
    ld bc, $20e0
    adc b
    sub l
    ld bc, $0020
    ld b, e
    ld b, b
    nop
    ld b, e
    add b
    nop
    nop
    add b
    jp z, $0181

Jump_050_57c5:
    add hl, de
    nop
    add a

jr_050_57c8:
    nop
    add hl, sp
    add d
    sub c
    add h
    sub e
    ld b, e
    jr nz, jr_050_57d1

jr_050_57d1:
    inc b
    jr nz, jr_050_57d4

jr_050_57d4:
    jr nz, jr_050_57d6

jr_050_57d6:
    nop
    xor h
    sub a
    ld b, e
    inc b
    nop
    ld b, [hl]
    ld [$0600], sp
    ret nz

    ret z

    jr nz, jr_050_57c8

    db $10
    db $f4
    nop
    ld b, e
    ld d, b
    nop
    ld [bc], a
    sub b
    nop
    adc b
    call z, $0091
    ld [bc], a
    adc d
    xor e
    ld bc, $0030
    adc h
    ld [bc], a
    inc hl
    add hl, bc
    sbc a
    ldh [$bf], a
    add $3f
    call z, $c03f
    ld e, $e1
    add l
    nop
    xor d
    dec bc
    ld e, $e1
    ld a, a
    add b
    rst $38
    jr @+$01

    inc c
    ld a, a
    add b
    inc a
    jp $0183


    ld [hl], b
    rst $38
    ld a, l
    dec b
    ld bc, $0301
    ld [bc], a
    nop
    inc bc
    ld b, e
    ld b, $04
    ld bc, $0203
    push bc
    adc d
    dec b
    ld b, $06
    ld bc, $0209
    ld b, $85
    adc e
    dec bc
    ld bc, $0601
    rlca
    ld [$100a], sp
    inc de
    inc c
    inc c
    inc bc
    inc bc
    adc a
    cp b
    nop
    nop
    jp nc, $e0ba

    ld a, [hl+]
    ld h, b
    ldh [$f0], a
    db $10
    add hl, sp
    rl a
    inc l
    rra
    db $10
    ccf
    jr nz, @+$21

    jr nz, jr_050_58d5

    ld b, b
    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    and b
    cp [hl]
    or c
    cpl
    ld [hl], b
    db $ec
    ld [c], a
    ld h, b
    ld [hl], b
    ld sp, hl
    sub a
    pop af
    ld de, $09f0
    ld a, c
    sbc c
    ld h, c
    ld h, a
    add h
    add h
    ld bc, $cf88
    dec c
    ld c, $1f
    ld a, a
    ld h, b
    rst $20
    sbc h
    ld e, a
    inc hl
    ld a, $02
    db $fc
    add h
    jr nc, jr_050_58fb

jr_050_5883:
    add a
    db $dd
    ldh [$35], a
    inc bc
    ld b, $0f
    ld [$1807], sp
    rra
    db $10
    ld a, $21
    db $db
    and $fe
    add hl, de
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh a, [$0c]
    db $fc
    ld [bc], a
    or $18
    db $e3
    inc h
    pop hl
    ld h, d
    and e
    and h
    rst $00
    pop af
    nop
    ld b, $c1
    pop bc
    db $e4
    db $e3
    ld h, d
    db $e3
    daa
    and $49
    jp z, $b497

    ld h, b
    ld h, h
    add b
    adc b
    dec bc
    ld a, [bc]
    dec b
    dec b
    ld h, l
    dec c
    ret nz

    ret nz

    ldh [$30], a
    ld hl, sp-$78
    ld a, h
    ld h, h
    ld e, $12
    ld c, $0a
    ld bc, $430f
    dec b
    rlca
    ldh [$30], a
    push af
    rst $30
    ld sp, hl

jr_050_58d5:
    rrca
    ld a, [$f906]
    rlca
    db $fd
    inc bc
    db $fc
    jp $23fc


    ld a, b
    sub a
    inc [hl]
    ld e, e
    jr @+$39

    inc d
    dec sp
    jr c, jr_050_5901

    ld h, b
    ccf
    pop bc
    rst $38
    ld b, $ff
    cp l
    db $fd
    call nz, $3885

jr_050_58f5:
    ld a, [hl-]
    ret nc

    ld a, [c]
    ld de, $00f1

jr_050_58fb:
    ldh [$a0], a
    ld h, b
    ldh [rNR41], a
    ret nz

jr_050_5901:
    jr nz, jr_050_5883

    inc hl
    ld b, b
    ld [bc], a
    ld b, b
    add b
    add b
    db $ec
    ld hl, $8025
    ld b, l
    ld b, b
    ret nz

    add hl, bc
    ld h, b
    ret nz

    jr nz, jr_050_58f5

    db $10
    ldh a, [$30]
    ret nc

    sub b
    db $10
    ld [hl+], a
    ld [$2804], sp
    sub b
    or b
    ld h, b
    ld h, b
    sub l
    nop
    add hl, bc
    ld b, $03
    ld [bc], a
    ld b, $05
    nop
    ld b, $00
    ld [hl+], a
    inc b
    ld b, e
    ld [bc], a
    inc bc
    rlca
    nop
    ld bc, $0702
    inc b
    dec b
    inc bc
    inc bc
    and e
    rst $28
    add e
    nop
    ld e, $03
    dec b
    inc b
    inc b
    dec b
    xor e
    ei
    dec c
    ret nz

    ldh [$e0], a
    jr nc, jr_050_59c1

    sub a
    cpl
    ld e, b
    ccf
    jr nz, jr_050_59d3

    ld b, b
    ccf
    ld b, b
    ld b, l
    rst $38
    add b
    add hl, de
    ld a, a

jr_050_595c:
    ld b, b

jr_050_595d:
    ld a, a
    ld h, c
    ld e, l
    db $e3
    ret nz

    call c, $e1c1
    ld [hl], e
    xor a
    ld [hl+], a
    ld h, e
    ld b, b
    or e
    ld a, h
    ld [hl], e
    add b
    adc a
    nop
    rlca
    rlca
    inc bc
    nop

jr_050_5974:
    nop
    adc a
    nop
    xor [hl]
    ld b, e
    ccf
    jr nz, jr_050_595c

    daa
    ld a, e
    ld b, a
    cp a
    ret z

    db $fc
    inc sp
    ld hl, sp+$04
    ldh a, [$08]
    ldh [rNR23], a
    ld hl, sp+$04
    db $ec
    ld sp, $49f7
    jp nz, Jump_050_57c5

    ld c, c
    adc a
    ld [c], a
    ld bc, $820c
    add e
    ret z

    rst $00
    call nz, Call_050_4bc7
    ret z

    db $10
    sub h
    dec h
    and h
    ld b, e
    ld b, e
    and l
    nop
    ld e, b
    adc [hl]
    ld bc, $1d00
    inc bc
    db $fc
    inc bc
    ld a, b
    add a
    db $f4
    ld c, e
    ret c

    daa
    ld d, h
    xor e
    xor b
    ld [hl], a
    and b
    ld a, a
    pop bc
    ld a, a
    add [hl]
    rst $38
    dec b

jr_050_59c0:
    db $fd

jr_050_59c1:
    ld a, b
    ld sp, hl
    add sp, -$66
    ld [hl], b
    ld [hl], d
    sub c
    pop af
    nop
    ld b, h
    ldh [rNR41], a
    inc bc
    add b
    ld h, b
    ld h, b
    jr nz, jr_050_595d

jr_050_59d3:
    ld bc, $c438
    ld bc, $05ab
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $9101
    nop
    ld d, [hl]
    add e
    nop
    ld l, h
    dec b
    jr z, jr_050_59c0

    xor e
    rra
    rrca
    jr c, jr_050_5974

    ld bc, $1fc8
    ccf
    daa
    ld a, a
    ld c, b
    cp h
    db $d3
    ld a, [$fc34]
    nop
    ldh a, [$08]
    pop hl
    jr @-$05

    inc b
    db $fc
    inc bc
    ld hl, sp-$79
    db $f4
    ld c, e
    ld hl, sp+$47
    call nc, $e86b
    ld d, a
    ret nz

    ld a, a
    add c
    rst $38
    add l
    ld bc, $02f1
    rlca
    inc c
    rrca
    ld b, e
    db $10
    rra
    inc c
    jr nz, @+$40

    ld hl, $0705
    add hl, bc
    rlca
    jp z, $f2ee

    ld e, $f4
    inc c
    add e
    ld [bc], a
    jr c, jr_050_5a2d

    db $fc

jr_050_5a2d:
    jp Jump_050_71ff


    add hl, bc
    ld [bc], a
    inc bc
    dec b
    rlca
    inc c
    rrca
    dec bc
    rrca
    ld a, [bc]
    rrca
    ld [hl+], a
    rlca
    ld b, l
    rlca
    inc b
    ld c, d
    rlca
    ld b, $01
    ld [bc], a
    rlca
    add hl, hl
    inc bc
    ld bc, $0301
    dec h
    ld bc, $0001
    ld bc, $3bec
    ld [bc], a
    add b
    add b
    ld b, b
    ld [hl+], a
    ret nz

    ldh [$27], a
    ldh [$f0], a
    cp h
    cp $7f
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    inc a
    rst $38
    rrca
    rst $38
    inc bc
    db $fd
    dec b
    ld a, [$f50a]
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, e
    xor h
    xor e
    ld d, h
    ld e, l
    and d
    cp l
    ld b, d
    ld e, l
    and d
    cp h
    ld b, e
    cp $81
    cp [hl]
    pop bc
    add h
    add e
    nop
    pop bc
    ld b, e
    rst $38
    ret nz

    nop
    rst $18
    ld b, e
    ldh [$7f], a
    inc bc
    ld h, b
    ld l, a
    ld [hl], b
    ld a, a
    ld b, e
    ld [hl], b
    ccf
    rlca
    jr nc, jr_050_5ad0

    jr c, jr_050_5ada

    jr c, jr_050_5ab8

    dec a
    ld e, $43
    ld e, $0e
    inc b
    ld c, $06
    ld c, $02
    ld b, $6d
    ld bc, $0303
    ld b, e
    dec b
    rlca
    ldh [rNR51], a
    inc c
    rrca
    inc d
    rra
    ld [de], a
    rra
    dec bc

jr_050_5ab8:
    ld c, $0b
    inc c
    dec b
    ld b, $03
    rlca
    ld [bc], a
    ld [bc], a
    jp nz, $3cc3

    cp $79
    rst $38
    cp b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    db $fc

jr_050_5ad0:
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    cp $03
    add e
    add e
    nop

jr_050_5ada:
    db $fd
    adc b
    add e
    nop
    ld a, [hl]
    ld b, h
    add a
    ld a, a
    ld b, e
    ccf
    rst $00
    ld b, e
    rla
    rst $28
    ld b, e
    adc c
    ld a, a
    inc bc
    adc e
    ld a, a
    adc a
    ld a, a
    ld b, e
    rst $08
    ccf
    dec b
    ei
    ld a, a
    sub b
    sbc e
    db $10
    dec de
    ld b, l
    db $10
    rra
    rlca
    dec h
    ccf
    ld hl, $423d
    ld b, d
    inc a
    inc a
    ld h, c
    rlca
    rlca
    rlca
    ld e, c
    ld e, a
    and b
    rst $38
    and b
    rst $18
    ld b, e
    ld b, b
    rst $38
    ldh [$2c], a
    add b
    xor a
    add b
    rst $38
    add e
    rst $38
    sbc a
    ld sp, hl
    rst $38
    ld b, b
    cp $01
    rst $28
    inc bc
    db $ec
    sbc l
    db $fd
    add [hl]
    ld a, a
    nop
    dec sp
    ld b, l
    cp [hl]
    cp e
    ld a, h
    rst $20
    ld a, b
    rst $38
    ld b, h
    rst $38
    add d
    rst $38
    add e
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    adc d
    add e
    ld [bc], a
    rst $38
    rst $38
    rst $18
    ld b, h
    rst $38
    rst $28
    ld b, h
    rst $38
    rst $28
    inc b
    rst $20
    cp $e7
    jp c, Jump_050_43e7

    rst $38
    jp $fd09


    jp $c17f


    ld a, a
    db $e3
    sbc h
    sbc h
    add b
    add b
    rst $08
    nop
    add e
    inc b
    sbc b
    sbc b
    add sp, -$08
    adc b
    ld b, h
    ld hl, sp+$08
    add hl, bc
    inc d
    cp h
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [rSVBK]
    ldh a, [rSCX]
    ldh [$a0], a
    ld [$b878], sp
    jp nz, $87fe

    rst $38
    inc b
    rst $38
    add hl, bc
    ld b, h
    rst $38
    rra
    add hl, bc
    ccf
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [$df], a
    ldh [rSCX], a
    rst $38
    ret nz

    ld bc, $c0bf
    ld b, a
    rst $38
    add b
    ld bc, $c0bf
    ld b, l
    cp $c1
    nop
    sbc $a4
    ld bc, $1f25
    ld a, h
    db $e3
    ld a, b
    rst $20
    ld l, b
    rst $30
    ld a, b
    rst $30
    ldh a, [rIE]
    pop af
    rst $38
    ret


    rst $38
    dec b
    rst $18
    add a
    rst $18
    add l
    db $ed
    add h
    db $ec
    ld b, d
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld b, d
    ld e, [hl]
    inc h
    inc h
    jr jr_050_5be1

    or a
    nop
    ld l, h
    inc de
    ld bc, $0701
    rlca
    rrca
    rrca
    rst $38
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rst $30
    rst $38
    cp $ff
    db $fc
    di
    db $fc
    add e

jr_050_5be1:
    ld b, l
    cp $01
    ld bc, $41be
    ld b, a
    cp a
    ld b, b
    ld b, l
    ccf
    ret nz

    ld [bc], a
    ld a, a
    ret nz

    ld a, [hl]
    ld b, [hl]
    pop bc
    ld a, a
    nop
    ld a, l
    ld b, [hl]
    add e
    rst $38
    nop
    ei
    ld b, e
    add a
    rst $38
    ld bc, $f707
    ld b, h
    rrca
    rst $38
    dec bc
    xor $1f
    cp $1e
    cp $fe
    ld a, $3e
    inc a
    inc a
    inc e
    inc e
    ld [hl], l
    ld a, [bc]
    jr nc, jr_050_5c45

    ret z

    ld hl, sp+$58
    ld hl, sp+$64
    db $fc
    db $ec
    db $fc
    db $f4
    ld [hl+], a
    db $fc
    rlca
    ld hl, sp-$08
    ret z

    ld hl, sp-$68
    ld hl, sp+$10
    ld hl, sp+$43
    db $10
    ldh a, [rP1]
    db $10
    ld b, [hl]
    ldh a, [$30]
    ld bc, $f020
    ld b, a
    ld h, b
    ldh [$03], a
    ret nz

    ldh [$c0], a
    ret nz

    xor a
    nop
    ld [hl-], a
    cp l
    nop
    ld a, $ff
    ld l, e
    rlca

jr_050_5c45:
    ld bc, $0100
    ld bc, $0202
    inc bc
    ld [bc], a
    inc hl
    ld bc, $060d
    rlca
    ld [$0008], sp
    db $10
    db $10
    rla
    ld de, $0a1f
    rrca
    rlca
    rlca
    inc h
    ld bc, $9ecc
    add e
    xor c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $80d2
    add e
    sbc e
    ldh [$3f], a
    scf
    ld [hl], $7f
    ld e, c
    rst $20
    and c
    rst $08
    ld b, d
    ld e, $02
    ccf
    ld b, b
    rst $38
    nop
    rst $38
    ld b, a
    di
    jp nc, $fa7b

    db $eb
    ld a, [hl+]
    rra
    db $fc
    rra
    ldh a, [$df]
    or b
    ccf
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add l
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    jr c, @+$2a

    jr jr_050_5cb6

    rlca
    inc b
    jp $31c2


    ld sp, $cdbd
    ld a, e
    and $10
    ld a, a
    db $fc
    di
    rlca
    ld c, $cd
    nop
    dec c
    and l
    ei
    rlca
    ld e, $1e

jr_050_5cb6:
    pop hl
    jp $020e


    inc a
    call nz, $f843
    ld [$29e0], sp
    ldh a, [rNR10]
    ld hl, sp+$38
    db $fc
    inc b
    rst $38
    rrca
    cp $1f
    db $fc
    ld c, $fc
    dec b
    ld hl, sp+$1e
    ld sp, hl
    ccf
    rst $38
    ld a, [hl]
    db $fd
    ccf
    rst $30
    daa
    di
    or e
    ld e, c
    ld e, e
    add hl, de
    rrca
    inc h
    rlca
    call nz, $0207
    inc bc
    adc $c3
    ld sp, $afd1
    ld l, a
    ld b, e
    ld b, b
    ret nz

jr_050_5cee:
    nop
    jr nz, jr_050_5d13

    and b
    ld bc, $4040
    ld a, a
    ldh [rNR52], a
    ld a, h
    inc a
    jp $0083


    ld bc, $1e0f
    ld bc, $0041
    xor d
    add b
    push de
    ld b, b
    ld l, a
    jr nz, jr_050_5d49

    ld hl, $203f
    rst $38
    or b
    ld a, a
    cp h
    ld a, a
    sbc a

jr_050_5d13:
    ld [hl], e
    inc de
    pop af
    scf
    db $d3
    ccf
    call c, $f637
    ld hl, $a0e1
    add h
    set 5, h
    daa
    inc hl
    add b
    ld [bc], a
    ret nz

    ret nz

    jr nc, jr_050_5cee

    nop
    or [hl]
    rla
    db $10
    ldh a, [$e0]
    ldh [rLCDC], a
    ret nz

    ld c, [hl]
    adc $bf
    or c
    cp $c2
    db $fc
    inc b
    ld hl, sp-$08
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld h, b
    ld h, b
    ld l, l
    add e
    nop
    db $10

jr_050_5d49:
    dec d
    rrca
    rrca
    ld de, $0013
    ld hl, $2f20
    inc l
    ccf
    ld [de], a
    inc de
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add l
    nop
    ld b, h
    add hl, bc
    rst $18
    or b
    cp a
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    rst $38
    add b
    add l
    nop
    ld a, d
    add e
    xor a
    dec bc
    inc bc
    inc bc
    ld b, $06
    inc b
    inc c
    ld [$0a0e], sp
    rrca
    dec bc
    rrca
    jp $00ac


    ld [bc], a
    ld [hl+], a
    inc bc
    ld bc, $0203
    adc c
    nop
    jr z, @+$0a

    inc bc
    inc bc
    ld l, a
    ld l, l
    or a
    or c
    ld l, a
    ld hl, $87df
    nop
    ld e, l
    ld a, [de]
    db $d3
    ccf
    ld [hl], h
    rra
    jr c, jr_050_5dbf

    add sp, -$39
    db $fc
    rst $20
    call c, $ecf7
    rst $20
    db $fc
    rst $08
    ld hl, sp+$1f
    ldh a, [rIE]
    ldh [rIE], a
    ld [bc], a
    db $fd
    dec b
    db $fc
    add h
    ld h, a
    rlca
    ld c, $0e
    ld [hl], $32
    call z, $1cc4
    inc b

jr_050_5dbf:
    add h
    nop
    or b
    inc b

Call_050_5dc3:
    adc b
    ld hl, sp+$08
    ld hl, sp+$18
    add l
    nop
    cp d
    add h
    cp a
    ld b, $4f
    rst $38
    ret c

    ld a, a
    ldh [rIE], a
    jr nz, @+$45

    rra
    ldh a, [$67]
    inc de
    rra
    rrca
    ld h, b
    ld h, b
    add c
    xor e
    nop
    ld d, l
    nop
    ccf
    rrca
    ld a, a
    ld a, l
    db $fc
    rst $38
    jp hl


    ld a, l
    ld d, h
    ld a, $2a
    ld [hl+], a
    ccf
    ld b, $ef
    and a
    ld h, c
    and c
    ld h, b
    sub c
    ld [hl], b
    adc c
    ld bc, $6726
    ld de, $c0c0
    jr nc, @+$32

    ret z

    ld hl, sp+$3c
    db $fc
    ld [bc], a
    cp $e2
    cp $5c
    inc e
    adc b
    xor b
    ld [hl], b
    ld [hl], b
    and e
    ld bc, $02d8
    ret nz

    ret nz

    adc $8e
    ld bc, $8871
    nop
    ret nz

    ld d, $7f
    cp $3c
    cp $3e
    and $c6
    ld [hl], c
    ld [hl], e
    ld de, $2817
    rrca
    call nz, $0407
    rlca
    adc $c3
    ld de, $aff1
    ld l, a
    add a
    rst $28
    add hl, bc
    db $fd
    call nc, $eafe
    ld a, a
    ld a, a
    ld e, a
    rst $18
    daa
    pop hl
    add l
    rst $28
    dec c
    rla
    di
    inc e
    rst $38
    ld d, $f7
    sub c
    pop af
    ret nc

    ret nc

    ld d, b
    ld d, b
    jr nz, @+$22

    ld l, c
    rst $38
    ld a, b
    ld b, $01
    ld [bc], a
    ld b, $05
    inc b
    nop
    dec bc
    dec h
    ld a, [bc]
    inc hl
    dec bc
    add hl, bc
    ld bc, $1412
    inc d
    ld h, b
    ld h, h
    adc b
    adc b
    ld [hl], b
    ld [hl], b
    db $ec
    inc a
    ldh [$36], a
    ld bc, $0703
    add hl, bc
    add hl, bc
    db $10
    db $10
    call c, $3ed8
    inc l
    sbc $ce
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    db $fc
    call nz, Call_050_48f8
    ld [hl], c
    ld [hl], c
    inc bc
    ld [bc], a
    adc e
    adc h
    rst $20
    ld a, b
    rst $30
    adc b
    ld [hl], a
    adc b
    ld b, a
    ld a, c
    dec sp
    ld b, l
    ld a, [hl-]
    ld h, $1e
    inc [hl]
    dec e
    dec e
    dec d
    dec d
    inc b
    dec h
    jr nz, jr_050_5ec7

    ld [bc], a
    ld c, d
    ld d, c
    ld e, c
    jr z, jr_050_5ecf

    add e
    nop
    inc h
    ld bc, $0404
    ld a, a
    dec e
    rrca
    ccf
    ret nc

    ret nz

    ldh [rP1], a
    push de
    nop
    ld [$3d80], a
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, d
    ld a, b
    ld b, h
    jr nc, jr_050_5f0b

    ld hl, sp-$78
    ld a, b
    adc b

jr_050_5ec7:
    ld hl, sp+$08
    sbc h
    ld h, h
    db $dd
    ld d, e
    ld b, e
    rst $18

jr_050_5ecf:
    ld d, b
    ldh [rNR42], a
    rrca
    sub b
    cp a
    jr nz, jr_050_5f36

    ld h, b
    ld a, [hl]
    ld b, c
    db $fd
    add d
    cp $04
    db $ed
    inc e
    push hl
    db $fc
    add d
    cp $62
    ld a, [hl]
    ld a, [hl-]
    ld e, $de
    adc $69
    ld l, c
    ld h, l
    ld h, l
    sub l
    sub l
    dec e
    dec d
    ld [$7b08], sp
    ldh [rHDMA1], a
    ld hl, sp-$64
    ld h, [hl]
    ld h, d
    or d
    ld de, $0957
    or a

Jump_050_5f00:
    ld [$007f], sp
    rst $38
    ret nz

    ccf
    jr nz, jr_050_5f17

    db $10
    sbc a
    sub c

jr_050_5f0b:
    rra
    ld de, $110f
    ccf
    ld [hl+], a
    ld a, a
    ld b, d
    ei

jr_050_5f14:
    add [hl]
    db $fd

jr_050_5f16:
    rlca

jr_050_5f17:
    ld a, [$750d]
    sbc d
    ld a, e
    push af
    cp $0f
    ld a, [hl]
    db $e3
    rrca
    add hl, de
    rst $00
    inc b
    inc hl
    ld [bc], a
    db $10
    ld bc, $0088
    add h
    nop
    ld b, h
    nop
    ld b, c
    inc bc
    ld b, a
    ld c, $24
    ld [hl], $49

jr_050_5f36:
    ld c, [hl]
    adc b
    adc [hl]
    add hl, bc
    ld c, $00
    inc e
    ld de, $1a1c
    inc d
    add hl, de
    inc d
    dec de
    rla
    jr jr_050_5f5b

    ld [$6518], sp
    dec c
    jr nz, jr_050_5f6d

    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld c, [hl]
    ld c, [hl]

jr_050_5f53:
    add h
    adc b
    add b
    adc b
    adc b
    add b
    ld h, c
    nop

jr_050_5f5b:
    add c
    ld [hl+], a
    add b
    ld [$c0c2], sp

jr_050_5f61:
    push de
    and b
    ld [$f3a0], a
    rla
    db $fc
    ld b, e
    inc e
    db $f4
    ld c, $2c

jr_050_5f6d:
    db $f4
    inc l
    call nc, $742c
    call z, $dca4
    call nc, $acac
    ld d, h
    ld b, h
    cp h
    ld b, e
    ld [$e0f8], sp
    ld hl, $f888
    ret nc

    ld [hl], b
    ldh a, [$30]
    ld a, h
    sbc [hl]
    dec a
    ld d, e
    add hl, de
    ld l, $fc
    db $e4
    ld d, h
    sbc h
    jr nz, jr_050_5f14

    ld d, b
    add c
    jr nz, jr_050_5f16

    ld d, e
    add e
    and h
    ld b, h
    jr @+$4a

    xor b
    ld c, b
    ld [hl], b
    jr nc, jr_050_5f61

    ret nz

    ld l, c
    dec d
    jr jr_050_5fc2

    ld l, h
    ld h, h
    sbc b
    adc b
    jr z, @+$0a

    ld d, b
    db $10
    jr nc, jr_050_5fc0

    ld h, b
    jr nz, jr_050_5f53

    jr nz, @+$7a

    ld e, b
    call nc, $a884
    ld [$a383], sp
    db $f4
    inc hl
    nop
    ld c, a

jr_050_5fc0:
    inc c

jr_050_5fc1:
    and b

jr_050_5fc2:
    ld h, b
    ld [hl], b
    sub b
    jr nz, jr_050_601f

    jr jr_050_5ff1

    jr jr_050_6003

    ret nz

    ld b, b
    add b
    adc $8e
    rrca
    ld a, $3c
    inc a
    ld h, h
    cp h
    add h
    ld [hl], b
    add hl, bc
    ld sp, $0371
    ld [bc], a
    add a
    add h
    ld a, a
    ld hl, sp-$7d
    ld bc, $0f00
    add hl, sp
    rra
    rst $18
    rst $08
    ld l, b
    ld l, b
    ld h, h
    ld h, h
    sub h
    sub h
    inc e
    inc d

jr_050_5ff1:
    rra
    ld de, $919f
    sub c
    ld bc, $1944
    ld a, a
    pop hl
    rrca
    inc e
    jp nz, $3003

    nop
    inc c
    nop

jr_050_6003:
    add d
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld hl, $a603
    adc a
    sub h
    sub [hl]
    ld e, c
    ld e, [hl]
    ld l, b
    ld l, [hl]
    add l
    ld bc, $13b0
    adc b
    ld hl, sp-$18
    ld a, b
    ld hl, sp+$18
    ld h, $c6

jr_050_601f:
    add hl, bc
    ld sp, $0f07
    inc sp
    inc a
    pop bc
    ld [c], a
    jr nz, jr_050_5fc1

    ld b, b
    adc h
    add l
    ld bc, $83ca
    rst $18
    dec b
    ld sp, $dd1f
    rst $08
    ld l, e
    ld l, e
    add l
    rst $18
    adc c
    cp a
    dec bc
    sub l
    sbc [hl]
    ld d, l
    ld e, [hl]
    ld h, c
    ld a, a
    ld h, [hl]
    ld a, [hl]
    sbc b
    ld hl, sp-$20
    ldh [rBCPD], a
    add hl, bc
    call nc, $a8ac
    ld e, b
    ld c, b
    cp b
    adc b
    ld hl, sp-$10
    ld [hl], b
    add l
    rst $08
    add hl, bc
    ld b, $0e
    jr c, @+$3a

    db $fc
    db $e4
    ld hl, sp+$18
    add b
    ld h, b
    add l
    ld [bc], a
    ld l, $ff
    ld l, c
    ld [hl+], a
    ld bc, $0222
    inc c
    ld bc, $0504
    inc c
    dec b
    ld c, $05
    ld b, $09
    inc c
    nop
    ld [$4401], sp
    db $10
    inc de
    dec bc
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    ld bc, $0301
    ld [bc], a
    dec b
    inc b
    ld b, e
    dec bc
    ld [$1707], sp
    db $10
    ld e, $11
    add hl, bc
    dec bc
    ld b, $06
    add l
    or d
    inc bc
    ld bc, $0001
    ld bc, $bd85
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    jp z, $0dc2

    inc a
    ld a, [hl]
    ld b, b
    add c
    rra
    nop
    ld a, a
    nop
    db $fd
    nop
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld bc, $ff43
    rlca
    ld bc, $077a
    ld b, e
    rst $38
    nop
    ldh [$2d], a
    db $fd
    inc bc
    ld a, d

jr_050_60c0:
    add a
    ei
    ld a, [de]
    rst $20
    db $fc
    sbc h
    ei
    ld a, c
    rst $20
    ld [de], a
    cp $86
    ld a, [$e47c]
    ld h, l
    db $e4
    xor e
    xor b
    dec hl
    inc l
    ld l, b

jr_050_60d6:
    ld l, e
    or $96
    ld sp, $1811
    ld [$043c], sp
    ld sp, hl
    ld b, $f9
    add a
    ld [hl], c
    rst $08
    jp nc, $b43e

    inc c
    ldh a, [$f8]
    ld l, e
    ld [$8080], sp
    ld b, b
    ret nz

    and b
    ld h, b
    ret nz

    jr nz, jr_050_60d6

    ld b, h
    db $10
    ldh a, [rSB]
    ldh [rNR23], a
    ld b, e
    ld hl, sp+$08
    dec c
    ldh [rNR23], a
    ld hl, sp-$78
    ldh a, [$0c]
    db $fc
    inc b
    ld a, d
    add [hl]
    db $fc
    inc bc

jr_050_610c:
    rst $30

jr_050_610d:
    add hl, bc
    ld b, e
    rst $38
    ld [$e71f], sp
    jr jr_050_610c

    db $10
    rst $10
    jr nc, jr_050_60c0

    ld h, b
    ld c, a
    ret nz

    add e
    sub b
    inc bc
    jr nz, jr_050_6148

    jr nz, jr_050_6142

    jr nz, @+$11

    db $10
    rst $38
    sub b
    dec sp
    ld a, h
    inc c
    rrca
    rra
    db $10
    inc bc
    dec d
    rlca
    rrca
    call z, Call_050_5700
    add h
    add e
    nop
    dec b
    add h
    add e
    ld [$0003], sp
    dec b
    nop
    dec bc
    nop

jr_050_6142:
    dec b
    nop

jr_050_6144:
    rrca
    add h
    adc a
    nop

jr_050_6148:
    ld [bc], a
    xor b
    nop
    dec b
    rlca
    ret nz

    ld b, b
    pop hl
    ld hl, $26e7
    rst $18
    jr c, jr_050_6199

    rst $38
    db $10
    rrca
    db $fc
    inc de
    ldh a, [$1f]
    pop af
    rra
    add $3e

Jump_050_6161:
    ret c

    jr c, jr_050_6144

    ld h, b
    ld h, b
    and b
    ret nz

    jr nz, jr_050_610d

    nop
    ld c, d
    ld l, a
    and e
    pop de
    ld b, e
    ldh [rP1], a
    ld b, e
    ldh a, [rP1]
    dec d

jr_050_6176:
    ld hl, sp+$00
    cp b
    ld b, b
    ld e, b
    and b
    sbc b
    ld h, b
    ld d, b
    and b
    and b
    ld d, b
    jr c, jr_050_61d4

    ld a, b
    ld c, b
    ld l, b
    ld e, b
    jr z, jr_050_61e2

    add sp, $18
    ld b, e
    ret nc

    jr nc, jr_050_6198

    sub b
    ld [hl], b
    and b
    ld h, b
    jr nz, jr_050_6176

    ld b, b
    ret nz

jr_050_6198:
    add b

jr_050_6199:
    sub b
    cp a
    adc c
    nop
    jr nz, @-$7b

    nop
    ld c, b
    nop
    inc bc
    inc h
    ld [bc], a

jr_050_61a5:
    ld bc, $0200
    add $00
    ld b, b
    rra
    nop
    ld bc, $7f01
    inc l
    rst $18
    db $10
    rst $38
    jr nz, jr_050_61a5

    jr nz, @-$01

    inc de
    xor [hl]
    cp [hl]
    ld [hl], b
    ldh a, [rNR23]
    ld [$8870], sp
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld a, [hl]
    add c
    rst $38
    ld bc, $83f7
    nop
    call $100a
    rst $30
    db $10
    rst $00

jr_050_61d4:
    jr nz, jr_050_6225

    ret nz

    adc a
    add b
    inc bc
    db $10
    add e
    nop
    call c, $0006
    inc bc
    nop

jr_050_61e2:
    inc b
    nop
    ld [$a501], sp
    nop
    or e
    inc b
    ld [$0403], sp
    ld bc, $ac03
    nop
    sbc a
    adc d
    nop
    ld c, l
    ldh [rNR51], a
    ld c, $1f
    ld bc, $8720
    ret nz

    rst $38
    nop
    ld a, [hl]
    ld bc, $007e
    cp $00
    cp $01
    cp a
    ld b, b
    rst $38
    nop
    rst $28
    ld e, $60
    rst $28
    ld d, c
    ld a, a
    ld bc, $837f
    cp $8f
    db $fc
    db $fd
    ld [hl], e
    rst $30
    adc [hl]
    rst $38
    ld a, h
    adc h
    ld bc, $0044
    ret nz

    add e
    nop
    or b

jr_050_6225:
    ld [bc], a
    ld [hl], b
    sub b
    or b
    ld b, e
    ret z

    ld hl, sp+$06
    call nz, $c4bc
    db $fc
    inc b
    ld hl, sp+$04
    ld b, [hl]
    rst $38
    nop
    rlca
    ld bc, $0ff6
    ld a, c
    ld b, $ff
    nop
    rst $38
    add [hl]
    nop
    rst $30
    ld [bc], a
    dec b
    nop
    dec bc
    and h
    ld bc, $0055
    rla
    add h
    add e
    ld b, $0e
    ld bc, $0117
    ld a, [bc]
    ld bc, $8401
    ld bc, $021b
    jr nz, jr_050_625c

jr_050_625c:
    ld b, b
    xor b
    nop
    ld sp, hl
    nop
    add b
    and h
    ld bc, $0d07
    ld d, b
    add b
    and b
    ld b, b
    ldh a, [rNR41]
    ldh [rNR10], a
    ldh [$90], a
    ldh a, [$88]
    ld a, b
    adc b
    rst $38
    ld l, [hl]
    ld [hl+], a
    ld bc, $1a19
    ld a, [hl-]
    ld c, [hl]
    ld b, [hl]
    ld c, [hl]
    add d
    sbc a
    add e
    sbc h
    add h
    ld a, h
    ld b, h
    ld a, $22
    ld e, $12
    rrca
    ld de, $090f
    rlca
    ld [$0407], sp
    rlca
    rlca
    ld b, e
    ld [$030f], sp
    inc b
    rlca
    inc bc
    inc bc
    db $ec
    ld hl, $0c0a
    inc e
    daa
    ld h, e
    rlca
    add b
    adc a
    add b
    sbc a
    ld b, $bf
    ld b, e
    rrca
    rst $38
    ld a, [bc]
    rlca
    ld a, l
    ld [bc], a
    ld a, [hl]
    add hl, de
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    rrca
    rra
    jp $07df


    ret nz

    ret nz

    and e
    db $e3
    sbc h
    rst $38
    ret nz

    ld a, a
    ld b, e
    ldh [$bf], a
    ld de, $9ffe
    ld a, c
    adc c
    ld sp, hl
    adc c
    pop af
    sub c
    ld h, c
    ld h, c
    ld bc, $0203
    dec b
    dec b
    ld b, $0a
    dec c
    ld b, e
    ld [$050f], sp
    ld c, $09
    inc de
    db $10
    rrca
    rrca
    ld h, l
    rlca
    ld c, $0e
    rra
    inc de
    db $10
    inc e
    db $ec
    ldh a, [rLY]
    rst $38
    nop
    inc bc
    ld bc, $03fd
    cp $43
    inc bc
    rst $38
    rrca
    ld bc, $00ff
    ccf
    nop
    ccf
    jr jr_050_6380

    ccf
    pop bc
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    sub b
    ld b, h
    rst $38
    nop
    dec b
    ld b, b
    rst $38
    and h
    jp $8081


    ld h, e
    inc b
    ld d, l
    nop
    xor d

jr_050_6318:
    nop
    ld [hl], a
    ld b, h
    add b
    rst $38
    add hl, bc
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$0f
    rst $38
    jr nc, jr_050_6318

    and a
    nop
    ld [hl-], a
    ldh [rNR52], a
    ld [hl], b
    ldh a, [$0c]
    inc c
    rrca
    inc bc
    add hl, sp
    ld b, $ff
    nop
    ei
    db $fc
    db $fd
    cp $3a
    rst $38
    pop hl
    rst $20
    ld h, c
    ld h, a
    ld h, c
    rst $20
    pop bc
    rst $38
    cp $3e
    pop hl
    inc b
    ei
    inc b
    db $fc
    di
    dec e
    ld a, [$fe07]
    rrca
    rst $38
    inc bc
    ld c, b
    rst $38
    nop
    dec c
    add a
    ld a, a
    ld b, c
    ccf
    ld b, b
    ccf
    ldh [$1f], a
    db $ec
    rra
    ldh a, [$1f]
    ldh [$1f], a
    ld b, l
    ldh [$3f], a
    rlca
    db $10
    rst $38
    di
    db $fc
    ld [$0708], sp
    rlca
    ld h, l
    dec c
    jr c, jr_050_63ae

    call z, $ccc4
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a

jr_050_6380:
    ldh a, [rNR10]
    ld b, e
    ld a, b
    ld [$7c44], sp
    inc b
    ld a, [bc]
    add h
    cp h
    ld b, h
    ld e, b
    xor b
    add sp, $18
    ldh a, [rNR10]
    ldh a, [$30]
    add e
    ei
    inc bc

jr_050_6397:
    ld a, b
    ld hl, sp+$04
    db $fc
    ld b, e
    ld [bc], a
    cp $0d
    call nz, $38fc
    jr c, @-$7e

    add b
    ret nz

    ret nz

    and b
    ldh [$58], a
    ld hl, sp+$46
    cp $43

jr_050_63ae:
    ld hl, $07ff
    ld h, $fe
    jr c, @-$06

    jr nz, jr_050_6397

    ret nz

    ld b, b
    and e
    nop
    ld [hl], b
    ld bc, $0101
    ld [hl+], a
    ld [bc], a
    jp nz, $cd80

    nop
    db $10
    dec c
    inc c
    ld e, $06
    ld hl, $2123
    inc bc
    ld b, c
    ld b, a
    ld b, c
    rra
    jr c, @+$09

    inc b
    and d
    xor c
    ret z

    nop
    ld de, $0101
    ld bc, $a0ca
    ld [de], a
    inc bc
    inc b
    rrca
    sub b
    sbc a
    pop hl
    ld a, a
    push af
    ccf
    set 7, a
    dec b
    rst $38
    adc a
    rst $38
    ld a, [hl]
    ld a, l
    dec b
    ld b, $85
    nop
    ret nz

    ld [bc], a
    ld d, b
    ld a, a
    add b
    add [hl]
    nop
    ret


    ldh [$27], a
    ld bc, $0301
    ld b, $0f
    jr @+$05

    jr nz, jr_050_642f

    ld hl, $213f
    ld e, $12
    inc c
    inc c
    db $10
    rra
    ld h, [hl]
    ld a, a
    adc a
    ld sp, hl
    ccf
    pop af
    rra
    db $fd
    sub e
    rst $38
    and $fd
    push hl
    cp [hl]
    ld a, [$e81d]
    cpl
    ret z

    ld c, a
    adc [hl]
    adc c
    add a
    nop
    sbc b
    rrca
    ld [bc], a
    nop
    dec b
    nop

jr_050_642f:
    inc bc
    nop
    ld b, $01
    inc c
    ld [bc], a
    ld d, b
    inc c
    adc b
    jr nc, jr_050_646a

    ld b, c
    add e
    rst $20
    inc bc
    rlca
    rlca
    inc c
    dec bc
    add a
    nop
    ld l, $06
    add b
    nop
    add b
    ld b, b
    nop
    ret nz

    adc h
    adc b
    nop

jr_050_644f:
    ld d, a
    dec b
    pop bc
    pop bc
    and b
    ld h, b
    jr jr_050_644f

    rst $00
    ld bc, $0522
    ldh [rIE], a
    inc e
    rra
    inc bc
    inc bc
    ld h, $01
    add h
    nop
    adc e
    rlca
    ld [bc], a
    rst $38
    add c

jr_050_646a:
    rst $38
    pop bc
    rst $38
    add hl, sp
    rst $38
    add a
    ld bc, $0f08
    and b
    nop
    ld d, b
    nop
    or b
    ld b, b
    ld c, b
    jr nc, jr_050_6480

    jr jr_050_6480

    inc c
    inc bc

jr_050_6480:
    inc b
    ld b, $01
    rst $38
    db $ec
    dec hl
    rlca
    ld bc, $0201
    ld [bc], a
    ld b, $04
    inc bc
    inc b
    ld b, e
    rrca
    add hl, bc
    add hl, bc
    dec c
    ld a, [bc]
    rlca
    ld b, $0f
    dec bc
    rrca
    ld [$0707], sp
    db $ec
    ld d, a
    ldh [rNR42], a
    ld [hl], b
    ld [hl], b
    ld [$0488], sp
    inc b
    ld b, b
    ld h, h
    add d
    add e
    add c
    ld bc, $00e0
    ld hl, sp+$08
    db $f4
    ld [$11fe], sp
    rst $38
    sub c
    rst $38
    pop af
    dec bc
    dec c
    rlca
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    inc b
    ld b, e
    ld b, $05
    ld [$0302], sp
    nop
    ld bc, $0200
    inc b
    inc b
    nop
    inc hl
    ld [$0a01], sp
    nop
    ld b, e
    ld de, $0c10
    ld [de], a
    jr nz, jr_050_6502

    inc e
    ld e, $1f
    ld d, $7f
    ld h, b
    add c
    xor d
    ld a, a
    ld a, a
    ld h, d
    inc hl
    ld [bc], a
    dec b
    ld b, $05
    daa
    inc h
    cpl
    dec [hl]
    ld b, h
    ccf
    rla
    ldh [rSTAT], a
    rra
    ccf

Call_050_64f7:
    cpl
    cpl
    inc hl
    daa
    jr nz, @+$32

    inc l
    inc a
    dec e
    inc sp
    ccf

jr_050_6502:
    jr jr_050_6532

    dec c
    dec de
    inc e
    inc hl
    jr nz, @+$25

    inc h

jr_050_650b:
    dec e
    inc de
    ld [$0108], sp
    rlca
    inc c
    inc c
    nop
    db $10
    ld sp, $ffe0
    nop
    rst $38
    add b
    ld b, a
    ld a, b
    ld a, b

jr_050_651e:
    daa
    ld a, a
    jr nz, @+$01

    jr nz, jr_050_650b

    jr c, jr_050_651e

    ld [hl], a
    adc a
    adc h
    db $d3
    ld d, e
    ld [hl], b
    ldh a, [rBCPS]

jr_050_652e:
    sbc b
    ret c

    jr z, jr_050_652e

jr_050_6532:
    inc [hl]
    jp nz, $82ee

    add d
    rst $08
    nop
    dec l
    add hl, bc
    ld [bc], a
    ld [bc], a
    adc l
    call $70f0
    ldh a, [rNR10]
    ldh [$60], a
    and e
    sbc c
    ld a, [bc]
    inc b
    inc c
    inc e
    inc a
    cp c
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fd
    ld [hl+], a
    rst $38
    ldh [rVBK], a
    rst $28
    rst $38
    db $db
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    ccf
    ld a, a
    inc bc
    inc bc
    add b
    add b
    sbc h
    ld a, h
    rst $20
    db $eb
    rst $00
    ld c, e
    rst $08
    ld [hl-], a
    rst $38
    nop
    rst $28
    pop af
    rrca
    ld c, a
    ret z

    ret


    ld [hl], b
    ld h, b
    ld c, c
    jr nc, @+$01

    ld [$14eb], sp

Jump_050_657d:
    xor $13
    rst $18
    jr nz, jr_050_65fe

    add e
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    rrca
    db $10
    ld a, [$69e0]
    ret nz

    call nz, Call_050_7370
    rra
    rra
    ld c, $0e
    ld a, [bc]
    dec bc
    ld de, $3917
    ld a, a
    rst $00
    rst $28
    nop
    ld d, a
    inc bc
    cpl
    inc c
    inc e
    db $10
    jr nc, jr_050_65c6

    jr nz, jr_050_65cb

    ld b, b
    ld bc, $8080
    xor l
    ld bc, $0e34
    inc a
    ld a, h
    sbc b
    ld hl, sp+$30
    ldh a, [$60]
    ldh [$fe], a
    cp $fc
    db $fc
    ld hl, sp-$04
    rst $30
    inc h
    rst $38
    ldh [$2f], a
    cp $fe
    rst $38

jr_050_65c6:
    rst $38
    jr jr_050_65e1

    inc e
    inc e

jr_050_65cb:
    db $e3
    rst $38
    cp b
    ld a, a
    db $76
    sub [hl]
    ld a, c
    cp l
    call nz, $04c4
    inc b
    adc b
    adc b
    rst $00
    ld b, a
    ldh [rNR41], a
    and c
    ld h, c
    ld a, [c]
    ld [de], a

jr_050_65e1:
    ld a, [$f91a]
    add hl, de
    ld a, h
    sbc h
    db $fc
    inc a
    db $fd
    ld a, l
    ld a, [$fcfa]
    db $fc
    inc a
    ld a, h
    inc c
    inc c
    ld h, c
    dec d
    rst $00
    rst $00
    ccf
    ld a, a
    cpl
    rst $38
    jp nz, $a4fe

jr_050_65fe:
    cp h
    ld e, b
    ret c

    ld b, b
    ret nz

    ldh [$e0], a
    ld [hl+], a
    inc hl
    inc e
    rra
    inc b
    dec b
    ld b, e
    ld [bc], a
    inc bc
    sbc $00
    dec l
    ld b, $80
    ret nz

    ldh [rP1], a
    add b
    ld h, b
    ld [hl], b
    jp $14dc


    ld [hl], d
    ld [hl], d
    adc d
    adc d
    push hl
    rst $20
    inc e
    rra
    add a
    add a
    ld b, b
    ld b, b
    db $10
    jr nc, jr_050_6631

    ld c, $01
    ld bc, $8180
    nop

jr_050_6631:
    add $01
    or h
    add hl, de
    and b
    and b
    ld d, b
    ld d, b
    sub b

jr_050_663a:
    sub b
    db $10
    db $10
    jr c, jr_050_6677

    ld b, h
    ld e, h
    sbc d
    cp $ee
    xor $b2
    or d
    call nz, $74c4
    ld [hl], h
    ld [hl+], a
    ld [hl+], a
    ld bc, $a841
    ld bc, $1032
    add b
    nop
    ld d, l
    nop

jr_050_6657:
    xor a
    nop
    rst $18
    sbc e
    rst $38
    push hl

jr_050_665d:
    rst $38
    ccf
    jr nc, @+$57

    ld c, d
    dec sp
    ccf
    db $ec
    dec h
    dec b
    and b
    or b
    ret z

    ret z

    ld [$2308], sp
    db $10
    add hl, bc
    ldh [$e0], a
    and b
    and b
    sub b
    sub b
    ld c, b

jr_050_6677:
    ld c, b
    db $10
    jr nc, jr_050_663a

    nop
    ld c, $01
    add b
    add b
    ld b, l
    ld b, b
    ret nz

    add e
    add a
    ld bc, $a020
    ld [hl+], a
    ret nz

    inc b
    ld b, b
    ld h, b
    and b
    ret nz

    ret nz

    ld h, c
    rst $38
    db $ec
    ld b, c
    rla
    inc bc
    inc bc
    dec b
    inc b
    rlca
    inc b
    inc bc
    inc bc
    nop
    jr c, jr_050_66a0

jr_050_66a0:
    ld b, [hl]
    add hl, de
    sbc c
    jr c, jr_050_665d

    jr nc, jr_050_6657

    ld b, b
    ld h, b
    jr jr_050_66c7

    inc bc
    inc bc
    daa
    ld bc, $0001
    ld bc, $27ec
    ld bc, $0101
    rst $00
    add b
    ld [bc], a
    ld bc, $0103
    add h
    db $d3
    dec b
    ld bc, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    add e

jr_050_66c7:
    sub l
    dec bc
    inc bc
    rra
    daa
    jr nz, jr_050_670d

    jr nz, jr_050_66e1

    rra
    ret nz

    pop hl
    ld e, $1f
    inc hl
    rst $38
    ld [de], a
    inc a
    ccf
    db $10
    rra
    jr nz, @+$41

    and b
    rst $38
    ret nz

jr_050_66e1:
    rst $28
    ld b, b
    ld e, a
    add b
    rst $28
    add b
    rst $18
    add b
    rst $38
    pop hl
    inc l
    rst $38
    rlca
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    rrca
    rra
    ret nc

    db $ed
    add l
    add sp, $00
    inc bc
    and e
    db $e3
    ldh [$2d], a
    jr nz, jr_050_6722

    jr nc, jr_050_671c

    db $fc
    add h
    ld a, e
    ld b, a
    ld [hl], b
    cp $e1
    ld a, $c0

jr_050_670d:
    ccf
    pop hl
    rst $38
    ld b, c
    ld a, a
    rst $08
    cp [hl]
    rst $20
    inc e
    or a
    ld l, h
    cp [hl]
    xor c
    ld c, $2e

jr_050_671c:
    ld d, $16
    jp $b2c3


    or d

jr_050_6722:
    dec c
    dec c
    inc bc
    di
    nop
    db $10
    and $e6
    ei
    ld sp, hl
    ccf
    ld sp, hl
    ld b, e
    rrca
    rst $38
    dec c
    ld e, $fe
    inc l
    db $fd
    ld e, b
    ld a, [$d151]
    xor e
    xor e
    cp a
    cp a
    add e
    add e

jr_050_6740:
    inc hl
    ld b, b
    rrca
    ld hl, sp-$04
    rla
    rla
    and a
    and a
    call $9ccf
    call c, $fcf8

jr_050_674f:
    ldh a, [$f8]
    ret nz

    ldh [$63], a
    inc b
    jr nz, jr_050_6787

    jr jr_050_6795

    rra
    ld b, h
    rra
    rrca
    rrca
    rst $30
    rst $38
    ld a, $7f
    jr jr_050_67a0

    ld a, b
    ld hl, sp-$08
    ldh a, [$7c]
    ld hl, sp+$2b
    inc h
    ld c, a
    ld d, b
    ld b, e
    ld [hl], a
    ld c, b
    add hl, de
    sbc [hl]
    pop hl
    ld a, a
    add hl, sp
    rst $28
    jr z, jr_050_6740

    db $e4
    rst $00
    ld b, [hl]
    rst $00
    ld h, $e5
    dec h
    add b
    ld c, h
    ret z

    ld c, h
    add b
    sub d
    db $10

jr_050_6787:
    ld [de], a
    jr nz, jr_050_67ab

    add b
    pop bc
    add h
    nop
    adc d
    ldh [$28], a
    ld a, a
    add e
    add e
    ld a, a

jr_050_6795:
    ld a, a
    ld sp, $3c3f
    cpl
    xor d
    or a
    ld d, b
    ld e, a
    jr z, jr_050_674f

jr_050_67a0:
    ld b, h
    ld b, a
    jp nz, $23c7

    or a
    or e
    cp a
    cp [hl]
    cp a
    rst $28

jr_050_67ab:
    rst $38
    ld h, $3e
    ld h, h
    ld a, h
    ld c, h
    ld a, h
    db $fc
    db $fc
    jp z, $99fe

    rst $38
    ld [hl], c
    rst $38
    adc b
    nop
    sbc $e0
    add hl, hl
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_050_67f4

    jr nc, jr_050_683e

    cp b
    db $fc
    db $fd
    db $fd
    rst $38
    rst $38
    ccf
    ccf
    ld a, a

jr_050_67cf:
    rrca
    ld a, a
    rlca
    rst $38
    inc bc
    ld a, a
    add e
    rst $38
    ld b, c
    cp [hl]
    and c
    sbc a
    sub c
    sub [hl]
    ld l, [hl]
    db $f4
    inc c
    ld hl, sp+$04
    ld a, [hl]

Call_050_67e3:
    jp nz, $3efe

    sub b
    ld [hl], b
    ldh [$a4], a
    nop
    sbc c
    ldh [$3d], a
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    add d
    add d

jr_050_67f4:
    adc [hl]
    adc [hl]
    or [hl]
    or [hl]
    jp $bdf3


    db $fd
    jp $80ff


    rst $20
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    sbc h
    db $fc
    ld c, b

Call_050_680b:
    ld hl, sp+$24
    db $fc
    db $10
    cp $09
    rst $38
    call Call_050_64f7
    db $eb
    xor d
    rst $30
    ld d, l
    ld a, d
    dec sp
    or l
    dec l
    xor e
    jr z, jr_050_67cf

    ld h, a
    ld h, a
    xor a
    rst $28
    ld c, h
    rst $08
    adc a
    adc a
    rlca
    rlca
    ld bc, $8603
    pop af
    jp $01c3


    ret nz

    add b
    and [hl]
    nop
    ld e, c
    dec b
    ldh a, [$f8]
    ldh [$f0], a
    add b
    ret nz

    cp c

jr_050_683e:
    nop
    ld h, d
    ldh [$27], a
    ret nz

    ret nz

    jr nz, jr_050_6866

    inc l
    inc l
    ld [hl-], a
    ld [hl-], a
    rst $10
    rst $30
    rla
    rst $30
    ld c, a
    rst $08
    add e
    adc e
    ld b, d
    jp z, $ca62

    ld l, l
    push af
    and d
    cp d
    ld [hl], $3e
    ld [hl], l
    ld l, l
    ld [hl], b
    ld [hl], h
    jp nc, $9bf7

    rst $30
    add hl, de
    ei

jr_050_6866:
    cp b
    ld a, [$fafc]
    ld b, l
    ld [hl], c
    db $fd
    dec c
    di
    cp $fd
    db $fc
    add hl, hl
    ld sp, hl
    rst $28
    ei
    or $ff
    cp $fe
    ld hl, sp-$04
    db $ec
    dec a
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ld b, e
    sub b
    ldh a, [$03]
    ld h, b
    ld h, b
    add b
    add b
    ld [hl+], a
    ld b, b
    ld [bc], a
    ld b, b
    add b
    add b
    xor c
    nop
    add [hl]
    nop
    add b
    ld h, $c0
    ld bc, $c080
    xor e
    nop
    ld h, b
    rst $38
    ld a, b
    inc h
    ld bc, $0322
    ld b, $05
    dec b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    push bc
    adc e
    rlca
    inc bc
    rlca
    nop
    ld [$0603], sp
    inc bc
    inc bc
    ld [hl+], a
    ld [bc], a
    ld b, h
    ld [bc], a
    nop
    add l
    and e
    ld bc, $0302
    ld b, e
    inc b
    rlca
    inc bc
    nop
    ld a, [bc]
    rlca
    rlca
    ld l, b
    ldh [$28], a
    ld [bc], a
    dec b
    dec b
    inc bc
    add hl, bc
    dec c
    add hl, bc
    dec bc
    ld de, $1017
    dec hl
    jr nz, jr_050_6911

    jr nz, jr_050_694b

    ret nz

    ld e, a
    ld b, b
    cpl
    nop
    ld e, a
    nop
    cp a
    nop
    ld d, l
    xor e
    xor c
    ld d, a
    ld d, e
    xor a
    xor l
    ld e, a
    daa
    ld [c], a
    ld c, a
    jp nz, $e29f

    rst $38
    add h
    ld b, e
    rst $38
    nop
    rla
    cp a
    ret nz

    ld e, a
    db $e3
    inc e
    db $e4

jr_050_68ff:
    inc [hl]
    call nz, $0c78
    ld a, h
    rrca
    scf
    ld [$813f], sp
    and $9e
    ret z

    ret z

    jr nc, jr_050_68ff

    ret nz

    pop bc

jr_050_6911:
    or l
    nop
    dec b
    ldh [$3b], a
    add c
    add c
    db $d3
    ld d, [hl]
    rst $38
    ld l, b
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    xor a
    rst $38
    sbc a
    sbc $3f
    db $fd
    ccf
    cp d
    ld a, a
    push af
    ld a, a
    ei
    ld a, a
    ld l, l
    rst $38
    cp $cf
    db $fd
    sbc a
    di
    ld e, $ff
    inc c
    ld a, e
    adc h
    push af
    adc d
    ld a, [c]
    adc l
    ld sp, hl

jr_050_693f:
    adc [hl]
    ld h, d
    sbc l
    db $fd
    ld [de], a
    xor $21
    call z, Call_050_5dc3
    ld b, e
    ld a, c

jr_050_694b:
    add a
    sub d
    xor $1c
    ld e, h
    ldh a, [$f0]
    ld l, l
    ldh [$37], a
    ld [$2c18], sp
    ld h, h
    cp b
    adc b
    db $ec
    inc a
    ld [c], a
    ld a, [hl]
    db $e4
    db $fc
    ld [$effa], a
    db $fd
    rst $18
    ld sp, hl
    ld d, d
    cp $d2
    cp $51
    rst $38

jr_050_696d:
    and h
    rst $38
    xor [hl]
    ei
    ld a, [hl]
    di
    ld c, a
    pop af
    add a

jr_050_6976:
    ld hl, sp-$79
    ld a, b
    adc $31
    rst $38
    inc b
    rst $38
    ld [$a85f], sp
    or a
    ld e, b
    ld d, e
    cp h
    sub b
    ld a, a
    jr c, @+$01

    ld b, a
    rst $00
    add c
    add c
    db $ec
    dec hl
    rrca
    ret nz

    ret nz

    ldh [rNR41], a
    jr nz, jr_050_6976

    ld b, b
    ret nz

    ld [hl], b
    ldh a, [rNR23]
    add sp, -$30
    ld [hl], b
    ldh a, [$30]
    ld b, e
    ld d, b
    or b
    dec b
    ret nc

    jr nc, jr_050_693f

    ld a, b
    sub h
    ld a, h
    ld b, e
    inc h
    db $fc
    add hl, bc
    ld b, h
    db $fc
    add h
    db $fc
    ld [$88f8], sp
    adc b
    ld [hl], b
    ld [hl], b
    adc c
    nop
    ld de, $0002
    ld bc, $8500
    nop
    scf
    ld a, [bc]

Jump_050_69c3:
jr_050_69c3:
    inc b
    ld b, $04
    dec b
    inc b
    rlca
    rrca
    nop
    db $10
    rlca
    inc c
    add l
    nop
    ld [hl], $00
    inc bc
    jp z, $e09a

    daa
    jr nz, jr_050_69f9

    ld d, b
    ld d, b
    jr nc, jr_050_696d

    sbc b
    adc b
    jr z, jr_050_69e9

    ld e, h
    inc b
    inc a
    inc b
    ld e, h
    inc b
    ld [hl], $0a

jr_050_69e9:
    ld a, d
    ld b, $b6
    ld a, [bc]
    ld a, e
    dec b
    push af
    dec bc
    db $eb
    dec d
    ld d, a
    xor e
    xor l
    ld e, a
    ld [hl], a
    and d

jr_050_69f9:
    bit 0, d
    add a
    add d
    cpl
    inc b

Jump_050_69ff:
    add e
    nop
    ld l, h
    dec d
    cp a
    ld b, e
    ld a, h
    add $78
    add d
    ld hl, sp+$0c
    db $fc
    rrca
    rst $30
    ld [$00ff], sp
    ld a, a
    add b
    cp c
    rst $00
    ld b, [hl]
    and $38
    ld hl, sp-$7b
    nop
    sbc d
    rrca
    inc bc
    ld [bc], a
    rrca
    inc c
    ld c, a
    ld d, c
    cp a
    and e
    cp a
    adc a
    rst $38
    sbc a
    rst $38
    cp a
    cp $3f
    ld l, c
    dec e
    ld h, b
    ld h, b
    jr nc, jr_050_69c3

    ldh a, [$90]
    ldh [rNR41], a
    ldh a, [$f0]
    ret c

    ld hl, sp-$48
    ld hl, sp-$2a
    or $bf
    jp hl


    ld a, a
    pop hl
    or [hl]
    ld [$eed2], a
    ld d, c
    rst $28
    xor h
    rst $38
    xor d
    rst $30
    add a
    ld bc, $8718
    nop
    jr nz, jr_050_6a62

    rlca
    rrca
    dec bc
    ld bc, $080d
    ld b, $04
    ld bc, $0202
    inc bc
    ld [bc], a
    ld [bc], a

jr_050_6a62:
    nop
    add e
    ld bc, $039d
    inc b
    inc bc
    inc b
    ld bc, $0224
    adc e
    nop
    ld b, h
    ldh [$27], a
    rst $38
    ld bc, $15eb
    ld d, e
    xor a
    and l
    ld e, a
    rla
    ld a, [c]
    rst $08
    jp nz, $823f

    rst $28
    inc [hl]
    rst $38
    nop
    rst $30
    nop
    ld h, a
    add e
    db $fc
    ld b, $f4
    inc b
    ld hl, sp+$1c
    ld l, b
    sub a
    rst $38
    nop
    ld e, a
    ld h, b
    ld l, [hl]
    ld [hl], c
    sbc [hl]
    xor $78
    ld hl, sp-$79
    nop
    sbc b
    add [hl]
    nop
    add b
    ld [$13e0], sp
    pop hl
    inc sp
    pop bc
    ld a, a
    inc bc
    ld a, h
    rrca
    rst $38
    ld [hl], h
    ld c, $07
    nop
    jr c, jr_050_6ab1

jr_050_6ab1:
    ld b, b
    nop
    ld b, d
    ld b, b
    ld a, a
    jr nc, jr_050_6af7

    inc c
    rrca
    inc bc
    inc bc
    db $ec
    ld [hl+], a
    ld a, [bc]
    ld bc, $0200
    nop
    ld b, $00
    dec c
    nop
    ld a, [de]
    db $10
    rra
    sbc l
    or c
    nop
    inc bc
    ld h, c
    dec d
    inc a
    nop
    ret nz

    nop
    ld [bc], a
    nop
    ld d, l
    nop
    xor d
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    ld a, a
    rrca
    ld c, $01
    add $c1
    dec e
    ld [bc], a
    ld bc, $0408
    jr nz, jr_050_6aff

    ld b, b

jr_050_6af0:
    ld d, l
    ld b, b
    ld l, e
    jr nz, jr_050_6b2a

    jr nz, jr_050_6b22

jr_050_6af7:
    db $10
    dec d
    db $10
    ld a, [de]
    ld [$086d], sp
    adc d

jr_050_6aff:
    inc b
    dec b
    inc b
    ld d, $02
    xor a
    ld bc, $a35f
    or c
    dec b
    inc bc
    rst $38
    inc e
    db $fc
    ldh [$e0], a
    ld [hl], l
    inc d
    ld a, $0e
    add c
    ld c, l
    nop
    inc sp
    nop
    ld b, b
    ld c, b
    ld c, b
    jr nz, jr_050_6b3e

    db $10
    sub b
    dec c
    ld c, a

jr_050_6b22:
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    call nz, $10e0

jr_050_6b2a:
    rst $38
    add b
    ld a, a
    ld [hl], b
    ccf
    ccf
    add c
    ld b, e
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld [$4600], a
    rst $38
    nop

jr_050_6b3e:
    ld b, l
    ld bc, $43fe
    inc bc
    db $fc
    add hl, bc
    ld a, e
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    add b
    add b
    cp h
    nop
    dec hl
    dec c
    add b
    ld h, b
    ld h, b
    jr jr_050_6af0

    ld e, h
    ld b, h
    ld c, [hl]
    ld b, d
    adc a
    add c
    rlca
    nop
    add a
    add a
    add $15
    inc bc
    db $fc
    inc c
    ldh a, [$30]
    ret nz

    ret nz

    ldh [$e0], a
    nop
    or b
    nop
    adc h
    nop
    add [hl]
    nop
    add c
    ld bc, $e080
    nop
    db $fc
    adc b
    db $e4
    inc d
    db $fc
    ld [bc], a
    ld hl, sp+$05
    ldh a, [$0a]
    or b
    push de
    ldh [$fa], a
    ret nz

    rst $38
    ld b, b
    ld a, a
    jr nz, jr_050_6bcc

    jr @+$21

jr_050_6b8f:
    ld b, $07
    ld bc, $20f8
    nop
    ld b, a
    ld bc, $8080
    ld b, l
    ret nz

    ld b, b
    add h
    ld bc, $0012
    ld bc, $0084
    ld b, [hl]
    inc b
    inc b
    inc b
    rlca
    ld [$430f], sp
    db $10
    rra
    jr jr_050_6b8f

    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    pop hl
    ccf
    ld sp, hl
    ld a, a
    add a
    adc a
    ld bc, $0004
    add d
    nop
    ld d, c
    nop
    xor e
    nop
    ld d, a
    nop

jr_050_6bc5:
    xor a
    nop

jr_050_6bc7:
    add h
    nop
    xor l
    inc bc
    rlca

jr_050_6bcc:
    rst $38
    jr c, jr_050_6bc7

    db $f4
    inc h
    nop
    ld [hl+], a
    ld h, c
    nop
    jr nc, @+$45

    ld [$0758], sp
    db $10
    or b
    db $10
    jr nc, jr_050_6bef

    ld [hl], b
    jr nz, jr_050_6c42

    ld b, e
    jr nz, jr_050_6bc5

    rst $00
    xor $01
    add b
    add b
    add a
    ld bc, $0712
    ret nz

jr_050_6bef:
    ret nz

    ldh a, [$30]
    inc a
    call z, $f20e
    and e
    ld bc, $b572
    nop
    ld d, b
    rlca
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$2308], sp
    db $10
    ld bc, $0c0c
    adc e
    nop
    ld d, h
    add l
    nop
    sub b
    inc bc
    ld b, e
    ld b, a
    ld [hl], c
    ld a, c
    inc hl
    ld hl, $1107
    ld de, $1010
    ld a, b
    ld a, b
    adc b
    adc b
    inc hl
    inc b
    ld bc, $0a0a
    and e
    add a
    dec b
    ld b, b
    ld b, b
    add e
    add e
    inc e
    inc e
    adc c
    nop
    or [hl]
    adc l
    nop
    ldh [$0b], a
    add l
    ld c, a
    db $10
    jr jr_050_6c7a

    ld h, b
    add b
    add b
    ldh [$e0], a
    rra
    rra
    dec h

jr_050_6c42:
    ld bc, $0200
    inc h
    add d
    inc hl
    ld b, h
    rlca
    ld a, h
    ld a, h
    add e
    add e
    inc a
    ld a, h
    ld [hl], e
    ld [hl], e
    adc l
    ld bc, $0f12
    add b
    or b
    add b
    adc h
    add b
    add [hl]
    add d
    add e
    add d
    add d
    ld h, c
    ld [hl], c
    dec c
    dec e
    inc bc
    inc bc
    adc e
    ld [bc], a
    ld b, d
    dec b
    sub b
    sub b
    ld h, b
    ld h, b
    ret nz

    ret nz

    and e
    adc e
    ld [bc], a
    jr @+$1a

    rlca
    add [hl]
    ld bc, $8979

jr_050_6c7a:
    ld bc, $0fb0
    ld b, b
    ld a, a
    jr nz, @+$81

    ld hl, $f97f
    rst $38
    adc a
    rst $38
    inc b
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld bc, $873d
    ld [bc], a
    ld c, b
    add e
    ld [bc], a
    ld a, [hl]
    inc bc
    add a
    add a
    jr c, jr_050_6cd0

    adc c
    ld [bc], a
    inc [hl]
    dec bc
    ret nz

    ret nz

    jr nc, jr_050_6cd0

    call z, $32cc
    ld [hl-], a
    ld c, $0e
    inc b
    inc b
    xor a
    ld [bc], a
    ld d, b
    add l
    nop
    ret nc

    ld bc, $5c5c
    add a
    nop
    ret c

    rst $38
    db $ec
    ld a, [hl-]
    db $10
    ld bc, $0603
    add hl, bc
    ld [$1001], sp
    ld [de], a
    db $10
    dec d
    db $10
    add hl, de
    db $10
    dec c
    ld [$080c], sp
    ld b, e
    ld b, $04
    jr jr_050_6cd1

    ld [bc], a
    inc bc

jr_050_6cd0:
    inc bc

jr_050_6cd1:
    ld b, $06
    inc c
    inc c
    rra
    inc d
    rra
    inc de
    ld e, $12
    inc c
    inc c
    ld [$080a], sp
    dec c
    inc b
    ld b, $02
    inc bc
    ld bc, $33f8
    xor l
    jr jr_050_6cec

    ld [bc], a

jr_050_6cec:
    ld [bc], a
    rlca
    inc b
    inc b
    dec bc
    dec bc
    inc c
    dec d
    db $10
    dec hl
    ld h, b
    rst $10
    add b
    db $fc
    inc bc
    ei
    inc b
    rst $30
    add hl, bc
    xor $12
    db $ec
    inc e
    ld b, l
    ld hl, sp+$08
    dec c
    db $fc
    inc b
    sbc $3e
    ld a, a
    rst $20
    rst $08
    db $e4
    rrca
    ld b, h
    ei
    ld c, e
    or b
    or c
    ld l, b
    ld [$00c0], sp
    and b
    nop
    ld d, b
    add b
    and b
    ld a, h
    ld a, [hl]
    add a
    di
    nop
    ld [bc], a
    ld [hl+], a
    inc bc
    dec de
    rlca
    rlca
    inc e
    rra
    ld b, e
    ld a, a
    ccf
    ccf
    dec e
    rra
    inc d
    rra
    ld l, $3f
    ld e, [hl]
    ld a, l
    ccf
    add hl, sp
    rra
    ld a, [de]
    dec c
    add hl, bc
    dec bc
    add hl, bc
    ld [$0008], sp
    inc b
    jp Jump_050_5f00


    ldh [rBGP], a
    rrca
    rrca
    ccf
    ld a, b
    add a
    add b
    cpl
    nop
    pop hl
    ld c, $c0
    ld bc, $00c0
    add b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ldh [rNR41], a
    ldh [$60], a
    and b
    and b
    add hl, de
    db $10
    rra
    db $10
    inc c
    dec bc
    rrca
    ld [$090e], sp
    ld e, $19
    dec h
    daa
    ld [de], a
    ld [de], a
    db $ec
    db $ec
    add a
    xor a
    ld bc, $4055
    ld [$3d38], a
    dec b
    rlca
    ld [bc], a
    ld [bc], a

Jump_050_6d80:
    inc e
    inc e
    scf
    ld a, h
    scf
    ld a, $7f
    ld hl, sp+$79
    ld l, [hl]
    ld a, a
    ld c, b
    db $fd
    adc $37
    scf
    ld h, e
    ld [$8484], sp
    ld c, d
    adc $f9
    rst $38
    ld a, h
    rst $38
    db $fd
    jr z, @+$01

    dec bc
    ld a, a
    db $dd
    ld a, a
    sbc b
    rst $38
    sub e
    rst $38
    ld b, $ec
    sbc l
    ld a, a
    nop
    ld b, e
    ld a, a
    add b
    inc d
    ld l, l
    ld a, d
    rst $38
    ld bc, $c7fc
    ldh a, [$7f]
    pop hl
    ld e, [hl]
    ld a, e
    add h
    ld [hl], c
    adc [hl]
    rst $28
    db $10
    ccf
    nop
    cpl
    nop
    ld e, a
    add h
    add e
    rlca
    cp a
    nop
    rst $38
    nop
    ld c, $f1
    pop af
    ld c, $45
    rst $38
    nop
    inc de
    ld a, a
    adc h
    or e
    jp nc, Jump_050_6161

jr_050_6dd8:
    adc a
    sbc a
    cp h
    rst $38
    ld [hl], b
    ld a, [$f570]
    cp $9e
    ld a, l
    rlca
    pop af
    rrca
    ld b, e
    ld a, [$070e]
    rst $38
    rrca
    cp $1e
    push hl
    daa
    jp Jump_050_69c3


    rlca
    db $10
    db $10
    or b
    or b
    ldh a, [$f0]
    db $f4
    db $f4
    dec h
    db $fc
    inc h
    ld hl, sp+$19
    ld a, b
    ldh a, [$50]
    ld hl, sp+$48
    cp b
    ld c, b
    db $fc
    ld e, h
    ld h, c
    rst $38
    or $fe
    ld a, h
    db $fc
    ld a, a
    cp a
    rst $30
    ld [$30c9], sp
    jr nc, jr_050_6dd8

    pop af
    nop
    cp $c5
    rst $10
    ld c, $00
    di
    inc c
    rst $28
    ld d, $d9
    add hl, hl
    xor b
    ld e, b
    ld e, b
    xor b
    ldh a, [rNR10]
    ret nc

    jr nc, jr_050_6e71

    ldh a, [rNR10]
    dec bc
    add sp, $68
    adc h
    adc h
    ld [hl], e
    ld [hl], e
    add $ed
    rlca
    ld d, a
    ld a, c
    ld sp, hl
    and l
    nop
    call c, $8584
    ld a, [bc]
    ld bc, $0a00
    nop
    dec d
    rlca
    daa
    jr c, jr_050_6e84

    ret nz

    ret nz

    db $ec
    dec hl
    ldh [$2f], a
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    jr nc, @-$2e

    adc b

jr_050_6e5b:
    jr c, jr_050_6eb9

    inc b
    cp a
    inc bc
    rst $38
    nop
    xor $11
    rst $30
    ld [$88f3], sp
    ld h, e
    ld d, b
    inc hl
    jr nz, jr_050_6e94

    jr nz, jr_050_6e76

    ld b, b
    ld b, [hl]

jr_050_6e71:
    ld b, c
    ld e, l
    ld e, [hl]
    ld h, c
    ld a, a

jr_050_6e76:
    di
    rst $18
    rra
    adc h
    sbc h
    adc b
    inc [hl]
    inc d
    rst $30
    inc d
    db $e3
    db $e3
    and e
    nop

jr_050_6e84:
    call nc, $000b
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    inc bc
    xor e
    inc a
    inc a
    ret nz

    ret nz

    db $ec
    dec a

jr_050_6e94:
    add e
    db $fd
    inc bc
    ld [hl], b
    sub b
    or b
    ld d, b
    ld b, e
    ret nc

    jr nc, jr_050_6ea2

    ld d, b
    or b
    ld h, b

jr_050_6ea2:
    and b
    ld b, l
    ldh [rNR41], a
    dec b
    ret nz

    ret nz

    ld h, b
    and b
    ldh a, [$90]
    add e
    ld bc, $09dc
    ld hl, sp-$68
    ld a, b
    ld l, b
    jr nc, @-$4e

    jr nz, @+$62

jr_050_6eb9:
    jr nz, jr_050_6e5b

    adc e

jr_050_6ebc:
    jp hl


    rst $38
    ld [hl], e
    inc hl
    ld bc, $0000
    ld b, h
    ld [bc], a
    inc bc
    call nz, $1288
    jr jr_050_6ed1

    ld h, $03
    ld hl, $4037
    dec bc

jr_050_6ed1:
    add b
    sbc [hl]
    add c
    ld hl, sp-$79
    ld b, b
    ld a, a
    jr c, @+$41

    ld b, $07
    dec h
    ld bc, $030b
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    ld b, $06
    dec b
    dec b
    ld b, $02
    inc bc
    res 6, d
    ldh [rWX], a
    ld bc, $0403
    inc c
    ld e, $10
    rlca
    inc h
    nop
    ld b, e
    ld d, b
    ld d, e
    inc b
    add a
    add a
    add h
    dec bc
    adc b
    ldh [rSVBK], a
    rst $00
    nop
    rrca
    nop
    rst $08
    nop
    ld a, h
    db $e3
    rra
    rra
    rlca
    rrca
    rla
    rra
    rst $20
    rst $38
    ld d, a
    xor a
    cpl
    rst $18
    dec e
    cp $28
    rst $28
    inc l
    rst $20
    scf
    db $e3
    add hl, sp
    ldh [$ba], a
    ld d, h
    ld a, h
    sub e
    and a
    ld e, c
    daa
    ret c

    and e
    inc e
    jr nc, jr_050_6ebc

    jr jr_050_6f36

    ld b, [hl]
    ld bc, $006a
    push de
    add b
    ld a, e

jr_050_6f36:
    ld [hl], b
    inc c
    rrca
    inc bc
    inc bc
    ld h, c
    ld e, $3f
    rst $38
    inc bc
    nop
    rlca
    nop
    daa
    jr jr_050_6f47

    rst $38

jr_050_6f47:
    and h
    ld e, h
    ld e, b
    xor b
    ld [de], a
    ld a, [c]
    sub b
    ld [hl], b
    ldh [rNR10], a
    ld a, b
    ld [$071b], sp
    ldh a, [rP1]
    adc h
    ld [hl], b
    ei
    db $fc
    cp $24
    rst $38
    ldh [$29], a
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    ld de, $cbf0
    jr c, @-$11

    jr jr_050_6f89

    ldh a, [rNR23]
    ldh a, [$f9]
    ld hl, sp+$7f
    rlca
    ld hl, sp-$79
    ld d, h
    rst $38
    add hl, hl
    cp $c2
    dec a

jr_050_6f7a:
    ld d, l
    xor d
    nop

jr_050_6f7d:
    rst $38
    ld d, h
    xor e
    xor b
    ld d, a
    ld b, c
    cp [hl]
    ld bc, $1eff
    cp $e0

jr_050_6f89:
    ldh [$a3], a
    nop
    ld d, c
    ld a, [bc]
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $82
    ld a, c
    ld b, a
    ld bc, $3f44
    jr nz, jr_050_6f7d

    inc l
    jr c, jr_050_6fc7

    push hl
    jp c, $fd02

    ret nz

    ccf
    ld h, b
    rra
    jr c, jr_050_6fb1

    adc e
    nop
    ld d, l
    add b
    adc d
    ldh [rTAC], a

jr_050_6fb1:
    ld hl, sp-$20
    rst $38
    ld hl, sp+$1f
    rst $10
    inc l
    ld l, c
    ld d, $80
    ccf
    add b
    ld a, a
    add c
    cp $01
    cp $c0
    rst $38
    dec d
    cp $68

jr_050_6fc7:
    cp a
    add b
    ld a, a
    nop
    ld b, h
    rst $38
    nop
    rlca
    ld a, b
    add a
    ld hl, sp+$07
    ldh a, [$8f]
    ld a, a
    ld a, a
    or l
    nop
    ld [bc], a
    ld bc, $40c0
    ld b, l
    ld b, b
    ret nz

    ld bc, $a060
    ld b, l
    ldh [rNR41], a
    inc bc
    ret nc

    jr nc, jr_050_6f7a

    ld [hl], b
    ld b, e
    db $10
    ldh a, [$03]
    ld [$88f8], sp
    ld a, b
    ld b, e
    call nz, $073c
    add [hl]
    ld a, d
    ld c, [hl]
    or d
    cp d

jr_050_6ffc:
    ld b, [hl]
    ld h, h
    sbc h
    ld b, e
    inc b
    db $fc
    dec bc
    ld c, $f2
    rla
    jp hl


    cpl
    pop de
    ld e, a
    and c
    ld l, $d6
    ld hl, sp-$08
    ld h, e
    ldh [$2f], a
    ld e, [hl]
    cp a
    rst $18
    add b
    and a
    ret nz

    sbc b
    rst $20
    nop
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $30
    inc b
    ei
    ld a, [hl+]
    push af
    inc h
    ei
    db $10
    rst $28
    or b
    ld e, a
    ld a, b
    sub a
    and h
    ld e, e
    ld h, $d9
    and e
    inc e
    and $1f
    pop bc
    ccf
    rlca
    rst $38

jr_050_7038:
    add hl, bc
    ld sp, hl
    db $10
    ldh a, [rNR11]
    ldh a, [$0b]
    ld hl, sp+$0d
    ld hl, sp-$7d
    nop
    ret nc

    ld [bc], a
    add hl, bc
    ld hl, sp+$07
    ld b, [hl]
    rst $38
    nop

jr_050_704c:
    dec bc
    add b
    ld a, a
    cpl
    ldh a, [$b5]
    ld a, [$fdba]
    xor c
    xor $5c
    rst $38
    ld b, e
    ld e, [hl]
    db $fd
    ld de, $fd2e
    inc a
    ei
    ld e, h
    ei
    jr c, jr_050_6ffc

    call nc, Call_050_680b
    sub a
    or b
    ld c, a
    jr nz, jr_050_704c

    and b
    rra
    adc e
    nop

jr_050_7071:
    or b

jr_050_7072:
    inc de
    db $fc
    nop
    rst $20
    jr jr_050_7038

    ccf
    inc bc
    rst $38
    adc a
    ld a, a
    add hl, sp
    ld sp, hl
    jr nc, jr_050_7071

    ld [hl], c
    ldh a, [$7b]
    ld hl, sp+$3d
    ld hl, sp-$77
    nop
    ld d, b
    dec bc
    inc de
    inc l
    inc l
    ld d, e
    ld e, b
    ld h, a
    jr nz, jr_050_7072

    add a
    db $fc
    dec de
    ld hl, sp-$77
    nop
    ld h, [hl]
    adc c
    nop
    and b
    ld c, $00
    rst $38
    and e
    ld e, h
    ld d, l
    xor d
    ld a, [bc]
    push af
    add l
    ld a, d
    ldh a, [$1f]
    ld a, b
    rrca
    rra
    add [hl]
    nop
    cp c
    adc c
    nop
    ldh a, [$0b]
    ld a, [hl]
    add d
    cp c
    ld b, a
    pop bc
    ccf
    ld b, b
    cp a
    add b
    ld a, a
    ld e, b
    and a
    adc c
    ld bc, $ff06
    db $ec
    add hl, hl
    dec c
    ld bc, $0403
    inc c
    nop
    inc d
    db $10
    inc de
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    db $ec
    inc a
    ld h, $01
    nop
    nop
    inc h
    ld [bc], a
    ldh [rNR50], a
    inc c
    ld c, $1f

jr_050_70e2:
    inc de
    ld a, [hl+]
    jr nz, jr_050_714b

    ldh [rNR12], a
    ld de, $1110
    ld [$091a], sp
    ld a, [$1af9]
    pop af
    ld [de], a
    pop hl
    jr nz, jr_050_70e2

    and b
    ld a, [hl]
    ld [hl], b
    ld a, $3c
    ld e, $1a
    ld c, $0a
    dec c
    dec bc
    add hl, bc
    dec bc
    ld [bc], a
    ld [hl+], a
    ld [de], a
    add hl, bc
    inc de
    ld [de], a
    ld de, $1313
    ld d, $03
    dec h
    inc hl
    inc h
    ld b, e
    daa
    jr z, jr_050_7118

    rra
    inc de
    inc c

jr_050_7118:
    inc c
    ld l, e
    ldh [rVBK], a
    jr nc, jr_050_714e

    ld e, b
    ld c, b
    ld c, h
    sub h
    call c, $9ea4
    and d
    sbc a
    and c
    rra
    ld hl, $221f
    ccf
    dec b
    rra
    ld a, [hl+]
    rra
    dec [hl]
    ld e, $2a
    inc a
    inc a
    ret


    ret nz

    add hl, de
    nop
    sbc a
    ld h, b
    rlca
    add b
    ld a, e
    inc a
    db $fd
    ld a, h
    jp z, $c8ce

    adc $f0
    cp $a0
    cp [hl]
    ret nz

jr_050_714b:
    cp $e5
    ld a, h

jr_050_714e:
    ld a, e
    jr c, @+$09

    nop
    dec hl
    nop
    rla
    nop
    dec bc
    jr nz, jr_050_716e

    jr nz, jr_050_71c5

    db $10
    push af
    jr c, @+$01

    ld l, h
    rst $38
    rst $10
    rst $38
    xor e
    db $fc
    ld e, h
    ldh a, [$30]
    ret nz

    ld b, b
    add b
    add b
    cp a
    nop

jr_050_716e:
    ld d, a
    ldh [$30], a
    ldh [$60], a
    rst $38
    sbc a
    ld hl, sp-$70
    db $f4
    ld h, b
    ld [$f420], a
    ld d, e
    di
    ld e, h
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    rrca
    ld sp, hl
    jr jr_050_714b

    nop
    rst $08
    ld bc, $03ff
    cp $05
    db $fd
    ld b, $fa
    dec c
    db $fd
    dec bc
    rst $38
    rrca
    cp a
    ld c, $9f
    dec b
    rst $00
    ld b, d
    db $e3
    inc hl
    db $fc
    ld e, a
    ldh a, [rSCX]
    ld b, b
    ldh [$03], a
    ldh [$0e], a
    ld e, $00
    ld hl, sp+$24
    nop
    ld [hl], l
    dec de
    rlca
    rrca
    ldh a, [$f0]
    nop
    inc bc
    inc bc
    dec c
    rrca
    ld [hl-], a
    ccf
    push bc
    rst $38
    dec bc
    rst $38
    ld d, $ff
    xor l
    rst $38
    ld d, l
    cp $aa

jr_050_71c5:
    cp $da
    db $fc
    or h
    db $fc
    ld [hl], h
    ld [hl+], a
    ld hl, sp+$0c
    ld a, b
    ld d, h
    xor h
    cp h
    ld a, h
    db $fc
    db $f4
    cp $fa
    cp $aa
    cp $5a
    add e
    sbc e
    dec c
    rst $38
    ld [bc], a
    ccf
    jp nz, $310f

    inc bc
    dec c
    nop
    inc bc
    ldh a, [$f3]
    rlca
    rrca
    db $f4
    inc hl
    nop
    ld d, e
    nop
    ld b, b
    inc hl
    ret nz

    ld [bc], a
    ld b, b
    ret nz

    ret nz

    and e
    nop
    db $76
    ld bc, $8080
    db $f4

Jump_050_71ff:
    dec h
    nop
    ld d, l
    dec h
    ret nz

    ld bc, $8080
    cp b
    db $d3
    ld [$0402], sp
    inc b
    inc c
    add hl, bc
    rlca
    inc b
    inc bc
    ld [bc], a
    adc c
    ld bc, $8570
    nop
    add b
    dec b
    ld a, [bc]
    jr nz, jr_050_7282

    ld h, b
    sub d
    sub c
    add e
    nop
    adc h
    add hl, bc
    inc de
    dec d
    inc de
    inc d
    rla
    db $10
    rla
    add hl, de
    ld d, $1a
    adc l
    nop
    cp d
    ld de, $1c08
    inc b
    ld a, [hl+]
    ld c, $42
    ld c, [hl]
    ld d, d
    ld c, $91
    adc a
    sub c
    sbc a
    add c
    rra
    ld [hl+], a
    rra
    dec h
    add l
    nop
    jp c, $0185

    ld h, b
    ld bc, $5efd
    add e
    ld bc, $0268
    ld hl, sp-$08
    inc bc
    ret z

    ld bc, $1896
    rra
    ccf
    ret nz

    ret nz

    nop
    ld bc, $0e01
    rrca
    ld [hl], c
    ld a, a
    add d
    rst $38
    dec d
    rst $38
    xor e
    rst $38
    ld d, a
    cp $ae
    db $fc
    call c, $bcfc
    ld hl, sp-$3d
    ld bc, $06b5
    ld a, b
    ld e, b
    cp b
    cp b
    ld a, h
    db $fc
    db $ec
    call nz, $018d
    ld d, [hl]
    cp $c3

jr_050_7282:
    sub a
    ld a, [bc]
    dec bc
    ld a, a
    add l
    rra
    ld [hl+], a
    inc bc
    dec b
    ret nz

    pop bc
    add hl, de
    ccf
    or a
    nop
    inc d
    ld a, [bc]
    ld b, b
    jr nc, jr_050_72c6

    ret c

    ld hl, sp-$48
    ldh a, [$78]
    ldh [$f0], a
    ret nz

    jp z, $3801

    adc e
    nop
    ldh [$0d], a
    push bc
    ld b, h
    or d
    or d
    ld [hl-], a
    jr nc, jr_050_72ae

    nop
    ld b, d

jr_050_72ae:
    ld b, b
    add d
    add b
    push bc
    ld b, h
    add h
    nop
    ld a, [$9f8d]
    dec bc
    ld a, h
    add [hl]
    adc $06
    adc $0e

Jump_050_72bf:
    cp $1e
    cp [hl]
    cp [hl]
    cp $fd
    add [hl]

jr_050_72c6:
    nop
    ld sp, hl
    rst $38
    db $ec
    dec hl

jr_050_72cb:
    ld a, [de]
    ld [bc], a
    inc bc
    inc b
    inc b
    nop
    ld [$1010], sp
    add hl, de
    rra
    ld a, $21
    ld [hl], a
    ld c, b
    ld l, l
    ld d, d
    jp c, $d7a5

    xor b
    ld d, l
    ld l, d
    dec [hl]
    ld a, [hl-]
    rrca
    ld c, $02
    inc hl
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $8301
    add e
    db $ec
    dec l
    inc b
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    jp $02b5


    inc bc
    inc bc
    ld [bc], a
    add h
    cp l
    ld [hl+], a
    ld bc, $2be0
    ld [bc], a
    rlca
    add hl, bc
    add hl, bc
    db $10
    jr nc, jr_050_72cb

    pop de
    ld bc, $0209
    rlc d
    dec hl
    rlca
    rra
    ld [$900f], sp
    sbc a
    ldh a, [$7f]
    sub a
    ld a, a
    ldh [$3f], a
    ld hl, sp+$3f
    and $3f
    push hl
    ccf
    add sp, $3f
    ld l, b
    cp a
    sbc $7f
    pop hl
    ld a, a
    sbc $df
    pop bc
    ld b, c
    dec h
    add b
    dec b
    adc b
    sbc b
    add h
    and [hl]
    and c
    and c
    inc hl
    ld h, b
    dec c
    jr nc, jr_050_736d

    ccf
    ccf
    ld h, $3f
    ld a, e
    ld a, a
    adc a
    cp a
    or $fe
    ld a, b
    ld a, b
    add a
    db $e4
    ldh [rNR41], a
    ld [bc], a
    ld b, $08
    add hl, bc
    nop
    ld de, $3f30
    ret nz

    ldh a, [rTAC]
    rlca
    daa
    jr c, @-$03

    db $e4
    rst $38
    ld e, h
    rst $38
    ld h, b
    rst $38
    add h
    db $fc
    rst $18
    ld [hl], b
    ret z

    or b
    db $ec
    ld e, a
    ldh a, [$ab]
    db $fd

jr_050_736d:
    ld e, a
    ld [hl+], a
    rst $38

Call_050_7370:
    dec c
    ld a, a
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    ld de, $f1ff
    rst $38
    rrca
    rst $38
    ld b, e
    ld [bc], a
    cp $00
    ld [c], a
    ld b, h
    cp $12
    nop
    call nc, $fc46
    inc h
    dec bc
    call nz, $04fc
    db $fc
    ei
    ei
    nop
    jr jr_050_7396

jr_050_7396:
    inc b
    nop
    inc bc
    call nz, Call_050_5300
    ld [$4282], sp
    ld b, d
    ld b, h
    ld b, h
    cp b
    cp b
    ret nz

    ret nz

    inc hl
    add b
    nop
    nop
    xor d
    nop
    ld d, c
    ldh [rNR42], a
    ldh a, [$f8]
    ld b, $a6
    ld bc, $0011
    stop
    cp $00
    inc bc
    ld hl, sp-$08
    swap a
    cp l
    ld b, e
    ld a, l
    di
    rst $38
    add hl, bc
    rst $38
    ld bc, $f91f
    dec c
    inc de
    rrca
    or e
    ei
    rlca
    sbc a
    ld a, a
    dec h
    rst $38
    dec b
    db $fc
    rst $38
    ld a, [$92ff]
    sbc a
    ld b, e
    ld de, $031f
    ld e, $df
    ld [$44cf], sp
    ld [$430f], sp
    rst $08
    add hl, bc
    jr jr_050_73f9

    add hl, bc
    rrca
    dec b
    rlca
    dec b
    add a
    call nz, $e4c7
    rst $20
    inc e
    sbc a
    inc bc
    sub e
    nop

jr_050_73f9:
    sub b
    nop
    sub b
    ld h, b
    ldh [$98], a
    sbc b
    inc b
    inc b
    ld h, c
    nop
    ld [bc], a
    sbc d
    nop
    ld c, a
    ld bc, $8080
    and e
    nop
    ld b, [hl]
    add hl, bc
    ld h, b
    ld h, b
    db $10
    db $10
    ret nc

    ldh a, [$f0]
    sub b
    ret nc

    xor b
    ld b, e
    cp b
    ret z

    ld d, $f0
    ret nc

    ldh [$e0], a
    ret nz

    ret nz

    call c, $a3fc
    db $e3
    and b
    ldh [rNR10], a
    pop af
    ld [$04fa], sp
    cp $02
    cp $3d
    rst $38
    ret nz

    ld b, h
    rst $38
    nop
    ld a, [bc]
    ld b, $ff
    add hl, sp
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    add sp, $44
    rst $38
    inc b
    and e
    ld bc, $0314
    rrca
    rst $38
    ldh a, [$f0]
    and [hl]
    rlc d
    ld b, $30
    jr c, jr_050_7478

    ld b, b
    dec c
    and b
    and b
    ld a, a
    ld a, a
    inc l
    ccf
    dec sp
    ccf
    rra
    ccf
    ld c, $0f
    inc bc
    inc bc
    db $f4
    add hl, hl
    nop
    ld e, b
    rla
    ld b, b
    ldh [rNR10], a
    stop
    ld [$3808], sp
    inc b
    call nz, $0707
    adc b
    adc b

jr_050_7478:
    sbc h
    sbc a
    ld a, a
    rst $28
    ld [hl], a
    rst $08
    ld l, a
    db $d3
    cp l
    rst $20
    ld b, e
    cp a
    db $e4
    ld b, l
    sbc a
    di
    ld b, $2f
    db $ed
    db $e3
    db $e3
    inc hl
    inc hl
    ld [bc], a
    inc h
    ld [de], a
    ld bc, $9292
    dec h
    ld d, l
    rrca
    ld h, l
    ld h, l
    push bc
    push bc
    add h
    adc l
    adc d

jr_050_749f:
    adc d
    jp z, $2aca

    ld l, d
    add sp, -$16
    call nz, $ecc4
    dec [hl]
    add hl, bc
    ret nz

    ret nz

    jr nc, jr_050_749f

    ld [$84f8], sp
    db $fc
    ret nz

    db $fc
    ld h, $e2
    db $10
    and d
    ld a, h
    sbc h
    ld a, h
    call nz, $bcf4
    ld hl, sp-$78
    ld hl, sp+$68
    ldh a, [$90]
    ldh [$e0], a
    add b
    add b
    cp c
    ld bc, $ffb0
    ld h, e
    ld bc, $0101
    daa
    inc bc
    ld bc, $0301
    inc hl
    ld bc, $1007
    ld sp, $4d04
    dec a
    inc sp
    rrca
    inc c
    dec h
    ld [bc], a
    rlca
    ld c, $0e
    ld a, $71
    rrca
    adc a
    ld [hl], b
    ld [hl], b
    ld h, c
    dec c
    inc bc
    inc bc
    inc b
    inc b
    ld [$0a08], sp
    ld [$0a08], sp
    ld b, $05
    inc bc
    inc bc
    ld [hl], a
    ldh [$3d], a
    inc b
    inc b
    adc b
    jp z, $faea

    ld hl, sp-$06
    dec e
    ei
    rrca
    ld a, [$fa0e]
    rrca
    ld a, [$f296]
    jp $83c2


    add c
    scf
    jr nc, jr_050_7567

    ld c, b
    sub e
    sub h
    sub a
    sub h
    rla
    sub h
    ld b, a
    inc d
    ccf
    nop
    ccf
    jr nz, @-$60

    sbc a
    ld b, a
    ld d, h
    rst $30
    add sp, $1c
    rra
    inc de
    inc de
    ld d, e
    dec bc
    ld a, $4d
    sub $39
    cp $e1
    cp a
    jp Jump_050_657d


    add hl, de
    add hl, de
    ld h, l
    inc bc
    rra
    ccf
    ld a, b
    ld b, a
    ld b, e
    and b
    rst $38
    ld bc, $7f7f
    ld h, e
    add hl, de
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    push hl
    push hl
    dec d
    dec d
    ei
    dec c
    dec bc
    dec c
    rst $38
    dec c
    rrca
    add hl, bc
    cp $09
    rra
    db $10
    rst $38
    ldh [rIE], a
    ld b, $f9
    add hl, bc
    ld b, l
    db $f4

jr_050_7567:
    inc d
    inc e
    ldh a, [rTIMA]
    rst $38
    nop
    rst $38
    ld bc, $fe7f
    rst $30
    inc d
    rst $30
    ld [$e09b], sp
    dec b
    add b
    dec bc
    add b
    dec b
    nop
    dec bc
    nop
    ld d, a
    nop
    xor a

jr_050_7582:
    nop
    rst $38
    nop
    ld a, a
    ld b, e
    add b
    rst $38
    ld [$1fc0], sp
    jr c, @+$39

    rrca
    ld a, b
    sbc b
    ldh [$e0], a
    ld h, h
    ld d, $01
    ld [bc], a
    ld b, $08
    ld [$3014], sp
    ld a, b
    db $f4
    ei
    db $f4
    set 7, h
    add l
    cp $83
    rst $38
    rst $20
    ld a, [hl]
    rst $30
    ld e, $ff
    ld c, $43
    rst $38
    inc b
    dec d
    ld sp, hl
    ld [$b8c9], sp
    pop de
    sub b
    di
    db $10
    db $e3
    jr nz, jr_050_7582

    ld b, c
    rrca
    add c
    rra
    inc bc
    ld a, $07
    ld sp, hl
    add hl, bc
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    dec b
    ldh a, [rNR10]
    pop af
    ld de, $0efe
    ld b, h
    rst $38
    ld [$0d0a], sp
    rst $20
    inc bc
    add c
    ld h, b
    ldh a, [$c3]
    add hl, sp
    ld [hl], $08
    rrca
    and e
    pop de
    inc de
    ret nz

    ret nz

    db $10
    jr nc, jr_050_75ef

    ld [$040c], sp
    inc c
    add h
    ld a, h
    add h
    ld l, h

jr_050_75ef:
    sub h
    xor b
    ld e, b
    ld hl, sp-$18
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    add [hl]
    or a
    ldh [rNR43], a
    ld [hl], b
    ret z

    ld c, b
    db $f4
    db $fc
    add d
    cp $c2
    cp $f1
    ccf
    ret


    rst $08
    ld sp, $11ff
    rst $38
    pop hl
    rst $38
    ld [hl+], a
    ld a, $02
    ld a, $42
    ld a, [hl]
    call nc, $a88c
    ld [$1050], sp
    ldh [$60], a
    add b
    add b
    jp $ef00


    rlca
    add sp, $18
    add h
    ld a, h
    ld d, h
    db $fc
    ld hl, sp-$08
    add h
    nop
    ld [hl], b
    ld a, [bc]
    jr nz, jr_050_7647

    ld [hl], $8f
    sbc a
    ld b, a
    ld c, a
    db $ed
    di
    jr jr_050_765a

    add l
    nop
    ret nz

    add hl, bc
    db $fd
    inc bc
    or $f7
    db $fd
    cp $f3
    db $fc

jr_050_7647:
    rrca
    ldh a, [$8a]
    nop
    or b

jr_050_764c:
    nop
    nop
    ld b, l
    rst $38
    nop
    inc bc
    rst $18
    jr nc, jr_050_764c

    rrca
    adc c
    nop
    add $65

jr_050_765a:
    dec d
    ld b, $0e
    ld e, $3f
    ld [hl], e
    rst $38
    db $e3
    rst $38
    jp $87ff


    rst $38
    add [hl]
    rst $38
    xor $7e
    db $fc
    ld e, $fc
    inc c
    ld hl, sp+$0c
    ld b, e
    db $fc
    inc b
    add hl, de
    rst $18
    cp a
    jp $81c1


    add b
    nop
    and b
    pop bc
    xor b
    sub l
    ld c, d
    db $ed
    ld d, d
    pop af
    ccf
    rst $38
    ld c, a
    rst $38
    ld b, c
    cp [hl]
    ld b, d
    db $fc
    ld [hl+], a
    ret c

    inc a
    add l
    ld bc, $042a
    ldh [$e0], a
    jr jr_050_76af

    db $e4
    add l
    ld bc, $0065
    cp a
    add e
    ld bc, $196c
    rst $08
    cp a
    rst $08
    add b
    rst $38
    rra
    rst $28
    ccf
    jp $8141


    add b
    add b
    and b

jr_050_76af:
    pop bc
    xor b
    pop de
    ld c, d
    push hl
    ld d, d
    di
    dec a
    cp $2e
    db $fc
    inc e
    add l
    xor a
    add a
    nop
    ld h, b
    dec bc
    rrca
    nop
    rra
    nop
    ccf
    nop
    cp a
    add h
    ld a, a
    adc b
    ccf
    ld [hl], b
    adc e
    nop
    ld [hl], h
    rst $38
    ld l, e
    dec c
    ccf
    rra
    ld b, b
    nop
    ld e, h
    ld b, b
    ccf
    jr nz, jr_050_76fb

    jr jr_050_76e5

    ld b, $01
    ld bc, $51ec
    inc bc
    pop af

jr_050_76e5:
    pop hl
    ld c, $0f
    ld h, c
    ld bc, $00f1
    ld b, h
    rst $38
    nop
    ld [$3fc0], sp
    jr nc, @+$11

    inc c
    inc b
    rlca
    ld [bc], a
    inc bc
    ldh a, [rNR41]

jr_050_76fb:
    jp hl


    ld [hl+], a
    ld bc, $0711
    rlca
    rra
    ld [$0023], sp
    ld b, e
    nop
    ld h, a
    ld b, b
    ld a, a
    ld b, b
    dec h
    jr nz, jr_050_7728

    jr jr_050_7717

    rlca
    ld l, a
    dec bc
    inc bc
    rra
    ld b, b
    ld h, e

jr_050_7717:
    add b
    rst $00
    nop
    cp $80
    ld a, h
    ldh [rNR32], a
    ld b, e
    ldh a, [$0c]
    inc de
    ld a, [c]
    inc c
    pop hl
    ld e, $80

jr_050_7728:
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    add b
    add a
    ld h, b
    ld l, a
    db $10
    rra
    ld [$470f], sp
    inc b
    rlca
    ld b, e
    ld [$e00f], sp
    ld hl, $1300
    nop
    ld hl, $4140
    nop
    add c
    add b
    add e
    nop
    add a
    nop
    ld c, c
    nop
    and b
    sub b
    ldh [$b9], a
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr jr_050_77d9

    ld b, $ff
    ld bc, $03ff
    db $fc
    db $fc
    xor a
    nop
    sub h
    rlca
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    inc e
    ld [bc], a
    ld c, $43
    pop bc
    rst $00
    rlca
    nop
    rlca
    nop
    rlca
    adc b
    rlca
    ldh a, [rIF]
    ld b, e
    ld bc, $05ff
    ld [bc], a
    cp $04
    db $fc
    jr @-$06

    xor e
    db $db
    ld [bc], a
    inc c
    db $fc
    inc bc
    ld d, b
    rst $38
    nop
    inc bc
    jp $e63f


    inc e
    ld b, h
    rst $38
    ld [$1008], sp
    cp $10
    db $fc
    ret z

    cp h
    cp h
    inc bc
    inc bc
    cp [hl]
    nop
    add a
    nop
    add b
    push de
    add b
    ld bc, $0001
    inc hl
    ld [bc], a
    dec bc
    dec b
    inc b
    push bc
    call nz, $e82b
    rra
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fd
    ld b, e
    ld [bc], a
    cp $08
    pop hl
    rst $38
    dec e
    rra
    rra
    inc bc
    ccf
    nop
    rst $38
    add l
    nop
    sbc $06
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    rst $38
    db $ec
    dec hl
    dec c
    inc c
    inc c
    ld [hl-], a
    ld [de], a
    ld c, [hl]
    ld [bc], a
    sbc [hl]

jr_050_77d9:
    ld [bc], a
    inc a
    nop
    ld a, h
    inc b
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    jp $5101


    xor e
    ld bc, $0578
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    inc bc
    or b
    jr nc, @-$3e

    ret nz

    sub l
    nop
    sub b
    jp $b101


    adc c
    nop
    and [hl]

Call_050_7804:
    add e
    nop
    ld a, [c]
    dec c
    nop
    jr jr_050_780b

jr_050_780b:
    jr nz, jr_050_784d

    ld b, b
    nop
    ret nz

    add b
    and b
    nop
    reti


    nop
    ldh a, [$84]
    ld bc, $0008
    ret nz

    add e
    ld bc, $000e
    rst $38
    add e
    ld bc, $0413
    nop
    ld a, a
    nop

jr_050_7827:
    rst $38
    nop
    adc c
    ld bc, $0316
    jr jr_050_7827

    ld b, $fe
    add d
    sub h
    ld b, e
    ld a, a
    nop
    nop
    ld a, a
    add a
    nop
    ld [hl], e
    ld b, e

jr_050_783c:
    ldh [$1f], a
    ld de, $0ff3
    cp $04
    rst $38
    ld [$f8ff], sp
    rst $38

jr_050_7848:
    jr nc, jr_050_7848

    db $10
    db $ec
    ld l, b

jr_050_784d:
    add h
    add h
    inc bc
    inc bc
    adc c
    ld bc, $0baa
    add d
    add d
    ld h, l
    db $e4
    dec d
    db $f4
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $45
    ld bc, $03ff
    pop hl
    rst $38
    ld e, $1e
    add l
    ld bc, $61ca
    ld b, $1c
    inc e
    inc hl
    inc hl
    jr c, jr_050_7894

    ld e, $aa
    ld [bc], a
    add hl, de
    ld [$8080], sp
    ld [hl], b
    ld h, b
    dec c
    dec c
    jp nz, $f003

    and e
    ld [c], a
    ld [$7f80], sp
    ld h, b
    rra
    db $10
    rrca
    inc c
    rlca
    rlca
    adc c
    nop
    ld a, [hl]
    inc c
    rlca
    rra

jr_050_7894:
    ld h, b
    ld a, b
    add b
    rst $20
    nop
    cp $00
    ld a, h
    jr nz, @+$1e

    or b
    add h
    nop
    push de
    inc bc
    pop af
    ld c, $e0
    rra
    add h
    ld [bc], a
    sbc h
    ld b, $df
    add b
    rst $20
    ld h, b
    ld [hl], c
    db $10
    jr jr_050_783c

    nop
    ld [$018d], a
    inc h
    inc bc
    ld bc, $e107
    rst $20
    add a
    ld bc, $0136
    nop
    rst $38
    add a
    ld bc, $003e
    jr c, @-$74

    ld bc, $8347
    ld bc, $8b94
    ld bc, $ff96
    ld h, [hl]
    inc d
    ld bc, $0706
    ld [$0c0d], sp
    ld [de], a
    ld c, $11
    ld b, $21
    nop
    jr nz, jr_050_78e2

jr_050_78e2:
    jr nz, @+$1a

    jr jr_050_78ea

    inc b
    ld [bc], a
    ld [bc], a
    ld [hl+], a

jr_050_78ea:
    ld bc, $030c
    inc bc
    ld b, $06
    add hl, bc
    rlca
    add hl, bc
    inc d
    ld [de], a
    ld [de], a
    ld d, $02
    ld [hl+], a
    ld b, e
    rrca
    ld hl, $3e1c
    ld [hl-], a
    jr z, jr_050_792b

    dec c
    cpl
    inc b
    ld e, $09
    dec c
    add hl, bc
    dec bc
    dec bc
    ld [$0605], sp
    inc b
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    inc bc
    nop
    dec b
    nop
    ld b, $00
    call nz, $15c5
    inc c
    inc c
    ld a, [hl]
    ld [hl], d
    add d
    sbc [hl]
    ld bc, $0063
    sub c
    db $f4
    ld [$0ef7], sp

jr_050_792b:
    di
    inc sp
    sub a
    ld [hl], a

Call_050_792f:
    rra
    rra
    rlca
    ld c, $83
    sbc d
    ldh [$31], a
    add b
    add b
    dec [hl]
    ret nz

    xor d
    ld bc, $0057
    dec hl
    nop
    rla
    inc bc
    dec b
    inc b
    ld a, [de]
    add hl, de
    nop
    ld h, $41
    ld b, d
    ld [c], a
    pop hl
    adc [hl]
    sub c
    and [hl]
    xor a
    ld l, c
    ld l, c
    ld [de], a
    ld [hl], $80
    nop
    ret nz

    add b
    ldh a, [$60]
    ccf
    ld hl, sp-$41
    ld c, a
    rst $20
    sbc a

jr_050_7961:
    call nz, $38fc
    jr jr_050_79c6

    ld h, b
    add b

jr_050_7968:
    add b
    ld l, c
    rrca
    add b
    add b
    ld b, b
    ld b, b
    jr c, @-$46

    adc a
    ld b, a
    cp a
    ld b, b
    db $ed
    ld e, $fb
    dec c
    cp $02
    ld b, e
    db $fc
    inc b
    ldh [$33], a
    db $f4
    inc c
    call z, $3634
    jp z, $0af6

    sbc e
    push hl
    add hl, hl
    rla
    ld [hl], d
    adc l
    scf
    ld c, b
    rst $18
    jr z, jr_050_7961

    add hl, sp
    pop de
    ld a, $bf
    ld h, a
    sub a
    ret c

    cpl
    jr nz, jr_050_79cc

    jr nc, jr_050_79ef

    ld c, a
    ld d, a
    ld c, b
    ld c, a
    ld [hl], b
    ldh [$2f], a
    rst $28
    ldh a, [$0b]
    inc e
    inc bc
    rlca
    ld c, $09
    ld bc, $0012
    inc d
    rlca
    rrca
    ld l, a
    inc bc
    add b
    add b
    add b
    add b
    ld [hl], e
    inc hl
    add b
    ldh [rNR42], a
    ld b, c
    pop bc
    rst $00
    ld b, [hl]
    cp c
    ld a, [hl]
    ld d, d

jr_050_79c6:
    cp l
    sub l
    ld a, d
    ld a, [c]
    dec a
    sbc b

jr_050_79cc:
    ld a, a
    ld c, b
    cp a
    ld c, c
    cp a
    xor [hl]
    ld e, [hl]
    ld l, b
    sbc b
    ret z

    jr c, jr_050_7968

    ld [hl], b
    or b
    ret nc

Jump_050_79db:
    ldh [$a0], a
    ret nz

    ld h, b
    add b
    ret nz

    db $ec
    ld h, $00
    db $10
    ld b, e
    ld [$1328], sp
    ld e, h
    ld b, h
    db $fc
    add h
    db $fc
    inc h

jr_050_79ef:
    ld hl, sp+$18
    add sp, $18
    ld d, b
    or b
    sub b
    ldh a, [$a0]

jr_050_79f8:
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld a, d
    ld a, [bc]
    ld b, $09
    add hl, bc
    dec c
    inc c
    rlca
    ld a, [bc]
    inc bc
    inc b
    rlca
    dec b
    ld [hl+], a
    ld b, $01
    rlca
    rlca
    ld [hl+], a
    dec b
    inc hl
    ld [bc], a
    ld l, e
    ldh [rNR43], a
    adc a
    rst $18
    ld b, e
    db $fc
    add h
    inc hl
    rrca
    ld b, b
    and d
    ld e, l
    inc c
    sub e
    ccf
    inc bc
    call $beb5
    adc a
    pop af
    sub d
    ld a, [hl]
    ld c, h
    dec a
    ld b, $87
    add h
    ld b, d
    ld b, e
    ld h, e
    ld b, e
    ccf
    inc a
    ld a, [hl+]
    nop
    dec d
    adc d
    nop
    rst $38
    add l
    nop
    adc d
    adc d
    ldh [$e0], a
    ld a, [hl+]
    ld b, $1b
    add hl, de
    db $eb
    rst $20
    db $fd
    rla
    scf
    call $2ed2
    ld a, [$7a86]
    ld b, [hl]
    or h
    inc l
    inc d
    db $fc
    inc l
    inc e
    ld c, $1a
    and [hl]
    ld e, $cf
    dec h
    dec [hl]
    rst $08
    ld [$9b15], a
    db $ec
    rst $20
    ld a, b
    ld c, $31
    ld de, $1f1e
    rlca
    rla
    jr jr_050_79f8

    nop
    sub $01
    inc b
    and e
    add l
    rst $28
    rla
    cpl
    db $10
    rst $00
    cp b
    cp b
    add a
    rst $38
    adc h
    ld [hl], e
    ld d, e
    jr c, jr_050_7abf

    ret nz

    ret z

    ld [hl], b
    ld a, b
    ld d, h
    ld d, c
    dec sp
    inc h
    rra
    ld e, $15
    nop
    add l
    rst $08
    add hl, de
    ld a, d
    add [hl]
    cp d
    ld b, [hl]
    db $f4
    inc c
    db $f4
    inc a
    call c, $aeec
    jp c, $f67e

    xor a
    dec e
    dec l
    sbc a
    ld l, $d5
    db $db
    inc h
    cp e
    ld c, h
    or $f9
    add e
    nop
    db $10
    inc b
    db $10
    db $10
    inc c
    ld [$8606], sp
    nop
    add hl, de
    rlca
    rst $38
    ld e, $9d
    ld h, e
    rra
    nop

jr_050_7abf:
    rlca
    nop
    add a
    nop
    ld l, b
    ld h, h
    nop
    jr nz, jr_050_7b0b

    db $10
    ld d, b
    dec b
    cp b
    adc b
    ld hl, sp+$08
    ld hl, sp+$28
    rst $38
    ld h, a
    inc hl
    ld bc, $0222
    ld bc, $0506
    ld b, [hl]
    inc b
    rlca

jr_050_7add:
    ld b, e
    ld bc, $2303
    ld [bc], a
    ld de, $0405
    dec a
    ld a, [hl-]
    ld c, e
    ld c, b
    dec sp
    add hl, sp
    ld [bc], a
    dec b
    rlca
    rlca
    add hl, de
    add hl, de
    ld h, $26
    jr jr_050_7b0d

    db $ec
    inc hl
    and h
    rrc l
    ld b, b
    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    rst $38
    ld h, e
    cp a
    sbc h
    cp a
    adc b
    rst $38
    ld b, e
    ld b, b
    ccf

jr_050_7b0b:
    ld d, $01

jr_050_7b0d:
    ld a, [hl]
    ld b, $fc
    ld c, $72
    adc d
    cp $03
    rst $38
    nop
    cp a
    ret nz

    ccf
    jr c, jr_050_7b5b

    jr nc, jr_050_7add

    or b
    ld a, a
    ld h, b
    dec e
    ld e, $43
    rrca
    ld [$0603], sp
    dec b
    rlca
    inc b
    ld b, e
    inc bc
    ld [bc], a
    nop
    ld bc, HeaderCGBFlag
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $ad01
    call $2fe0
    rlca
    ld b, $09
    ld [$1013], sp
    ccf
    inc hl

jr_050_7b43:
    ld a, a
    ld c, a

jr_050_7b45:
    ld a, b
    ld e, a
    ldh a, [$bf]
    ldh [$bf], a
    ld h, b
    cp a
    ldh [$1f], a
    ld sp, hl
    ld b, $ff
    add b
    ld a, a
    nop
    ccf
    rlca
    jr c, jr_050_7b71

    ld h, a
    add a

jr_050_7b5b:
    rst $38
    jr jr_050_7b45

    jr jr_050_7b43

    rlca
    ret c

    jr c, @+$01

    rlca
    cp $01
    db $fc
    inc bc
    cp $01
    ld b, e
    rst $38
    nop
    rrca
    ld a, [hl]
    pop bc

jr_050_7b71:
    rst $18
    jr c, @+$01

    jr @+$01

    inc e
    ld d, e
    or d
    ld d, d
    ld d, e
    and h
    db $e4
    inc bc
    inc bc
    adc h
    nop
    ld c, e
    ldh [$2a], a

jr_050_7b84:
    add b
    ld hl, sp+$78
    cp $07
    rst $28
    pop af
    cp $f6
    db $fc
    db $e4
    ld a, b
    add sp, $78
    ret z

    ld [hl], b
    ret nc

    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ret nz

    pop bc
    ld b, c
    ld [c], a
    ld h, $ff
    sbc b
    rst $38

jr_050_7ba2:
    inc b
    rst $20

jr_050_7ba4:
    ld a, [de]
    db $e3
    dec e
    pop af
    dec c
    ld a, [$fd84]
    nop
    ld a, [hl]
    add b
    ld b, e
    ccf
    ret nz

    ld b, e
    db $fc
    inc bc
    rrca
    ld l, a
    sub b
    ld a, a
    sub b
    rst $38
    jr c, jr_050_7ba4

    ld a, $e1
    ld hl, $e161
    and b
    and b
    ret nz

    ret nz

    db $ec
    inc h
    ld bc, $c080
    ld b, e
    ld b, b
    add b
    ld [bc], a
    add b
    nop
    add b
    add [hl]
    nop
    ld d, d
    ld c, $70
    add sp, $48
    ld hl, sp+$28
    ldh a, [$30]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_050_7ba2

    jr nc, jr_050_7b84

    ld d, b
    ld b, e
    ld hl, sp+$08
    dec b
    and b
    ret c

    ld [$f028], sp
    ldh a, [$b1]
    nop
    ld b, [hl]
    jp $9100


    dec c
    rlca
    ld b, $0b
    ld a, [bc]
    rlca
    ld b, $01
    ld bc, $0303
    dec b
    dec b
    ld [bc], a
    ld b, $69
    jr jr_050_7c17

    jr nc, @+$2e

    inc l
    ld e, h
    ld b, h
    db $76
    ld e, d
    xor [hl]
    xor d
    rst $20
    and l
    rst $08
    db $e3
    rst $18
    add b
    sbc a

jr_050_7c17:
    add b
    rra
    nop
    ld a, a
    rlca
    cp a
    ld b, b
    rst $38
    jp $bf00


    db $10
    add b
    ld a, a
    ld b, b
    ccf
    jr c, jr_050_7ca8

    ld [hl], b
    rst $38
    ldh [$2f], a
    jr nz, jr_050_7c4e

    db $10
    rrca
    db $10
    rrca
    ld [$008b], sp
    add h
    adc c
    rst $18
    ldh [rNR50], a
    ld b, $06
    add hl, bc
    ld [$131f], sp
    ld a, $27
    ld hl, sp-$11
    cp b
    ld c, a
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, a
    add c
    ld a, a

jr_050_7c4e:
    ret nz

    rst $18
    jr nz, @+$01

    inc c
    db $e3
    inc bc
    db $fc
    inc e
    rst $20
    dec de
    pop hl
    ld c, $f3
    inc de
    db $fc
    inc c
    rst $38
    add [hl]
    nop
    jp hl


    inc b
    ld h, b
    ld h, b
    and b
    and b
    ld [hl], b
    add e
    nop
    ld e, l
    inc c
    call nz, $e4fc
    ld a, [hl]
    ld a, [c]
    ld a, a
    pop af
    ld a, a
    rst $30
    ld hl, sp-$38
    ldh a, [$30]
    add a
    ld bc, $030c
    ld a, a
    ld b, h
    rst $20
    sbc d
    add a
    ld bc, $8518
    rst $38

jr_050_7c87:
    dec b
    sbc a
    and b
    rst $38
    ret nz

    ld e, a
    ld b, b
    add e
    rst $38
    ldh [$2f], a
    dec b
    inc b
    dec c
    ld a, [bc]
    dec sp
    jr c, jr_050_7ce4

    ld c, c
    ld a, [hl-]
    dec a
    daa
    daa
    add hl, de
    add hl, de
    ld b, $06
    ccf
    nop
    ccf
    rra
    ld h, b
    add b

jr_050_7ca8:
    rst $38
    rra
    ldh [rNR23], a
    rst $20
    rlca
    rst $18
    jr c, @+$01

    nop
    ld [c], a
    ld h, $ff
    jr @+$01

    add h
    rst $20
    ld a, [de]
    db $e3
    sbc l
    pop af
    dec c
    ld a, [$fd04]
    nop
    adc d
    nop
    ld [hl], b
    inc b
    jr nc, jr_050_7c87

    and b
    rst $38
    ret nz

    rst $38
    ld h, l
    add hl, bc
    inc c
    inc c
    ld [de], a
    ld e, $12
    ld d, $11
    inc de
    nop
    dec hl
    ld b, h
    jr nz, jr_050_7d04

    ld d, $24
    nop
    inc h
    db $10
    ld [de], a
    ld de, $2811

jr_050_7ce4:
    jr z, jr_050_7d06

    jr z, @+$12

    inc d
    ld [$080a], sp
    inc c
    db $10
    db $10
    inc c
    inc c
    inc bc
    inc bc
    db $ec
    dec l
    dec e
    ld bc, $0201
    inc bc
    inc e
    rra
    cp c
    xor a
    ld [hl], d
    sbc $75
    call c, Call_050_792f

jr_050_7d04:
    cp $f6

jr_050_7d06:
    ld a, d
    ld a, [bc]
    cp $cf
    ld a, h
    db $e4
    ld a, h
    ld d, h
    ld a, h
    ld l, h
    ld a, b
    ld c, b
    jr nc, @+$32

    inc hl
    ld b, b
    inc b
    add b
    ret nz

    nop
    add b
    and b
    ld [hl+], a
    xor c
    add hl, bc
    ld h, h
    ld h, h
    inc a
    inc h
    rra
    dec de
    dec b
    ld b, $03
    inc bc
    cp a
    rst $08
    ld e, $70
    ldh a, [$9c]
    adc h
    ld a, d
    ld b, $cc
    inc a
    ldh a, [$f0]
    adc h
    db $fc
    ld b, d
    ld a, [hl]
    pop hl
    rst $38
    ld a, [c]
    rst $38
    ld [hl], c
    ld a, [hl]
    ld h, c
    ld a, [hl]
    pop bc
    cp $01
    ld a, [hl]
    nop
    ld a, a

jr_050_7d48:
    ld b, b
    ccf
    nop
    ld b, h
    ccf
    jr nz, jr_050_7d66

    jr c, jr_050_7d68

    or h
    sub e
    db $e3
    ldh [$c5], a
    nop
    xor d
    nop
    ld d, l
    nop
    rst $18
    ldh [$5f], a
    ld a, a
    db $e4
    sbc h
    sbc b
    add sp, -$48
    xor b
    ld d, b

jr_050_7d66:
    ld d, b
    sub e

jr_050_7d68:
    nop
    ld c, b
    add e
    nop
    ld e, d
    ldh [$37], a
    dec b
    ld b, $0a
    inc c
    inc d
    jr jr_050_7d9e

    jr nc, jr_050_7d48

    pop hl
    and b
    ret nz

    ret nz

    nop
    and b
    nop
    ret nc

    nop
    xor b
    nop
    ret nc

    nop
    add sp, $00
    inc [hl]
    ret nz

    ld a, d
    pop hl
    inc e
    db $fc
    rlca
    rst $38
    inc bc

jr_050_7d90:
    cp $03
    rst $38
    inc bc
    cp $c1
    dec a
    or $0e
    ld a, [$7c1e]
    db $e4
    ld a, h

jr_050_7d9e:
    ld b, h
    db $ec
    sub h
    or d
    ld a, [$aaaa]
    ld b, h
    ld b, h
    ld l, c
    and e
    nop
    ld b, $e0
    inc sp
    ld b, h
    ld h, h
    add h
    call nz, $8848
    inc b
    adc h
    sub d
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld b, d
    ld b, h
    ld b, h
    adc b
    adc b
    inc c
    inc e
    ld [de], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1818], sp
    jr c, jr_050_7d90

    call nz, $0404
    jr jr_050_7e09

    db $fc
    db $f4
    cp $c2
    db $fc
    inc b
    ld hl, sp+$78
    ldh [$e0], a
    ldh a, [rNR10]
    ret z

    adc b
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ldh [$27], a
    jr nc, jr_050_7e16

    ld l, b
    ld e, b
    sbc b
    adc b
    sub h
    adc h
    inc c
    add [hl]
    ld b, d
    ld b, a
    ld b, l
    ld b, e
    dec hl
    ld h, c
    inc d
    sub c
    dec bc
    adc b
    dec c
    ld b, [hl]
    ld b, a
    ld b, e
    inc sp
    ld hl, $5817
    ld a, a
    ld b, h
    rla
    dec sp
    add hl, sp
    cpl
    ld [hl], d
    ld e, [hl]
    ld [hl], l

jr_050_7e09:
    ld e, h
    xor a
    ld sp, hl
    add a
    nop
    ld l, b
    adc c
    nop
    ld d, h
    add hl, bc
    dec b
    ld b, $1a

jr_050_7e16:
    inc e
    db $e4
    ld hl, sp-$67
    pop hl
    ld [hl], b
    add b
    call nz, $1801
    ld b, $01
    call nc, $fa00
    ret nz

    ccf
    di
    ld l, c
    inc b
    jr @+$1a

    jr c, jr_050_7e52

    inc h
    inc hl
    ld b, h
    dec b
    add h
    add h
    adc [hl]
    adc b
    add hl, bc
    ld bc, $1122
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld b, b
    ld b, d
    adc e
    nop
    ld a, [c]
    jp $8f00


    ld b, e
    inc b
    rlca
    dec b
    add hl, bc

jr_050_7e4a:
    rrca
    dec bc
    ld c, $15
    ld d, $43
    rla
    inc e

jr_050_7e52:
    dec b
    rrca
    add hl, bc
    rla
    ld a, [de]
    cpl
    ld [hl-], a
    ld b, e
    cpl
    dec [hl]
    ld bc, $1e1e
    ld h, l
    rlca
    db $fc
    call nc, $ec7c
    ld hl, sp+$48
    ldh a, [$b0]
    ld [hl+], a
    ret nz

    add h
    nop
    ld a, e
    inc d

jr_050_7e6f:
    ld [hl], h
    ld a, a
    jr c, jr_050_7ef2

    jr nz, jr_050_7ea4

    ld b, b
    ld e, a
    add b
    cp a
    add c
    rst $38
    ld b, [hl]
    ld a, a
    ld a, [hl-]
    ccf
    inc h
    ccf
    inc a
    rla
    or a

Call_050_7e84:
    adc d
    nop
    push de
    ld h, a
    ldh [rNR42], a
    ld h, b
    ld h, b
    sbc b
    sbc b
    inc b
    and h
    nop
    ld d, d
    ld bc, $00e9
    push af
    nop
    ld [$de00], a
    add b
    cp h
    inc b
    ld a, l
    inc b
    rst $38
    ld [$11ff], sp
    rst $38

jr_050_7ea4:
    ld h, d
    rst $38
    and d
    rst $38
    dec h
    db $fd
    ld sp, hl
    dec e
    add l
    ld bc, $a62a
    ld [bc], a
    ld b, $22
    ld b, b
    ld a, [bc]
    jr c, jr_050_7e6f

    ld a, h
    db $e4
    ld a, $e2
    db $fc
    sub h
    ld a, h
    ld l, h
    jr nc, jr_050_7ee3

    jr nz, jr_050_7e4a

    nop
    ld a, b
    rst $38
    db $ec
    ld b, d
    inc hl
    ld bc, $0244
    inc bc
    nop
    nop
    ld [hl+], a
    inc b
    nop
    nop
    ld [hl+], a
    ld [$1f0b], sp
    db $10
    dec d
    ld a, [de]
    ld a, [hl+]
    dec [hl]
    ld d, l
    ld l, d
    adc d
    push af
    add b
    rst $38
    db $ec

jr_050_7ee3:
    dec h
    ld bc, $0101
    adc b
    call nz, $0310
    rlca
    rlca
    ld c, $0c
    jr jr_050_7f01

    inc [hl]

jr_050_7ef2:
    jr nz, jr_050_7f2e

    ld b, b
    ld [hl], l
    ld b, b
    ld a, [$fd80]
    add b
    ld b, l
    rst $38
    nop
    inc de
    cp $01

jr_050_7f01:
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, b
    rlca
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $c3fe
    sub b
    sub l
    adc $05
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$8308], sp
    push bc
    ld [bc], a
    ld l, d
    ld b, b
    push af
    ld b, e
    add b
    rst $38
    ld [bc], a
    nop
    add a
    ld a, b
    add e
    xor l
    dec b

jr_050_7f2e:
    rra
    cp $7f
    pop hl
    inc bc
    nop
    ld b, e
    ld bc, $0e00
    inc bc
    nop
    rrca
    nop
    ld e, a
    nop
    cp d
    dec b
    ld [hl], h
    dec bc
    add sp, $17
    ret nz

    ccf
    nop
    ld c, [hl]
    rst $38
    nop
    ld bc, $e31c
    ld b, e
    cp $01
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    ld l, [hl]
    db $10
    inc bc
    inc c
    inc e
    jr nz, jr_050_7fbc

    add b
    add b
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld d, b
    rst $38
    nop
    ld c, $c0
    or b
    ld a, a
    ret z

    ccf
    and h
    ld e, a
    jp nc, $a32f

jr_050_7f76:
    ld e, l
    ld b, e
    cp h
    add e
    ld a, h
    push bc
    nop
    xor c
    ld bc, $f906
    ld b, l
    rrca
    ldh a, [rNR10]
    rlca
    ld hl, sp+$00
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$17
    ld hl, sp+$13
    db $fc
    ld hl, $20fe
    adc [hl]
    nop
    ld e, a
    rlca
    ldh [$e0], a
    inc e
    inc e
    rrca
    inc bc
    ccf
    nop
    ld d, d
    rst $38
    nop
    nop
    inc bc
    ld b, e
    db $fc
    rlca
    dec bc
    pop hl
    rra

jr_050_7fad:
    ld bc, $02ff
    cp $04
    db $fc
    jr c, jr_050_7fad

    ret nz

    ret nz

    and e
    nop
    add h
    ld b, e
    ret nz

jr_050_7fbc:
    ld b, b
    ld de, $e020
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    add h
    ld a, h
    add d
    ld a, [hl]
    dec a
    rst $38
    rst $38
    jp $00f0


    xor c
    cp a
    ld bc, $807f
    ld [hl], e
    ld b, $c0
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rLYC]
    ld [$45f8], sp
    inc b
    db $fc
    ld [bc], a
    db $e4
    ld e, b
    ret c

    jp nz, $00ca

    add b
    db $f4
    inc hl
    nop
    ld h, h
    dec c
    ld h, b
    ld h, b
    db $10
    jr jr_050_7f76

    inc b
    ldh [rSC], a
    ld a, [$fd02]
    ld bc, $01ff
    rst $38
