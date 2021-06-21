; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

    ld h, c
    add hl, de
    rlca
    inc bc
    jr jr_04f_401e

    jr nc, jr_04f_4028

    ld a, h
    ld a, h
    ld b, b
    ld b, b
    add $80
    rst $38
    adc [hl]
    ldh a, [$b0]
    ld h, b
    ld b, b
    db $e3
    add b
    rst $38
    add c
    ld a, [hl]
    ld b, [hl]
    jr c, @+$3a

    ld l, e
    inc hl

jr_04f_401e:
    ld bc, $0343
    ld [bc], a
    rrca
    rlca
    inc b
    ld b, $04
    rlca

jr_04f_4028:
    inc b
    ld c, $08
    dec c
    ld [$080e], sp
    rrca
    ld [$080e], sp
    ld b, e
    rlca
    inc b
    ld b, e
    inc bc
    ld [bc], a
    ret


    sbc [hl]
    ld [bc], a
    inc bc
    inc bc
    inc b
    add e
    and e
    ld [bc], a
    dec b
    inc bc
    inc bc
    add l
    sub e
    ldh [$2c], a
    ret nz

    ret nz

    jr nc, @+$32

    inc c
    inc c
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $000b
    dec b
    nop
    dec bc
    nop
    push de
    nop
    ei
    nop
    rst $38
    ldh [$1f], a
    jr jr_04f_4071

    inc c
    rrca
    ld [$101c], sp
    jr jr_04f_4079

    jr nc, jr_04f_408b

    ld h, b
    ld b, b
    ret nz

    add b
    ret nz

    nop

jr_04f_4071:
    add b
    nop
    ld bc, $8201
    ld [hl+], a
    ld [bc], a
    dec b

jr_04f_4079:
    add d
    inc bc
    ld bc, $8101
    ld bc, $0261
    add b
    nop
    ld b, b
    add h
    add e
    rrca
    xor b
    nop
    push de
    nop

jr_04f_408b:
    ld [$fd00], a
    nop

Call_04f_408f:
    rst $38
    add b
    ld a, a
    ld h, b
    rra
    dec de
    db $fc
    db $fc
    ld h, c
    dec bc
    jr jr_04f_40b3

    pop hl
    pop hl
    add $06
    db $fc
    ld [$c8ff], sp
    ccf
    ccf
    add a
    di
    inc c
    ld c, $0c
    dec d
    db $10
    cp d
    and b
    db $fd
    ldh [$fe], a
    ld b, b
    db $fd

jr_04f_40b3:
    jr nz, jr_04f_40b3

    ld b, e
    jr nz, @+$01

    jr jr_04f_40ba

jr_04f_40ba:
    rst $38
    rrca
    ldh a, [$30]
    ld b, c
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld c, b
    ld c, b
    ld d, [hl]
    ld d, [hl]
    dec a
    dec l
    ccf
    cpl
    rst $18
    sbc $07
    dec b
    ld h, d
    ld h, d
    and c
    and c
    inc hl
    jr nz, jr_04f_40f0

    ldh a, [$30]
    adc $fe
    add a
    rst $38
    adc h
    rst $28
    adc b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld [hl], c
    ccf
    xor a
    ld c, $5f
    nop
    xor a
    nop
    rst $10
    add b
    dec bc
    nop
    inc bc

jr_04f_40f0:
    nop
    ld b, e
    rlca
    nop
    rlca
    adc a
    add b
    rra
    ld bc, $067e
    ld hl, sp+$38
    push bc
    nop
    ld h, e
    rlca
    ld hl, sp-$08
    ld b, $06
    dec e
    dec e
    jr nz, jr_04f_4129

    ld h, e
    ld bc, $0f9f
    add e
    nop
    sbc b
    inc bc
    di
    db $10
    rst $28
    db $eb
    ld [hl+], a
    inc l
    ld d, $24
    db $fc
    db $e4
    ccf
    inc hl
    adc a
    add b
    ld d, a
    ld b, b
    cpl
    nop
    ld d, a
    ld bc, $00af
    rst $38
    add e

jr_04f_4129:
    db $fd
    push bc
    rst $38
    rst $20
    rra
    dec de
    add e
    nop
    ld e, h
    ld de, $0404
    ld a, [bc]
    ld a, [bc]
    sub d
    sub d
    ld h, [hl]
    ld [c], a
    inc a
    db $e4
    ld a, a
    rst $18
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$46

    rst $38
    nop
    ld b, $40
    rst $38
    ld hl, $26fe
    ld hl, sp+$38
    and e
    nop
    ld b, [hl]
    ld h, e
    or e
    nop
    inc e
    ld bc, $c0c0
    adc l
    sbc l
    rrca
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$08
    ld hl, sp-$78
    db $fc
    add h
    ld b, h
    db $fc
    inc b
    nop
    add h
    ld b, e
    ld a, h
    ld b, h
    ld b, e
    ld a, b
    ld c, b
    rlca
    ld hl, sp-$78
    db $fc
    inc c
    rst $38
    inc de
    rst $38
    db $10
    ld b, h
    rst $38
    jr nz, jr_04f_418d

    ld b, b
    rst $38
    ret nz

    ccf
    jr nc, @+$11

    ld c, $01

jr_04f_418d:
    ld bc, $4dec
    ld [de], a
    add b
    add b
    ld hl, sp+$78
    ld d, [hl]
    ld b, $ab
    ld bc, $39fd
    rst $20
    dec b
    cp $02
    db $fc
    inc c
    ldh a, [$f0]
    nop
    or d
    ld bc, $007a
    nop
    jr z, jr_04f_41ad

    inc bc
    nop

jr_04f_41ad:
    ld [bc], a
    nop
    ld [bc], a
    call nz, $2b00
    daa
    ld bc, $0201
    inc bc
    inc hl
    ld [bc], a
    ld b, h
    inc b
    ld b, $83
    nop
    jr nc, jr_04f_41c2

    rrca

jr_04f_41c2:
    ld [$0089], sp
    ld [hl], $08
    ld b, $1e
    ld a, $69
    ret nz

    sub b
    db $10
    stop
    ld [hl+], a
    ld hl, $0003
    ld b, d
    ld [bc], a
    ld b, d
    and l
    ld bc, $022a
    ld bc, $0200
    add h
    nop
    ld l, l
    ld de, $0007
    rrca
    nop
    rla
    ld bc, $020e
    ld e, $02
    inc l
    inc b
    inc e
    inc b
    dec a
    dec b
    ld e, $02
    add e
    ld bc, $10a0
    ldh a, [$30]
    sbc b
    adc b
    ld [$1c04], sp
    ld b, $3e
    dec b
    ccf
    dec b
    ld a, a
    add hl, bc
    ld a, [hl]
    add hl, bc
    cp $43
    ld [de], a
    db $fc
    inc c
    inc h
    ld hl, sp+$48
    ld [hl], b
    sub b
    pop hl
    ld hl, $c606
    ld [$1608], sp
    ld d, $89
    nop
    and $65
    ld bc, $1010
    inc hl
    jr z, @-$7b

    ld bc, $0f3c
    ld [bc], a
    ld [bc], a
    add e
    inc bc
    ld [bc], a
    ld [bc], a
    add h
    inc b
    dec b
    inc b
    add a
    inc b
    ld b, e
    ld [bc], a
    add c
    ld bc, $008d
    ldh [rP1], a
    ld [bc], a
    add h
    nop
    ld b, a
    dec d
    add b
    add b
    db $fc
    ldh [$fe], a
    ld a, [hl]
    rst $08
    ld a, [hl]
    add e
    rst $38
    dec b
    sbc a
    ld [$90bf], sp
    rst $38
    ld b, b
    ld a, a
    and c
    ccf
    ld c, l
    ld e, $85
    ld bc, $870a
    ld bc, $6350
    dec bc
    ret z

    ld [$f4f4], sp
    ld l, a
    db $e4
    ld e, a
    rst $00
    rst $38
    call nz, $38ff
    add h
    ld bc, $0264
    nop
    rst $38
    ld b, b
    add h
    rst $08
    inc b
    ld d, b
    ccf
    jr nz, jr_04f_42b7

    add hl, hl
    add l
    rst $38
    adc e
    ld bc, $0340
    db $fd
    add b
    rst $38
    call nz, $09ff
    ld [hl], b
    ld [hl], b
    adc $8e
    ld [hl], e
    ld [hl], c
    cpl
    ld a, $11
    rra
    ld b, e
    ld [$060f], sp
    dec b
    rlca
    ld b, $07
    dec b
    rlca
    ld [bc], a
    ld [hl+], a
    inc bc
    add e
    add e
    dec l
    ld bc, $137d
    ld bc, $0701
    ld b, $09
    ld [$1013], sp
    inc hl
    jr nz, jr_04f_42fc

    ld b, b
    ld e, a
    ld b, a
    cp b
    sbc b
    ldh [$a0], a
    ret nz

    ret nz

    cp c

jr_04f_42b7:
    xor e
    rla
    ld h, b
    ld h, b
    ret nc

    sub b
    ld [hl], b
    ret nc

    ld a, $ec
    add hl, sp
    add sp, -$62
    ld a, [c]
    rra
    or $ad
    ld sp, hl
    ld e, [hl]
    ld a, [$faae]
    ld e, h
    db $f4
    cp h
    db $f4
    add l
    add e
    ld bc, $f49c
    ld b, e
    ld c, $fa
    add hl, bc
    rst $08
    ei
    scf
    inc a
    dec bc
    ld c, $05
    rlca
    inc bc
    inc bc
    adc e
    ei
    dec bc
    ld bc, $0301
    ld [bc], a
    rrca
    inc c
    ld a, a
    ld [hl], c
    rst $38
    add c
    cp $02
    ld b, e
    db $fc
    inc b
    ld b, h
    ld hl, sp+$08
    inc b
    adc b
    ld a, b

jr_04f_42fc:
    ld l, b
    jr jr_04f_4317

    db $ec
    cpl
    dec c
    jr nc, jr_04f_4304

jr_04f_4304:
    jr z, jr_04f_4326

    inc h
    jr nz, jr_04f_433d

    inc h
    ld a, [hl-]
    ld [hl+], a
    ld a, $22
    rra
    ld de, $1f43
    db $10
    ldh [rNR42], a
    sbc a
    add h

jr_04f_4317:
    di
    ld h, [hl]
    pop af
    ld hl, $80ff
    ld a, l
    jp $e4bc


    ld sp, hl
    jp hl


    ld a, a
    ld l, a
    ld a, a

jr_04f_4326:
    ld b, b
    rst $28
    add b
    rst $20
    ld b, b
    db $e3
    ld b, b
    and c
    and b
    ld [de], a
    db $10
    dec e
    jr jr_04f_4342

    inc c
    inc bc
    inc bc
    db $ec
    ld b, c
    ld bc, $0001
    ld b, e

jr_04f_433d:
    inc bc
    ld [bc], a
    inc bc
    rlca
    inc b

jr_04f_4342:
    rst $38
    ld hl, sp+$44
    rst $38
    nop
    ld c, $06
    ld sp, hl
    inc c
    ld [hl], c
    ldh [$1f], a
    db $10
    rrca
    ld [$0407], sp
    sub e
    sub d
    rst $38
    ld a, $48
    rst $38
    nop
    ld b, $01
    ld e, a
    ld bc, $06ae
    ld hl, sp-$08
    db $ec
    dec a
    inc b
    ld h, b
    nop
    and b
    jr nz, jr_04f_43ca

    ld b, h
    jr nz, @-$1e

    ld bc, $40c0
    ld b, e
    pop bc
    ld b, c
    dec c
    jp $8342


    add d
    add a
    add l
    sbc [hl]
    sbc e
    ei
    rst $20

Jump_04f_437e:
    db $fc
    inc e
    ldh a, [rSVBK]
    inc hl
    add b
    and l
    ld bc, $0c72
    ldh [$a0], a
    ldh a, [$90]
    ld a, b
    ld c, b
    ld a, h
    ld b, h
    ld a, $22
    dec a
    ld hl, $461e
    db $10
    rra
    nop
    rrca
    ld b, e
    ld [$040b], sp
    add hl, bc
    ld c, $0a
    inc c
    inc c
    sbc e
    nop
    jr nc, jr_04f_43b4

    rst $28
    add hl, hl
    sbc [hl]
    rla
    ld a, h
    ld b, a
    cp b
    cpl
    ld sp, hl
    adc a
    ldh a, [$9f]
    ld [hl], l

jr_04f_43b4:
    ld e, a
    and e
    nop
    add [hl]
    rlca
    ld a, e
    ld e, a
    ld [hl], a
    ld e, a
    rst $20
    cp a
    rst $28
    cp a
    ld b, e
    rst $08
    ld a, a

Jump_04f_43c4:
    add hl, bc
    adc a
    rst $38
    add a
    rst $38
    inc bc

jr_04f_43ca:
    rst $38
    ld a, c
    rst $38
    add [hl]
    add [hl]
    ld a, c
    db $10
    ret nz

    ret nz

    jr nz, jr_04f_43f5

    db $10
    db $10
    adc b
    ld [$0cec], sp
    db $f4
    inc b
    cp $82
    ld a, [hl]
    ld h, d
    rra
    or h
    nop
    ld d, a
    inc d
    rlca
    rlca
    ccf
    add hl, sp
    cp $c6
    db $fc
    inc a
    call nz, $08fc
    ld hl, sp+$18
    ld hl, sp+$30

jr_04f_43f5:
    ldh a, [$50]
    ldh a, [$a0]
    ldh [rLCDC], a
    ld h, $c0
    and e
    nop
    ld h, $ec
    ld d, c
    ld bc, $0707
    ld b, e
    ld [$0b0f], sp
    db $10
    rra
    jr nz, jr_04f_444c

    ldh a, [rIE]
    rst $38
    adc a
    ld a, a
    ld h, b
    rrca
    rrca
    xor [hl]
    nop
    db $ec
    ld de, $ee1c
    ld a, [$f90f]
    rra

jr_04f_441f:
    ldh a, [$3f]
    rst $20
    ld a, [$f9cb]
    adc c
    add sp, $28
    cp b
    cp b
    ld h, b
    call nz, $dc01
    add a
    ld bc, $45e0
    ret nz

    ld b, b
    add hl, bc
    add e
    add e
    add a
    add h
    sbc a
    sbc b
    rst $38
    db $e3
    db $fd
    dec e
    add a
    ld bc, $8ef8
    ld [bc], a

Call_04f_4444:
    ld [hl], d
    ld c, $e0
    sbc h
    db $fc
    jp nz, $e27e

jr_04f_444c:
    ld a, $f1
    sbc a
    ld hl, sp-$31
    ccf
    daa
    rra
    jr jr_04f_441f

    db $f4
    inc b
    ldh [$e0], a
    ldh a, [$90]
    ldh [$ce], a
    nop
    db $76
    inc bc
    ld bc, $0201
    ld [bc], a
    inc hl
    inc b
    inc b
    add hl, bc
    ld [$080b], sp
    rla
    and [hl]
    nop
    jp $0083


    or b
    rlca
    rlca
    inc b
    rra
    jr jr_04f_44b8

    ld sp, $c1ff
    ld b, e
    ld a, [hl]
    ld [bc], a
    ld bc, $02fe
    ld c, b

jr_04f_4483:
    db $fc
    inc b
    ld [bc], a
    db $e4
    inc e
    inc e
    ld h, c
    inc bc
    inc e
    db $10
    ld e, $10
    add a
    ld [bc], a
    db $10
    dec b
    ccf
    nop
    ccf
    jr nz, jr_04f_44d7

    ld a, $af
    db $d3
    and e
    push de
    dec b
    ld b, b
    ld b, b
    and b
    jr nz, jr_04f_4483

    jr nz, jr_04f_44e8

    ldh a, [rNR10]
    add h
    nop
    jp nz, Jump_04f_4804

    jr c, jr_04f_44d6

    jr jr_04f_44c8

    or e
    ld [bc], a
    ld [hl], h
    ld b, e
    ccf
    jr nz, jr_04f_44be

    ld a, a

jr_04f_44b8:
    ld b, e
    ld a, h
    ld c, h
    ld [hl], b
    ld d, b
    ld h, b

jr_04f_44be:
    ld h, b
    add a
    ld [bc], a
    and b
    rlca
    rra
    jr @+$01

    ldh [$7f], a

jr_04f_44c8:
    ld bc, $02fe
    add l
    nop
    cp [hl]
    ld b, $f0
    db $10
    ldh a, [$90]
    ldh [$a0], a
    ld h, b

jr_04f_44d6:
    ret z

jr_04f_44d7:
    ld bc, $a4dc
    inc bc
    jp nz, $9804

    cp $c6
    ccf
    ld hl, $0183
    add h
    and a
    inc bc
    ld d, h

jr_04f_44e8:
    sub c
    nop
    inc h
    and e
    ld [bc], a
    ld a, [hl-]
    ld b, $f0
    db $10
    ret z

    ld [$04e4], sp
    db $f4
    and e
    nop
    ld d, c
    inc b
    ld [bc], a
    cp $62
    sbc [hl]
    sub d
    and e
    push hl
    rst $38
    ld [hl], d
    inc d
    ld bc, $1f1d
    daa
    ld a, $3b
    dec a
    ld h, e
    ld e, [hl]
    ld c, a
    ld a, h
    inc sp
    dec a
    ld [hl], c
    ld c, a
    ld b, e
    ld a, [hl]
    inc hl
    ld a, $1e
    ld e, $47
    rlca
    inc b
    ld c, l
    rrca
    ld [$0745], sp
    inc b
    ld b, e
    inc bc
    ld [bc], a
    nop
    ld bc, $b5cc
    ld [bc], a
    ld bc, $0101
    jp nc, $1dc5

    ld bc, $0403
    ld c, $15
    jr c, @+$7c

    ldh [$f5], a
    ret nz

    jp z, $95a0

    ld b, b
    xor e
    ret nz

    rst $10
    add c
    xor [hl]
    ld b, $59
    ld [$50a3], sp
    ld d, a
    nop
    cp a
    ld bc, $017e
    ld b, [hl]
    rst $38
    nop
    ldh [$2a], a
    ld bc, $02fc
    cp $02
    ld hl, sp+$04
    db $fc
    inc b
    db $f4
    inc c
    ei
    rrca
    db $fd
    ld a, [bc]
    ld a, [$f50d]
    ld a, [bc]
    cp $05
    db $fc
    rlca
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    ld b, b
    ccf
    jr nz, jr_04f_4592

    jr c, jr_04f_45dc

    ld a, [hl]
    cp c
    rst $00
    pop af
    rrca
    ld c, $fe

jr_04f_457c:
    ldh a, [$f0]
    ld l, c
    ld e, $03
    rlca
    jr jr_04f_45bc

    ld [hl], b
    ret nz

    ld hl, sp+$00
    rst $18
    db $10
    ld a, a
    jr nc, jr_04f_457c

    jr nc, @+$61

    jr nz, @+$01

    nop

jr_04f_4592:
    rst $38
    ld de, $0eff
    rst $38
    add b
    di
    ld c, h
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    and [hl]
    db $db
    add hl, bc
    rst $18
    jr c, jr_04f_45e8

    add $01
    ld bc, $0002
    dec b
    nop
    add e
    add e
    dec bc
    dec bc
    ld bc, $fffe

jr_04f_45b3:
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
    add e

jr_04f_45bc:
    sbc [hl]
    inc bc
    add d
    rst $38
    ei
    ld a, h
    ld b, e
    rst $38
    nop
    dec b
    push de
    ld a, [hl+]
    jp z, $bff5

    cp a
    ld l, l
    rrca
    ldh [$f0], a
    inc a
    ld c, $1f
    ld bc, $007f
    cp a
    jr nz, @+$01

    ld h, b
    rst $18
    ld h, b

jr_04f_45dc:
    cp a
    ld b, b
    ld b, [hl]
    rst $38
    nop
    inc b
    jr nc, jr_04f_45b3

    ld c, h
    ld a, [c]
    ld b, e

jr_04f_45e7:
    ld b, h

jr_04f_45e8:
    rst $38
    jr nz, jr_04f_45ed

    db $10
    rst $20

jr_04f_45ed:
    jr jr_04f_4637

    rst $38
    nop
    rlca
    add b
    ld a, a
    add b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, [hl]
    ldh [$3f], a
    rla
    rra
    ldh [$7f], a
    ret nz

    ccf
    ret nz

    cp $81
    rst $38
    nop
    ld a, [$f505]
    ld a, [bc]
    xor d
    ld d, l
    ld d, l
    xor d
    and e
    ld e, a
    ld hl, sp-$01
    rlca
    ld b, $8f
    nop
    ld e, b
    ldh [rNR44], a
    add b
    add b
    ret nz

    ld h, b
    ldh a, [$30]
    db $ec
    inc e
    rst $18
    inc hl
    rst $38
    jr jr_04f_45e7

    ld b, a
    rst $38
    jr nz, @+$01

    jr @+$01

    rlca
    cp [hl]
    ld b, c
    db $fc
    inc hl
    db $fc
    dec de
    xor $17

jr_04f_4637:
    push af
    dec bc
    ld [$f515], a
    ld a, [bc]
    ld a, [$8505]
    add e
    add e
    adc e
    inc bc
    ld [$d515], a
    ld a, [hl+]
    add e
    add e
    ld bc, $55aa
    add e
    add e
    and h
    add c
    ld [de], a
    xor e
    xor e
    ld d, a
    ld d, [hl]
    xor [hl]
    sbc b
    ld a, b
    ld [hl], b
    ldh a, [$98]
    ld hl, sp-$02
    ld b, $f1
    rrca
    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    dec d
    add b
    add b
    ldh a, [rSVBK]
    adc b
    ld a, b
    ld hl, sp-$08
    ld h, h
    sbc h
    inc b
    db $fc
    db $e4
    db $fc
    ret c

    jr c, jr_04f_4688

    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    inc hl
    add b
    inc bc
    ret nz

    ld b, b
    ld b, b
    ret nz

    add e
    add e
    add hl, de
    and d

jr_04f_4688:
    ld h, [hl]
    ld l, a
    xor c
    cp a
    ld [hl], c
    ld [hl], a
    xor c

jr_04f_468f:
    xor d
    db $76
    db $76
    xor d
    xor h
    ld [hl], h
    ld b, h
    db $fc
    ret z

    ld a, b
    sub b
    ldh a, [$a0]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    db $ec
    jr nz, @-$77

    nop
    inc de
    ld b, $5f
    ld c, h
    ld a, h
    inc [hl]
    inc a
    ld [hl], a
    ld c, h
    add e
    nop
    ld [hl+], a
    ld bc, $1f1f
    and e
    push de
    ld b, a
    rlca
    inc b
    sub l
    nop
    ld h, h
    rlca
    sbc e
    ret nz

    rst $20
    ret nz

    cpl
    jr nc, jr_04f_468f

    inc c
    ld b, l
    rst $38
    nop
    jp z, $5401

    sub b
    nop
    jp $9bc3


    rlca
    xor $1f
    cp $0f
    rst $38
    ld c, $fd
    ld b, $4f
    rst $38
    nop
    add e
    nop
    db $ec
    adc a
    ld bc, $4b24
    rst $38
    nop
    ld bc, $03fd
    ld c, a
    rst $38
    nop
    nop
    rst $38
    sbc b
    ld bc, $0d83
    ei
    ccf
    ld b, h
    rst $00
    inc e
    rlca
    db $fc
    dec bc
    cp $0b
    push af
    rra
    jp nz, $893d

    ld bc, $f0aa
    cpl
    ld bc, $83e4
    add e
    dec b
    cp b
    ld a, b
    ld l, h
    or h
    and h
    ld a, h
    add e
    add e
    inc c
    ld l, b
    cp b
    xor b
    ld a, b
    ld d, b
    ldh a, [$d0]
    ld [hl], b
    and b
    ldh [$c0], a
    ret nz

    nop
    add h
    ld [bc], a
    dec l
    ld d, $0c
    inc c
    ld [de], a
    rra
    add hl, de
    rra
    scf
    ld l, $3b
    dec a
    ld [hl], a
    ld c, [hl]
    ld b, e
    ld a, h
    ld b, e
    ld a, l
    ld hl, $1f3f
    ld e, $03
    ld [bc], a
    ld [bc], a
    adc b

jr_04f_473b:
    ld [bc], a
    ld h, a
    inc bc
    dec d
    jr c, jr_04f_473b

    ld h, b
    adc e
    nop
    ld [hl], h
    rlca
    ld [hl], b
    ld [hl], b
    xor b

jr_04f_4749:
    ret c

    ld hl, sp+$7c
    or h
    call z, $ef83
    dec bc
    ld a, b
    sbc b
    ld [$10f8], sp
    ldh a, [$30]
    ldh a, [$60]
    ldh [$80], a
    add b
    add a
    di
    adc l
    nop
    ret nz

    jp $b202


    inc bc
    rst $38
    nop
    ld a, a
    nop
    adc c
    nop
    sub $8d
    ld bc, $0220
    rst $38
    nop
    rst $38
    adc e
    ld [bc], a
    rst $18
    ld [bc], a
    jr nc, jr_04f_4749

    ld c, h
    rst $38
    ld [hl], l
    ld bc, $0101
    ld b, h
    inc bc
    ld [bc], a
    inc d
    inc bc
    rlca
    ld [bc], a
    add hl, bc
    nop
    add hl, de
    db $10
    inc de
    ld de, $2337
    ccf
    ld h, $3f
    dec h
    rra
    ld [de], a
    rra
    inc de
    rrca
    ld a, [bc]
    ld b, l
    rlca
    inc b
    ld b, l
    inc bc
    ld [bc], a
    ld b, e
    rlca
    inc b
    rlca
    dec de
    ld [$0127], sp
    ld a, $26
    jr jr_04f_47c3

    ld a, e
    ldh [$29], a
    rrca
    rrca
    ccf
    jr nc, jr_04f_4822

    ld b, b
    rst $18
    add h
    sbc a
    adc a
    cp c
    adc c
    rst $38
    add a
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr @+$01

jr_04f_47c3:
    rla
    rst $38
    xor h

jr_04f_47c6:
    db $fd
    ld [hl], h
    db $fd
    jr jr_04f_47c6

    nop
    rst $38
    add c
    cp $66
    db $fc
    cp h
    db $fd
    ld e, l
    db $fc
    db $fc
    cp $8e
    ld b, e
    rst $38
    rlca
    ld [de], a
    cp $7c
    rst $38
    xor b
    rst $38
    ld d, b
    ei
    ld [hl], c
    ei
    ld d, c
    rst $38
    ld e, b
    rst $38
    sbc b
    rst $38
    call z, $3b3f
    rra
    ld b, e
    ld de, $0417
    db $10
    rrca
    ld [$0707], sp
    sub h
    nop
    ld [bc], a
    ldh [rNR50], a
    nop
    add $c6
    db $fc
    jr c, @-$05

    db $10

Jump_04f_4804:
    rst $38
    ld sp, $e1ff
    rst $38
    inc hl
    rst $38
    and d
    rst $38
    ld [hl], e
    sbc a
    adc a
    adc a
    add b
    db $e3
    add b
    rst $38
    ld b, b
    rst $38
    ld [hl], e
    cp $fe
    db $fc
    db $fc
    db $fd
    db $fd
    inc a
    inc a
    ld e, $1e

jr_04f_4822:
    inc hl
    rra
    ldh [$2d], a
    ccf
    ccf
    rst $38
    rst $38
    ccf
    rra
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    sbc a
    rst $38
    ld [c], a
    rst $38
    dec [hl]
    rst $38
    ld c, $ff
    inc bc
    rst $30
    pop bc
    rst $38
    ld sp, $1fff
    di
    ld a, a
    adc b
    adc a
    ld d, $1f
    db $10
    rra
    jr nz, @+$39

    jr nz, @+$35

    jr nz, @+$3b

    jr jr_04f_4873

    add a
    db $ed
    ldh [rOBP1], a
    ldh a, [$f0]
    inc a
    inc c
    cp $02
    rst $38
    pop hl
    rst $38
    ld d, c
    rst $38
    xor b
    rst $38
    ld e, b
    rst $38
    and h
    rst $38
    db $e3
    rst $38
    add hl, de
    sbc a
    ld b, $ef
    ld [bc], a
    rst $38
    pop bc
    rst $38

jr_04f_4873:
    pop af
    ccf
    jr c, jr_04f_4896

    dec de
    inc e
    inc e
    add hl, de
    db $10
    ccf
    inc hl
    db $fc
    rst $00
    ld hl, sp-$74
    ld hl, sp-$77
    ldh a, [$1f]
    ldh a, [$7f]
    ld hl, sp-$71
    ld hl, sp+$0f
    db $fc
    rla
    db $fc
    rst $30
    cp $8b
    rst $38
    add a
    rst $38
    ld b, b

jr_04f_4896:
    rst $38
    or b
    rst $38
    adc [hl]
    rst $38
    ld bc, $e7ff
    db $db
    ld a, [$f191]
    ld b, l
    ld [$43f8], sp
    db $10
    ldh a, [$03]
    jr nz, @-$1e

    ret nz

    ret nz

    ld h, a
    ld bc, $6060
    ld b, h
    ldh a, [$90]
    ldh [$2a], a
    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    di
    inc sp
    rst $38
    inc c
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    inc a
    db $fd
    jr nc, @+$01

    ld e, h
    ld_long a, $ffaa
    sub $fd
    db $ed
    rst $38
    scf
    rst $38
    ld c, $ff
    adc l
    ld a, a
    add $3f
    push hl
    rra
    ld a, [$f91f]
    rra
    ldh a, [rIF]
    ld hl, sp+$46
    rrca
    db $fc
    ld [$1ffa], sp
    or $ff
    db $eb
    cp $56
    ld hl, sp+$38
    and l
    nop
    inc [hl]
    ld bc, $8080
    ld a, a
    ld bc, $c0c0
    add h
    xor c
    ld [bc], a
    ret nz

    add b
    add b
    and l
    nop
    ld d, $0b
    ldh [rNR41], a
    ld [hl], b
    db $10
    sbc b
    ld [$84cc], sp
    db $fc
    call nz, $b8f8
    add [hl]
    ld bc, $0088
    ld b, b
    add a
    sbc e
    add e
    adc c
    ldh a, [rNR42]
    pop de
    inc bc
    rrca
    ld a, [bc]
    rlca
    ld b, $89
    nop
    ld [hl-], a
    and a
    xor a
    inc de
    ld bc, $0701
    ld b, $0f
    ld [$101f], sp
    rra
    ld de, $233f
    ccf
    ld hl, $f0ff
    rst $38
    jr c, @+$01

    ld e, $8b
    nop
    ld a, d
    dec e
    rst $38
    ld h, a
    ld sp, hl
    cp b
    ei
    ld d, b
    rst $38
    pop af
    cp $8a
    rst $38
    call z, $87df
    cp a
    adc h
    di
    sub b
    rst $20
    ldh [rIE], a
    add c

jr_04f_4953:
    rst $38
    ld b, $ff
    jr jr_04f_4953

    pop af
    ccf
    add hl, de
    sub a
    nop
    db $f4
    rlca
    db $fc
    ld a, a
    ldh [rIE], a
    ld b, e
    ld a, a
    inc a
    inc a
    ld l, e
    rlca
    rst $38
    ld e, b
    rst $38
    and [hl]
    rst $38
    pop hl
    rst $38
    jr @-$79

    ld bc, $e038
    ld hl, $317f
    ccf
    jr @+$01

    dec de
    cp $dc
    ld sp, hl
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh [rIE], a
    jp $87fc


    ld hl, sp+$3f
    ld hl, sp+$4f
    db $fc
    add a
    db $fc
    rrca
    cp $13
    rst $38
    pop hl
    rst $38
    sub c
    cp $8f
    adc c
    ld bc, $0160
    sbc b
    ld hl, sp-$33
    ld bc, $05f1
    ret nz

    ret nz

    ldh a, [$30]
    cp $ce
    and h
    ld bc, $0292
    add e
    rst $38
    rst $38
    adc h
    ld bc, $1298
    ld [hl], a
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld b, $ff
    add l
    ld a, a
    ld [$ebff], a
    cp $16
    ld hl, sp+$18
    ldh [$e0], a
    rlc d
    daa
    xor c
    nop
    ld [de], a
    ld b, [hl]
    ldh [rNR41], a
    ld [bc], a
    and b
    ldh a, [$d0]
    ld b, e
    ldh a, [$90]
    ld b, e
    ldh [rNR41], a
    add a
    ld [bc], a
    ld [hl], b
    inc bc
    rst $38
    cp a
    rst $38
    ld e, a
    ld [hl+], a
    rst $38
    nop
    adc a
    jr nc, @+$01

    ld [$fff8], sp
    ei
    db $fc
    db $fc
    ld sp, hl
    ldh a, [rIE]
    db $e3
    add l
    ld bc, $ff4a
    ld [hl], b
    inc hl
    ld bc, $030e
    ld [bc], a
    rlca
    inc c
    rra
    rra
    ccf

Jump_04f_4a00:
    ccf
    ld a, h
    dec sp
    ld a, h
    ld a, a
    ld hl, sp-$09
    ld hl, sp+$43
    rst $38
    ldh a, [$03]
    ld a, a
    ld a, b
    rra
    ccf
    jp $ec97


    dec a
    ldh [rNR42], a
    ld [hl], b
    ld hl, sp-$02
    cp $ff
    db $fd
    db $fc
    ldh a, [$7f]
    ldh [$bf], a
    ldh [$3f], a
    inc de
    sbc l
    ld b, $fe
    dec c
    or $05
    rst $20

jr_04f_4a2b:
    ld [hl], $e1
    ld d, d
    di
    adc h
    rst $38
    add b
    ld a, [$fb05]
    ld a, [bc]
    ei
    ld [$ff43], sp
    add h
    rrca
    ld a, e
    ld b, h
    ccf
    inc [hl]
    dec bc
    ld c, $07
    rlca
    jr jr_04f_4a65

    jr nz, jr_04f_4a87

    jr jr_04f_4a69

    rlca
    rlca
    ld b, e
    inc bc
    ld [bc], a
    ld b, l
    rlca
    inc b
    rlca
    inc c
    dec bc
    jr @+$19

    jr c, jr_04f_4a80

    inc a
    inc hl
    jp $0398


    inc b
    inc b
    inc bc
    inc bc
    ld [hl], e
    dec bc
    add b

jr_04f_4a65:
    add b
    rst $20
    ld l, a
    ld sp, hl

jr_04f_4a69:
    jr nc, jr_04f_4a2b

    ret nz

    ld bc, $8f00
    nop
    ld b, e
    rst $38
    nop
    dec bc
    cp $01
    xor a
    or c
    ld a, a

jr_04f_4a79:
    pop af
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc e

jr_04f_4a80:
    ld b, e
    ei
    ld a, [bc]
    ld bc, $0cff
    ld b, h

jr_04f_4a87:
    rst $38
    inc b
    ld d, $02
    rst $38
    ld b, $79
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ccf
    ldh a, [$f5]
    jp z, $0aff

    rst $38
    add h
    ld a, a
    add h
    rst $38
    ld b, h
    rst $18
    dec sp
    ld b, e
    ld a, a
    add b
    dec bc
    rst $38
    nop
    rst $38
    jr c, jr_04f_4a79

    adc $09
    adc c
    inc b
    and l
    ei
    ei
    ld [hl], e
    add hl, de
    ret nz

    ret nz

    ret c

jr_04f_4ab6:
    jr c, jr_04f_4ab6

    ld b, $ff
    ld bc, $609f
    ld [hl], a
    adc b
    rst $38
    inc b
    rst $38
    ld a, b
    jp Jump_04f_43c4


    ld b, h
    rlca
    adc b
    adc [hl]
    ld [hl], c
    rst $38
    ld bc, $ff4c
    nop
    ld [bc], a
    ld bc, $87fe
    jp $11c6


    jp $feff


    ld a, [hl-]
    rst $38
    ld bc, $11ef
    rst $38
    jr nz, @-$0b

    ld c, h
    ld h, c
    sbc [hl]
    pop hl
    ld e, $f3
    inc c
    and e
    rst $18
    rlca
    db $e3
    ld h, e
    add d
    add d
    inc c
    inc l
    ldh a, [$f0]
    ld a, c
    inc bc
    adc a
    adc a
    rst $38
    ld [hl], b
    ld b, l
    rst $38
    nop
    inc b
    db $db
    inc a

Jump_04f_4b00:
    db $fd
    inc bc
    rst $38
    and [hl]
    nop
    db $dd
    ld de, $81fe
    db $fd
    ld b, e
    and a
    ld a, a
    rst $38
    ccf
    rst $08
    ld c, a
    add e
    add a
    pop bc
    jp $e020


    ld b, b
    ret nz

    and a
    nop
    ld l, $05
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    ld b, e
    ldh a, [rNR10]
    ld bc, $60e0
    db $f4
    inc h
    nop
    ld l, $06
    add b
    ldh a, [$f8]
    ld a, b
    db $fc
    ld a, h
    db $fc
    ld b, e
    cp $7e
    inc c
    db $fc
    cp $fc
    ld a, h
    cp [hl]
    ld a, [hl]
    ld d, [hl]
    rst $38
    db $eb
    rst $38
    push de
    rst $38
    db $eb
    ld b, e
    rst $38
    cp $06
    cp $fc
    db $fc
    ldh a, [$f8]
    ret nz

    ldh [$ec], a
    ld hl, $0089
    add b
    ld bc, $01ff
    ld b, h
    rst $38
    inc bc
    ld c, $87
    ei
    adc e
    ld a, d
    ld c, e
    ccf
    scf
    rrca
    inc c
    rlca
    ld b, $19
    rra
    jr nz, jr_04f_4bab

    adc d
    nop
    ldh [$08], a
    nop
    rst $30
    ld hl, sp-$01
    ld hl, sp-$71
    ld hl, sp+$0f
    db $fc
    ld b, e
    rla
    db $f4
    inc de
    rst $38
    ld a, [$06ff]
    ld sp, hl
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38
    cp a
    ret


    rst $30
    sbc b
    ld [hl], a
    sbc b
    rst $38
    ld c, b
    cp e
    ld b, h
    ld b, e
    rst $38

jr_04f_4b93:
    nop

jr_04f_4b94:
    add h
    ld bc, $0060
    cp d
    ld b, e
    rst $38
    ld b, c
    dec b
    rst $18
    jr nz, jr_04f_4b93

    inc c
    pop hl
    ld e, $8b
    nop
    and b
    add hl, bc
    dec c
    ld a, [bc]
    jr c, jr_04f_4be2

jr_04f_4bab:
    ld a, a
    ld b, e
    ld a, $27
    inc e
    ld e, $89
    nop
    cp d
    inc bc
    rst $38
    add c
    ld a, h
    rst $38
    ld [hl+], a
    ld [$8800], sp
    add a
    ld bc, $071c
    ei
    db $f4
    rra
    cp $07
    rrca
    inc bc
    rlca
    add a
    ld bc, $8d7c
    ld bc, $06c0
    ldh a, [$b0]
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$aa], a
    nop
    cp e
    and e
    sub l
    inc bc
    ld b, $0f
    inc e
    rra
    ld [hl+], a

jr_04f_4be2:
    ccf
    inc b
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, h
    ld b, e
    ld a, a
    ld a, b
    inc bc
    scf
    jr c, jr_04f_4bff

    jr jr_04f_4b94

    and e
    adc $00
    dec d
    ld a, [bc]
    jr jr_04f_4c35

    ld a, h
    ld a, [hl]
    cp $fe
    rst $38
    rst $38

jr_04f_4bff:
    cp $fc
    ccf
    ld b, e
    ldh a, [rIE]
    ld b, $90
    sbc a
    dec bc
    call $fe06
    dec c
    adc c
    ld [bc], a
    and b
    dec b
    rrca
    inc c
    rra
    inc d
    inc a
    dec hl
    ld b, e
    jr c, jr_04f_4c41

    inc bc
    inc e
    inc de
    rrca
    ld [$0087], sp
    cp b
    ld b, e
    rst $38
    nop
    inc bc
    rst $08
    ccf
    rst $38
    nop
    adc b
    ld bc, $08a8
    ld b, c
    rst $38
    ld sp, $3fff
    ldh [rNR42], a

jr_04f_4c35:
    ret nz

    ld b, b
    add e
    ld [bc], a
    ld [$0189], a
    cp [hl]
    add e
    ld bc, $03cc

jr_04f_4c41:
    ldh [$a0], a
    ldh a, [$90]
    ld h, a
    ld bc, $fc78
    add e
    ld [bc], a
    ld bc, $fe10
    ld a, [hl]
    cp h
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp $ff
    ld l, e
    rst $38
    push de
    ld a, a
    xor e
    rst $38
    push af
    rst $38
    rst $38
    add l
    ld [bc], a
    inc de
    ld [bc], a
    cp $f8
    db $fc
    ld h, [hl]
    adc l
    nop
    rst $18
    ld [bc], a
    db $fc
    ei
    ld a, [hl-]
    rst $38
    ld h, d
    ld d, $01
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    ld [$0809], sp
    rrca
    db $10
    rra
    db $10
    ld d, $19
    db $10
    rra
    rrca
    rrca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc hl
    ld bc, $43ec
    ldh [$27], a
    ldh [$f0], a
    xor h
    inc c
    ld d, l
    inc bc
    xor l
    ld bc, $05fd
    pop hl
    add hl, de
    adc e
    ld a, c
    dec bc
    ld sp, hl
    rst $28
    pop af
    cp [hl]
    pop af
    ld e, a
    ldh a, [$bf]
    ldh a, [rIF]
    ld hl, sp+$1f
    ld hl, sp-$51
    add sp, $77
    ld h, h
    dec hl
    inc h
    scf
    jr nz, jr_04f_4cd1

    db $10
    rrca
    inc c
    add e
    di
    ldh [$2b], a
    rrca
    inc c
    rra
    jr nc, jr_04f_4cc5

jr_04f_4cbe:
    ld b, b
    ld c, e
    ld b, h
    ld e, $8f
    rst $38
    sbc a

jr_04f_4cc5:
    pop de
    or b
    pop hl
    and b
    ld b, e
    ld b, d
    ld c, a
    ld b, c
    ld a, a
    ld c, b
    add hl, sp
    daa

jr_04f_4cd1:
    rra
    ld e, $0b
    ld [$1011], sp
    dec e
    db $10
    rla
    jr @+$0b

    ld c, $06
    rlca
    ld [$0c09], sp
    ld a, [bc]
    rlca
    ld b, $8b
    nop
    inc e
    dec e
    jp $f8c7


    jr c, jr_04f_4cbe

    jr nz, @+$01

    ld h, b
    db $dd
    ld [de], a
    add l
    ld b, [hl]
    sub d
    ld [hl], d
    ei
    rlca
    ld a, a
    add c
    rst $38
    add b
    cp $b9
    jp nz, $c846

    ld c, b
    pop af
    jr nc, @-$03

    nop
    ld b, e
    rst $38
    nop
    add hl, bc
    db $fc
    inc bc
    ld [hl], b
    adc a
    ld hl, sp-$01
    or a
    cp a
    cp b
    cp a
    ld b, h
    rst $38
    ld a, a
    inc b
    ccf
    ld l, a
    sbc a
    ei
    add a
    ld b, e
    rst $38
    ld b, b
    inc bc
    ld a, a
    ret nz

    rst $38
    add b
    ld c, c
    rst $38
    nop
    dec c
    db $fd
    ld [bc], a
    db $ec
    rra
    inc bc
    rst $38
    inc a
    db $fc
    inc h
    ld e, h
    adc b
    ld a, b
    ldh a, [$f0]
    ld l, c
    dec de
    pop hl
    pop af
    ld a, $0f
    ld a, b
    rlca
    rst $38
    inc bc
    call c, $d02d
    ld sp, $e9e8
    ld l, l
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    ld [hl], a
    ccf
    ld sp, hl
    add hl, bc
    rst $38
    ld b, $43
    rst $38
    nop
    dec bc
    ld [$1515], a
    ld [$fd02], a
    rrca
    rst $38
    or $fe
    ld c, $fe
    inc hl
    rst $38
    rra
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    rrca
    cp $91
    ld a, c
    and a

jr_04f_4d74:
    ld h, h
    rst $00
    jr nz, jr_04f_4d74

    ld d, e
    ldh a, [rVBK]
    and c
    ld a, a
    ld e, a
    cp a
    xor e
    ld d, h
    ld d, a
    xor b
    and a
    ld e, b
    pop af
    cp $0c
    rrca
    ld [hl+], a
    inc bc
    nop
    ld [bc], a
    add a
    nop
    cp d
    ld b, $03
    rlca

jr_04f_4d93:
    ld a, [de]
    jr c, jr_04f_4d93

    ldh [$5a], a
    ld b, e
    ret nc

    ld e, a
    ldh [rNR50], a
    ret z

    ld e, c
    adc $f8
    ld c, a
    rst $38
    ld b, a
    cp [hl]
    ld b, a
    ld a, l
    add a
    cp $87
    ld hl, sp-$71
    db $fc
    rrca
    ld a, [$f70f]
    dec de
    cp d
    ld d, [hl]
    ld d, [hl]
    xor d
    xor h
    ld d, h
    ld e, b
    cp b
    ld h, b
    ldh [$a0], a
    ldh [$90], a
    ldh a, [$88]
    ld hl, sp+$43
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $0f
    ld h, d
    sbc [hl]
    sub d
    adc [hl]
    add d
    ld c, $a4
    call c, $fcc4
    jp z, $d2fe

    cp $e2
    cp $43
    ld bc, $43ff
    add d
    ld a, a
    dec bc
    add a
    ld a, a
    ld a, [de]
    cp $e1
    rst $38
    ld a, c
    add a
    ld c, $96
    ld hl, sp-$08
    and h
    rst $18
    ld [$a0c0], sp
    jr nz, jr_04f_4e43

    db $10
    cp b
    ld [$08f8], sp
    ld b, e
    db $fc
    inc b
    dec b
    inc [hl]
    call z, $fc04
    ld hl, sp-$08
    add e
    rlc e
    ld b, b
    ret nz

    ld b, b
    ret nz

    db $f4
    dec l
    nop
    inc e
    inc bc
    ret nz

    ret nz

    jr nz, @-$1e

    pop de
    add d
    add l
    nop
    ld h, d
    ld e, $af
    nop
    cp $01
    pop hl
    ld e, $87
    ld a, h
    rrca
    db $fc
    rst $28
    ld hl, sp-$41
    ldh a, [$5f]
    ldh a, [rIE]
    db $f4
    ld c, e
    ld a, [$fa9b]
    or e
    pop af
    ld [hl], a
    ld [hl], c
    scf
    ld sp, $101f
    rlca
    ld b, h
    ld [$090f], sp
    rlca
    inc b
    dec c
    ld c, $1f
    ld [hl-], a
    rlca
    ld b, c

jr_04f_4e43:
    ld c, e
    ld b, l
    adc c
    nop
    sub [hl]
    add a
    nop
    ret nz

    ld bc, $f838
    adc e

jr_04f_4e4f:
    nop
    jp z, $01a3

    ld [bc], a
    rlca
    db $fd
    inc bc
    ld l, a
    sbc a
    or e
    ld [hl], e
    ld a, a
    rst $20
    and e
    ld bc, $0651
    cp a
    rst $38
    cp $7e
    ei
    jr c, jr_04f_4e4f

    add [hl]
    nop
    push hl
    ld bc, $ffc3
    adc c
    nop
    or $89
    ld bc, $0730
    rst $18
    ldh [$fb], a
    db $fc
    and $e7
    rst $38
    di
    add l
    ld bc, $0752
    rst $38
    ccf
    rst $38
    ld c, $ff
    nop
    xor a
    ld d, b
    add e
    ld bc, $0248
    ldh a, [rIE]
    rst $38
    adc b
    ld bc, $8757
    ld bc, $e080
    ld hl, $00fa
    ld a, a
    add b
    rra
    ldh [rSB], a
    cp $f8
    rra
    rst $38
    rrca
    cp $07
    db $fd
    rlca
    cp $17
    db $ec
    cpl
    ld l, a
    xor a
    xor a
    ld h, a
    ld e, a
    rst $00
    ld e, [hl]
    add $bc
    add h
    ldh a, [$88]
    ld a, b
    ld [$02a5], sp
    ld h, h
    inc b
    ld e, b
    cp b
    and h
    ld a, h
    call nz, $018a
    or l
    adc l
    nop
    ret nz

    rlca
    sbc l
    ld a, d
    push bc
    ld a, [hl]
    and d
    ld a, [hl]
    ei
    rra
    adc c
    nop
    sub $8e
    ld bc, $0420
    cpl
    pop de
    ccf
    ld [c], a
    rst $38
    adc e
    ld bc, $ff34
    ld [hl], b
    inc bc
    ld bc, $0301
    inc bc
    adc $81
    dec c
    inc c
    inc c
    dec de
    rra
    ld a, [hl+]
    ld a, $23
    ld a, $13
    inc e
    rrca
    ld [$0607], sp
    rst $08
    sbc a
    ld [$0101], sp
    ld [bc], a
    ld [bc], a
    inc b
    nop
    dec b
    inc b
    ld a, [bc]
    ld b, h
    ld [$0b0f], sp
    rlca
    inc b
    rlca
    rlca
    inc c
    dec c
    ld [de], a
    rra
    ld [$060f], sp
    rlca
    add [hl]
    xor c
    ldh [$3e], a
    ld [bc], a
    nop
    dec b
    inc b
    inc b
    dec c
    dec c
    ld [de], a
    ccf
    ld b, a
    ld a, a
    adc [hl]
    cp $1f
    cp $7a
    ei
    rst $38
    ld sp, hl
    adc [hl]
    call $0407
    rrca
    ld [$1509], sp
    rra
    inc de
    rra
    db $10
    rrca
    dec bc
    dec b
    ld b, $83
    jp nz, $3fbf

    ld e, h
    inc bc
    cp [hl]
    inc bc
    rst $38
    ld bc, $04fb
    rst $38
    adc b
    ld a, h
    ld d, b
    db $10
    jr nc, jr_04f_4f6f

    jr nz, @+$72

    ld h, b
    cp b
    add b
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    inc hl
    add b
    rla
    nop
    ld b, b
    nop
    ld b, b
    ld hl, sp+$30
    call c, $fc40
    ld b, h
    ld hl, sp+$38
    ld hl, sp+$04
    db $fc
    jp $e03f


    rra
    pop af

jr_04f_4f6f:
    ld e, $fe
    ldh [$e0], a
    ld h, l
    add hl, de
    rra
    ccf
    xor [hl]
    cp $56
    rst $38
    xor a
    rst $38
    ld [hl], l
    dec de
    xor a
    jr nc, @+$41

    ld h, b
    ld sp, hl
    ld b, [hl]
    or b
    ret


    db $fc
    adc h
    db $f4
    ld b, $f4
    ld c, $ff
    add b
    ld b, e
    rst $38
    nop
    ld [de], a
    ld [hl], a
    adc b
    rst $28
    ld [hl], b
    db $fd
    inc bc
    rst $38
    adc a
    ld a, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rst $38
    ld a, h
    rrca
    nop
    inc bc
    ld h, [hl]
    inc bc
    ld c, $0c
    rla
    db $10
    and d
    pop hl
    ld bc, $000e
    sub b
    adc a
    inc b
    inc bc
    ret nz

    rst $08
    ldh a, [rIF]
    add $d6
    dec d
    ld b, b
    ret nz

    jr nz, jr_04f_4fe0

    jr c, jr_04f_4ffe

    daa
    ccf
    ret nz

    rst $38
    add c
    rst $38
    add d
    rst $38
    ld b, l
    rst $38
    di
    ld a, a
    rst $38
    ld a, a
    cp $7e
    ld b, h
    cp $3e
    db $10
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $28
    ld a, a
    ld d, [hl]
    cp $ad

jr_04f_4fe0:
    ld hl, sp+$5f
    ldh a, [rIE]
    ldh [rIE], a
    and b
    ld b, l
    rst $38
    nop
    dec b
    db $fd
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ld b, e
    ccf
    nop
    dec e
    dec e
    inc bc
    inc d
    inc c
    nop
    db $10
    dec d
    jr nz, @+$3c

jr_04f_4ffe:
    jr nz, jr_04f_503f

    ld b, b
    ccf
    ld b, e
    ld a, l
    ld b, l
    ld a, l
    ld b, a
    jr c, jr_04f_5058

    ld a, b
    cpl
    ld hl, sp+$2f
    db $fc
    rla
    rst $38
    dec sp
    jp $adc7


    nop
    dec [hl]
    ld a, [bc]
    ret nz

    ldh [$60], a
    ldh a, [$b8]
    ld hl, sp+$78
    ld hl, sp-$20
    ldh a, [$80]
    and [hl]
    nop
    db $f4
    ld c, $0b
    dec bc
    inc d
    rla
    ldh [rIE], a
    ldh [$9f], a
    and c
    rra
    ld [hl], c
    rrca
    cp $02
    db $fc
    ld b, e
    inc b
    ld hl, sp+$16
    ld [$18f0], sp
    ld hl, sp+$6c
    db $fc

jr_04f_503f:
    adc h
    db $fc
    ld e, $fe
    ld e, $ee
    ld e, $fe
    rrca
    rst $30
    adc a
    ld a, e
    ld h, l
    rst $38
    ld de, $017f
    ld b, [hl]
    rst $38
    nop
    ld [bc], a
    ret nz

    ld a, a
    ld b, c
    ld b, e

jr_04f_5058:
    ld a, a
    pop bc
    rlca
    ld a, [hl]
    jp nz, $84fc

    ld hl, sp+$18
    ldh [$e0], a
    db $ec
    ld hl, $8022
    ret z

    add b
    ld [de], a
    ld c, b
    ld a, b
    add h
    call c, $fc84
    call z, $f8fc
    db $fc
    ld a, h
    ld [hl], h
    inc e
    ld [de], a
    ld c, $0a
    ld c, $09
    ld b, $46
    dec b
    rlca
    add hl, bc
    rrca
    add hl, bc
    adc [hl]
    adc d
    sbc [hl]
    sub d
    cp h
    and h
    ld hl, sp-$38
    and l
    nop
    ld l, $b5
    push bc
    and l
    ret z

    add [hl]
    nop
    ld [hl], b
    nop
    ret


    add e
    nop
    ld a, b
    jr jr_04f_50c5

    dec [hl]
    ld e, a
    ld [hl], e
    rst $18
    or b
    cp a
    adc e
    ld a, l
    rlca
    cp a
    inc bc
    ld a, a
    ld [bc], a
    db $fc
    inc bc
    cp $81
    rst $38
    pop bc
    ld a, e
    ld b, h
    ccf
    jr z, jr_04f_50d0

    ld [hl+], a
    db $10
    add a
    nop
    sbc b
    dec bc
    ccf
    ld h, b
    rst $38
    ld b, b
    cp a
    ret nz

    rst $38
    add a
    rst $38
    inc c
    rst $38

jr_04f_50c5:
    ld [$0088], sp
    call c, $f009
    db $fd
    di
    rst $30
    rst $28
    rst $38

jr_04f_50d0:
    rra
    cpl
    rst $38
    ld e, a
    adc e
    ld bc, $0e2f
    ld a, [hl]
    add [hl]
    cp $c7
    ld a, c
    adc [hl]
    ldh a, [$fd]
    ret nz

    cp $c0
    rst $38
    ldh [$7f], a
    ldh [$85], a
    ld bc, $854a
    ld bc, $ad90
    nop
    jr c, jr_04f_50f2

    ret nz

jr_04f_50f2:
    ld b, b
    ld b, l
    ldh [rNR41], a
    add hl, bc
    ldh a, [$30]
    ld hl, sp+$48
    ldh a, [rOBP0]
    ld hl, sp-$74
    db $fc
    inc c
    adc c
    ld bc, $63b6
    adc e
    ld [bc], a
    inc b
    add l
    nop
    ld b, b
    inc bc
    inc c
    inc c
    inc de
    ld d, $83
    nop
    jr z, jr_04f_5157

    ld de, $011f
    add hl, bc
    rrca
    xor e
    ld bc, $84da
    nop
    or b
    inc b
    add e
    ccf
    ld [hl], b
    rrca
    rrca
    ld h, l
    adc d
    ld bc, $4460
    ld b, b
    ld a, a
    rrca
    ccf
    ld b, b
    ld a, a
    jr nz, @+$01

    ld hl, $1afe
    db $fd
    ccf
    call nz, $04c7
    rlca
    inc bc
    inc bc
    adc h
    ld bc, $00c0
    nop
    ld b, l
    rst $38

jr_04f_5144:
    ld bc, $fe05
    add d
    db $fc
    db $e4
    jr c, jr_04f_5144

    jp $d702


    ld bc, $8080
    rst $38
    db $76
    ld bc, $0202

jr_04f_5157:
    inc h
    inc bc
    ld bc, $0301
    inc hl
    ld bc, $0001
    ld bc, $c367
    adc a
    nop
    ld bc, $8d88
    ldh [rNR42], a
    inc bc
    nop
    rlca
    inc bc
    inc c
    rrca
    jr nc, jr_04f_5191

    ld b, e
    ccf
    ld b, a
    ccf
    rst $08
    ld a, a
    rst $18
    ld a, a
    ld a, e
    cpl
    ld sp, $331f
    rra
    inc hl
    ld e, $17
    ld e, $16
    inc c
    ld e, $0c
    ld c, $04
    inc b
    nop
    ret


    and d
    dec b
    ld [bc], a
    inc bc

jr_04f_5191:
    inc b
    rlca
    ld [$430f], sp
    ld de, $431f
    inc hl
    ccf
    ldh [$2e], a
    ld b, e
    ld a, a
    push bc
    rst $38
    set 7, a
    add l
    rst $38
    adc e
    rst $38
    and l
    rst $38
    cp e
    rst $38
    rst $08
    rst $28
    rst $00
    rst $00
    rst $08
    rst $08
    xor e
    db $eb
    add e
    db $e3
    sbc e
    ei
    rst $08
    rst $38
    db $db
    rst $38
    ei
    rst $28
    ld a, l
    ld [hl], a
    ld a, a
    ld a, e
    ccf
    inc a
    sbc a
    ld a, $cf
    sbc a
    ld [hl], a
    rst $08
    rst $38
    ldh a, [$fc]
    ld b, h
    rst $38
    cp $22
    rst $38
    inc bc
    cp $fe
    cp b
    cp b
    ld l, [hl]
    add hl, bc
    jr nz, @+$22

    ld h, b
    ld h, b
    and b
    ldh [$60], a
    ldh [rLCDC], a
    ldh [rNR50], a
    ret nz

    nop
    ldh [rNR51], a
    rst $38
    inc b
    cp $ff
    ld hl, sp-$01
    ldh a, [rLY]
    rst $38
    ldh [$0d], a
    jp $c6ff


    rst $38
    call c, $f8fc
    ld hl, sp-$0c
    db $f4
    db $e4
    db $f4
    ldh [$e3], a
    dec h
    rst $38
    add hl, bc
    rst $20
    cp $f7
    sbc [hl]
    rst $38
    inc c
    rst $38
    inc b
    rst $28
    di
    and [hl]
    xor h
    inc c
    sbc a
    ccf
    rst $28
    rra
    rst $30
    rst $08
    ei
    rst $38
    ld a, e
    ld a, a
    inc bc
    rlca
    rrca
    add e
    nop
    jr nc, @+$78

    dec c
    ld bc, $0f06
    or b
    rst $38
    ret nz

    rst $38
    ld b, e
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    and h
    nop
    and a
    inc bc
    cp a
    cp a
    rra
    ccf
    dec h
    rra
    ld bc, $3f3f
    ld b, e
    db $fd
    rst $38
    ld [de], a
    ei
    rst $38
    rst $38
    ei
    rst $38
    inc sp
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    ld c, $ff
    dec e
    cp $fb
    cp $f3
    db $fc
    ld b, h
    rst $30
    db $fd
    and e
    or b
    daa
    rst $38
    inc b
    adc a
    sbc a
    add e
    add a
    nop
    adc [hl]
    db $e3
    inc c
    rlca
    rlca

jr_04f_5266:
    dec de
    ccf
    add $fe
    inc e
    db $fc
    jr c, jr_04f_5266

    ldh a, [$f0]
    ldh [$83], a
    nop

Call_04f_5273:
    ret


    nop
    pop hl
    daa
    rst $38
    ld b, $fe
    rst $38
    db $fc
    cp $f8
    db $fc
    ldh a, [$2a]
    rst $38
    inc c
    cp $f3
    cp $cc
    di
    ld a, $c1
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, b
    ld b, e
    rst $38
    db $fc
    rrca
    rst $00
    call z, $8c07
    rst $00
    ret


    rst $00
    set 4, [hl]
    rst $28
    db $e4
    ld e, $b8
    add b
    adc b
    add b
    add h
    nop
    rlc c
    ld h, b
    ld h, b
    ld a, c
    ld [bc], a
    inc c
    inc a
    ld a, b
    add h
    rst $20
    xor h
    ld bc, $0012
    ldh a, [$83]
    sub c
    ld bc, $c080
    and a
    ld bc, $0778
    ldh [rP1], a
    ldh a, [$e0]
    sbc b
    ldh a, [$4c]
    ld hl, sp+$43
    ld b, [hl]
    db $fc
    dec b
    and $fc
    db $fc
    ld hl, sp+$7c
    ld hl, sp-$7c
    or d
    ld bc, $4040
    ld l, h
    adc e
    ld bc, $1f12
    ld bc, $0600
    ld [bc], a
    inc b
    dec b
    jr nz, jr_04f_52ed

    ld b, c
    dec d
    ld [bc], a
    ld a, [hl+]
    push bc
    ld d, l
    adc d
    ld a, [hl+]
    ld d, c
    dec b

jr_04f_52ed:
    jr nz, jr_04f_52f9

    ld de, $2215
    ld a, [bc]
    dec d
    inc d
    ld [bc], a
    ld [$0414], sp

jr_04f_52f9:
    ld a, [bc]
    nop
    add e
    nop
    ld e, h
    adc e
    nop
    sub b
    inc de
    rra
    ld a, $8f
    sbc a
    ld d, a
    ld c, a
    xor a
    and l
    ld d, a
    ld d, d
    xor e
    xor c
    ld d, l
    ld d, h
    xor d
    xor d
    ld d, l
    ld d, h
    xor d
    xor b
    jp z, $3f01

    jr jr_04f_5372

    ld a, a
    dec hl
    ccf
    rla
    dec bc
    ld bc, $0415
    ld h, b
    ld a, [hl+]
    ld b, b
    ld d, l
    xor d
    ld a, [hl+]
    dec d
    dec b
    ld a, [bc]
    ld [bc], a
    dec d
    dec b
    ld [bc], a
    ld a, [bc]
    ld de, $8305
    pop de
    dec e
    ld [hl+], a
    ld a, [bc]
    inc d
    inc d
    jr z, jr_04f_5344

    stop
    rst $08
    ld a, a
    db $db
    cp a
    ld a, d
    rst $00

jr_04f_5344:
    ld a, l
    and d
    rst $38
    ld d, l
    ld a, a
    ld a, [hl+]
    cp a
    sub l
    ld e, a
    ld c, d
    xor a
    and l
    ld d, a
    ld d, e
    xor c
    inc bc
    adc c
    ld bc, $0978
    jp $c7ff


    rst $38
    sbc $fe
    db $fc
    db $fc
    db $f4
    db $fc
    add a
    nop
    ld [$e703], a
    rst $38
    rst $30
    ld e, $83
    nop
    ld hl, sp+$09
    rst $38
    and b
    rst $38
    ld d, b

jr_04f_5372:
    rst $38
    xor b
    rst $38
    ld d, e
    rst $38
    xor a
    xor d
    ld bc, $069e
    rra
    rst $38
    ei
    rst $18
    inc sp
    rst $38
    inc bc
    adc c
    ld bc, $0e56
    rrca
    nop
    ccf
    rrca
    ld [hl], b
    ccf
    ldh [$7f], a
    cp $3f
    ccf
    rrca
    rrca
    rlca
    rla
    ld b, h
    rrca
    inc de
    ld bc, $1f33
    ld b, e
    scf
    ld e, $04
    ld a, $1c
    inc a
    jr jr_04f_53dd

    add [hl]
    rst $38
    nop
    ld a, a
    adc d
    nop
    and e
    ld [bc], a
    rst $38
    ld sp, hl
    ld sp, hl
    adc d
    rst $38
    adc b
    rst $28
    ld a, [bc]
    add h
    ccf
    ldh [$1f], a
    ldh a, [$cf]
    ld hl, sp-$01
    ld a, e
    rst $38
    add e
    adc e
    rst $28
    rst $38
    ld [hl], c
    ld bc, $0301
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0201
    inc h
    ld bc, $8784
    ld bc, $0100
    call nz, $028d
    ld [bc], a
    ld bc, $6b03
    ld a, [bc]
    rlca

jr_04f_53dd:
    rlca
    ld e, $19
    jr nc, @+$31

    ld h, e
    ld e, a
    ld l, h
    ld e, a
    ret nc

    ld b, h
    cp a
    ret nz

    inc bc
    sbc a
    rst $38
    ldh [$e0], a
    adc e
    sbc l
    ld [bc], a
    ld c, $09
    db $10
    ld [hl+], a
    rra
    inc bc
    ld bc, $0301
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld bc, $1f1f
    ld b, l
    ccf
    jr nz, @+$11

    rst $38
    ldh [rIE], a
    jr nz, @+$01

    db $10
    rst $38
    rrca
    cp $72
    cp $8a
    db $fd
    inc b
    cp $04
    add e
    add e
    inc b
    rst $38
    adc d
    cp $72
    rst $38
    add $91
    ld b, l
    ccf

jr_04f_5422:
    jr nz, @+$1b

    rra
    rra
    rlca
    inc b
    rst $00
    call nz, $f233
    add hl, bc
    ld sp, hl
    call nz, $33fc
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $c4
    db $fc
    jr c, jr_04f_5476

    ld h, c
    ld a, [bc]
    ld c, $0e
    ld de, $601f
    ld a, a
    sbc h
    ei
    inc a
    db $e3
    inc hl
    ld [hl+], a
    rst $38
    inc bc
    jp $ffc3


    inc l
    add h
    cp c
    ldh [$27], a
    jr nz, @+$01

    and b
    rst $38
    ld d, b
    rst $38
    ld c, a
    ldh a, [$74]
    ret nz

    ld c, b
    sbc b
    sbc b
    inc b
    inc h
    nop
    jr nz, jr_04f_5498

    ld [hl], b
    rrca
    ld c, a
    inc b
    ld b, a
    inc bc
    ld b, e
    add b
    ld b, b
    nop
    ld b, b
    adc d
    jr nz, jr_04f_54cb

jr_04f_5476:
    jr nz, jr_04f_5422

    sub b
    push de
    ld c, b
    ldh a, [rPCM12]
    rst $38
    jp z, $13a1

    rst $28
    inc l
    jp $04c3


    rlca
    adc d
    adc l
    ld [hl], h
    ei
    ld a, [bc]
    push af
    or h
    db $eb
    ld l, b
    ld [hl], a
    ld d, h
    ld l, e
    ld c, b
    ld [hl], a
    ld b, e
    jr nz, jr_04f_54d7

jr_04f_5498:
    dec bc
    sbc b
    sbc a
    ld c, d
    rst $08
    ld sp, $01ff
    rst $38
    ld b, $fe
    ld hl, sp-$08
    or e
    rst $18
    ld a, [de]
    ld sp, $4031
    ld c, b
    nop
    ld [$1c1c], sp
    ldh [$e4], a
    ld b, b
    call nz, $8480
    nop
    inc b
    ld bc, $a204
    ld [$0855], sp
    xor e
    ld de, $1247
    adc a
    and h
    rst $18
    ld b, l
    db $fd
    rlca
    dec b
    ld sp, hl
    rrca

jr_04f_54cb:
    ld a, [c]
    ld a, $c2
    cp $43
    inc b
    db $fc
    ld [bc], a
    inc bc
    rst $38
    nop
    and e

jr_04f_54d7:
    nop
    adc h
    inc bc
    rst $38
    ld [bc], a
    cp $02
    add h
    adc a
    dec bc
    ld [$28f8], sp
    ld hl, sp-$39
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_04f_552a

    rrca
    rrca
    cp e
    nop
    ld h, b
    ld bc, $207f
    and [hl]
    nop
    ld a, h
    ld bc, $ff51
    xor [hl]
    nop
    add a
    ld bc, $fcfc
    add e
    nop
    or b
    ld b, $3f
    ld sp, $5f60
    ld c, [hl]
    ld a, a
    sub c
    ld b, h
    rst $38
    nop
    add hl, bc
    ldh [rIE], a
    db $10
    rra
    ld [$060f], sp
    rlca
    ld bc, $c301
    nop
    or c
    add hl, bc
    jp nz, $31fe

    rst $38
    ld [$0cff], sp
    rst $38
    di
    di
    cp c
    nop
    nop
    nop

jr_04f_552a:
    nop
    or b
    nop
    dec de
    ld bc, $c000
    ld l, l
    ld a, [bc]
    add d
    add d
    ld b, e
    push bc
    daa
    push hl
    dec e
    ei
    adc l

jr_04f_553c:
    ei
    ld [hl], c
    add [hl]
    ld bc, $016b
    jr jr_04f_553c

    add a
    nop
    ld c, h
    add l
    or d
    and e
    db $ed
    add [hl]
    nop
    ld h, b
    rra
    rlca
    rlca
    inc b
    rrca
    add hl, bc
    ccf
    ld sp, $627f
    ld a, a
    inc l
    ld a, a
    ret nc

    ld a, a
    adc a
    cp $b2
    ld a, [hl]
    ld c, d
    db $fd
    and h
    ld a, [hl]
    sub h
    ld a, l
    sub h
    cp $a4
    ld a, a
    ld c, d
    cp $b2
    ld a, a

jr_04f_556f:
    add $91
    inc bc
    rra
    ld de, $090f
    add e
    xor l
    inc de
    inc bc
    ld [bc], a
    pop bc

jr_04f_557c:
    pop bc
    jr nc, jr_04f_556f

    ld [$c0f8], sp
    ret nz

    di
    daa
    rst $38
    jr @+$01

    call nc, $22ff
    rst $38
    and c
    call nz, $f400
    ret


    add c
    inc b
    jr c, jr_04f_557c

    rst $20
    ld [bc], a
    inc bc
    or e
    sbc a
    dec bc
    db $fd
    add a
    db $fd
    ld b, a
    ld sp, hl
    cpl
    pop af
    rra
    ld [c], a
    cp $02
    cp $ad
    rst $38
    inc e
    ld hl, sp-$78
    cp $46
    cp $35
    cp $0b
    rst $38
    pop af
    ld a, [hl]
    ld c, [hl]
    ld a, a
    ld d, e
    ld a, a
    dec h
    cp [hl]
    add hl, hl
    ld a, [hl]
    add hl, hl
    cp a
    dec h
    ld a, a
    ld d, e
    cp $4e
    rst $38
    pop af
    cp $c2
    sub l
    and a
    rst $38
    ld bc, $c0c0
    add a
    ld bc, $18b8
    ld a, a
    ld h, d
    rst $38
    xor h
    rst $38
    ld d, b
    rst $38
    adc a
    cp $b2
    cp $ca
    db $fd
    and h
    cp $14
    db $fd
    inc d
    cp $a4
    rst $38
    jp z, $b2fe

    rst $38
    call nz, $0991
    ld a, a
    ld h, d
    inc b
    ld b, a
    add h
    ld b, a
    ld [bc], a
    ld b, e
    adc e
    inc hl
    add a
    nop
    add sp, $43
    ld b, b
    call nz, $8103
    add h
    and d
    adc b
    add a
    ld bc, $a848
    cp a
    add h
    rst $28
    ld [bc], a
    cp a
    jr z, jr_04f_568d

    call nz, $0181
    rst $38
    ld c, [hl]
    and a
    cp a
    add e
    nop
    ret nc

    dec b
    add b
    sub b
    inc c
    inc l
    inc b
    inc h
    add l
    nop
    jp c, $8fa4

    inc b
    ld de, $6860
    ld b, b
    ld c, b
    add l
    ld bc, $ff3a
    ld h, l
    dec d
    ld [$0408], sp
    inc c
    inc e
    inc e
    ld a, [de]
    ld e, $19
    ccf
    dec [hl]
    ccf
    jr c, jr_04f_567d

    inc a
    ccf
    ld a, [hl-]
    ccf
    inc e
    ccf
    rra
    inc e
    ld b, e
    rra
    db $10
    ld [bc], a
    rrca
    inc bc
    ld c, $43
    rrca
    rlca
    ld [hl+], a
    rlca
    nop
    inc bc
    ld b, e
    inc bc
    ld bc, $0100
    ld l, d
    ld bc, $0001
    ld [hl+], a
    ld bc, $0301

jr_04f_5661:
    inc bc
    push bc
    sub [hl]
    nop
    rlca
    inc hl
    rrca
    inc bc
    rra
    ld c, $1f
    ld e, $44
    ld e, $1c
    ld [hl+], a
    ld e, $02
    rra
    ld a, [bc]
    rrca
    ld [hl], l
    inc hl
    add b
    ld c, $40
    ret nz

    ret nz

jr_04f_567d:
    nop
    ret nz

    jr nz, jr_04f_5661

    jr nz, @-$5e

    ldh [rNR41], a
    ldh [$90], a
    ldh a, [rNR10]
    ld b, h
    ldh a, [$90]
    rlca

jr_04f_568d:
    pop de
    di
    rst $08
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld [hl+], a
    ld a, a
    ld h, $ff
    ld b, e
    ld a, a
    rst $38
    ld de, $f8bf
    cp a
    or $bf
    rst $28
    cp a
    xor $bf
    db $e4
    ccf
    pop af
    ld a, a
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, b
    ld a, h
    ld h, $78
    ld b, $7c
    ld a, b
    ld a, [hl]
    ld [hl], h
    ld a, [hl]
    inc a
    inc a
    db $ec
    add hl, hl
    ld b, $f8
    db $fc
    ld d, h
    rst $38
    xor e
    rst $38
    rst $10
    jr nc, @+$01

    dec bc
    db $fc
    ld a, a
    xor $7f
    ldh a, [rSVBK]
    ldh [$e0], a
    ret nz

    pop bc
    add c
    add c
    add e
    nop
    ld a, $07
    ld bc, $0603
    rlca
    dec b
    rlca
    inc bc
    rlca
    ld h, a
    rrca
    ldh [$e0], a
    sbc b
    ld hl, sp-$3c
    db $fc
    ld h, e
    ld a, a
    ld a, a
    ld a, h
    ccf
    jr nc, jr_04f_572b

    ld sp, $1b1f
    jp Jump_04f_4a00


    inc bc
    inc bc
    inc bc
    nop
    ld bc, $00a7
    ld l, l
    nop
    inc bc
    add l
    nop
    ld b, b
    ld [bc], a
    rrca
    rra
    ccf
    and l
    nop
    sbc b
    ld b, $fd
    rst $38
    cp $ff
    db $fc
    rst $38

jr_04f_570e:
    cp $a9
    rst $18
    ld bc, $cfff
    ld b, e
    rst $38
    rst $30
    nop
    cp $44
    rst $30
    db $fd
    ld [$e3f5], sp
    ld a, [c]
    ld h, e
    db $e3
    add c
    pop bc
    nop
    add c
    sub e
    nop
    ld h, b
    db $10
    ret nz

jr_04f_572b:
    ld b, b
    jr nz, jr_04f_570e

    nop
    ldh [$90], a
    ldh a, [$80]
    ldh a, [$c8]
    ld hl, sp-$18
    cp $7f
    rst $38
    ld a, a
    rst $00
    ret z

    ld [$e7cf], sp
    rst $00
    ei
    rst $10
    rst $38
    db $d3
    rst $38
    db $e3
    add l
    nop
    sbc b
    db $10
    sbc a
    rst $38
    dec bc
    rst $38
    ld [$48f8], sp
    ld hl, sp-$58
    ld hl, sp+$50
    ld hl, sp-$50
    ldh a, [$d0]
    ldh a, [$a0]
    ld b, e
    ldh a, [$e0]
    nop
    ld h, b
    ld b, [hl]
    ldh [$a0], a
    nop
    ld h, b
    and e
    nop
    ld c, b
    rlca
    ld hl, sp-$04
    ld a, [c]
    cp $4a
    cp $7c
    ld a, h
    ld h, e
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $07
    ld b, e
    dec c
    rrca
    ld b, e
    dec e
    rra
    rla
    add hl, de
    rla
    inc a
    inc hl
    ld a, $22
    ld a, $3a
    ld [hl-], a
    ld a, $74
    ld a, h
    db $e4
    db $fc
    ldh [$38], a
    ld [hl], b
    ret c

    or h
    db $ec
    db $f4
    inc e
    ld [c], a
    cp $43
    adc $fa
    ld b, e
    adc h
    db $f4
    add hl, bc
    add sp, -$08
    ret c

    ld hl, sp-$10
    ldh a, [$c0]
    ldh [$80], a
    add b
    db $ec
    daa
    adc d
    ld bc, $a800
    nop
    dec l
    nop
    inc bc
    ld b, e
    inc bc
    ld [bc], a
    ld h, $03
    ld b, h
    ld bc, $cf03
    nop
    ccf
    and h

jr_04f_57be:
    ld bc, $0188
    rlca
    rra
    adc c
    ld bc, $035c
    scf
    ccf
    rlca
    ld c, $44
    rlca
    dec c
    inc b
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    sub b
    xor l
    nop
    nop
    add e
    nop
    ld [hl], h
    inc c
    jr nz, jr_04f_57be

    nop
    ldh a, [rNR10]
    ldh a, [$80]
    ld hl, sp-$08
    adc b
    ld hl, sp+$08
    ldh [$c3], a
    ld bc, $05fd
    db $fc
    db $f4
    db $fc
    ld [hl], h
    ld a, [hl]
    ld l, [hl]
    ld [hl+], a
    ld a, a
    sub c
    ld bc, $009c
    ld a, a
    and h
    ld bc, $0353
    xor a
    rst $38
    ld d, e
    rst $38
    add a
    nop
    nop
    ld b, e
    inc d
    inc e
    nop
    jr c, jr_04f_5851

    ld a, $3a
    dec b
    ld a, d
    ld b, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld [hl], d
    ld b, l
    ld [hl], h
    ld a, h
    inc bc
    ld [hl], b
    db $fc
    ldh [$f8], a
    ldh a, [rNR44]
    ld bc, $07fc
    inc a
    ld a, a
    rst $38
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    add e
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $02d0
    ld a, c
    ld bc, $0301
    and h
    ld bc, $00ad
    rst $38
    add e
    ld bc, $0370
    pop bc
    pop bc
    ld b, b
    pop hl
    rst $00
    ld bc, $8c23
    ld [bc], a
    ret nz

    ld b, $df
    rst $38
    rst $08
    rst $30
    rst $18
    rst $38
    rst $10

jr_04f_5851:
    adc e
    ld [bc], a
    call nc, $ff8d
    dec b
    jp nz, $c6fe

    ld a, [$fc8c]
    sub c
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [hl+], a
    ld c, $1a
    ld a, [de]
    ld e, $18
    ld a, $34
    ld a, $38
    ld a, $34
    ld a, [hl]
    ld a, b
    ld a, [hl]
    ld [hl], h
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    ld a, [hl]
    ld b, e
    inc a
    daa
    inc a
    cpl
    ld e, $22
    rra
    add e
    ld bc, $0132
    ld bc, $8303
    nop
    ld [hl], c
    ld bc, $c000
    add e
    ld [bc], a
    xor b
    nop
    sub c
    add h
    nop
    adc e
    rst $38
    ld l, a
    ld [$0301], sp
    ld [bc], a
    inc b
    nop
    ld [$0800], sp
    ld bc, $1044
    ld de, $030c
    db $10
    dec bc
    ld [$080f], sp

jr_04f_58ad:
    inc bc
    db $10
    dec e
    ld d, $0f
    add hl, bc
    inc bc
    ld b, [hl]
    inc b
    rlca
    rlca
    rrca
    inc c
    ld d, $15
    rlca
    dec c
    inc bc
    ld b, $49
    inc bc
    ld [bc], a
    inc h
    ld [bc], a
    inc b
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $c488
    inc d
    ld b, $0e
    add hl, bc
    inc de
    rra
    ld l, $7e
    ld c, h
    db $fc
    cp $73
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    inc e
    jp hl


    jr z, @+$45

    db $e4
    inc l
    add hl, bc
    db $ec
    inc a
    ret c

    inc a
    rst $20
    jr jr_04f_58ad

    ld b, b
    ld a, a
    add b
    ld b, a
    rst $38
    nop
    rlca
    di
    adc h
    ld h, e
    ld d, [hl]
    ld h, e
    sbc $ff
    adc h
    ld b, l
    rst $38
    nop
    ld b, e
    ld a, a
    add b
    add hl, bc
    cp [hl]
    ld b, b
    xor $30
    rst $38
    ld c, $71
    sub c
    ldh [$e0], a
    ld h, c
    jr jr_04f_5918

    rrca
    ccf
    ld [hl], b
    ldh a, [$8f]
    add b
    ld a, a

jr_04f_5918:
    ld hl, sp-$01
    inc bc
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    jr jr_04f_5941

    add a
    rst $00
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rSCX]
    ld [$44f8], sp
    inc b
    db $fc
    ld b, h
    cp $02
    db $10
    inc bc
    rst $38
    ld bc, $00ff
    ld sp, hl
    ld b, $f1
    dec bc
    sub c
    ld l, a
    rra
    or [hl]
    rra

jr_04f_5941:
    ldh a, [rIE]
    ld h, b
    ld c, c
    rst $38
    nop
    ld b, h
    ccf
    nop
    rla
    inc b
    ccf
    inc b
    sbc a
    ld h, a
    adc b
    sbc b
    ld [hl], b
    ld [hl], b
    add b
    add b
    ldh a, [rSVBK]
    ld a, $ce
    rlca
    ld sp, hl
    nop
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    ld b, $83
    or [hl]
    dec b
    rst $38
    ldh [rIE], a

jr_04f_5969:
    ld e, $1f
    ld bc, $00cd
    db $10
    ld bc, $0080
    ld b, e
    ld b, b
    add b
    nop
    add b
    ld b, e
    ret nz

    ld b, b
    add e
    db $ed
    inc bc
    db $fc
    rrca
    db $fc
    inc b
    ld b, e
    rst $38

jr_04f_5983:
    ld [bc], a
    ld b, [hl]
    rst $38
    ld bc, $d784
    dec b
    rst $20
    sbc b
    ld b, e
    ld h, l
    ld a, $3e
    add [hl]
    xor [hl]
    and e
    nop
    db $10
    ld d, $e0
    jr nc, jr_04f_5969

    jr jr_04f_5983

    adc b
    ld hl, sp+$44
    db $fc
    inc h
    db $fc
    inc d
    db $fc
    add h
    db $fc
    ld h, d
    ld a, [hl]
    ld [de], a
    ld e, $0a
    ld c, $04
    inc b
    ld [hl], h
    nop
    add b
    ld b, l
    ret nz

    ld b, b
    inc hl
    add b
    ld bc, $0000
    daa
    add b
    ld h, e
    adc b
    nop
    jr nz, jr_04f_59c5

    rrca
    rlca
    rlca
    inc bc

jr_04f_59c3:
    rlca
    rlca

jr_04f_59c5:
    inc b
    add a
    nop
    ld h, b
    dec b
    rst $38
    inc b
    ld sp, hl
    jr jr_04f_59c3

    inc a
    add a
    nop
    ld l, [hl]
    add a
    nop

jr_04f_59d5:
    adc h
    ld a, [de]
    rst $38
    nop
    ld bc, $0400
    ld b, $1b
    jr @+$22

    daa
    ld d, e
    ld c, a
    ld h, [hl]
    ld e, l
    adc h
    cp e
    ret nc

    or a
    and c
    xor $a3
    ld l, l
    ld b, a
    ld e, e
    ld b, h
    ld e, h
    ld c, b
    ld [hl+], a
    jr z, jr_04f_59d5

    add hl, hl
    inc d
    inc [hl]
    dec hl
    ld a, [hl+]
    inc hl
    ld h, $23
    jr nz, @+$09

    jr nz, @+$1d

    db $10
    rlca
    db $10
    inc c
    ld [$0b0b], sp
    dec b
    ld b, $00
    ld hl, sp+$38
    rlca
    ld c, $f0
    ldh a, [$c3]
    add [hl]
    ld a, b
    nop
    rst $38
    rra
    rst $20
    ld hl, sp+$38
    ret nz

    ldh [$7c], a
    cp $3f
    ld bc, $7f43
    nop
    dec bc
    db $fd
    inc b
    ld sp, hl
    ld [$18f8], sp
    db $f4
    inc [hl]
    db $f4
    inc a
    db $ed
    inc e
    rst $00
    nop
    add b
    ld bc, $40bf
    ld h, c
    dec c
    ld b, b
    add b
    jr jr_04f_5a3c

jr_04f_5a3c:
    ld b, [hl]
    add b
    add hl, bc
    jr nc, jr_04f_5a67

    ret nz

    push bc
    jr c, @+$03

    ld b, $87
    ld bc, $8372
    ld bc, $0322
    ld hl, sp+$08
    ld hl, sp+$04
    adc d
    ld bc, $030f
    nop
    and b
    nop
    db $10
    and [hl]
    sbc a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add e
    nop
    inc de
    dec de
    ld a, [bc]
    rla
    ld b, $1c

jr_04f_5a67:
    inc de
    ld c, [hl]
    ccf
    jr jr_04f_5a6c

jr_04f_5a6c:
    adc $3f
    ld bc, $1700
    rrca
    inc bc
    nop
    inc l
    rra
    rlca
    nop
    ret nc

    ccf
    ld c, $00
    and b
    ld a, a
    rra
    ld h, c
    ld bc, $991e
    add h
    xor l
    inc bc
    inc e
    ld a, [hl]
    cp a
    add c
    adc c
    rst $38
    rra
    jr nc, jr_04f_5a67

    ld [$cff8], sp
    jr c, @+$09

    db $fc
    ld [hl], a
    inc c
    rlca
    db $f4
    jp $0708


    db $fc
    adc a
    inc [hl]
    inc bc
    ld hl, sp+$3b
    inc c
    dec bc
    adc $13
    cp $1f
    inc e
    rst $38
    nop
    ld a, a
    ld b, b
    call nz, $1cae
    add b
    adc h
    ld [hl], b
    ld [bc], a
    inc c
    adc h
    di
    add b
    inc b
    add [hl]
    ld sp, hl
    ldh [rSB], a
    add e
    db $fc
    ldh a, [rSB]
    pop bc
    ld a, [hl]
    ld hl, sp+$20
    add sp, $17
    ldh a, [$08]
    ld hl, sp+$07
    ld b, b
    add b
    ld h, c
    dec d
    jr nc, @-$3e

    add b
    nop
    ld [$c0f0], sp
    nop
    inc b
    ld hl, sp-$20
    nop
    adc b
    ld [hl], b
    ld h, b
    add b
    ld [$3070], sp
    add b
    ret nz

    ldh [$85], a
    ld bc, $871a
    ld bc, $03a0
    rst $20
    nop
    rst $08
    nop
    ld b, e
    rst $18
    nop
    inc bc
    db $fd
    inc hl
    rst $18
    ld a, $8b
    nop
    ld [hl], h
    rst $38
    ld h, c
    inc d
    jr nc, jr_04f_5b70

    ld c, h
    ld c, h

Jump_04f_5b02:
    inc hl
    inc hl
    inc de
    db $10
    ld de, $0a10
    ld [$0405], sp
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    jr jr_04f_5b1b

    dec b
    rlca
    ld b, $07

jr_04f_5b1b:
    inc b
    rlca
    add hl, bc
    rrca
    dec bc
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    jr jr_04f_5b2f

    ld h, $21
    ld hl, $4000
    ld b, c

jr_04f_5b2f:
    and e
    sbc e
    nop
    jr nz, @+$25

    db $10
    inc bc
    ld de, $0e11
    ld c, $ec
    ld h, $1a
    ld bc, $c1c1
    cp $3e
    db $d3
    jr c, @-$3b

    ld h, h
    rst $00
    adc b
    rlca
    dec bc
    rrca
    rrca
    dec b
    dec b
    inc bc
    inc bc
    pop bc
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    and h
    db $dd
    nop
    ld b, b
    inc hl
    add b
    rrca
    ld b, b
    ld b, b
    ldh [$e0], a

jr_04f_5b63:
    or b
    db $10
    ld a, h
    inc c
    cp e
    rlca
    ld d, [hl]
    ld bc, $032f
    inc d
    inc b
    and l

jr_04f_5b70:
    pop hl
    add hl, bc
    ld bc, $0201
    ld b, $08
    ld [$1000], sp
    ld [$2308], sp
    inc b

jr_04f_5b7e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    adc $cb
    add hl, de
    jr nc, @+$72

    adc c
    adc e
    inc b
    inc b
    pop af
    ldh a, [rNR34]
    inc c
    rst $38
    inc bc
    rst $28
    jr nz, jr_04f_5b63

    ldh [rTAC], a
    db $10
    add c
    sub b
    sub b
    add b
    and b
    add b
    jp $d900


    db $f4
    inc bc
    ldh [$e0], a
    rrca
    rra
    ld h, e
    ld a, [bc]
    inc sp
    ld [hl], e
    adc a
    adc h
    inc de
    ld bc, $020f
    dec d
    inc b
    ld a, [bc]
    ld h, e
    ld b, $08
    jr @+$1a

    jr z, jr_04f_5be2

    ret nc

    ret nc

    ld h, c
    inc bc
    ld d, $16
    ld bc, $6b09
    ldh [rNR42], a
    add c
    add e
    inc b
    ld b, h
    ret z

    ld c, b
    ld [hl], b
    jr nc, jr_04f_5b7e

    sub b
    ldh a, [$60]
    add sp, $20
    push af
    ld b, b
    ld l, d
    ld b, b
    db $fd
    add b
    db $fd
    nop
    ld a, [$f500]
    nop
    ld a, [hl+]
    jr nz, jr_04f_5bff

jr_04f_5be2:
    jr jr_04f_5beb

    rlca
    inc bc
    nop
    ld b, e
    ld bc, $0000

jr_04f_5beb:
    inc bc
    ld h, c
    dec de
    inc bc
    ld [bc], a
    dec b
    dec c
    ld a, [bc]
    ld [hl-], a
    dec a
    call $0bca
    inc c
    scf

jr_04f_5bfa:
    jr c, jr_04f_5bfa

    ret nc

    db $fd
    db $10

jr_04f_5bff:
    ld a, [$f520]
    ret nz

    add sp, $00
    ld d, b
    nop
    and b
    nop
    ld b, b
    add a
    nop
    ld h, b
    ld a, [bc]
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    rlca
    rlca
    add h
    add h
    jr c, jr_04f_5c91

    xor b
    nop
    ld e, a
    nop
    add b
    add e
    nop
    inc [hl]
    nop
    nop
    ld [hl+], a
    db $10
    inc bc
    inc c
    ld c, $a1
    ld bc, $00a4
    or c
    ldh [$29], a
    ld bc, $0202
    add d
    ld [bc], a
    ld b, b
    ld bc, $0181
    pop bc
    pop hl
    adc $5e
    ret nz

    ld b, b
    adc [hl]
    adc a
    rst $30
    ld hl, sp-$73
    ldh a, [rNR30]
    ldh [$ad], a
    ld d, b
    ld e, d
    and b
    and l
    ld d, b
    ld e, d
    xor b
    cp h
    ld c, b
    ret c

    ld [hl+], a
    cp [hl]
    ld [bc], a
    ld e, a
    ld bc, $00ab
    ld d, l
    and l
    reti


    ld bc, $0080
    and h
    nop
    dec d
    add hl, bc
    add b

jr_04f_5c63:
    add b
    inc b
    inc c
    inc de
    inc de
    ld h, b
    ld h, b
    nop
    add b
    cp e
    nop
    ld c, h
    nop
    add b
    sub d
    sbc l
    dec bc
    ret nz

    ret nz

    ldh [rNR41], a
    or b
    jr jr_04f_5ccb

    inc b
    and h
    inc b
    ld [$8508], sp
    nop
    xor d
    ld [$0404], sp

jr_04f_5c86:
    sbc b
    sbc b
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    add h
    nop
    dec [hl]
    nop

jr_04f_5c91:
    nop
    inc h
    ld [$3001], sp
    jr nc, jr_04f_5c63

    ld bc, $0189
    nop
    nop
    add a
    nop
    stop
    inc bc
    and h
    nop
    ld a, e
    dec c
    dec c
    inc de
    dec bc
    rla
    dec de
    rla
    dec c
    inc de
    rrca
    ld [$0603], sp
    ld bc, $8319
    nop
    inc l
    adc b
    nop
    ld [hl], b
    rlca
    add e
    pop bc
    ld h, b
    ldh [rNR10], a
    ld [hl], b
    sub b
    or b
    ld b, e
    ret z

    ld hl, sp+$00
    adc b
    and e
    sbc a
    add l

jr_04f_5ccb:
    nop
    adc d
    ld [bc], a
    nop
    ld b, b
    ld b, c
    ld h, $40
    inc bc
    ld h, $26
    add hl, de
    add hl, de
    ld h, c
    inc b
    ld sp, $0231
    ld [bc], a
    nop
    and [hl]
    db $ed
    inc bc
    nop
    db $10
    ld b, $0f
    adc e
    nop
    ldh a, [rTIMA]
    jr c, @+$3a

    ld b, a
    rst $00
    ldh [$e4], a
    sub c
    nop
    or b
    add e
    ret


    dec b
    ld bc, $2441
    ld h, $18
    jr jr_04f_5c86

    sub d
    inc bc
    ld b, b
    ld h, b

jr_04f_5d01:
    db $10
    jr @-$79

    nop
    xor [hl]
    add l
    ld bc, $0792
    ld [bc], a
    inc bc
    inc b
    inc b
    add h
    inc b
    ld b, b
    ld [bc], a
    adc b
    ld bc, $43c0
    ld b, b
    nop
    ld [hl+], a
    jr nz, jr_04f_5d20

    ld e, b
    ld a, b
    ld b, h
    ld b, h
    add e

jr_04f_5d20:
    add e
    sub d
    ld bc, $09f6
    ret nz

    ret nz

    jr nc, jr_04f_5d01

    ld [$04ac], sp
    ld d, h
    inc b
    and d
    inc h
    ld [bc], a
    nop
    inc c
    jp $9001


    ld [bc], a
    db $10
    and b
    and b
    add l
    ld [bc], a
    jr nz, jr_04f_5d3f

    nop

jr_04f_5d3f:
    jr nz, @-$79

    ld bc, $048a
    db $10
    db $10
    call nz, $0480
    ld b, e
    ld [$0107], sp
    inc b
    ld [bc], a
    add [hl]
    nop
    ld a, c
    inc b
    rst $28
    db $10
    rst $30
    db $10
    pop af
    call nz, $8585
    nop
    jp c, Jump_04f_61ff

    dec de
    jr jr_04f_5d9a

    rlca
    ld b, a
    ld h, c
    ld h, b
    ld [c], a
    and b
    push af
    or b
    ld a, d
    ld [hl], b
    ld a, a
    ld e, b
    ld a, a
    ld e, h
    ccf
    ld l, $1f
    cpl
    rra
    rla
    rrca
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    inc hl
    ld bc, $0301
    ld [bc], a
    ld b, e
    rlca
    inc b
    dec b
    rrca
    ld [$0b0f], sp
    inc c
    inc c
    db $ec
    scf
    ldh [$27], a
    ret nz

    ret nz

    ldh a, [$30]
    ld a, b
    ld [$07fc], sp
    ldh a, [$0c]
    pop hl

jr_04f_5d9a:
    db $10
    jp $8720


    ld b, [hl]
    adc c
    ld c, e
    adc c
    adc a
    rst $00
    add [hl]
    add a
    ret nz

    rst $20
    ret nz

    cpl
    and b
    cpl
    ldh [$ef], a
    ld h, b
    rst $38
    ld b, b
    db $db
    ld l, h
    xor a
    ld [hl], b
    adc e
    adc h
    add l
    pop af
    ld bc, $0101
    ld b, l
    inc bc
    ld [bc], a
    ld bc, $0302
    ld b, e
    ld b, $05
    ld b, l
    inc b
    rlca
    ret


    adc h
    ld h, c
    ld bc, $0000
    add e
    add a
    ld [hl], c
    inc bc
    ld h, c
    pop hl
    ld a, e
    ld e, $43
    rst $38
    inc b
    dec b
    db $fd
    ld [$08fa], sp
    db $fd
    nop
    ld b, e
    rst $38
    nop
    dec d
    xor a
    inc e
    scf
    inc [hl]
    ccf
    ld a, b
    ld l, a
    ldh a, [$fd]
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add c
    cp $03
    db $fc
    add a
    ld a, b
    ld c, c
    rst $38
    nop
    inc c
    rst $20
    db $10
    ei
    db $10
    rst $30
    sub b
    ei
    sub b
    ld [hl], a
    ret nc

    ccf
    ldh a, [$3f]
    ld b, [hl]
    ldh a, [$1f]
    ld b, e
    sbc a
    pop af
    rlca
    rst $38
    ld de, $e32f
    or $ea
    inc e
    inc e
    rst $00
    sbc $13
    rrca
    ld c, $3f
    jr nc, jr_04f_5ea1

    ld b, b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rlca
    cp a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    ld b, $fe
    rst $38
    ld a, c
    cp $76
    ld a, b
    adc b
    ld b, e
    db $fc
    inc b
    add hl, bc
    cp $82
    cp [hl]
    jp nz, $a4bc

    sbc h
    sub h
    adc b
    adc b
    ld b, e
    ret nz

    ld b, b
    xor b
    nop
    ld [hl+], a
    inc e
    ld [$04fc], sp
    cp $03
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $30
    ld e, b
    jp $81e0


    ret nz

    add e
    ret nz

    and a
    ret nz

    rst $38
    ret nz

    ld l, a
    ldh a, [$e7]
    adc c
    ld a, [hl]
    ld a, [hl]
    ld h, l
    dec bc
    jr c, jr_04f_5ea9

    db $fc
    call nz, $0cfc
    db $fc
    inc [hl]
    db $fc
    ld [hl], h
    db $fc
    db $f4
    ld b, l
    ld hl, sp-$18
    ld bc, $d0f0
    and h
    nop
    jr jr_04f_5e85

jr_04f_5e85:
    ld b, b
    and l
    nop
    cp b
    dec bc
    jr jr_04f_5ec4

    inc c
    ld b, h
    ld b, [hl]
    ld b, d
    ld l, a
    ld b, c
    ccf
    ld hl, $101f
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    ld b, e

jr_04f_5e9d:
    inc bc
    ld [bc], a
    adc c
    nop

jr_04f_5ea1:
    or [hl]
    rrca
    add c
    add c
    pop bc
    ld b, c
    db $e3
    ld [hl+], a

jr_04f_5ea9:
    rst $28
    inc l
    rst $18
    jr nc, jr_04f_5e9d

    db $10
    rst $38
    ld de, $1efe
    and e
    and e
    db $dd
    nop
    ld h, a
    add hl, bc
    db $10
    ld [hl], b
    ld [$9888], sp
    adc b
    ld hl, sp-$78
    db $fc
    add h
    ld b, e

jr_04f_5ec4:
    ld a, h
    ld b, h
    ld bc, $427e
    ld b, e
    ld a, $22
    ld bc, $213f
    ld b, e
    sbc a
    sub c
    ld b, e
    rst $18
    ld d, c
    inc bc
    rst $28
    ld sp, $21cf
    ld b, e
    xor $02
    ld bc, $02ce
    ld b, e
    sbc h
    call nz, $bc04
    add h
    jr c, jr_04f_5ef0

    ld a, b
    and [hl]
    ld sp, hl
    ld bc, $40c0
    xor a
    nop

jr_04f_5ef0:
    cp b
    inc bc
    ld bc, $0301
    ld b, $c6
    ld bc, $02b2
    ld d, $09
    add hl, bc
    ld h, c
    inc b
    cpl
    and b
    cp a
    ldh [rIE], a
    add l
    nop
    add l
    ld b, $f0
    dec bc
    ld c, $04
    rlca
    inc bc
    inc bc
    adc l
    nop
    sub d
    ld [bc], a
    ld h, a
    inc h
    ld a, a
    add a
    nop
    db $e3
    ld [$f00f], sp
    ccf
    pop bc
    cp $b6
    ld c, [hl]
    ld a, h
    add h
    ld b, e
    cp $02
    add hl, bc
    rst $38
    add c
    cp a
    pop hl
    sbc a
    sbc c
    add [hl]
    add [hl]
    add b
    add b
    adc l
    ld bc, $8a52
    ld bc, $0390
    ld b, c
    add b
    add d
    nop
    add h
    ld bc, $06b3
    ld bc, $0103
    inc b
    dec b
    inc b
    rlca
    add h
    add e
    nop
    inc bc
    add l
    ld bc, $85b5
    ld bc, $8db9
    nop
    cp c
    ld [bc], a
    add b
    ld b, b
    ld b, b
    add e
    jp $f843


    ld [$fc05], sp
    add h
    db $fc
    call nz, $c2fe
    ld b, e
    cp $62
    dec de
    rst $18
    ld d, c
    rst $38
    ld sp, $31ef
    rst $18
    ld hl, $02fe
    xor $02
    cp $02
    sbc h
    call nz, $0602
    rlca
    add hl, bc
    inc bc
    db $10
    inc de
    db $10
    rrca
    ld [$0603], sp
    dec h
    ld bc, $c98e
    ld [$8c38], sp
    call nz, $44dc
    ld hl, sp+$24
    ldh a, [rNR23]
    add [hl]
    rst $00
    ld [bc], a
    ld b, h
    db $fc
    ld b, h
    ld b, e
    cp $22
    inc c
    sbc $a2
    cp $82
    sbc $82
    sbc h
    call nz, $80ef
    xor a
    ret nz

    rst $18
    adc d
    nop
    add l
    adc l
    nop
    ret nc

    rlca
    cp a
    nop
    ccf
    inc b
    ld a, a
    ld [$70ff], sp
    adc c
    nop
    and $ff
    ld l, e
    ld bc, $0101
    db $ec
    ld b, l
    dec b
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld l, e
    inc bc
    inc c
    inc e
    inc hl
    ld h, e
    and e
    db $dd
    inc bc
    ldh [$e0], a
    ld e, $1e
    adc a
    push hl
    ld b, $01
    ld bc, $0303
    rlca
    rlca
    dec bc
    ld [hl+], a
    ld a, [bc]
    dec c
    rla
    dec d
    ld d, $17
    daa
    dec h
    daa
    inc h
    inc hl
    ld [hl+], a
    ld b, e
    ld b, d
    ld b, c
    ld b, c
    daa
    ld b, b
    dec d
    ld h, b
    ld b, b
    inc h
    jr nz, jr_04f_6019

    inc h
    inc h
    inc [hl]
    inc h
    ld a, $24
    ccf
    inc a
    ccf
    rra
    rra
    ld l, a
    ld a, a
    and a
    cp a
    inc a
    inc a
    xor c
    rst $18
    ld de, $0f0f
    ld sp, $6330
    ld b, b
    rst $38
    jp $243c


    rra
    inc de

jr_04f_6019:
    rra
    db $10
    ccf
    jr nz, @+$01

    ret nz

    ld b, e
    rst $38
    add b
    ldh [rNR44], a
    ld a, a
    ld b, b
    ccf
    jr nz, jr_04f_6048

    jr jr_04f_605a

    ccf
    ld d, a
    ld a, a
    xor a
    rst $38
    rst $10
    cp [hl]
    xor a
    inc a
    ld a, a
    db $10
    cp a
    nop
    rst $38
    rst $00
    cp d
    rst $28
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$18
    ldh [$e0], a

jr_04f_6048:
    inc hl
    ld b, b
    dec h
    add b
    ld a, [bc]
    adc b
    add b
    add b
    adc b
    adc b
    adc c
    adc b
    sbc a
    adc b
    rst $38
    adc a
    inc h
    rst $38

jr_04f_605a:
    rlca
    db $76
    rst $38
    ld [$1309], sp
    inc de
    inc e
    inc e
    push bc
    ldh [$0b], a
    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    call nz, $e4fc
    sbc $d2
    cp $f2
    ld b, l
    rst $38
    inc bc
    ld a, [bc]
    db $fd
    rlca
    cp $06
    ld a, [$f10e]
    ccf
    db $fd
    rst $38
    cp $24
    rst $38
    rrca
    ld hl, sp+$78
    ld hl, sp+$38
    ldh [rNR11], a
    ldh a, [rNR13]
    ldh a, [$92]
    ldh [rNR52], a
    ret nz

    ld b, e
    add b
    add c
    adc d
    nop
    ld a, b
    inc c
    inc bc
    rlca
    ld c, $9e
    ld [$8819], sp
    adc a
    sbc b
    adc b
    ld hl, sp-$71
    ld hl, sp-$3d
    xor e
    rlca
    ldh a, [rIE]
    add c
    rst $38
    ld c, $fe
    ld [hl], b
    ldh a, [$b7]
    nop
    inc c
    rla
    add b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    add sp, -$08

jr_04f_60bc:
    ld d, h
    ld a, h
    inc hl
    ccf
    db $10
    rra
    adc b
    adc a
    add h
    add a
    ld b, d
    jp $c1c1


    ld b, b
    ld b, b
    ld [hl+], a
    jr nz, @+$10

    and b
    db $10
    ret nc

    db $10
    ld [hl], b
    db $10
    jr nc, jr_04f_60e7

    sub b
    ld d, b
    sub b
    jr nz, jr_04f_60bc

    jr nz, @+$62

    and e
    nop
    ld d, [hl]
    ld b, e
    ret nz

    ld b, b
    ld [bc], a
    ld b, b
    ld b, b

jr_04f_60e7:
    ret nz

    add [hl]
    nop
    db $fd
    rlca
    ld hl, sp-$08
    add [hl]
    or $1c
    db $fc
    ldh [$e0], a
    db $ec
    daa
    ld de, $8080
    ld b, b
    ret nz

    jr nz, @-$1e

    jr @-$06

Jump_04f_60ff:
jr_04f_60ff:
    inc b
    db $fc
    add d
    cp $42
    ld a, [hl]
    inc h
    inc a
    jr @+$1a

    db $ec
    cpl
    add l
    nop
    ld h, [hl]
    dec b
    ld h, b
    ld h, b
    jr jr_04f_612b

    inc b
    inc b
    push bc
    nop
    ld d, a
    dec bc
    rlca
    rlca
    ret c

    ret c

    inc sp
    jr nz, @+$21

    ld de, $121e
    rra
    ld de, $0089
    ret nc

    add a
    nop
    ret c

jr_04f_612b:
    adc c
    ld bc, $0720
    ld a, h
    ld h, h
    cp $f2
    xor $6a
    cp $0a
    ld b, h
    cp $02
    nop
    ld b, $83
    ld bc, $0338
    push af
    ccf
    ei
    rst $38
    inc hl
    add b
    inc hl
    ret nz

    rla
    ld h, b
    ld h, b
    jr nz, jr_04f_616d

    jr nc, jr_04f_60ff

    db $10
    ret nc

    jr @+$7a

    jr jr_04f_618d

    inc d
    sbc h
    ld d, h
    sbc h
    ld [hl-], a
    cp $22
    ld a, [hl]
    ld h, h
    ld a, h
    ret c

    ret c

    adc c
    rst $18
    ld b, e
    rra
    db $10
    ld bc, $203f
    adc b
    rst $08
    ld b, $84

jr_04f_616d:
    db $fc
    ld h, h
    cp $12
    cp $0a
    adc b
    nop
    ret nz

    ld [bc], a
    ret nz

    ccf
    daa
    ld b, e
    rra
    db $10
    adc b
    sbc a
    ld b, $04
    db $fc
    add h
    cp $e2
    cp $12
    push bc
    ld [bc], a
    ld c, a
    dec b
    add hl, bc
    dec bc

jr_04f_618d:
    ld de, $1011
    db $10
    dec h
    jr nz, jr_04f_61bf

    ld b, b
    rlca
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    inc h
    ld h, b
    jr nz, @+$66

    add l
    nop
    xor b
    dec d
    inc e
    rra
    rlca
    rlca
    sub a
    cp a
    ld l, a
    ld a, a
    rst $10
    cp [hl]
    rst $28
    inc a
    rst $38
    db $10
    rst $38
    add c
    cp $86
    ld a, b
    ld c, b
    jr nc, jr_04f_61e8

    adc e
    or e
    add a
    ld bc, $0002
    add b

jr_04f_61bf:
    add a
    ld bc, $080b
    ldh a, [rIE]
    inc bc
    cp $ff
    pop bc
    pop bc
    ld b, $07
    add a
    ld bc, $0318
    or $fb
    pop af
    pop hl
    ld [hl+], a
    ldh a, [rTMA]
    ld a, c
    ret nz

    ld h, e
    add b
    add e
    nop
    ld bc, $00cb
    ld h, e
    ld b, e
    rlca
    inc b
    ld de, $080f
    sbc a

jr_04f_61e8:
    ld [$881f], sp
    adc [hl]
    sbc b
    adc c
    ld hl, sp-$71
    ld hl, sp-$10
    ldh a, [rIE]
    nop
    rst $38
    ccf
    add e
    ld bc, $13a0
    jp nz, $41c3

    pop bc

Jump_04f_61ff:
    jr nz, jr_04f_6261

    jr nz, @+$22

    db $10
    sub b
    db $10
    ret nc

    jr nc, jr_04f_6259

    db $10
    ld [hl], b
    jr nz, jr_04f_622d

    ret nz

    ret nz

    ld b, a
    ret nz

    ld b, b
    rst $38
    ld [hl], b
    ld de, $0201
    nop
    ld b, $06
    ld e, $18
    inc l
    jr nz, @+$26

    jr nz, jr_04f_6235

    db $10
    ld c, $0c
    nop
    ld [bc], a
    nop
    call z, $0991
    rrca
    rrca
    inc de

jr_04f_622d:
    inc e
    dec e
    ld [de], a
    ld c, $0c
    inc bc
    inc bc
    ld a, c

jr_04f_6235:
    inc c
    ld bc, $0701
    ld b, $0f
    ld a, [bc]
    ld [hl-], a
    jr nz, jr_04f_6280

    ld b, b
    add b
    add b
    ld bc, $bac4
    nop
    ld bc, HeaderNewLicenseeCode
    dec b
    nop
    ld [bc], a
    ld h, d
    add hl, bc
    ret nz

    ret nz

    nop
    ld h, b
    ret nz

    ld d, b
    ld sp, $0610
    rrca

jr_04f_6258:
    and e

jr_04f_6259:
    adc e
    rrca
    inc b
    inc b
    rlca
    inc b
    db $e3
    db $e3

jr_04f_6261:
    rra
    inc e
    rlca
    nop
    inc bc
    ld bc, $e2e2
    inc e
    inc e
    add a
    cp a
    ld b, e
    inc bc
    ld [bc], a
    rst $00
    add d
    ld bc, $c0c0
    ld b, e
    and b
    jr nz, jr_04f_6259

    dec h
    jr nc, jr_04f_628c

    or b
    db $10
    ld [hl], b
    db $10

jr_04f_6280:
    cp b
    ld [$0878], sp

jr_04f_6284:
    db $fc
    ld b, h
    cp h
    and h
    inc e
    add h
    ld e, $c2

jr_04f_628c:
    ld e, $42
    or a
    ret


    rst $38
    ld de, $207f
    ld [hl], e
    jr nz, jr_04f_6258

    ld h, b
    pop bc
    pop bc
    ld b, [hl]
    ld b, [hl]
    add hl, bc
    ret z

    adc a
    adc c
    ld [hl+], a
    add [hl]
    add hl, de
    add b
    call z, $fc40
    inc b
    cp $c4
    ccf
    inc [hl]
    rrca
    ld a, [bc]
    dec b
    inc b
    ld [$3108], sp
    ld sp, $c1f1

jr_04f_62b6:
    ld a, [$fc02]
    inc b
    jr c, jr_04f_6284

    ldh a, [$a9]
    nop
    scf
    inc bc
    ld bc, $0200
    dec b
    ld h, c
    ld bc, $0804
    ld h, c
    ld h, $08
    dec h
    inc b
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $8181
    and l
    db $fd
    ld b, e
    ldh [rNR41], a
    ld bc, $2060
    ld b, l
    jr nc, jr_04f_62ef

    dec bc
    jr c, @+$1a

    ld a, a
    daa
    rst $38
    jr nc, jr_04f_62b6

    ld c, a
    add b
    add b
    add b
    add b
    ld [hl], c
    rrca
    ld [hl], b

jr_04f_62ef:
    ld a, b
    ld hl, sp-$7c
    cp h
    inc b
    ld e, h
    inc b
    or b
    inc c
    ld e, b
    ld [$1030], sp
    jr nz, jr_04f_631e

    inc hl
    ld b, b

jr_04f_6300:
    dec h
    add b
    nop
    nop
    add l
    ret


    rlca
    and b
    ld h, b
    sub b
    ld [hl], b
    ld d, b
    db $10

jr_04f_630d:
    jr z, jr_04f_6347

    ld [hl+], a
    jr z, @+$0b

    ld [$0028], sp
    ld c, b
    ld d, b
    ld d, b
    add b
    sub b
    ldh [rNR41], a
    or a
    nop

jr_04f_631e:
    jr c, @-$75

    nop
    ld [hl], b
    inc bc
    ld [$0508], sp
    ld b, $83
    nop
    sbc h
    adc l
    nop
    add d
    add l
    nop
    ret nz

    rrca
    rst $00
    rst $00
    ld c, b
    ld c, b
    rrca
    call z, $8383
    add b
    add b
    ret nz

    ldh [rNR41], a
    jr nc, jr_04f_6300

    ld b, b
    adc c
    xor a
    add e
    nop
    or b
    inc bc

jr_04f_6347:
    db $fc
    add h
    ld a, h
    add h
    ld b, e
    cp $02
    dec de
    rst $30
    add hl, bc
    rst $38
    ld de, $0100
    ld b, $00
    jr jr_04f_635f

    ld h, $18

jr_04f_635b:
    ld c, h
    jr nz, jr_04f_63c2

    nop

jr_04f_635f:
    inc h
    db $10
    ld d, $08
    db $10
    rrca
    inc hl
    inc e
    dec l
    ld [de], a
    ld [de], a
    inc c
    adc c
    nop
    scf
    inc c
    ld bc, $0600
    ld bc, $0609
    dec d
    ld a, [bc]
    ld d, d

jr_04f_6378:
    jr nz, @-$7d

    ld b, b
    nop
    add [hl]
    nop
    ld e, a
    nop
    nop
    ld b, h
    ld bc, $8304
    nop
    ld l, h
    add hl, de
    nop
    ldh [rP1], a
    jr nc, jr_04f_630d

    ld b, b
    ld h, c
    db $10
    db $10
    rrca
    db $10
    ld [$0609], sp
    ld b, $01
    pop hl
    nop
    inc e
    db $e3
    inc bc
    inc e
    rlca
    nop
    ld [bc], a
    ld bc, $0087
    adc c
    nop
    ld bc, $00c3
    ld l, l
    inc c
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    ret nz

    nop
    jr nz, jr_04f_6378

    ld b, e
    sub b
    jr nz, jr_04f_63cb

    jr z, jr_04f_63ce

    xor b
    db $10
    ld a, b
    nop

jr_04f_63c2:
    or h
    ld [$0874], sp
    cp d
    ld b, h
    ld a, d
    add h
    ld a, [hl]

jr_04f_63cb:
    add b
    ld b, e
    db $fd

jr_04f_63ce:
    ld [bc], a
    ldh [$2e], a
    rst $30
    ld [$11ee], sp
    ld e, a
    jr nz, jr_04f_642b

    jr nz, jr_04f_635b

    ld h, b
    nop
    rst $00
    nop
    ld c, b
    inc bc
    call z, $8300
    nop
    add b
    ld b, $80
    adc h

jr_04f_63e8:
    ld b, b
    ld hl, sp+$04
    ld a, [hl-]
    call nz, $34cb
    dec [hl]
    ld a, [bc]
    add hl, bc
    inc b
    jr nc, @+$0a

    ret nz

    ld sp, $c130
    ld sp, hl
    ld [bc], a
    ld a, [$3404]
    ret z

    ret z

    and h
    ld bc, $45f7
    db $10
    ld [$0c01], sp
    nop
    ld b, e
    ld [$4304], sp
    add l
    ld [bc], a
    rlca
    ld b, d
    add c
    ld b, c
    add b
    and c
    ld b, b
    and b
    ld b, b
    ld b, e
    ret nc

    jr nz, jr_04f_641d

    ld d, b

jr_04f_641d:
    jr nz, jr_04f_6464

    jr z, jr_04f_6431

    ld a, [de]
    daa
    jr jr_04f_647d

    daa
    rst $08
    jr nc, @-$4e

    ld c, a
    ld c, a

jr_04f_642b:
    add b
    ld b, b
    add b
    ld a, b
    nop
    add h

jr_04f_6431:
    ld a, b
    ld a, d
    add h
    cp d
    inc b
    ld e, d
    inc b
    or d
    inc c
    ld d, h
    ld [$a328], sp
    ld bc, $0204
    ld b, b
    ld h, b
    nop
    ld b, a
    ld b, b
    add b
    ld b, e
    and b
    ld b, b
    ld [$a050], sp
    ld l, b
    sub b
    xor b
    ld d, b
    ld d, h
    jr z, @+$56

    ld b, h
    jr z, @+$46

    rlca
    add h
    ld c, b
    adc b
    ld d, b
    ld [$d090], sp
    jr nz, jr_04f_63e8

    ld bc, $8977

jr_04f_6464:
    ld bc, $85c0
    nop
    ld a, d
    rst $38
    db $ec
    inc [hl]
    db $10
    ld bc, $0603
    rrca
    ld [$111e], sp
    ld a, $21
    inc a
    inc hl
    ld a, h
    ld b, e
    ld a, h
    ld a, e
    db $fc

jr_04f_647d:
    rst $08
    ld b, e
    db $e4
    add a
    rrca
    db $fc
    rst $08
    ld a, b
    ld a, a
    jr c, jr_04f_64af

    ld a, $2f
    rra
    add hl, de
    inc e
    db $10
    rrca

jr_04f_648f:
    add hl, bc
    rlca
    rlca
    ldh a, [rNR52]
    jp z, $0122

    inc de
    rlca
    rrca
    jr jr_04f_64b3

    ld h, $3f
    cpl
    ccf
    daa
    ccf
    dec hl
    ccf
    ld d, $1f
    ld [$830f], sp
    add e
    ret nz

    ld b, b
    ld b, e
    jr nz, jr_04f_648f

jr_04f_64af:
    ld bc, $c040
    and e

jr_04f_64b3:
    sbc [hl]
    inc c
    add c
    add e
    add a
    add h
    adc a
    sbc b
    ld a, [hl]
    pop hl
    ld a, h
    jp $ff30


    inc c
    ld b, h
    rst $38
    nop
    dec b
    add b
    rst $38
    add e
    rst $38
    ld a, h
    db $fc
    sub c
    ret


    ld bc, $0202
    inc hl
    inc b
    ld d, $09
    ld c, $15
    dec de
    rra
    db $10
    daa
    jr c, jr_04f_64fd

    ccf
    ld c, a
    ld a, a
    ret nc

    rst $38
    ld h, b
    rst $38

Call_04f_64e4:
    ld sp, hl
    rst $00
    pop af
    rrca
    pop bc
    ccf
    ld bc, $ff4a
    nop
    ldh [rNR51], a
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_04f_6535

    jr nc, jr_04f_6527

    jr z, jr_04f_6531

    ld d, l
    ld l, e
    ld l, e

jr_04f_64fd:
    ld d, [hl]
    rst $10
    xor h

Call_04f_6500:
    and a
    rst $18
    adc a
    db $fc
    adc [hl]
    ld hl, sp+$4e
    ld hl, sp+$4f
    db $fc
    daa
    rst $38
    rra
    db $fc
    rrca
    db $fc
    ld a, a
    cp $bf
    cp a
    rrca
    rrca

jr_04f_6516:
    call Call_04f_6500
    ldh [$2a], a
    jr jr_04f_6535

    cp a
    ldh a, [$4e]
    ld a, a
    ld l, h
    inc sp
    cp $21
    sbc $61

jr_04f_6527:
    push af
    adc d
    ld [$c015], a
    ccf
    nop
    rst $38
    rlca
    rst $38

jr_04f_6531:
    sbc b
    rst $38
    and b
    rst $38

jr_04f_6535:
    jr nz, jr_04f_6516

    ld b, b
    rst $38
    ld a, b
    rst $38
    rrca
    rst $08
    adc c
    ret z

    add e
    pop hl
    ld c, [hl]
    rst $38
    ld sp, $0eff
    ld b, h
    rst $38
    nop
    rrca
    rrca
    rst $38
    ccf
    ldh a, [$fe]
    pop bc
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    rrca
    ld [c], a
    sbc a
    db $e3
    rst $18
    ld b, e
    ld h, e
    ld e, [hl]
    ld de, $dee3
    pop af
    adc a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    db $e3
    rst $38
    sub b
    rst $08
    ld [$98f7], sp
    ld l, a
    ld a, a
    xor e
    pop hl
    inc b
    sbc b
    ld a, b
    ld b, $fe
    ld bc, $ff4e
    nop
    nop
    ret nz

    ld b, h
    rst $38
    jr nz, @+$45

    db $10
    rst $38
    nop
    ret nc

    add e
    jp hl


    nop
    rst $38
    push bc
    nop
    or $07
    ld bc, $06ff
    cp $08
    ld hl, sp-$10
    ldh a, [rSCX]
    jr nz, @-$1e

    ld [$f0d0], sp
    db $10
    ldh a, [$08]
    ld hl, sp-$3b
    db $fd
    and d
    ld b, h
    ld a, a
    sub c

jr_04f_65a5:
    rrca
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    jr jr_04f_65a5

    rra
    ldh a, [rIE]
    ld a, $fd
    db $fd
    nop
    add b
    or l
    nop
    ld l, [hl]
    ld b, e
    ld b, b
    ret nz

    ld b, l
    jr nz, @-$1e

    ld c, c
    db $10
    ldh a, [rLYC]
    jr nz, jr_04f_65a5

    ld b, e
    ld b, b
    ret nz

    call nc, $12a0
    add b
    ld h, b
    ldh [rNR21], a
    or $19
    rst $38
    pop hl
    rst $38
    ld bc, $1aff
    cp $3e
    and $3c
    db $e4
    ld hl, sp+$18
    xor l
    nop
    ld e, b
    ld c, $03
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, $21
    inc a
    ld b, e
    ld a, h
    ld b, e
    ld a, b
    rst $30
    ld hl, sp-$7c
    nop
    ld b, l
    dec c
    ld a, h
    ld c, a
    jr c, jr_04f_6638

    inc bc
    inc bc
    rlca
    inc b
    ld c, $09
    inc c
    dec bc
    dec de
    rla
    ld b, l
    rla
    rra
    nop

jr_04f_6607:
    dec bc
    and h
    db $eb
    inc bc
    inc bc
    inc bc
    nop
    nop
    add l
    ld bc, $0af2
    add b
    add b
    add a
    add a
    sbc a
    sbc b
    cp [hl]
    pop hl
    ld a, b
    rst $00
    jr nc, jr_04f_6667

    rst $38
    nop
    inc bc
    add e
    rst $38
    sbc [hl]
    cp $87
    db $dd
    adc e
    nop
    ret nc

    rlca
    ld e, a
    ld a, a
    ld hl, sp-$19
    ldh [$1f], a
    add c
    ld a, a
    ld b, e
    ld bc, $00ff

jr_04f_6638:
    ld bc, $ff46
    add b
    add hl, bc
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr @+$01

    ldh [rIE], a
    add a
    nop
    ld a, [$d307]
    xor [hl]
    and a
    call c, $ff87
    adc a
    db $fc
    ld b, e
    ld c, [hl]
    ld hl, sp+$08
    daa
    db $fc
    rra
    rst $38
    rrca
    db $fc
    rst $38
    cp $7f
    xor b
    rst $08
    add a
    ld bc, $0850
    inc e

jr_04f_6667:
    rst $38
    ld [hl], d
    rst $28
    ld sp, hl
    add a
    ld sp, hl
    rlca
    pop af
    ld b, h
    rrca
    ld a, [c]
    add hl, bc
    db $e3
    sbc a
    db $e3
    sbc $63
    ld e, [hl]
    ld [hl], c
    ld c, a
    pop af
    rst $08
    adc c
    ld bc, $00b0
    jr nc, jr_04f_6607

    ld [bc], a
    rlca
    dec bc
    ld bc, $0301
    inc bc
    rrca
    inc e
    ccf
    jr nz, jr_04f_66bd

    ld e, l
    ld e, a
    ld a, [hl]
    ld b, e
    ld e, [hl]

jr_04f_6694:
    ld a, a
    rlca
    ld c, h
    ld a, a
    jr nz, jr_04f_66d9

    sbc [hl]
    sbc a
    pop bc
    ld b, c
    add a
    nop
    sbc b
    ld a, [bc]
    ld h, b
    rst $38
    ld sp, hl
    add a
    pop af
    rrca
    add c
    ld a, a
    ld bc, $00ff
    adc [hl]
    nop
    jp hl


    add l
    ld [bc], a
    jp z, $0187

    ld b, b
    rlca
    daa
    rst $38
    and b
    rst $38
    sub c
    rst $38

jr_04f_66bd:
    ld c, [hl]
    rst $38
    rst $38
    db $ec
    daa
    ld bc, $0406
    ld b, e
    ld a, [bc]
    ld c, $11
    cp c
    rst $00
    db $fd
    ld a, [c]
    rrca
    jr jr_04f_674f

    ld [hl], b
    sbc a
    ldh [$6f], a
    ld h, b
    rla
    inc e
    dec de
    ld a, [de]

jr_04f_66d9:
    inc bc
    inc bc
    db $ec
    dec l
    ld [bc], a
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    nop
    nop
    ld [hl+], a
    inc b
    nop
    nop
    inc h
    ld [$0000], sp
    jr z, @+$12

    inc h
    jr nz, @+$08

    jr z, jr_04f_6694

    xor b
    add sp, $68
    ld hl, sp+$38
    ld b, e
    ret z

    ld c, b
    inc c
    xor b
    add sp, -$28
    call c, Call_04f_4444
    ld b, b
    ld d, h
    ld b, b
    ld d, d
    jr nz, jr_04f_673b

    ld hl, $2922
    rrca
    ld d, $17
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld [$080f], sp
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $cd01
    ret z

    rrca
    rlca
    rrca
    db $10
    jr nc, jr_04f_6765

    ld b, b
    add b
    add b
    inc bc
    inc bc
    inc b
    inc b
    ld [$0f08], sp
    ld [$c3a3], sp
    add hl, bc
    ld hl, $2921
    add hl, hl
    ld hl, $3321
    inc sp

jr_04f_673b:
    jr c, jr_04f_676c

    ld b, e
    ld [hl], e
    ld e, a
    dec bc
    ld a, b
    ld c, a
    ld a, h
    ld [hl], a
    ld c, a
    ld c, a
    ld h, e
    ld [hl], d
    ld b, l
    ld c, l
    ld b, b
    ld c, h
    ld b, e
    ld b, d

jr_04f_674f:
    ld a, [hl]
    ld d, $20
    inc a
    jr nz, jr_04f_678d

    inc sp
    inc sp
    inc c
    sbc a
    sub h
    sbc a
    ld c, h
    ld c, a
    inc [hl]
    dec a
    and h
    cp h
    ld h, h
    db $fc
    inc h
    cp h

jr_04f_6765:
    ld [hl+], a
    ld a, [hl]
    ld [hl+], a
    ld b, e
    rst $38
    ld b, d
    ld a, [bc]

jr_04f_676c:
    rst $28
    add c
    sbc a
    ld bc, $012f
    ld e, a
    jp $3cff


    inc a
    ld l, c
    dec e
    rst $00
    rst $08
    jr nc, jr_04f_67ad

    nop
    jr nz, @+$0e

    inc c
    sub d
    sub d
    and c
    and c
    ld a, c
    ld b, c
    db $fd
    add c
    rst $38
    dec de
    and $26

jr_04f_678d:
    jp nz, $d242

    ld d, d
    jp nz, $26c2

    and $1c
    db $fc
    ld b, e
    inc e
    db $f4
    ldh [rNR52], a
    inc a
    db $ec
    db $f4
    db $f4
    call z, $a24c
    or d
    ld [bc], a
    ld l, $0f
    ld a, a
    sbc a
    ldh a, [$bf]
    ldh [$7f], a

jr_04f_67ad:
    ld h, b
    ccf
    ld [hl+], a
    db $fd
    rst $00
    cp l
    rst $20
    push de
    rst $38
    inc e
    cp a
    db $10
    ld e, a
    db $10
    cp a
    db $10
    ld e, a
    ld [$08bf], sp
    rst $38
    ld [$ff44], sp
    inc b
    nop
    ld [bc], a
    ld b, h
    rst $38
    ld bc, $fe01
    cp $ab
    nop
    ld h, e
    inc bc
    ld h, b
    ld h, b
    db $10
    db $10
    push bc
    nop
    ld a, d
    nop
    ld [bc], a
    call nz, Call_04f_7300
    adc d
    nop
    or [hl]

jr_04f_67e1:
    xor c
    nop
    add e
    call nz, Call_04f_7500
    db $10
    ld h, d
    ld h, d
    sub d
    ld [hl], d
    db $f4
    inc [hl]
    call nc, $8854
    ld [$48c8], sp
    ld c, h
    call z, $ded2
    di
    ld b, e
    rst $38
    nop
    add [hl]
    rst $10
    dec c
    ld [bc], a
    rst $38
    ld bc, $00eb
    push de
    nop
    ld [$f500], a
    ldh [rIE], a
    rra
    rra
    db $f4

jr_04f_680e:
    ld [hl+], a
    nop
    ld c, l
    inc h
    add b
    daa
    ld b, b
    dec l
    jr nz, jr_04f_67e1

    sub b
    inc bc
    ret nz

    ret nz

    jr nc, jr_04f_680e

    ld b, e
    ld [$07f8], sp
    db $10
    ldh a, [$0c]
    db $fc
    ld [bc], a
    cp $cc
    db $fc
    add e
    adc l
    ld bc, $f838
    and e
    nop
    ld a, $43
    ld b, b
    ld d, d
    add e
    nop
    and h
    inc bc
    ld e, $1f
    ld [$430b], sp
    db $10
    rla
    add a
    nop
    ldh [$0a], a
    ld a, c
    ld l, a
    ld e, h
    ld e, a
    ld b, a
    ld h, a
    ld b, e
    ld c, d
    ld b, l
    ld c, l
    ld b, b
    ld b, h
    ld a, h
    ld b, h
    dec b
    jr z, jr_04f_688d

    jr nc, jr_04f_6887

    scf
    scf
    add h
    nop
    cp $15
    ld c, l
    jr c, jr_04f_689a

    xor b
    cp c
    ld c, b
    ld a, [$f948]
    adc b
    ld a, [$bd88]
    adc b
    sbc a
    inc b
    cpl
    inc b
    rra
    ld b, $2f
    ld [bc], a
    add [hl]
    ld bc, $8519
    ld bc, $4340
    sbc h
    db $f4
    dec bc
    inc a
    db $e4
    db $fc
    call c, Call_04f_64e4
    cp l
    rst $20
    push af
    rst $38

jr_04f_6887:
    inc l
    cp a
    ld b, l
    jr nz, @+$01

jr_04f_688c:
    ld [bc], a

jr_04f_688d:
    db $10
    rst $38
    db $10
    add l
    ld bc, $08cf
    push af
    nop
    ld a, [$fd00]
    add c

jr_04f_689a:
    rst $38
    ld a, h
    ld a, h
    ld h, c
    inc bc
    ld b, b
    ld b, b
    add b
    add b
    add a

jr_04f_68a4:
    ld bc, $43fb
    ld b, b
    ret nz

    inc bc
    jr nz, jr_04f_688c

    db $10
    ldh a, [rSCX]
    adc b
    ld hl, sp+$01
    jr nc, jr_04f_68a4

    add l
    sub a
    add l
    ld [bc], a
    ld d, b
    ld b, e
    ld [hl], a
    ld e, a
    nop
    ld a, e
    add e
    nop
    jp hl


    nop
    ld l, a
    adc c
    rst $18
    dec b
    inc e
    db $fc
    inc h
    db $ec
    call nz, $89dc
    ld bc, $43c0
    ld bc, $04ff
    nop
    rst $38
    ld b, b
    ld b, b
    ret nz

    add h
    push bc
    add e
    rst $00
    rrca
    ld [$88f8], sp
    ld hl, sp+$04
    db $fc
    ld b, d
    cp $02
    ld a, [hl]
    ld b, $be
    jr c, @+$7a

    ld b, b
    ret nz

    add e
    pop de
    add [hl]
    nop
    ret nc

    ld a, [bc]
    db $10
    rra

jr_04f_68f5:
    db $10
    ccf
    jr nz, @+$41

    ld [hl-], a
    ccf
    inc l
    ccf
    inc hl
    adc l
    nop
    ld [c], a
    adc b
    ld bc, $0030
    ld bc, $fe44
    ld [bc], a
    ld b, $26
    cp $da
    ld a, $e2
    inc e
    db $f4
    adc c
    ld bc, $ff46
    ld a, b
    dec h
    ld bc, $0247
    inc bc
    ld c, d
    inc b
    rlca
    nop
    inc bc
    add $8b
    nop
    ld bc, $9bc4
    nop
    nop
    jp nc, $05a7

    ld bc, $0303
    ld [bc], a
    ld [bc], a
    inc bc
    ret


    cp a

jr_04f_6933:
    inc de
    ld bc, $0503
    ld b, $0b
    inc c
    dec d
    ld a, [de]

jr_04f_693c:
    ccf
    ld de, $273f
    ld a, a
    ld h, b
    ld [hl], a
    ld c, h
    ld a, a
    sub d
    rst $38
    add c
    ld c, c
    rst $38
    nop
    nop
    ld a, a
    ld c, b
    add b
    rst $38
    nop

jr_04f_6951:
    cp a
    ld b, [hl]
    ld b, b
    rst $38
    ld bc, $20df
    ld b, e
    rst $28
    jr nc, jr_04f_693c

    inc hl
    rst $38
    db $10
    rst $30
    jr jr_04f_6951

    jr jr_04f_6933

    jr c, jr_04f_68f5

    ld hl, sp-$69
    ld hl, sp+$67
    ld a, b
    daa
    ld a, b
    inc de
    inc a
    inc de
    inc e
    add hl, sp
    ld l, $30
    ccf
    ld h, b
    rst $38
    jr nc, jr_04f_6988

    di
    rrca
    call nz, $183c
    ld hl, sp-$20
    ldh a, [$61]
    inc bc
    rrca
    rra
    ld [hl], b
    ldh [$a3], a

jr_04f_6988:
    add sp, $02
    add b
    nop
    ldh [$83], a
    call $800a
    cp $01
    rst $38
    nop
    cp a
    ld [hl], b
    rst $38
    adc c
    rst $38
    ld b, $58
    rst $38
    nop
    ld a, [bc]
    ld bc, $02ff
    db $fd
    ld b, $ff
    inc b
    rst $38
    ld [$10ff], sp
    ld b, e
    rst $38
    jr nz, @+$09

    xor $31
    ret nc

    ccf
    jp hl


    rra
    or $0f
    ld b, e
    ld hl, sp+$07
    ld bc, $0ff0
    add l
    and d
    rlca
    pop hl
    cp $19
    ld e, $04
    rlca
    inc bc
    rlca
    ld h, c
    ld a, [bc]
    ret nz

    ldh [$38], a
    inc e
    ld e, $03
    rrca
    nop
    rra
    nop
    ld a, [hl]
    add l
    reti


    ld b, $c0
    rst $38
    jr nc, @+$01

    nop
    cp a
    ret nz

    and e
    cp a
    ld b, a
    rst $38
    nop
    ldh [$3b], a
    rst $18

jr_04f_69e6:
    jr nz, jr_04f_69e6

    ld hl, $23fd
    cp h
    ld b, e
    ld a, [$7a47]
    add a
    db $f4
    adc a
    db $f4
    rrca
    add sp, $1f
    jp hl


    rra
    pop de
    ccf
    jp nc, $a43e

    ld a, h
    inc l
    db $fc
    ld c, b
    ld hl, sp+$50
    ldh a, [$90]
    ldh a, [$a0]
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [$78]
    db $fc
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $20
    rst $00
    ei
    or d
    ccf
    call c, $e80c
    jr @+$12

    ld hl, sp-$20
    ldh a, [$a7]
    nop
    inc de
    ld de, $40c0
    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [rOBP0]
    ld hl, sp+$48
    cp b
    ld h, h
    cp h
    ld h, h
    xor h
    ld [hl], h
    sbc h
    ld [hl], d
    ld b, e
    sub [hl]
    ld a, d
    ld bc, $7e92

jr_04f_6a3d:
    ld b, e
    ld [de], a
    cp $03
    inc d
    db $fc
    jr jr_04f_6a3d

    ld b, l
    jr nz, @-$1e

    ld b, e
    ld b, b
    ret nz

    inc bc
    add b
    add b
    add b
    add b
    ld [hl], l
    rlca
    ld e, $2f
    ret nc

    sub $c1
    db $ed
    cp $fe
    inc hl
    rst $38
    ld bc, $3f1f
    db $ec
    ld d, e

jr_04f_6a61:
    inc bc
    add b
    ret nz

    ld b, b
    ld h, b
    inc hl
    ldh [rSB], a
    ret nz

    ret nz

    adc a
    nop
    dec bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0706
    inc b
    ld b, e
    rrca
    ld [$1f43], sp
    db $10
    dec c
    ld e, $17
    ld e, $21
    ccf
    inc hl
    ccf
    jr nz, jr_04f_6ac2

    inc hl
    ccf
    inc h
    ccf
    jr nz, jr_04f_6ad0

    rra
    db $10
    ld bc, $080f
    ld b, e
    ld c, $09
    adc c
    nop
    ld l, $85
    nop
    ld a, [hl-]
    dec b
    inc bc
    rrca
    db $10
    jr nc, jr_04f_6adf

    ret nz

    add [hl]
    nop
    call nz, $008b
    rst $20
    nop
    ret nz

    ld b, e
    rst $38

jr_04f_6aaa:
    nop
    dec b

jr_04f_6aac:
    rst $30
    adc [hl]
    rst $38
    ld d, c
    rst $38
    jr nz, jr_04f_6a61

    nop
    and $00
    add b
    call nz, $9000
    add hl, de
    ld h, b
    rst $38
    jr nc, @-$27

    jr c, jr_04f_6aac

    inc e

jr_04f_6ac2:
    ld sp, hl
    adc [hl]
    or h
    rst $08
    ld e, h
    ld h, a
    ld c, d
    ld [hl], a
    ld [hl+], a
    ccf
    inc h
    ccf
    jr jr_04f_6aef

jr_04f_6ad0:
    jr c, jr_04f_6b01

    ld hl, sp-$08
    rlca
    and h
    nop
    jp $0183


    ld h, $c7
    nop
    add d
    dec c

jr_04f_6adf:
    ei
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    inc e
    rst $38
    nop
    ei
    inc e
    cp $23
    ret


    rst $10

jr_04f_6aef:
    and a
    nop
    adc h
    ld b, l
    rst $38
    inc b
    ld bc, $0cfb
    ld b, h
    rst $38
    ld [$100e], sp
    ld e, $f1
    ld l, $f1

jr_04f_6b01:
    inc l
    di
    ld hl, $11ff
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    push bc
    ld [bc], a
    dec sp
    add hl, bc
    ld [hl], b
    jr nc, jr_04f_6aaa

    ld [$84fc], sp
    cp $42
    rst $38
    ld hl, $a1a3
    inc bc
    ei
    inc c
    db $fd
    ld b, $43
    db $fc
    rlca
    inc bc
    cp $03
    ei
    rlca
    ld b, l
    ld a, [$4306]
    ld a, [c]
    ld c, $00
    ld [c], a
    ld b, [hl]
    ld e, $f2
    ld bc, $1cf4
    ld b, l
    db $e4
    inc a
    dec b
    add sp, $38
    ret z

    ld a, b
    ld c, b
    ld hl, sp-$39
    ld bc, $85b5
    ld bc, $61ae
    rlca
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld b, e
    ret nz

    ld a, a
    ld [$3fe0], sp
    rst $38
    rra
    cp $3f
    rst $38
    ld hl, sp+$1f
    ld b, h
    ld hl, sp+$0f
    dec b
    rlca
    ld hl, sp+$1d
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    db $ec
    add hl, hl
    rla
    ld bc, $0403
    rrca
    db $10
    dec de
    jr nz, jr_04f_6b98

    ld b, b
    ld c, e
    ld b, b
    ld d, a
    jr nc, jr_04f_6bb8

    rrca
    rrca
    inc bc
    inc bc
    inc b
    inc c
    db $10
    jr jr_04f_6ba2

    jr nz, @+$24

    ld b, b
    add hl, bc
    add b
    ret nz

    add b
    ldh [$80], a
    ldh a, [$80]
    ld a, h
    add b
    ld a, a
    ld b, e
    ld b, b
    ccf
    inc b
    jr nz, @+$11

    jr @+$05

jr_04f_6b98:
    rlca
    ld h, a
    ld bc, $0606
    ld [hl+], a
    dec b
    nop
    inc b
    dec h

jr_04f_6ba2:
    ld [bc], a
    dec h
    ld bc, $0001
    ld [bc], a
    ld [hl+], a
    inc bc
    nop
    ld bc, $bd83
    ld c, $00
    db $10
    rla
    rla
    rrca
    inc c
    inc bc
    inc bc
    ld [bc], a

jr_04f_6bb8:
    ld [bc], a
    inc e
    inc e
    ld c, b
    ld hl, sp+$07
    ld c, d
    rst $38
    nop
    dec b
    inc bc
    rst $38
    db $fc
    rst $38
    sub b
    sbc a
    ld b, e
    db $10
    rra
    rra
    jr nz, jr_04f_6c0d

    jr nz, jr_04f_6c07

    jr nz, jr_04f_6bfd

    jr nz, jr_04f_6c09

    jr nz, jr_04f_6c01

    jr nz, jr_04f_6c09

    jr nc, @+$1a

    ldh a, [rNR33]
    ld hl, sp+$0e
    db $fc
    rrca
    rst $38
    inc sp
    pop bc
    ret nz

    add b
    add b
    pop hl
    ldh [$2f], a
    inc hl
    inc a
    inc a
    ld h, c
    dec c
    ld sp, $d231
    jp nc, $96b6

    inc a
    inc e
    ld [hl], h
    inc a
    ld l, b
    jr c, @+$32

    db $10
    add l

jr_04f_6bfd:
    di
    ld de, $1999

jr_04f_6c01:
    cp $f6
    ld [hl], $36
    inc a
    inc e

jr_04f_6c07:
    sbc c
    adc c

jr_04f_6c09:
    rst $38
    ld l, a
    rst $38
    db $10

jr_04f_6c0d:
    rst $38
    ldh [$3e], a
    nop
    add e
    nop
    ld d, a
    dec h
    add b
    ld b, e
    ld b, b
    ret nz

    ld [$c858], sp
    ld a, b
    ret c

    dec h
    db $fc
    rlca
    db $fd
    ld [bc], a

jr_04f_6c23:
    ld c, a
    rst $38
    nop
    inc c
    ld a, a
    nop
    cp a
    ld bc, $0eff
    cp $f0
    ldh a, [$e0]
    jr nz, @-$3e

    ret nz

    ld h, e
    rla
    ld c, $0e
    inc sp
    ld sp, $c2c6
    sbc h
    add h
    inc e
    inc e
    ld b, $02
    inc a
    ld c, $7f
    inc sp
    cp a
    nop
    ld e, a
    nop
    rst $38
    ld bc, $80ff
    ld b, [hl]
    rst $38
    ret nz

    rrca
    add b
    rst $38
    ld bc, $00ef
    rst $10
    nop
    xor e
    nop
    ld b, a
    nop
    dec bc
    nop
    dec b
    nop
    inc bc
    add [hl]
    add e
    ld d, $02
    nop
    rlca
    ld bc, $0103
    add [hl]
    add e
    ld c, [hl]
    jp $f73c


    ld [$00ff], sp
    rst $38
    jr @+$01

    inc h
    rst $20
    inc l
    rst $20
    jr jr_04f_6c23

    nop
    sub c
    add e
    nop
    ld [hl], $02
    rlca
    ld b, $01
    jp nc, $2a00

    ld bc, $8080
    push bc
    nop
    di
    rlca
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh [$e0], a
    add l
    adc e
    add hl, de
    ldh a, [$30]
    db $fd
    dec c
    ld a, [c]
    ld a, $e2
    cp [hl]
    ld a, [c]
    sbc $b5
    db $fc
    adc l
    ld hl, sp-$32
    ld a, b
    rst $08
    ld a, b
    rst $00
    ld a, h
    rst $20
    cp h
    ld h, a
    rst $38
    inc b
    db $fc
    ld c, l
    ld [bc], a
    cp $43
    inc b
    db $fc
    dec c
    ld [$1cf8], sp
    db $fc
    db $e3
    db $e3
    ret nz

    nop
    rst $00
    inc bc
    db $e4
    call nz, $3c3c
    db $ec
    inc hl
    ld bc, $3030
    inc hl
    ld c, b
    ld de, $c8c8
    add h
    add h
    add d
    ld [bc], a
    ld b, $02
    inc c
    inc b
    jr c, jr_04f_6ce6

    db $f4
    inc e
    ld [c], a
    ld a, $c2
    cp $9b
    cp l

jr_04f_6ce6:
    ld bc, $8080
    and a
    ld bc, $837a
    nop
    jr c, jr_04f_6cf5

    ld [bc], a
    inc bc
    rra
    rra
    ld c, [hl]

jr_04f_6cf5:
    ld a, [$008f]
    adc d
    ld bc, $dfd0
    ld b, e
    db $10
    rra
    ld [$efff], sp
    ccf
    ret nc

    ld a, a
    ret nc

    cp [hl]
    and b
    ld h, a
    and [hl]
    nop
    ld l, e
    inc bc
    ld a, h
    ld [hl], h
    adc b
    ld hl, sp+$43
    add h
    db $fc
    ld bc, $f8c8
    push bc
    or $89
    nop
    jr nc, @-$7a

    nop
    jr z, jr_04f_6d25

    ld b, $0c
    ld [$1018], sp

jr_04f_6d25:
    jr jr_04f_6d6b

    jr nz, jr_04f_6d65

    nop
    ld a, $43
    jr nz, jr_04f_6d4d

    ld b, e
    db $10
    rrca
    inc bc
    ld [$0603], sp
    nop
    adc c
    ld bc, $887b
    rst $18
    ld bc, $fff0
    ld b, e
    db $10
    rra
    add [hl]
    nop
    ret nc

    ld [$fb09], sp
    di
    inc [hl]
    inc [hl]
    jr c, jr_04f_6d64

    sbc c

jr_04f_6d4d:
    adc c
    adc [hl]
    ld bc, $2290
    add c
    dec b
    pop bc
    ld b, c
    di
    inc sp
    rst $38
    ld c, $83
    ld bc, $0fa8
    push af
    call c, $fdb5
    adc l
    ld sp, hl

jr_04f_6d64:
    rst $08

jr_04f_6d65:
    ld a, c
    adc $7a
    add $7e
    db $e4

jr_04f_6d6b:
    cp h
    ld h, h
    db $fc
    add e
    ld bc, $67bc
    dec bc
    jr c, jr_04f_6d8d

    ld b, h
    inc b
    ld [hl], h
    db $f4
    ld a, [bc]
    sbc d
    rlca
    db $ed
    rlca
    db $fd
    ld b, e
    add d
    cp $01
    jp nz, Jump_04f_437e

    db $e4
    cp h
    dec b
    ld e, b
    ld a, b
    ldh [$e0], a

jr_04f_6d8d:
    add b
    add b
    sbc h
    nop
    db $10
    ld bc, $0807
    add e
    nop
    dec l
    ld [$4035], sp
    ld c, e
    ld b, b
    ld b, a
    ld hl, $1e3f
    ld e, $85
    ld [bc], a
    ld b, b
    ld b, $07
    rlca
    ld c, $1a
    daa
    ld a, a
    add b
    adc d
    ld [bc], a
    ld c, l
    rlca
    inc c
    rst $38
    jr nc, @+$01

    sub b
    rst $18
    db $10
    rra
    rst $38
    ld l, e
    inc hl
    ld bc, $0305
    inc bc
    ld [bc], a
    inc bc
    ld bc, $7101
    inc bc
    ld bc, $0201
    ld [bc], a
    dec h
    inc b
    nop
    inc bc
    jp nz, $8b88

    adc a
    add e
    xor a
    ld a, l
    nop
    jr nz, jr_04f_6dfb

    ld h, b
    ld b, e
    ldh [$c0], a
    ldh [rLY], a
    ret nz

    pop bc
    pop bc
    ld b, d
    jp $e625


    ld a, b
    rst $38
    ld hl, sp-$01
    ld sp, $133f
    rra
    inc de
    ccf
    inc sp
    ccf
    ld sp, $183f
    ccf
    db $10
    rla
    ret z

    rst $08
    inc l
    cpl

jr_04f_6dfb:
    inc de
    ld d, $39
    add hl, sp
    ld a, b
    ld c, b
    db $fd
    adc l
    ld a, [hl]
    sbc a
    rst $28
    rst $28
    inc sp
    ccf
    jp nz, $25fe

    inc a
    ld a, e
    ld e, c
    ld a, a
    ld e, a
    rst $38
    sbc a
    ld a, [$f538]
    ldh [$aa], a
    ldh [$95], a
    ldh a, [$4e]
    ld a, h
    inc sp
    ccf
    dec c
    dec c
    ld [bc], a
    inc bc
    ld b, e
    inc b
    rlca
    ld b, e
    ld c, $09
    inc bc
    ld [$070f], sp
    rlca
    adc c
    nop
    dec b
    add e
    nop
    db $10
    ld d, $74
    ld a, a
    add [hl]
    rst $38
    rst $08
    ccf
    rst $28
    rra
    adc $3f
    nop
    rst $38
    add b
    rst $38
    jp $c4ff


    cp $c4
    db $fc
    adc h
    db $fd
    dec c
    ld b, h
    rst $38
    rrca
    inc de
    ld c, $f7
    rra
    ldh [rIE], a
    jr @+$01

    db $e3
    db $dd
    cp $1b
    db $f4
    ei
    db $e4

jr_04f_6e5e:
    rst $20
    add sp, -$3d
    ld c, b
    ld b, e
    ld c, b
    ld b, e
    rst $00
    ret z

    dec bc
    db $eb
    inc h
    cp e
    inc h
    ld e, l
    ld [de], a
    cp b
    ccf

jr_04f_6e70:
    ld [hl], e
    ld a, e
    ld [hl], b
    ldh a, [rNR44]
    ldh [$03], a
    ret nc

    ldh a, [rNR10]
    ldh a, [rSCX]
    jr nz, jr_04f_6e5e

    and a
    nop
    ld b, d
    nop
    ld h, b
    ld [hl+], a
    ldh [rNR51], a
    ret nz

    rlca
    add b
    add b
    nop
    add b
    ret nz

    ret nz

    jr nz, jr_04f_6e70

    ld b, e
    db $10
    ldh a, [rSCX]
    ld [$03f8], sp
    adc b
    ld hl, sp-$38
    ld hl, sp+$43
    ld hl, sp-$38
    ldh [$35], a
    ld sp, hl
    ret


    or c
    pop de
    di
    sub d
    db $e3
    ld [hl+], a
    pop bc
    ld b, c

jr_04f_6eaa:
    sbc l
    sbc l
    ld h, e
    rst $38
    ccf
    db $fd
    cp a
    ld l, a
    cp $3f
    rst $08
    add hl, sp
    db $fd
    inc e
    rst $38
    rra
    rst $20
    rra
    and $1c
    call $ca38
    jr c, @-$61

    ld [hl], b
    ld a, [hl+]
    add sp, -$1b
    db $e4
    ld h, d
    ld h, d
    ld [hl], c
    ld [hl], c
    ld a, $3e
    dec e
    rra
    ld c, $1f
    ld e, $1f
    db $10
    rra
    ld b, e
    ld d, $19
    add e
    nop
    cp d
    ld a, a
    dec b
    ldh [$e0], a
    db $10
    db $10
    ld [$2308], sp
    add h
    add hl, de
    call nz, $f844
    jr c, @-$06

    adc b
    ldh a, [$f0]
    adc h
    db $fc
    ld a, [hl-]
    cp $c5
    rst $00
    ld b, d
    ld b, e
    ld [c], a
    and e
    di
    sub e
    rst $30
    push de
    ld a, l
    jr c, jr_04f_6eaa

    nop
    and l
    add c
    dec b
    xor e
    ld bc, $87d7
    ld a, b
    ld a, b
    and l
    nop
    ld a, [bc]
    inc bc
    ld b, b
    ret nz

    ld b, b
    ret nz

    and e
    nop
    ld b, d
    db $ec
    add hl, sp
    add l
    jp $2000


    ld c, d
    ldh [$a0], a
    sbc b
    rst $08
    rlca
    ld bc, $0703
    rlca
    rrca
    ld b, $0e
    rrca
    jp $0083


    inc bc
    and l
    or a
    dec bc
    dec b
    ld b, $06
    rrca
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    rrca
    ld c, $0e
    rrca
    ld b, e
    rlca
    inc b
    add hl, bc
    jp $23c2


    ld [hl+], a
    ld de, $3811
    jr c, @+$7a

    ld c, b
    ld h, c
    ld bc, $e0c0
    add l
    rst $00
    add hl, de
    rrca
    rrca
    cp $f1
    cp [hl]
    pop bc
    inc [hl]
    ei
    ld a, b
    rst $38
    ld hl, sp+$7f
    ld [hl], c
    cp a
    and e
    ld e, a
    ld b, e
    cp a
    add e
    ld a, a
    inc bc
    rst $38
    ld bc, $07ff
    ld hl, sp+$44
    rst $38
    nop
    ld a, [bc]
    jr @+$01

    nop
    rst $38
    ret nz

    ld l, $71
    inc b
    inc c
    ld c, $1e
    ld [hl+], a
    rra
    ldh [$28], a
    ccf
    add hl, sp
    dec sp
    or b
    cp c
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $72
    cp $9a
    sbc [hl]
    add hl, de
    rra
    add hl, sp
    ccf
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld [c], a
    cp $f3
    rrca
    db $fd
    dec b
    rst $38
    ld b, $fb
    ld a, [bc]
    pop af
    ld de, $7dbd
    ld h, e
    rst $38
    xor e
    nop
    inc b
    add e
    rst $20
    adc b
    rst $08
    ld [bc], a
    inc e
    rst $38
    inc c
    add e
    rst $08
    add a
    nop
    sub b
    dec bc
    call z, $31fc
    jr nz, @+$73

    ld d, c
    ld [hl], a
    ld d, a
    cp $9e
    ld hl, sp+$38
    add e
    ld bc, $0728
    and b
    ldh [$4e], a
    ld a, a
    jr nc, jr_04f_700d

    dec c
    dec c
    ld b, e
    ret z

    jr c, @+$0f

    sub h
    ld [hl], h
    ld [hl+], a
    ld [c], a
    pop hl
    pop hl
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, $3e
    jr c, @+$3a

    add [hl]
    rst $08
    inc b
    add c
    ld h, d
    ld h, e
    inc e
    rra
    ld h, c
    rlca
    add hl, hl
    ccf
    jr z, jr_04f_702f

    nop
    rra
    ret nc

    rst $18
    add a
    nop
    adc b
    adc c
    nop
    ret nc

    inc b
    ret nz

    rst $38
    jp nz, $c4ff

    jp $0385


    rst $38
    ld [$09ff], sp
    adc b
    nop
    rst $20
    rst $38
    ld h, a
    ld b, e

jr_04f_700d:
    ld b, $00
    ld h, c
    nop
    db $10
    ld [hl], d
    dec c
    inc bc
    inc bc
    rlca
    inc b
    dec bc
    ld [$080d], sp
    ld a, [de]
    db $10
    dec d
    db $10
    ld de, $2311
    ld a, [bc]
    ld bc, $0404
    ld h, c
    and l
    xor h
    ld [bc], a
    jr nc, jr_04f_702d

jr_04f_702d:
    jr nc, @-$12

jr_04f_702f:
    jr z, jr_04f_7031

jr_04f_7031:
    db $10
    ld h, c
    add hl, bc
    ld bc, $0203
    inc bc
    inc b
    rst $00

jr_04f_703a:
    inc b
    call nz, $0c08
    ld b, h
    ld [$190f], sp
    rlca
    inc b
    rra
    inc e
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, jr_04f_703a

    ret nz

    ld l, a
    ld b, c
    ld a, $22
    dec e
    dec d
    dec c
    dec c
    ld b, e
    ld [bc], a
    inc bc
    rrca
    inc b
    rlca
    ld b, $07
    dec b
    rlca
    ld a, $3f
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    dec a
    ccf
    nop
    ld bc, $0089
    ld a, [de]
    ld [bc], a
    inc b
    rlca
    rlca
    ret nc

    nop
    inc h
    db $10
    inc bc
    rlca
    ccf
    ld a, b
    xor a
    add [hl]
    ld e, a
    inc bc
    xor a

jr_04f_7084:
    ld [$10fa], sp
    push af
    jr nz, jr_04f_7084

    jr nz, @+$01

    ld b, h
    ld b, b
    rst $20
    ld b, e
    rst $38
    ld b, b
    ldh [rNR42], a
    rst $18
    ldh [$3f], a
    ldh [rIE], a
    jr nc, @-$13

    inc e
    cp $07
    rst $38
    ld a, a
    add a
    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    jr @-$17

    ccf
    ret c

    rst $20
    rst $00
    ld [hl], b
    ret nz

    db $fc
    ldh [$fd], a
    ld hl, sp+$25
    rst $38
    rrca
    ld a, a
    rst $38
    ccf
    ccf
    rrca
    rra
    ld a, [hl]
    cp $fe
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    cp $e0
    ldh a, [rOCPD]
    ld [bc], a
    ld [hl], b
    ldh a, [$fc]
    jp $8700


    inc c
    ldh [rIE], a
    jr jr_04f_7115

    ld b, $9f
    ld bc, $0057
    cp a
    nop
    ld e, a
    nop
    ld b, e
    ld sp, hl
    nop
    ld c, b
    rst $38
    nop
    inc b
    ld bc, $06ff
    rst $38
    jr jr_04f_710e

    rst $38
    dec b
    db $fc
    rrca
    rst $38
    ld b, b
    rst $38
    ld a, $44
    rst $38
    nop
    dec bc
    push af
    rra
    ld a, [$3dcf]
    cpl
    ld a, e
    rrca
    ld a, a
    rra
    ld a, a
    ld a, a
    daa
    rst $38
    add hl, bc
    rst $00
    rst $28
    rlca
    rrca
    rlca
    rlca
    inc b

jr_04f_710e:
    rlca
    nop
    rlca
    rlc b
    dec h
    ld [bc], a

jr_04f_7115:
    ld h, b
    nop
    ld h, d
    ld h, h
    inc hl
    add b
    ld de, $43c3
    db $e4
    ld h, h
    or d
    sub d
    reti


    adc b
    ld sp, hl
    ld c, c
    db $ed
    ld b, l
    xor $46
    cp $44
    rst $38
    ld b, h
    ld b, h
    rst $38
    adc b
    inc b
    db $10
    rst $38
    jr c, @+$01

    rst $00
    call nz, $06e3
    add b
    rst $38
    ld hl, sp+$47
    add $41
    pop bc
    and l
    nop
    sbc d
    dec c
    ld h, b
    ldh [$f8], a
    ld hl, sp-$09
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    sbc a
    cp a
    ld b, $0f
    add h
    jp nz, $c000

    inc hl
    ldh [rP1], a
    ld h, b
    xor l
    nop
    or l
    inc bc
    jr nz, jr_04f_7161

jr_04f_7161:
    nop
    add b
    xor d
    nop
    add hl, de
    ld [bc], a
    jr nz, jr_04f_7189

    jr nc, jr_04f_718d

    db $10
    dec b
    jr z, jr_04f_7177

    jr jr_04f_7179

    jr z, jr_04f_717b

    and e
    nop
    ld a, [hl+]
    ld [bc], a

jr_04f_7177:
    ldh a, [rNR10]

jr_04f_7179:
    ldh [$c4], a

jr_04f_717b:
    sub d
    dec b
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld [$08f8], sp

jr_04f_7189:
    ld hl, sp-$78
    ld [hl], b
    ld d, b

jr_04f_718d:
    ld [hl], d
    ld d, b
    ld h, b
    call nz, $8401
    ld b, $90
    add b
    add b
    add b
    ld b, $80
    ld b, $74
    adc e
    nop
    ldh a, [$09]
    rst $38
    rst $18
    ld a, a
    rst $08
    ldh a, [$e0]
    ld hl, sp-$20
    db $fd
    ld hl, sp-$77
    ld bc, $8d06
    ld bc, $0550
    db $fd
    rst $28
    dec sp
    rrca
    ld a, a
    rra
    adc c
    ld bc, $0d62
    rst $00
    rst $28
    rst $38
    rst $28
    rst $30
    rst $20
    ld hl, sp-$20
    db $fc
    ldh a, [$fd]
    ld hl, sp+$7d
    db $fd
    add e
    xor a
    inc bc
    ei
    rst $28
    rst $38
    rst $08
    ld b, h
    ld a, a
    rra
    nop
    ccf
    inc hl
    ld a, a
    ld bc, $6f47
    ld b, h
    rst $38
    rst $28
    nop
    rst $20
    ld b, e
    ld hl, sp-$10
    inc bc
    ld a, h
    ld hl, sp+$3d
    inc a
    add h
    sbc a
    dec b
    rst $28
    rst $38
    rst $28
    ccf
    rrca
    ccf
    add h
    and e
    ld bc, $6f47
    add [hl]
    nop
    add b
    ld a, [bc]
    inc e
    rst $38
    ld h, b
    rst $20
    add b
    rst $28
    nop
    rst $38
    rra
    ldh [$e0], a
    inc hl
    ld bc, $0089
    sub [hl]
    dec b
    db $fc
    ldh [rIE], a
    ld hl, sp-$03
    db $fd
    adc c
    ld [bc], a
    ld d, [hl]
    nop
    ld a, e
    adc b
    ei
    ld bc, $7f7f
    add h
    rst $38
    inc b
    ldh [$df], a
    call c, $c343
    and a
    xor l
    ld bc, $e060
    add e
    ld [bc], a
    db $10
    dec b
    ld hl, sp-$78
    ld a, h
    ld h, h
    inc e
    inc d
    ld h, c
    nop
    ld [bc], a
    ld h, d
    add hl, bc
    ld a, [bc]
    rra
    dec h
    ccf
    ld c, e
    ld a, a
    ld d, a
    ld a, a
    jr c, jr_04f_7279

    add $01
    rra
    ld c, $f0
    call c, $aafc
    cp $d1
    rst $38
    cp c
    cp a
    ld e, $1f
    nop
    ld c, $00
    add b
    rst $08
    nop
    ld [de], a
    rst $38
    ld l, a
    rrca
    ld bc, $0201
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    rlca
    ld [$1008], sp
    stop
    db $10
    ld [hl+], a
    jr nz, jr_04f_727a

    ld [hl+], a
    db $10
    ld de, $1811
    jr c, jr_04f_729b

    ccf
    ld [hl], $2f
    add hl, sp
    rra
    rra

jr_04f_7279:
    ld [bc], a

jr_04f_727a:
    ld [bc], a
    daa
    inc b
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $0100
    jp z, $0eae

    ld bc, $0200
    ld [bc], a
    ld a, [bc]
    rlca
    inc d
    ld bc, $0312
    ld a, [bc]
    add hl, bc
    ld [$0707], sp
    ld l, a
    ld [$0f07], sp
    db $10
    db $10

jr_04f_729b:
    ld b, b
    pop hl
    ld [bc], a
    jr nz, jr_04f_72c0

    ld b, e
    ld [bc], a
    nop
    ld bc, $0001
    and e
    rst $20
    inc e
    jr nz, jr_04f_72bb

    jr nz, jr_04f_72b7

    inc h
    rla
    ld b, a
    cpl
    add h
    ld e, a
    ld [$08af], sp
    ld e, a

jr_04f_72b7:
    db $10
    rst $28
    add sp, -$01

jr_04f_72bb:
    ret c

    ccf
    jr nz, jr_04f_72db

    db $10

jr_04f_72c0:
    inc c
    inc c
    inc bc
    ld h, e
    nop
    sub b
    ld h, d
    inc e
    ld [bc], a
    nop
    inc b
    nop
    inc b
    adc b
    adc h
    ld a, [hl]
    ld [hl], d
    ld [hl], e
    ld b, c
    ld [hl], l
    pop hl
    dec de
    ld sp, $0e3f
    ld a, a
    nop

jr_04f_72db:
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    xor $1f
    xor a
    pop hl
    ldh [rNR42], a
    ld h, b
    ld [hl], b
    adc b
    adc h
    ld [bc], a
    ld [bc], a
    nop
    ld hl, $1101
    dec b
    db $10
    inc bc
    jr nz, jr_04f_72fd

    ret nz

    dec bc
    ld bc, $0157

jr_04f_72fd:
    dec hl
    inc bc
    ld d, a

Call_04f_7300:
    rlca
    cpl
    dec de
    rst $38
    pop af
    rst $28
    add hl, bc
    rst $38
    add hl, de
    cp $01
    ld b, h
    rst $38
    ld [bc], a
    ld a, [de]
    inc b
    rst $38
    inc b
    ld a, [hl]
    ld [$103d], sp
    ld a, [$15e0]
    nop
    ld [$0402], sp
    ld bc, $010b
    ld d, a
    ld b, $a1
    ld [$1003], sp
    rst $38
    ldh a, [rIE]
    rrca
    ld b, e
    rst $38
    nop
    dec bc
    cp $01
    db $fc
    ld [bc], a
    ld a, [hl]

jr_04f_7333:
    add d
    db $fc
    ld a, h
    inc b
    add h
    inc bc
    inc bc
    ld [hl], l
    ldh [$2f], a
    add b
    add b
    and b
    ldh [$f8], a
    sbc b
    call z, $dcac
    inc a
    ld a, b
    sbc b
    ldh a, [$b0]
    ld hl, sp-$38
    call nz, $bebc
    ld b, d
    cp $01
    db $eb
    ld bc, $01d5
    xor d
    ld bc, $02d6
    call nz, $823c
    ld b, d
    ld bc, $0381
    add c
    dec d
    add c
    ld a, [hl+]
    ld b, d
    rla
    inc bc
    rrca
    adc l
    rst $38
    ld [hl], b
    ld b, e
    rst $38
    nop
    rlca
    rst $18
    jr nz, jr_04f_7333

    ret nz

    rst $38
    jr c, @-$03

    ld b, h
    ld b, e
    rst $38
    add b
    add hl, bc
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, $22
    inc a
    inc l
    ldh a, [$f0]
    db $ec
    ld [hl+], a
    jp $7700


    ld [hl+], a
    inc b
    inc b
    ld b, $04
    ld [bc], a

jr_04f_7392:
    dec b
    inc bc
    ret


    adc c
    inc hl
    ld bc, $0222
    rla
    dec b
    rlca
    adc e
    adc a
    sbc l
    rst $18
    ei
    ld h, e
    db $e3
    ld [hl], c
    cp $31
    rst $30
    add hl, sp
    cp $3a
    db $fc
    inc a
    ld hl, sp+$78
    ldh [$60], a
    add b
    add b
    db $ec
    add hl, hl
    db $10
    ret nz

    ldh [rSVBK], a
    db $10
    jr nc, jr_04f_73c4

    jr jr_04f_73e6

    jr jr_04f_7428

    db $10
    add sp, -$10
    db $10

jr_04f_73c4:
    ldh [$f0], a
    ld h, b
    ld [hl+], a
    ldh [$84], a
    add e
    rlca
    ld h, b
    ld h, b
    jr nz, @-$1e

    jr nz, jr_04f_7392

    ld b, b
    ret nz

    ld b, e
    ret nz

    add b
    nop
    add b
    sbc h
    pop de
    add hl, bc
    inc b
    add [hl]
    adc [hl]
    ld a, c
    ld [hl], c
    inc sp
    jr nz, jr_04f_745b

    ldh [$1f], a

jr_04f_73e6:
    add h
    nop
    xor e
    add hl, bc
    rla
    ld b, $29
    ld [$1053], sp
    cp a
    sub b
    rst $38
    pop af
    and l
    ld bc, $a660
    add l

jr_04f_73f9:
    ld [bc], a
    ld b, b
    rst $38
    add b
    add l
    ld bc, $046a
    inc bc
    rlca
    ld bc, $0008
    ld [hl+], a
    db $10
    ld bc, $1118
    and e
    pop af
    ld bc, $0703
    adc l
    nop
    inc b
    inc de
    add d
    add e

jr_04f_7416:
    add l
    rst $08
    ld a, [$e779]
    ld [hl], b
    rst $38
    jr nc, jr_04f_7416

    jr c, @+$01

    dec sp
    cp $3e
    ld hl, sp+$78
    nop
    add b

jr_04f_7428:
    jp $1e02


    ld b, e
    ld h, b
    and b
    inc b
    ld b, b
    and b
    ldh [$60], a
    and b
    ld b, e
    ldh [$60], a
    ld c, $70
    jr nc, jr_04f_74ab

    ld [hl], b
    ld a, b
    jr c, jr_04f_74b7

    jr jr_04f_73f9

    jr nc, jr_04f_745b

    ldh a, [$90]
    ld [hl], b
    ret nc

    inc hl
    ldh [rSB], a
    ret nz

    ret nz

    add a
    ld [bc], a
    inc h
    adc e
    nop
    add b
    inc de
    rst $38
    ldh [$ef], a
    ret c

    nop
    inc b
    add a
    adc a

jr_04f_745b:
    ld a, h
    ld [hl], b
    add hl, sp
    jr nz, jr_04f_74d9

    ldh [$1f], a
    jr c, jr_04f_74a3

    rlca
    ld a, a
    nop
    add l
    nop
    ldh [rSC], a
    rst $38
    ld bc, $86ef
    nop
    jp hl


    dec bc
    rlca
    ld c, $57
    or b
    add a
    ld b, b
    rst $08
    ld b, b
    rst $38
    ld h, c
    rst $38
    sbc [hl]
    ld b, e
    rst $38
    nop
    rrca
    inc b
    inc bc
    ld [$1100], sp
    nop
    ld [bc], a
    db $10
    dec b
    db $10
    inc de
    nop
    ld [$0400], sp
    inc bc
    and h
    ld bc, $009f
    nop
    ld b, e
    add b
    jr nz, jr_04f_74a0

    jr nz, jr_04f_749d

jr_04f_749d:
    ld h, b
    jr nz, @-$5e

jr_04f_74a0:
    ld h, b
    rst $38
    db $ec

jr_04f_74a3:
    inc hl
    rrca
    ld bc, $0f01
    ld c, $17
    ld [de], a

jr_04f_74ab:
    rra
    jr jr_04f_74ed

    ld [hl+], a
    ccf
    ld h, $3f
    inc a
    rlca
    rlca
    add a
    sub l

jr_04f_74b7:
    ld bc, $0101
    ld b, l
    inc bc
    ld [bc], a
    dec b
    rlca
    ld b, $07
    dec b
    rrca
    add hl, bc
    ld b, e
    rrca
    ld [$1303], sp
    ld [de], a
    dec c
    dec c
    db $ec
    dec h
    inc hl
    ld bc, $0245
    inc bc
    ld e, $62
    ld h, e
    cp d
    cp e
    rst $38

jr_04f_74d9:
    and l
    rst $38
    dec b
    di
    ldh a, [rIE]
    rlca
    rst $38
    sub b
    rst $38
    and h
    rst $38
    xor h
    ld a, a
    ld a, c
    rst $38
    adc a
    sbc a
    add e
    rra

jr_04f_74ed:
    add hl, de
    ccf
    add hl, sp
    ccf
    ld [hl-], a
    ld a, a
    ld b, e
    ld [bc], a
    rst $38
    ld c, $22
    rst $38
    ld bc, $21ff
    rst $20
    and b
    rst $28
    ld h, b

Call_04f_7500:
    rst $38
    ld h, $df
    adc $1f
    inc b
    ld b, e
    rra
    db $10
    dec b
    dec l
    jr nz, jr_04f_7526

    add hl, de
    ld b, $06
    ld h, a
    ld a, [de]
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    inc b
    rlca
    dec c
    rrca
    ld d, $1f
    ld h, $3f
    ld [bc], a
    ld e, a
    ld b, $af
    adc c
    rst $18
    add hl, bc
    cp a

jr_04f_7526:
    ld de, $125f
    cp a
    ld [hl+], a
    ld a, a
    inc h
    ld b, h
    rst $38
    jr z, @+$45

    db $10
    rst $38
    add hl, de
    sub b
    rst $38
    jp c, $fdff

    rst $28
    rst $38
    ld b, a
    ld hl, sp-$40
    ldh a, [rLCDC]
    pop af
    add b
    di
    add b
    rst $38
    ld b, b
    ld a, a
    ld l, b
    ccf
    ld l, e
    rra
    ld [hl], d
    cp a
    ldh a, [rLY]
    rst $38
    nop
    ld a, [bc]
    db $10
    rst $38
    pop bc
    rst $38
    jr nc, @+$01

    rrca
    rst $38
    cpl
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    inc bc
    sub b
    sub b
    ldh [$e0], a
    xor e
    nop
    ld l, [hl]
    ld b, e
    ld b, b
    ret nz

    ld b, e
    and b
    ldh [rSB], a
    db $10
    ldh a, [rSCX]
    ld [$45f8], sp
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $e0
    inc hl
    inc bc
    rst $38
    ld a, [bc]
    cp $0b
    cp $17
    db $fd
    rla
    cp $2f
    rst $38
    ld e, a
    ld a, [$fdff]
    rst $38
    rst $38
    ccf
    ld bc, $007f
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc de
    and $26
    add sp, $2e
    db $fd
    rra
    and [hl]
    pop hl
    ld [$fc00], sp
    ld a, h
    db $fd
    add c
    rst $38
    rst $38
    rlca
    rlca
    db $ec
    dec hl
    rla
    jr jr_04f_75c9

    xor $ee
    rst $38
    xor e
    ld e, $00
    rst $38
    di
    rst $38
    nop
    rst $38
    and h
    rst $38
    ld [hl], e
    cp $8a
    db $fc
    inc e
    ld hl, sp+$38
    ld hl, sp+$28
    ld b, e
    db $fc

jr_04f_75c9:
    inc b
    inc bc
    ld a, h
    inc b
    ld a, h
    ld b, h
    ld b, e
    ld a, [hl]
    ld b, d

jr_04f_75d2:
    inc de
    cp $82
    cp $02
    db $fc
    ld b, h
    cp $da
    cp $32
    rst $38
    db $ed
    rst $38
    ld c, l
    cp $a2
    db $fd
    push bc
    ld h, a
    ld h, a
    ld hl, sp+$2b
    or [hl]
    dec bc
    add b
    add b

jr_04f_75ed:
    ret nz

    ret nz

    and b
    jr nz, jr_04f_75d2

    ldh [$c0], a
    ld b, b
    jr nz, jr_04f_7617

    db $f4
    dec l
    ld bc, $6172
    dec b
    db $fc
    dec hl
    rst $38
    inc e
    rst $20
    inc hl
    adc c
    ld bc, $8a16
    ld bc, $0a60
    inc bc
    db $fc
    ld a, h
    push bc
    ld hl, sp+$1f
    db $e3
    rst $38
    rrca
    rst $30
    ld hl, sp+$69
    adc h

jr_04f_7617:
    nop
    add b
    ld c, $0f
    ld hl, sp-$70
    ei
    cp b
    rst $38
    cp b
    ld a, [hl]
    ld a, h
    cp $8c
    sbc [hl]
    adc h
    rra
    inc e
    ld b, e
    ccf
    jr c, jr_04f_762d

jr_04f_762d:
    ld a, a
    ld b, e
    ld [$06ff], sp
    inc h
    rst $38
    inc b
    rst $38
    ld [hl+], a
    rst $20
    and c
    add e
    nop
    xor h
    adc c
    nop
    ldh [rNR21], a
    sbc e
    rst $38
    rst $38
    cp $87
    nop
    inc bc
    nop
    dec d

jr_04f_7649:
    nop
    xor e
    add b
    ld e, a
    ret nz

    rst $38
    add c
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    rra
    cp a
    ld [hl+], a
    ccf
    dec bc
    cp a
    cp a
    push af
    rst $38
    ld [$f8ff], a
    rra
    rst $38
    rst $00
    rst $38
    jr c, jr_04f_75ed

    ld bc, $1140
    rst $38
    dec e
    db $fc
    di
    ldh a, [rIE]
    ld bc, $00ff
    rst $38
    ld c, $f3
    jr nc, jr_04f_7649

    ld [hl], b
    db $fd
    inc e
    rst $38
    jp Jump_04f_5b02


    ld [de], a
    ldh a, [$f9]
    ld hl, sp-$05
    ei
    rst $38
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    rrca
    cp $7f
    ld hl, sp-$01
    add c
    rst $38
    rra
    add l
    ld bc, $0da0
    ld a, [hl]
    jr nz, @+$01

    ld h, e
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    ld [hl], e
    cp $2a
    db $fc
    inc d
    ld b, e
    ld hl, sp+$08
    ld b, [hl]
    db $fc
    inc b
    ld b, e
    inc c
    db $fc
    inc c
    add h
    db $fc
    add h
    cp $22
    cp $42
    cp $a2
    rst $38
    ld b, c
    rst $38
    adc l
    adc d
    nop
    ldh a, [$08]
    nop
    cp a
    ld [$83bf], sp
    rst $38
    sub d
    rst $38
    ldh [$8c], a
    ld bc, $8a04
    ld bc, $0951
    pop af
    db $10
    db $e3
    jr nz, @-$0f

    jr nz, @+$01

    ld de, $0eff
    adc c
    ld bc, $8b66
    ld bc, $43b0
    db $fc
    inc b
    nop
    cp $84
    ld bc, $89c3
    ld bc, $ffc6
    ld a, l
    inc bc
    ld bc, $0203
    ld [bc], a
    inc hl
    ld bc, $8883
    ld bc, $0203
    ld b, e
    rlca
    inc b
    inc bc
    inc c
    dec bc
    ld [$470f], sp
    db $10
    rra
    ld b, e
    ld de, $451e
    dec bc
    inc c
    ld bc, $0407
    ld b, e

jr_04f_770e:
    dec b
    ld b, $43
    inc bc
    ld [bc], a
    ld bc, $0101
    db $ec
    dec hl
    ldh [$29], a
    add b
    nop
    ld d, b
    ld d, b
    jr nc, jr_04f_7748

    jr jr_04f_7746

    ld e, [hl]
    ld [bc], a
    cp h
    ld [bc], a
    ld e, a
    ld bc, $01ff
    ld b, [hl]
    cp c
    and c
    ld e, [hl]
    ld d, b
    xor a

jr_04f_7730:
    and b
    ld e, a
    ld e, $e3
    ld a, a
    add c
    rst $38
    nop
    db $fc
    inc bc
    push af
    ld a, [bc]
    ld [$c515], a
    ld a, [hl-]
    jp $833c


    ld a, h
    ld b, a
    add a

jr_04f_7746:
    ld a, b
    dec bc

jr_04f_7748:
    rst $00
    jr c, jr_04f_770e

    cp h
    ld h, e
    ld e, h
    ld sp, $0c3e
    rrca
    inc bc
    inc bc
    adc $dd
    db $10
    ld bc, $0301
    rlca
    ld b, $0a
    ld a, [bc]
    ld [$100c], sp
    db $10
    ld de, $1e19
    inc de
    rla
    jr jr_04f_77ac

    rrca
    ld [$0701], sp
    inc b
    adc l
    nop
    ld c, h
    ld [hl+], a
    add b
    nop
    ld b, b
    ld b, l
    ld b, b
    ret nz

    rrca
    add b
    add b
    ld b, b
    ret nz

    ld sp, $7ff1
    adc [hl]
    db $e3
    inc e
    push de
    jr z, jr_04f_7730

    ld d, b
    sub l
    ld l, b
    ld b, l
    rrca
    ldh a, [$0d]
    ld b, $f8
    add a
    ld a, b
    add e
    ld a, h
    ret nz

    ccf
    rst $20
    rra
    ccf
    ret z

    ld a, a
    ld a, a
    ld h, h
    db $10
    jr nc, jr_04f_7807

    ld e, b
    ld l, b
    sbc b
    rst $18
    ccf
    ret nz

    rst $38
    rrca
    ldh a, [rNR44]
    rst $00
    dec b
    dec b

jr_04f_77ac:
    ld b, $07
    ld h, c
    dec b
    ret nz

    jp Jump_04f_60ff


    db $fc
    inc bc
    ld c, e
    rst $38
    nop
    rrca
    sbc a
    add b
    ld c, e
    ld b, b
    ld b, l
    ld b, b
    dec hl
    jr nz, jr_04f_77f8

    jr nz, jr_04f_7804

    ld b, b
    ld a, a
    ld b, h
    ld h, e
    ld e, [hl]
    ld b, e
    inc hl
    ld a, $03
    ld a, a
    ld e, h
    cp a
    ret nz

    ld b, e
    rra
    ldh [$0e], a
    rrca
    ldh a, [$83]
    ld a, h
    add b
    ld a, a
    ret nz

    ccf
    and b
    rra
    ld d, b
    rrca
    xor b
    inc bc
    ld d, a
    add a
    or c
    ld [bc], a
    ldh [rIE], a
    rst $38
    add e
    nop
    rst $00
    rrca
    inc bc
    ld b, $1f
    jr @-$01

    db $e3
    ld sp, $02cf

jr_04f_77f8:
    cp $82
    ld a, [hl]
    call nz, $e43c
    inc e
    ld b, e
    ld [c], a
    ld e, $43
    pop bc

jr_04f_7804:
    ccf
    inc bc
    pop af

jr_04f_7807:
    rrca
    ld hl, sp+$07
    ld b, e
    db $fc
    inc bc
    ld b, e
    cp $01
    add sp, $21
    rst $38
    nop
    ld bc, $837c
    ret


    ld bc, $c443
    xor e
    ld [bc], a
    ld b, $ff
    add hl, sp
    add e
    rst $18
    ld [bc], a
    nop
    ret nz

    add b
    cp b

jr_04f_7827:
    nop
    ld c, a
    dec hl
    add b
    ld b, l
    ret nz

    ld b, b
    rlca
    ld h, b
    and b
    and b
    ld h, b
    ldh a, [rNR10]
    ld hl, sp+$18
    ld b, h
    call nz, $023c
    db $fc
    ld hl, sp+$78
    and l
    nop
    ldh [rSB], a
    ret nz

    ld b, b
    ld b, a
    jr nz, jr_04f_7827

    ld bc, $a060
    or d
    nop
    ld c, h
    ld d, $01
    ld [bc], a
    ld b, $00

jr_04f_7852:
    ld [$1008], sp
    dec d
    jr nz, jr_04f_7882

    jr nz, jr_04f_7890

    ld b, c
    ld [hl], l
    ld c, d
    ld l, d
    ld d, l
    ld b, l
    cp d
    adc d
    push af
    add l
    ld a, [$8343]
    db $fc
    ld b, e
    ld b, a
    ld a, b

jr_04f_786b:
    ld bc, $704f
    ld b, e
    cpl
    jr nc, jr_04f_7852

    dec l
    rra
    db $10
    ld d, $19
    ld c, $09
    inc b
    rlca
    nop
    ld l, h
    adc h
    sub d
    jr c, jr_04f_7885

    ld a, b

jr_04f_7882:
    ld [$08f0], sp

jr_04f_7885:
    ld [hl], b
    db $10
    ldh [rNR10], a
    jr nz, jr_04f_786b

    nop
    ldh [rNR41], a
    ldh a, [rNR10]

jr_04f_7890:
    ldh a, [$e8]
    jr jr_04f_7890

    inc b
    ld a, [c]
    ld c, $e1
    rra
    call nc, $ab2b
    ld d, h
    rst $10
    jr z, @+$29

    ret c

    ld c, e
    rrca
    ldh a, [rTAC]
    add a
    ld hl, sp+$67
    ld a, b
    inc de
    inc e
    inc b
    rlca
    sub d
    nop
    ld d, b
    ld [bc], a
    add b
    pop hl
    ld [hl], c
    add e
    ld bc, $097e
    ld b, $06
    add hl, bc
    ld [$1012], sp
    rrca
    ld c, $01
    ld bc, $00c5
    rst $20
    jp $e300


    dec b
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    ld b, e
    rrca
    ld [$0e43], sp
    add hl, bc
    ret z

    nop
    cpl
    ld c, $01
    ld h, b
    ld h, b
    sbc b
    sbc b
    inc l
    inc b
    ld e, [hl]
    ld [bc], a
    db $fc
    ld [bc], a
    di
    dec c
    add c
    ld a, a
    add l
    ld bc, $01cc
    ld a, $c1
    add e
    nop
    sbc d
    add hl, bc
    add sp, $17
    ret nc

    cpl
    xor b
    ld d, a
    ld d, h
    xor e
    add hl, hl
    sub $c3
    ld bc, $019f
    rlca
    ld hl, sp+$45
    rrca
    ldh a, [$86]
    nop
    ret nc

    inc b
    jr jr_04f_792a

    ld de, $1b16
    ld b, e
    rrca
    ld [$0185], sp
    jr nc, jr_04f_7921

    ldh [$c3], a
    rst $38
    ldh a, [$fc]
    di
    ld l, a
    ldh a, [$9f]
    ld h, b
    ld c, $08

jr_04f_7921:
    inc c
    adc h
    nop
    db $d3
    adc l
    ld bc, $0320
    ccf

jr_04f_792a:
    ret nz

    rrca
    ld bc, $018d
    ld [hl-], a
    rst $38
    db $ec
    dec h
    ld c, $01
    inc bc
    inc bc
    rlca
    rlca
    rrca
    dec bc
    rrca
    dec d
    rra
    dec de
    rra
    dec d
    rra
    rra
    ld b, e
    rra
    rrca
    ld [hl+], a
    rrca
    ld de, $1f1f
    rrca
    ld e, $3f
    inc a
    ld e, a
    ld a, b
    ld l, a
    ld h, e
    call c, $b8c4
    xor b
    sub b
    sub b
    ld h, b
    ld h, b
    add e
    xor d
    ld b, l
    ld bc, $0102
    inc bc
    nop
    ld b, h
    inc bc
    inc b
    inc b
    add h
    ld b, a
    add b
    rst $00
    ld [$6743], sp
    sbc b
    ld bc, $007f
    ld b, e
    ccf
    ld b, b
    ld [$443b], sp
    inc de
    inc l
    ld de, $792e
    cp $fe
    inc h
    rst $38
    inc e
    db $ed
    di
    add $c1
    add a
    ret nz

    adc a
    adc [hl]
    sub a
    sbc b
    cp a
    or b
    ld a, a
    and b
    cp $21
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add hl, sp
    rst $38
    ld [c], a
    cpl
    ld h, $1b
    ld a, [de]
    ld bc, $f2c9
    add e
    pop de
    ldh [rLY], a
    add d
    ld bc, $0782
    add b
    add e
    ld b, h
    inc bc

jr_04f_79ad:
    call nz, Call_04f_408f
    add a
    ld l, b
    sub a
    ld l, b
    adc a
    ld [hl], b
    rra
    ldh [$bf], a
    ld b, b
    ld d, a
    xor b
    and a
    ld e, b
    ld b, a
    cp b
    adc a
    ld [hl], b
    ld c, a
    or b
    sbc a
    ld h, b
    dec d
    ld [$f58a], a
    ret nz

    rst $38
    add sp, -$01
    push af
    rst $38
    ld l, d
    rst $38
    rst $38
    ld a, a
    rst $30
    ld a, b
    rst $18
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    db $10

jr_04f_79de:
    di
    db $10
    rst $00
    and c
    rst $38
    ld h, d
    dec a
    sbc $19
    add hl, sp
    ldh a, [$f0]
    ld h, h
    inc e
    ld b, b
    add h
    ld b, b
    ld b, c
    and h
    ret nz

    dec l
    ret nc

    cpl
    ret nz

    ccf
    and b
    ld e, a
    pop de
    ld l, $a0
    ld e, [hl]
    pop de
    ld l, $a3
    ld e, h
    jp nz, $a73d

    ld e, b
    jp nz, $c53d

    ld a, [hl-]
    ld b, e
    add b
    ld a, a
    rla

jr_04f_7a0d:
    adc d
    ld [hl], l
    ld a, [de]
    push hl
    ccf
    ret nz

    ld a, a
    add b
    rla
    add sp, $0a
    push af
    dec d
    ld [$fd42], a

jr_04f_7a1d:
    xor b
    rst $38
    call nc, $bfff
    ld a, a
    rst $30
    rrca
    and h
    rst $08
    inc c
    jr jr_04f_7a0d

    jr nz, jr_04f_79ad

    ld b, b
    jp nz, $e540

    ld b, b
    di
    db $ec
    ld de, $a512
    pop de
    nop
    add b
    add e
    add d
    and l
    nop
    sbc b
    ldh [$2a], a
    db $10
    jr nz, jr_04f_7a53

    ret nz

    jr nc, @-$5e

    ld d, b
    ld b, b
    or b
    add b
    ld h, b
    nop
    ld [c], a
    add b
    ld h, [hl]
    nop
    db $fc
    db $10
    db $ec

jr_04f_7a53:
    jr nc, jr_04f_7a1d

    ld h, b
    sbc b
    ldh [rNR10], a
    ret nz

    jr nc, @-$3e

    jr nz, jr_04f_79de

    ld h, a
    add b
    ld a, [hl]
    nop
    db $fc
    add b
    ld a, b
    nop
    ldh a, [rP1]
    cp $00
    ldh a, [rNR50]
    add b
    nop
    ret nz

    ld c, c
    ret nz

    ld b, b
    ld bc, $8080
    add l
    jp nz, $008b

    jr nc, @-$7a

    nop
    add hl, sp
    inc e
    ld e, $1f
    inc e
    rra
    jr jr_04f_7aa3

    add hl, sp
    ld d, $32
    ld l, $2a
    inc l
    inc h
    jr jr_04f_7aa5

    nop
    ld [bc], a
    nop
    ld b, b
    jr nz, jr_04f_7ad3

    ld b, c
    jr nz, @+$23

    nop
    add hl, bc
    nop
    add hl, bc
    inc b
    ld b, e
    dec c
    ld [de], a
    inc bc
    rrca
    db $10
    ld a, e
    db $fc

jr_04f_7aa3:
    add l
    nop

jr_04f_7aa5:
    db $76
    add hl, bc
    db $fd
    di
    and $e1
    rst $08
    db $ec
    rst $18
    ret c

    sbc a
    ret nc

    add [hl]
    nop
    add [hl]
    nop
    ld bc, $0083
    adc [hl]
    inc b
    rst $08
    ld c, b
    add a
    add a
    inc bc
    rlc b
    and l
    ld h, c
    ld a, [bc]
    ld hl, $0102
    add c

jr_04f_7ac8:
    ld [bc], a
    add a
    nop
    add e
    ld b, h
    adc a
    ld b, b
    ld b, e
    rst $00
    jr z, jr_04f_7ae1

jr_04f_7ad3:
    ld b, a
    cp b
    adc e
    ld [hl], h
    ld b, [hl]
    cp c
    adc a
    ldh a, [$c7]
    ei
    jp hl


    cp $f8
    rst $38

jr_04f_7ae1:
    ld a, a
    adc h
    nop
    db $d3
    rlca
    rst $28
    jr nz, jr_04f_7ac8

    pop bc
    rst $38
    ld b, [hl]
    dec a
    cp $88
    nop
    add sp, $61
    ld bc, $1002
    ld h, c
    dec e
    jr nc, jr_04f_7af9

jr_04f_7af9:
    ld [hl], b
    ld b, b
    or c
    and c
    ld d, d
    ld b, c
    or d
    add e
    ld [hl], h
    ld b, e
    cp h
    and [hl]
    ld e, c
    scf
    ret z

    cp [hl]
    ld b, c
    rra
    ldh [$9e], a
    pop hl
    sbc $e1
    cp $eb
    pop hl
    rst $38
    ei
    adc d
    ld bc, $6425
    dec b
    ld [$1800], sp
    nop
    sub b
    nop
    call nz, $4701
    add e
    cp c
    rlca
    add b
    ld h, b
    nop
    ldh [$80], a
    ld b, b
    nop
    ret nz

    add h
    adc a
    ld [bc], a
    ldh [rP1], a
    add b
    jp $8e01


    add a
    ld bc, $6378
    nop
    ld a, b
    adc d
    ld bc, $65c5
    add hl, bc
    add hl, bc
    nop
    inc b
    adc b
    add b
    call $cfc2
    jp hl


    cp $8a
    nop
    inc e
    inc b
    nop
    ld [c], a
    pop af
    call c, $a3e3
    nop
    sbc h
    adc a
    cp a
    add [hl]
    sub c
    inc b
    ret nz

    jp $ffc7


    rst $38
    ld l, e
    ld b, $e0
    ldh a, [$f8]
    db $fc
    cp $fe
    and $8c
    ld [bc], a
    ld d, e
    adc e
    nop
    ld [hl], b
    add e
    rst $28
    rst $38
    ld a, l
    dec c
    inc bc
    rlca
    ld a, [bc]
    add hl, bc
    inc b
    inc de
    nop
    rla
    nop
    daa
    inc b
    inc hl
    ld [bc], a
    ld b, c
    ld c, c
    ld bc, $0740
    ld [bc], a
    ld hl, $1304
    inc c
    rrca
    inc bc
    inc bc
    db $ec
    dec a
    inc de
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$0f
    rst $38
    inc de
    cp $31
    rst $28
    add hl, hl
    rst $20
    dec h
    db $e3
    dec d
    di
    add hl, de
    rst $30
    rrca
    rst $38
    ld b, l
    ld a, [bc]
    cp $43
    inc d
    db $fc
    ld bc, $f878
    db $f4
    daa
    rst $18
    inc b
    ld bc, $0301
    ld [bc], a
    dec b
    ld c, b
    inc b
    rlca
    add hl, de
    ld b, $04
    ld a, d
    ld [hl], d
    add a
    add [hl]
    rst $08
    add d
    ld a, a
    ld b, d
    ccf
    ld [hl+], a
    ld a, a
    ld [hl], c
    rst $38
    adc c
    rst $38
    ld b, $ff
    ccf
    ld [c], a
    ld [hl+], a
    jp nz, $8142

    add c
    inc hl
    ld bc, $25e0
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    add hl, bc
    rrca
    ld b, $07
    inc b
    rlca
    ld c, $0b
    rra
    ld de, $101f
    ccf
    ld hl, $223e
    ccf
    daa
    rra
    ld e, $07
    inc b
    inc bc
    ld [bc], a
    dec b
    rlca
    inc b
    ld b, $08
    add hl, bc
    ld [$070f], sp
    rlca
    ld l, c
    inc bc
    rra
    rra
    ld a, c
    ld l, b
    ld b, e
    sbc e
    adc b
    ld b, l
    sub a
    sub b
    ldh [$5d], a
    sbc a
    db $10
    ld e, a
    nop
    xor a
    nop
    rst $18
    add b
    ld a, a
    ld b, b
    ccf
    ld hl, $627e
    rst $38
    ld h, c
    rst $38
    ld bc, $00ff
    rst $38
    cp h
    rst $38
    jp Jump_04f_7fb3


    add h
    ld a, a
    dec b
    cp $09
    cp $c8
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    dec c
    rst $38
    ld [bc], a
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    add sp, -$01
    ret c

    rst $18
    inc c
    rrca
    rrca
    dec bc
    rra
    ld de, $919f
    xor $62
    and $62
    xor [hl]
    ld [c], a
    ld a, $e2
    ld e, [hl]
    jp nc, $929e

    dec a
    dec sp
    ld b, l
    ld a, a
    ld b, c
    ld a, a
    add c
    adc a
    add d
    cp $7c
    ld a, h
    add b
    add b
    ldh a, [rSVBK]
    db $fc
    ld c, h
    cp $42
    rst $38
    ld b, a
    rst $38
    add h
    ld b, h
    rst $38
    adc b
    nop
    db $10
    call nz, $19cf
    ld [hl], c
    ld c, $02
    adc [hl]
    add d
    sbc h

jr_04f_7c7b:
    add h
    cp a
    add a
    cp $0c
    rst $38
    ld a, h
    cp e
    add $41
    add a
    add d
    ld bc, $030c
    db $10
    rrca
    jr nz, jr_04f_7cad

    nop
    add h
    sbc [hl]
    dec b
    db $e3
    cp $1f
    rst $38
    pop af
    ldh a, [rSCX]
    jr nz, jr_04f_7c7b

    inc bc
    ldh [$e0], a
    add b
    add b
    db $f4
    add hl, hl
    nop
    sbc [hl]
    inc bc
    ret nz

    ld b, b
    add b
    add b
    adc e
    xor a
    inc c
    ret nz

jr_04f_7cad:
    ret nz

    ld a, b
    jr c, jr_04f_7ccd

    inc b
    db $fc
    inc b
    ld hl, sp+$38
    ldh a, [$f0]
    ret nz

    ld b, h
    ret nz

    ld b, b
    inc bc
    ret nz

    ret nz

    ldh [$80], a
    ld b, l
    ldh [rNR41], a
    ldh a, [rNR52]
    nop
    sbc h
    ld [bc], a
    ld bc, $0100
    ld b, e

jr_04f_7ccd:
    ld bc, $0102
    ld [bc], a
    inc bc
    and l
    reti


    adc d
    nop
    ret nc

    ld c, $5e
    ld bc, $006f
    add e
    nop
    ld bc, $0700
    nop
    rrca
    db $10
    rrca
    ld h, b
    sbc a
    ld b, e
    ld bc, $05ff
    add e
    rst $38
    ld a, [hl]
    ld a, a
    inc e

jr_04f_7cf0:
    rra
    adc e
    nop
    db $f4
    rrca
    rst $38
    add b
    ld a, a
    db $fc
    ld a, a
    jp $ff73


    and h
    rst $38
    dec h
    cp $49
    cp $c8
    rst $38
    adc b
    ld bc, $08b0
    db $fc
    rst $30
    db $f4
    inc hl
    db $e3
    jr nz, jr_04f_7cf0

    add b
    add b
    add e
    ld bc, $89ea
    ld bc, $85ec
    xor a
    ldh [rBGP], a
    ld a, a
    ldh a, [$a7]
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    ld d, b
    db $fc
    and b
    ld hl, sp-$60
    ldh a, [$d1]
    ldh [rHDMA2], a
    ld h, c
    ld e, h
    ld h, e
    ld c, h
    ld [hl], e
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$7f]
    xor b
    rst $28
    ccf
    rst $20
    cp $0c
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    pop hl
    rra
    db $fc
    rra
    pop af
    ld a, a
    pop hl
    cp $fa
    adc [hl]
    db $fc
    db $e4
    inc e
    ld [bc], a
    ld a, $42
    ld a, $85
    ld a, a
    ld b, l
    dec b
    rst $38
    ld b, e
    ld [bc], a
    cp $05
    inc b
    db $fc
    ld [$30f8], sp
    ldh a, [$8d]
    ld bc, $83fe
    rst $28
    add l
    ld bc, $0530
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld h, e
    add e
    ld bc, $863c
    ld bc, $0490
    ld sp, $c2ce
    adc [hl]
    ld [bc], a
    add e
    ld bc, $039c
    ccf
    ld hl, $233f
    add e
    ld bc, $0904
    rrca
    inc c
    rlca
    rlca
    inc b
    rlca
    ld [$0809], sp
    dec bc
    adc l
    ld bc, $8712
    ld bc, $0960
    xor [hl]
    and d
    ld h, [hl]
    ld [c], a
    ld l, [hl]
    ld [c], a
    ld a, [hl]
    ld [c], a
    sbc [hl]
    sub d
    adc l
    ld bc, $ff72
    ld h, a
    ld a, [bc]
    ld bc, $0301
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, [hl]
    ld [$070f], sp
    inc bc
    inc c
    rlca
    rlca
    inc bc
    inc b
    inc bc
    ld [bc], a
    rst $00
    sbc b
    rrca
    inc bc
    rlca
    add hl, de
    jr c, jr_04f_7e38

    ld b, b
    db $fc
    and b
    ei
    call z, $90ff
    ld a, a
    ld [hl], c
    ld b, $0e
    add [hl]
    or [hl]
    inc h
    ld bc, $0001
    ld bc, $0b77
    ld bc, $0f03
    inc e
    jr c, jr_04f_7e52

    and b
    ret nz

    ret nz

    nop
    jp Jump_04f_4b00


    rst $38
    nop
    rlca
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    rst $38
    ld b, h
    rst $38
    nop
    rlca
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, e
    ld b, b
    cp a
    dec b
    ld b, e

jr_04f_7e15:
    cp e
    ld b, h
    ld a, a
    add l
    db $fd
    ld b, e
    add d
    rst $38
    ldh [rNR41], a
    add c
    ld a, a
    add b
    rst $38
    nop
    rst $18
    nop
    sbc a
    nop
    adc a
    nop
    add a
    nop
    rst $08
    add b
    ld sp, hl
    add b
    ld a, c
    ld b, b
    ccf
    jr nc, jr_04f_7e74

    inc a
    ld [hl], b
    ld c, a

jr_04f_7e38:
    cp [hl]
    sub e
    db $ed
    and h
    ld a, a
    ld h, h
    ld e, $1f
    ld h, e
    rlca
    ldh [$e0], a
    db $fc
    inc e
    rst $38
    inc bc
    ld a, a
    nop
    ret z

    rst $08
    nop
    db $10
    ld c, b
    rst $38
    nop
    inc b

jr_04f_7e52:
    inc b
    rst $30
    jr c, jr_04f_7e15

    ret nz

    ld c, e
    rst $38
    nop
    ld de, $07fb
    ld a, a
    ld hl, sp-$1d
    nop
    ldh a, [$60]
    db $fd
    add b
    rst $38
    jr @+$01

    ld h, c
    rst $38
    add $bf
    ld a, b
    ld d, e
    rst $38
    nop
    dec c
    ld [hl], a
    ld hl, sp+$26

jr_04f_7e74:
    rst $28
    ld c, a
    ret z

    sub a
    sub d
    dec e
    inc d
    rrca
    inc c
    inc bc
    inc bc
    xor c
    nop
    ld [bc], a
    ld b, e
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    inc b
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    ld b, [hl]
    ld c, $f6
    nop
    db $e4
    ld b, l
    ld e, $e2
    add hl, bc
    rra
    di
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    db $fd
    inc bc
    rst $38
    ld b, l
    ld bc, $02fe
    ld hl, $c3fc
    ld b, l
    db $fc
    inc bc
    ld bc, $01fe
    ld d, c
    rst $38
    nop
    dec c
    cp $01
    ei
    rlca
    dec a
    rst $38
    ld a, [c]
    ld c, $fc
    ld c, h
    add sp, -$68
    ld [hl], b
    ldh a, [$ec]
    ld h, $a7
    nop
    ld b, c
    inc h
    add b
    ld [hl+], a
    ret nz

    ld b, h
    ldh [$60], a
    nop
    jr nz, jr_04f_7f12

    pop hl
    ld hl, $e306
    and e
    ld [hl], a
    cp a
    ld a, [hl]
    cp a
    ld a, b
    ld b, e
    cp a
    ld h, b
    ld b, e
    ld a, a
    ret nz

    dec b
    rst $38
    pop bc
    cp $fe
    nop
    add b
    db $ec
    ld b, c
    add hl, bc
    jr nc, @+$7a

    ld a, h
    db $fc
    and $c2
    db $e4
    add e
    rst $18
    ld bc, $00a5
    add h
    dec b
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    and e
    ld bc, $ce1c
    ld bc, $018d
    rst $38
    ldh a, [rSCX]
    ld a, a
    ldh [rDIV], a
    cp a
    ldh a, [$9f]
    rst $30
    rst $08
    add e
    nop
    adc h

jr_04f_7f12:
    adc d
    nop
    ret nc

    inc bc
    nop
    rst $18
    jr c, @+$01

    ld b, h
    ld hl, sp+$0f
    ld b, e
    rra
    ldh a, [rTAC]
    ccf
    ldh [$bf], a
    ret nz

    ei
    rlca
    ld a, a
    ld hl, sp-$72
    nop
    nop
    ld b, $04
    ld b, $09
    dec c
    dec bc
    rrca
    add hl, bc
    ld b, l
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    add l
    nop
    ld h, b
    dec b
    pop hl
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    and e
    nop
    ld a, d
    ld [bc], a
    rst $30
    ld hl, sp-$02
    jr z, @+$01

    inc bc
    cp $ff
    ld hl, sp-$01
    add e
    nop
    ret nz

    ld bc, $033f
    xor l
    nop
    call z, $ef01
    ldh a, [rLYC]
    rst $38
    ld hl, sp+$43
    rrca
    ld hl, sp-$3b
    nop
    ld b, d
    rrca
    ld e, $1e
    inc sp
    ld hl, $4061
    ld a, h
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ld d, d
    ld a, c
    ld d, [hl]
    ccf
    inc [hl]
    adc b
    ld bc, $001c
    ld bc, $0284
    ld b, b
    inc bc
    rst $38
    ldh [rIE], a
    ldh a, [rSCX]
    cp a
    rst $38
    nop
    ld c, a
    ld b, l
    cp a
    ld b, c
    inc bc
    ld a, a
    add c
    rst $38
    add c
    add h
    nop
    add h
    ld [bc], a
    add b
    rst $38
    nop
    adc b
    ld [bc], a
    ld h, b
    ld d, $f8
    rst $28
    add $c2
    add c
    reti


    jr nz, @-$03

    inc h
    sbc a
    ld h, h
    di
    ld c, h
    rst $38
    ld c, c
    rst $38
    ret


    rst $38
    ld a, c
    rst $38

Jump_04f_7fb3:
    ld b, $ff
    nop
    add l
    nop
    jr nz, jr_04f_7fc5

jr_04f_7fba:
    ld h, b
    ld h, b
    or b
    sub b
    rst $38
    cp a
    rst $18
    call z, Call_04f_5273
    dec a

jr_04f_7fc5:
    ld [hl-], a
    xor h
    ld [bc], a
    inc l
    nop
    ld bc, $0288
    ld b, b
    ld c, $bf
    rst $30
    rst $08
    rst $38
    ld b, c
    cp a
    ld b, c
    cp [hl]
    ld b, d
    cp a
    ld b, d
    ld a, a
    add c
    rst $38
    add b
    sub b
    rst $18
    ld de, $ffe0
    ret nz

    dec a
    inc hl
    rst $38
    sbc h
    ld e, a
    ld h, b
    rst $38
    jr nc, jr_04f_7fba

    ld c, [hl]
    rst $28
    ret nz

    rst $38
    ld h, c
    rst $38
    and h
    nop
    db $fd
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
