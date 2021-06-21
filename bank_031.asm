; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_031_4088

    ld [hl], b
    ld a, a
    ld d, b
    ld a, a
    ld b, [hl]
    ccf
    db $30, $e0
    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    inc c
    cp $0e
    cp $0a
    cp $62
    db $fc
    inc c
    ld a, [hl]
    ld c, l
    rst $38
    sub e
    rst $38
    and c
    ld a, a
    ld [hl], b
    daa
    jr c, jr_031_404c

    ccf
    ld [hl+], a
    ld a, $1e
    ld e, $7e

jr_031_4031:
    or d
    rst $38
    ret


    rst $38
    add l
    cp $0e
    db $e4
    inc e
    add h
    db $fc
    ld b, h
    ld a, h
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a

jr_031_404c:
    ld a, a
    ld c, a
    ccf
    jr nc, jr_031_4031

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    db $fc
    inc c
    ld a, a
    ld c, b
    rst $38
    sub a
    rst $38
    and b
    ld a, a
    ld [hl], b
    jr nz, @+$41

    ld hl, $223f
    ld a, $1e
    ld e, $fe
    ld [de], a
    rst $38
    jp hl


    rst $38
    dec b
    cp $0e
    inc b
    db $fc
    add h
    db $fc
    ld b, h
    ld a, h
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp

jr_031_4088:
    rra
    db $10
    rra
    db $10
    rra
    ld d, $1f
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    inc a
    db $fc
    inc d
    db $fc
    inc d
    dec bc
    inc c
    rlca
    rlca
    rrca
    dec c
    rra
    ld de, $111f
    dec c
    dec bc
    ld [$070f], sp
    rlca
    ld hl, sp+$08
    ldh a, [$f0]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [$30]
    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_031_414a

    ld [hl], b
    ld a, a
    ld d, b
    ld a, a
    ld b, [hl]
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    cp $0e
    cp $0a
    cp $62
    ccf
    jr nc, jr_031_4121

    dec l
    ld a, a
    ld d, e
    ccf
    jr nc, jr_031_4110

    jr c, jr_031_410c

    ccf
    ld de, $1e1f
    ld e, $fc
    inc c
    ld a, h
    or h
    db $fc
    call nz, Call_031_4cfc
    or h
    db $fc
    add h
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a

jr_031_410c:
    ld a, a
    ld e, a
    ld a, a
    ld c, a

jr_031_4110:
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    ccf

jr_031_4121:
    jr nc, jr_031_4162

    inc l
    rra
    inc de
    cpl
    jr nc, @+$29

    jr c, jr_031_414c

    ccf
    ld [hl+], a
    ld a, $1e
    ld e, $fc
    inc c
    db $fc
    inc a
    db $fc
    db $e4
    db $fc
    inc h
    db $fc
    inc e
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp

jr_031_414a:
    rra
    db $10

jr_031_414c:
    rra
    db $10
    rra
    ld d, $00
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    inc a
    db $fc
    inc d
    rra
    db $10

jr_031_4162:
    dec bc
    inc c
    rlca
    rlca
    rrca
    add hl, bc
    ccf
    jr nc, jr_031_41b2

    ld a, b
    inc hl
    ccf
    inc e
    inc e
    db $fc
    inc d
    ld hl, sp+$08
    ld hl, sp-$08
    db $fc
    add h
    db $fc
    ld c, h
    ld a, [c]
    ld a, [hl]
    ld a, [c]
    cp $0c
    inc c
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rla
    rra
    dec sp
    ld a, $3f
    jr c, jr_031_41ac

    ld [de], a
    rra
    ld [de], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    add sp, -$08
    call c, $fc7c
    inc e
    ld hl, sp+$48
    ld hl, sp+$48
    ld c, $09
    rrca
    rrca
    rra
    rla
    ccf
    cpl
    ccf
    jr z, jr_031_41ea

    inc a

jr_031_41ac:
    rra
    inc e
    rra
    rra
    ld [hl], b
    sub b

jr_031_41b2:
    ldh a, [$f0]
    ld hl, sp-$18
    db $fc
    db $f4
    db $fc
    inc d
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp-$08
    rlca
    rlca
    ld c, $0f
    dec e
    rra
    dec de
    rra
    dec sp
    ccf
    dec a
    ccf
    ld e, $1f
    rra
    rla
    ldh [$e0], a
    ld [hl], b
    ldh a, [$b8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    cp h
    db $fc
    ld a, b
    ld hl, sp-$08
    add sp, $0f
    ld [$1f1f], sp
    ccf
    cpl
    ld a, a
    ld e, a
    ld a, a
    ld e, b

jr_031_41ea:
    ld a, a
    ld a, [hl]
    rra
    dec e
    rra
    rra
    ldh a, [rNR10]
    ld hl, sp-$08
    db $fc
    db $f4
    cp $fa
    cp $1a
    cp $7e
    ld hl, sp-$48
    ld hl, sp-$08
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    dec a
    inc sp
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh [$f8], a
    add sp, -$04
    db $ec
    cp $ec
    cp $ec
    cp $f0
    db $fc
    db $fc
    db $fc
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    rlca
    inc bc
    inc bc
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp-$08
    ld hl, sp-$08

Jump_031_423e:
    ldh a, [$f0]
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rla
    rra
    dec sp
    ld a, $3f
    jr c, jr_031_426c

    ld [de], a
    rra
    ld [de], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    add sp, -$08
    call c, $fc7c
    inc e
    ld hl, sp+$48
    ld hl, sp+$48
    ld c, $09
    rrca
    rrca
    rra
    rla
    ccf
    cpl
    ccf
    jr z, jr_031_42aa

    inc a

jr_031_426c:
    rra
    inc e
    rra
    rra
    ld [hl], b
    sub b
    ldh a, [$f0]
    ld hl, sp-$18
    db $fc
    db $f4
    db $fc
    inc d
    db $fc
    inc a
    ld hl, sp+$38
    ldh [$e0], a
    rlca
    rlca
    ld c, $0f
    dec e
    rra
    dec de
    rra
    dec sp
    ccf
    dec a
    ccf
    ld e, $1f
    rra
    rla
    ldh [$e0], a
    ld [hl], b
    ldh a, [$b8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    cp h
    db $fc
    ld a, b
    ld hl, sp-$08
    add sp, $0f
    ld [$1f1f], sp
    ccf
    cpl
    ld a, a
    ld e, a
    ld a, a
    ld e, b

jr_031_42aa:
    ld a, a
    ld a, [hl]
    rra
    dec e
    rra
    rra
    ldh a, [rNR10]
    ld hl, sp-$18
    db $fc
    db $f4
    db $fc
    db $fc
    ld hl, sp+$18
    ld hl, sp+$78
    ldh a, [$b0]
    ldh [$e0], a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    dec a
    inc sp
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh [$f8], a
    add sp, -$04
    db $ec
    cp $ec
    cp $ec
    cp $f0
    db $fc
    db $fc
    db $fc
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    inc b
    ld c, $09
    dec c
    dec bc
    rlca
    ld b, $03
    inc bc

jr_031_42f0:
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    sbc h
    db $fc
    ld a, h
    db $fc
    ld a, h
    ldh a, [$f0]
    inc bc
    inc bc
    ld c, $0d
    rla
    jr @+$16

    dec de
    cpl
    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    ld [hl], b
    or b
    add sp, $18
    jr z, jr_031_42f0

    db $f4
    inc c
    cp $6a
    cp $92
    or $6a
    ld a, $31
    dec l
    ld a, [hl-]
    ld b, e
    ld a, h
    ld d, e
    ld a, h
    ccf
    ld a, $10
    rra
    jr c, @+$41

jr_031_432e:
    ccf
    ccf
    ld a, h
    adc h
    or h
    ld e, h
    jp nz, $ca3e

    ld a, $fc
    ld a, h
    ld [$1cf8], sp
    db $fc
    db $fc
    db $fc
    inc bc
    inc bc
    rrca
    inc c
    inc d
    dec de
    rla
    jr @+$31

    jr nc, jr_031_43ca

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    jr z, jr_031_432e

    add sp, $18
    db $f4
    inc c
    cp $0a
    cp $0a
    cp $02
    ccf
    jr nc, jr_031_43c2

    ld a, b
    ld d, a
    ld a, a
    ld c, [hl]
    ld [hl], e
    ld a, $33
    inc e
    rra
    jr c, jr_031_43ad

    ccf
    ccf
    db $fc
    inc c
    ld a, [$ea1e]
    cp $72
    adc $7c
    call z, $f838
    inc e
    db $fc
    db $fc
    db $fc
    inc bc
    inc bc
    inc c
    rrca
    rra
    db $10
    ld de, $3e1e
    ld hl, $2c3f
    ccf
    inc sp
    ccf
    inc l
    ret nz

    ret nz

    ldh a, [$30]
    ld a, b
    adc b
    ld hl, sp+$08
    call nz, $843c
    ld a, h
    db $e4
    db $fc
    db $f4
    ld e, h
    daa
    jr c, jr_031_43de

    inc h
    ld a, [hl-]
    dec h
    rra
    rla
    inc c
    rrca
    rrca
    rrca
    rrca

jr_031_43ad:
    rrca
    rlca
    rlca
    db $f4
    inc e

jr_031_43b2:
    ld l, b
    ld hl, sp-$48
    ld hl, sp+$1c
    db $e4
    sbc h
    db $e4
    db $fc
    db $fc
    ld [$f0f8], sp
    ldh a, [rP1]
    nop

jr_031_43c2:
    inc bc
    inc bc
    ld c, $0d
    rla
    jr @+$16

    dec de

jr_031_43ca:
    cpl
    jr nc, jr_031_444c

    ld d, [hl]
    ld a, a
    ld c, c
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    or b
    add sp, $18
    jr z, jr_031_43b2

    db $f4
    inc c
    cp $6a

jr_031_43de:
    cp $92
    ld l, a
    ld d, [hl]
    ld a, $31
    ld c, l
    ld a, d
    ld b, a
    ld a, h
    inc sp
    inc a
    rra
    ld e, $1c
    rra
    rra
    rra

jr_031_43f0:
    or $6a
    ld a, h
    adc h
    or d
    ld e, [hl]
    ld [c], a
    ld a, $cc
    inc a
    ld hl, sp+$78
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc d
    dec de
    rla
    jr @+$31

    jr nc, jr_031_448c

    ld d, b
    ld a, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    jr z, jr_031_43f0

    add sp, $18
    db $f4
    inc c
    cp $0a
    cp $0a
    ld a, a
    ld b, b
    ccf
    jr nc, jr_031_4484

    ld a, b
    ld d, a
    ld a, a
    ld c, [hl]
    ld [hl], e
    ld a, $33
    ld e, $1f
    rra
    rra
    cp $02
    db $fc
    inc c
    ld a, [$ea1e]
    cp $72
    adc $74
    call z, $f8f8
    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, de
    ld e, $3e
    ld hl, $3c23
    ld a, l
    ld b, d

jr_031_444c:
    ld a, a
    ld e, b
    ld a, a
    ld h, a
    nop
    nop
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    adc b
    ld a, b
    ld [$c8f8], sp
    ld hl, sp+$7f
    ld e, b
    ld c, a
    ld [hl], b
    db $76
    ld c, c
    ld [hl], l
    ld c, e
    ld sp, $1f2f
    rra
    ld c, $0f
    rrca
    rrca
    add sp, -$48
    add sp, $38
    ret nc

    ldh a, [rSVBK]
    ldh a, [rSVBK]
    sub b
    ldh a, [$90]
    ld [hl], b
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    inc c

jr_031_4484:
    rla
    jr jr_031_44a6

    ld de, $263d
    ld [hl], a
    ld e, b

jr_031_448c:
    ld l, a
    ld d, b
    ld a, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $58
    ld hl, sp-$78
    cp h
    ld h, h
    xor $1a
    or $0a
    cp $4a
    ccf
    jr nc, @+$41

    add hl, sp
    ld c, a
    ld a, [hl]

jr_031_44a6:
    ld c, a
    ld a, a
    inc [hl]
    dec sp
    inc de
    inc e
    inc de
    inc e
    rrca

jr_031_44af:
    rrca
    db $fc
    inc c
    db $fc
    sbc h
    ld a, [c]
    ld a, [hl]
    ld a, [c]
    cp $2c
    call c, $38c8
    ret z

    jr c, jr_031_44af

    ldh a, [$03]
    inc bc
    rrca
    inc c
    rla
    jr jr_031_44e6

    ld de, $322f
    ld a, a
    ld h, h
    ld a, a
    ld h, d
    ld l, a
    ld [hl], c
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $18
    ld hl, sp-$78
    db $f4
    ld c, h
    cp $26
    cp $46
    or $8e
    ccf
    jr nc, jr_031_4542

    ld a, b
    ld c, a
    ld a, a

jr_031_44e6:
    ld e, [hl]
    ld [hl], e
    ccf
    ld [hl-], a
    ld e, $1d
    jr jr_031_450d

    rlca
    rlca
    db $fc
    inc c
    ld a, [$f21e]
    cp $7a
    adc $fc
    ld c, h
    ld a, b
    cp b
    jr @-$06

    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    rra
    jr jr_031_4546

    jr nz, jr_031_4540

    jr c, jr_031_458a

    ld b, a
    ld a, a

jr_031_450d:
    ld b, b
    ld a, a
    ld b, b
    nop
    nop
    add b
    add b
    ldh [$60], a
    call c, $fe3c
    ld d, [hl]
    ld l, [hl]
    sub d
    or $8a
    cp h
    call z, Call_031_507f
    ld a, a
    ld b, b
    ld a, $31
    dec a
    inc hl
    ld e, $1f
    rra
    ld de, $131c

jr_031_452e:
    rrca
    rrca
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [$d0]
    ld [hl], b
    ldh a, [$78]
    ret z

    ld hl, sp-$38
    jr nc, jr_031_452e

    ldh [$e0], a

jr_031_4540:
    nop
    nop

jr_031_4542:
    inc bc
    inc bc
    rrca
    inc c

jr_031_4546:
    rla
    jr jr_031_4568

    ld de, $263d
    ld [hl], a
    ld e, b
    ld l, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $58
    ld hl, sp-$78
    cp h
    ld h, h
    xor $1a
    or $0a
    ld a, a
    ld d, d
    ccf
    jr nc, jr_031_45b4

    ld a, c
    ld c, a
    ld a, [hl]

jr_031_4568:
    ccf
    ccf
    inc de
    inc e
    inc de

jr_031_456d:
    inc e
    rrca
    rrca
    cp $4a
    db $fc
    inc c
    ld a, [c]
    sbc [hl]
    ld a, [c]
    ld a, [hl]
    db $fc
    db $fc
    ret z

    jr c, jr_031_456d

    jr nc, @-$3e

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr jr_031_45a8

    db $10

jr_031_458a:
    cpl
    inc sp
    ld a, a
    ld h, h
    ld a, a
    ld l, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    cp $86
    cp $46
    ld l, a
    ld [hl], h
    ccf
    inc sp
    ld e, a
    ld a, b
    ld e, a
    ld a, a

jr_031_45a8:
    ld a, h
    ld h, a
    ccf
    inc h
    inc a
    dec sp
    rra
    rra
    or $8e
    db $fc
    inc c

jr_031_45b4:
    ld a, [$e21e]
    cp $f2
    sbc [hl]
    db $f4
    sbc h
    ld hl, sp+$78
    ldh [$e0], a
    rrca
    rrca
    ccf
    jr nc, jr_031_4644

    ld b, b
    ld l, a
    ld [hl], b
    cp $8f
    rst $38
    add c
    rst $38
    add c
    rst $38
    and b
    nop
    nop
    ret nz

    ret nz

    cp b
    ld a, b
    db $fc
    xor h
    call c, $ec24
    inc d
    ld a, b
    sbc b
    ldh a, [$50]
    rst $38
    add b
    ld a, l
    ld h, e
    ld a, d
    ld b, a
    ld a, $3f
    add hl, de
    rra
    ld e, $11
    ld c, $09
    rlca
    rlca
    ldh a, [$50]
    ldh [$a0], a
    ldh a, [$f0]
    ld a, b
    ret z

    ld a, b
    ret z

    ld hl, sp-$08
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    ld b, $00
    ld b, $00
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld [de], a
    ldh a, [$08]
    ld hl, sp+$12
    rra
    daa
    dec a
    cpl
    jr c, jr_031_46a6

    ld d, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, a
    jr nc, @+$32

    ld c, b
    ld hl, sp-$1c
    cp h
    db $f4
    inc e
    cp $4a
    cp $4e
    ld a, [hl]
    sub d
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop

jr_031_4644:
    nop
    nop
    nop
    nop
    stop
    rlca
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    nop
    nop
    jr jr_031_4656

jr_031_4656:
    jr jr_031_4658

jr_031_4658:
    nop
    nop
    ldh [$e0], a
    inc d
    ldh a, [$08]
    ld hl, sp+$20
    ccf
    jr nz, jr_031_46a3

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf
    ld a, a
    ld e, b
    ld a, a
    ld c, a
    jr nc, jr_031_46a0

    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $f2
    db $fc
    db $ec
    cp $1a
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $c403


    rlca
    ld [$0c0f], sp
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc

jr_031_46a0:
    rra
    rla
    ld e, a

jr_031_46a3:
    db $10
    rra
    inc d

jr_031_46a6:
    rra
    inc d
    rra
    jr jr_031_46ea

    inc h
    ccf
    daa
    jr jr_031_46c8

    inc b
    db $fc
    add h
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

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

jr_031_46c8:
    rlca
    rlca
    ld [$100f], sp
    rra
    ld [de], a
    rra
    nop
    nop
    ld b, $00
    ld b, $00
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$0a]
    ld hl, sp+$48
    ld hl, sp+$27
    dec a
    cpl
    jr c, jr_031_4764

    ld d, d
    ld a, a
    ld b, d
    ld a, $31

jr_031_46ea:
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, a
    jr nc, @+$32

    db $e4
    cp h
    db $f4
    inc e
    cp $4a
    cp $42
    ld a, h
    adc h
    ld [hl], b
    sub b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    rlca
    rlca
    ld [$500f], sp
    rra
    db $10
    rra
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$20
    ccf
    jr nz, @+$41

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf
    rrca
    ld [$0707], sp
    nop
    nop
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $f2
    db $fc
    db $ec
    cp $1a
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld h, h
    rlca
    ld l, b
    rrca
    inc c
    rrca
    rrca
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add d
    cp $0f
    ld [$0a2f], sp

jr_031_4764:
    rrca
    ld a, [bc]
    rrca
    ld [$0704], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jp nz, $f27e

    ld a, [hl]
    db $fc
    ld c, h
    ld hl, sp+$08
    ldh a, [rSVBK]
    ldh a, [$90]
    ldh a, [$90]
    ld h, b
    ld h, b
    ld bc, $0301
    inc bc
    ld b, e
    inc bc
    ld bc, $0601
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ld a, $c0
    ret nz

    and $e0
    or $f0
    ret c

    ret c

    ld h, b
    ldh [$f2], a
    ldh a, [$f8]
    ld hl, sp-$04
    ld a, h
    ccf
    jr c, jr_031_4822

    ld d, d
    ld l, a
    ld d, d
    ccf
    jr nc, jr_031_47c7

    add hl, de
    ccf
    daa
    inc a
    inc h
    jr jr_031_47c8

    db $fc
    inc e
    cp $4a
    or $4a
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    db $e4
    inc a
    inc h
    jr jr_031_47d8

    inc bc
    inc bc
    ld h, a
    rlca
    ld l, a
    rrca
    dec de

jr_031_47c7:
    dec de

jr_031_47c8:
    ld b, $07
    ld c, a
    rrca
    rra
    rra
    ccf
    ccf
    add b
    add b
    ret nz

    ret nz

    jp nz, $80c0

    add b

jr_031_47d8:
    ld h, b
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ccf
    ccf
    ld a, a
    ld e, a
    ld l, a
    ld e, a
    ccf
    scf
    ccf
    jr c, jr_031_482a

    daa
    inc e
    inc e
    nop
    nop
    db $fc
    db $fc
    cp $fa
    or $fa
    db $fc
    db $ec
    db $fc
    inc e
    db $fc
    db $e4
    jr c, @+$3a

    nop
    nop
    nop

jr_031_4801:
    nop
    ret nz

    nop
    ret nz

    nop
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    nop
    nop
    jr @+$1a

    inc a
    inc a
    call c, $eefc
    cp $fe
    cp $f6
    or $fa
    ld a, [$233f]

jr_031_4822:
    ccf
    add hl, hl
    ccf
    add hl, hl
    ld a, $21
    rla
    add hl, de

jr_031_482a:
    rrca
    ld c, $07
    ld b, $11
    ld bc, $fafa
    ld a, [$f0fa]
    jr nc, @-$1e

    jr nz, jr_031_4801

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ld a, $3f
    jr c, jr_031_48c1

    ld [hl], b
    ld hl, sp-$08
    ret c

    ret c

    ld h, h
    db $e4
    ld a, [c]
    ldh a, [$f8]
    ld hl, sp-$04
    ld a, h
    db $fc
    inc e
    ld a, a
    ld d, d
    ld l, a
    ld d, d
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld e, c
    scf
    scf
    nop
    nop
    stop
    nop
    nop
    cp $4a
    or $4a
    ld a, h
    adc h
    ld a, b
    sbc b
    db $fc
    db $f4
    ld a, h
    ld c, h
    ld a, b
    ld c, b
    jr nc, jr_031_48b0

    ld c, $0e
    rra
    rra
    dec de
    dec de
    ld h, $27
    ld c, a
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld a, a
    ld e, a
    ld l, a
    ld e, a
    ccf
    scf
    rra
    jr jr_031_48e8

    cpl
    ld a, $32
    ld e, $12
    inc c
    inc c

jr_031_48b0:
    cp $fa
    or $fa
    cp $ee
    cp $1a
    db $ec
    db $ec
    nop
    nop
    ld [$0000], sp
    nop
    nop

jr_031_48c1:
    nop
    nop
    nop
    ld c, a
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ccf
    inc hl
    jr jr_031_48ea

    ld a, $3e
    sbc $fe
    rst $28
    rst $38
    di
    di
    di
    di
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ccf
    add hl, hl
    ccf
    add hl, hl
    ld a, $21
    ld [hl], a
    ld a, c

jr_031_48e8:
    rst $38
    sbc a

jr_031_48ea:
    rst $38
    add e
    ld a, h
    ld a, h
    nop
    nop
    ld sp, hl
    ld sp, hl
    ldh a, [$30]
    ldh [rNR41], a
    ret nz

    ret nz

Call_031_48f8:
    add [hl]
    add b
    ld b, $00
    nop
    nop
    nop
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
    ld bc, $0302
    ld [bc], a
    inc bc
    jr nc, jr_031_4942

    ld c, h
    ld a, h
    add e
    rst $38
    add b
    rst $38
    ld e, $e1
    ccf
    ret nz

    ld a, a
    sbc h
    ld a, a
    add b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0706
    add hl, de
    rra
    ld [hl+], a
    ccf
    ld a, a
    add b
    ld a, a
    add e
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    ld b, h
    ld a, a

jr_031_4942:
    push bc
    cp [hl]
    ret


    cp $eb
    cp h
    ld [hl], e
    ld a, h
    inc de
    inc e
    inc de
    inc e
    rla
    ld e, $ff
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
    rra
    dec e
    jr c, @+$31

    daa
    jr c, jr_031_49a6

    jr nz, jr_031_49a1

    daa
    inc a
    inc hl
    rra
    jr jr_031_4976

    rlca
    ld a, a
    ret nz

    rst $38
    and b
    and a
    ld a, b

jr_031_4976:
    ldh a, [$1f]
    ldh a, [$1f]
    ld a, a
    sbc a
    ldh a, [$30]
    ret nz

    ret nz

    nop
    jr nz, @+$32

    jr nc, jr_031_49bd

    jr c, jr_031_49a2

    daa
    rrca
    db $10
    rra
    inc d
    rrca
    db $10
    daa
    dec sp
    nop
    nop
    ld [$3c1c], sp
    inc l
    or b
    ret z

    ldh a, [rNR10]
    ld hl, sp+$48
    ldh a, [$08]
    call z, Call_031_7734

jr_031_49a1:
    ld e, b

jr_031_49a2:
    ccf
    ld [hl], b
    rrca
    db $10

jr_031_49a6:
    rlca
    ld [$191e], sp
    ld h, $3f
    nop
    ccf
    rrca
    rra
    adc $32
    or $0f
    db $fd
    rlca
    db $ec
    rra

jr_031_49b8:
    and $fe
    jr jr_031_49b8

    ld h, b

jr_031_49bd:
    ldh a, [rP1]
    add b
    nop
    nop
    db $10
    jr c, jr_031_49f9

    inc a
    dec c
    inc de
    rrca
    ld [$1e0d], sp
    ld a, $31
    ld a, a
    ld d, c
    nop
    inc b
    inc c
    inc c
    inc e
    inc e
    ret c

    db $e4
    ldh a, [$08]
    ld hl, sp+$08
    ldh a, [$08]
    ld a, h
    add h
    cpl
    add hl, sp
    ld e, l
    rst $30
    cp l
    rst $20
    scf
    ei
    ld h, a
    ld a, a
    jr @+$41

    ld b, $0f
    nop
    ld bc, $e21e
    db $fc
    ld c, $10
    add sp, -$60
    ret nc

    ld a, b

jr_031_49f9:
    sbc b
    ld h, h
    db $fc
    nop
    db $fc
    ldh a, [$f8]
    nop
    nop
    nop
    nop
    ld bc, $0603
    dec b
    rrca
    ld [$111e], sp
    rra
    jr z, @+$41

    jr nz, jr_031_4a11

jr_031_4a11:
    nop
    ld b, b
    ret nz

    add h
    call nz, $8a8e
    ld e, a
    pop de
    xor $33
    ld hl, sp+$14
    call nz, $133c
    ld l, $17
    inc e
    ld a, [bc]
    rla
    rlca
    ld [$191e], sp
    ld h, $3f
    nop
    ccf
    rrca
    rra
    db $fc
    inc c
    ld [$fa1e], a
    ld c, $f4
    inc e
    add sp, -$08
    db $10
    ldh a, [$60]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld [hl], b
    scf
    ld c, a
    rra
    jr nz, jr_031_4a8c

    jr z, jr_031_4a6e

    jr nz, jr_031_4a51

jr_031_4a51:
    nop
    nop
    nop
    db $10
    jr c, jr_031_4acf

    ld e, b
    ld h, b
    sub b
    ldh a, [rNR10]
    add sp, -$68
    db $fc
    inc b
    ld c, a
    db $76
    rst $28
    or b
    ld a, a
    ldh [$2f], a
    jr nc, jr_031_4aa0

    jr c, jr_031_4aae

    ld a, a
    nop
    ld a, a

jr_031_4a6e:
    rra
    ccf
    sub b
    ld l, b
    sbc b
    ld l, b
    db $f4
    inc c
    jp c, Jump_031_423e

    cp $08
    db $fc
    ld h, b
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    ld [$1a1c], sp
    ld e, $06
    add hl, bc
    ld c, $0f

jr_031_4a8c:
    rra
    jr jr_031_4ace

    jr z, jr_031_4a91

jr_031_4a91:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld c, $ee
    ld a, [c]
    db $fc
    ld [bc], a
    ld a, b
    add h
    db $fc
    add h

jr_031_4aa0:
    rla
    inc e
    ld e, $13
    ld l, $33
    ld e, e
    ld a, l
    ld b, d
    ld a, a
    db $10
    ccf
    ld b, $0f

jr_031_4aae:
    nop
    ld bc, $c4fc
    sbc [hl]
    and $ff
    add l
    or [hl]
    rst $08
    db $ec
    sbc h
    jp nz, $00fe

    cp $f8
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    dec c
    dec bc
    ld e, $11
    dec a
    ld [hl+], a

jr_031_4ace:
    ccf

jr_031_4acf:
    ld d, b
    nop
    nop
    nop
    nop
    add b
    add b
    ld [$1c88], sp
    inc d
    cp [hl]
    and d
    call c, $f066
    jr z, jr_031_4b60

    ld b, b
    daa
    ld e, h
    cpl
    jr c, jr_031_4b01

    cpl
    rrca
    db $10
    dec a

jr_031_4aeb:
    inc sp
    ld b, b
    ld a, a
    rra
    ccf
    adc b
    ld a, b
    ldh a, [rNR10]
    ret c

    jr c, jr_031_4aeb

    inc e
    add sp, $38
    ret nc

    ldh a, [rLCDC]
    ldh [rP1], a
    add b
    rra

jr_031_4b01:
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, [hl]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $ec
    cp $0a
    cp $62
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $f2
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    cp $fa
    cp $f2

jr_031_4b60:
    ccf
    jr nc, jr_031_4b9e

    inc a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    call c, $fe3c
    ld a, [$fafe]
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    db $10
    rra
    ld d, $e0
    ldh [$f8], a
    ld hl, sp-$04
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc

jr_031_4b9e:
    ld hl, sp-$68
    rra
    inc d
    rrca
    ld [$0707], sp
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld d, b
    nop
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $ec
    cp $0a
    ld a, a
    ld b, [hl]
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    cp $62
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, $c8f8
    or b
    or b
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
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], b
    ld a, e
    ld e, h
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    inc c
    call c, $fe3c
    ld a, [c]
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    stop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    ld d, $1f
    inc d
    rrca
    ld [$0707], sp
    rra
    rra
    ccf
    ccf
    rra
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_031_4c98

    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    cpl
    jr c, jr_031_4cee

    ld [hl], d
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe

jr_031_4c98:
    db $fc
    db $fc
    db $f4
    db $fc
    db $f4
    inc e
    ld a, [$5f4e]
    ld [hl], d
    ld a, $39
    ccf
    daa
    ccf
    daa
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ld a, [$7c4e]
    sbc h
    db $fc
    db $e4
    db $fc
    db $e4
    ld hl, sp-$08
    ldh a, [$f0]
    sub b
    ldh a, [$60]
    ld h, b
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    jr nz, jr_031_4d0d

    ld b, b
    ld a, a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $f4
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $40
    ld a, a
    jr nz, jr_031_4d23

    jr nc, jr_031_4d25

    ccf
    cpl
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca

jr_031_4cee:
    ld b, $06
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    db $fc
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]

Call_031_4cfc:
    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    rra

jr_031_4d0d:
    inc d
    rra
    inc d
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    adc b
    ld hl, sp+$1f
    db $10
    dec bc

jr_031_4d23:
    inc c
    rlca

jr_031_4d25:
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add h
    db $fc
    call nz, $e4fc
    db $fc
    ld hl, sp+$38
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    cpl
    jr c, jr_031_4d51

jr_031_4d51:
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $f4
    db $fc
    db $f4
    inc e
    ld e, a
    ld [hl], d
    ld e, a
    ld [hl], d
    ld a, $39
    ccf
    cpl
    rra
    rra
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld a, [$fa4e]
    ld c, [hl]
    ld a, h
    sbc h
    ld hl, sp-$18
    ldh a, [$90]
    ldh a, [$90]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    ld b, b
    ld a, a
    nop
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $f4
    db $fc
    inc b
    db $fc
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_031_4de5

    db $10
    rra
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    inc b
    db $fc
    ld [$38f8], sp
    ld hl, sp+$78
    ret z

    ld hl, sp-$38
    ldh a, [$f0]
    add b
    add b
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    inc d
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc

jr_031_4de5:
    inc c
    rlca
    rlca
    rrca
    rrca
    rla
    rra
    dec bc
    rrca
    rlca
    rlca
    add h
    db $fc
    add d
    cp $c2
    cp $e2
    cp $fc
    sbc h
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_031_4e18

    rrca
    rrca
    rra
    ld de, $131f
    rra
    inc de
    rra
    add hl, de
    cpl
    ccf
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ldh a, [$f0]
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp-$38

jr_031_4e18:
    ld hl, sp-$68
    db $f4
    db $fc
    db $fc
    ld c, h
    db $fc
    ld c, h
    ld c, [hl]
    ld a, c
    ld b, a
    ld a, a
    ld c, a
    ld a, e
    ccf
    inc [hl]
    rra
    jr jr_031_4e3a

    inc c
    rrca
    rrca
    inc bc
    inc bc
    ld [hl], d
    sbc [hl]
    ld [c], a
    cp $f2
    sbc $fc
    inc l
    ld hl, sp+$18

jr_031_4e3a:
    ldh a, [$30]
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rra
    ld de, $131f
    rra
    inc de
    rra
    add hl, de
    cpl
    ccf
    ccf
    jr nc, jr_031_4e51

jr_031_4e51:
    nop
    ldh a, [$f0]
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$68
    db $f4
    db $fc
    db $fc
    inc c
    ccf
    ld [hl], $4e
    ld a, c
    ld b, a
    ld a, a
    ld c, a
    ld a, l
    ccf
    ld a, $0f
    dec bc
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    ld l, h
    db $76
    sbc [hl]
    ld [c], a
    cp $f2
    cp [hl]
    db $fc
    ld a, h
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    rra
    rra
    ccf
    jr nc, jr_031_4ec4

    jr c, jr_031_4ec6

    jr c, jr_031_4ec8

    jr nc, jr_031_4eaa

    rra
    rra
    inc d
    rra
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$08
    ret z

    ld a, b
    ret z

    ld a, b
    rla
    jr jr_031_4eb2

    rrca
    rrca
    dec c
    rra
    ld [de], a
    rrca
    inc c

jr_031_4eaa:
    rlca
    inc b
    rlca
    rlca
    inc bc
    inc bc
    add h
    db $fc

jr_031_4eb2:
    ld [bc], a
    cp $82
    cp $c4
    ld a, h
    ld hl, sp+$38
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    rrca
    rrca
    rra
    db $10

jr_031_4ec4:
    rra
    db $10

jr_031_4ec6:
    ld a, $31

jr_031_4ec8:
    ld l, $39
    ld h, a
    ld a, a
    adc a
    ld hl, sp-$61
    ld a, [c]
    ldh a, [$f0]
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, h
    adc h
    ld [hl], h
    sbc h
    and $fe
    pop af
    rra
    ld sp, hl
    ld c, a
    ld c, a
    ld [hl], d
    ccf
    jr c, @+$09

    rlca
    rrca
    dec bc
    rra
    inc d
    rrca
    ld [$0c0f], sp
    rlca
    rlca
    ld a, [c]
    ld c, [hl]
    db $fc
    inc e
    ldh [$e0], a
    ldh a, [$d0]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    rrca
    rrca
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, @+$31

    jr c, jr_031_4f72

    ld a, a
    add b
    rst $38
    add b
    rst $38
    ldh a, [$f0]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    db $f4

jr_031_4f19:
    inc e
    and $fe
    ld bc, $01ff
    rst $38
    ld b, b
    ld a, a
    ld sp, $0f3f
    ld c, $1f
    rla
    rrca
    dec bc
    rrca

jr_031_4f2b:
    ld [$0c0f], sp
    rlca
    rlca
    inc b
    db $fc
    sbc b
    ld hl, sp-$20
    ldh [$e0], a
    jr nz, jr_031_4f19

    jr nz, jr_031_4f2b

    db $10
    ldh a, [$30]
    ldh [$e0], a
    rrca
    rrca
    rra
    db $10
    rla
    jr @+$19

    jr jr_031_4f68

    jr jr_031_4f62

    rra
    rra
    dec d
    rra
    inc d
    ldh a, [$f0]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
    call z, $02fc
    cp $82
    cp $1f
    db $10

jr_031_4f62:
    dec bc
    dec c
    rlca
    rlca
    rlca
    dec b

jr_031_4f68:
    rrca
    ld a, [bc]
    rlca

jr_031_4f6b:
    inc b
    rlca
    ld b, $03
    inc bc
    inc b
    db $fc

jr_031_4f72:
    sbc b
    ld hl, sp-$20
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, jr_031_4f6b

    db $10
    ldh a, [$30]
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    rra
    db $10
    rra
    db $10
    ld a, $31
    ld l, $39
    ld h, a
    ld a, a
    adc a
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, h
    adc h
    ld [hl], h
    sbc h
    and $fe
    pop af
    rra
    sbc a
    ld a, [c]
    ld c, a
    ld [hl], d
    ccf
    jr c, @+$41

    daa
    rra
    dec de
    rrca
    ld [$0c0f], sp
    rlca
    rlca
    ld sp, hl
    ld c, a
    ld a, [c]
    ld c, [hl]
    db $fc
    inc e
    db $fc
    db $e4
    ld hl, sp-$28
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, jr_031_4ffa

    jr c, jr_031_5034

    ld a, a
    add b
    rst $38
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    db $f4
    inc e
    and $fe
    ld bc, $80ff
    rst $38
    ld b, b
    ld a, a
    ld sp, $1f3f
    rra
    rra
    rla
    rrca
    ld [$0607], sp
    ld bc, $0101
    rst $38
    ld [bc], a
    cp $8c
    db $fc
    ldh a, [$f0]
    ldh a, [$d0]

jr_031_4ffa:
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rra
    db $10
    rla
    jr @+$19

    jr jr_031_502a

    jr jr_031_5024

    rra
    rra
    dec d
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
    call z, $02fc
    cp $1f
    inc d
    rra
    db $10

jr_031_5024:
    dec bc
    dec c
    rlca
    rlca
    rlca
    dec b

jr_031_502a:
    rrca
    ld a, [bc]
    rrca

jr_031_502d:
    inc c
    rlca
    rlca
    add d
    cp $04
    db $fc

jr_031_5034:
    sbc b
    ld hl, sp-$20
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, jr_031_502d

    db $10
    ldh [$e0], a
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
    ld d, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    cp h
    db $fc
    inc e
    ld a, [$fe1e]
    ld a, [bc]
    or $6a
    ccf
    jr nc, jr_031_5081

    add hl, de
    ccf
    ccf
    ld a, h
    ld c, e
    ld a, b
    ld c, a
    jr c, jr_031_50ab

    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    db $fc
    ld a, $d2
    ld e, $f2
    inc e
    db $fc
    ld hl, sp-$08
    ld [hl], b

Call_031_507f:
    ld [hl], b
    inc bc

jr_031_5081:
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
    ld h, a
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
    ld a, [$fae6]
    dec sp
    scf
    ccf
    inc a
    ld [hl], a
    ld e, a
    ld [hl], d
    ld e, a
    ld sp, $123f

jr_031_50ab:
    rra
    rra
    rra
    ld c, $0e
    call c, $fcec
    inc a
    xor $fa
    ld c, [hl]
    ld a, [$fc8c]
    ld c, b
    ld hl, sp-$08
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
    ccf
    dec hl
    scf
    rra
    db $10
    rra
    ld d, $c0
    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
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
    dec b
    rlca
    dec b
    rlca
    rlca
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
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    cp h
    db $fc
    inc e
    ld a, [$fe1e]
    ld a, [bc]
    ld l, a
    ld d, [hl]
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    ccf
    scf
    db $10
    rra
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    or $6a
    db $fc
    inc c
    ld a, b
    sbc b
    db $f4
    db $fc
    db $fc
    call z, $c878
    or b
    or b
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
    ld a, [$5f67]
    dec sp
    scf
    ld a, a
    ld e, h
    scf
    ccf
    ld a, [de]
    rra
    add hl, bc
    rrca
    rrca
    rrca
    rlca
    rlca
    and $fa
    call c, $fcec
    inc a
    xor $fa
    ld e, [hl]
    ld a, [c]
    cp h
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
    stop
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
    ld d, $1f
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc e
    rra
    inc a
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
    db $fc
    db $fc
    jr @+$1a

    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    dec de
    inc e
    ccf
    jr nc, jr_031_524a

    db $76
    ld l, a
    ld d, b
    ld a, [hl]

jr_031_51cf:
    ld b, c
    ret nz

    ret nz

    ldh a, [$f0]
    ret c

    jr c, jr_031_51cf

    ld [$0cfc], sp
    cp $6e
    or $0a
    ld a, [hl]
    add d
    cpl
    jr nc, @+$81

    ld e, b
    rst $30
    sbc a
    add sp, -$49
    ld h, b
    ld a, a
    jr c, @+$41

    ccf
    ccf
    ld e, $1e
    db $f4
    inc c
    cp $1a
    rst $28
    ld sp, hl
    rla
    db $ed
    ld b, $fe
    inc e
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
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
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    ccf
    inc sp
    ld a, a
    ld e, b
    db $e3
    cp a
    db $ec
    or e
    ld h, b
    ld a, a
    jr nc, @+$41

    ccf
    ccf
    ld e, $1e
    db $fc
    call z, $1afe
    rst $00
    db $fd
    scf
    call $fe06
    inc c
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0b0f], sp
    rra
    db $10

jr_031_524a:
    rla
    jr @+$21

    db $10
    rra
    db $10
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$04
    ld a, h
    cp $7e
    cp [hl]
    ld a, [hl]
    cp $1e
    cp $1e
    cp $1e
    rrca
    ld [$1f17], sp
    jr z, @+$39

    ld hl, $213f
    ccf
    ld de, $1f1f
    rra
    rrca
    rrca
    cp h
    ld a, h
    ld hl, sp-$08
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    dec de
    inc e
    ccf
    jr nc, jr_031_530c

    db $76
    ld l, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, b

jr_031_5297:
    ld hl, sp-$28
    jr c, jr_031_5297

    inc c
    cp $6e
    or $0a
    ld a, [hl]
    ld b, c
    ld l, a
    ld [hl], b
    rst $38
    sbc b
    rst $30
    cp a
    add sp, -$09
    inc a
    ccf
    ccf
    ccf
    ld e, $1e
    ld a, [hl]
    add d
    db $f4
    inc c
    cp $1a
    rst $28
    ld sp, hl
    rra
    pop af
    ld e, $f2
    db $ec
    db $ec
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
    ld a, a
    ld a, a
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
    cp $fe
    cp $fa
    ld a, a
    ld c, a
    ccf
    inc sp
    ld a, a
    ld e, b
    rst $20
    cp a
    ld hl, sp-$59
    ld h, b
    ld a, a
    ld a, $3f
    rra
    rra
    cp $f2
    db $fc
    call z, $12fe
    sbc a
    pop af
    ld a, a
    sub c
    ld c, $fe
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0b0f], sp
    rra
    db $10

jr_031_530c:
    rla
    jr jr_031_532e

    stop
    nop
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$04
    ld a, h
    cp $7e
    cp [hl]
    ld a, [hl]
    cp $1e
    cp $1e
    rra
    db $10
    rrca
    ld [$1f17], sp
    jr z, @+$39

    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    ld a, a

jr_031_532e:
    ld e, $1e
    cp $1e
    cp h
    ld a, h
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $c47c
    ld hl, sp-$08
    ld a, b
    ld a, b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a
    ld [hl], b
    ld a, a
    ld c, a
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    or $4a
    ccf
    jr nc, jr_031_53a1

    add hl, sp
    ld [hl], a
    ld c, a
    ld a, [hl]
    ld c, c
    ld [hl], $3f
    jr jr_031_538b

    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h

jr_031_5374:
    xor $f2
    ld a, [hl]
    sub d
    ld l, h
    db $fc
    jr jr_031_5374

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a

jr_031_538b:
    ld [hl], b
    ld a, a
    ld c, a
    ld l, a
    ld d, a
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    or $ea
    ccf

jr_031_53a1:
    inc sp
    ccf
    jr c, @+$81

    ld d, a
    ld [hl], a
    ld e, b
    jr nc, jr_031_53e9

    jr jr_031_53cb

    rra
    rra
    ld c, $0e
    db $fc
    call z, $1cfc

jr_031_53b4:
    cp $ea
    xor $1a
    inc c
    db $fc
    jr jr_031_53b4

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, @+$72

    ld c, a
    ccf

jr_031_53cb:
    jr nc, jr_031_53ec

    rra
    rra
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    ld c, $f2
    db $fc

jr_031_53db:
    inc c
    db $fc

jr_031_53dd:
    db $fc
    call c, $1f2c
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    inc b
    inc bc

jr_031_53e9:
    inc bc
    rlca
    rlca

jr_031_53ec:
    rrca
    rrca
    rlca
    rlca
    ld hl, sp+$08
    ldh a, [rSVBK]
    ret nc

    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_031_53db

    jr nz, jr_031_53dd

    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a
    ld [hl], b
    ld a, a
    ld c, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    ld l, a
    ld d, d
    ccf
    jr nc, jr_031_5463

    add hl, sp
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
    inc c
    ld a, h
    sbc h
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
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a
    ld [hl], b
    ld a, a
    ld c, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    ld l, a
    ld d, a
    ccf

jr_031_5463:
    inc sp
    ccf
    jr c, jr_031_54de

    ld c, a
    ld a, h
    ld c, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    or $ea

jr_031_5472:
    cp $ce
    cp $1e
    db $ec
    db $fc
    jr c, jr_031_5472

    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, @+$72

    ld c, a
    ccf
    jr nc, jr_031_54ae

    rra
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    ld c, $f2
    db $fc
    inc c
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
    inc l
    ccf
    rra
    rra

jr_031_54ae:
    ld c, $0e
    call c, $f82c
    ld [$70f0], sp
    ret nc

    ldh a, [$f8]
    sbc b
    db $fc
    sbc h
    db $ec
    db $fc
    jr jr_031_54d8

    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $1f
    jr jr_031_5508

    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$18

jr_031_54d8:
    db $fc
    inc c
    cp $6a
    cp $92

jr_031_54de:
    or $9a
    ccf
    ld [hl], $3e
    add hl, sp
    ld a, e
    ld c, a
    ld a, a
    ld c, c
    ccf
    jr nc, jr_031_550a

    db $10
    rra
    rra
    ld c, $0e
    db $fc
    ld l, h
    ld a, h
    sbc h
    sbc $f2
    cp $92
    db $fc
    inc c
    ld hl, sp+$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_031_5508:
    ccf
    ccf

jr_031_550a:
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
    scf
    ccf
    jr c, jr_031_55a0

    ld e, a
    ld a, a
    ld d, b
    ccf
    jr nc, @+$21

    ld de, $1f1f
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    sbc $fa
    cp $0a
    db $fc
    inc c
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    inc de
    rra
    ld de, $181f
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
    ld hl, sp-$68
    rra
    jr jr_031_556e

    inc c
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    inc b
    rlca
    rlca

jr_031_556e:
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$d0]
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
    ld e, $1f
    jr jr_031_55ca

    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$18
    db $fc
    inc c
    cp $6a
    cp $92

jr_031_55a0:
    ld l, a
    ld e, c
    ld a, a
    db $76
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    dec de
    rrca
    inc c
    rrca
    rrca
    rlca
    rlca
    or $9a
    db $fc
    ld l, h
    ld a, h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, Call_031_48f8
    or b
    or b
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

jr_031_55ca:
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
    ld e, e
    ld a, a
    ld [hl], c
    ld a, a
    ld e, h
    ccf
    dec sp
    rra
    jr jr_031_55fa

    inc c
    rrca
    rrca
    rlca
    rlca
    cp $da
    db $fc
    adc h
    db $fc
    inc a
    cp $d2
    cp $12

jr_031_55fa:
    db $fc
    inc a
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
    inc de
    rra
    ld de, $181f
    rra
    rla
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
    jr jr_031_5630

    inc c
    rlca
    rlca
    rra
    inc e
    ccf
    jr c, jr_031_564c

    rra
    ld c, $0e

jr_031_5630:
    ld hl, sp-$68
    ldh a, [rNR10]
    ld hl, sp+$68
    ld hl, sp-$18
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_031_5658

    inc bc
    inc bc
    rrca
    rrca
    rra
    inc e
    daa
    ccf
    daa
    ccf
    ld a, a
    ld a, l

jr_031_564c:
    ld a, a
    ld a, b
    ccf
    ld [hl-], a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$38
    db $e4
    db $fc

jr_031_5658:
    db $e4
    db $fc
    cp $be
    cp $1e
    db $fc
    ld c, h
    rra
    ld [de], a
    ld a, $39
    ld h, a
    ld e, a
    dec l
    ld [hl], $33
    cpl
    dec l
    ld [hl], $19
    ld e, $07
    rlca
    ld hl, sp+$48
    ld a, h
    sbc h
    and $fa
    or h
    ld l, h
    call z, $b4f4
    ld l, h
    sbc b
    ld a, b
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    inc c
    rra
    rra
    cpl
    ccf
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    scf
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp-$08
    db $f4
    db $fc
    db $f4
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $ec
    rra
    inc de
    ccf
    jr c, jr_031_570c

    ld e, a
    dec l
    scf
    inc sp
    cpl
    dec l
    scf
    jr @+$21

    rlca
    rlca
    ld hl, sp-$38
    db $fc
    inc e
    and $fa

jr_031_56b6:
    or h
    db $ec
    call z, $b4f4
    db $ec
    jr jr_031_56b6

    ldh [$e0], a
    inc bc
    inc bc
    rrca
    ld c, $1f
    rra
    rra
    rra
    rrca
    dec bc
    rra
    ld de, $141f
    rra
    inc d
    ret nz

    ret nz

    db $fc
    inc a
    cp $9e
    cp $de
    ld a, $fe
    ld a, $fe
    db $fc
    db $fc
    db $fc
    sbc h
    rra
    db $10
    dec bc
    inc c
    rra
    rla
    jr @+$19

    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld b, $05

jr_031_56ee:
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [$f0]
    jr c, jr_031_56ee

    inc a
    db $fc
    or h
    ld a, h
    ld b, h
    db $fc
    ret z

    ld a, b
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    inc e
    daa
    ccf
    daa
    ccf

jr_031_570c:
    ld a, a
    ld a, l
    ld a, a
    ld a, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$38
    db $e4
    db $fc
    db $e4
    db $fc
    cp $be
    cp $1e
    ccf
    ld [hl-], a
    ld a, a
    ld d, d
    ld l, $39
    scf
    cpl
    dec l
    ld [hl], $1b
    rra
    add hl, bc
    ld c, $07
    rlca
    db $fc
    ld c, h
    cp $4a
    ld [hl], h
    sbc h
    db $ec
    db $f4
    or h
    ld l, h
    ret c

    ld hl, sp-$70
    ld [hl], b
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    rra
    cpl
    ccf
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp-$08
    db $f4
    db $fc
    db $f4
    db $fc
    cp $fe
    cp $fe
    ccf
    scf
    ld a, a
    ld d, e
    cpl
    jr c, jr_031_579e

    cpl
    add hl, hl
    scf
    rra
    rra
    add hl, bc
    rrca
    rlca
    rlca
    db $fc
    db $ec
    cp $ca
    db $f4
    inc e
    db $ec
    db $f4
    sub h
    db $ec
    ld hl, sp-$08
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    ld c, $1f
    rra
    rra
    rra
    rrca
    dec bc
    rra
    ld de, $141f
    nop
    nop
    ret nz

    ret nz

    db $fc
    inc a
    cp $9e
    cp $de
    ld a, $fe
    ld a, $fe

jr_031_579e:
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    rrca
    inc c
    rrca
    dec bc
    inc c
    dec bc
    dec b
    ld b, $06
    dec b
    inc bc
    inc bc
    db $fc
    sbc h
    ld hl, sp+$18
    ldh a, [$f0]
    cp b
    ld hl, sp+$3c
    db $fc
    ld h, h
    cp h
    adc b
    ld a, b
    ldh a, [$f0]
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_031_57e6

    db $10
    cpl
    jr nc, @+$81

    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $02
    or $6a
    ccf
    jr nc, @+$41

    add hl, sp
    ld a, a
    ld c, [hl]

jr_031_57e6:
    ld a, e
    ld c, a
    jr c, @+$41

    rra
    rra
    rra
    rra
    rlca
    rlca
    db $fc
    inc c
    db $fc
    sbc h
    cp $72
    sbc $f2
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr jr_031_5826

    db $10
    cpl
    jr nc, jr_031_588a

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $0a
    cp $02
    scf
    jr c, @+$41

    inc a
    ld a, e
    ld e, a

jr_031_5826:
    ld a, b
    ld e, a
    jr nc, jr_031_5869

    rra
    rra
    rra
    rra
    rlca
    rlca
    db $ec
    inc e
    db $fc
    inc a
    sbc $fa
    ld e, $fa
    inc c
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh [$e0], a
    inc bc
    inc bc
    dec c
    ld c, $17
    jr @+$21

    db $10
    ccf
    jr nz, jr_031_588a

    jr nz, @+$41

    jr nz, jr_031_588e

    inc l
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    inc b
    db $fc
    ld h, h
    db $fc
    inc d
    ccf
    jr nz, jr_031_5882

    jr jr_031_5883

    ld de, $0f0f
    inc b

jr_031_5869:
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
    add sp, -$08
    ld hl, sp+$78
    sbc b
    ld hl, sp-$68
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop

jr_031_5882:
    inc bc

jr_031_5883:
    inc bc
    dec c
    ld c, $17
    jr jr_031_58a8

    db $10

jr_031_588a:
    cpl
    jr nc, jr_031_590c

    ld d, b

jr_031_588e:
    ld a, a
    ld b, b
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $02
    ld l, a
    ld d, [hl]
    ccf
    jr nc, jr_031_5924

    ld a, c
    ld a, a
    ld a, [hl]

jr_031_58a8:
    ccf
    daa
    inc a
    daa
    rra
    rra
    rrca
    rrca
    or $6a
    db $fc
    inc c
    db $fc
    sbc h
    db $fc
    ld a, h
    ret c

    ld hl, sp+$18
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr jr_031_58e8

    db $10
    cpl
    jr nc, jr_031_594c

    ld d, b
    ld a, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $0a
    ld a, a
    ld b, b
    ld [hl], a
    ld a, b
    ld a, a
    ld a, h
    ld a, e
    ld a, a

jr_031_58e8:
    jr c, @+$41

    rra
    rra
    rra
    rra
    rrca
    rrca
    cp $02
    db $ec
    inc e
    cp $3e
    sbc $f2
    ld a, $f2
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, @+$41

jr_031_5907:
    jr nz, jr_031_5988

    ld b, b
    ld a, a
    ld b, b

jr_031_590c:
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_031_5907

    db $10
    add sp, $18
    ld hl, sp+$08
    ld hl, sp-$38
    add sp, $38
    ld a, a
    ld b, b
    ld a, $31

jr_031_5924:
    dec a
    inc hl
    rra
    rra
    ld de, $1f1f
    rra
    rrca
    rrca
    rrca
    rrca
    ld hl, sp+$28
    ldh a, [$d0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_031_5944:
    rla
    jr jr_031_596e

    jr c, jr_031_5978

    jr nc, jr_031_5988

    ld [hl-], a

jr_031_594c:
    ld l, e
    ld d, [hl]
    ld a, a
    ld d, b
    ret nz

jr_031_5951:
    ret nz

    jr nc, jr_031_5944

    add sp, $18
    db $e4
    inc e
    db $f4
    inc c
    cp h
    ld c, h
    sub $6a
    cp $0a
    ld a, $31
    dec a
    ld a, [hl-]
    ld a, a
    ld c, a
    ld a, a

jr_031_5967:
    ld c, b
    jr nc, jr_031_59a9

    ld e, $1f
    inc de
    rra

jr_031_596e:
    ld c, $0e
    ld a, h
    adc h
    cp h
    ld e, h
    cp $f2
    cp $12

jr_031_5978:
    inc c
    db $fc
    ld a, b
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    ld c, $0d
    rla
    jr jr_031_59aa

    inc a

jr_031_5988:
    jr nz, jr_031_59c9

    jr nc, jr_031_59cb

    ld l, b
    ld d, a
    ld a, a
    ld d, b
    ret nz

    ret nz

    ld [hl], b
    or b
    add sp, $18
    call nz, $043c
    db $fc
    inc c
    db $fc
    ld d, $ea
    cp $0a
    ccf
    jr nc, @+$41

    jr c, jr_031_5a14

    ld d, a
    ld a, a
    ld d, b
    inc sp

jr_031_59a9:
    inc a

jr_031_59aa:
    inc e
    rra
    inc de
    rra
    ld c, $0e
    db $fc
    inc c
    db $fc
    inc e
    or $ea
    cp $0a
    call z, $383c
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca
    rra
    db $10
    ccf
    jr nz, jr_031_5a08

jr_031_59c9:
    jr nz, @+$19

jr_031_59cb:
    jr z, jr_031_5a08

    inc l
    cpl
    jr nc, jr_031_5951

    add b
    ld h, b

jr_031_59d3:
    ldh [$d0], a
    jr nc, jr_031_5967

    ld [hl], b
    ld [$08f8], sp
    ld hl, sp-$30
    ldh a, [$f0]
    jr nc, jr_031_5a18

    jr z, jr_031_59fa

    jr @+$11

    rrca
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $f001
    jr nc, jr_031_59d3

    ldh [$f0], a
    sub b
    ld hl, sp-$78
    ld a, b
    ret z

jr_031_59fa:
    jr c, @-$06

    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5a08:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5a14:
    nop
    nop
    nop
    nop

jr_031_5a18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    db $76
    ld e, c
    ld a, a
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld l, [hl]
    sbc d
    cp $42
    ccf
    ld [hl-], a
    ld a, $39
    ld a, l
    ld c, [hl]
    ld a, a
    ld c, a
    ld a, $3f
    rra
    rra
    rra
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp [hl]
    ld [hl], d
    cp $f2
    ld a, h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld [hl], b
    ld e, a
    ld [hl], b
    ld c, a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld c, $fa
    ld c, $f2
    jr c, jr_031_5b59

    ccf
    jr c, jr_031_5ba4

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    rra
    rra
    rla
    ld c, $0e
    inc e
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld d, $19
    rra
    inc d
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp

jr_031_5b59:
    cp $fc
    db $fc
    ld [$08f8], sp
    ld hl, sp+$1f
    inc d
    add hl, bc
    ld c, $06
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    db $76
    ld e, c
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld l, [hl]
    sbc d
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d

jr_031_5ba4:
    ld a, [hl]
    ld e, c
    dec a
    ld a, $1f
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    cp h
    ld [hl], h
    db $fc
    call z, $c8f8
    or b
    or b
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld [hl], b
    ld e, a
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld c, $fa
    ld [hl], b
    ld c, a
    ld a, b
    ld [hl], a
    ld a, a
    ld e, b
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ld c, $f2
    inc e
    db $ec
    db $fc
    inc e
    ld hl, sp-$08
    db $fc
    db $e4
    db $fc
    db $e4
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld d, $19
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld [$1ff8], sp
    inc d
    rra
    inc d
    add hl, bc
    ld c, $06
    dec b
    dec de
    rra
    dec a
    cpl
    rra
    rra
    ld c, $0e
    ld [$68f8], sp
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_031_5c58

    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld d, [hl]
    ld a, a
    ld b, d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08

jr_031_5c58:
    db $fc
    inc c
    db $fc
    db $fc
    cp $6a
    cp $42
    ccf
    jr nc, jr_031_5ca1

    add hl, sp
    ld a, a
    ld c, a
    ld a, e
    ld c, [hl]
    ccf
    ld a, $1f
    ld de, $223e
    inc a
    inc a
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    sbc $72
    db $fc
    ld a, h
    ld hl, sp-$78
    ld a, h
    ld b, h
    inc a
    inc a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $fa
    cp $f2
    ccf

jr_031_5ca1:
    inc sp
    inc a
    ccf
    ld a, e
    ld e, a
    ld a, c
    ld e, [hl]
    inc a
    ccf
    rra
    rla
    ccf
    ld hl, $3e3e
    db $fc
    call z, $fc3c
    sbc $fa
    sbc [hl]
    ld a, d
    inc a
    db $fc
    ld hl, sp-$18
    db $fc
    add h
    ld a, h

jr_031_5cbf:
    ld a, h
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    jr nz, jr_031_5d08

    jr nz, jr_031_5d0a

    ccf
    rra
    ld d, $1f
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra

jr_031_5ce1:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca

jr_031_5ceb:
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ldh a, [rNR10]
    add sp, $78
    ret z

    ld hl, sp-$18
    jr c, jr_031_5ce1

    jr c, jr_031_5ceb

    ldh a, [$e0]
    jr nz, jr_031_5cbf

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra

jr_031_5d08:
    rra
    db $10

jr_031_5d0a:
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld d, [hl]
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $6a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    ccf
    ccf
    dec bc
    ld c, $0f
    ld c, $0f
    add hl, bc
    ld b, $06
    cp $42
    db $fc
    inc c
    ld a, b
    sbc b
    ldh a, [$f8]
    ld hl, sp+$48
    ld hl, sp+$48
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
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
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
    ld e, $1c
    rla
    rra
    inc de
    ld c, $0e
    cp $f2
    db $fc
    call z, $fc3c
    sbc $f2
    sbc [hl]
    ld [hl], d
    inc l
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
    jr nz, jr_031_5dca

    jr nz, jr_031_5dcc

    ccf
    rra
    ld d, $00
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
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

jr_031_5da7:
    rlca
    rra
    rra
    ccf
    dec h
    rra
    inc de
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    add sp, $78
    ret z

    ld hl, sp-$18
    jr c, jr_031_5da7

    inc a
    db $fc
    db $f4
    jr @+$1a

    rlca
    rlca
    ld [$1f0f], sp
    rra
    rra
    rra
    ld [hl], b
    ld a, a

jr_031_5dca:
    rra
    inc e

jr_031_5dcc:
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ldh [$e0], a
    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$0e

jr_031_5dd9:
    cp $f8
    jr c, jr_031_5dd9

    ld c, h
    db $fc
    ld c, h
    ld a, $39
    ccf
    ccf
    ld c, $0b
    rra
    inc de
    inc c
    rrca

jr_031_5dea:
    inc b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld a, h
    sbc h
    db $fc
    db $fc
    ld [hl], b
    ret nc

    ld hl, sp-$38
    jr nc, jr_031_5dea

    jr nz, @-$1e

    ldh [$e0], a
    ret nz

    ret nz

    rlca
    rlca
    ld [$1f0f], sp
    rra
    rra
    rra
    ld [hl], b
    ld a, a
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ldh [$e0], a
    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$0e
    cp $f8
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ccf
    ccf
    ccf
    ccf
    ld c, $0b
    rra
    inc de
    inc c
    rrca

jr_031_5e2a:
    inc b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    db $fc
    db $fc
    db $fc
    ld [hl], b
    ret nc

    ld hl, sp-$38
    jr nc, jr_031_5e2a

    jr nz, @-$1e

    ldh [$e0], a
    ret nz

    ret nz

    rrca
    rrca
    db $10
    rra
    ccf
    ccf
    ccf
    ccf
    ldh [rIE], a
    rra
    ld de, $141f
    rra
    inc d
    ldh [$e0], a
    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$0e
    cp $f8
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    rra
    db $10
    dec bc
    dec c
    rlca
    rlca
    dec b
    rlca
    rlca
    ld b, $04
    rlca
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    db $fc
    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    jr nz, @-$1e

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$1f0f], sp
    rra
    rra
    rra
    ld [hl], b
    ld a, a
    rra
    inc e
    ccf
    ld [hl-], a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$0e

jr_031_5e9b:
    cp $f8
    jr c, jr_031_5e9b

    ld c, h
    ccf
    ld [hl-], a
    ld a, $39
    ccf
    daa
    inc e
    rra
    rlca
    rlca
    inc b
    rlca

jr_031_5eac:
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    ld c, h
    ld a, h
    sbc h
    ld hl, sp-$18
    inc a
    db $e4
    ld hl, sp-$38
    jr nc, jr_031_5eac

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$1f0f], sp
    rra
    rra
    rra
    ld [hl], b
    ld a, a
    rra
    rra
    ccf
    ccf
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$0e
    cp $f8
    ld hl, sp-$04
    db $fc
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    inc a
    cpl
    rra
    rra
    inc b
    rlca

jr_031_5eec:
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    inc a
    db $e4
    ld hl, sp-$18
    jr nc, jr_031_5eec

Call_031_5efc:
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    ccf
    ccf
    ccf
    ccf
    ldh [rIE], a
    rra
    ld de, $141f
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$0e
    cp $f8
    ld hl, sp-$04
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    dec c
    rlca
    rlca
    rlca
    dec b
    rrca
    add hl, bc
    rrca
    rrca
    ld e, $1e
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$f0]
    jr nz, @-$1e

    ret c

    ld hl, sp-$08
    ld hl, sp+$30
    jr nc, jr_031_5f50

    rrca
    db $10
    rra
    db $10
    rra
    ld de, $1f1e
    rra
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, d

jr_031_5f50:
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp-$78
    ld a, b
    ld hl, sp-$08
    db $fc
    db $ec
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld e, $19
    ccf
    ccf
    ld a, l
    ld c, [hl]
    ld a, a
    ld c, e
    jr c, jr_031_5fab

    rra
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, b
    sbc b
    db $fc
    db $fc
    cp [hl]
    ld [hl], d
    cp $d2
    inc e
    db $fc
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    cp $fa
    cp $f2
    ccf
    inc sp
    ccf
    inc a
    ld [hl], e
    ld e, a
    ld [hl], b
    ld e, a
    inc a
    ccf
    rra

jr_031_5fab:
    rra
    rra
    rla
    ld c, $0e
    db $fc
    call z, $3cfc
    adc $fa
    ld c, $fa
    inc a
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    jr @+$19

    ccf
    ccf
    rra
    ld de, $141f
    rra
    inc d
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp-$04
    db $fc
    db $fc
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
    inc bc
    inc bc
    inc bc

jr_031_5fe9:
    inc bc
    inc b

jr_031_5feb:
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ret nc

    ldh a, [$f0]
    jr nc, jr_031_5fe9

    jr nc, jr_031_5feb

    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    ld de, $3f1e
    ccf
    ccf
    scf
    ld a, a
    ld d, b
    nop
    nop
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp-$78
    ld a, b
    db $fc
    db $fc
    db $fc
    db $ec
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
    dec c
    ld c, $0f
    dec bc
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld a, h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, Call_031_48f8
    or b
    or b
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    dec sp
    ccf
    jr @+$21

    inc c
    rrca
    rrca
    dec bc
    rlca
    rlca
    cp $f2
    db $fc
    call z, $3cfc
    sbc $f2
    ld e, $f2
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    jr jr_031_60a1

    ccf
    ccf
    rra
    ld de, $141f
    nop
    nop
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra

jr_031_60a1:
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
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr @+$1a

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
    ldh a, [$88]
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
    dec de
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, b
    sbc b
    call c, Call_031_7eec
    sub d
    sbc [hl]
    ld [hl], d
    db $fc
    db $fc
    ret c

    add sp, $70
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
    rra
    inc de
    cpl
    jr c, @+$73

    ld e, [hl]
    ld a, b
    ld e, a
    ccf
    ccf
    dec de
    rla
    ld c, $0e
    db $fc
    db $fc
    ld hl, sp-$38
    db $f4
    inc e
    adc [hl]
    ld a, d
    ld e, $fa
    db $fc
    db $fc
    ret c

    add sp, $70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr jr_031_6167

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

jr_031_6158:
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
    inc bc

jr_031_6167:
    inc bc
    rlca
    inc b
    rlca
    inc b
    rrca
    dec bc
    rlca
    rlca
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$d0]
    jr nz, jr_031_6158

    ldh [$a0], a
    ldh [$e0], a
    ld h, b
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
    ldh a, [$88]
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
    ccf
    rrca
    rrca
    ld c, $0f
    dec c
    dec bc
    rlca
    rlca
    cp $42
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
    jr c, jr_031_6202

    ld e, $0e
    rrca
    dec c
    dec bc
    rlca
    rlca
    cp $f2
    db $fc
    db $fc
    call c, $feec
    ld [de], a
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

jr_031_6202:
    rlca
    rlca
    ld [$100f], sp
    rra
    jr jr_031_6229

    jr c, jr_031_624b

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

jr_031_6229:
    dec de
    scf
    inc l
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ld hl, sp+$68
    ld a, b
    ld hl, sp-$08
    sbc b
    db $f4
    sbc h
    ld [hl], h
    db $ec
    jr jr_031_6258

    jr c, jr_031_627a

    ld b, a
    ld a, a
    ld d, b
    ld a, a
    ld a, h
    ld h, e
    inc a
    dec hl
    inc a

jr_031_624b:
    inc hl
    ld a, a
    ld b, b
    ld a, a
    ld c, a
    jr c, jr_031_628a

    call nz, $14fc
    db $fc
    ld a, h
    adc h

jr_031_6258:
    ld a, b
    xor b
    ld a, b
    adc b
    db $fc
    inc b
    db $fc
    db $e4
    ccf
    jr nz, jr_031_6282

    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_031_62a9

    jr nz, jr_031_62ab

    inc de
    rra
    inc c
    inc c
    ld hl, sp+$08
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc

jr_031_627a:
    inc b
    db $fc
    adc b
    ld hl, sp+$70
    ld [hl], b
    rrca
    rrca

jr_031_6282:
    rra
    ld e, $1e
    rra
    jr jr_031_62a7

    scf
    ccf

jr_031_628a:
    ccf
    ccf
    ld [hl], a
    ld e, b
    ld a, a
    ld b, [hl]
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$18
    ld hl, sp-$14
    db $fc
    db $fc
    db $fc
    xor $1a
    cp $62
    ld a, $31
    dec a
    ld a, [hl-]
    ld a, a
    ld c, h
    ld a, a

jr_031_62a7:
    ld c, h
    ccf

jr_031_62a9:
    ld a, [hl-]
    rra

jr_031_62ab:
    inc de
    rra
    rra
    ld c, $0e
    ld a, h
    adc h
    cp h
    ld e, h
    cp $32
    cp $32
    db $fc
    ld e, h
    ld hl, sp-$38
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    jr nc, jr_031_6309

    ccf
    ccf
    ld [hl], b
    ld e, a
    ld [hl], b
    ld c, a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    inc c
    db $fc
    db $fc
    db $fc
    ld c, $fa
    ld c, $f2
    jr c, jr_031_6319

    ccf
    jr c, jr_031_6364

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    ld de, $1f1f
    ld c, $0e
    inc e
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    db $10
    rra
    ccf

jr_031_6309:
    ccf
    ccf
    ccf
    ld d, $19
    rra
    ld d, $f0
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp-$08

jr_031_6319:
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$1f
    db $10
    add hl, bc
    ld c, $06
    add hl, bc
    rlca
    add hl, bc
    inc bc
    rlca
    rlca
    dec b
    rrca
    rrca
    rrca
    rrca
    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_6364:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_031_637d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    ld b, e
    ld a, a
    ld b, b
    ld a, a
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld b, $07
    rra
    add hl, de
    ld a, a
    ld h, b
    ld a, a
    ld e, b
    rst $38
    sub h
    ld hl, $213f
    ccf
    ld [de], a
    rra
    ld a, [bc]
    rrca
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    db $e3
    db $e3
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [hl], e
    adc h
    rst $38
    inc b
    rst $38
    ld bc, $02ff

jr_031_643d:
    rst $38
    ld b, b
    rst $38
    sbc e
    ld a, [$fe87]
    add d
    rst $38
    ret nz

    cp a
    ld b, c
    ld a, a
    ld h, b
    ld e, a
    jr nc, jr_031_647d

    inc a
    inc sp
    ret nz

    rst $38
    ret nc

    rst $38
    ret c

    ld l, a
    ret c

    rst $38
    xor b
    rst $38
    and b
    rst $38
    jr nc, jr_031_643d

    ld [hl], b
    sbc a
    rrca
    ld [$0607], sp
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$0f
    cp $07
    rst $38
    add c
    ld a, a
    ld [hl], b
    rrca
    rrca
    nop
    nop
    nop

jr_031_647d:
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
    jr c, jr_031_64c8

    jr nc, @+$81

    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    inc e
    db $fc
    inc c
    cp $0a
    cp $6a
    cp $9a
    ccf
    ld [hl], $1e
    add hl, de
    scf
    ccf
    ld a, b
    ld c, a
    ld a, a
    ld c, b
    ccf
    ccf
    dec de
    rla
    ld c, $0e
    db $fc
    ld l, h
    ld a, b
    sbc b
    db $ec
    db $fc
    ld e, $f2
    cp $12
    db $fc
    db $fc
    ret c

    add sp, $70
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_031_64c8:
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld d, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $ea
    scf
    add hl, sp
    dec a
    ld a, $73
    ld e, a
    ld a, b
    ld c, a
    ccf
    jr c, @+$21

    rra
    dec de
    rla
    ld c, $0e
    db $ec
    sbc h
    cp h
    ld a, h
    adc $fa
    ld e, $f2
    db $fc
    inc e
    ld hl, sp-$08
    ret c

    add sp, $70
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
    ld sp, $101f
    rra
    inc e
    rra
    rla
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
    cp h

jr_031_651e:
    db $fc
    cp h
    rra
    inc e
    rrca
    ld [$0f0f], sp
    dec bc
    ld c, $0f
    ld a, [bc]
    rlca
    rlca
    ld b, $05
    inc bc
    inc bc
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    jr nz, jr_031_651e

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
    jr c, @+$81

    ld d, b
    ld a, a
    ld d, [hl]
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    inc e
    cp $0a
    cp $6a
    ld a, a
    ld e, c
    ccf
    ld [hl], $7e
    ld e, c
    ld [hl], a
    ld e, a
    ld a, $39
    rrca
    ld c, $0d
    dec bc
    rlca
    rlca
    cp $9a
    db $fc
    ld l, h
    ld a, b
    sbc b
    ld hl, sp-$08
    inc a
    db $e4
    db $fc
    inc h
    ret c

    ret c

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
    ld a, a
    ld e, a
    ld a, a
    ld c, a
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
    cp $f2
    ld l, a
    ld d, a
    ld a, a
    ld [hl], c
    ld a, a
    ld e, h
    inc sp
    ccf
    rra
    jr jr_031_65ba

    rrca
    inc c
    dec bc
    rlca
    rlca
    or $ea
    db $fc
    adc h
    db $fc
    inc a
    call c, $3cf4
    db $e4

jr_031_65ba:
    ld hl, sp+$38
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
    ld sp, $101f
    rra
    inc e
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
    cp h
    rra
    rla
    rra
    inc e
    rrca
    ld [$0f0f], sp
    rra
    inc e
    dec [hl]
    ld l, $13
    rra
    inc c
    inc c
    db $fc
    cp h
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$f0], a
    ld hl, sp-$68
    db $f4
    sbc h
    ld [hl], h
    db $ec
    jr @+$1a

    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, @+$41

    ccf
    jr nc, @+$81

    ld d, h
    ld a, a
    ld b, d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    inc c
    cp $2a
    cp $42
    cpl
    jr nc, jr_031_66a1

    ld l, c
    ei
    sub a
    push af
    sbc d
    ld [hl], e
    ld a, l
    ld e, $1f
    rla
    rra
    ld c, $0e
    db $f4
    inc c
    ld a, [hl]
    sub [hl]
    rst $18
    jp hl


    xor a
    ld e, c
    adc $be
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld sp, $3e3f
    ccf
    ld a, l
    ld e, a
    ld a, l
    ld c, a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$74
    db $fc
    ld a, h
    db $fc
    cp [hl]
    ld a, [$f2be]
    ccf
    scf
    ld e, a
    ld a, b
    rst $28
    or a
    rst $28
    or b
    ld [hl], b
    ld a, a
    rra
    rra
    rla
    rra
    ld c, $0e
    db $fc

jr_031_6671:
    db $ec
    ld a, [$f71e]
    db $ed
    rst $30
    dec c
    ld c, $fe
    ld hl, sp-$08
    add sp, -$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_031_66c7

    jr nz, jr_031_66c9

    ccf
    ld hl, $141f
    rra
    jr jr_031_6671

    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$14
    db $fc
    ld a, [$fcfe]
    db $fc
    ld hl, sp-$68
    rra

jr_031_66a1:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    dec b
    dec b

jr_031_66a9:
    rlca
    dec bc

jr_031_66ab:
    rrca
    rrca
    rrca
    rlca
    rlca
    ldh a, [rNR10]
    ldh [$60], a
    ret nc

    ldh a, [$f0]
    jr nc, jr_031_66a9

    jr nc, jr_031_66ab

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp

jr_031_66c7:
    rra
    db $10

jr_031_66c9:
    rra
    jr c, @+$41

    ccf
    jr nc, @+$81

    ld d, h
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    inc c
    cp $2a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    scf
    ccf
    inc e
    dec de
    dec bc
    inc c
    add hl, bc
    rrca
    rlca
    rlca
    cp $42
    db $fc
    inc c
    ld a, h
    sbc h
    db $ec
    db $fc
    inc e
    db $e4
    db $fc
    ld h, h
    ret c

    ret c

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
    ld sp, $3e3f
    ccf
    ld a, l
    ld e, a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$74
    db $fc
    ld a, h
    db $fc
    cp [hl]
    ld a, [$4f7d]
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    ccf
    scf
    rla
    jr jr_031_6733

    rrca
    rrca
    rrca
    rlca
    rlca
    cp [hl]
    ld a, [c]
    db $fc

jr_031_6733:
    call z, $3cfc
    cp $d2
    cp $12
    inc e
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_031_6789

    jr nz, jr_031_678b

    ccf
    ld hl, $141f
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$14
    db $fc
    ld a, [$fcfe]
    db $fc
    rra
    jr jr_031_6782

    db $10
    dec bc
    inc c
    rlca
    rlca
    ld e, $1d
    ld l, $3f
    rra
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    sbc h
    db $f4
    db $fc
    jr jr_031_6798

    inc bc
    inc bc

jr_031_6782:
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf

jr_031_6789:
    ld a, [hl-]
    ccf

jr_031_678b:
    jr nc, jr_031_680c

    ld d, h
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc

jr_031_6798:
    db $fc
    ld e, h
    db $fc
    inc c
    cp $2a
    or $4a
    ccf
    jr nc, jr_031_67c1

    add hl, de
    ccf
    daa
    inc a
    daa
    dec de
    ld e, $13
    rra
    rrca
    rrca
    ld bc, $fc01
    inc c
    ld a, b
    sbc b
    db $fc
    db $e4
    inc a
    db $e4
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ldh a, [$80]
    add b
    inc bc

jr_031_67c1:
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
    db $fc
    db $fc
    cp $fa
    or $fa
    ccf
    jr nc, jr_031_6802

    jr jr_031_6824

    cpl
    inc a
    cpl
    dec de
    rra
    rra
    rra
    rrca
    rrca
    ld bc, $fc01
    inc c
    ld hl, sp+$18
    db $fc
    db $f4
    inc a
    db $f4
    ret c

    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$80]
    add b
    inc bc
    inc bc

jr_031_6802:
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    dec de
    rra
    ld a, [de]

jr_031_680c:
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $7e
    db $fc
    inc a
    call c, $0f24
    ld [$1e15], sp

jr_031_6824:
    rla
    add hl, de
    ccf
    add hl, sp
    ld h, a
    ld a, a
    ld h, e
    ld a, a
    ccf
    ccf
    inc e
    inc e
    ld hl, sp+$08
    ldh a, [$30]
    db $fc
    db $fc
    cp $fe
    db $e3
    rst $38
    ld h, e
    rst $38
    cp $fe
    inc e
    inc e
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld [hl], h
    ld a, a
    ld h, b
    rst $38
    xor b
    rst $18
    and h
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$48
    ld hl, sp+$18
    db $fc
    ld d, h
    db $ec
    sub h
    ld a, a
    ld h, b
    inc a
    inc sp
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    ccf
    inc a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [$30]
    ld hl, sp-$38
    ld a, b
    ret z

    or b
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $18
    cp a
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $f4
    db $ec
    db $f4
    ld a, a
    ld h, b
    ccf
    jr nc, jr_031_6924

    ld e, a
    ld a, b
    ld e, a
    scf
    ccf
    ccf
    ccf
    rra
    rra
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [$30]
    ld hl, sp-$18
    ld a, b
    add sp, -$50
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    ccf
    inc [hl]
    rra
    ld [de], a
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
    ld hl, sp+$78
    cp b
    ld c, b
    rra
    db $10
    dec hl
    inc a
    cpl
    inc sp
    ld a, a
    ld [hl], e
    rst $08
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    ld a, a
    add hl, sp
    add hl, sp
    ldh a, [rNR10]
    ldh [$60], a
    ld hl, sp-$08
    db $fc
    db $fc
    add $fe
    add $fe
    ld a, h
    db $fc
    cp b
    cp b
    inc bc
    inc bc
    inc c
    rrca

jr_031_6904:
    db $10
    rra
    inc h
    ccf
    cpl
    dec sp
    ld a, a
    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ld e, a
    ret nz

    ret nz

    jr nc, jr_031_6904

    ld [$24f8], sp
    db $fc
    db $f4
    call c, $0afe
    cp $6a
    cp $fa
    ccf
    ld [hl], $1e
    add hl, de

jr_031_6924:
    ccf
    ccf
    ld a, [hl]
    ld c, c
    ld a, e
    ld c, h
    ccf
    ccf
    add hl, de
    rla
    ld c, $0e
    db $fc
    ld l, h
    ld a, b
    sbc b
    db $fc
    db $fc
    ld a, [hl]
    sub d
    sbc $32
    db $fc
    db $fc
    sbc b
    add sp, $70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_031_6944:
    db $10
    rra
    db $10
    rra
    jr nz, jr_031_6989

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ld l, [hl]
    ld d, a
    ret nz

    ret nz

    jr nc, jr_031_6944

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    ld c, $fa
    ld e, $f2
    db $76
    ld [$313f], a
    ccf
    inc a
    ld a, a
    ld d, e
    ld a, a
    ld c, b
    ccf
    jr c, jr_031_6982

    rra
    add hl, de
    rla
    ld c, $0e
    db $fc
    adc h
    db $fc
    inc a
    cp $ca
    cp $12
    db $fc
    inc e
    add sp, -$08
    sbc b
    add sp, $70
    ld [hl], b
    inc bc
    inc bc

jr_031_6982:
    inc c
    rrca

jr_031_6984:
    db $10
    rra
    inc h
    ccf
    cpl

jr_031_6989:
    dec sp
    rra
    db $10
    rra
    inc e
    rra
    rra
    ret nz

    ret nz

    jr nc, jr_031_6984

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    call nz, $e4fc
    cp h

jr_031_699e:
    db $e4
    cp h
    rra
    inc e
    rrca
    ld [$0f0f], sp
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rlca
    rlca
    ld b, $05
    inc bc
    inc bc
    ret z

    ld a, b
    ldh a, [rSVBK]
    ldh a, [$d0]
    ldh a, [$50]
    ldh a, [$50]
    ldh [$e0], a
    jr nz, jr_031_699e

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_031_69c6:
    db $10
    rra
    inc h
    ccf
    cpl
    dec sp
    ld a, a
    ld d, b
    ld a, a
    ld d, [hl]
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_031_69c6

    ld [$24f8], sp
    db $fc
    db $f4
    call c, $0afe
    cp $6a
    ld a, a
    ld e, a
    ccf
    ld [hl], $7e
    ld e, c
    ld [hl], a
    ld e, a
    dec sp
    inc a
    ld c, $0f
    dec c
    dec bc
    rlca
    rlca
    cp $fa
    db $fc
    ld l, h
    ld a, [hl]
    sbc [hl]
    cp $f2
    cp $12
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
    inc c
    rrca

jr_031_6a06:
    db $10
    rra
    db $10
    rra
    jr nz, jr_031_6a4b

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_031_6a06

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    ld c, $fa
    ld e, $f2
    ld l, [hl]
    ld d, a
    ccf
    ld sp, $5c7f
    ld a, a
    ld d, e
    ccf
    jr c, jr_031_6a3a

    rrca
    inc c
    dec bc
    rlca
    rlca
    db $76
    ld [$8cfc], a
    db $fc
    inc a
    cp $ca
    cp $12

jr_031_6a3a:
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
    inc c
    rrca

jr_031_6a46:
    db $10
    rra
    inc h
    ccf
    cpl

jr_031_6a4b:
    dec sp
    rra
    db $10
    rra
    inc e
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_031_6a46

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    call nz, $e4fc
    cp h
    rra
    rra
    rra
    inc e
    rrca
    ld [$0f0f], sp
    rra
    inc e
    dec [hl]
    ld l, $13
    rra
    inc c
    inc c
    db $e4
    cp h
    ret z

    ld a, b
    ldh a, [rSVBK]
    ldh [$f0], a
    ld hl, sp-$68
    db $f4
    sbc h
    ld [hl], h
    db $ec
    jr jr_031_6a98

    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    inc d
    rra
    daa
    ld a, $20
    ccf
    dec e
    ld e, $80
    add b

jr_031_6a92:
    cp $7e
    sbc $72
    inc c
    db $f4

jr_031_6a98:
    jr z, jr_031_6a92

    db $e4
    ld a, h
    inc b
    db $fc
    cp b
    ld a, b
    cpl
    dec sp
    ld d, a
    ld a, h
    sub e
    rst $38
    ld [hl], a
    ld a, b
    rra
    jr jr_031_6ada

    inc a
    scf
    dec hl
    inc e
    inc e
    db $f4
    call c, $3eea
    ret


    rst $38
    xor $1e
    ld hl, sp+$18
    db $f4
    inc a
    db $ec
    call nc, $3838
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, jr_031_6af7

    ld de, $201e
    ccf
    ld hl, $1c3e
    rra
    add b
    add b
    cp $7e
    sbc $72
    inc c
    db $f4

jr_031_6ad8:
    adc b
    ld a, b

jr_031_6ada:
    inc b
    db $fc
    add h
    ld a, h
    jr c, jr_031_6ad8

    dec hl
    ccf
    ld d, b
    ld a, a

jr_031_6ae4:
    sub c
    rst $38
    ld [hl], d
    ld a, a
    jr @+$21

    inc l
    ccf
    inc hl
    ccf
    inc e
    inc e
    call nc, $0afc
    cp $89
    rst $38
    ld c, [hl]

jr_031_6af7:
    cp $18
    ld hl, sp+$34
    db $fc
    call nz, $38fc
    jr c, @+$0e

    inc c
    rra
    inc de
    inc e
    inc de
    db $10
    rra
    jr nz, @+$41

    ld h, d
    ld a, a
    adc $bf
    add b
    rst $38
    nop
    nop
    add b
    add b
    ld a, b
    ld hl, sp+$7c
    call nz, $847c
    jr c, jr_031_6ae4

    db $10
    ldh a, [rNR41]
    ldh [$7c], a
    ld [hl], a
    ld a, $29
    rra
    rra
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld bc, $3001
    ldh a, [rOBP0]
    ld hl, sp-$7a
    cp $c5
    ld a, a
    xor c
    ld a, a
    sbc [hl]
    ld a, [c]
    inc e
    db $fc
    ldh [$e0], a
    nop
    nop
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    inc d
    rra
    daa
    ld a, $e0
    rst $38
    nop
    nop
    add b
    add b

jr_031_6b54:
    cp $7e
    sbc $72
    inc c
    db $f4
    jr z, jr_031_6b54

    db $e4
    ld a, h
    rlca
    rst $38
    sbc l
    cp $8f
    ei
    ld d, a
    ld a, h
    inc sp
    ccf
    scf
    jr c, jr_031_6b9a

    inc a
    scf
    dec hl
    inc e
    inc e
    cp c
    ld a, a
    pop af
    rst $18
    ld [$cc3e], a
    db $fc
    add sp, $18
    ld hl, sp+$38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    ld de, $201e
    ccf
    pop hl
    cp $00
    nop
    add b
    add b
    cp $7e
    sbc $72
    inc c
    db $f4

jr_031_6b9a:
    adc b
    ld a, b
    inc b
    db $fc
    add a
    ld a, a
    sbc h
    rst $38
    adc e
    rst $38
    ld d, c
    ld a, a
    ld [hl-], a
    ccf
    jr nc, jr_031_6be9

    inc l
    ccf
    inc hl
    ccf
    inc e
    inc e
    add hl, sp
    rst $38
    pop de
    rst $38
    adc d
    cp $4c
    db $fc
    ld [$38f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    inc c
    inc c
    rra
    inc de
    inc e
    inc de
    db $10
    rra
    jr nz, @+$41

    ld h, d
    ld a, a
    adc $bf
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, b
    ld hl, sp+$7c
    call nz, $847c
    jr c, @-$26

    jr z, @-$06

    add b
    rst $38
    ld a, h
    ld [hl], a
    ld a, $29
    rra
    rra
    rra

jr_031_6be9:
    inc e
    inc sp
    ld l, $13
    rra
    ld c, $0e
    ld c, b
    ld hl, sp+$44
    db $fc
    adc h
    db $fc
    add d
    ld a, [hl]
    adc c
    ld a, a
    dec d
    rst $38
    or $ee
    jr jr_031_6c18

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, $33
    rra
    ld de, $243f
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e

jr_031_6c18:
    cp [hl]
    db $76
    ld a, h
    call z, $88f8
    db $fc
    inc h
    ccf
    jr nz, jr_031_6c9a

    ld c, c
    rst $18
    and b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_031_6c42

    jr jr_031_6c36

    rrca
    ld b, $06
    db $fc
    inc b
    xor $92
    ei
    dec b

jr_031_6c36:
    cp $06
    db $f4
    inc c
    add sp, $18
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop

jr_031_6c42:
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld l, [hl]
    dec a
    inc sp
    rra
    db $10
    dec a
    inc hl
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp $76
    cp h
    call z, $08f8
    cp h
    call nz, $243f
    db $76
    ld c, c
    db $dd
    xor d
    ld a, l
    ld l, d
    ld l, $35
    rla
    dec de
    add hl, bc
    rrca
    ld b, $06
    db $fc
    inc h
    ld l, [hl]
    sub d
    cp e
    ld d, l
    cp [hl]
    ld d, [hl]
    ld [hl], h
    xor h
    add sp, -$28
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    ld c, $0e
    dec e
    inc de
    ccf
    ld h, $2f
    jr c, @+$21

    db $10
    rra
    inc d
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h

Jump_031_6c96:
    db $fc
    db $fc
    db $fc
    adc h

jr_031_6c9a:
    ld hl, sp+$08
    add sp, $18
    db $fc
    inc b
    rra
    jr nz, jr_031_6ce0

    inc sp
    ccf
    jr nz, jr_031_6ce6

    jr nz, jr_031_6cd8

    jr nc, jr_031_6cc2

    jr jr_031_6cb9

    rrca
    inc bc
    inc bc
    cp $06
    rst $38
    dec h
    rst $38
    and l
    rst $38
    ld h, l
    push af

jr_031_6cb9:
    rrca
    ld [$3c1e], a
    db $fc
    ret nz

    ret nz

    nop
    nop

jr_031_6cc2:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, $33
    rra
    ld de, $0000
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_031_6cd8:
    cp $3e
    cp [hl]
    db $76
    ld a, h
    call z, $88f8

jr_031_6ce0:
    ld a, a
    ld h, h
    rst $18
    and b
    ld [hl], a
    ld c, c

jr_031_6ce6:
    ld e, a
    ld h, b
    ccf
    jr nz, jr_031_6d1a

    ld a, $11
    rra
    ld c, $0e
    cp $26
    ei
    dec b
    xor $92
    ld a, [$fc06]
    inc b
    ld hl, sp+$08
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld l, [hl]
    dec a
    inc sp
    rra
    stop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e

jr_031_6d1a:
    cp $76
    cp h
    call z, $08f8
    ld a, l
    ld h, e
    rst $18
    and h
    db $76
    ld c, c
    ld e, l
    ld l, d
    dec a
    ld a, [hl+]
    ld l, $3f
    ld de, $0e1f
    ld c, $be
    add $fb
    dec h
    ld l, [hl]
    sub d
    cp d
    ld d, [hl]
    cp h
    ld d, h
    ld a, b
    and h
    ret c

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    dec e
    inc de
    ccf
    ld h, $2f
    jr c, jr_031_6d6e

    stop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    db $fc
    db $fc
    db $fc
    adc h
    ld hl, sp+$08
    add sp, $18
    rra
    inc d
    rra
    jr nz, jr_031_6da2

    inc sp
    ccf
    jr nz, @+$41

    jr nz, jr_031_6dc2

    ld a, b
    inc l
    ccf

jr_031_6d6e:
    rra
    rra
    cp $06
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    push bc

jr_031_6d78:
    db $fd
    rlca
    or $0e
    inc c

jr_031_6d7d:
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    ld bc, $0303
    inc b
    rlca
    inc b
    dec bc
    inc c
    rrca

jr_031_6d8c:
    add hl, bc
    rrca
    inc bc
    ld c, $00
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, jr_031_6d78

    jr nz, @-$2e

    jr nc, jr_031_6d8c

    sub b
    ldh a, [rLCDC]
    ldh a, [rIF]
    add hl, de

jr_031_6da2:
    rra
    db $10
    cpl
    jr nc, jr_031_6dd6

    jr nc, jr_031_6dc0

    jr @+$07

    ld b, $03
    inc bc
    inc b
    ld b, $f0
    sbc b
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c
    add sp, $18
    and b
    ld h, b
    ret nz

    ret nz

    jr nz, @+$62

jr_031_6dc0:
    nop
    nop

jr_031_6dc2:
    nop
    ld bc, $0303
    dec b
    rlca
    nop
    rrca
    ld [$080f], sp
    rrca
    inc bc
    dec c
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

jr_031_6dd6:
    and b
    ldh [rP1], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$c0]
    or b
    rra
    ld a, [de]
    cpl
    inc a
    daa
    jr c, jr_031_6e0e

    jr c, @+$15

    inc e
    rrca

jr_031_6deb:
    inc c
    ld bc, $0403
    ld b, $f8
    ld e, b
    db $f4
    inc a
    db $e4
    inc e
    db $e4
    inc e
    ret z

    jr c, jr_031_6deb

    jr nc, jr_031_6d7d

    ret nz

    jr nz, jr_031_6e60

    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc l
    dec sp
    inc l
    ccf
    ld h, b
    ld a, a
    ret nc

    cp a

jr_031_6e0e:
    ld l, b
    ld [hl], a
    ld h, b
    ldh a, [$c0]
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    call nz, $36c4
    ld a, [$273c]
    ld a, $23
    ld e, $23
    rra
    ld de, $0c0b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    ld b, $0f
    db $fd
    ld [bc], a
    cp $04
    db $fc

jr_031_6e36:
    adc b
    ld hl, sp+$70
    ldh a, [$80]
    add b
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    inc b
    dec bc
    ld c, h
    ld c, a
    xor c
    rst $28
    sub e
    cp $8f
    ld sp, hl
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_031_6e36

    jr nz, @-$2e

    ld [hl-], a
    ld a, [c]
    sub l
    rst $30
    ret


    ld a, a
    pop af
    sbc a

jr_031_6e60:
    adc a
    ldh a, [rVBK]
    ld [hl], b
    ccf
    jr nc, jr_031_6e76

    ld [$0605], sp
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    pop af
    rrca
    ld a, [c]
    ld c, $fc
    inc c

jr_031_6e76:
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    ld b, b
    ld bc, $0301
    inc bc
    dec b
    rlca
    nop
    rrca
    ld c, b
    ld c, a
    xor e
    db $ed
    sub a
    ld a, [$fc8f]
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [rP1], a
    ldh a, [rNR12]
    ld a, [c]
    push de
    or a
    jp hl


    ld e, a
    pop af
    ccf
    add a
    ld hl, sp+$4f
    ld [hl], b
    scf
    jr c, jr_031_6eb6

    ld [$0605], sp
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    pop hl
    rra
    ld a, [c]
    ld c, $ec
    inc e

jr_031_6eb6:
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc l
    dec sp
    inc l
    ccf
    ld h, c
    ld a, a
    jp nc, $6abf

    ld [hl], a
    ld a, $21
    ld h, b
    ldh a, [$f8]
    ld hl, sp+$44
    db $fc
    add d
    cp $02
    cp $00
    cp $04
    db $fc

jr_031_6ede:
    inc e
    db $f4
    ccf
    jr nz, jr_031_6f02

    db $10
    dec bc
    inc c
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr c, jr_031_6ede

    ldh a, [rNR10]
    and b
    ld h, b
    add b
    add b
    nop
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e

jr_031_6f02:
    ld e, h
    ld l, a
    inc l
    scf
    jr jr_031_6f27

    inc e
    rla
    ld a, $37
    ld h, b
    ld a, a
    ld a, [$cebf]
    adc $3a
    or $34
    db $ec
    jr @-$06

    jr c, jr_031_6f02

    ld a, h
    db $ec
    ld b, $fe
    ld e, a
    db $fd
    cp h
    rst $38
    rst $28
    rst $38
    ld d, e
    ld a, h
    rst $10

jr_031_6f27:
    cp b
    ld e, a
    ld a, b
    daa
    inc a
    scf
    dec hl
    inc e
    inc e
    dec a
    rst $38
    rst $30
    rst $38
    jp z, $eb3e

    dec e
    ld a, [$e41e]
    inc a
    db $ec
    call nc, $3838
    ld [hl], e
    ld [hl], e
    ld l, h
    ld e, a
    inc [hl]
    cpl
    jr @+$21

    db $10
    rra
    jr nz, jr_031_6f8b

    ld h, b
    ld a, a
    reti


    cp a

jr_031_6f50:
    adc $ce
    ld [hl], $fa
    inc l
    db $f4
    jr jr_031_6f50

    ld [$04f8], sp
    db $fc
    ld b, $fe
    sbc e
    db $fd
    add [hl]
    rst $38
    add d
    rst $38
    ld b, d
    ld a, a
    call nz, $2cff
    ccf
    ld [hl], $3f
    inc hl
    ccf
    inc e
    inc e
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld b, d
    cp $23
    rst $38
    ld [hl], $fe
    ld l, h
    db $fc
    call nz, $38fc
    jr c, jr_031_6f88

    rlca
    ld [$100f], sp
    rra
    inc hl
    ccf

jr_031_6f88:
    ld h, a
    ld a, l
    adc a

jr_031_6f8b:
    db $fd
    add b
    rst $38
    ld a, h
    ld [hl], a
    nop
    nop
    cp b
    cp b
    ld e, h
    db $e4
    ld l, b
    sbc b
    ld a, b
    ld hl, sp+$3c
    db $f4
    ld [hl-], a
    cp $61
    rst $38
    ld a, $29
    rra
    rra
    rrca
    ld [$080f], sp
    rlca
    inc b
    ld b, $07
    inc c
    dec bc
    rlca
    rlca
    ld h, c
    rst $38
    and c
    rst $38
    sub e
    rst $38

jr_031_6fb6:
    ld c, l
    rst $38
    ld a, d
    cp $24
    db $fc
    jr c, jr_031_6fb6

    ret nz

    ret nz

    nop
    nop
    ld [hl], e
    ld [hl], e

jr_031_6fc4:
    ld e, h
    ld l, a
    inc l
    scf
    jr jr_031_6fe9

    inc e
    rla
    ld a, $37
    ld h, b
    ld a, a
    nop
    nop

jr_031_6fd2:
    adc $ce
    ld a, [hl-]
    or $34
    db $ec
    jr jr_031_6fd2

    jr c, jr_031_6fc4

    ld a, h
    db $ec
    ld b, $fe
    ld a, [$bcbf]
    rst $38
    rst $28
    rst $38
    ld d, e
    ld a, h
    rst $18

jr_031_6fe9:
    cp h
    ld [hl], a
    ld l, d
    rra
    rra
    nop
    nop
    ld e, a
    db $fd
    dec a
    rst $38
    rst $30
    rst $38
    jp z, $eb3e

    dec e
    ld a, [$dc7e]
    xor h
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], e
    ld [hl], e
    ld l, h
    ld e, a
    inc [hl]
    cpl
    jr jr_031_7029

    db $10
    rra
    jr nz, jr_031_704d

    ld h, b
    ld a, a
    nop
    nop

jr_031_7012:
    adc $ce
    ld [hl], $fa
    inc l
    db $f4
    jr jr_031_7012

    ld [$04f8], sp
    db $fc
    ld b, $fe
    reti


    cp a
    add [hl]
    rst $38
    add d
    rst $38
    ld b, d
    ld a, a
    ld b, h

jr_031_7029:
    ld a, a
    inc l
    ccf
    ld e, $1f
    rlca
    rlca
    sbc e
    db $fd
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld b, d
    cp $22
    cp $34
    db $fc
    ld e, b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    inc hl
    ccf
    ld h, a
    ld a, l
    adc a

jr_031_704d:
    db $fd
    add b
    rst $38
    nop
    nop
    nop
    nop
    cp b
    cp b
    ld e, h
    db $e4
    ld l, b
    sbc b
    ld a, b
    ld hl, sp+$3c
    db $f4
    ld [hl-], a
    cp $7c
    ld [hl], a
    ld a, $29
    rra
    rra
    rrca
    add hl, bc
    rrca
    add hl, bc
    rra
    inc e
    jr nc, jr_031_709d

    rra
    rra
    ld h, c
    rst $38
    ld h, c
    rst $38
    and c
    rst $38
    inc hl
    rst $38
    dec h
    rst $38
    jp c, $ccfe

    db $fc
    jr nc, jr_031_70b0

    jr c, jr_031_70ba

    ld [hl], h
    ld c, h
    and $9e
    adc a
    rst $38
    sbc a
    db $fc
    ld [hl], a
    ld l, b
    ld c, e
    ld a, h
    add l
    cp $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    db $e3
    ld h, e
    db $e3
    ld [hl+], a
    rst $18

jr_031_709d:
    inc a
    ld a, a
    db $e4
    rra
    rra
    rla
    jr jr_031_70d4

    jr nc, jr_031_7106

    ld h, b
    add a
    ld hl, sp-$2e
    db $fd
    ld [$77ff], a
    ld a, a

jr_031_70b0:
    ret nz

    ret nz

    ldh a, [$30]
    ldh a, [rNR10]
    add sp, $78
    add h
    db $fc

jr_031_70ba:
    inc c
    db $fc
    inc l
    db $fc
    ld d, h
    db $fc
    add h
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ld d, l
    ld a, a
    ld l, d
    ld a, a
    rra
    rra
    rlca
    rlca
    nop
    nop
    cp l
    jp z, $ed9a

jr_031_70d4:
    ret z

    rst $38
    ld hl, sp-$01
    or $ef
    rst $30
    rst $28
    db $d3
    rst $38
    dec sp
    scf
    ld l, [hl]
    rst $38
    dec sp
    db $fc
    rla
    ld hl, sp+$53
    db $fc
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    add hl, sp
    scf
    ld e, h
    ld l, e
    ld a, h
    ld c, e
    cp c
    rst $08
    ldh a, [$8f]
    ldh [$9f], a
    ret nz

    cp a
    ret nz

    rst $38
    rra
    rst $38
    adc c
    cp $8b
    db $fc

jr_031_7106:
    dec d
    cp $23
    rst $38
    ld bc, $71ff
    rst $38
    pop af
    xor a
    db $fc
    db $fc
    db $fc
    inc c
    db $fc
    inc b
    cp $02
    pop af
    rrca
    xor c
    ld e, a
    ld d, c
    cp a
    ld hl, $e1df
    rst $38
    ld d, e
    ld a, a
    ld d, a
    ld a, a
    ld b, h
    ld a, a
    ld h, b
    ld a, a
    ccf
    ccf
    inc e
    inc de
    rrca
    rrca
    and $1f
    inc b
    rst $38
    inc e
    rst $38
    ld a, $ff
    db $dd
    rst $38
    cp a
    rst $38
    ld b, a
    rst $00
    add b
    add b
    rlca
    rlca
    rra
    jr @+$39

    jr c, jr_031_7186

    ccf
    inc [hl]
    ccf
    ccf
    ccf
    ld a, b
    ld a, a
    ld d, e

jr_031_714f:
    ld a, a
    ret nz

    ret nz

    ldh a, [$30]
    ret c

    jr c, jr_031_714f

    ld hl, sp+$58
    ld hl, sp-$08
    ld hl, sp+$3c
    db $fc
    sub h
    db $fc
    ld [hl], h
    ld l, e
    ccf
    cpl
    ccf
    ld sp, $223f
    rra
    ld e, $02
    inc bc
    inc bc
    ld [bc], a
    ld bc, $5c01
    xor h
    db $fc
    db $fc
    cp $86
    ld [hl], a
    adc c
    swap l
    call $ffb7
    call $3232
    nop
    nop
    add hl, sp
    add hl, sp
    ld c, a
    db $76

jr_031_7186:
    sub a
    ld [$f68b], a
    add e
    db $fc
    ld b, [hl]
    ld a, l
    ld a, [hl-]
    dec sp
    nop
    nop
    sbc h
    sbc h
    and $7a
    bit 6, l
    push bc
    ld a, e
    pop bc
    ccf
    ld [c], a
    ld a, [hl]
    call c, $035c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $0d
    ld a, [bc]
    rrca
    ld [$0c0f], sp
    rlca
    rlca
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    or b
    ld d, b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    nop
    nop
    ld bc, $3b01
    ld a, [hl-]
    ld h, a
    ld e, [hl]
    db $d3
    xor [hl]
    and e
    call c, $fe83
    ld b, l
    ld a, l
    inc e
    inc e
    or d
    xor [hl]
    jp hl


    ld d, a
    pop de
    ld l, a
    pop bc
    ccf
    ld [c], a
    ld a, $7c
    cp h
    ld h, b
    and b
    add hl, sp
    add hl, sp
    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $0f
    inc c
    rrca
    ld [$0c0f], sp
    rlca
    rlca
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    and b
    ld h, b
    or b
    ld d, b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    rrca
    rrca
    add hl, bc
    ld c, $04
    rlca
    ld e, $19
    ccf
    ld a, [hl+]
    ld a, $29
    ld [hl], h
    ld c, a
    ld c, h
    ld a, a
    ldh a, [$f0]
    db $10
    ldh a, [rNR41]
    ldh [$78], a
    sbc b
    db $fc
    ld d, h
    ld a, h
    sub h
    ld l, $f2
    ld [hl-], a
    cp $72
    ld a, a
    ld b, e
    ld a, l
    jp $e77c


    jr c, @+$29

    jr c, @+$31

    db $10
    inc bc
    inc c
    nop
    inc bc
    ld c, [hl]

jr_031_7231:
    cp $c2
    cp [hl]
    jp $e73e


    inc e
    db $e4
    inc e
    db $f4
    ld [$30c0], sp
    nop
    ret nz

    rlca
    rlca
    ld [$040f], sp
    rlca
    ld [$0a0f], sp
    rrca
    rrca
    dec c
    dec e
    ld [de], a
    ccf
    jr nz, jr_031_7231

    ldh [rNR10], a
    ldh a, [rNR41]
    ldh [rNR10], a
    ldh a, [$50]
    ldh a, [$f0]
    or b
    cp b
    ld c, b
    db $fc
    inc b
    ccf
    jr nz, jr_031_72c2

    ld h, b
    ld c, a
    ld [hl], b
    ld [hl], e
    inc a
    inc l
    ccf
    ld h, e
    rra
    nop
    rrca
    nop
    inc bc
    db $fc
    inc b
    ld a, [$f206]
    ld c, $ce
    inc a
    inc [hl]
    db $fc
    add $f8
    nop
    ldh a, [rP1]
    ret nz

    jr c, jr_031_72ba

    ld h, a
    ld e, a
    jr nz, jr_031_72c5

    ld a, b
    ld b, a
    cp l
    db $d3
    sbc c
    rst $20
    add e
    rst $38
    ld a, c
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh a, [$b0]
    add hl, de
    rla
    jr jr_031_72bb

    jr c, @+$29

    jr nc, jr_031_72d7

    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld a, b
    ld b, a
    ld a, $21
    db $fc
    inc c
    cp $82
    cp [hl]
    jp nz, $f987

    ld h, e
    rst $38

jr_031_72ba:
    dec e

jr_031_72bb:
    rst $38
    ld bc, $aeff
    ld d, d
    nop
    nop

jr_031_72c2:
    rlca
    rlca
    add hl, bc

jr_031_72c5:
    ld c, $04
    rlca
    ld e, $19
    cp a
    ld a, [hl+]
    ld a, $29
    db $f4
    ld c, a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [rNR41]

jr_031_72d7:
    ldh [$78], a
    sbc b
    db $fd
    ld d, h
    ld a, h
    sub h
    cpl
    ld a, [c]
    ld c, h
    ld a, a
    ld a, [c]
    ld a, a
    jp Jump_031_637d


    inc a
    ld h, a
    jr c, jr_031_72fa

    db $10
    inc bc
    inc c
    nop
    inc bc
    ld [hl-], a
    cp $4f
    cp $c3
    cp [hl]
    rst $00
    inc a
    and $1c

jr_031_72fa:
    ldh a, [$08]
    ret nz

    jr nc, jr_031_72ff

jr_031_72ff:
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$040f], sp
    rlca
    ld [$0a0f], sp
    rrca
    rrca
    dec c
    dec e
    ld [de], a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [rNR41]
    ldh [rNR10], a
    ldh a, [$50]
    ldh a, [$f0]
    or b
    cp b
    ld c, b
    cp a
    jr nz, jr_031_7362

    jr nz, jr_031_7384

    ld h, b
    rst $08
    ld [hl], b
    di
    inc a
    inc l
    ccf
    inc sp
    rrca
    add b
    inc bc
    db $fd
    inc b
    db $fc
    inc b
    ld a, [$f306]
    ld c, $cf
    inc a
    inc [hl]
    db $fc
    call z, $01f0
    ret nz

    nop
    nop
    jr c, jr_031_737c

    ld h, a
    ld e, a
    jr nz, jr_031_7387

    ld a, b
    ld b, a
    cp l
    db $d3
    sbc c
    rst $20
    add e
    rst $38
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
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld a, c
    ld a, a

jr_031_7362:
    add hl, de
    rla
    jr jr_031_737d

    jr c, @+$29

    jr nc, jr_031_7399

    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    add hl, sp
    ld h, $f0
    or b
    db $fc
    inc c
    cp $82
    cp [hl]
    jp nz, $f987

    ld h, e
    rst $38

jr_031_737c:
    dec e

jr_031_737d:
    rst $38
    ld e, d
    and [hl]
    nop
    nop
    nop
    nop

jr_031_7384:
    inc bc
    inc bc
    inc c

jr_031_7387:
    rrca

jr_031_7388:
    ld de, $111e
    ld e, $20
    ccf
    jr nz, jr_031_73cf

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_031_7388

    adc b

jr_031_7399:
    ld a, b
    adc b
    ld a, b
    inc b
    db $fc
    inc b
    db $fc
    jr c, jr_031_73c9

    ccf
    jr nz, jr_031_73c4

    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc e
    db $e4
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
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

jr_031_73c4:
    nop
    nop
    nop
    nop
    nop

jr_031_73c9:
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_73cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld e, a
    ld h, c
    ld d, c
    ld l, [hl]
    ld e, [hl]
    ld h, c
    ld d, l
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    db $fd
    jp $bb45


    ld b, l
    cp e
    ld b, l
    cp e
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld d, c
    ld l, [hl]
    ld e, a
    ld h, b
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, l
    add e
    ld d, l
    xor e
    ld a, l
    add e
    ld a, l
    add e
    ld bc, $ffff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_7680:
    nop
    nop
    ccf
    ccf
    ccf
    jr nz, @+$32

    cpl
    ccf
    jr nz, @+$34

    dec l
    ccf
    jr nz, jr_031_76c1

    dec l
    nop
    nop
    ld hl, sp-$08
    ld hl, sp+$08
    jr jr_031_7680

    ld hl, sp+$08
    sbc b
    ld l, b
    ld hl, sp+$08
    sbc b
    ld l, b
    ccf
    jr nz, jr_031_76d4

    ld l, $3f
    jr nz, jr_031_76ca

    inc a
    ld a, [hl-]
    dec h
    dec de
    inc d
    rrca
    rrca
    nop
    nop
    ld hl, sp+$08
    ld e, b
    xor b
    ld hl, sp+$08
    ld hl, sp+$08
    sbc b
    ld l, b
    ld hl, sp+$08
    ld hl, sp-$08
    nop
    nop
    nop

jr_031_76c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_76ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_76d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_7734:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, e
    ld a, a
    db $dd
    cp $b8
    rst $28
    cp e
    db $ec
    ei
    db $fc
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add $fe
    cp e
    ld a, a
    dec e
    rst $30
    db $dd
    scf
    rst $18
    ccf
    call z, $ffff
    rst $38
    ld a, a
    ld a, a
    inc l
    inc a
    jr c, jr_031_7862

    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    rst $38
    rst $38
    rst $38
    cp $fe
    inc [hl]
    inc a
    inc e
    inc e
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

jr_031_7844:
    db $10
    rra
    jr nz, jr_031_7887

    ld [hl+], a
    ccf
    daa
    dec a
    ld c, a
    ld a, b
    sbc a
    ld [c], a
    ret nz

    ret nz

    jr nc, jr_031_7844

    ld [$04f8], sp
    db $fc
    ld b, h
    db $fc
    db $e4
    cp h
    ld a, [c]
    ld e, $f9
    ld b, a
    adc a
    ld a, [c]

jr_031_7862:
    ld l, [hl]
    ld a, c
    rra
    rla
    rra
    inc d
    rra
    dec de
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    pop af
    ld c, a
    db $76
    sbc [hl]
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$28
    ldh a, [$f0]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    rlca
    rrca
    rrca
    scf
    ld a, a
    ld a, a

jr_031_7887:
    ld e, h
    sbc $b5
    or e
    xor $f7
    db $eb
    ld [hl], h
    rst $28
    ret nz

    ret nz

    ld [hl], b
    or b
    sbc b
    db $fc
    db $fc
    ld a, h
    ld a, d
    sbc [hl]
    ld e, $ef
    xor e
    rst $18
    rlca
    rst $38
    ld [hl], c
    ld a, [hl]
    sub e
    db $fd
    xor c
    rst $18
    rst $20
    cp a
    ld b, a
    ld a, a
    ld l, a
    ld a, a
    ccf
    ccf
    ld b, $0e
    adc [hl]
    rst $38
    ld d, $fe
    ld a, $ff
    rst $38
    rst $30
    jp c, $a6ef

    cp $fc
    db $fc
    ld [hl], b
    ld a, b
    rra
    rra
    ccf
    jr nz, jr_031_7944

    ld b, b
    cp d
    push bc
    push de
    xor d
    ld [$d195], a
    xor [hl]
    xor b
    rst $10
    ld hl, sp-$08
    db $e4
    inc e
    ld d, d
    xor [hl]
    and [hl]
    ld e, [hl]
    ld b, e
    cp a
    dec b
    rst $38
    dec hl
    rst $18
    dec b
    rst $38
    jp nc, $c0ad

    rst $38
    sub d
    rst $28
    ret nz

    rst $38
    ld [$75ff], a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    add e
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld a, [hl]
    cp $fe
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    inc c
    ld a, [de]
    dec d
    rra
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$30]
    ld e, b
    xor b
    ld hl, sp-$18
    rra
    db $10
    ld a, [de]
    dec d
    rra
    db $10
    db $10
    rra
    ld d, $1f
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    ld e, b
    xor b
    ld hl, sp+$08
    ld [$68f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_7944:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    ld a, [bc]
    dec c
    rra
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ld d, b
    or b
    ld hl, sp-$28
    rla
    jr @+$14

    dec e
    rla
    jr jr_031_797f

    rra
    rra
    jr jr_031_7972

    rlca
    nop
    nop
    nop
    nop

jr_031_7970:
    add sp, $18

jr_031_7972:
    ld c, b
    cp b
    add sp, $18
    jr jr_031_7970

    ld hl, sp+$18
    ldh [$e0], a
    nop
    nop
    nop

jr_031_797f:
    nop
    rra
    dec e
    dec sp
    ld [hl-], a
    ld l, [hl]
    ld c, a
    ld e, l
    ld l, c
    ld [hl], $29
    ld e, l
    ld h, b
    xor a
    ret nc

    cp c
    ret nz

    ld hl, sp-$48
    ld l, h
    ld c, h
    db $76
    ld a, [c]
    jp c, Jump_031_6c96

    sub h
    ld a, [$c906]
    inc sp
    ld c, l
    or e
    sbc c
    ldh [rBGP], a
    ld a, b
    jr nc, jr_031_79e5

    ld b, $0f
    ld bc, $1d03
    inc bc
    ld a, $07
    dec e
    inc bc
    ld sp, hl
    rlca
    ld [c], a
    ld e, $0c
    db $fc
    ldh [$f0], a
    ret nz

    ret nz

    ld hl, sp-$40
    db $fc
    ldh [$b8], a
    ret nz

    nop
    nop
    rrca
    rrca
    ld a, b
    ld a, a
    ld e, a
    ld d, a
    ld e, l
    ld d, d
    jr nc, @+$41

    ld [$060f], sp
    rlca
    nop
    nop
    ldh a, [$f0]
    ld e, $fe
    ld a, [$0aea]
    ld a, [$fc0c]
    db $10
    ldh a, [$60]
    ldh [rSB], a
    ld bc, $0707
    rlca

jr_031_79e5:
    rlca
    ld c, $0d

jr_031_79e8:
    inc c
    rrca

jr_031_79ea:
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [$e0], a
    jr nc, jr_031_79e8

    jr nc, jr_031_79ea

    ldh [$e0], a
    nop
    nop

jr_031_79fe:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_031_7a06:
    ccf
    dec sp
    dec hl
    inc l
    jr jr_031_7a2b

    inc b
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    ret nz

    ret nz

jr_031_7a14:
    jr nc, jr_031_7a06

    db $fc
    call c, $f414
    jr jr_031_7a14

    jr nz, jr_031_79fe

    ld b, b
    ret nz

    ld bc, $0701
    rlca

jr_031_7a24:
    rlca
    rlca
    ld c, $0d

jr_031_7a28:
    inc c
    rrca

jr_031_7a2a:
    rlca

jr_031_7a2b:
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [$e0], a
    jr nc, jr_031_7a28

    jr nc, jr_031_7a2a

    ldh [$e0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    dec bc
    inc de
    inc e
    ld e, $13
    dec h
    ccf
    cpl
    ld a, [hl-]
    rra
    jr @+$01

    ld [c], a
    ldh [$e0], a
    jr nc, jr_031_7a24

    ret z

    jr c, jr_031_7acf

    ret z

    and h
    db $fc
    db $f4
    ld e, h
    ld hl, sp+$18
    rst $38
    ld b, a
    sbc a
    ld a, [c]
    ld a, a
    ld a, b
    dec de
    rra
    ccf
    dec h
    ccf
    dec h
    ld e, $1f
    add hl, bc
    rrca
    ld b, $06
    ld sp, hl
    ld c, a
    cp $1e
    ret c

    ld hl, sp-$04
    and h
    db $fc
    and h
    ld a, b
    ld hl, sp-$70
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    ld [$1817], sp
    inc de
    inc e
    jr z, jr_031_7ac1

    cpl
    jr c, jr_031_7aa4

    rra
    add sp, -$01
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    ret z

    jr c, jr_031_7aad

    db $ec
    db $f4
    inc e
    add sp, -$08

jr_031_7a9e:
    rla
    rst $38
    add [hl]
    rst $38
    ld h, e
    ld a, a

jr_031_7aa4:
    rra
    inc e
    inc [hl]
    cpl
    ccf
    inc l
    rra
    rra
    add hl, bc

jr_031_7aad:
    rrca
    ld b, $06
    ld h, c
    rst $38
    add $fe
    ld hl, sp+$38
    inc l
    db $f4
    db $fc
    inc [hl]
    ld hl, sp-$08
    sub b
    ldh a, [$60]
    ld h, b
    rlca

jr_031_7ac1:
    rlca
    add hl, bc
    ld c, $16
    add hl, de
    daa
    ld a, $2d
    dec sp
    rra
    ld [de], a
    rra
    inc d
    rra

jr_031_7acf:
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_031_7a9e

    ret z

    jr c, @-$06

    ret z

    add h
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    rra
    ld de, $090f
    rlca
    rlca

jr_031_7ae6:
    dec b
    rlca
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    rrca
    rlca
    rlca
    inc b
    db $fc
    add h
    db $fc
    ld hl, sp-$08
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
    inc c
    dec bc
    inc de
    inc e
    ld e, $13
    dec l
    ccf
    cpl
    ld a, [hl-]
    rra
    jr jr_031_7b11

jr_031_7b11:
    nop
    ldh [$e0], a
    jr nc, jr_031_7ae6

    ret z

    jr c, jr_031_7b91

    ret z

    or h
    db $fc
    db $f4
    ld e, h
    ld hl, sp+$18
    rst $38
    ld [c], a
    sbc a
    ld a, [c]
    ld a, a
    ld a, b
    dec sp
    cpl
    rra
    dec de
    rrca
    rrca
    inc b
    rlca
    inc bc
    inc bc
    rst $38
    ld b, a
    ld sp, hl
    ld c, a
    cp $1e
    or b
    ldh a, [$f8]
    ld c, b
    ld hl, sp+$48
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$1817], sp
    inc de
    inc e
    jr z, jr_031_7b83

    cpl
    jr c, jr_031_7b66

    rra
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    ret z

    jr c, jr_031_7b6f

    db $ec
    db $f4
    inc e
    add sp, -$08

jr_031_7b60:
    add sp, -$01

jr_031_7b62:
    add [hl]
    rst $38
    ld h, e
    ld a, a

jr_031_7b66:
    rra
    inc e
    inc c
    rrca
    rrca
    inc c
    dec b
    rlca
    inc bc

jr_031_7b6f:
    inc bc
    rla
    rst $38
    ld h, c
    rst $38
    sbc $fe
    ld hl, sp+$28
    jr c, jr_031_7b62

    ld hl, sp+$38
    ldh [$e0], a
    add b
    add b
    nop
    nop
    rlca

jr_031_7b83:
    rlca
    add hl, bc
    ld c, $16
    add hl, de
    daa
    ld a, $2d
    dec sp
    rra
    ld [de], a
    rra
    inc d
    nop

jr_031_7b91:
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_031_7b60

    ret z

    jr c, @-$06

    ret z

    add h
    db $fc
    db $e4
    db $fc
    rra
    inc d
    rra
    ld de, $090f
    rlca
    rlca
    inc e
    rra
    daa
    ld a, $13
    rra
    ld c, $0e
    ld hl, sp-$68
    inc b
    db $fc
    add h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$68
    db $f4
    sbc h
    ld h, h
    db $fc
    jr jr_031_7bd8

    rlca
    rlca
    inc c
    dec bc
    inc de
    inc e
    ld e, $13
    dec h
    ccf
    cpl
    ld a, [hl-]
    rra
    jr @+$01

    ld [c], a
    ldh [$e0], a
    jr nc, @-$2e

    ret z

    jr c, jr_031_7c4f

    ret z

jr_031_7bd8:
    and h
    db $fc
    db $f4
    ld e, h
    ld hl, sp+$18
    rst $38
    ld b, a
    sbc a
    ld a, [c]
    ld a, a
    ld a, b
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    inc sp
    ld a, $0e
    rrca
    inc bc
    ld [bc], a
    ld bc, $f901
    ld c, a
    cp $1e
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
    rrca
    ld [$1817], sp
    inc de
    inc e
    jr z, jr_031_7c41

    cpl
    jr c, jr_031_7c24

    rra
    add sp, -$01
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    ret z

    jr c, jr_031_7c2d

    db $ec
    db $f4
    inc e
    add sp, -$08

jr_031_7c1e:
    rla
    rst $38
    add [hl]
    rst $38
    ld h, e
    ld a, a

jr_031_7c24:
    ld a, a
    ld e, h
    ld [hl], h
    ld a, a
    ccf
    inc a
    dec de
    rla
    rrca

jr_031_7c2d:
    ld c, $01
    ld bc, $ff61
    add $fe
    cp $3a
    ld l, $fe
    db $fc
    inc a
    ret c

    add sp, -$10
    ld [hl], b
    add b
    add b
    rlca

jr_031_7c41:
    rlca
    add hl, bc
    ld c, $16
    add hl, de
    daa
    ld a, $2d
    dec sp
    rra
    ld [de], a
    rra
    inc d
    rra

jr_031_7c4f:
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_031_7c1e

    ret z

    jr c, @-$06

    ret z

    add h
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    rra
    ld de, $0d0f
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
    jr c, jr_031_7ca8

    inc b
    db $fc
    add h
    db $fc
    ld hl, sp-$08
    cp $e2
    ld e, a
    db $fd
    rst $38
    db $dd

jr_031_7c7c:
    ld a, $22
    inc e
    inc e
    inc bc
    inc bc
    ld b, $05
    add hl, bc
    ld c, $0f
    add hl, bc
    ld [de], a
    rra
    rla
    dec e
    rrca
    inc c
    ld a, a
    ld [hl], c
    ldh a, [$f0]
    jr jr_031_7c7c

    db $e4
    inc e
    inc a
    db $e4
    jp nc, $fafe

    ld l, $fc
    inc c
    cp $22
    ld c, a
    ld a, c
    ccf
    inc a
    ld a, a
    ld c, a
    ld a, a
    ld c, a

jr_031_7ca8:
    ccf
    ld a, $1b
    ld d, $0e
    rrca
    ld bc, $fd01
    daa
    rst $38
    rrca
    cp $f2
    cp $f2
    call z, $f87c
    ld a, b
    ld b, b
    ret nz

    add b
    add b
    inc bc
    inc bc
    rlca
    inc b
    dec bc
    inc c
    add hl, bc
    ld c, $14
    dec de
    rla
    inc e
    dec bc
    rrca
    ld [hl], h
    ld a, a
    ldh a, [$f0]
    ld hl, sp+$08
    db $f4
    inc c
    db $e4
    inc e
    ld a, [bc]
    or $fa
    ld c, $f4
    db $fc
    ld c, $fe
    ld b, e
    ld a, a
    ld sp, $1f3f
    ld e, $1e
    rra
    dec de
    ld d, $0f
    rrca
    ld [bc], a
    inc bc
    ld bc, $3101
    rst $38
    db $e3
    rst $38
    rst $38
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
    inc de
    inc e
    inc l
    inc sp
    ld c, a
    ld a, h
    ld e, e
    ld [hl], a
    ccf
    dec h
    ccf
    add hl, hl
    ccf
    add hl, hl
    ret nz

    ret nz

    ldh [rNR41], a
    ld [hl], b
    sub b
    sub b
    ld [hl], b
    ldh a, [$90]
    ld [$c8f8], sp
    ld hl, sp-$10
    jr nc, @+$40

    inc hl
    rra
    dec e
    ccf
    inc sp
    ld a, a
    ld d, e
    rst $38
    cp a
    cp $bb
    ld [hl], l
    ld c, l
    jr c, jr_031_7d68

    ld [$08f8], sp
    ld hl, sp-$0c
    db $f4
    cp $e2
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

jr_031_7d68:
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
    jr nc, jr_031_7de9

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
    jr jr_031_7de6

    db $10
    ccf
    jr nz, jr_031_7e0a

    jr nz, jr_031_7e0c

    jr nz, jr_031_7e0e

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
    jr nz, jr_031_7e02

    inc e
    ld e, $11

jr_031_7de6:
    rrca
    rrca
    rlca

jr_031_7de9:
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
    ldh a, [rSB]
    dec c

jr_031_7e02:
    inc bc
    ld a, $06
    ld a, l
    rrca
    ld a, l
    rra
    dec [hl]

jr_031_7e0a:
    rrca
    add hl, de

jr_031_7e0c:
    ld [hl], $3d

jr_031_7e0e:
    ld [hl], a
    ld e, [hl]
    add b
    or b
    ret nz

    ld a, h

jr_031_7e14:
    jr nz, jr_031_7e14

    or b
    cp $a8
    db $fc
    sub b
    ld hl, sp+$2c
    db $fc
    ld l, [hl]
    ld a, [$bdf7]
    ld [$eaaf], a
    xor a
    ld a, c
    ld e, a
    ld a, c
    ld e, a
    ld [$52ae], a
    ld e, [hl]
    inc c
    inc e
    rst $28
    cp l
    ld c, a
    db $fd
    ld d, a
    push af
    sbc [hl]
    ld a, [$fa9e]
    ld d, a
    ld [hl], l
    ld c, d
    ld a, d
    jr nc, @+$3a

    ld bc, $1b01
    ld a, [de]
    rra
    ld d, $3f
    jr c, jr_031_7e98

    ld a, [hl]
    dec [hl]
    ccf
    ld b, e
    ld a, a
    scf
    dec a
    add b
    add b
    ret c

    ld e, b
    ld hl, sp+$68
    db $fc
    inc e
    ld a, [c]
    ld a, [hl]
    xor h
    db $fc
    jp nz, $ecfe

    cp h
    scf
    inc a
    ccf
    dec l
    ccf
    daa
    ccf
    dec sp
    ccf
    ccf
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    ld d, d
    inc a
    inc a
    db $ec
    inc a
    db $fc
    or h
    db $fc
    db $e4
    db $fc
    call c, $fcfc
    ld a, [hl]
    ld h, d
    ld a, [hl]
    ld c, d
    inc a
    inc a
    inc bc
    inc bc
    rlca
    dec b
    rrca
    rrca
    rra
    rla
    ccf
    cpl
    ld a, e
    ld c, a
    ld a, a
    ld e, l
    ld a, a
    ld d, e
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$f0]
    ld hl, sp-$18

jr_031_7e98:
    db $fc
    db $f4
    sbc $f2
    cp $ba
    cp $ca
    ccf
    jr z, jr_031_7ee2

    dec a
    ld [hl], a
    ld a, l
    ld [hl], e
    ld a, a
    inc hl
    ccf
    ld a, [hl-]
    ld a, $7e
    ld d, [hl]
    ld a, h
    ld a, h
    db $fc
    inc d
    db $fc
    cp h
    xor $be
    adc $fe
    call nz, Call_031_5efc
    ld a, [hl]
    ld a, [hl]
    ld l, d
    ld a, $3e
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

jr_031_7ee2:
    ld e, $19
    ccf
    daa
    dec a
    ld h, $18
    rra
    rrca
    rrca

Call_031_7eec:
    rla
    rra
    ld e, $1e
    db $fc
    ld c, h

jr_031_7ef2:
    ld a, b
    sbc b
    db $fc
    db $e4
    cp h
    ld h, h
    jr jr_031_7ef2

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
    jr c, jr_031_7f57

    jr jr_031_7f49

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

jr_031_7f49:
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

jr_031_7f57:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
