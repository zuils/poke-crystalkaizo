; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $331f
    ccf
    inc a
    ccf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$34
    db $fc
    inc a
    db $fc
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld e, $19
    dec sp
    scf
    ld a, [hl]
    ld c, c
    ld a, c
    ld c, [hl]
    ccf
    ccf
    inc de
    rra
    ld c, $0e
    db $fc
    ld c, h
    ld a, b
    sbc b
    call c, Call_030_7eec
    sub d
    sbc [hl]
    ld [hl], d
    db $fc
    db $fc
    ret z

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, @+$41

    dec sp
    inc a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    call c, $fe3c
    ld a, [$f2fe]
    ccf
    ccf
    dec de
    rla
    cpl
    inc a
    ld [hl], h
    ld e, a
    ld a, a
    ld e, h
    ccf
    ccf
    inc de
    rra
    ld c, $0e
    db $fc
    db $fc
    ret c

    add sp, -$0c
    inc a
    ld l, $fa
    cp $3a
    db $fc
    db $fc
    ret z

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr jr_030_40a7

    jr c, @+$41

    ccf
    ccf
    rra
    inc d
    rra
    inc d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$1c
    db $ec
    ld a, $c2
    adc h
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec b

jr_030_40a7:
    rlca
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    rrca
    rlca
    rlca
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp-$38
    ret z

    ld hl, sp-$08
    ld c, b
    ldh a, [rSVBK]
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $331f
    ccf
    inc a
    ccf
    ld a, a
    ld d, b
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$34
    db $fc
    inc a
    db $fc
    cp $0a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    scf
    add hl, de
    ld e, $0e
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld a, h
    sbc h
    db $f4
    db $fc
    ld hl, sp+$48
    ld a, b
    ret z

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, @+$41

    dec sp
    inc a
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    call c, $fe3c
    ld a, [$4f7f]
    ld a, a
    ld a, a
    ld a, e
    ld d, a
    ccf
    inc a
    inc e
    rra
    rrca
    inc c
    dec bc
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    db $fc
    ret c

    ld hl, sp-$04
    inc h
    inc a
    db $e4
    ld hl, sp+$38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr jr_030_4169

    jr c, jr_030_418b

    ccf
    ccf
    rra
    inc d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$1c
    db $ec
    ld a, $c2
    adc h
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc e

jr_030_4169:
    rra
    daa
    ld a, $13
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld a, b
    add sp, -$08
    sbc b
    db $f4
    sbc h
    ld h, h
    db $fc
    jr @+$1a

    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $331f
    ccf
    inc a

jr_030_418b:
    ccf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$34
    db $fc
    inc a
    db $fc
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    inc sp
    ld a, $0e
    rrca
    inc bc
    ld [bc], a
    ld bc, $fc01
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $f2
    db $fc
    ld a, h
    ld c, b
    ld hl, sp-$10
    ld [hl], b
    add b
    add b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, @+$41

    dec sp
    inc a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    call c, $fe3c
    ld a, [$f2fe]
    ccf
    ccf
    dec sp
    scf
    ld a, a
    ld e, h
    ld [hl], h
    ld a, a
    ccf
    inc a
    dec de
    rla
    rrca
    ld c, $01
    ld bc, $fcfc
    call c, $feec
    ld a, [hl-]
    ld l, $fe
    db $fc
    inc a
    ret c

    add sp, -$10
    ld [hl], b
    add b
    add b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, jr_030_4249

    ccf
    ccf
    rra
    inc d
    rra
    inc d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$1c
    db $ec
    ld a, $c2
    adc h
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    db $10
    ccf
    inc a
    ccf
    inc sp
    ld a, a
    ld d, e
    cp h
    rst $38
    rst $38
    cp e
    ld a, h
    ld b, h
    jr c, jr_030_4268

    ldh a, [rNR10]
    ld hl, sp+$68
    db $fc
    db $ec
    cp $f2
    ld e, a
    db $fd
    rst $38
    db $dd
    ld a, $22
    inc e
    inc e
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    add hl, de

jr_030_4249:
    rra
    ld e, $1f
    ccf
    jr z, jr_030_428e

    ld hl, $f0f0
    ld [$04f8], sp
    db $fc
    call nz, $e6fc
    cp $1e
    cp $ff
    dec b
    rst $38
    ld hl, $393f
    ccf
    inc a
    ld a, a
    ld c, a
    ld a, a
    ld c, a

jr_030_4268:
    ccf
    ld a, $1b
    ld d, $0e
    rrca
    ld bc, $fe01
    ld h, $3e
    adc $fe
    ld a, [c]
    cp $f2
    call z, $f87c
    ld a, b

Call_030_427c:
    ld b, b
    ret nz

    add b
    add b
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    jr jr_030_42a9

    dec e
    ld e, $3f
    cpl

jr_030_428e:
    ccf
    daa
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld b, $fe
    xor $1e
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rra
    rra
    dec [hl]
    dec sp
    ccf
    ld l, $3e
    ccf
    dec de

jr_030_42a9:
    ld d, $0f
    rrca
    ld [bc], a
    inc bc
    ld bc, $fe01
    cp $ee
    or $ff
    dec e
    rla
    rst $38
    cp $1e
    ld hl, sp-$08
    ld e, b
    add sp, -$50
    or b
    rrca
    rrca
    db $10
    rra
    jr nz, jr_030_4305

    jr nz, jr_030_4307

    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
    ccf
    add hl, hl
    ccf
    add hl, hl
    ret nz

    ret nz

    jr nz, @-$1e

jr_030_42d4:
    db $10
    ldh a, [$38]
    ret c

    ld a, h
    add h
    jr jr_030_42d4

    ld hl, sp-$08
    ldh a, [$30]
    ccf
    jr nz, jr_030_4322

    inc a
    ccf
    inc sp
    ld a, a
    ld d, e
    rst $38
    cp a
    cp $bb
    ld [hl], l
    ld c, l
    jr c, jr_030_4328

    ldh [rNR41], a
    ldh a, [$d0]
    db $fc
    call c, $e2fe
    rst $38
    db $dd
    ccf
    db $fd
    ld a, [$1ce6]
    inc e
    inc bc
    inc bc
    rrca
    rrca
    rra

jr_030_4305:
    rra
    rra

jr_030_4307:
    rra
    ccf
    scf
    ld a, a
    ld d, e
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $ec
    cp $ca
    cp $02
    or $4a
    ccf
    inc sp

jr_030_4322:
    ld c, $0d
    rra
    dec d
    rra
    inc d

jr_030_4328:
    dec c
    ld c, $13
    rra
    ld de, $0e1f
    ld c, $fc
    call z, $b070
    ld hl, sp-$58
    ld hl, sp+$28
    ldh a, [$30]
    ret z

    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld e, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $fa
    dec sp
    scf
    inc a
    cpl
    ccf
    dec hl
    rra
    jr jr_030_4378

    rrca
    rla
    rra
    ld de, $0e1f
    ld c, $dc
    db $ec
    inc a
    db $f4
    db $fc
    call nc, $18f8

jr_030_4378:
    ldh a, [$f0]
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    add hl, sp
    rra
    db $10
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    ld a, h
    sbc h
    rra
    inc de
    ld c, $0d
    rra
    dec d
    rra
    inc d
    dec c
    ld c, $13
    rra
    ld de, $0e1f
    ld c, $f8
    ret z

    ld [hl], b
    or b
    ld hl, sp-$58
    ld hl, sp+$28
    ldh a, [$30]
    ret z

    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_43c4:
    db $10
    rra
    ld hl, $233f
    ld a, $4f
    ld a, h
    ld e, a
    ld [hl], b
    ld e, a
    db $76
    ret nz

    ret nz

    jr nc, jr_030_43c4

    ld [$84f8], sp
    db $fc
    call nz, $f27c
    ld a, $fa
    ld c, $fa
    ld l, [hl]
    ld e, a
    ld [hl], d
    ld l, $39
    ccf
    scf
    ld a, l
    ld c, e
    ld a, c
    ld c, a
    ccf
    ccf
    dec de
    rla
    ld c, $0e
    ld a, [$744e]
    sbc h
    db $fc
    db $ec
    cp [hl]
    jp nc, $f29e

    db $fc
    db $fc
    ret c

    add sp, $70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_4404:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_030_4449

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    ret nz

    jr nc, jr_030_4404

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $48
    ld a, a
    jr z, jr_030_4463

    ld [hl], h
    ld a, a
    ld a, a
    ld e, a
    jr c, jr_030_4469

    ld e, $1f
    rla
    rra
    ld c, $0e
    ld [de], a
    cp $14
    db $fc
    ld l, $fe
    cp $fa
    inc e
    db $fc
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr z, jr_030_4487

    inc [hl]

jr_030_4449:
    ccf
    ld a, [hl+]
    scf
    rra
    rla
    rra
    inc d
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $82
    cp $ca
    ld a, [hl]
    rra
    db $10
    dec bc

jr_030_4463:
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc

jr_030_4469:
    inc bc
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    jp z, $e47e

    inc a
    ld hl, sp-$08
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_4486:
    db $10

jr_030_4487:
    rra
    ld hl, $233f
    ld a, $4f
    ld a, h
    ld e, a
    ld [hl], b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_4486

    ld [$84f8], sp
    db $fc
    call nz, $f27c
    ld a, $fa
    ld c, $5f
    db $76
    ld e, a
    ld [hl], d
    ld l, $39
    ccf
    scf
    add hl, bc
    rrca
    ld c, $0f
    dec bc
    rrca
    rlca
    rlca
    ld a, [$fa6e]
    ld c, [hl]
    ld [hl], h
    sbc h
    db $fc
    db $fc
    ld hl, sp-$38
    ld a, b
    ret z

    or b
    or b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_44c6:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_030_450b

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_44c6

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $40
    ld a, a
    jr nz, jr_030_4523

    inc [hl]
    ccf
    ld [hl], h
    ld c, a
    ld a, e
    ld c, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    cp $06
    cp $2e
    ld a, [$fc2c]
    ret c

    ld hl, sp-$10
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr z, jr_030_4549

    inc [hl]

jr_030_450b:
    ccf
    ld a, [hl+]
    scf
    rra
    rla
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $82
    cp $1f
    inc d
    rra

jr_030_4523:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc [hl]
    cpl
    inc de
    rra
    ld c, $0e
    jp z, $ca7e

    ld a, [hl]
    db $e4
    inc a
    ld hl, sp-$08
    ld hl, sp-$68
    db $f4
    sbc h
    db $f4
    db $ec
    jr jr_030_4558

    rlca
    rlca
    ccf
    jr c, jr_030_4564

    ld d, $1f
    add hl, de
    ccf

jr_030_4549:
    jr nc, jr_030_45c6

    ld d, h
    ld a, [hl]
    ld b, e
    ld l, a
    ld d, d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp+$18

jr_030_4558:
    db $fc
    inc c
    sbc $2a
    ld a, [hl]
    jp nz, Jump_030_4af6

    ccf
    jr nc, jr_030_45e1

    ld l, c

jr_030_4564:
    rst $38
    sub a
    rst $38
    sub e
    ld a, [hl]
    ld [hl], e
    ccf
    inc hl
    rra
    rra
    ld a, $3e
    db $fc
    inc c
    ld a, [hl]
    sub [hl]
    rst $38
    jp hl


    rst $38
    ret


    ld a, [hl]
    adc $fc
    call nz, $f8f8
    ld a, h
    ld a, h
    rlca
    rlca
    rrca
    ld [$101f], sp
    rra
    db $10
    ccf
    jr nc, jr_030_460a

    ld d, b
    ld a, a
    ld c, b
    ld l, a
    ld d, h
    ldh [$e0], a
    db $fc
    inc e
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    cp $12
    or $2a
    dec a
    inc sp
    ld a, a
    ld a, b
    ei
    or a
    rst $38
    or b
    ld a, a
    ld h, b
    dec a
    inc hl
    rra
    rra
    ld a, $3e
    cp h
    call z, $1efe
    rst $18
    db $ed
    rst $38
    dec c
    cp $06
    cp h
    call nz, $f8f8
    ld a, h
    ld a, h
    rlca
    rlca
    ccf
    jr c, jr_030_4644

    ld b, b

jr_030_45c6:
    ccf
    cpl
    ccf
    jr nc, jr_030_45e8

    ld [de], a
    rla
    inc e
    rra
    inc d
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$78
    ld hl, sp+$48
    cp b
    ld c, b
    rra

jr_030_45e1:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca

jr_030_45e8:
    dec b
    rlca
    rlca
    ld b, $07
    rlca
    rrca
    rrca
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp-$38
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ccf
    jr c, jr_030_4626

    ld d, $1f
    add hl, de

jr_030_460a:
    ccf
    jr nc, jr_030_4688

    ld d, h
    ld a, [hl]
    ld b, e
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp+$18
    db $fc
    inc c
    sbc $2a
    ld a, [hl]
    jp nz, $526f

    ccf
    jr nc, jr_030_46a3

    ld l, c

jr_030_4626:
    ld a, a
    ld d, a
    ld a, $23
    ccf
    daa
    rra
    rra
    rlca
    rlca
    or $4a
    db $fc
    inc c
    db $76
    sbc d
    cp $fa
    ld a, h
    db $e4
    db $fc
    db $e4
    ret c

    ret c

    add b
    add b
    nop
    nop
    rlca
    rlca

jr_030_4644:
    rrca
    ld [$101f], sp
    rra
    db $10
    ccf
    jr nc, jr_030_46cc

    ld d, b
    ld a, a
    ld c, b
    nop
    nop
    ldh [$e0], a
    db $fc
    inc e
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    cp $12
    ld l, a
    ld d, h
    dec a
    inc sp
    ld a, a
    ld e, b
    ld a, e
    ld [hl], a
    ccf
    jr nc, jr_030_468a

    db $10
    ld e, $1f
    rrca
    rrca
    or $2a
    cp h
    call z, $1efe
    rst $18
    jp hl


    rst $38
    add hl, bc
    cp $0e
    or b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ccf
    jr c, jr_030_4706

    ld b, b

jr_030_4688:
    ccf
    cpl

jr_030_468a:
    ccf
    jr nc, jr_030_46aa

    ld [de], a
    rla
    inc e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$78
    ld hl, sp+$48
    rra
    inc d
    rra

jr_030_46a3:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca

jr_030_46aa:
    inc a
    ccf
    rra
    rra
    ld c, $0e
    cp b
    ld c, b
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp-$18
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    db $fc
    jr c, jr_030_46f8

    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    dec sp
    inc a
    ccf
    scf

jr_030_46cc:
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$24
    inc a
    db $fc
    db $ec
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    add hl, sp
    ccf
    ld d, $1f
    ld de, $0e1f
    ld c, $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $f2

jr_030_46f8:
    sbc h
    db $fc
    ld l, b
    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra

jr_030_4706:
    db $10
    rra
    jr nc, jr_030_4749

    jr c, @+$41

    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc e
    db $fc
    cp $fa
    cp $f2
    ccf
    inc sp
    inc a
    ccf
    ld a, e
    ld e, a
    ld a, c
    ld e, [hl]
    inc a
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    call z, $fc3c
    sbc $fa
    sbc [hl]
    ld a, d
    inc a
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr c, jr_030_477f

    ld a, h

jr_030_4749:
    ld b, e
    ld sp, $1f3f
    inc d
    rra
    inc d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra

jr_030_4761:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc b

jr_030_476b:
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    add sp, $78
    ret z

    ld hl, sp-$18
    jr c, jr_030_4761

    jr c, jr_030_476b

    ldh a, [rNR41]
    ldh [$c0], a

jr_030_477f:
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    dec sp
    inc a
    ccf
    ccf
    ld a, a
    ld d, b
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$24
    inc a
    db $fc
    db $fc
    cp $0a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    dec de
    rra
    ld c, $0f
    add hl, bc
    rrca
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, $c878
    or b
    or b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, jr_030_480b

    jr c, @+$41

    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc e
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, h
    ld e, a
    dec sp
    ccf
    add hl, de
    ld e, $0c
    rrca
    dec bc
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    call z, $fc3c
    sbc $f2
    sbc [hl]
    ld [hl], d
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr c, jr_030_4841

    ld a, h

jr_030_480b:
    ld b, e
    ld sp, $1f3f
    inc d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    add sp, $78
    add sp, -$08
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_030_4858

    inc bc

jr_030_4841:
    inc bc
    ld a, h
    ld a, a

jr_030_4844:
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    ld a, l
    ld e, a
    ld a, a
    ld d, b
    ld l, a
    ld d, d
    ret nz

    ret nz

    jr nc, jr_030_4844

    ld [$44f8], sp
    db $fc

jr_030_4858:
    call nz, $fefc
    ld a, [hl-]
    cp $0a
    or $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, e
    ld c, l
    dec a
    dec sp
    rra
    ld de, $1f17
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    sbc $b2
    cp h
    call c, $88f8
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_030_48c7

    jr nz, jr_030_48c9

    ld [hl], h
    ld e, a
    ld a, b
    ld e, a
    ld l, b
    ld e, a
    ret nz

    ret nz

    ld a, $fe
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    ld c, $fa
    ld c, $fa
    ld d, $fa
    ld a, a
    ld [hl], a
    cpl
    inc a
    ld a, a
    ld e, a
    ld [hl], a
    ld e, b
    ccf
    jr nc, jr_030_48c9

    ld de, $1f17
    ld c, $0e
    db $fc
    db $ec
    db $f4
    inc a
    cp $fa
    xor $1a
    db $fc
    inc c
    ld a, b
    adc b
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld a, h
    ld a, a

jr_030_48c4:
    ld b, b
    ld a, a
    ld [hl+], a

jr_030_48c7:
    ccf
    inc [hl]

jr_030_48c9:
    ccf
    rra
    rra
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    jr nc, jr_030_48c4

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    cp b
    ld a, b
    ld hl, sp+$48
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    dec b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld a, h
    ld a, a

jr_030_4906:
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    ld a, l
    ld e, a
    ld a, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_4906

    ld [$44f8], sp
    db $fc
    call nz, $fefc
    ld a, [hl-]
    cp $0a
    ld l, a
    ld d, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rrca
    add hl, bc
    rrca
    ld c, $0b
    rrca
    rlca
    rlca
    or $4a
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $fc
    db $f4
    ld hl, sp-$38
    ld hl, sp+$48
    or b
    or b
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
    jr nz, jr_030_4989

    jr nz, jr_030_498b

    ld [hl], h
    ld e, a
    ld a, b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ld a, $fe
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    ld e, $fa
    ld e, $fa
    ld l, h
    ld e, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    scf
    dec sp
    rra
    jr jr_030_497a

    inc c
    dec bc
    rrca
    rlca
    rlca
    ld [hl], $fa
    db $fc
    call z, $3cfc
    sbc $f2
    cp $12

jr_030_497a:
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, h
    ld a, a

jr_030_4986:
    ld b, b
    ld a, a
    ld [hl+], a

jr_030_4989:
    ccf
    inc [hl]

jr_030_498b:
    ccf
    rra
    rra
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_4986

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    cp b
    ld a, b
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    inc e
    cpl
    inc a
    rra
    rra
    ld c, $0e
    ld hl, sp+$48
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    sbc h
    db $f4
    db $fc
    jr jr_030_49d8

    inc bc
    inc bc
    inc c
    rrca

jr_030_49c4:
    ld [de], a
    rra
    dec h
    ccf
    inc sp
    ld a, $4f
    ld a, h
    ld a, a
    ld [hl], b
    ld a, a
    ld d, [hl]
    ret nz

    ret nz

    jr nc, jr_030_49c4

    ld c, b
    ld hl, sp-$5c
    db $fc

jr_030_49d8:
    call z, $f27c
    ld a, $fe
    ld c, $fe
    ld l, d
    ccf
    jr nc, jr_030_4a01

    add hl, de
    scf
    ccf
    ld a, e
    ld c, a
    ld a, b
    ld c, a
    ccf
    ccf
    dec de
    rla
    ld c, $0e
    db $fc
    inc c
    ld a, b
    sbc b
    db $ec
    db $fc
    sbc $f2
    ld e, $f2
    db $fc
    db $fc
    ret c

    add sp, $70
    ld [hl], b
    inc bc

jr_030_4a01:
    inc bc
    inc c
    rrca

jr_030_4a04:
    db $10
    rra
    jr nz, @+$41

    jr z, jr_030_4a49

    ld d, b
    ld a, a
    ld h, b
    ld a, a
    ld [hl], b
    ld e, a
    ret nz

    ret nz

    jr nc, jr_030_4a04

    ld [$04f8], sp
    db $fc
    inc d
    db $fc
    ld a, [bc]
    cp $06
    cp $0e
    ld a, [$4f7a]
    inc a
    ccf
    ld [hl], a
    ld a, a
    ld [hl], e
    ld e, a
    jr c, jr_030_4a69

    ld e, $1f
    rla
    rra
    ld c, $0e
    ld e, [hl]
    ld a, [c]
    inc a
    db $fc
    xor $fe
    adc $fa
    inc e
    db $fc
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr z, jr_030_4a87

    dec [hl]

jr_030_4a49:
    ccf
    ld a, [hl+]
    scf
    rra
    ld de, $161f
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$84f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $82
    cp $d4
    ld a, h
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc

jr_030_4a69:
    inc bc
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ret z

    ld a, b
    ldh a, [$30]
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_4a86:
    ld [de], a

jr_030_4a87:
    rra
    dec h
    ccf
    inc sp
    ld a, $4f
    ld a, h
    ld a, a
    ld [hl], b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_4a86

    ld c, b
    ld hl, sp-$5c
    db $fc
    call z, $f27c
    ld a, $fe
    ld c, $7f
    ld d, [hl]
    ccf
    jr nc, jr_030_4b23

    ld e, c
    scf
    ccf
    add hl, bc
    rrca
    ld c, $0f
    dec bc
    rrca
    rlca
    rlca
    cp $6a
    db $fc
    inc c
    ld a, h
    sbc h
    db $ec
    db $fc
    ld hl, sp-$38
    ld a, b
    ret z

    or b
    or b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_4ac6:
    db $10
    rra
    jr nz, @+$41

    jr z, jr_030_4b0b

    ld d, b
    ld a, a
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_4ac6

    ld [$04f8], sp
    db $fc
    inc d
    db $fc
    ld a, [bc]
    cp $06
    cp $70
    ld e, a
    ld a, d
    ld c, a
    inc a
    ccf
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ld c, $fa

jr_030_4af2:
    ld e, [hl]
    ld a, [c]
    inc a
    db $fc

Jump_030_4af6:
    db $fc
    db $fc
    jr jr_030_4af2

    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr z, @+$41

    dec [hl]

jr_030_4b0b:
    ccf
    ld a, [hl+]
    scf
    rra
    ld de, $0000
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$84f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $82
    cp $1f
    ld d, $1f

jr_030_4b23:
    db $10
    dec bc
    inc c

jr_030_4b26:
    rlca
    rlca
    rra
    rra
    inc [hl]
    cpl
    inc de
    rra
    ld c, $0e
    call nc, $c87c
    ld a, b
    ldh a, [$30]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $f4
    db $ec
    jr jr_030_4b58

    ld bc, $0701
    ld b, $0c
    dec bc
    rra
    db $10
    jr z, @+$39

    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    add b
    add b
    ldh [$60], a
    jr nc, jr_030_4b26

    ld hl, sp+$08

jr_030_4b58:
    inc d
    db $ec
    cp $0a
    cp $02
    or $4a
    ccf
    jr nc, jr_030_4b92

    add hl, sp
    ld c, l
    ld a, [hl]

jr_030_4b66:
    ld e, [hl]
    ld a, a
    ccf
    ccf
    db $10
    rra
    add hl, sp
    ccf
    ccf
    ccf
    db $fc
    inc c
    db $f4
    sbc h
    or d
    ld a, [hl]
    ld a, d
    cp $fc
    db $fc
    ld [$9cf8], sp
    db $fc
    db $fc
    db $fc
    ld bc, $0701
    ld b, $0c
    dec bc
    rra
    db $10
    cpl
    jr nc, jr_030_4c0a

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    add b

jr_030_4b91:
    add b

jr_030_4b92:
    ldh [$60], a
    jr nc, jr_030_4b66

    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $0a
    cp $02
    ccf
    jr nc, @+$61

    ld a, b
    ld d, a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ccf
    inc sp
    inc e
    rra
    add hl, sp
    ccf
    ld a, $3e
    db $fc
    inc c
    ld a, [$ea1e]
    ld a, [hl]
    ld a, [c]
    adc $fc
    call z, $f838
    sbc h
    db $fc
    ld a, h
    ld a, h
    inc bc
    inc bc
    inc b
    rlca
    rrca
    ld [$1e11], sp
    ld a, $21
    ccf
    jr nz, jr_030_4c0c

    jr nz, jr_030_4c0e

    jr z, jr_030_4b91

    ret nz

    ldh [rNR41], a
    ld [hl], b
    sub b
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld h, h
    db $fc
    inc d
    ccf
    jr nz, @+$21

    jr @+$20

    ld de, $0f0f
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    db $fc
    inc d
    ld a, b
    add sp, -$48
    ld hl, sp+$1c
    db $e4
    sbc h
    db $e4
    db $fc
    db $fc
    ld [$f0f8], sp
    ldh a, [rSB]
    ld bc, $0607
    inc c
    dec bc
    rra
    db $10
    jr z, @+$39

jr_030_4c0a:
    ld a, a
    ld d, b

jr_030_4c0c:
    ld a, a
    ld b, b

jr_030_4c0e:
    ld l, a
    ld d, d
    add b
    add b
    ldh [$60], a
    jr nc, @-$2e

    ld hl, sp+$08
    inc d
    db $ec
    cp $0a
    cp $02
    or $4a
    ccf
    jr nc, jr_030_4c72

    ld a, c
    ld e, a
    ld a, [hl]

jr_030_4c26:
    ccf
    ccf
    rra
    rra
    db $10
    rra
    ld e, $1f

jr_030_4c2e:
    rrca
    rrca
    db $fc
    inc c
    ld a, [c]
    sbc [hl]

jr_030_4c34:
    ld a, [$fc7e]
    db $fc
    ld hl, sp-$08
    jr c, jr_030_4c34

    jr nc, jr_030_4c2e

    ret nz

    ret nz

    ld bc, $0701
    ld b, $0c
    dec bc
    rra
    db $10
    cpl
    jr nc, jr_030_4cca

    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, b
    add b
    add b
    ldh [$60], a
    jr nc, jr_030_4c26

    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $02
    or $0a
    ccf
    jr nc, jr_030_4cc2

    ld a, b
    ld e, a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ccf
    inc sp
    inc e
    rra
    ld e, $1f

jr_030_4c6e:
    rrca
    rrca
    db $fc
    inc c

jr_030_4c72:
    ld a, [$fa1e]
    ld a, [hl]
    ld a, [c]
    adc $fc
    call z, $f838
    jr nc, jr_030_4c6e

    ret nz

    ret nz

    rlca
    rlca
    add hl, bc
    ld c, $1e
    ld de, $3c23
    ld a, l
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld d, b
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$38
    ld hl, sp+$28
    ld a, a
    ld b, b
    ld a, $31
    dec a
    inc hl
    ld e, $1f
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld hl, sp+$28
    ldh a, [$d0]
    ld [hl], b
    ldh a, [rNR41]
    ldh [rSVBK], a
    sub b
    ldh a, [$90]
    ld [hl], b
    ldh a, [$e0]
    ldh [$03], a
    inc bc

jr_030_4cc2:
    rrca
    rrca
    inc e
    rra
    dec sp
    ccf
    rla
    dec e

jr_030_4cca:
    ccf
    jr c, jr_030_4d4c

    ld d, b

jr_030_4cce:
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_030_4cce

    call c, $e8fc
    cp b
    db $fc
    inc e
    cp $0a
    or $4a
    ccf
    ld [hl-], a
    ld c, $09
    rla
    ld e, $17
    ld e, $0f
    ld c, $0f
    rrca
    add hl, bc
    rrca
    ld b, $06
    db $fc
    ld c, h
    ld [hl], b
    sub b
    add sp, -$08
    add sp, $78
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rrca
    rrca
    jr jr_030_4d25

    inc de
    rra
    scf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a

jr_030_4d0e:
    ld l, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    jr jr_030_4d0e

    call z, $ecfc
    db $fc
    db $fc
    db $fc
    cp $fa
    or $fa
    dec sp
    ccf
    inc c
    rrca
    rla

jr_030_4d25:
    rra
    inc de
    rra
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    call c, $30fc
    ldh a, [$e8]
    ld hl, sp-$38
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    add hl, de
    rra
    db $10
    rra
    db $10

jr_030_4d4c:
    rra
    dec d
    rra
    dec d
    ret c

    ret c

    inc a
    db $fc
    sbc h
    db $fc
    adc $fe

jr_030_4d58:
    adc $fe
    db $ec
    db $fc
    xor $fe

jr_030_4d5e:
    db $ec
    inc a
    rra
    db $10
    dec bc
    inc c
    rra
    rla
    ld e, $17
    ld c, $0f
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [$30]
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_030_4d58

    ld h, b
    ldh [$c0], a
    ret nz

    jr nz, jr_030_4d5e

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    inc e
    rra
    dec sp
    ccf
    rla
    dec e
    ccf
    jr c, jr_030_4e0e

    ld d, b

jr_030_4d90:
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_030_4d90

    call c, $e8fc
    cp b
    db $fc
    inc e
    cp $0a
    ld l, a
    ld d, d
    ccf
    ld [hl-], a
    ld c, $09
    rla
    ld e, $17
    ld e, $0f
    ld c, $04
    rlca
    inc bc
    inc bc
    or $4a
    db $fc
    ld c, h
    ld [hl], b
    sub b
    add sp, -$08
    add sp, $78
    ldh a, [rSVBK]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    jr jr_030_4de7

    inc de
    rra
    scf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a

jr_030_4dd0:
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    jr jr_030_4dd0

    call z, $ecfc
    db $fc
    db $fc
    db $fc
    cp $fa
    ld l, a
    ld e, a
    dec sp
    ccf
    inc c
    rrca
    rla

jr_030_4de7:
    rra
    inc de
    rra
    rrca
    rrca
    inc b
    rlca
    inc bc
    inc bc
    or $fa
    call c, $30fc
    ldh a, [$e8]
    ld hl, sp-$38
    ld hl, sp-$10
    ldh a, [$80]
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    add hl, de
    rra
    db $10
    rra
    db $10

jr_030_4e0e:
    rra
    dec d
    nop
    nop
    ret c

    ret c

    inc a
    db $fc
    sbc h
    db $fc
    adc $fe
    adc $fe
    db $ec
    db $fc
    xor $fe
    rra
    dec d
    rra
    db $10
    dec bc
    inc c
    rra
    rla
    ld e, $17
    daa
    ccf
    inc de
    rra
    ld c, $0e
    db $ec
    inc a
    ldh a, [$30]
    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [$e8]
    ld hl, sp-$38
    ld hl, sp+$30
    jr nc, jr_030_4e44

    inc bc
    rrca
    rrca

jr_030_4e44:
    rla
    dec de
    rra
    ld de, $302f
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    ldh a, [$f0]
    add sp, -$28
    ld hl, sp-$78
    db $f4
    inc c
    cp $0a
    cp $02
    or $6a
    ld a, a
    ld [hl], b
    ccf
    inc sp
    ld a, e
    ld c, h
    ld a, a
    ld c, e
    ccf
    inc a
    jr c, @+$31

    rra
    rra
    rlca
    rlca
    db $fc
    inc c
    cp $ce
    sbc $32
    cp $d2
    db $fc
    inc a
    inc e
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $fa
    cp $fa
    ccf
    ccf
    cpl
    inc a
    ld a, a
    ld e, e
    ld a, a
    ld e, b
    jr nc, jr_030_4ee9

    rra
    rra
    rra
    rra
    rlca
    rlca
    db $fc
    db $fc
    db $f4
    inc a
    cp $da
    cp $1a
    inc c
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    rrca
    rra
    jr jr_030_4ee6

    db $10
    ccf
    jr nz, @+$41

    jr nz, jr_030_4f0c

    jr nz, jr_030_4f0e

    inc l
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, b
    ld hl, sp-$48
    ld a, b
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    inc e
    ccf
    jr nz, jr_030_4f02

    inc e
    ld e, $11

jr_030_4ee6:
    rrca
    rrca
    rlca

jr_030_4ee9:
    inc b
    ld [$0f0f], sp
    rrca
    rlca
    rlca
    db $fc
    inc e
    ld a, b
    add sp, -$08
    ld hl, sp+$78
    sbc b
    ld hl, sp-$68
    ld [$f8f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop

jr_030_4f02:
    inc bc
    inc bc
    rrca
    rrca
    rla
    dec de
    rra
    ld de, $302f

jr_030_4f0c:
    ld a, a
    ld d, b

jr_030_4f0e:
    ld a, a
    ld b, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    add sp, -$28
    ld hl, sp-$78
    db $f4
    inc c
    cp $0a
    cp $02
    ld l, a
    ld d, [hl]
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], e
    ld a, e
    ld c, h
    ld a, a
    ld c, e
    inc a
    daa
    rra
    rra
    rrca
    rrca
    or $6a
    db $fc
    inc c

jr_030_4f34:
    db $fc
    call z, $3cdc
    ld hl, sp-$28
    jr jr_030_4f34

    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $fa
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    cpl
    ccf
    ccf
    inc sp
    rra
    jr jr_030_4f83

    rra
    rra
    rra
    rrca
    rrca
    cp $fa
    db $fc
    db $fc
    xor $fe
    cp $d2
    cp $32
    inc a
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    rlca
    rlca
    rra

jr_030_4f83:
    rra
    ld a, $31
    ccf
    jr nz, jr_030_5008

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$f8]
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp+$38
    ld a, a
    ld b, b
    ld a, $39
    dec a
    inc hl
    ld e, $1f
    rra
    ld de, $1f10
    rrca
    rrca
    rrca
    rrca
    ld hl, sp+$38
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    rrca
    ccf
    dec a
    ld [hl], e
    ld a, a
    pop hl
    rst $38
    rst $20
    db $fd
    ld l, a
    ld a, b
    rra
    ld a, [de]
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    cp h
    adc $fe
    add a
    rst $38
    rst $20
    cp a
    or $1e
    ld hl, sp+$58
    rra
    ld [de], a
    rrca
    ld [$171f], sp
    dec a
    daa
    jr jr_030_5009

    db $10
    rra
    ld [$070f], sp
    rlca
    ld hl, sp+$48

jr_030_4ff2:
    ld hl, sp+$18
    ld hl, sp-$18
    cp h
    db $e4
    jr jr_030_4ff2

jr_030_4ffa:
    ld [$10f8], sp
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a

jr_030_5008:
    rst $38

jr_030_5009:
    rst $38
    rst $38
    rst $38
    ld l, a
    ld a, a
    inc de
    rra
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    or $fe
    ret z

    ld hl, sp+$1c
    inc de
    rrca
    ld [$171f], sp
    dec a
    daa
    jr @+$21

    db $10
    rra
    ld [$070f], sp
    rlca
    jr c, jr_030_4ffa

jr_030_5032:
    ld hl, sp+$18
    ld hl, sp-$18
    cp h
    db $e4
    jr jr_030_5032

    ld [$10f8], sp
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    rrca
    jr jr_030_5065

    db $10
    rra
    ld c, $17
    rra
    ld de, $151f
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    ld a, [hl]
    cp $3f
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    cp $9e
    rra
    db $10
    dec bc
    inc c
    rlca

jr_030_5065:
    rlca
    dec b
    rlca
    ld [$080f], sp
    rrca
    ld b, $07
    ld bc, $fc01
    inc e
    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$30]
    add sp, -$48
    ld c, b
    ld hl, sp+$30
    ldh a, [$c0]

Jump_030_507f:
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    dec a
    ld [hl], e
    ld a, a
    pop hl
    rst $38
    rst $20
    db $fd
    ld l, a
    ld a, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    cp h
    adc $fe
    add a
    rst $38
    rst $20
    cp a
    or $1e
    rra
    ld a, [de]
    rra
    ld [de], a
    rra
    jr jr_030_50c6

    rla
    dec a
    daa
    jr jr_030_50cb

    inc c
    rrca
    inc bc
    inc bc
    ld hl, sp+$58
    ld hl, sp+$48

jr_030_50b4:
    ldh a, [rNR10]
    ld hl, sp-$18
    cp h
    db $e4
    jr jr_030_50b4

    ld [hl], b
    ldh a, [$80]
    add b
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca

jr_030_50c6:
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38

jr_030_50cb:
    rst $38
    rst $38
    rst $38
    ld l, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    or $fe
    inc de
    rra
    inc e
    inc de
    rrca
    ld [$171f], sp
    dec a
    daa
    jr @+$21

    inc c
    rrca
    inc bc
    inc bc
    ret z

    ld hl, sp+$38
    ret z

jr_030_50f4:
    ld hl, sp+$18
    ld hl, sp-$18
    cp h
    db $e4
    jr jr_030_50f4

    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    jr jr_030_5127

    db $10
    rra
    ld c, $17
    rra
    ld de, $151f
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    ld a, [hl]
    cp $3f
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca

jr_030_5127:
    rlca
    dec b
    rlca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    cp $9e
    db $fc
    inc e
    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$30]
    add sp, -$48
    ld d, b
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    inc c
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, @+$41

    ld [hl], $6b
    ld e, a
    ld a, a
    ld d, [hl]
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    ld h, h
    or [hl]
    ld a, [$6afe]
    ccf
    jr nc, jr_030_51a1

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, d
    ccf
    inc sp
    ld a, $23
    inc de
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $52
    db $fc
    call z, $c47c
    ret z

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_030_51ca

    jr nz, @+$81

    ld d, b
    ld l, a
    ld d, b
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $0a
    or $0a
    cpl

jr_030_51a1:
    jr nc, jr_030_51e2

    jr c, jr_030_5224

    ld d, a
    ld a, a
    ld d, b
    ccf
    jr nc, jr_030_51ca

    jr jr_030_51c0

    rra
    ld c, $0e
    db $f4
    inc c
    db $fc
    inc e
    cp $ea
    cp $0a
    db $fc
    inc c
    ld hl, sp+$18
    ret z

    ld hl, sp+$70
    ld [hl], b

jr_030_51c0:
    ld bc, $0701
    ld b, $0f
    ld [$080f], sp
    rra

jr_030_51c9:
    db $10

jr_030_51ca:
    rra
    ld d, $1a
    rra
    rra
    ld d, $c0
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, h
    db $e4
    db $fc
    sub h
    rra
    db $10

jr_030_51e2:
    dec bc
    inc c
    rlca
    rlca
    ld b, $05
    rlca
    dec b
    inc bc

jr_030_51eb:
    ld [bc], a
    dec b
    ld b, $03
    inc bc
    ld hl, sp+$18
    ld l, b
    ld hl, sp-$30
    ldh a, [$e0]
    jr nz, jr_030_51c9

    jr nc, jr_030_51eb

    ret nc

    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, @+$41

    ld h, $6d
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    ld l, h
    sub $fa
    ld a, a
    ld d, [hl]
    ld a, a
    ld [hl], b

jr_030_5224:
    ld a, [hl]
    ld e, c
    ccf
    scf
    inc a
    daa
    ccf
    daa
    dec e
    rra
    ld b, $06
    cp $6a
    db $fc
    inc c
    ld a, h
    sbc h
    db $fc
    db $e4
    ld a, h
    db $e4
    ld hl, sp-$28
    ld hl, sp-$38
    ld [hl], b
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_030_528c

    jr nz, jr_030_52ce

    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $0a
    ld l, a
    ld d, b
    ccf
    jr nc, jr_030_52a4

    jr z, @+$21

    rla
    rra
    db $10
    rra
    db $10
    add hl, bc
    rrca
    ld b, $06
    or $0a
    db $f4
    inc c
    ld hl, sp+$18
    db $fc
    db $e4
    db $fc
    inc h
    ld hl, sp+$18
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $0f
    ld [$080f], sp
    rra
    db $10

jr_030_528c:
    rra
    ld d, $1a
    rra
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, h
    db $e4
    rra
    ld d, $1f
    db $10

jr_030_52a4:
    dec bc
    inc c
    rlca
    rlca
    ld c, $0d
    inc de
    ld e, $09
    rrca
    ld b, $06
    db $fc
    sub h
    ld hl, sp+$18
    ld l, b
    ld hl, sp-$30

jr_030_52b7:
    ldh a, [$f8]
    jr jr_030_52b7

    sub h
    db $e4
    db $fc
    jr jr_030_52d8

    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, $7f
    ld a, b

jr_030_52ce:
    ld a, a
    ld h, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc

jr_030_52d8:
    db $fc
    db $fc
    db $fc
    ld a, h
    cp $1e
    cp $46
    ld a, a
    ld [hl], d
    ld a, $39
    ccf
    scf
    add hl, sp
    cpl
    ld [hl], $3f
    db $10
    rra
    ld [$070f], sp
    rlca
    cp $4e
    ld a, h
    sbc h
    db $fc
    db $ec
    sbc h
    db $f4
    ld l, b
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    ccf
    dec a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $ec
    db $fc
    cp h
    cp $fe
    cp $fe
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    inc de
    rra
    db $10
    rra
    ld [$070f], sp
    rlca
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    ret z

    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    scf
    ccf
    inc sp
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    cp $de
    cp $fe
    rra
    inc d
    rrca
    ld [$0705], sp
    rlca
    ld b, $07
    ld b, $05
    ld b, $05
    rlca
    inc bc
    inc bc
    cp $fe
    db $fc
    ld a, h
    db $fc
    db $fc
    cp b
    ld a, b
    db $e4
    ld a, h
    call nz, $987c
    ld hl, sp-$20
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    cp $1e
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    cp $f9
    rst $38
    rst $30
    ld a, c
    ld l, a
    ld [hl], $3f
    db $10
    rra
    rrca
    rrca
    cp $46
    cp $4e
    ld a, h
    sbc h
    ld hl, sp-$18
    ld hl, sp-$38
    ldh a, [$90]
    ld [hl], b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld a, l
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $ec
    db $fc
    cp h
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cpl
    ccf
    db $10
    rra
    rrca
    rrca
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    ret z

    ld hl, sp+$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    scf
    ccf
    inc sp
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $f6
    cp $de
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0707], sp
    rlca
    inc b
    rrca
    add hl, bc
    ld c, $0b
    rlca
    rlca
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $fe
    inc a
    db $fc
    ld [$f0f8], sp
    ldh a, [$03]
    inc bc
    inc c
    rrca

jr_030_5444:
    inc de
    rra
    rla
    rra
    inc l
    ccf
    ld a, [hl+]
    dec a
    ccf
    jr nc, jr_030_548e

    ld [hl+], a
    ret nz

    ret nz

    jr nc, jr_030_5444

    ret z

    ld hl, sp-$18
    ld hl, sp+$34
    db $fc
    or h
    ld e, h
    db $fc
    inc c
    db $fc
    ld b, h
    ccf
    ld [hl-], a
    ld l, $39
    cpl
    ccf
    ld a, $37
    dec a
    cpl
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $f4
    db $fc
    ld a, h
    db $ec
    cp h
    db $f4
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_030_5484:
    db $10
    rra
    db $10
    rra
    jr nz, jr_030_54c9

    jr nz, jr_030_54cb

    jr nz, @+$41

jr_030_548e:
    jr nz, jr_030_54cf

    ret nz

    ret nz

    jr nc, jr_030_5484

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_030_54e1

    jr nz, jr_030_54e3

    jr nz, jr_030_54e5

    jr nc, jr_030_54e7

    inc a
    cpl
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc a
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_030_54c4:
    ld e, $1f
    daa
    ccf
    dec hl

jr_030_54c9:
    scf
    rra

jr_030_54cb:
    ld de, $141f
    rra

jr_030_54cf:
    inc d
    ret nz

    ret nz

    jr nc, jr_030_54c4

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    call nz, $1f7c

jr_030_54e1:
    db $10
    dec bc

jr_030_54e3:
    inc c
    rlca

jr_030_54e5:
    rlca
    inc bc

jr_030_54e7:
    inc bc
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    call nz, $e47c
    ld a, h
    ld hl, sp-$48
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5506:
    inc de
    rra
    rla
    rra
    inc l
    ccf
    ld a, [hl+]
    dec a
    ccf
    jr nc, jr_030_5511

jr_030_5511:
    nop
    ret nz

    ret nz

    jr nc, jr_030_5506

    ret z

    ld hl, sp-$18
    ld hl, sp+$34
    db $fc
    or h
    ld e, h
    db $fc
    inc c
    ccf
    ld [hl+], a
    ccf
    ld [hl-], a
    ld c, [hl]
    ld a, c
    ld c, a
    ld [hl], a
    ld e, [hl]
    ld [hl], e
    ccf
    add hl, sp
    rra
    rra
    rrca
    rrca
    db $fc
    ld b, h
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $e4
    db $fc
    ld a, b
    add sp, -$48
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5546:
    db $10
    rra
    db $10
    rra
    jr nz, jr_030_558b

    jr nz, jr_030_558d

    jr nz, @+$41

    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5546

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_030_55a1

    jr nz, jr_030_55a3

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_030_55a9

    jr jr_030_558b

    rra
    rra
    rrca
    rrca
    inc b
    db $fc
    inc b
    db $fc
    ld [$18f8], sp
    ld hl, sp+$38
    add sp, -$10
    ret nc

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5586:
    ld e, $1f
    daa
    ccf
    dec hl

jr_030_558b:
    scf
    rra

jr_030_558d:
    ld de, $141f
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5586

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    rra

jr_030_55a1:
    inc d
    rra

jr_030_55a3:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc

jr_030_55a9:
    inc bc
    rlca
    inc b
    rrca
    rrca
    rlca
    rlca
    call nz, Call_030_427c
    cp $82
    cp $82
    cp $c2
    ld a, [hl]
    ld [c], a
    cp $fc
    db $fc
    ldh a, [$f0]
    inc bc
    inc bc
    inc c
    rrca

jr_030_55c4:
    ld d, $1b
    rra
    ld de, $203f
    ccf
    ld [hl], $6f
    ld e, c
    ld a, a
    ld d, [hl]
    ret nz

jr_030_55d1:
    ret nz

    jr nc, jr_030_55c4

    ld l, b
    ret c

    ld hl, sp-$78
    db $fc
    inc b
    db $fc
    ld h, h
    or $9a
    cp $6a
    ccf
    jr nc, jr_030_5621

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, d
    ccf
    inc sp
    ld a, $23
    inc de
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $52
    db $fc
    call z, $c47c
    ret z

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_5604:
    db $10
    rra
    db $10
    rra
    jr nz, jr_030_5649

    jr nz, jr_030_564b

    ld [hl], b
    ld e, a
    ld a, b
    ld d, a
    ret nz

    ret nz

    jr nc, jr_030_5604

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $ea
    ccf

jr_030_5621:
    jr nc, @+$41

    jr c, @+$81

    ld d, a
    ld a, a
    ld d, b
    ccf
    jr nc, @+$21

    jr jr_030_5640

    rra
    ld c, $0e
    db $fc
    inc c
    db $fc
    inc e
    cp $ea
    cp $0a
    db $fc
    inc c
    ld hl, sp+$18
    ret z

    ld hl, sp+$70
    ld [hl], b

jr_030_5640:
    inc bc
    inc bc
    inc c
    rrca
    inc de
    dec e
    ccf
    jr nz, jr_030_5688

jr_030_5649:
    jr nz, @+$41

jr_030_564b:
    jr nc, jr_030_5686

    cpl
    ccf
    jr nc, jr_030_55d1

    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp-$3c
    db $fc
    db $e4
    inc a
    add sp, $38
    ccf
    jr nz, jr_030_567a

    jr @+$11

    rrca
    rrca

jr_030_5667:
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    inc b
    rlca
    inc bc
    inc bc
    ret z

    ld hl, sp-$70
    ldh a, [$e0]
    jr nz, jr_030_5667

    ld d, b
    ldh a, [$50]

jr_030_567a:
    ldh a, [$90]
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5686:
    ld d, $1b

jr_030_5688:
    rra
    ld de, $203f
    ccf
    ld [hl], $6f
    ld e, c
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5686

    ld l, b
    ret c

    ld hl, sp-$78
    db $fc
    inc b
    db $fc
    ld h, h
    or $9a
    ld a, a
    ld d, [hl]
    ccf
    jr nc, jr_030_56c3

    add hl, de
    ccf
    daa
    ccf
    ld h, $1e
    dec de
    rlca
    rlca
    nop
    nop
    cp $6a
    cp $0e
    ld a, [hl]
    sub d
    db $fc
    db $ec
    db $fc
    ld b, h
    ld a, b
    add sp, -$70
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc

jr_030_56c3:
    inc bc
    inc c
    rrca

jr_030_56c6:
    db $10
    rra
    db $10
    rra
    jr nz, jr_030_570b

    jr nz, jr_030_570d

    ld [hl], b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_56c6

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld a, b
    ld d, a
    ld a, a
    ld [hl], b
    ld a, a
    ld e, b
    ccf
    scf
    rra
    db $10
    rra
    ld e, $09
    rrca
    ld b, $06
    ld e, $ea
    db $fc
    inc c
    ld hl, sp+$18
    db $fc
    db $e4
    db $fc
    inc h
    ld hl, sp+$18
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    inc de
    dec e
    ccf
    jr nz, jr_030_574a

jr_030_570b:
    jr nz, jr_030_574c

jr_030_570d:
    jr nc, jr_030_5748

    cpl
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp-$3c
    db $fc
    db $e4
    inc a
    ccf
    jr nc, jr_030_5762

    jr nz, jr_030_573c

    jr @+$11

    rrca
    dec de
    dec e
    daa
    dec a
    inc de
    ld e, $0f
    rrca
    add sp, $38
    ret z

    ld hl, sp-$70
    ldh a, [$e0]
    ld h, b
    ldh a, [$30]
    add sp, $38

jr_030_573c:
    ret z

    ld hl, sp-$50
    or b
    inc bc
    inc bc
    inc c
    rrca

jr_030_5744:
    ld de, $221f
    ccf

jr_030_5748:
    ld [hl+], a
    ccf

jr_030_574a:
    ld a, [hl+]
    ccf

jr_030_574c:
    ld c, a
    ld a, a
    ld e, a
    ld a, c
    ret nz

    ret nz

    jr nc, jr_030_5744

    ld [$04f8], sp
    db $fc
    inc h
    db $fc
    inc [hl]
    db $fc
    ld [hl], d
    cp $fa
    sbc [hl]
    cpl
    ccf

jr_030_5762:
    rra
    jr jr_030_57a4

    daa
    ld a, $27
    inc de
    rra
    ld c, $0f
    add hl, bc
    rrca
    ld b, $06
    db $f4
    db $fc
    ld hl, sp+$18
    db $fc
    db $e4
    ld a, h
    db $e4
    ret z

    ld hl, sp+$70
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_030_5784:
    db $10
    rra
    jr nz, jr_030_57c7

    jr nz, jr_030_57c9

    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ret nz

    ret nz

    jr nc, jr_030_5784

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $22
    cp $24
    ccf
    ld a, [de]
    rra

jr_030_57a4:
    ccf
    cpl
    ccf
    cpl
    add hl, de
    rra
    ld c, $0f
    add hl, bc
    rrca
    ld b, $06
    inc h
    db $fc
    ld e, b
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    sbc b
    ld hl, sp+$70
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    jr jr_030_57e3

jr_030_57c4:
    jr nz, @+$41

    ld b, h

jr_030_57c7:
    ld a, a
    ld c, c

jr_030_57c9:
    ld a, a
    ld l, $3f
    ld e, $13
    rra
    rra
    ret nz

    ret nz

    jr nc, jr_030_57c4

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$1ff8], sp
    db $10
    dec bc

jr_030_57e3:
    dec c
    rrca
    rrca
    dec bc
    ld c, $0b
    ld c, $07
    rlca
    inc b
    rlca
    inc bc
    inc bc
    sub b
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    inc bc
    inc bc
    inc c
    rrca

jr_030_5804:
    ld de, $321f
    cpl
    inc h
    ccf
    ld c, d
    ld a, l
    ld c, c
    ld a, a
    inc sp
    ld a, $c0
    ret nz

    jr nc, jr_030_5804

    ld [$04f8], sp
    db $fc
    inc h
    db $fc
    db $f4
    call c, $0afe
    cp $4a
    dec de
    ld e, $3f
    inc a
    ld a, a
    ld c, a
    ld a, c
    ld c, a
    inc sp
    ccf
    inc e
    rra
    rra
    inc de
    ld c, $0e
    db $fc
    ld c, h
    db $fc
    inc e
    cp $f2
    sbc [hl]
    ld a, [c]
    call z, $38fc
    ld hl, sp-$08
    ret z

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_5844:
    db $10
    rra
    jr nz, jr_030_5887

    jr nc, @+$31

    inc h
    dec sp
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ret nz

    ret nz

    jr nc, jr_030_5844

    ld [$04f8], sp
    db $fc
    inc c
    db $f4
    ld [hl+], a
    sbc $02
    cp $04
    db $fc
    jr nc, jr_030_58a1

    inc a
    ccf
    ld a, e
    ld c, a
    ld a, h
    ld e, a
    inc sp
    ccf
    inc e
    rra
    rra
    inc de
    ld c, $0e
    ld [$3cf8], sp
    db $fc
    sbc $f2
    ld a, $fa
    call z, $38fc

jr_030_587b:
    ld hl, sp-$08
    ret z

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_5884:
    db $10
    rra
    ld [hl+], a

jr_030_5887:
    ccf
    daa
    dec a
    ld c, a
    ld a, c
    ld c, a
    ld [hl], h
    ccf
    inc [hl]
    ret nz

    ret nz

    jr nc, jr_030_5884

    ld [$6cf8], sp
    sub h
    inc b

jr_030_5899:
    db $fc
    ld b, d
    cp $e2
    cp $f2
    sbc [hl]
    rra

jr_030_58a1:
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld b, $07
    dec b
    rlca
    ld [bc], a
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    db $f4
    inc e
    ld h, h
    db $fc
    ret c

    ld hl, sp-$20
    jr nz, jr_030_5899

    jr nz, jr_030_587b

    ret nz

    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_58c6:
    ld de, $321f
    cpl
    inc h
    ccf
    ld c, d
    ld a, l
    ld c, c
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_58c6

    ld [$04f8], sp
    db $fc
    inc h
    db $fc
    db $f4
    call c, $0afe
    inc sp
    ld a, $1b
    ld e, $0f
    inc c
    rra
    inc de
    rra
    inc de
    dec c
    rrca
    rlca
    rlca
    nop
    nop
    cp $4a
    cp $4e
    cp $12
    db $ec
    db $fc
    adc b
    ld hl, sp-$18
    ld hl, sp-$10
    db $10
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5906:
    db $10
    rra
    jr nz, jr_030_5949

    jr nc, @+$31

    inc h
    dec sp
    ld [hl], b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5906

    ld [$04f8], sp
    db $fc
    inc c
    db $f4
    ld [hl+], a
    sbc $02
    cp $70
    ld e, a
    jr nc, jr_030_5963

    add hl, sp
    cpl
    rra
    rra
    inc d
    rra
    rrca
    rrca
    rrca
    ld [$0707], sp
    inc b
    db $fc
    ld [$9cfc], sp
    db $fc
    db $fc
    db $e4
    inc a
    db $e4
    jr @-$06

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5946:
    db $10
    rra
    ld [hl+], a

jr_030_5949:
    ccf
    daa
    dec a
    ld c, a
    ld a, c
    ld c, a
    ld [hl], h
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5946

    ld [$2cf8], sp
    call nc, $fc04
    ld b, d
    cp $e2
    cp $3f
    inc [hl]
    rra

jr_030_5963:
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld c, $0f
    ld e, $13
    rrca
    add hl, bc
    ld b, $06
    ld a, [c]
    sbc [hl]
    db $f4
    inc e
    ld h, h
    db $fc
    ret c

    ld hl, sp-$08
    sbc b
    db $fc
    sub h
    db $fc
    db $e4
    jr @+$1a

    inc bc
    inc bc
    inc c
    rrca

jr_030_5984:
    db $10
    rra
    jr jr_030_599f

    ld [hl+], a
    dec a
    dec h
    ccf
    ld [hl], a
    ld a, h
    sbc a
    ld a, [$c0c0]
    jr nc, jr_030_5984

    ld [$18f8], sp
    add sp, $44
    cp h
    and h
    db $fc
    xor $3e
    ld sp, hl

jr_030_599f:
    ld e, a
    ld e, a
    ld [hl], d
    ccf
    jr c, jr_030_59c4

    rla
    ld a, $25
    rla
    dec de
    rrca
    ld [$0f09], sp
    ld b, $06
    ld a, [$fc4e]
    inc e
    ld hl, sp-$18
    ld a, h
    and h
    add sp, -$28
    ldh a, [rNR10]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_030_59c4:
    db $10
    rra
    db $10
    rra
    jr z, jr_030_5a01

    ld [hl+], a
    dec a
    ld a, b
    ld a, a
    add h
    rst $38
    ret nz

    ret nz

    jr nc, jr_030_59c4

    ld [$08f8], sp
    ld hl, sp+$14
    db $ec
    ld b, h
    cp h
    ld e, $fe
    ld hl, $40ff
    ld a, a
    jr c, jr_030_5a23

    rra
    rla
    ccf
    inc h
    rla
    dec de
    rrca
    ld [$0f09], sp
    ld b, $06
    ld [bc], a
    cp $1c
    db $fc
    ld hl, sp-$18
    db $fc
    inc h
    add sp, -$28
    ldh a, [rNR10]
    sub b
    ldh a, [$60]
    ld h, b
    rlca

jr_030_5a01:
    rlca
    ld [$100f], sp
    rra
    ld a, [hl+]
    dec a
    jr z, @+$41

    inc a
    scf
    ld e, $17
    rra
    dec d
    ret nz

    ret nz

    jr nc, @-$0e

    jr @-$16

    ld b, h
    cp h
    inc b
    db $fc
    inc b
    db $fc
    rst $00
    rst $38
    ld sp, hl
    ccf
    rra
    db $10
    dec bc

jr_030_5a23:
    inc c
    rlca
    rlca
    rlca
    dec b
    rlca
    inc b
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld [c], a
    ld a, $cc
    db $fc
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh [$a0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5a46:
    db $10
    rra
    jr jr_030_5a61

    ld [hl+], a
    dec a
    dec h
    ccf
    ld [hl], a
    ld a, h
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5a46

    ld [$18f8], sp
    add sp, $44
    cp h
    and h
    db $fc

jr_030_5a5e:
    xor $3e
    sbc a

jr_030_5a61:
    ld a, [$725f]
    ccf
    inc a
    rra
    inc de
    ld e, $13
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ld sp, hl
    ld e, a
    ld a, [$fc4e]
    inc d
    db $fc
    db $e4
    ld a, b
    cp b
    ldh a, [$d0]
    jr nz, jr_030_5a5e

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5a86:
    db $10
    rra
    db $10
    rra
    jr z, jr_030_5ac3

    ld [hl+], a
    dec a
    ld a, b
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5a86

    ld [$08f8], sp
    ld hl, sp+$14
    db $ec
    ld b, h
    cp h
    ld e, $fe
    add h
    rst $38
    ld b, b
    ld a, a
    jr c, jr_030_5ae5

    rra
    rla
    rrca
    inc c
    rrca
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    ld hl, $02ff
    cp $1c
    db $fc
    ldh a, [$f0]
    ld hl, sp+$48
    ld hl, sp-$38
    ldh a, [$f0]
    nop
    nop

jr_030_5ac0:
    nop
    nop
    rlca

jr_030_5ac3:
    rlca
    ld [$100f], sp
    rra
    ld a, [hl+]
    dec a
    jr z, jr_030_5b0b

    inc a
    scf
    ld e, $17
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    jr jr_030_5ac0

    ld b, h
    cp h
    inc b
    db $fc
    inc b
    db $fc
    rst $00
    rst $38
    rra
    dec d
    rra
    db $10
    dec bc

jr_030_5ae5:
    inc c
    rlca
    rlca
    dec de
    dec e
    ld h, $3d
    inc de
    rra
    ld c, $0e
    ld sp, hl
    ccf
    ld [c], a
    ld a, $cc
    db $fc
    ldh a, [rSVBK]
    ldh a, [$30]
    add sp, -$48
    ret z

    ld hl, sp+$30
    jr nc, jr_030_5b01

jr_030_5b01:
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5b06:
    jr jr_030_5b1f

    ld [hl+], a
    dec a
    ld [hl+], a

jr_030_5b0b:
    ccf
    ld d, a
    ld a, l
    cpl
    ld a, [hl-]
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5b06

    jr @-$16

    ld b, h
    cp h
    ld b, h
    db $fc
    ld [$f4be], a

jr_030_5b1f:
    ld e, h
    cpl
    ld a, [hl-]
    rra
    jr jr_030_5b64

    daa
    dec a
    ld h, $1b
    rra
    ld c, $0f
    add hl, bc
    rrca
    ld b, $06
    db $f4
    ld e, h
    ld hl, sp+$18
    db $fc
    db $e4
    cp h
    ld h, h
    ret c

    ld hl, sp+$70
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5b46:
    db $10
    rra
    jr nz, @+$41

    jr nc, jr_030_5b7b

    ld b, h
    ld a, e
    jr nz, jr_030_5b8f

    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5b46

    ld [$04f8], sp
    db $fc
    inc c
    db $f4
    ld [hl+], a
    sbc $04
    db $fc
    inc h
    ccf
    inc e
    rra

jr_030_5b64:
    ccf
    daa
    jr c, @+$31

    jr @+$21

    ld c, $0f

jr_030_5b6c:
    add hl, bc
    rrca
    ld b, $06
    inc h
    db $fc

jr_030_5b72:
    jr c, jr_030_5b6c

    db $fc
    db $e4
    inc e
    db $f4
    jr jr_030_5b72

    ld [hl], b

jr_030_5b7b:
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5b86:
    db $10
    rra
    jr jr_030_5ba9

    ld a, [hl+]
    dec a
    jr z, jr_030_5bc5

    rra

jr_030_5b8f:
    rla
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5b86

    ld [$14f8], sp
    db $ec
    ld b, h
    cp h
    ld [bc], a
    cp $8a
    cp $1f
    dec d
    rra
    ld de, $0c0b
    rlca
    rlca
    dec b

jr_030_5ba9:
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld a, [bc]
    cp $0c
    db $fc
    ld hl, sp-$08
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ldh [$60], a
    ldh [$c0], a
    ret nz

    nop
    nop

jr_030_5bc2:
    nop
    nop
    inc bc

jr_030_5bc5:
    inc bc
    inc c
    rrca

jr_030_5bc8:
    jr jr_030_5be1

    ld [hl+], a
    dec a
    ld [hl+], a
    ccf
    ld d, a
    ld a, l
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5bc8

    jr jr_030_5bc2

    ld b, h
    cp h
    ld b, h
    db $fc

jr_030_5bde:
    ld [$2fbe], a

jr_030_5be1:
    ld a, [hl-]
    cpl
    ld a, [hl-]
    rra
    jr jr_030_5bf6

    rrca
    rra
    ld [de], a
    ld e, $13
    rrca
    rrca
    nop
    nop
    db $f4
    ld e, h
    db $f4
    ld e, h
    ld hl, sp+$18

jr_030_5bf6:
    ld hl, sp-$18
    sub b
    ld [hl], b
    ldh a, [$f0]
    jr nz, jr_030_5bde

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5c08:
    db $10
    rra
    jr nz, @+$41

    jr nc, @+$31

    ld b, h
    ld a, e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5c08

    ld [$04f8], sp
    db $fc
    inc c
    db $f4
    ld [hl+], a
    sbc $20
    ccf
    inc h
    ccf
    inc e
    rra
    rra
    rla
    ld [$0b0f], sp
    rrca

jr_030_5c2c:
    inc b
    rlca

jr_030_5c2e:
    inc bc
    inc bc
    inc b
    db $fc
    inc h
    db $fc
    jr c, jr_030_5c2e

    ld hl, sp-$38
    ld a, b
    ret z

    jr nc, jr_030_5c2c

    ldh [$e0], a
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

jr_030_5c48:
    db $10
    rra
    jr jr_030_5c6b

    ld a, [hl+]
    dec a
    jr z, jr_030_5c87

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5c48

    ld [$14f8], sp
    db $ec
    ld b, h
    cp h
    ld [bc], a
    cp $1f
    rla
    rra
    dec d
    rra
    ld de, $0c0b
    rrca
    rrca
    ld [de], a

jr_030_5c6b:
    rra
    add hl, bc
    rrca
    ld b, $06
    adc d
    cp $0a
    cp $0c
    db $fc
    ld hl, sp-$08
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_030_5c98

    inc bc
    inc bc
    inc c
    rrca

jr_030_5c84:
    db $10
    rra
    inc [hl]

jr_030_5c87:
    ccf
    inc a
    ccf
    ld a, $3f
    ld l, a
    ld d, a
    ld l, a
    ld d, d
    ret nz

    ret nz

    jr nc, jr_030_5c84

    ld [$0cf8], sp
    db $fc

jr_030_5c98:
    inc a
    db $fc
    db $fc
    db $fc
    or $ea
    or $4a
    ld e, a
    ld [hl], b
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    scf
    ccf
    inc e
    rra
    inc de
    rra
    ld c, $0e
    ld a, [$7c0e]
    sbc h

jr_030_5cb4:
    cp $f2
    cp $f2
    db $ec
    db $fc
    jr c, jr_030_5cb4

    ret z

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_5cc4:
    db $10
    rra
    jr nc, jr_030_5d07

    inc a
    ccf
    ccf
    ccf
    ld h, a
    ld e, a
    ld h, b
    ld e, a
    ret nz

    ret nz

    jr nc, jr_030_5cc4

    ld [$0cf8], sp
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    and $fa
    ld b, $fa
    ld d, b
    ld a, a
    add hl, sp
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    inc sp
    ccf
    inc e
    rra
    inc de
    rra
    ld c, $0e
    ld a, [bc]
    cp $9c
    db $fc
    cp $fa
    cp $fa
    call z, $38fc
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc e
    rra

jr_030_5d04:
    jr nz, jr_030_5d45

    db $10

jr_030_5d07:
    rra
    inc a
    ccf
    ccf
    ccf
    rra
    rla
    ld e, $15
    ret nz

    ret nz

    jr nc, jr_030_5d04

    ld [$0cf8], sp
    db $fc
    inc a

jr_030_5d19:
    db $fc
    ld a, [$e2fe]
    cp $e2
    ld a, $1f
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    call nz, $c83c
    ld hl, sp-$10
    ldh a, [$e0]
    jr nz, jr_030_5d19

    jr nz, @-$1e

    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c

jr_030_5d45:
    rrca

jr_030_5d46:
    db $10
    rra
    inc [hl]
    ccf
    inc a
    ccf
    ld a, $3f
    ld l, a
    ld d, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5d46

    ld [$0cf8], sp
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    or $ea
    ld l, a
    ld d, d
    ld e, a
    ld [hl], b
    ld a, $39
    ccf
    daa
    ccf
    daa
    jr jr_030_5d8b

    rlca
    rlca
    nop
    nop
    or $4a
    cp $0e
    ld a, [hl]
    sub d
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_5d86:
    db $10
    rra
    jr nc, jr_030_5dc9

    inc a

jr_030_5d8b:
    ccf
    ccf
    ccf
    ld h, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5d86

    ld [$0cf8], sp
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    and $fa
    ld h, b
    ld e, a
    jr nc, jr_030_5de3

    add hl, sp
    cpl
    rra
    rra
    rla
    rra
    rrca
    rrca
    ld [$070f], sp
    rlca
    ld b, $fa
    ld a, [bc]
    cp $9c
    db $fc
    db $fc
    db $e4
    db $fc
    db $e4
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra

jr_030_5dc6:
    jr nz, jr_030_5e07

    db $10

jr_030_5dc9:
    rra
    inc a
    ccf
    ccf
    ccf
    rra
    rla
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_5dc6

    ld [$0cf8], sp
    db $fc
    inc a
    db $fc
    ld a, [$e2fe]
    cp $1e
    dec d
    rra

jr_030_5de3:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rrca
    rrca
    inc de
    rra
    add hl, bc
    rrca
    ld b, $06
    ld [c], a
    ld a, $c4
    inc a
    ret z

    ld hl, sp-$10
    or b
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_030_5e18

    inc bc
    inc bc
    rrca
    rrca
    rra
    add hl, de
    ccf

jr_030_5e07:
    jr c, jr_030_5e48

    jr nc, jr_030_5e46

    inc [hl]
    ld l, [hl]
    ld d, e
    ld a, a
    ld d, b
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    inc e

jr_030_5e18:
    db $fc
    inc c
    call c, Call_030_762c
    jp z, $0afe

    ccf
    ld [hl], $3f
    inc a
    ld a, a
    ld c, a
    ld a, a
    ld c, b
    inc sp
    inc a
    inc e
    rra
    rra
    inc de
    ld c, $0e
    db $fc
    ld l, h
    db $fc
    inc a
    cp $f2
    cp $12
    call z, $383c
    ld hl, sp-$08
    ret z

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra

jr_030_5e46:
    ccf
    ccf

jr_030_5e48:
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    cp $fa
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld c, l
    ld a, a
    ld c, b
    inc sp
    inc a
    inc e
    rra
    rra
    inc de
    ld c, $0e
    db $fc
    db $fc
    db $fc
    db $fc
    cp $b2
    cp $12
    call z, $383c
    ld hl, sp-$08
    ret z

    ld [hl], b

jr_030_5e7f:
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    inc e
    rra
    jr jr_030_5ea7

    ld de, $1e11
    rra
    inc b
    rra
    db $10
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$78
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    ld d, $0f
    dec bc
    rrca
    rlca
    rra

jr_030_5ea7:
    ld de, $1f11
    inc c
    rrca
    rlca
    inc b
    inc bc
    inc bc
    db $fc
    inc e
    ldh a, [rSVBK]
    or b
    ret nc

    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ldh a, [$e0]
    jr nz, jr_030_5e7f

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    add hl, de
    ccf
    jr c, jr_030_5f0a

    jr nc, jr_030_5f08

    inc [hl]
    ld l, [hl]
    ld d, e
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    inc e
    db $fc
    inc c
    call c, Call_030_762c
    jp z, Jump_030_507f

    ld a, a
    db $76
    ld a, a
    ld c, h
    ccf
    scf
    rra
    db $10
    ld de, $0f1e
    add hl, bc
    rlca
    rlca
    cp $0a
    db $fc
    ld l, h
    db $fc
    inc a
    ld hl, sp-$08
    db $fc
    inc h
    inc a
    db $e4
    ld hl, sp-$08
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

jr_030_5f08:
    ccf
    ccf

jr_030_5f0a:
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld e, a
    ccf
    ccf
    ccf
    ccf
    ccf
    dec h
    ccf
    inc h
    jr jr_030_5f4b

    rrca
    rrca
    nop
    nop
    cp $fa
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$58
    ret z

    jr c, jr_030_5f4b

    ldh a, [$f0]
    db $10
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    inc e
    rra
    jr @+$20

jr_030_5f4b:
    ld de, $1e11
    rra
    inc b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$78
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    db $10
    rra
    ld d, $0f
    dec bc
    rrca
    inc c
    ld de, $3d1f
    daa
    rra
    inc de
    inc c
    inc c
    ld hl, sp-$68
    db $fc
    inc e
    ldh a, [rSVBK]
    or b
    ret nc

    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp-$38
    jr nc, jr_030_5fb0

    ld [hl], b
    ld [hl], b
    adc e
    ei
    adc h
    rst $38
    ld d, b
    ld a, a
    ccf
    daa
    ccf
    inc h
    ld c, a
    ld a, b
    ld c, a
    ld [hl], d
    ld c, $0e
    pop de
    rst $18
    ld sp, $0aff
    cp $fc
    db $e4
    db $fc
    inc h
    ld a, [c]
    ld e, $f2
    ld c, [hl]
    ld c, a
    ld [hl], d
    ld c, a
    ld a, b
    ld e, a
    ld [hl], a
    ld a, [hl-]
    dec h
    rra
    jr jr_030_5fca

    db $10
    rrca
    ld [$0707], sp

jr_030_5fb0:
    ld a, [c]
    ld c, [hl]
    ld a, [c]
    ld e, $fa
    xor $5c
    and h
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    adc e
    ei
    adc h
    rst $38
    ld d, b
    ld a, a
    jr nz, jr_030_6009

jr_030_5fca:
    jr z, jr_030_6003

    ld b, d
    ld a, l
    ld b, b
    ld a, a
    ld c, $0e
    pop de
    rst $18
    ld sp, $0aff
    cp $04
    db $fc
    inc d
    db $ec
    ld b, d
    cp [hl]
    ld [bc], a
    cp $40
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_030_6017

    dec e
    rla
    rra
    db $10
    rrca
    ld [$0707], sp
    ld [bc], a
    cp $0a
    cp $0a
    cp $1c
    db $f4
    cp b
    add sp, -$08
    ld [$10f0], sp
    ldh [$e0], a
    nop
    nop
    inc bc

jr_030_6003:
    inc bc
    inc c
    rrca
    db $10
    rra
    add hl, de

jr_030_6009:
    ld d, $3f
    ld h, $3e
    inc hl
    ld a, $29
    jr nc, jr_030_6042

    ret z

    ld hl, sp-$78
    ld hl, sp-$78

jr_030_6017:
    ld hl, sp-$2c
    ld a, h
    add h
    ld a, h
    ld [bc], a
    cp $c2
    cp $3f
    add hl, hl
    ccf
    jr nz, @+$20

    ld de, $0f0d
    rrca
    add hl, bc
    rra
    db $10
    rrca
    ld [$0707], sp
    ld [c], a
    ld a, $e2
    ld a, $c2
    cp $c4
    ld a, h
    db $e4
    inc a
    ld hl, sp-$28
    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop

jr_030_6042:
    jr c, jr_030_607c

    ld b, a
    ld a, a
    ld c, h
    ld a, a
    jr nc, jr_030_6089

    ccf
    daa
    ccf
    inc h
    ld c, a
    ld a, b
    nop
    nop
    inc e
    inc e
    ld [c], a
    cp $32
    cp $0c
    db $fc
    db $fc
    db $e4
    db $fc
    inc h
    ld a, [c]
    ld e, $4f
    ld [hl], d
    ld c, a
    ld [hl], d
    ld c, a
    ld a, b
    ld e, a
    ld [hl], a
    ld a, [hl-]
    dec h
    rra
    jr jr_030_6074

    inc b
    inc bc
    inc bc
    ld a, [c]
    ld c, [hl]
    ld a, [c]
    ld c, [hl]

jr_030_6074:
    ld a, [c]
    ld e, $fa
    xor $5c
    and h
    ld hl, sp+$18

jr_030_607c:
    ldh a, [rSVBK]
    add b

jr_030_607f:
    add b
    nop
    nop
    jr c, @+$3a

    ld b, a
    ld a, a
    ld b, h
    ld a, a
    ld d, b

jr_030_6089:
    ld a, a
    jr nz, jr_030_60cb

    jr z, jr_030_60c5

    ld b, d
    ld a, l
    nop
    nop
    inc e
    inc e
    ld [c], a
    cp $22
    cp $0a
    cp $04
    db $fc
    inc d
    db $ec
    ld b, d
    cp [hl]
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_030_60d9

    dec e
    rla
    rrca
    ld c, $01
    ld bc, $fe02
    ld [bc], a
    cp $0a
    cp $0a
    cp $1c
    db $fc
    cp b
    add sp, -$10
    jr nc, jr_030_607f

    ret nz

    nop
    nop
    nop
    nop
    inc bc

jr_030_60c5:
    inc bc
    inc c
    rrca
    db $10
    rra
    add hl, de

jr_030_60cb:
    ld d, $3f
    ld h, $3e
    inc hl
    nop
    nop
    jr nc, jr_030_6104

    ret z

    ld hl, sp-$78
    ld hl, sp-$78

jr_030_60d9:
    ld hl, sp-$2c
    ld a, h
    add h
    ld a, h
    ld [bc], a
    cp $3e
    add hl, hl
    ccf
    add hl, hl
    ccf
    jr nz, jr_030_6105

    ld de, $0f0d
    rrca
    add hl, bc
    rra
    db $10
    rrca
    rrca
    jp nz, $e1fe

    ccf
    pop hl
    ccf
    pop bc
    rst $38
    ld [c], a
    ld a, [hl]
    ld [c], a
    ld a, $fc
    call c, $e0e0
    inc bc
    inc bc
    ld c, $0f

jr_030_6104:
    scf

jr_030_6105:
    dec a
    ld c, a
    ld a, b
    cpl
    jr c, jr_030_614a

    jr nc, jr_030_617a

    ld d, d
    ld a, a
    ld d, [hl]
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ec]
    cp h
    ld a, [c]
    ld e, $f4
    inc e
    db $fc
    inc c
    or [hl]
    ld c, d
    cp $6a
    ld a, $31
    dec e
    ld a, [de]
    ccf
    cpl
    add hl, sp
    cpl
    ld de, $1f1f
    inc e
    rra
    inc de
    ld c, $0e
    ld a, h
    adc h
    cp b
    ld e, b
    db $fc

jr_030_6135:
    db $f4
    inc e
    db $f4
    ld [$f8f8], sp
    jr c, jr_030_6135

    ret z

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld c, $0f
    jr nc, jr_030_6185

    ld b, b
    ld a, a
    jr nz, jr_030_6189

jr_030_614a:
    jr nc, jr_030_618b

    ld l, b
    ld d, a
    ld a, a
    ld d, b
    ret nz

jr_030_6151:
    ret nz

    ld [hl], b
    ldh a, [$0c]
    db $fc
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    ld d, $ea
    cp $0a
    ccf
    jr nc, @+$21

    jr jr_030_61a4

    daa
    ccf
    ld hl, $1817
    inc e
    rra
    rra
    inc de
    ld c, $0e
    db $fc
    inc c
    ld hl, sp+$18

jr_030_6174:
    db $fc
    db $e4
    db $fc
    inc b
    add sp, -$68

jr_030_617a:
    jr c, jr_030_6174

    ld hl, sp-$38
    ld [hl], b

jr_030_617f:
    ld [hl], b
    ld bc, $0601
    rlca

jr_030_6184:
    rrca

jr_030_6185:
    ld [$101f], sp
    rra

jr_030_6189:
    db $10
    dec bc

jr_030_618b:
    inc d
    rra
    ld d, $17
    jr jr_030_6151

    ret nz

    jr nc, jr_030_6184

    adc b
    ld hl, sp-$34
    ld a, h
    jp nz, $047e

    db $fc
    jr z, @-$06

    ld hl, sp-$68
    dec de
    inc d
    dec bc
    inc c

jr_030_61a4:
    rlca
    rlca
    add hl, bc
    rrca
    ld [$060f], sp
    rlca
    rlca
    inc b
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld [hl], b
    ldh a, [$e0]
    jr nz, jr_030_617f

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld c, $0f
    scf
    dec a
    ld c, a
    ld a, b
    cpl
    jr c, jr_030_620c

    jr nc, jr_030_623c

    ld d, d
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ec]
    cp h
    ld a, [c]
    ld e, $f4
    inc e
    db $fc
    inc c
    or [hl]
    ld c, d
    ld a, a
    ld d, [hl]
    ld a, $31
    dec e
    ld a, [de]
    ccf
    cpl
    jr c, jr_030_6219

    inc e
    rra
    rrca
    add hl, bc
    rlca
    rlca
    cp $6a
    ld a, h
    adc h
    cp b
    ld e, b
    db $fc
    db $f4
    sbc h
    db $f4
    cp b
    ld hl, sp-$40
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0f
    jr nc, jr_030_6247

    ld b, b
    ld a, a
    jr nz, jr_030_624b

jr_030_620c:
    jr nc, jr_030_624d

    ld l, b
    ld d, a
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$0c]
    db $fc
    ld [bc], a

jr_030_6219:
    cp $04
    db $fc
    inc c
    db $fc
    ld d, $ea
    ld a, a
    ld d, b
    ccf
    jr nc, @+$21

    jr jr_030_6266

    daa
    ccf
    jr nz, jr_030_6246

    dec e
    rrca
    rrca
    nop
    nop
    cp $0a
    db $fc
    inc c
    ld hl, sp+$18
    db $fc
    db $e4
    db $fc
    add h
    cp b
    ld a, b

jr_030_623c:
    ldh a, [$90]
    ldh [$e0], a
    nop
    nop
    ld bc, $0601
    rlca

jr_030_6246:
    rrca

jr_030_6247:
    ld [$101f], sp
    rra

jr_030_624b:
    db $10
    dec bc

jr_030_624d:
    inc d
    rra
    ld d, $00
    nop
    ret nz

    ret nz

    jr nc, jr_030_6246

    adc b
    ld hl, sp-$34
    ld a, h
    jp nz, $047e

    db $fc
    jr z, @-$06

    rla
    jr jr_030_627e

    inc d
    dec bc
    inc c

jr_030_6266:
    rlca
    rlca
    dec c
    rrca
    rra
    ld [de], a
    rrca
    add hl, bc
    ld b, $06
    ld hl, sp-$68
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh [$a0], a
    ld hl, sp+$18
    db $fc
    sub h
    db $fc
    db $e4

jr_030_627e:
    jr jr_030_6298

    inc bc
    inc bc
    inc c
    rrca
    inc d
    rra
    inc h
    ccf
    ld a, [hl+]
    ccf
    ld c, [hl]
    ld a, e
    ld e, a
    ld [hl], c
    cpl
    ld [hl-], a
    ret nz

    ret nz

    or b
    ldh a, [$08]
    ld hl, sp+$64
    db $fc

jr_030_6298:
    sub h
    db $fc
    ld a, [c]
    sbc [hl]
    ld a, [$f40e]
    ld c, h
    ld c, a
    ld [hl], d
    ld e, a
    ld a, b
    ccf
    scf
    daa
    ccf
    ld e, a
    ld a, a
    ld c, a
    ld a, e
    add hl, sp
    ccf
    ld b, $06
    ld a, [c]
    ld c, [hl]
    ld a, [$fc1e]
    db $ec
    db $e4
    db $fc
    ld a, [$f2fe]
    sbc $9c
    db $fc
    ld h, b
    ld h, b
    inc bc
    inc bc
    ld c, $0f
    inc d
    rra
    ld h, $3d
    inc h
    ccf
    ld b, h
    ld a, a
    ld d, h
    ld a, a
    ld [hl+], a
    ccf
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$28]
    ld hl, sp+$64
    cp h
    inc h
    db $fc
    ld [hl+], a
    cp $2a
    cp $44
    db $fc
    ld b, d
    ld a, a
    ld e, c
    ld a, a
    scf
    ccf
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add hl, sp
    ccf
    ld b, $06
    ld b, d
    cp $9a
    cp $ec
    db $fc
    call nz, $02fc
    cp $02
    cp $9c
    db $fc
    ld h, b
    ld h, b
    rlca
    rlca
    jr jr_030_6323

    jr nz, jr_030_6345

    ld e, b
    ld a, a
    ld d, l
    ld a, [hl]
    ld e, h
    ld h, a
    ld a, $2b
    ld a, $2b
    jr nc, jr_030_6342

    ret z

    ld hl, sp+$24
    db $fc
    ld d, h
    cp h
    ld [de], a
    cp $12
    cp $12
    cp $0a
    cp $3e
    inc hl
    rla

jr_030_6323:
    dec de
    inc c
    rrca
    ld c, $0f
    ld c, $0f
    rlca
    dec b
    ld [$070f], sp
    rlca
    ld a, [bc]
    cp $54
    db $f4
    and b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$50
    ldh a, [$c0]
    ret nz

    nop
    nop

jr_030_6342:
    inc bc
    inc bc
    dec c

jr_030_6345:
    rrca

jr_030_6346:
    db $10
    rra
    ld h, $3f
    add hl, hl
    ccf
    ld c, a
    ld a, c
    ld e, a
    ld [hl], b

jr_030_6350:
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_6346

    jr z, jr_030_6350

    inc h
    db $fc
    ld d, h
    db $fc
    ld [hl], d
    sbc $fa
    adc [hl]
    cpl
    ld [hl-], a
    ccf
    ld [hl-], a
    ld a, a
    ld l, b
    ld h, a
    ld a, a
    ld e, a
    ld a, a
    daa
    dec a
    jr jr_030_638d

    rlca
    rlca
    db $f4
    ld c, h
    ld a, [c]
    ld c, [hl]
    ld a, [$dc3e]
    db $ec
    call z, $f4fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0f
    inc d
    rra
    ld h, $3d
    inc h
    ccf
    ld b, d

jr_030_638d:
    ld a, a
    ld d, d
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$28]
    ld hl, sp+$64
    cp h
    inc d
    db $fc
    ld [de], a
    cp $1a
    cp $21
    ccf
    ld b, c
    ld a, a
    ld e, b
    ld a, a
    scf
    ccf
    inc hl
    ccf
    jr nz, jr_030_63eb

    inc e
    rra
    inc bc
    inc bc
    inc d
    db $fc
    ld [hl+], a
    cp $da
    cp $ec
    db $fc
    call nz, $04fc
    db $fc
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_030_63e5

    jr nz, jr_030_6407

    ld e, b
    ld a, a
    ld d, l
    ld a, [hl]
    ld e, h
    ld h, a
    ld a, $2b
    nop
    nop
    jr nc, jr_030_6404

    ret z

    ld hl, sp+$24
    db $fc
    ld d, d
    cp [hl]
    ld [de], a
    cp $11
    rst $38
    add hl, de
    rst $38
    ld a, $2b
    ld a, $23
    rla

jr_030_63e5:
    dec de
    inc c
    rrca
    ld e, $1f
    daa

jr_030_63eb:
    ccf
    inc de
    rra
    inc c
    inc c
    dec c
    rst $38
    ld a, [bc]
    ld a, [$f050]
    and b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ret z

    ld hl, sp+$30
    jr nc, jr_030_640e

    dec c
    rra
    rra

jr_030_6404:
    rra
    rra
    ccf

jr_030_6407:
    ld a, [hl-]
    rra
    db $10
    dec sp
    inc [hl]
    ld a, l
    ld d, d

jr_030_640e:
    ld l, a
    ld d, [hl]
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld e, h
    ld hl, sp+$08
    call c, $be2c
    ld c, d
    or $6a
    ccf
    jr nc, jr_030_6461

    add hl, sp
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    inc a
    ccf
    rra
    rra
    inc de
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    ld e, $f2
    inc a
    db $fc
    ld hl, sp-$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    dec c
    dec c
    rra
    rra
    rra
    rra
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld l, a
    ld e, a
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    or $fa
    ccf

jr_030_6461:
    ld [hl], $3f
    jr c, jr_030_64dc

    ld c, a
    ld [hl], b
    ld e, a
    inc a
    ccf
    rra
    rra
    inc de
    rra
    ld c, $0e
    db $fc
    ld l, h
    db $fc
    inc e
    xor $f2
    ld c, $fa
    inc a
    db $fc
    ld hl, sp-$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    ld b, $06
    rrca
    rrca
    rrca
    rrca
    rra
    rla
    rra
    ld de, $141b
    rla
    jr jr_030_64ae

    inc e
    ret nc

    ret nc

    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08

jr_030_649e:
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    dec bc
    ld c, $0f
    ld c, $07
    rlca
    inc b
    rlca

jr_030_64ae:
    inc bc
    inc bc
    ld hl, sp-$68
    ldh a, [$30]
    ldh [$e0], a
    and b
    ld h, b
    ldh [$60], a
    ret nz

    ret nz

    jr nz, jr_030_649e

    ret nz

    ret nz

    nop
    nop
    dec c
    dec c
    rra
    rra
    rra
    rra
    ccf
    ld a, [hl-]
    rra
    db $10
    dec sp
    inc [hl]
    ld a, l
    ld d, d
    nop
    nop
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld e, h
    ld hl, sp+$08

jr_030_64dc:
    call c, $be2c
    ld c, d
    ld l, a
    ld d, [hl]
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    ccf
    ccf
    inc c
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    or $6a
    db $fc
    inc c
    ld a, h
    sbc h
    db $fc
    db $e4
    inc a
    db $e4
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    nop
    nop
    dec c
    dec c
    rra
    rra
    rra
    rra
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    ld l, a
    ld e, a
    ccf
    ld [hl], $3f
    jr c, jr_030_653e

    rra
    jr jr_030_6549

    rrca
    rrca
    ld [$070f], sp
    rlca
    or $fa
    db $fc
    ld l, h
    db $fc
    inc e
    db $fc
    db $e4
    inc a
    db $e4
    ld hl, sp-$08
    ldh a, [$f0]

jr_030_653e:
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    rrca
    rrca
    rrca
    rra

jr_030_6549:
    rla
    rra
    ld de, $141b
    rla
    jr jr_030_6551

jr_030_6551:
    nop
    ret nc

    ret nc

    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    rra
    inc e
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    add hl, de
    rra
    daa
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ld hl, sp-$68
    ldh a, [$30]
    ldh [$e0], a
    ldh a, [$30]
    add sp, -$48
    ret z

    ld hl, sp+$30
    jr nc, jr_030_6584

    inc bc
    rrca
    inc c

jr_030_6584:
    rra
    db $10
    ccf
    ld [hl+], a
    dec a
    daa
    ccf
    jr z, jr_030_660c

    ld c, b
    ld a, a
    ld c, d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    ld b, h
    cp h
    db $e4
    db $fc
    inc d
    cp $12
    cp $52
    ccf
    ld a, [hl+]
    ccf
    inc h
    ld a, a
    ld b, e
    ccf
    dec h
    rra
    dec e
    rrca
    dec bc
    add hl, bc
    rrca
    ld b, $06
    db $fc
    ld d, h
    db $fc
    inc h
    cp $c2
    db $fc
    and h
    ld hl, sp-$48
    ldh a, [$d0]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    jr nz, @+$41

    jr nz, jr_030_660a

    jr nz, @+$81

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $02
    ccf
    jr nz, @+$41

    ld hl, $437f
    ccf
    daa
    rra
    rra
    rrca
    dec bc
    add hl, bc
    rrca
    ld b, $06
    db $fc
    inc b
    db $fc
    add h
    cp $c2
    db $fc
    db $e4
    ld hl, sp-$08
    ldh a, [$d0]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rla
    ld e, $1f
    add hl, de

jr_030_660a:
    rra
    db $10

jr_030_660c:
    rra
    inc d
    rra
    dec d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    add h
    ld hl, sp-$78
    db $fc
    inc b
    rra
    ld de, $0c0b
    rlca
    rlca
    rrca
    ld a, [bc]
    rrca
    dec bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    cp $02
    cp $82
    db $fc
    inc b
    cp $02
    db $fc
    inc l
    ldh a, [$f0]
    ld b, b
    ret nz

    ret nz

    ret nz

    inc de
    inc de
    inc l
    ccf

jr_030_6644:
    jr nz, @+$41

    ld sp, $473f
    ld a, [hl]
    cpl
    jr c, @+$81

    ld d, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    jr nc, jr_030_6644

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $f4
    ld a, h
    cp $0a
    or $6a
    ccf
    jr nc, jr_030_66e1

    ld c, c
    ld a, a
    ld b, a
    rst $38
    sub b
    rst $38
    sbc a
    ld a, a
    ld a, a
    rra
    ld de, $3e3e
    db $fc
    ld c, $7e
    sub d
    cp $e2
    rst $38
    add hl, bc
    rst $38
    db $fd
    cp $fe
    ld hl, sp-$78
    ld a, h
    ld a, h
    inc de
    inc de
    inc l
    ccf

jr_030_6684:
    jr nz, @+$41

    jr nc, @+$41

    ld b, b
    ld a, a
    jr nz, jr_030_66cb

    ld [hl], b
    ld e, a
    ld h, b
    ld e, a
    ret nz

    ret nz

    jr nc, jr_030_6684

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld b, $fa
    jr nc, jr_030_66e1

    ld a, d
    ld c, a
    ld l, a
    ld d, l
    rst $38
    sub b
    rst $38
    sbc a
    ld a, a
    ld a, a
    rra
    ld de, $3e3e
    inc c
    db $fc
    ld e, [hl]
    ld a, [c]
    or $aa
    rst $38
    add hl, bc
    rst $38
    db $fd
    cp $fe
    ld hl, sp-$78
    ld a, h
    ld a, h
    inc de
    inc de
    inc l
    ccf

jr_030_66c4:
    jr nz, jr_030_6705

    ld [hl], $3f
    ld c, a
    ld a, c
    ccf

jr_030_66cb:
    jr nc, jr_030_66ec

    ld d, $1f
    db $10
    ret nz

    ret nz

    jr nc, jr_030_66c4

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $e4
    ld a, h
    db $f4
    inc e
    ld hl, sp+$18
    rra

jr_030_66e1:
    db $10
    dec bc
    inc c
    rra
    rla
    rra
    ld de, $0f0f
    ld b, $07

jr_030_66ec:
    rrca
    ld [$0f0f], sp
    ldh [rSVBK], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    inc de
    inc de
    inc l

jr_030_6705:
    ccf

jr_030_6706:
    jr nz, @+$41

    ld sp, $473f
    ld a, [hl]
    cpl
    jr c, @+$81

    ld d, b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_6706

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $f4
    ld a, h
    cp $0a
    ld l, a
    ld d, [hl]
    ccf
    jr nc, jr_030_67a3

    ld c, c
    ld a, a
    ld d, a
    ccf
    inc a
    rra
    rra
    rra
    db $10
    rrca
    rrca
    or $6a
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    db $e4
    db $fc
    add h
    db $fc
    call nz, $f8f8
    nop
    nop
    nop
    nop
    inc de
    inc de
    inc l
    ccf

jr_030_6746:
    jr nz, @+$41

    jr nc, @+$41

    ld b, b
    ld a, a
    jr nz, jr_030_678d

    ld [hl], b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_6746

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld h, b
    ld e, a
    jr nc, jr_030_67a3

    ld a, [hl-]
    cpl
    ld a, a
    ld d, l
    ccf
    jr c, jr_030_678a

    rra
    rra

jr_030_676d:
    db $10
    rrca
    rrca
    ld b, $fa
    inc c
    db $fc
    ld e, b
    ld hl, sp-$04
    and h
    db $fc
    inc h
    db $fc
    call nz, $f8f8
    nop
    nop
    nop
    nop
    inc de
    inc de
    inc l
    ccf

jr_030_6786:
    jr nz, @+$41

    ld [hl], $3f

jr_030_678a:
    ld c, a
    ld a, c
    ccf

jr_030_678d:
    jr nc, jr_030_67ae

    ld d, $00
    nop
    ret nz

    ret nz

    jr nc, jr_030_6786

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $e4
    ld a, h
    db $f4
    inc e
    rra
    db $10
    rra

jr_030_67a3:
    db $10
    dec bc
    inc c
    rra
    rla
    ccf
    inc a
    ccf
    daa
    rra
    inc de

jr_030_67ae:
    ld c, $0e
    ld hl, sp+$18
    ret nc

    jr nc, jr_030_676d

    ld c, b
    ld hl, sp-$38
    db $fc
    ld b, h
    db $fc
    db $e4
    db $fc
    db $fc
    jr @+$1a

    inc bc
    inc bc
    inc c
    rrca

jr_030_67c4:
    db $10
    rra
    jr jr_030_67df

    ld [hl+], a
    dec a
    dec h
    ccf
    scf
    inc a
    cpl
    ld a, [hl-]
    ret nz

    ret nz

jr_030_67d2:
    jr nc, jr_030_67c4

    ld [$18f8], sp
    add sp, $44
    cp h
    and h
    db $fc
    db $ec
    inc a
    db $f4

jr_030_67df:
    ld e, h
    ld c, a
    ld [hl], d
    cpl
    jr c, jr_030_6804

    rla
    inc a
    daa
    inc d
    dec de
    ld c, $09
    add hl, bc
    rrca
    ld b, $06
    ld a, [c]
    ld c, [hl]
    db $f4
    inc e
    ld hl, sp-$18
    inc a
    db $e4
    jr z, jr_030_67d2

    ld [hl], b
    sub b
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_030_6804:
    db $10
    rra
    db $10
    rra
    jr z, jr_030_6841

    ld [hl+], a
    dec a
    jr nc, @+$41

    jr nz, jr_030_684f

    ret nz

    ret nz

jr_030_6812:
    jr nc, jr_030_6804

    ld [$08f8], sp
    ld hl, sp+$14
    db $ec
    ld b, h
    cp h
    inc c
    db $fc
    inc b
    db $fc
    ld b, b
    ld a, a
    jr z, jr_030_6863

    rra
    rla
    inc a
    daa
    inc d
    dec de
    ld c, $09
    add hl, bc
    rrca
    ld b, $06
    ld [bc], a
    cp $14
    db $fc
    ld hl, sp-$18
    inc a
    db $e4
    jr z, jr_030_6812

    ld [hl], b
    sub b
    sub b
    ldh a, [$60]
    ld h, b
    inc bc

jr_030_6841:
    inc bc
    inc c
    rrca

jr_030_6844:
    db $10
    rra
    ld a, [hl+]
    dec a
    jr z, @+$41

    inc a
    scf
    ld e, $17
    rra

jr_030_684f:
    dec d
    ret nz

    ret nz

    jr nc, jr_030_6844

    jr @-$16

    ld b, h
    cp h
    inc b

jr_030_6859:
    db $fc
    inc b
    db $fc
    call nz, $e6fc
    ld a, $1f
    db $10
    dec bc

jr_030_6863:
    dec c
    rlca
    rlca
    dec b
    rlca
    inc b
    rlca
    inc bc
    ld [bc], a
    inc b
    rlca
    inc bc
    inc bc
    ld [c], a
    ld a, $04
    db $fc
    adc b
    ld hl, sp-$10
    jr nc, jr_030_6859

    and b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_6886:
    db $10
    rra
    jr jr_030_68a1

    ld [hl+], a
    dec a
    dec h
    ccf
    scf
    inc a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_6886

    ld [$18f8], sp
    add sp, $44
    cp h
    and h
    db $fc
    db $ec
    inc a
    cpl

jr_030_68a1:
    ld a, [hl-]
    ld c, a
    ld [hl], d
    cpl
    jr c, jr_030_68c6

    rla
    inc d
    dec de
    ld c, $09
    inc b
    rlca
    inc bc
    inc bc
    db $f4
    ld e, h
    ld a, [c]
    ld c, [hl]
    db $f4
    inc e
    ld hl, sp-$18
    ld a, b
    ret z

    ld [hl], b
    or b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_68c6:
    db $10
    rra
    db $10
    rra
    jr z, jr_030_6903

    ld [hl+], a
    dec a
    jr nc, @+$41

    nop
    nop

jr_030_68d2:
    ret nz

    ret nz

    jr nc, jr_030_68c6

    ld [$08f8], sp
    ld hl, sp+$14
    db $ec
    ld b, h
    cp h

jr_030_68de:
    inc c
    db $fc
    jr nz, jr_030_6921

    ld b, b
    ld a, a
    jr z, jr_030_6925

    rra
    rla
    ld e, $13
    ld c, $0d
    rlca
    rlca
    nop
    nop
    inc b
    db $fc
    ld [bc], a
    cp $14
    db $fc
    ld hl, sp-$18
    jr z, jr_030_68d2

    ld [hl], b
    sub b
    jr nz, jr_030_68de

    ret nz

    ret nz

jr_030_6900:
    nop
    nop
    inc bc

jr_030_6903:
    inc bc
    inc c
    rrca

jr_030_6906:
    db $10
    rra
    ld a, [hl+]
    dec a
    jr z, jr_030_694b

    inc a
    scf
    ld e, $17
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_6906

    jr jr_030_6900

    ld b, h
    cp h
    inc b
    db $fc
    inc b
    db $fc
    call nz, $1ffc

jr_030_6921:
    dec d
    rra

jr_030_6923:
    db $10
    dec bc

jr_030_6925:
    dec c
    rlca
    rlca
    dec de
    dec e
    daa
    inc a
    inc de
    rra
    ld c, $0e
    and $3e
    ld [c], a
    ld a, $04
    db $fc
    adc b
    ld hl, sp-$10
    jr nc, jr_030_6923

    cp b
    ret z

    ld hl, sp+$30
    jr nc, jr_030_6944

    inc bc
    rrca
    rrca

jr_030_6944:
    rra
    rra
    rra
    rra
    ccf
    dec sp
    ld a, a

jr_030_694b:
    ld d, c
    ld a, a
    ld b, h
    ld l, a
    ld d, d
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    call c, $8afe
    cp $22
    or $4a
    ccf
    jr nc, jr_030_69a1

    add hl, sp
    ld a, a
    ld c, a
    ld a, [hl]
    ld c, l
    cp $f9
    ld hl, sp-$01
    ld a, a
    ld a, a
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    ld a, [hl]
    or d
    ld a, a
    sbc a
    rra
    rst $38
    cp $fe
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fa
    ccf

jr_030_69a1:
    scf
    rra
    jr jr_030_69e4

    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld c, $0e
    db $fc
    db $ec
    ld hl, sp+$18
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    rra
    ld de, $121f
    rra
    inc d
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$78
    cp b
    ld c, b
    rra
    db $10
    dec bc
    inc c

jr_030_69e4:
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp-$28
    db $fc
    inc a
    cp $3e
    call c, $f0fc
    ldh a, [$c0]
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    dec sp
    ccf
    ld sp, $547f
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    call c, $8cfc
    cp $2a
    ld l, a
    ld d, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    rst $38
    rst $38
    cp $fd
    ld a, [hl]
    ld a, c
    rra
    rra
    rlca
    rlca
    or $4a
    cp $0a
    ld a, h
    sbc h
    rst $38
    rst $30
    ld a, a
    rst $08
    ld a, [hl]
    adc $b8
    cp b
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    ld a, a
    ld e, a
    ccf
    scf
    rst $38
    ld hl, sp-$01
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rra
    rra
    ld c, $0e
    cp $fa
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ret nz

    ret nz

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
    ccf
    ccf
    ccf
    scf
    rra
    ld de, $121f
    nop
    nop
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$78
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec e
    ld e, $3f
    ld a, $1f
    rra
    ld c, $0e
    cp b
    ld c, b
    ldh a, [rNR10]
    rst $38
    ld a, a
    cp $de
    cp $9e
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_030_6ad8

    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    ld h, $2f
    add hl, sp
    cpl
    jr c, jr_030_6b38

    ld d, h
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    db $e4

jr_030_6ad8:
    db $f4
    inc e
    db $f4
    inc e
    sub $2a
    or $4a
    ld e, a
    ld [hl], b
    ld a, $39
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    inc a
    ccf
    rra
    rra
    inc de
    rra
    ld c, $0e
    ld a, [$7c0e]
    sbc h
    cp $f2
    ld e, $f2
    inc a
    db $fc
    ld hl, sp-$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    jr nz, jr_030_6b40

    jr z, jr_030_6b38

    ld [hl-], a
    ld l, a
    ld d, b
    ld l, a
    ld d, b
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $ec
    inc d
    or h
    ld c, h
    or $0a
    or $0a
    ld e, a
    ld [hl], b
    ccf
    jr c, jr_030_6ba4

    ld c, a
    ld [hl], b
    ld e, a
    inc a
    ccf
    rra
    rra
    inc de
    rra
    ld c, $0e
    ld a, [$fc0e]
    inc e
    cp $f2
    ld c, $fa

jr_030_6b38:
    inc a
    db $fc
    ld hl, sp-$08
    ret z

    ld hl, sp+$70
    ld [hl], b

jr_030_6b40:
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rra
    ld d, $0e
    add hl, bc
    rra
    db $10
    dec e
    ld [de], a
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $f4
    inc c
    call c, Call_030_7e24
    add d
    ld a, [hl]
    ld [c], a

jr_030_6b5e:
    cp $92
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld b, $07
    dec b
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    db $fc
    inc d
    ld l, b
    ld hl, sp-$30
    ldh a, [$e0]
    jr nz, @-$1e

    jr nz, @-$3e

    ret nz

    jr nz, jr_030_6b5e

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    ld h, $2f
    add hl, sp
    cpl
    jr c, jr_030_6bfa

    ld d, h
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    db $e4
    db $f4
    inc e
    db $f4
    inc e
    sub $2a
    ld l, a
    ld d, d
    ld e, a
    ld [hl], b

jr_030_6ba4:
    ld a, $29
    ccf
    ccf
    inc e
    rra
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    or $4a
    ld a, [$7c0e]
    sbc h
    db $fc
    db $e4
    inc a
    db $e4
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    jr nz, jr_030_6c02

    jr z, jr_030_6bfa

    ld [hl-], a
    ld l, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $ec
    inc d
    or h
    ld c, h
    or $0a
    ld l, a
    ld d, b
    ld e, a
    ld [hl], b
    ccf
    jr c, jr_030_6bfe

    rra
    jr jr_030_6c09

    rrca
    rrca
    ld [$070f], sp
    rlca
    or $0a
    ld a, [$fc0e]
    inc e
    db $fc
    db $e4
    inc a
    db $e4

jr_030_6bfa:
    ld hl, sp-$08
    ldh a, [$f0]

jr_030_6bfe:
    nop
    nop
    nop
    nop

jr_030_6c02:
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rra

jr_030_6c09:
    ld d, $0e
    add hl, bc
    rra
    db $10
    dec e
    ld [de], a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $f4
    inc c
    call c, Call_030_7e24
    add d
    ld a, [hl]
    ld [c], a
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec c
    rrca
    inc de
    rra
    add hl, bc
    rrca
    ld b, $06
    cp $92
    db $fc
    inc d
    ld l, b
    ld hl, sp-$30
    ldh a, [$f8]
    jr @-$0a

    sbc h
    db $e4
    db $fc
    jr jr_030_6c58

    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    inc e
    rra
    dec sp
    cpl
    ccf
    dec a
    ccf
    jr c, jr_030_6c8e

    ld a, [hl-]
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    inc a
    db $fc

jr_030_6c58:
    call c, $fcf4
    cp h
    db $fc
    inc e
    db $fc
    ld e, h
    rra
    ld [de], a
    rrca
    ld [$1f17], sp
    inc [hl]
    cpl
    inc de
    rra
    inc d
    rra
    ld [$070f], sp
    rlca
    ld hl, sp+$48
    ldh a, [rNR10]
    add sp, -$08
    inc l
    db $f4
    ret z

    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rla
    ccf
    dec a
    ccf
    ccf
    ccf
    ccf

jr_030_6c8e:
    ccf
    ccf
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $ec
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc de
    rrca
    ld [$1f17], sp
    inc [hl]
    cpl
    inc de
    rra
    inc d
    rra
    ld [$070f], sp
    rlca
    ld hl, sp-$38
    ldh a, [rNR10]
    add sp, -$08
    inc l
    db $f4
    ret z

    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    inc de
    rra
    add hl, sp
    ccf
    inc a
    ccf
    ld a, $33
    rra
    dec d
    rra
    dec d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $ec
    db $fc
    cp h
    db $fc
    db $fc
    ld hl, sp-$08
    rra
    ld de, $0d0b
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    dec bc
    ld c, $09
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ret nc

    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [rBCPS]
    ld hl, sp-$38
    ld a, b
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    inc e
    rra
    dec sp
    cpl
    ccf
    dec a
    ccf
    jr c, jr_030_6d11

jr_030_6d11:
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    inc a
    db $fc
    call c, $fcf4
    cp h
    db $fc
    inc e
    ccf
    ld a, [hl-]
    rra
    ld [de], a
    rrca
    ld [$1f17], sp
    inc [hl]
    cpl
    inc de
    rra
    inc c
    rrca
    inc bc
    inc bc
    db $fc
    ld e, h
    ld hl, sp+$48
    ldh a, [rNR10]
    add sp, -$08
    inc l
    db $f4
    ret z

    ld hl, sp+$70
    ldh a, [$80]
    add b
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rla
    ccf
    dec a
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $ec
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    ccf
    rra
    inc de
    rrca
    ld [$1f17], sp
    inc [hl]
    cpl
    inc de
    rra
    ld c, $0f
    ld bc, $fc01
    db $fc
    ld hl, sp-$38
    ldh a, [rNR10]
    add sp, -$08
    inc l
    db $f4
    ret z

    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    inc de
    rra
    add hl, sp
    ccf
    inc a
    ccf
    ld a, $33
    rra
    dec d
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $ec
    db $fc
    cp h
    db $fc
    db $fc
    rra
    dec d
    rra
    ld de, $0d0b
    ld b, $07
    inc b
    rlca
    rrca
    inc c
    dec bc
    rrca
    rlca
    rlca
    ld hl, sp-$08
    ldh a, [$f0]
    ret nc

    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [$88]
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    dec c
    dec c
    rra
    rra
    rra
    rra
    ccf
    add hl, sp
    ccf
    jr nc, jr_030_6e06

    inc [hl]
    ld a, l
    ld d, d
    ld l, a
    ld d, [hl]
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    sbc h
    db $fc
    inc c
    call c, $be2c
    ld c, d
    or $6a
    ccf
    jr c, jr_030_6df1

    dec c
    rla
    ld e, $17
    ld e, $0f
    ld c, $0f
    rrca
    add hl, bc
    rrca
    ld b, $06
    db $fc

jr_030_6df1:
    inc e
    ld [hl], b
    or b
    add sp, -$08
    add sp, $78
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$60]
    ld h, b
    dec c
    dec c
    rra
    rra
    rra
    rra

jr_030_6e06:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld l, a
    ld e, a
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    or $fa
    ccf
    dec sp
    rrca
    inc c
    rla
    rra
    inc de
    rra
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    db $fc
    call c, $30f0
    add sp, -$08
    ret z

    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rla
    rra
    ld de, $141b
    rla
    jr jr_030_6e6e

    inc e
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    db $fc
    db $fc

jr_030_6e58:
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc

jr_030_6e5e:
    ld hl, sp-$68
    rra
    db $10
    ld a, [bc]
    dec c
    rra
    rla
    ld e, $17
    ld c, $0f
    rlca
    rlca
    inc b
    rlca

jr_030_6e6e:
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [$e0], a
    jr nz, jr_030_6e58

    ld h, b
    ldh [$c0], a
    ret nz

    jr nz, jr_030_6e5e

    ret nz

    ret nz

    nop
    nop
    dec c
    dec c
    rra
    rra
    rra
    rra
    ccf
    add hl, sp
    ccf
    jr nc, jr_030_6ec8

    inc [hl]
    ld a, l
    ld d, d
    nop
    nop
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    sbc h
    db $fc
    inc c
    call c, $be2c
    ld c, d
    ld l, a
    ld d, [hl]
    ccf
    jr c, jr_030_6eb3

    dec c
    rla
    ld e, $17
    ld e, $0f
    ld c, $04
    rlca
    inc bc
    inc bc
    or $6a
    db $fc

jr_030_6eb3:
    inc e
    ld [hl], b
    or b
    add sp, -$08
    add sp, $78
    ldh a, [rSVBK]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    dec c
    dec c
    rra
    rra
    rra
    rra

jr_030_6ec8:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    or b
    or b
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    ld l, a
    ld e, a
    ccf
    dec sp
    rrca
    inc c
    rla
    rra
    inc de
    rra
    rrca
    rrca
    inc b
    rlca
    inc bc
    inc bc
    or $fa
    db $fc
    call c, $30f0
    add sp, -$08
    ret z

    ld hl, sp-$10
    ldh a, [$80]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    dec de
    rra
    ld de, $141b
    rla
    jr jr_030_6f11

jr_030_6f11:
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc e
    rra
    db $10
    ld a, [bc]
    dec c
    rra
    rla
    ld e, $17
    daa
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [$e0], a
    ld [hl], b
    ldh a, [$e8]
    ld hl, sp-$38
    ld hl, sp+$30
    jr nc, jr_030_6f44

    inc bc
    inc c
    rrca

jr_030_6f44:
    db $10
    rra
    jr nz, @+$41

    jr nc, jr_030_6f79

    ld b, d
    ld a, a
    ld c, a
    ld a, l
    cpl
    ld [hl-], a
    ret nz

    ret nz

    jr nc, jr_030_6f44

    ld [$04f8], sp
    db $fc
    inc c
    db $f4
    ld b, d
    cp $f2
    cp [hl]
    ld a, [c]
    ld c, [hl]
    rra
    ld [de], a
    ld c, $09
    rla
    rra
    inc [hl]
    cpl
    dec de
    inc e
    ld c, $0f
    add hl, bc
    rrca
    ld b, $06
    ld a, [$724e]
    sbc [hl]
    ld [$2cfe], a
    db $f4
    ret c

jr_030_6f79:
    jr c, jr_030_6feb

    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_030_6f84:
    db $10
    rra
    jr nz, jr_030_6fc7

    jr nz, @+$41

    ld d, b
    ld l, a
    ld b, h
    ld a, e
    ld b, b
    ld a, a
    ret nz

    ret nz

    jr nc, jr_030_6f84

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld a, [bc]
    or $22
    sbc $04
    db $fc
    jr nz, jr_030_6fe1

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    inc c
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ld [$10f8], sp
    ldh a, [$28]
    ld hl, sp+$2c
    db $f4
    ld e, b
    ld hl, sp-$10
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_030_6fc4:
    db $10
    rra
    ld a, [hl+]

jr_030_6fc7:
    dec a
    jr z, @+$41

    inc a
    scf
    ld e, $17
    rra
    dec d
    ret nz

    ret nz

    jr nc, jr_030_6fc4

    jr @-$16

    ld b, h
    cp h
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $1f

jr_030_6fe1:
    ld de, $0d0b
    ld b, $07
    inc b
    rlca
    dec b
    rlca
    inc bc

jr_030_6feb:
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld b, d
    cp $c4
    db $fc
    add h
    db $fc
    ld c, b
    ld hl, sp-$10
    ld [hl], b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7006:
    db $10
    rra
    jr nz, @+$41

    jr nc, jr_030_703b

    ld b, d
    ld a, a
    ld c, a
    ld a, l
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_7006

    ld [$04f8], sp
    db $fc
    inc c
    db $f4
    ld b, d
    cp $f2
    cp [hl]
    cpl
    ld [hl-], a
    rra
    ld [de], a
    ld c, $09
    rla
    rra
    inc [hl]
    cpl
    dec de
    inc e
    inc b
    rlca
    inc bc
    inc bc
    ld a, [c]
    ld c, [hl]
    ld a, [$724e]
    sbc [hl]
    ld [$2cfe], a
    db $f4
    ret c

jr_030_703b:
    jr c, jr_030_70ad

    ldh a, [$80]
    add b
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7046:
    db $10
    rra
    jr nz, jr_030_7089

    jr nz, @+$41

    ld d, b
    ld l, a
    ld b, h
    ld a, e
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_7046

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld a, [bc]
    or $22
    sbc $40
    ld a, a
    jr nz, jr_030_70a3

    jr nz, @+$41

    db $10
    rra
    jr jr_030_7089

    rrca
    rrca
    inc b
    rlca
    inc bc
    inc bc
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [$28]
    ld hl, sp+$58
    add sp, $70
    ldh a, [$80]
    add b
    nop
    nop

jr_030_7080:
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7086:
    db $10
    rra
    ld a, [hl+]

jr_030_7089:
    dec a
    jr z, jr_030_70cb

    inc a
    scf
    ld e, $17
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_7086

    jr jr_030_7080

    ld b, h
    cp h
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $1f
    dec d
    rra

jr_030_70a3:
    ld de, $0d0b
    ld b, $07
    inc b
    rlca
    rrca
    rrca
    add hl, bc

jr_030_70ad:
    rrca
    rlca
    rlca
    ld [bc], a
    cp $42
    cp $c4
    db $fc
    add h
    db $fc
    ld c, b
    ld hl, sp-$10
    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    add hl, sp
    ld a, a

jr_030_70cb:
    ld d, c
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    sbc h
    cp $0a
    cp $02
    or $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, c
    ccf
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $92
    db $fc
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld e, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $fa
    dec sp
    scf
    inc a
    cpl
    ld a, a
    ld c, e
    ld a, a
    ld e, b
    ccf
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $dc
    db $ec
    inc a
    db $f4
    cp $d2
    cp $1a
    db $fc
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    add hl, sp
    rra
    db $10
    rra
    db $10
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    ld a, h
    sbc h
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld a, [bc]
    rrca
    ld c, $07
    ld b, $05
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ldh [$30], a
    ldh a, [$d0]
    ldh a, [$50]
    ldh a, [rSVBK]
    ldh [$60], a
    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    add hl, sp
    ld a, a
    ld d, c
    ld a, a
    ld b, b
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    sbc h
    cp $0a
    cp $02
    ld l, a
    ld d, d
    rst $38
    or d
    ld a, [hl]
    ld c, c
    ccf
    scf
    rra
    add hl, de
    rla
    rra
    ld de, $0e1f
    ld c, $f6
    ld c, d
    db $fc
    ld c, h
    ld a, h
    sub h
    cp $e2
    cp $92
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    ld l, a
    ld e, a
    ei
    or a
    ld a, h
    ld c, a
    ccf
    inc sp
    rra
    rra
    rla
    rra
    ld de, $0e1f
    ld c, $f6
    ld a, [$ecdc]
    inc a
    db $f4
    cp $d2
    cp $f2
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    add hl, sp
    rra
    db $10
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    rra
    dec e
    daa
    ccf
    inc de
    rra
    inc c

jr_030_722f:
    inc c
    ld a, h

jr_030_7231:
    sbc h
    ld hl, sp+$18
    ld h, b
    ldh [$e0], a
    jr nz, jr_030_7231

    jr jr_030_722f

    sbc h
    db $e4
    db $fc
    jr @+$1a

    inc bc
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld h, $3b
    daa
    dec a
    cpl
    jr c, jr_030_726e

    ld [de], a
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$98]
    add sp, $64
    call c, $bce4
    db $f4
    inc e
    ld hl, sp+$48
    rra
    ld [de], a
    ld e, $19
    ccf
    daa
    ccf
    inc h
    ld a, [de]
    rra
    rrca
    ld [$0f0f], sp

jr_030_726e:
    ld b, $06
    ld hl, sp+$48
    ld a, b
    sbc b
    db $fc
    db $e4
    db $fc
    inc h
    ld e, b
    ld hl, sp-$10
    db $10
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld bc, $0601
    rlca
    dec c
    ld c, $16
    dec e
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    add b
    add b
    ld h, b
    ldh [$b0], a
    ld [hl], b
    ld l, b
    cp b
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    ld de, $181f
    rra
    ccf
    cpl
    ccf
    inc l
    ld a, [de]
    rra
    rrca
    ld [$0f0f], sp
    ld b, $06
    adc b
    ld hl, sp+$18
    ld hl, sp-$04
    db $f4
    db $fc
    inc [hl]
    ld e, b
    ld hl, sp-$10
    db $10
    ldh a, [$f0]
    ld h, b
    ld h, b
    rlca
    rlca
    jr jr_030_72e3

    inc a
    daa
    ld d, d
    ld l, a
    ld [hl], c
    ld a, a
    add hl, sp
    cpl
    dec a
    cpl
    ccf
    dec hl
    or b
    or b
    ld a, b
    ret z

    inc a
    db $e4
    inc e
    db $f4
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    sub h
    db $fc
    ccf
    jr nz, jr_030_72fa

jr_030_72e3:
    jr jr_030_72f0

    rrca
    rrca
    inc c
    rrca
    inc c
    rrca
    dec bc
    rrca
    rrca
    rra
    rra

jr_030_72f0:
    call nc, $e8fc
    ld l, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$a0], a

jr_030_72fa:
    ld h, b
    and b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0701
    rlca
    ld [$1c0f], sp
    inc de
    ld h, $3b
    daa
    dec a
    cpl
    jr c, jr_030_7311

jr_030_7311:
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$98]
    add sp, $64
    call c, $bce4
    db $f4
    inc e
    rra
    ld [de], a
    rra
    ld [de], a
    ld a, $39
    ccf
    cpl
    ld a, [de]
    rra
    rrca
    inc c
    rrca
    rrca
    ld b, $06
    ld hl, sp+$48
    ld hl, sp+$48
    ld a, b
    sbc b
    ldh a, [$f8]
    ld a, b
    ret z

    ld hl, sp+$48
    or b
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    inc c
    inc e
    dec de
    jr z, jr_030_738b

    jr nc, jr_030_738d

    ld sp, $003f
    nop
    add b
    add b
    ld h, b
    ldh [$50], a
    ldh a, [$c8]
    ld a, b
    ld b, h
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld [hl+], a
    ccf
    inc e
    rra
    jr c, jr_030_7395

    ccf
    cpl
    ld e, $19
    rrca
    ld c, $0f
    rrca
    ld b, $06
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [$f8]
    ld hl, sp+$7c
    db $e4
    db $fc
    inc h
    ret c

    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    rlca
    jr jr_030_73a5

    inc a
    daa
    ld d, d
    ld l, a
    ld [hl], c

jr_030_738b:
    ld a, a
    add hl, sp

jr_030_738d:
    cpl
    dec a
    cpl
    nop
    nop
    cp b
    cp b
    ld e, h

jr_030_7395:
    db $e4
    ld l, $f2
    ld d, $fa
    add hl, de
    rst $38
    add hl, de
    rst $38
    dec d
    rst $30
    ccf
    dec hl
    ccf
    jr nz, jr_030_73bc

jr_030_73a5:
    jr jr_030_73b4

    rrca
    rrca
    ld a, [bc]
    ccf
    ld a, [hl-]
    dec a
    ccf
    rra
    rra
    sub l
    rst $30
    push de
    rst $30

jr_030_73b4:
    ld [c], a
    ld h, d
    add b
    ret nz

    ret nz

    ld b, b
    ldh a, [rSVBK]

jr_030_73bc:
    or b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    dec a
    ccf
    jr nc, jr_030_73d1

jr_030_73d1:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    cp h
    db $fc
    inc c
    ccf
    ld [hl+], a
    rra
    ld [de], a
    ld c, $09
    rra
    rra
    ccf
    daa
    jr jr_030_740b

    rrca
    add hl, bc
    ld b, $06
    db $fc
    ld b, h
    ld hl, sp+$48

jr_030_73f4:
    ld [hl], b
    sub b
    ld hl, sp-$08
    db $fc
    db $e4
    jr jr_030_73f4

    ldh a, [$90]
    ld h, b
    ld h, b
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
    rra

jr_030_740b:
    rra
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    cpl
    rra
    inc de
    rrca
    ld [$1f1f], sp
    ccf
    daa
    jr jr_030_744b

    rrca
    add hl, bc
    ld b, $06
    db $fc
    db $f4
    ld hl, sp-$38

jr_030_7434:
    ldh a, [rNR10]
    ld hl, sp-$08
    db $fc
    db $e4
    jr jr_030_7434

    ldh a, [$90]
    ld h, b
    ld h, b
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
    ccf

jr_030_744b:
    ccf
    ccf
    dec sp
    rra
    stop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0707], sp
    dec b
    ld b, $03
    ld [bc], a
    rlca
    dec b
    inc bc
    inc bc
    db $fc
    sbc h
    ld hl, sp+$18
    ldh a, [$30]
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    ldh [$a0], a
    ret nz

    ret nz

    nop
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
    rra
    rra
    ccf
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    cp h
    ccf
    jr nc, jr_030_74e2

    ld [hl+], a
    rra
    ld [de], a
    ld c, $09
    rra
    rla
    rrca
    inc c
    rlca
    inc b
    inc bc
    inc bc
    db $fc
    inc c
    db $fc
    ld b, h
    ld hl, sp+$48
    ld [hl], b
    sub b
    ret c

    add sp, -$08
    ret z

    ldh a, [$f0]
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
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ccf
    ccf

jr_030_74e2:
    ccf
    cpl
    rra
    inc de
    ccf
    jr z, jr_030_7508

    rra
    ld [$0f0f], sp
    add hl, bc
    ld b, $06
    db $fc
    db $fc
    db $fc
    db $f4
    ld hl, sp-$38
    ldh a, [rNR10]
    ld hl, sp-$18
    inc a
    db $e4
    ld hl, sp-$08
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

jr_030_7508:
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0f0f], sp
    rra
    ld d, $0f
    ld a, [bc]
    dec b
    dec b
    db $fc
    db $fc
    db $fc
    sbc h
    ld hl, sp+$18
    ldh a, [$30]
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [$50]
    and b
    and b
    nop
    nop
    jr jr_030_755c

    dec sp
    ccf
    scf
    ccf
    rrca
    rra
    rra
    rra
    ccf
    dec a
    ccf
    jr nc, jr_030_7551

jr_030_7551:
    nop
    jr jr_030_756c

    call c, $ecfc
    db $fc
    ldh a, [$f8]
    ld hl, sp-$08

jr_030_755c:
    db $fc
    cp h
    db $fc
    inc c
    ccf
    ld [hl+], a
    rra
    ld [de], a
    ld c, $09
    rra
    rla
    inc a
    daa
    jr jr_030_758b

jr_030_756c:
    rrca
    rrca
    ld b, $06
    db $fc
    ld b, h
    ld hl, sp+$48

jr_030_7574:
    ld [hl], b
    sub b
    ld hl, sp-$18
    inc a
    db $e4
    jr jr_030_7574

    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    nop
    jr jr_030_759c

    dec sp
    ccf
    scf
    ccf
    rrca
    rra
    rra

jr_030_758b:
    rra
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    jr jr_030_75ac

    call c, $ecfc
    db $fc
    ldh a, [$f8]
    ld hl, sp-$08

jr_030_759c:
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    cpl
    rra
    inc de
    rrca
    ld [$171f], sp
    inc a
    daa
    jr @+$21

jr_030_75ac:
    rrca
    rrca
    ld b, $06
    db $fc
    db $f4
    ld hl, sp-$38

jr_030_75b4:
    ldh a, [rNR10]
    ld hl, sp-$18
    inc a
    db $e4
    jr jr_030_75b4

    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0f
    ld e, $1f
    ld a, $3f
    ccf
    dec sp
    rra
    stop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$e8]
    ld hl, sp-$14
    db $fc
    inc e
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0707], sp
    dec b
    ld b, $03
    ld [bc], a
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    sbc h
    ld hl, sp+$18
    ldh a, [$30]
    ret nz

    ret nz

    and b
    ld h, b
    sub b
    ld [hl], b
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    jr jr_030_761e

    dec sp
    ccf
    scf
    ccf
    rrca
    rra
    rra
    rra
    ccf
    dec a
    nop
    nop
    nop
    nop
    jr jr_030_762e

    call c, $ecfc
    db $fc
    ldh a, [$f8]
    ld hl, sp-$08

jr_030_761e:
    db $fc
    cp h
    ccf
    jr nc, jr_030_7662

    ld [hl+], a
    rra
    ld [de], a
    ld c, $09
    add hl, de
    rla
    rrca
    rrca

Call_030_762c:
    rlca
    rlca

jr_030_762e:
    inc bc
    inc bc
    db $fc
    inc c
    db $fc
    ld b, h
    ld hl, sp+$48
    ld [hl], b
    sub b
    sbc b
    add sp, $78
    ret z

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_030_765e

    dec sp
    ccf
    scf
    ccf
    rrca
    rra
    rra
    rra
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr jr_030_766e

    call c, $ecfc
    db $fc
    ldh a, [$f8]
    ld hl, sp-$08

jr_030_765e:
    db $fc
    db $fc
    ccf
    ccf

jr_030_7662:
    ccf
    cpl
    rra
    rla
    rrca
    ld [$171f], sp
    inc c
    rrca
    rlca
    rlca

jr_030_766e:
    inc bc
    inc bc
    db $fc
    db $fc
    db $fc
    db $f4
    ld hl, sp-$18
    ldh a, [rNR10]
    ld hl, sp-$18
    ld a, b
    ret z

    ldh a, [$f0]
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
    ld c, $0f
    ld e, $1f
    ld a, $3f
    ccf
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$e8]
    ld hl, sp-$14
    db $fc
    inc e
    db $fc
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0f0f], sp
    dec e
    ld e, $0f
    ld c, $05
    dec b
    db $fc
    db $fc
    db $fc
    sbc h
    ld hl, sp+$18
    ldh a, [$30]
    ret nz

    ret nz

    or b
    ld [hl], b
    ldh a, [rSVBK]
    and b
    and b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld e, a
    ld a, [hl]
    ld a, a
    ld d, h
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fe7e]
    ld a, [hl+]
    or $4a
    ccf
    ld [hl-], a
    ld e, $19
    ccf
    daa
    dec a
    ld h, $18
    rra
    rrca
    rrca
    rla
    rra
    ld e, $1e
    db $fc
    ld c, h

jr_030_76f2:
    ld a, b
    sbc b
    db $fc
    db $e4
    cp h
    ld h, h
    jr jr_030_76f2

    ldh a, [$f0]
    add sp, -$08
    ld a, b
    ld a, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld e, a
    ld a, a
    ld a, a
    ld e, a
    ld l, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fefe]
    ld a, [$faf6]
    dec sp
    scf
    rra
    inc e
    ccf
    cpl
    jr c, jr_030_7757

    jr jr_030_7749

    ld e, $1f
    rla
    rra
    ld c, $0e
    call c, $f8ec
    jr c, @-$02

    db $f4
    inc e
    db $f4
    jr @-$06

    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    scf

jr_030_7749:
    ccf
    dec hl
    scf
    rra
    dec d
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc

jr_030_7757:
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $2e
    sbc $2e
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    inc c
    ld hl, sp+$38
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld e, a
    ld a, [hl]
    ld a, a
    ld d, h
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fe7e]
    ld a, [hl+]
    ld l, a
    ld d, d
    ccf
    ld [hl-], a
    ld a, $39
    ccf
    cpl
    dec e
    inc de
    ld e, $13
    dec c
    dec c
    nop
    nop
    or $4a
    db $fc
    ld c, h
    ld a, h
    sub h
    ld hl, sp-$08
    ldh a, [$90]
    ld [hl], b
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld e, a
    ld a, a
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fefe]
    ld a, [$5f6f]
    dec sp
    scf
    ccf
    inc a
    ld [hl], a
    ld c, a
    ld a, h
    ld c, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    or $fa

jr_030_77f2:
    sbc $ee
    cp $3a
    db $ec
    db $fc
    jr c, jr_030_77f2

    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    scf
    ccf
    dec hl
    scf
    rra
    dec d
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $2e
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc l
    ccf
    rra
    rra
    ld c, $0e
    sbc $2e
    db $fc
    inc c
    ld hl, sp+$38
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    sbc h
    db $ec
    db $fc
    jr jr_030_7858

    inc bc
    inc bc
    rrca
    ld c, $1f
    rra
    rra
    rra
    ccf
    ccf
    scf
    dec a
    ccf
    jr z, jr_030_788e

    ld [hl+], a
    ret nz

    ret nz

    ldh a, [rSVBK]
    ld hl, sp-$08
    ld hl, sp-$08

jr_030_7858:
    db $fc
    db $fc
    db $ec
    cp h
    db $fc
    inc d
    db $fc
    ld b, h
    rra
    ld [de], a
    ld c, $09
    rra
    rla
    ccf
    daa
    inc de
    rra
    inc c
    rrca
    rrca
    rrca
    ld b, $06
    ld hl, sp+$48
    ld [hl], b
    sub b
    ld hl, sp-$18
    db $fc
    db $e4
    ret z

    ld hl, sp+$30
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    inc bc
    ld [bc], a
    dec c
    rrca
    dec de
    rra
    dec de
    rra
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf

jr_030_788e:
    inc a
    ccf
    ret nz

    ld b, b
    or b
    ldh a, [$d8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    call c, $dcfc
    db $fc
    inc a
    db $fc
    rra
    rla
    rrca
    ld [$373f], sp
    ccf
    daa
    inc de
    rra
    ld [$0f0f], sp
    rrca
    ld b, $06
    ld hl, sp-$18
    ldh a, [rNR10]
    db $fc
    db $ec
    db $fc
    db $e4
    ret z

    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    scf
    ccf
    dec a
    scf
    ccf
    ld sp, $141f
    db $fc
    call z, $fef6
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    sbc a
    rra
    inc d
    rrca
    ld [$0707], sp
    rlca
    ld b, $03
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    cp $1e
    ldh a, [$30]
    ldh [$e0], a
    ld h, b
    ldh [$d0], a
    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    ld c, $1f
    rra
    rra
    rra
    ccf
    ccf
    scf
    dec a
    ccf
    jr z, jr_030_7911

jr_030_7911:
    nop
    ret nz

    ret nz

    ldh a, [rSVBK]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $ec
    cp h
    db $fc
    inc d
    ccf
    ld [hl+], a
    rra
    ld [de], a
    ld a, $39
    ccf
    daa
    rra
    rra
    inc de
    rra
    inc c
    rrca
    rlca
    rlca
    db $fc
    ld b, h
    ld hl, sp+$48
    ld [hl], b
    sub b
    ld hl, sp-$18
    db $fc
    db $e4
    ld hl, sp-$38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    dec c
    rrca
    dec de
    rra
    dec de
    rra
    dec sp
    ccf
    dec a
    ccf
    dec a
    ccf
    nop
    nop
    ret nz

    ld b, b
    or b
    ldh a, [$d8]
    ld hl, sp-$28
    ld hl, sp-$14
    db $fc
    db $ec
    db $fc
    db $ec
    db $fc
    ld a, $3f
    rra
    rla
    rrca
    ld [$171f], sp
    dec sp
    cpl
    inc e
    rra
    rrca
    rrca
    ld b, $06
    inc e
    db $fc
    ld hl, sp-$18

jr_030_7974:
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp-$18
    jr jr_030_7974

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld a, e
    ld l, a
    ld a, a
    ld h, e
    nop
    nop
    ld hl, sp-$68
    db $ec
    db $fc
    or $fe
    or $fe
    or $fe
    rst $30
    rst $38
    rst $28
    rst $38
    ccf
    add hl, hl
    ccf
    jr z, jr_030_79c4

    db $10
    rrca
    rrca
    rrca
    dec bc
    inc e
    rla
    rrca
    rrca
    ld e, $1e
    rst $38
    ccf
    xor $2e

jr_030_79b4:
    ldh [$60], a
    ret nz

    ret nz

    ldh [$e0], a
    jr c, jr_030_79b4

    ld hl, sp-$08
    jr nc, jr_030_79f0

    inc bc
    inc bc
    rrca
    rrca

jr_030_79c4:
    inc e
    rra
    jr jr_030_79e7

    inc sp
    ccf
    dec [hl]
    ccf
    ld a, a
    ld a, b

jr_030_79ce:
    cp a
    ld a, [c]

jr_030_79d0:
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_030_79ce

    jr jr_030_79d0

    call z, $acfc
    db $fc
    cp $1e
    db $fd
    ld c, a
    rst $38
    ld a, [c]
    cp $f9
    ld [hl], a
    ld l, a
    ld a, c

jr_030_79e7:
    ld c, a
    jr nc, jr_030_7a29

    db $10
    rra
    ld [$070f], sp
    rlca

jr_030_79f0:
    rst $38
    ld c, a
    ld a, a
    sbc a
    xor $f6
    sbc [hl]
    ld a, [c]
    inc c
    db $fc
    ld [$10f8], sp
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld [hl], $3f
    add hl, sp
    cpl
    ld e, $1f
    db $10

jr_030_7a29:
    rra
    db $10
    rra
    ld [$070f], sp
    rlca
    cp $fe
    ld l, h
    db $fc
    sbc h
    db $f4
    ld a, b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    rrca
    add hl, de
    rra
    ld sp, $2e3e
    ccf
    rra
    inc de
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    or $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    db $10
    ld a, [bc]
    dec c
    rlca
    ld b, $07
    inc b
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    cp $7e
    cp h
    db $fc
    ret z

    ld hl, sp+$3c
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    jr @-$06

    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    inc e
    rra
    jr jr_030_7aa9

    inc sp
    ccf
    dec [hl]
    ccf
    ld a, a
    ld a, b

jr_030_7a90:
    nop
    nop

jr_030_7a92:
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_030_7a90

    jr jr_030_7a92

    call z, $acfc
    db $fc
    cp $1e
    cp a
    ld a, [c]
    rst $38
    ld a, [c]
    cp $f9
    ld l, a
    ld a, a
    ld a, c

jr_030_7aa9:
    ld e, a
    jr nc, jr_030_7aeb

    db $10
    rra
    rrca
    rrca
    db $fd
    ld c, a
    rst $38
    ld c, a
    ld a, a
    sbc a
    xor $fe
    cp [hl]
    adc $0c
    db $fc
    db $10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp a
    rst $38
    rst $38
    rst $38
    or $ff
    add hl, hl
    ccf
    ld h, $3f
    db $10

jr_030_7aeb:
    rra
    ld [$070f], sp
    rlca
    db $fd
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    sbc h
    db $f4
    ld l, h
    db $fc
    ld [$08f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    rlca
    rlca
    rrca
    rrca
    add hl, de
    rra
    ld sp, $2e3e
    ccf
    rra
    inc de
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    or $fe
    rst $38
    rst $38
    rra
    inc d
    rra
    db $10
    ld a, [bc]
    dec c
    rlca
    ld b, $07
    inc b
    ld [$0c0f], sp
    rrca
    rlca
    rlca
    rst $38
    ld a, a
    cp $fe
    cp h
    db $fc
    ret z

    ld hl, sp+$3c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld hl, sp-$08
    inc bc
    inc bc
    inc c
    rrca

jr_030_7b44:
    db $10
    rra
    jr z, jr_030_7b7f

    ld l, $3f
    ld [hl], a
    ld a, l
    adc a
    ld hl, sp-$61
    ld a, [$c0c0]
    jr nc, jr_030_7b44

    ld [$14f8], sp
    db $ec
    ld [hl], h
    db $fc
    xor $be
    pop af
    rra
    ld sp, hl
    ld e, a
    ld c, a
    ld [hl], d
    ccf
    jr c, jr_030_7b84

    rla
    ld a, $27
    inc de
    rra
    ld [$0c0f], sp
    rrca
    rlca
    rlca
    ld a, [c]
    ld c, [hl]
    db $fc
    inc e
    ld hl, sp-$18
    ld a, h
    db $e4
    ret z

    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [$e0]

jr_030_7b7f:
    ldh [$03], a
    inc bc
    inc c
    rrca

jr_030_7b84:
    db $10
    rra
    jr nz, jr_030_7bc7

    jr z, jr_030_7bc1

    ld [hl], d
    ld a, l
    adc b
    rst $38
    sbc b
    rst $38
    ret nz

    ret nz

    jr nc, jr_030_7b84

    ld [$04f8], sp
    db $fc
    inc d
    db $ec
    ld c, [hl]
    cp [hl]
    ld de, $19ff
    rst $38
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc e
    rra
    ccf
    daa
    dec de
    rra
    ld [$0c0f], sp
    rrca

jr_030_7bae:
    rlca
    rlca
    ld [bc], a
    cp $44
    db $fc
    jr c, jr_030_7bae

    db $fc
    db $e4
    ret nc

    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$03], a

jr_030_7bc1:
    inc bc
    inc c
    rrca

jr_030_7bc4:
    db $10
    rra
    daa

jr_030_7bc7:
    ccf
    ld l, $3b
    cpl
    add hl, sp
    rra
    dec d
    rra
    dec d
    ret nz

    ret nz

    jr nc, jr_030_7bc4

    jr @-$16

    ld b, h
    cp h
    inc b
    db $fc
    inc b
    db $fc
    inc e
    db $fc
    ld [hl+], a
    cp $1f
    db $10
    dec bc
    dec c
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [hl-], a
    cp $84
    db $fc
    ld hl, sp-$08
    ldh a, [$30]
    ldh [rNR41], a
    ret nc

    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7c06:
    db $10
    rra
    jr z, jr_030_7c41

    ld l, $3f
    ld [hl], a
    ld a, l
    adc a
    ld hl, sp+$00
    nop
    ret nz

    ret nz

    jr nc, jr_030_7c06

    ld [$14f8], sp
    db $ec
    ld [hl], h
    db $fc
    xor $be
    pop af
    rra
    sbc a
    ld a, [$724f]
    ccf
    jr c, jr_030_7c46

    rla
    ld a, $27
    dec de
    rra
    ld [$070f], sp
    rlca
    ld sp, hl
    ld e, a
    ld a, [c]
    ld c, [hl]
    db $fc
    inc e
    ld hl, sp-$18
    ld a, h
    db $e4
    ret c

    ld hl, sp+$60
    ldh [$c0], a
    ret nz

    inc bc

jr_030_7c41:
    inc bc
    inc c
    rrca

jr_030_7c44:
    db $10
    rra

jr_030_7c46:
    jr nz, jr_030_7c87

    jr z, jr_030_7c81

    ld [hl], d
    ld a, l
    adc b
    rst $38
    sbc b
    rst $38
    ret nz

    ret nz

    jr nc, jr_030_7c44

    ld [$04f8], sp
    db $fc
    inc d
    db $ec
    ld c, [hl]
    cp [hl]
    ld de, $19ff
    rst $38
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc e
    rra
    ccf
    daa
    dec de
    rra
    ld [$060f], sp
    rlca

jr_030_7c6e:
    ld bc, $0201
    cp $44
    db $fc
    jr c, jr_030_7c6e

    db $fc
    db $e4
    ret c

    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [rP1], a

jr_030_7c81:
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7c86:
    db $10

jr_030_7c87:
    rra
    daa
    ccf
    ld l, $3b
    cpl
    add hl, sp
    rra
    dec d
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_7c86

    jr @-$16

    ld b, h
    cp h
    inc b
    db $fc
    inc b
    db $fc
    inc e
    db $fc
    rra
    dec d
    rra
    db $10
    dec bc
    dec c
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    ld [$070f], sp
    rlca
    ld [hl+], a
    cp $32
    cp $84
    db $fc
    ld hl, sp-$08
    ldh a, [$30]
    ldh [rNR41], a
    ret nc

    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    dec a
    ccf
    ld a, [hl-]
    dec a
    ld l, a
    ld d, b
    ld a, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp h
    db $fc
    ld e, h
    cp h
    or $0a
    cp $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, e
    ld c, a
    ccf
    ccf
    inc e
    rra
    dec de
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h

jr_030_7cf4:
    cp $f2
    sbc $f2
    db $fc
    db $fc
    jr c, jr_030_7cf4

    ret c

    add sp, $70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld [hl], a
    ld c, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    xor $f2
    dec a
    inc sp
    ccf
    inc a
    ld [hl], a
    ld e, a
    ld a, a
    ld e, a
    jr c, jr_030_7d69

    rra
    rra
    add hl, de
    rla
    ld c, $0e
    cp h
    call z, $3cfc
    xor $fa
    cp $fa
    inc e
    db $fc
    ld hl, sp-$08
    sbc b
    add sp, $70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    scf
    ccf
    dec hl
    scf
    rra
    inc d
    rra
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc

jr_030_7d5e:
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc

jr_030_7d69:
    inc bc
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    jr nz, jr_030_7d5e

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    dec a
    ccf
    ld a, [hl-]
    dec a
    ld a, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp h
    db $fc
    ld e, h
    cp h
    cp $0a
    ld l, a
    ld d, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rrca
    rrca
    ld c, $0f
    dec c
    dec bc
    rlca
    rlca
    or $4a
    db $fc
    ld c, h
    ld a, h
    sbc h
    db $fc
    db $f4
    ld hl, sp-$38
    ld a, b
    ret z

    or b
    or b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    ld [hl], a
    ld c, a
    ld a, l
    ld [hl], e
    ld a, a
    ld e, h
    scf
    ccf
    inc e
    rra
    rrca
    rrca
    inc c
    dec bc
    rlca
    rlca
    xor $f2
    cp h
    call z, $3cfc
    xor $f2
    ld a, $f2
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    scf
    ccf
    dec hl
    scf
    rra
    inc d
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10

Call_030_7e24:
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc [hl]
    cpl
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $f4
    db $ec
    jr jr_030_7e58

    inc bc
    inc bc
    inc c
    rrca

jr_030_7e44:
    db $10
    rra
    inc h
    ccf
    add hl, hl
    ccf
    ld e, e
    ld a, [hl]
    ld a, a
    ld d, h
    ld l, a
    ld d, d
    ret nz

    ret nz

    jr nc, jr_030_7e44

    ld [$24f8], sp
    db $fc

jr_030_7e58:
    sub h
    db $fc
    jp c, $fe7e

    ld a, [hl+]
    or $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, [hl]
    ld c, c
    add hl, sp
    ccf
    ld e, $1f
    rla
    rra
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    ld a, [hl]
    sub d
    sbc h
    db $fc
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_030_7e84:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_030_7ec9

    ld d, b
    ld a, a
    ld [hl], b
    ld e, a
    ld h, h
    ld e, a
    ret nz

    ret nz

    jr nc, jr_030_7e84

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld a, [bc]
    cp $0e
    ld a, [$fa26]
    ld a, [hl-]
    scf
    ccf
    inc a
    ld [hl], a
    ld e, a
    ld a, [hl]
    ld e, c
    add hl, sp
    ccf
    ld e, $1f
    rla
    rra
    ld c, $0e
    ld e, h
    db $ec
    db $fc
    inc a
    xor $fa
    ld a, [hl]
    sbc d
    sbc h
    db $fc
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr z, jr_030_7f07

    inc [hl]

jr_030_7ec9:
    ccf
    ld a, [hl+]
    scf
    rra
    dec d
    rra
    inc d
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$24f8], sp
    db $fc
    sub h
    db $fc
    jp nc, $fafe

    ld l, $da
    ld l, $1f
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca

Call_030_7eec:
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    inc c
    ld hl, sp+$38
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7f06:
    db $10

jr_030_7f07:
    rra
    inc h
    ccf
    add hl, hl
    ccf
    ld e, e
    ld a, [hl]
    ld a, a
    ld d, h
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_7f06

    ld [$24f8], sp
    db $fc
    sub h
    db $fc
    jp c, $fe7e

    ld a, [hl+]
    ld l, a
    ld d, d
    ccf
    ld [hl-], a
    ld a, $39
    ccf
    cpl
    dec e
    inc de
    ld e, $13
    dec c
    dec c
    nop
    nop
    or $4a
    db $fc
    ld c, h
    ld a, h
    sub h
    ld hl, sp-$08
    ldh a, [$90]
    ld [hl], b
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_030_7f46:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_030_7f8b

    ld d, b
    ld a, a
    ld [hl], b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_030_7f46

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld a, [bc]
    cp $0e
    ld a, [$5f64]
    ld a, [hl-]
    scf
    ccf
    inc a
    ld [hl], a
    ld c, a
    ld a, h
    ld c, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ld h, $fa

jr_030_7f72:
    ld e, [hl]
    xor $fe
    ld a, [hl-]
    db $ec
    db $fc
    jr c, jr_030_7f72

    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr z, jr_030_7fc9

    inc [hl]

jr_030_7f8b:
    ccf
    ld a, [hl+]
    scf
    rra
    dec d
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$24f8], sp
    db $fc
    sub h
    db $fc
    jp nc, $fafe

    ld l, $1f
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc [hl]
    cpl
    inc de
    rra
    ld c, $0e
    jp c, $fc2e

    inc c
    ld hl, sp+$38
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $f4
    db $ec
    jr jr_030_7fd8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_7fc9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_7fd8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
