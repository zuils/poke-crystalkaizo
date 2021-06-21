; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

    ld e, $03
    ld l, d
    ld hl, $5a4f
    rra
    jp $2145


    add a
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld d, e
    ld hl, $541b
    dec de

Call_04a_4013:
    sub a
    ld l, e

jr_04a_4015:
    inc e
    ld [hl], b
    ld d, e
    rra
    jp nz, $207d

    ld e, [hl]
    ld b, c
    jr nz, jr_04a_4015

    ld a, b
    db $20, $bc
    ld b, d
    ld a, [de]
    or l
    ld l, h
    ld e, $7b
    ld l, e
    ld e, $58
    ld [hl], c
    ld a, [de]
    cpl
    ld e, d
    ld [hl+], a
    inc a
    ld d, h
    ld hl, $7850
    ld e, $b3
    ld e, c
    ld e, $0f
    ld b, e
    jr nz, @-$33

    ld a, h

jr_04a_403f:
    db $20, $ad
    ld [hl], a
    jr nz, jr_04a_4081

    ld a, d
    ld e, $89
    ld l, b
    inc e
    adc $69
    jr nz, jr_04a_405d

jr_04a_404d:
    ld a, [hl]
    rra
    rst $00
    ld c, a
    ld e, $00
    ld a, l
    dec e
    ld l, c
    ld l, c
    inc e
    ld sp, $1d55
    jr nz, jr_04a_40ce

jr_04a_405d:
    ld hl, $61a7
    inc e
    xor a
    ld e, b
    ld e, $31
    ld e, e
    jr nz, jr_04a_404d

    ld c, d
    inc e
    or d
    ld a, l
    dec de
    sbc d
    ld c, l
    ld e, $33
    ld [hl], a
    jr nz, jr_04a_408d

    ld b, h
    dec e
    db $dd
    ld h, a
    ld hl, $4dda
    ld hl, $7270
    inc e
    add hl, hl
    ld c, [hl]

jr_04a_4081:
    ld a, [de]
    ret


    ld [hl], d
    ld a, [de]
    sub d
    ld h, [hl]
    ld hl, $797c
    rra
    reti


    ld l, e

jr_04a_408d:
    ld a, [de]
    pop bc

jr_04a_408f:
    ld d, c
    inc e
    and d
    ld c, d
    ld a, [de]
    add h

jr_04a_4095:
    ld h, h
    ld hl, $62dd
    jr nz, jr_04a_403f

    ld d, l
    ld hl, $4a16
    rra
    and $76
    ld [hl+], a
    ld [hl], a
    ld b, e
    ld [hl+], a
    di
    ld e, h
    dec de
    pop de
    ld b, a
    dec de
    ld a, [de]
    ld d, a
    dec de
    dec [hl]
    ld d, l
    dec de
    rst $10
    ld [hl], d
    dec e
    adc [hl]
    ld c, [hl]
    inc e
    db $ec
    ld c, a
    ld hl, $519b
    ld hl, $5f37

jr_04a_40c0:
    jr nz, jr_04a_4095

    ld b, [hl]
    jr nz, @-$07

    ld e, d
    ld e, $8e
    ld a, e
    ld h, c
    ld b, $0c
    ld c, $0d

jr_04a_40ce:
    add hl, bc
    ld a, [bc]
    ld [$2205], sp
    inc b
    nop
    ld [bc], a
    ld b, h
    ld [bc], a
    inc bc
    inc hl
    ld bc, $2cec
    push bc
    xor [hl]
    ldh [rNR41], a
    ld [bc], a
    inc b
    inc b
    inc c
    inc c
    nop
    inc d
    ld [hl+], a
    ld h, $03
    ld b, d
    ld b, c
    ld b, e
    nop
    add c
    add c
    add b
    add b
    ret nz

    add c
    ret nz

    ld b, b
    ld h, b
    ld h, c
    ld d, b
    jr nc, jr_04a_4128

    inc e
    inc de
    rrca
    ld [$0607], sp
    adc d
    push de
    inc e
    add b
    ld b, b
    ld h, b
    db $10
    jr jr_04a_408f

    inc b
    ld h, [hl]
    ld a, [de]
    ld b, c
    ccf
    inc b
    ld a, [hl]
    adc b
    ld a, b
    sub b
    ld a, b
    call c, $3cf0
    inc sp
    ld e, $19
    ld [$070f], sp
    inc b
    inc bc
    inc bc
    sub h
    ld [c], a
    inc c
    inc bc
    inc b
    inc c

jr_04a_4128:
    db $10
    ld [de], a
    nop
    inc h
    ld b, b
    ld c, b
    jr nz, jr_04a_40c0

    ret nz

    jr nz, jr_04a_4176

    add b
    ld b, b
    ldh [$27], a
    nop
    add c
    ld [bc], a
    ld bc, $0205
    dec c
    add d
    xor $91
    rst $38
    jr nz, @+$01

    nop
    rst $18
    ldh [$7f], a
    rst $38
    call c, Call_04a_7f39
    rlca
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld hl, sp+$07
    rst $38
    ret nz

    ccf
    inc a
    inc bc
    inc bc
    ret


    nop
    dec de
    add hl, de
    inc bc
    ld [bc], a
    rlca
    rlca
    adc b
    adc b
    ld sp, $6971
    ld de, $6127
    ld h, c
    and b
    or d
    ld h, c
    ld e, l
    or d
    sbc b

jr_04a_4176:
    ld a, a
    ld l, a
    jp hl


    adc e
    adc c
    inc bc
    ld de, $1643
    ld [de], a
    ld bc, $0c0c
    ld h, c
    rrca
    rlca
    rlca
    dec bc
    ld [$1314], sp
    jr nz, jr_04a_41c5

    ret nz

    ret nz

    nop
    ld bc, $0600
    nop
    ld [$0843], sp
    nop
    dec e
    nop
    stop
    jr nz, jr_04a_419f

    ld b, b

jr_04a_419f:
    rlca
    add c
    sbc a
    inc bc
    cp $0c
    ld hl, sp+$30
    jp nc, $f851

    ld a, h
    and c
    ret nz

    rst $38
    ld bc, $07fb
    ld a, [$04fa]
    ld h, $f7
    ld hl, sp+$47
    rst $38
    nop
    add hl, bc
    cp $01
    ld bc, $aafe
    ld d, l
    push de
    dec hl
    cp $fe

jr_04a_41c5:
    ld h, c
    dec de
    ld [$8138], sp
    rst $00
    ld a, b
    ld b, b
    ld a, a
    jr nc, @-$1f

    ld e, h
    cp $67
    sbc h
    add h
    inc c
    ld b, $02
    ld c, $89
    rla
    sub [hl]
    ld [$44fc], a
    ld a, b
    cp b
    ldh [$60], a
    xor a
    nop
    inc d
    ldh [$2f], a
    add c
    add c
    ld b, b
    pop bc
    ld a, [hl-]
    ld a, [hl-]
    rlca
    rlca
    nop
    add $00
    jr c, @+$2a

    nop
    ld d, c
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld [c], a
    inc e
    sbc l
    ld h, d
    cp $e1
    db $fd
    ldh a, [$fa]
    ld hl, sp+$7d
    ldh a, [$ea]
    add b
    db $fd
    nop
    rst $38
    jp Jump_04a_7c3d


    dec a
    ld d, h
    ld a, b
    ld [$205d], sp
    rst $28
    db $10
    ld b, l
    rst $38
    nop
    add hl, bc
    ld hl, sp+$07
    rrca
    ldh a, [$5f]
    and b
    cp b
    ld c, h
    ld a, [c]
    di
    jp $e100


    dec b
    ld [hl], a
    ld [hl], h
    rst $38
    adc b
    ld a, a
    sbc h
    ld b, e
    rst $20
    ld [hl+], a
    rla
    daa
    pop de
    or $11
    ld d, e
    db $10
    or e
    jr @-$13

    add sp, $09
    ld [$0c09], sp
    dec c
    inc e
    inc h
    ld h, h
    inc c
    add [hl]
    cp [hl]
    adc [hl]
    ld [hl], d
    ld [hl], e
    add e
    nop
    ld c, b
    dec b
    rrca
    rrca
    jr nz, jr_04a_4284

    ret nz

    ret nz

    ld b, e
    ld b, b
    nop
    rlca
    ldh [$e0], a
    db $10
    db $10
    ld a, c
    ld [$0f78], sp
    ld b, e
    ld a, h
    rlca
    ld a, [de]
    cp [hl]
    inc bc
    ld a, [hl]
    inc bc
    cp a
    ld bc, $015f
    cpl
    ld bc, $019f
    cp e
    nop
    ld a, l
    ld [bc], a
    cp $40
    ld a, e
    inc h
    or c
    ld [hl+], a
    ld a, [c]
    pop bc
    push af
    ld b, b
    ld a, [$00a4]
    pop de

jr_04a_4284:
    ldh [rKEY1], a
    ld hl, sp+$07

jr_04a_4288:
    db $e4
    dec de
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    cp $07
    ld sp, hl
    add hl, bc
    ld a, b
    ld [$1030], sp
    ldh [$e0], a
    ret nz

    ret nz

jr_04a_429a:
    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc e
    rst $38
    ld h, e
    cp $81
    ld a, $01
    ld e, $01
    adc h
    add e
    cp $43
    ld a, h
    and h
    ld [hl], b
    xor b
    ld a, b
    sbc b

jr_04a_42b2:
    cp [hl]
    ld c, [hl]
    or c
    ld c, c
    rst $10
    jr z, jr_04a_4288

    jr nc, jr_04a_429a

    jr nz, jr_04a_42fc

    ret nz

    cpl
    nop
    db $10
    rlca
    ld b, a
    ret z

    ccf
    jr nc, jr_04a_42d6

    inc c
    rlca
    ld [de], a
    dec de
    ld hl, $4115
    ld a, [hl+]
    add b
    push de
    nop
    ld l, [hl]
    add b
    ld b, e
    ccf

jr_04a_42d6:
    ret nz

    ld b, e
    rra
    ldh [$e0], a
    inc hl
    rrca
    pop af
    rlca
    ld sp, hl
    ld a, [bc]
    or $8c
    db $fc
    ld d, b
    ld [hl], b
    or b
    jr nc, jr_04a_4335

    inc c
    and d
    ld e, $41
    cp a
    dec b
    ld a, e
    adc e
    ld [hl], l
    ld d, a
    add hl, hl
    ld [$f816], a
    ld hl, sp+$20
    ldh [$a0], a
    ld h, b

jr_04a_42fc:
    ld h, b
    and b
    ret nz

    ld b, b
    adc l
    ld bc, $e06e

Call_04a_4304:
    add hl, hl
    ld b, $06
    rra
    add hl, de
    rst $38
    pop hl
    ld c, [hl]
    ld a, [c]
    inc h
    db $fc
    ld hl, sp-$08
    ld a, b
    ld [$043c], sp
    ld a, [hl-]
    ld b, $72
    ld c, $e2
    ld e, $c6
    ld a, [$3ae6]
    db $f4
    inc e
    call c, $c82c
    jr c, jr_04a_42b2

    ld [hl], h
    inc b
    db $fc
    add h
    ld a, h
    call z, $ec34
    inc d
    ld b, e
    ld hl, sp+$08
    dec b
    add sp, $18

jr_04a_4335:
    add sp, -$68
    adc b
    cp b
    ld b, e
    add h
    db $fc
    add hl, bc

Jump_04a_433d:
    sub h
    db $ec
    jp z, $d6d6

    jp z, $222e

    cpl
    ld hl, $1743
    ld de, $0e03
    ld a, [bc]
    inc b
    inc b
    ld a, a
    adc c
    nop
    ret nz

    dec b
    sbc [hl]
    ld a, c
    ld h, [hl]
    rra
    cp c
    rlca
    add a
    ld bc, $0330
    rst $38
    ld sp, hl
    pop de
    ld hl, $0183
    ld a, [hl-]
    and e
    nop
    adc $0a
    ei
    rst $38
    dec a
    ld h, l
    dec a
    ld d, h
    ld a, c
    ld [$205f], sp
    rst $38
    add h
    ld bc, $e0bf
    jr nz, @-$02

    adc b
    ld a, b
    adc b
    ld hl, sp+$10
    pop de
    jr nc, jr_04a_43b9

    pop de
    or $11
    ld e, e
    add hl, bc
    or e
    rla
    pop hl
    pop hl
    ld [bc], a
    ld [bc], a
    inc b
    inc c
    ld de, $2710
    ld h, b
    dec c
    add e
    cp [hl]
    adc [hl]
    ld [hl], b
    ld [hl], c
    nop
    ld [hl+], a
    ld [bc], a
    add a
    ld bc, $88e8
    ld [bc], a
    jr nc, jr_04a_43a3

jr_04a_43a3:
    ld h, d
    add e
    ld [bc], a
    ld a, [hl-]
    ldh [rNR42], a
    rra
    ld bc, $010f
    adc a
    ld bc, $86dc
    ld a, [c]
    ld c, d
    ld a, [$d83a]
    inc a
    ld h, h
    db $ec

jr_04a_43b9:
    or l
    or h
    ld c, c
    ret z

    dec e
    ld [$042f], sp
    ld e, l
    ld [bc], a
    adc [hl]
    ld [hl], c
    ld [hl], e
    call z, $323d
    ld c, $0d
    add a
    ld [bc], a
    ld [hl], b
    rra
    dec bc
    rst $30
    adc l
    rst $38
    ld d, c
    ld [hl], e
    or c
    ld sp, $6020
    nop
    sub b
    nop
    sub b
    or [hl]
    sub [hl]
    cp a
    sbc c
    rra
    ld sp, $321e
    ld d, h
    inc a
    ld e, b
    jr c, jr_04a_4462

    jr jr_04a_4428

    ld d, h
    cp d
    ld d, [hl]
    ld b, e
    or d
    ld e, [hl]
    ld b, e
    or [hl]
    ld e, d
    add hl, bc
    or h
    ld e, h
    ld a, h
    sbc h
    ld a, b
    sbc b
    ld d, h
    xor h
    inc [hl]
    call z, $e243
    ld e, $03
    jp nz, $023e

    cp $43
    add d
    ld a, [hl]
    ld b, e
    call nz, $06bc
    ret z

    cp b
    adc b
    ld hl, sp-$50

jr_04a_4414:
    ldh a, [$e0]
    ld b, e
    ldh [$c0], a
    inc b
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    and h
    nop
    ld [de], a
    nop
    add b
    adc e
    inc bc
    ld b, b
    inc b

jr_04a_4428:
    inc sp
    rst $10
    ldh a, [$f8]
    nop
    add e
    ld bc, $02af
    ldh a, [$03]
    rrca
    adc e
    nop
    sbc e
    sub c
    inc bc
    ld h, h
    add hl, bc
    and $1e
    xor a
    ld h, c
    add [hl]
    add c
    ld b, $81
    rrca
    ld b, c
    ld b, e
    rst $18
    ld hl, $fc0b
    ld b, [hl]
    ld a, [c]
    jp z, $2a3a

    jr jr_04a_446d

    inc d
    inc e
    dec [hl]
    inc [hl]
    add l
    inc bc
    or b
    ld b, e
    or b
    sub b
    add hl, bc
    db $10
    jr nc, jr_04a_446f

    jr c, jr_04a_44b9

    inc a

jr_04a_4462:
    ld e, h
    ccf
    ld a, a
    rra
    adc e
    inc bc
    call nz, $0305
    inc bc
    ld [bc], a

jr_04a_446d:
    ld [bc], a
    inc bc

jr_04a_446f:
    ld [bc], a
    sub l
    nop
    inc d
    rla
    rlca
    rlca
    sbc b
    sbc b
    ld hl, $7b61
    ld hl, $6127
    ld l, a
    ret nz

    and $79
    ld c, l
    add $8e
    add l
    sbc a
    adc e
    jr nc, jr_04a_449a

    ld h, b
    jr nz, jr_04a_4414

    ld [bc], a
    sub [hl]
    add e
    ld bc, $830c
    ld bc, $0b50
    ld bc, $7847
    ld b, b

jr_04a_449a:
    ccf
    ld [hl], b
    ld a, a
    db $fc
    cp $e7
    sbc l
    add l
    adc c
    ld bc, $0520
    rst $38
    rrca
    rst $38
    ccf
    cp $7f
    rst $38
    db $ec
    dec hl
    ld [$1e0c], sp
    ld hl, $0021
    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_04a_44b9:
    ld [hl+], a
    ld e, b
    inc de
    jr z, jr_04a_44ea

    ld hl, $1125
    ld de, $0d09
    inc e
    inc d
    cpl
    inc hl
    daa
    jr nz, jr_04a_44d2

    jr nz, jr_04a_44ec

    db $10
    rrca
    ld [$0722], sp

jr_04a_44d2:
    inc b
    inc b
    inc bc
    inc b
    ld bc, $ec03
    inc h
    ld [bc], a
    ld bc, $0101
    ldh a, [rNR44]
    and h
    ldh [$27], a
    add c
    add c
    add b
    add b
    pop bc
    pop bc
    rst $28

jr_04a_44ea:
    xor [hl]
    pop de

jr_04a_44ec:
    sbc a
    di
    inc e
    rst $38
    rla
    ccf
    add sp, -$19
    db $fc
    rst $18
    ld hl, sp-$01
    inc a
    ei
    ld a, $f3
    ld l, a
    db $ec
    call c, $38f8
    ldh [rNR41], a
    ret nc

    ld d, b
    sub b
    sub b
    sub c
    sub c
    ld h, c
    ld [hl], c
    sbc l
    call Call_04a_4013
    ret nz

    jr nz, jr_04a_4542

    jr jr_04a_4520

    adc a

jr_04a_4515:
    add e
    rst $28
    add b
    ld [hl], a
    ld b, b
    ld a, a
    ld b, b
    ld a, $21
    rra
    db $10

jr_04a_4520:
    ld e, $10
    ld b, e
    ld c, $08
    ldh [rNR52], a
    dec bc
    inc d
    dec bc
    inc h
    rrca
    ld b, d
    rra
    add d
    db $fd
    add e
    ld a, h
    ld h, d
    sbc h
    ld a, [$fd86]
    inc bc
    cp $63
    cp $fd
    rst $38
    rst $38
    sub e
    rst $38
    jr nz, @+$01

jr_04a_4542:
    ld b, c
    xor $c3
    rst $10
    inc bc
    xor l
    dec b
    ld d, h
    inc b
    xor h
    inc b
    db $fc
    and e
    nop
    ld b, a
    db $10
    jr nc, jr_04a_4515

    pop bc
    rlca
    ld b, $0f
    ld [$303f], sp
    rst $38
    ldh [$3d], a
    di
    rst $08
    ccf
    ret nz

    ccf
    ld b, e
    add b
    rst $38
    inc c
    ld h, c
    ld a, a
    rra
    ld e, $2f
    jr nc, @+$44

    ld c, a
    adc h
    adc h
    db $f4
    db $f4
    inc bc
    add [hl]
    nop
    ld d, e
    db $10
    ld bc, $0403
    inc b
    nop
    ld [$0b0b], sp
    ld [$0409], sp
    inc b
    rst $08
    rst $38
    add c
    ld b, e
    ld bc, $00a8
    ret


    inc bc
    ld bc, $0300
    nop
    ld b, [hl]
    rst $38
    nop
    ldh [rSCY], a
    ld bc, $87fb
    cp l
    push bc
    ld a, b
    ld c, e
    ld a, e
    call z, $48f7
    or [hl]

jr_04a_45a2:
    ld c, c
    rst $18
    nop
    rst $18
    add b
    adc $81
    rst $08
    add l
    ld [hl], a
    call $f33f
    call z, $30ff
    ccf
    jr c, jr_04a_45e4

    cpl
    daa
    ld a, a
    ld [hl], e
    sbc a
    ldh a, [$8f]
    ld a, b
    rst $08
    jr c, @+$01

    inc e
    ld h, a
    db $e4
    jp nz, $20c3

    ldh [rNR10], a
    ld hl, sp+$18
    db $f4
    ld a, h
    db $e4
    cp $82
    rst $38
    inc bc
    db $fc
    ld [bc], a
    ld a, a
    add e
    inc a
    ld c, h
    ldh a, [$f0]
    ld h, l
    inc de
    ld h, b
    ldh [rNR23], a
    jr jr_04a_45e4

    inc b
    ld [bc], a
    ld [bc], a
    inc bc

jr_04a_45e4:
    sub e
    pop bc
    pop hl
    inc e
    inc e
    rst $20
    db $e3
    adc a
    add e
    sbc a
    inc c
    ld b, h

jr_04a_45f0:
    rst $38
    db $10
    ld a, [bc]
    ld [$07ff], sp
    rst $30
    add hl, bc
    rst $38
    add hl, bc
    rst $28
    db $10
    rst $38
    jr nz, jr_04a_45a2

    or e
    ldh [$33], a
    ccf
    ld b, b
    ld a, l
    add e
    cp $0f
    jp c, $f43f

    ld a, a
    ld a, [$feff]
    rlca
    push af
    ld bc, $e0fa
    dec e
    ld hl, sp+$06
    db $fc
    push bc
    db $fc
    ld [hl-], a
    cp $0b
    cp $3f
    db $fd
    rst $38
    pop af

jr_04a_4622:
    rst $38
    add b
    rst $28
    rra
    db $db
    jr c, jr_04a_4622

    jr nc, @-$01

    jr nc, @+$01

    dec sp
    ld a, a
    sbc h
    rst $30
    ld hl, sp+$12
    dec e
    inc c
    rrca
    ld [hl+], a
    inc de
    ld c, $10
    inc sp
    jr nz, jr_04a_45f0

    and b
    ccf
    jr nz, jr_04a_467a

    ld h, $11
    add hl, de
    add hl, bc
    add hl, bc
    ld b, $06
    and [hl]
    nop
    ld h, $e0
    ld a, [hl-]
    jr nc, jr_04a_469b

    ld c, h
    or d
    sub d
    pop af
    pop af
    add hl, sp
    ld h, c
    ccf
    ld hl, $f2ee
    or $7b
    db $dd
    cpl
    rst $18
    ld hl, $f0df
    cpl
    jr c, jr_04a_468b

    ccf
    dec de
    rla
    ld a, h
    ei
    jp z, $e67d

    dec a
    and $3f
    rst $18
    ld a, l
    sbc a
    ldh a, [$3f]
    ldh [$7f], a
    db $e3
    ld a, a
    rst $38

jr_04a_467a:
    ld a, [$7dfe]
    rst $38
    cp [hl]
    ld a, [$79cf]
    ld a, a
    ld sp, $00af
    ld e, a
    nop
    add e
    add e
    add hl, bc

jr_04a_468b:
    rst $38
    add b
    ld a, a
    ld b, a
    cp b
    cp b
    add b
    add b
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    ld [bc], a
    ldh a, [$f0]

jr_04a_469b:
    jr @+$46

    ld hl, sp+$08
    dec b
    inc a
    db $f4
    db $fc
    call nz, $08f8
    ld b, e
    db $fc
    inc b
    add hl, bc
    db $f4
    inc c
    add d
    ld [hl], d
    pop hl
    pop hl
    add hl, de
    add hl, de
    ld b, $06
    ld l, l
    dec d
    ldh [$e0], a
    ld a, b

Jump_04a_46b9:
    ld hl, sp-$0c
    sbc h
    db $f4
    inc e
    ld a, [c]
    ld e, $ea
    ld l, $c6
    add $ea
    ld l, $fa
    ld e, $f2
    cp $02
    cp $c5
    xor [hl]
    dec b
    ldh a, [$f0]
    ldh [rNR41], a
    ret nz

    ret nz

    xor l
    nop
    sub d
    add e
    rst $18
    ld bc, $40c0
    add e
    add a
    ld bc, $8080
    db $ec
    add hl, hl
    inc b
    jr jr_04a_4723

    ld b, d
    ld b, d
    ld bc, $8125
    inc e
    and c
    ld e, c
    ld e, l
    ld c, e
    ld c, d
    inc hl
    ld [hl+], a
    db $10
    add hl, de
    add hl, sp
    add hl, hl
    ld e, a
    ld b, a
    ld c, a
    ld b, b
    rrca
    ld b, b
    ccf
    jr nz, jr_04a_4720

    ld de, $0e0f
    rrca
    ld [$0807], sp
    inc bc
    rlca
    adc a
    nop
    ret z

    add e
    rst $20
    inc e
    and c
    ld hl, $21e1
    ldh a, [$30]
    ld b, a
    rst $38
    db $db
    and $b1
    rst $38
    pop af
    ld a, a
    rst $20
    ld a, a

jr_04a_4720:
    rst $28
    ret c

    rst $10

jr_04a_4723:
    cp h
    rst $38
    ld a, b
    rst $30
    ld [hl], h
    and e
    and d
    ld hl, $2021
    adc b
    ld [bc], a
    sla d
    ld bc, $0088
    ld a, c
    adc c
    ld bc, $0500
    sbc [hl]
    ld sp, hl
    add a
    db $fc
    inc bc
    cp $ac
    ld [bc], a
    and b
    ld c, $0f
    ret nc

    ldh a, [$a0]
    ld h, b
    jr nz, @-$5e

    jr nz, jr_04a_4771

    ld de, $0c13
    inc c
    inc bc
    inc bc
    adc l
    ld bc, $056c
    cp h
    rst $00
    ld a, e
    call z, Call_04a_48ff
    adc e
    nop
    sub h
    inc de
    ld [bc], a
    ld [bc], a
    call nz, $39c4
    jr c, jr_04a_477a

    db $10
    adc a
    adc b
    rst $00
    call nz, $0303
    pop af
    ld sp, hl
    rst $38

jr_04a_4771:
    rra
    rst $38
    ld h, e
    ld b, h
    cp $81
    ld a, [bc]
    rst $00
    ccf

jr_04a_477a:
    ld a, d
    ccf
    ld b, c
    ld a, a
    add c
    rst $38
    rrca
    jp c, $853f

    ld [bc], a
    jr nc, jr_04a_478a

    ld c, b
    ld c, b
    cp b

jr_04a_478a:
    adc b
    ld b, e
    ld [hl], b
    db $10
    ld b, e
    ldh [rNR41], a
    dec e
    ret nz

    ld b, b
    ldh [$60], a
    sbc [hl]
    sbc [hl]
    ret


    rrca
    ei
    rrca
    ld [hl], a
    sub h
    or a
    ret c

    rst $28
    ld a, b
    rst $38
    add hl, bc
    cp $86
    ld a, a
    pop bc
    scf
    ld hl, sp-$71
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    rlc d
    rst $28
    ld bc, $c0c0
    ld b, e
    and b
    ldh [$09], a
    ld h, b
    ld h, b
    jr nz, jr_04a_47de

    ld h, b
    ld h, b
    and b
    ldh [rLCDC], a
    ret nz

    jp $4d03


    add a
    ld bc, $2450
    ld [$0a04], sp
    dec b
    dec b
    inc b
    dec b
    jp $cd03


    add hl, bc
    inc bc
    inc bc
    rlca
    dec b
    dec bc
    ld [$0809], sp

jr_04a_47de:
    ld bc, $a508
    ld [bc], a
    sbc $01
    ld bc, $ca01
    ld bc, $026d
    ret nz

    jr nz, jr_04a_480d

    dec h
    db $10
    rrca
    jr @+$1a

    dec d
    dec d
    cp l
    and l
    inc a
    inc h
    ccf
    daa
    xor e
    cp [hl]
    cp c
    cp a
    push af
    rst $38

Call_04a_4800:
    ld b, h
    db $fd
    rrca
    ld c, $1b
    ei
    ld [hl], $ff
    call z, $0eff
    ld sp, hl
    add hl, de

jr_04a_480d:
    ld l, b
    add sp, -$38
    ret z

    jr nc, jr_04a_4843

    adc e
    inc bc
    ret nz

    rlca
    nop
    ld [bc], a
    jp nz, $82fe

    ld b, d
    ld bc, $8b81
    ld bc, $8664
    inc bc
    inc c
    ld [bc], a
    jr c, jr_04a_486f

    rst $00
    add e
    sbc a
    ld de, $0602
    ld [bc], a
    ld c, $80
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $30
    inc c
    rst $38
    dec bc
    adc e
    inc bc
    ldh a, [$e0]
    dec sp

jr_04a_4843:
    ldh a, [$90]
    db $e3
    and e
    ld a, h
    ld a, h
    ld c, $1c
    adc a
    adc b
    ei
    db $fc
    db $fd
    ld e, $f7
    dec bc
    rst $30
    ld [$3cf7], sp
    ei
    or $d9
    ld [hl], a
    db $ec
    dec sp
    db $ec
    ccf
    adc $7d
    sbc [hl]
    rst $30
    ccf
    pop hl
    ld a, a
    ldh [$80], a
    add b
    ld [hl], b
    ld [hl], b
    call c, $be7c
    and [hl]

jr_04a_486f:
    cp l
    rst $00
    ld a, l
    rst $00
    ei
    ld c, e
    pop af
    ld sp, $0bfb
    cp a
    rst $00
    db $fd
    rst $38
    ld [bc], a
    cp $85
    ld [bc], a
    call nz, $c001
    ret nz

    rst $38
    ld [hl], a
    ld [hl+], a
    ld bc, $80c6
    ldh [rNR42], a
    ld bc, $0201
    inc bc
    ld a, [$9ffb]
    rst $38
    ld h, e
    ld a, a
    inc e
    rra
    rlca
    rlca
    dec b
    rlca
    jr jr_04a_48ba

    jr nz, jr_04a_48c8

    ld [hl+], a
    ccf
    add hl, de
    rra
    ld a, a
    ld a, a
    add e
    rst $38
    ld c, h
    ld c, a
    ld hl, $2021
    jr nz, jr_04a_48d2

    db $10
    ld [$1011], sp
    ld d, $10
    jr jr_04a_48c4

    inc c
    inc bc

jr_04a_48ba:
    inc bc
    add e
    cp e
    ret


    cp b
    rlca
    inc c
    inc c
    rla
    rla

jr_04a_48c4:
    ld [$0708], sp
    rlca

jr_04a_48c8:
    ld l, c
    ldh [rVBK], a
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    ld e, b
    ld c, b
    dec l

jr_04a_48d2:
    dec h
    daa
    inc hl
    inc de
    ld de, $1011
    ld a, $3c
    ld hl, $7020
    ld [hl], b
    ld e, b
    ld e, b
    call nz, Call_04a_4fcc
    rst $18
    ld b, b
    jp nz, $e160

    and b
    pop hl
    or b
    di
    or c
    rst $38
    sbc d
    rst $38
    ld e, l
    rst $38
    sbc $ff
    call $efff
    rst $38
    rst $20
    rst $38
    daa
    cp a
    sub [hl]
    sbc a

Call_04a_48ff:
    xor h
    xor a
    ld b, c
    rst $38
    ld e, c
    rst $38
    rrca
    cp $b3
    ldh a, [rIE]
    add c
    rst $28
    rst $18
    ld h, a
    ld h, a
    scf
    ld [hl], a
    rra
    sbc e
    rrca
    dec bc
    rla
    rla
    rlca
    dec d
    cpl
    dec l
    ld b, e
    xor e
    xor d
    nop
    ld d, e
    ld [hl+], a
    ld d, d
    dec bc
    jp nc, $53d3

    ld d, d
    and c
    and c
    and b
    and b
    ld b, b
    ld b, b
    add b
    add b
    ld l, e
    ld [bc], a
    ret nz

    ret nz

    ldh [rNR43], a
    and b
    nop
    jr nc, jr_04a_495b

    db $10
    ld d, $bb
    adc e
    ld e, h
    ld c, a
    cp b
    ld c, $50
    dec e
    jr nc, jr_04a_4963

    jr nc, jr_04a_4966

    ld h, b
    ccf
    and $ff
    ld a, [hl-]
    rst $38
    ld d, $ff
    inc l
    rst $38
    ld c, d
    jp $e0eb


    inc hl
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a

jr_04a_495b:
    ret nc

    rst $18
    adc b
    adc [hl]
    ld c, b
    ld c, a
    ret nz

    rst $38

jr_04a_4963:
    jr nz, @+$01

    sub b

jr_04a_4966:
    rst $38
    ld a, b
    rst $38
    db $fc
    add a
    cp $33
    rst $08
    ld c, c
    rst $08
    db $ed
    rst $28
    cp $ff
    cp $f3
    cp $c1
    rst $38
    add c
    ld c, b
    rst $38
    nop
    dec c
    add e
    rst $38
    push hl
    db $fd
    ld a, l
    ld a, l
    ccf
    ld a, [hl]
    ld a, a
    ldh a, [$fe]
    rlca
    ld [hl], b
    ld hl, sp-$6f
    nop
    ld [$33e0], sp
    ld [bc], a
    ld [bc], a
    inc hl
    ld [hl+], a
    ld d, [hl]
    ld d, h
    ld c, l
    ld c, h
    jp nz, Jump_04a_63c2

    ld h, b
    add hl, de
    jr jr_04a_49df

    ccf
    nop
    ldh [rP1], a
    ret nc

    nop
    and c
    nop
    ld b, a
    inc bc
    sbc a
    ld c, $ff
    ld [de], a
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    rra
    rst $38
    ret nz

    jp $0700


    ld bc, $071f
    cp a
    inc e
    ld a, a
    add hl, hl
    rst $38
    ld [de], a
    cp $a4
    db $fc
    ld b, e
    ret z

jr_04a_49c7:
    ld hl, sp+$06
    ld d, b
    ldh a, [$50]
    rst $30
    jr nc, jr_04a_49c7

    and b
    ld [hl+], a
    ldh [rTAC], a
    or b
    or b
    ret z

    ld c, b
    db $f4
    ld [hl], h
    ei
    ld c, e
    ld b, l
    ei
    xor d
    inc c

jr_04a_49df:
    db $ed
    and l
    push af
    and l
    db $fd
    dec a
    jp nz, $1142

    sub c
    ld [bc], a
    db $10
    ld [$0843], sp
    inc b
    inc b
    inc b
    inc bc
    inc bc
    nop
    ld bc, $00af
    ld c, $23

jr_04a_49f9:
    add b
    ld [hl+], a
    ldh a, [$e0]
    ld [hl+], a
    sub b
    ldh [$a0], a
    ld h, b
    ld h, b
    jr nc, jr_04a_4a75

    inc l
    db $fc

jr_04a_4a07:
    jp nz, $02fe

    cp $04
    db $fc
    jr jr_04a_4a07

    jr c, jr_04a_49f9

    ld a, h
    call nz, $e45c
    add h
    db $fc
    cp [hl]
    cp $c1
    rst $38
    ld e, $fe
    ld h, h
    db $e4
    add h
    add h
    dec h
    ld [bc], a
    ld [hl+], a
    ld bc, $34e0
    db $fd
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    inc [hl]
    inc a
    ld b, h
    ld a, h
    inc h
    inc a
    ld [de], a
    ld e, $e2
    cp $c2
    ld a, $e2
    ld e, $e5
    rra
    sbc $39
    xor $79
    call nc, $f4b7
    rla
    add sp, -$11
    jr jr_04a_4a5f

    ld hl, sp-$19
    cp h
    inc bc
    ld a, l
    inc bc
    cp d
    rlca
    ld a, h
    rrca
    or $f1
    dec bc
    add b
    dec h
    ld h, b
    ld [$0318], sp
    rlca
    db $ec
    dec h
    push bc

jr_04a_4a5f:
    call c, $061b
    rlca
    ld c, $0b
    inc [hl]
    scf
    ld d, h
    ld h, a
    ld e, h
    ld h, l
    ld c, [hl]
    ld e, a
    inc hl
    cpl
    rra
    rra
    rlca
    inc b
    ld [bc], a
    ld [bc], a

jr_04a_4a75:
    inc h
    inc h
    ld d, a
    ld d, a
    ld d, c
    ld d, c
    ld c, c
    ld e, c
    ld b, e
    add h
    sub h

Call_04a_4a80:
    dec d
    adc [hl]
    ld b, $8a
    ld a, [bc]
    adc [hl]
    add d

jr_04a_4a87:
    sub h
    add h
    ld l, h
    call nz, $e979
    ld e, [hl]
    rst $28
    ld e, c
    rst $38
    xor $99
    rst $38
    adc b
    ld l, $d9
    ld b, e
    ld [$09ff], sp
    db $10
    rst $38
    sub b
    ld a, a
    rst $38
    ld hl, $c6fe
    ld hl, sp-$08
    ld a, a
    rlca
    ld [$0408], sp
    inc c
    inc [hl]
    inc a
    ld [hl], h
    ld e, h
    ld b, e
    or h
    sbc h
    ld b, e
    add sp, $38
    ld [$70d0], sp
    sub b
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    jr nz, @+$24

    ldh [$e0], a
    dec l
    ret nc

    ld [hl], b
    jr z, jr_04a_4aff

    ld hl, sp-$48
    sub h
    sbc h
    ld l, h
    ld [hl], h
    jp nz, $4efe

    ld a, [hl]
    ld [hl-], a
    dec a
    inc hl
    dec a
    add hl, sp
    ccf
    dec h
    ld a, a
    ld b, e
    ld a, a
    push bc
    ei
    dec a
    di

jr_04a_4adf:
    add hl, bc
    rst $38
    ld h, $de
    ld a, [c]
    adc [hl]

jr_04a_4ae5:
    ld h, d
    sbc $44
    db $fc
    inc h
    db $fc
    jr z, jr_04a_4ae5

    jr nc, jr_04a_4adf

    ld b, b
    ret nz

    add l
    nop
    jp nc, $0101

    ld bc, $0185
    ld d, h
    rlca
    ld b, d
    ld b, d
    add e
    add b

jr_04a_4aff:
    ld h, c
    ld h, b
    add hl, de
    jr jr_04a_4a87

    ld bc, $e0c0
    dec l
    sub b
    sub b
    xor b
    xor b
    ret c

    ret z

    cp b
    adc b
    ldh a, [rNR10]
    ldh a, [$b0]
    call z, Call_04a_72fc
    ld c, [hl]
    dec a
    ld [hl], e
    ld l, $fd
    jp $03fe


    cp $07
    db $fc
    rra
    ld hl, sp+$27
    ld hl, sp+$53
    db $fc
    ld h, c
    cp $d0
    rst $38
    cp [hl]
    rst $38
    pop bc
    rst $38
    ld e, $ff
    ld h, h
    rst $20
    add l
    add a
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $0303
    add e
    ld bc, $19f8
    inc bc
    inc bc
    dec c
    rrca
    ld sp, $423f
    ld a, [hl]
    inc hl
    ld a, $13
    ld e, $e7
    rst $38
    push bc
    ccf
    rst $28
    add hl, de
    cp $31
    adc $f1
    ret z

    ccf
    call nc, $8337
    ld [bc], a
    ld d, $15
    add hl, de
    rla
    ld sp, hl
    rst $20
    xor d

jr_04a_4b63:
    rlca
    ld e, h
    rrca
    or b
    ccf
    ret nz

    rst $00
    add [hl]
    add c
    ld l, e
    ld h, b
    rra
    dec de
    rlca
    ld b, $00
    ld bc, $0189
    cp h
    ld bc, $c040
    ld b, e
    ret nz

    ld b, b
    ld b, e
    and b
    ld h, b
    ld b, l
    jr nz, jr_04a_4b63

    ld b, e
    ld b, b
    ret nz

    daa
    add b
    rra
    inc b
    inc c
    ld [de], a
    ld [hl-], a
    ld b, h
    call nz, $0808
    db $10
    db $10
    add hl, bc
    add hl, bc
    and l
    rlca
    ld e, b
    inc c
    or b
    jr c, jr_04a_4bf1

    db $10
    db $eb
    ld [$fcff], sp
    sbc e
    sbc a
    add h
    add a
    ld b, e
    jp $c080


    jp $d101


    rlca
    call z, $cb3c
    ccf
    sbc $33
    dec e
    di
    ld b, e
    ld hl, $09ff
    ld b, c
    rst $38
    jp nz, $fabf

    rlca
    rst $38
    rrca
    ldh a, [$f0]
    ld h, e
    ldh [$35], a
    inc b
    inc c
    ld a, [bc]
    ld c, $0a
    ld e, $0a
    ld l, $09
    ld c, a
    adc l
    add a
    ld d, l
    rst $00
    ld l, l
    ld b, a
    dec a
    rst $20
    cp l
    and a
    sbc c
    rst $38
    jp z, $c67e

    cp $2c
    db $fc
    ld a, h
    db $fc
    sbc d
    adc [hl]
    xor [hl]
    and [hl]
    ld e, l
    ld d, a
    add hl, sp
    cpl

jr_04a_4bec:
    dec d
    rra
    cp e
    or a
    ld c, d

jr_04a_4bf1:
    cp $32
    xor $a6
    ld a, [hl]
    sub h
    ld a, h
    jr @-$06

    jr nc, jr_04a_4bec

    and l
    nop
    ld c, [hl]
    rla
    add hl, bc
    add hl, bc
    and [hl]
    ld b, $5a
    ld a, [bc]
    or d
    inc sp
    ld d, [hl]
    rla
    ld [$f20b], a
    di
    sbc $f3
    and a
    cp h
    ld e, [hl]
    sbc $a2
    ld [c], a
    and c
    pop hl
    add e
    rst $28
    inc bc
    db $eb
    rra
    sbc $33
    adc e
    ld [bc], a
    or [hl]
    inc bc
    inc d
    inc e
    inc [hl]
    inc l
    add e
    ld [bc], a
    add $01
    and h
    cp h
    adc c
    ld [bc], a
    call z, $0283
    call c, $e411
    cp h
    ld [de], a
    ld e, $da
    adc $1d
    ccf
    or a
    cp e
    ld c, c
    rst $38
    rst $20
    rst $38
    or $ff
    xor h
    rst $38
    adc c
    nop
    and [hl]
    adc c
    ld bc, $0500
    ldh a, [rIE]
    ret z

    cp $b0
    rst $38
    rst $38
    db $ec
    daa
    inc bc
    ld bc, $0701
    ld b, $23
    add hl, bc
    db $10
    ld bc, $0d05
    dec bc
    rrca
    ld [$0803], sp
    dec b
    db $10
    inc de
    db $10
    rla
    db $10
    dec de
    db $10
    scf
    ld b, h
    jr nz, jr_04a_4cb1

    dec b
    db $10
    rra
    dec bc
    ld [$0707], sp
    adc c
    xor h
    add d
    add c
    ld [hl+], a
    ld bc, $b2c9
    inc bc
    ld bc, $0201
    ld [bc], a
    db $d3
    ret nz

    ld bc, $0101
    ld b, e
    ld [bc], a
    inc bc
    ld b, h
    inc b
    rlca
    inc b
    rrca
    ld [$0c0f], sp
    rrca
    ld b, e
    inc d
    rla
    rrca
    inc de
    inc de
    add hl, de
    ld [$383b], sp
    rst $20
    db $e4
    rra
    sub d
    rrca
    adc c
    sbc a
    ld d, h
    rst $38
    inc h
    ld b, e
    db $e3
    ld [de], a
    ldh [rNR42], a
    rst $20

jr_04a_4cb1:
    ld d, $e7
    inc e
    rst $38
    inc b
    di
    inc c
    rst $38
    add hl, bc
    rst $30
    add hl, bc
    xor $11
    cp $02
    cp $06
    ld a, [$e29a]
    ld [c], a
    rlca
    rrca
    rra
    inc de
    ld c, $22
    ld b, [hl]
    ld [c], a
    ld h, a
    ld b, c
    push af
    inc hl
    ld b, e
    ei
    inc h
    ld de, $44ff
    rst $38
    jp nz, $332d

    jr nc, jr_04a_4d1d

    call z, $07cf
    ld [bc], a
    rra
    ld bc, $8fff
    ld [hl], b
    ld [hl], b
    ld h, c
    ld [de], a
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    inc hl
    daa
    dec sp
    inc a
    ld l, c
    ld [hl], b
    db $d3
    ldh [$3e], a
    pop bc
    jr c, @-$37

    nop
    ld b, h
    rst $38
    nop
    ldh [rNR43], a
    ld bc, $02ff
    cp $05
    db $fd
    dec de
    ei
    ld a, a
    rst $20
    rst $38
    add b
    rst $38
    nop
    cp $81
    rst $30
    rrca
    rst $18
    ccf
    db $fd
    cp $df
    ldh [rIE], a
    ccf
    rst $38

jr_04a_4d1d:
    nop
    ld a, h
    add b
    ldh a, [rLCDC]
    ldh [rLCDC], a
    ret nz

    ld [hl+], a
    add b
    dec d
    jr c, @+$3a

    daa
    daa
    inc d
    dec de
    ld a, [de]
    ld de, $3b24
    jr nz, jr_04a_4d73

    pop af
    rst $38
    rst $38
    dec a
    rst $38
    jr nz, @-$21

    di

jr_04a_4d3c:
    inc c
    rra
    and [hl]
    nop
    ld d, c
    db $10
    add b
    ret nz

    add b
    pop hl
    ld b, b
    jp c, $07f8

    rst $38
    ld bc, $42ff
    cp [hl]
    xor h
    ld e, h
    ldh a, [$f0]
    and a
    nop
    ld h, d
    rlca
    ld b, b
    ld b, b
    ld hl, sp-$08
    ld b, $fe
    add c
    ld a, a
    add a
    jp hl


    ldh [rNR50], a
    inc bc
    cp $77
    cp $89
    adc a
    add hl, bc
    rrca
    rlca

jr_04a_4d6c:
    ld [$311e], sp
    ld a, a
    ret nz

    rst $38
    nop

jr_04a_4d73:
    rst $38
    jr c, jr_04a_4d3c

    rst $08
    rst $28
    db $ec
    ld a, [hl]
    add c
    db $fc
    inc bc
    cp a
    ld a, a
    add h
    db $fc
    db $fc
    inc b
    inc c
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0087
    ld e, c
    ldh [$28], a
    add b
    ld a, h
    db $fc
    inc h
    db $e4
    jr c, jr_04a_4d6c

    ldh a, [$d0]
    ld a, b
    ld l, b
    ld hl, sp-$28
    cp h
    ld h, h
    rst $20
    jp $e57f


    dec de
    add hl, de
    dec b
    nop
    dec hl
    ld [bc], a
    rla
    ld [bc], a
    dec hl
    ld bc, $0155
    xor e
    ld bc, $0154
    rst $38
    rst $38
    jp nz, $3fff

    ccf
    adc a
    nop
    ld l, d
    rlca
    add b
    add b
    ld b, e
    jp $fc78


    ret nz

    ret nz

    ld h, c
    ldh [rOBP1], a
    inc bc
    nop
    adc a
    inc bc
    db $fc
    inc b
    db $fc
    sbc h
    ld c, $f2
    adc a
    ld [hl], c
    ld b, a
    cp b
    xor e
    ld e, h
    ld b, l
    cp a
    and e
    ld e, a
    ld e, a
    cp l
    inc hl
    ld [c], a
    ld b, e
    jp nz, $dfc1

    rst $38
    and $f8
    adc c
    ld [hl], b
    sub c
    pop af
    sub d
    di
    inc c
    cp $00
    db $fc
    nop
    ld hl, sp-$80
    cp $80
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    jr jr_04a_4e01

    ld e, $1f
    rra
    ld a, $31
    ld a, a
    ld b, b

jr_04a_4e01:
    rst $08
    add c
    adc a
    ld bc, $019e
    rst $38
    nop
    rst $10
    jr c, @+$01

    call nz, $047f
    ld b, e
    ld a, a
    ld [bc], a
    dec bc
    rst $38
    add h
    ld b, c
    cp $a9
    cp $53
    db $fd
    cp $fe
    inc bc
    inc bc
    ld l, l
    ld b, $e0
    ldh [rNR10], a
    db $10
    jr nz, jr_04a_4e47

    add b
    xor h
    nop
    ld l, c
    xor c
    nop
    ld e, d
    ld a, [de]
    ret nz

    ret nz

    ldh [rNR41], a
    ld hl, sp+$18
    db $fc
    add h
    xor $52
    ld a, [c]
    ld c, [hl]
    cp $46
    rst $38
    ld hl, $19f7
    ei
    inc b
    ld a, l
    ld [bc], a
    dec a
    ld [bc], a

jr_04a_4e47:
    sbc [hl]
    ld bc, $43fe
    ld bc, $14ff
    ld [bc], a
    rst $30
    rst $08
    cp a
    db $fc
    rst $18
    ret c

    rrca
    inc b
    ccf
    ld [bc], a
    ld a, [hl]
    inc bc
    rst $38
    add c
    ld a, a
    add c
    rst $38
    ld b, e
    db $dd
    ccf
    ld b, e
    ldh a, [rIF]
    dec c
    ldh [$1f], a
    ld hl, sp+$3f
    add $c7
    rlca
    ld bc, $0007
    rra
    inc bc
    db $fc
    db $fc
    db $ec
    dec [hl]
    ld [hl+], a
    jr jr_04a_4e7e

    inc h
    inc e
    inc h
    cp h

jr_04a_4e7e:
    call nz, $fe43
    jp nz, $f215

    adc d
    rst $20
    sub c
    db $fd
    inc de
    ld sp, hl
    rla
    cp $0e
    ld a, d
    add $fa
    ld h, $f8
    inc h
    or h
    ld l, h
    ld h, h
    call c, $3cc4
    ld b, e
    ld [$11f8], sp
    db $10
    ldh a, [$80]
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ld h, b
    and b
    ldh [$a0], a
    ret nz

    ret nz

    and a
    ld [bc], a
    ld c, h
    jr jr_04a_4eba

    rlca
    jr jr_04a_4ecf

    db $10
    jr nz, @+$32

jr_04a_4eba:
    daa
    inc sp
    ld c, b
    ld [hl], c
    ld c, b
    ld a, a

jr_04a_4ec0:
    ld b, b
    ld e, a
    ld h, b
    rrca
    sub b
    sbc a
    add b
    rst $38
    add b
    ld a, a
    ld h, b
    rra
    jp nz, $8d96

jr_04a_4ecf:
    ld bc, $15ba
    db $f4
    rst $30
    db $d3
    inc de
    add hl, de
    ret z

    add hl, bc
    ld [$040f], sp
    ld a, a
    inc bc
    rst $38
    nop
    ccf
    ret nz

    rst $18
    ld hl, $13ed
    cp $0f
    jp Jump_04a_6501


    dec c
    db $fc
    inc bc
    db $fc
    ld [bc], a
    call nz, $823a
    ld b, l
    add [hl]
    add $66
    db $76
    rrca
    rra
    ld [hl+], a
    ld [bc], a
    dec b
    ld b, $07
    dec bc
    rra
    inc de
    ld a, [hl]
    add h
    ld bc, $e001
    ld hl, $83fd
    rst $08
    ccf
    db $fc
    rst $38
    ldh a, [$7f]
    ldh [rIE], a
    ret c

    ld h, a
    ret nz

    ld a, a
    pop hl
    cp a
    ld l, a
    adc $ff
    or b
    rst $28
    sbc a
    ld b, b
    ld h, b
    jr c, jr_04a_4f5a

    rst $20
    rst $20
    call nc, Call_04a_5a5b
    ld d, c
    db $e4
    ei
    add h
    ld bc, $0228
    inc a
    rst $38
    jr nz, jr_04a_4ec0

    ld bc, $0260
    pop af
    rst $38
    nop
    add a
    ld bc, $1272
    ld l, $f9
    inc e
    ei
    rra
    di
    inc a
    db $e4
    ld a, b
    ret z

    cp $8e
    pop af
    ccf
    pop bc
    rst $38
    add hl, bc
    add a
    inc bc
    adc h
    ld bc, $058d
    ld hl, sp+$08
    ld hl, sp+$18
    cp h
    ld h, h
    add l

jr_04a_4f5a:
    ld bc, $13e0
    cp e
    ld e, a
    ld h, a
    and l
    inc hl
    ld [c], a
    inc de
    ld a, [c]
    cp l
    rst $38
    ld h, e
    ld h, d
    ld [hl], b
    ld d, c
    ld a, b
    adc c
    db $fd
    add d
    rst $38
    nop
    add l
    ld bc, $85fa
    inc bc
    ld h, b

jr_04a_4f77:
    add hl, bc
    dec c
    dec e
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld c, $1e
    ld [de], a
    add h
    ld bc, $0310
    and b
    ld [hl], b
    ret nz

    ldh [rSCX], a

jr_04a_4f8b:
    ret nz

    ld b, b
    inc e
    ld b, b
    jr nz, jr_04a_4fb1

    rst $28
    rst $38
    pop de
    ld l, a
    ld l, c
    ld b, [hl]
    pop de
    xor $83
    rst $38
    add a
    rst $38
    call $fffd
    or [hl]
    cp $41
    rst $38
    jp $bee7


    db $fc
    sbc b
    ldh [$e0], a
    jp $1c01


    ld bc, $20e1

jr_04a_4fb1:
    adc l
    ld bc, $0180
    ld h, b
    ldh [$c4], a
    or b
    inc d
    ret nz

    ldh a, [rSVBK]
    cp b
    ld l, b
    cp h
    ld [hl], h
    sbc h
    ld [hl], h
    ld a, h
    call z, $cbab
    db $ed
    adc c
    db $e3
    sbc c
    push af

Call_04a_4fcc:
    sub b
    ld l, e
    ld h, d
    add l
    ld bc, $02aa
    rst $30
    add hl, bc
    rst $28
    add [hl]
    nop
    or e
    dec b
    db $e3
    rst $20
    rlca
    ld c, $1f
    inc d
    adc l
    ld bc, $6110
    ld b, $8f
    rst $18
    ld de, $e92f
    add $51
    adc c
    rst $28
    ld [$7fc1], sp
    ld b, e
    daa
    ld a, $1c
    jr jr_04a_4f77

    add b
    add l
    rst $28
    rlca
    xor a
    set 4, l
    push bc
    rst $30
    ld h, l
    dec e
    jr jr_04a_4f8b

    ld bc, $8ba8
    nop
    or b
    add e
    inc b
    inc c
    adc l
    inc b
    ld b, b
    add hl, bc
    ldh [$e0], a
    inc a
    db $e4
    ld [hl], h
    call z, $8cfc
    ld a, [c]
    ld a, $87
    inc bc
    ret z

    rst $38
    ld h, a
    ld b, $01
    inc bc
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $86c4
    rra
    ld [hl], b
    ld [hl], b
    sbc a
    adc a
    dec c
    add e
    ld h, a
    ld b, d
    inc a
    inc h
    ld d, $18
    rrca
    ld [$0c0b], sp
    ld a, [bc]
    dec bc
    inc bc
    ld [de], a
    ld bc, $0111
    db $10
    inc bc
    ld a, [bc]
    dec bc
    ld [$0407], sp
    inc bc
    inc bc
    jp $19a2


    rlca
    ld b, $0f
    ld [$101f], sp
    rra
    jr nz, @+$3a

    cpl
    ld h, d
    ld d, e
    ld [hl], d
    ld d, e
    ld [hl], h
    ld d, a
    and b
    cp a
    db $10
    sbc a
    inc sp
    ld a, a
    inc h
    inc h
    jr jr_04a_507f

    ld a, l
    inc bc
    inc e
    inc e
    ld a, [hl-]
    ld h, $43
    ld hl, $e03f
    ld hl, $ffc0
    ld a, [hl]
    rrca
    sbc l
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    ld h, a
    ld e, b
    sub a

jr_04a_507f:
    add b
    cpl
    nop
    rst $18
    ret nz

    cp a
    ld [hl], c
    cp [hl]
    ld c, c
    ld [hl], a
    ld c, d
    rla
    ld c, d
    call $ef92
    db $10
    rst $18
    jr nz, @-$3f

    ret nz

    ld b, e
    rst $38
    nop
    ldh [$3b], a
    cp a
    ld h, b
    db $fd
    inc bc
    and $1f
    ret c

    rst $38
    rst $30
    ccf
    rst $38
    ret c

    xor $1c
    and d
    ld a, [hl]
    ld d, d
    cp [hl]
    or c
    ld e, a
    ld de, $2eff
    cp $30
    ldh a, [rSTAT]
    pop bc
    add [hl]
    add a
    dec bc
    inc c
    dec d
    db $10
    ld a, [bc]
    db $10
    rra
    jr nz, jr_04a_50ff

    jr nz, jr_04a_50e1

    db $10
    ld d, $19
    ld [$060f], sp
    rrca
    add hl, bc
    rra
    ld h, $27
    ld b, c
    ld c, l
    ld [hl], b
    ld d, b
    ld hl, $1f20
    rra
    adc b
    nop
    nop
    db $10
    ld bc, $0203
    rlca
    inc b
    adc a
    adc c
    ccf

jr_04a_50e1:
    ei
    ld e, [hl]
    inc de
    cp h
    rla
    call c, $df27
    jr nz, jr_04a_512e

    rst $38
    nop
    ldh [$2b], a
    ld a, a
    add [hl]
    ld hl, sp+$09
    ldh a, [rNR11]
    ldh [rNR42], a
    pop bc
    ld h, d
    pop de
    jp nc, $f8e7

    rst $38
    nop

jr_04a_50ff:
    rst $30
    inc c
    rst $00
    daa
    and h
    ld h, a
    call nc, $08f7
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    db $dd
    db $e3
    rst $38
    nop
    rrca
    nop
    ld b, $00
    ld de, $00f0
    rra
    nop
    nop
    inc h
    add b

jr_04a_511d:
    dec d
    ldh [rLCDC], a
    rst $18
    ld b, b
    ret nz

    and b
    ld h, b
    ldh [$30], a
    ret nc

    inc a
    sub b
    ld [hl], e
    ld a, [bc]
    ld hl, sp+$05

jr_04a_512e:
    db $fc
    rlca
    rst $38
    dec c
    rst $38
    ldh a, [rLY]
    rst $38
    nop
    dec b
    add e
    rst $38
    sbc h
    ld a, h
    ldh [$e0], a
    ld h, l
    add hl, bc
    ldh [$e0], a
    jr nc, jr_04a_5154

    ld hl, sp+$68
    ret c

    add sp, -$68
    add sp, $43
    jr nc, jr_04a_511d

    inc de
    ld h, c
    and c
    rst $30
    ld [hl], $fc
    dec hl

jr_04a_5154:
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$37
    db $fc
    ld c, e
    ld a, [$f50d]
    ld a, [de]
    jp c, Jump_04a_433d

    db $fc
    rlca
    ld [$3fda], sp
    cp $07
    cp $03
    cp h
    rst $00
    ld a, b
    ld b, h
    rst $38
    add b
    dec c
    push bc
    cp d
    ld [$f515], a
    adc d
    ld a, [$fd65]
    inc sp
    adc [hl]
    ld a, a
    ld h, b
    add b
    add l
    nop
    db $dd
    inc bc
    nop
    ld e, $00
    ldh [$86], a
    nop
    db $dd
    db $10
    rrca
    dec b
    pop af
    xor e
    ld bc, $0354
    ld [bc], a
    db $fc
    push de
    add b
    ld a, a
    ldh [$98], a
    sbc a
    add a
    add a
    add h
    nop
    ld c, $02
    ld bc, $0101
    ld [hl], c
    ld bc, $8080
    ld b, e
    ld b, b
    ret nz

    ld [bc], a
    or b
    or c
    ret


    ld b, h
    ld sp, hl
    add hl, bc
    add hl, bc
    ld de, $2df1
    db $fd
    ld [bc], a
    cp $1e
    cp $21
    rst $38
    and e
    ld bc, $0264
    ld a, a
    add b
    rst $20
    ld b, h
    add b
    jp $3be0


    ld h, a
    pop bc
    ld a, a
    jp nz, Jump_04a_46b9

    ld [hl], e
    db $fc
    sub a
    db $fc
    ld l, $dc
    ld e, [hl]
    xor h
    ld l, $d8
    ld e, $68
    ccf
    ld c, b
    rra
    and h
    rrca
    inc d
    dec sp
    jr c, jr_04a_5257

    ld d, e
    rst $30
    sub l
    xor e
    adc c
    sub $02
    rst $38
    ld bc, $00ff
    rst $38
    add b
    cp a
    ret nz

    ld b, b
    ld a, a
    ldh a, [$3f]
    ld l, [hl]
    rst $18
    ld hl, sp-$79
    ld a, b
    rst $20
    sbc d
    sub [hl]
    inc e
    inc c
    ld a, h
    inc e
    db $e3
    ld [c], a
    add l
    di
    ldh [$33], a
    ld [bc], a
    ld b, $11
    add hl, de
    ccf
    ld hl, $724e
    db $76
    ld c, d
    ld a, h
    add h
    call c, $bc84
    add h
    call c, $bc04
    inc b
    jp z, Jump_04a_7a1e

    and $d9
    rlca
    cp l
    inc bc
    jp c, $fc85

    add e
    ld a, [$7d85]
    jp nz, $61be

    db $fc
    ccf
    push de
    ld a, [hl-]
    jp c, $fd35

    ld a, [hl]
    cp d
    rst $00
    rst $38
    ld bc, $009f
    ld b, l
    rrca
    nop
    ld bc, $001f
    ld b, e
    ccf
    nop
    ld bc, $007f
    ld b, l
    rst $38
    nop
    rra
    sbc a
    ld h, b
    rrca
    sub c
    dec bc
    dec e
    ld [hl-], a
    inc sp
    push hl

jr_04a_5257:
    rst $20
    inc e
    rst $38
    add h
    ld a, a
    inc c
    rst $38
    dec bc
    rst $38
    ld [hl+], a
    cp $81
    rst $38
    ld bc, $81ff
    rst $38
    ld b, d
    ld a, [hl]
    ld c, h
    inc a
    ldh a, [$30]
    jp $d101


    ld a, a
    ld bc, $8080
    add h
    ld bc, $09ce
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$90]
    ld [hl], b
    nop
    ld b, h
    ld hl, sp+$08
    dec b
    sbc b
    ld hl, sp-$1c
    db $fc
    add h
    db $fc
    ld b, a
    call nz, $097c
    ret z

    ld a, h
    adc b
    ld a, b
    add sp, -$08
    sbc b
    ld hl, sp-$78
    ld hl, sp+$43
    db $10
    ldh a, [$c6]
    and a
    nop
    ret nz

    sub l
    db $db
    db $10
    ei
    rlca
    xor $1f
    sub $ff
    or $3f
    rst $38
    rst $10
    rst $28
    dec de
    xor a
    ld a, b
    ld d, a
    cp [hl]
    ld c, $44
    rst $38
    inc b
    dec bc
    dec l
    ei
    ld e, a
    db $d3
    rst $18
    and $ff
    ld [$30f3], sp
    ret nz

    rst $18
    adc l
    ld bc, $6922
    ldh [rNR43], a
    inc a
    inc a
    ld e, e
    ld b, a
    ld d, b
    ld c, b
    ld [hl], a
    ld c, h
    ld [hl-], a
    cpl
    add hl, hl
    scf
    dec d
    dec de
    add hl, bc
    rrca
    ld b, $06
    ld [bc], a
    ld [bc], a
    rlca
    rrca
    jr nc, @+$76

    ret nz

    add h
    ld a, d
    add h
    ld h, a
    ld a, b
    rra
    inc e
    inc bc
    inc bc
    ld bc, $0186
    cp c
    adc e
    nop
    inc [hl]
    ld l, c
    ldh [rBGP], a
    inc bc
    rlca
    rst $38
    ld hl, sp-$11
    db $10
    ccf
    db $10
    rst $38
    db $10
    cp a
    ldh [$57], a
    nop
    cpl
    nop
    rra
    nop
    cpl
    nop
    rst $18
    ldh [rIF], a
    sub b
    rra
    ld c, b
    daa
    ld c, b
    or a
    ld c, h
    ld [hl], a
    adc h
    rst $20
    sbc b
    ld l, a
    ld [hl], b
    cpl
    nop
    sub a
    add b
    adc a
    add b
    rst $00
    ret nz

    di
    inc h
    rst $38
    ret c

    db $ec
    rra
    and e
    ld a, a
    ld d, d
    cp [hl]
    ld c, $0e
    ld de, $2613
    inc hl
    ld l, $27
    ld d, a
    ld c, a
    ld e, a
    rst $08
    xor a
    sbc a
    db $fd
    sbc [hl]
    rst $28
    db $10
    ld b, e
    rst $38
    nop
    inc de
    ei
    inc b
    pop bc
    ld a, [bc]
    add b
    add hl, bc
    ld d, b
    adc b
    ld a, b
    adc b
    db $fc
    dec c
    cp e
    ld c, d
    db $dd
    ld l, $eb
    inc e
    rst $30
    ld [$02a5], sp
    ld d, $0f
    cp $03
    ld a, [$d407]
    ld l, a
    jp hl


    rra
    sub e
    ld a, [hl]
    ld l, a
    db $fc
    or $f0
    ld de, $87f0
    ld [bc], a
    cp h
    add l
    ld bc, $0fce
    pop af
    pop af
    rst $08
    ld a, [hl]
    db $f4
    rrca
    ld a, [$fd1f]
    inc bc
    rst $38
    ld bc, $07fe
    db $fd
    dec de
    ld b, e
    rst $38
    ld bc, $0084
    and b
    dec bc
    ccf
    add sp, $7f
    adc b
    rst $18
    ld b, h
    rst $08
    inc h
    rst $20
    inc [hl]
    rst $30
    ld c, b
    adc h
    ld bc, $8983
    inc bc
    ld d, b
    ldh [rNR41], a
    ld d, $26
    ld [bc], a
    ld b, d
    inc bc
    rrca
    db $10
    ld a, c
    ld [$5a84], sp
    and h
    cp l
    ld [hl], d
    dec b
    adc h
    ld d, b
    inc bc
    ld bc, $0111
    dec c
    rrca
    ld d, b
    rra
    xor b
    xor e
    ld e, h
    sub a
    ld c, h
    rst $10
    inc c
    and a
    add h
    inc bc
    xor e
    adc b
    nop
    ldh a, [$0c]
    add b
    cp $01
    cp $03
    ei
    ld b, $f5
    ld c, $db
    inc a
    rst $28
    ldh a, [$89]
    ld bc, $ff06
    ld [hl], a
    dec d
    inc bc
    inc bc
    inc c
    dec c
    db $10
    rla
    jr nz, @+$41

    ld l, $3f
    ld e, h
    ld [hl], l
    ld a, h
    ld b, a
    ld a, c
    ld l, c
    ld e, d
    ld e, d
    ld d, h
    ld d, h
    jr nz, jr_04a_540f

    db $ec
    ld c, a
    inc hl
    ld bc, $27e0
    inc bc
    rlca
    add hl, de
    add hl, sp
    ld b, c
    jp $0f01


    nop
    cp $00
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    inc [hl]
    db $f4
    ld b, b
    ret z

    sub c
    sub b
    daa
    jr nz, jr_04a_541d

    ld b, b

jr_04a_540f:
    ld e, a
    ld b, b
    rra
    add b
    cp a
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, a
    jr c, jr_04a_5455

jr_04a_541d:
    ld [hl], c
    dec b
    ld bc, $0201
    inc bc
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc b
    ld [bc], a
    ld b, $04
    dec b
    ld [hl+], a
    ld [bc], a
    nop
    inc bc
    jp $098e


    inc bc
    rlca
    ld [$0619], sp
    daa
    jr z, jr_04a_5463

    ccf
    ld a, $c9
    sbc h
    ldh [rNR44], a
    ld b, b
    ld b, b
    and c
    and c
    sub d
    ld a, [c]
    sub h
    push af
    adc b
    rst $38
    db $10
    rst $38
    nop
    ld d, a
    nop
    xor a
    jr @+$21

    inc l
    daa
    inc a

jr_04a_5455:
    daa
    sbc b
    sbc a
    add b
    cp a
    jp Jump_04a_66ff


    ld a, $63
    dec sp
    ei
    rra
    cp h

jr_04a_5463:
    ld h, a
    jp $0bf8


    rst $38
    ld bc, $07fe
    db $fc
    rra
    db $e4
    daa
    call nz, $08c7
    rrca
    ld b, e
    ld [$010b], sp
    db $10
    inc de
    ld b, e
    db $10
    ld de, $2025
    ld de, $6060
    and b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld a, [$7510]
    db $10
    ld a, $08
    ccf
    ld [$047f], sp
    cp a
    add e
    or b
    rrca
    ret nz

    rst $38
    jr c, jr_04a_5517

    nop
    rst $38
    ldh [$1f], a
    pop af
    ccf
    add $4e
    sbc b
    sbc b
    ld h, b
    ld h, b
    ld h, e
    db $10
    jr nc, jr_04a_54d8

    ret z

    ld hl, sp+$10
    ld [hl], b
    jr nz, @-$1e

    inc hl
    db $e3
    ld c, h
    call z, $f170
    ret nz

    rst $20
    nop
    ld b, [hl]
    rst $38
    ld bc, $0014
    rst $38
    ldh [rIE], a
    nop
    rra
    nop
    rra
    jr nz, jr_04a_5504

    pop bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add l
    rst $38
    ld a, [de]
    rst $38
    push af
    ld d, l
    rst $38
    nop
    ld c, $7f
    nop
    ccf
    nop

jr_04a_54d8:
    ld e, a
    nop
    cpl
    nop
    ld e, a
    nop
    xor a
    ld bc, $015f
    cp a
    ld b, h
    ld [bc], a
    cp $0e
    rst $38
    ld [bc], a
    cp $c1
    rst $38

jr_04a_54ec:
    ld [hl], c
    rst $38
    rst $08
    rst $38
    inc d
    db $f4
    jr c, jr_04a_54ec

    ret nz

    ret nz

    ld l, a
    ld bc, $e0e0
    ld [hl+], a
    jr nz, jr_04a_54fd

jr_04a_54fd:
    ldh [$a3], a
    nop
    jp z, $27e0

    add b

jr_04a_5504:
    add b
    ld e, $1e
    pop hl
    rst $20
    ld [bc], a
    cp $0c
    db $fc
    db $10
    ldh a, [rNR42]
    pop hl
    ld [hl], d
    di
    call z, $a8ff
    rst $38

jr_04a_5517:
    ld d, c
    rst $38
    cp l
    cp $51
    ld a, [c]
    and e
    ldh [$27], a
    push hl

jr_04a_5521:
    ld l, $ef
    jr nc, @+$01

    rlca
    rst $38
    jr c, jr_04a_5521

    ld c, b
    ld hl, sp+$45
    inc b
    db $fc
    inc b
    ld [bc], a
    cp $02
    cp $01
    add $01
    ld l, e
    nop
    nop
    and h
    add e
    add hl, bc
    nop
    rra
    nop
    rlca
    nop
    dec bc
    nop
    rla
    nop
    xor e
    jp $f200


    dec c
    add b
    rst $38
    ld h, c
    ld a, a
    ld e, $1f
    ld [bc], a
    inc bc
    dec b

jr_04a_5553:
    ld c, $01
    ld [de], a
    rra
    rra
    ld a, h
    ldh [rNR41], a
    ld bc, $6622
    sbc b
    sbc b
    nop
    push af
    db $10
    ei
    ldh [rIE], a
    ldh [$3f], a
    jp $e77e


    ld a, h
    rst $10
    ld e, h
    adc a
    adc b
    adc a
    adc [hl]
    sbc c
    sbc a
    ld b, h
    rst $18
    db $e4
    rst $38
    ld [hl-], a
    ccf
    inc c
    rrca
    xor c
    ld bc, $e0b6
    add hl, hl
    ret nz

    ret nz

    or b
    ldh a, [$5f]
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    ld l, d
    rst $38
    inc [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_04a_5591:
    inc d
    rst $38
    dec de
    rst $38
    ld e, $fe
    jr jr_04a_5591

    ld h, $fe
    ld bc, $81ff
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $28
    ld [hl], e
    sbc h
    add h
    sbc h
    sbc h
    db $e3
    db $e3
    cp d
    xor $0c
    add b
    ld b, b
    ld b, b
    jr nz, jr_04a_5553

    jr jr_04a_562d

    inc b
    db $e4
    inc b
    call c, $fcc4
    ld b, e
    jp z, $0d7e

    adc d
    cp $d4
    db $fc
    sbc d
    sbc [hl]
    sub d
    sbc [hl]
    and d
    cp [hl]
    ld b, d
    cp $02
    cp $43
    inc b
    db $fc
    and l
    ld [bc], a
    inc l
    ld b, $06
    ld b, $19
    rra
    pop hl
    rst $38
    ld bc, $01c4
    xor c
    add hl, bc
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [$60]
    ldh [$80], a
    add b
    xor [hl]
    nop
    or d
    nop
    ret nz

    and l
    nop
    jp z, $6401

    inc a
    add l
    ld bc, $0102
    rst $18
    inc hl
    ld b, h
    rst $38
    nop
    ld [$ff05], sp
    dec e
    cp $3d
    cp $fb
    ld a, [hl]
    ei
    ld b, e
    ld a, h
    rst $30
    inc bc
    ld a, b
    ld c, e
    jr nc, jr_04a_5640

    adc h
    nop
    ld d, $08
    ld [hl], a
    ld a, [hl]
    ld b, a
    ld a, d
    ld l, d
    ld e, d
    ld e, d
    ld d, c
    ld d, c
    adc c
    nop
    inc l
    dec b
    ld [hl], c
    ld sp, hl
    rlca
    rlca
    ld bc, $84f1
    ld [bc], a
    ld [$fe0c], sp
    ld b, b
    rst $38

jr_04a_562d:
    ld a, c
    rst $38
    add a
    add a
    add h
    add h
    nop
    ld [$1011], sp
    add a
    nop
    sbc b
    ld [hl+], a
    add b
    add hl, de
    add c
    ld e, $1e

jr_04a_5640:
    db $e4

jr_04a_5641:
    rst $20
    ld [$0cff], sp
    rst $38
    jr jr_04a_5641

    add hl, hl
    jp hl


    ld a, c
    ld sp, hl
    set 7, e
    xor h
    db $fc
    ld d, d
    cp $a1
    rst $38
    ld b, b
    rst $38
    add b
    ld b, l
    rst $38
    nop
    sbc d
    ld bc, $86f3
    add c
    inc b
    ccf
    nop
    inc bc
    nop
    dec b
    add h
    add e
    ld [bc], a
    xor e
    nop
    rst $10
    add l
    ld [bc], a
    jr nz, jr_04a_5674

    dec c
    ld c, $09
    ld a, [bc]
    add hl, bc

jr_04a_5674:
    add hl, bc
    ld [hl+], a
    ld b, $1f
    ld c, $f1
    pop af
    jr nz, jr_04a_56e1

    ld b, b
    db $eb
    ld b, c
    rst $38
    jp nz, $c3ff

    cp $c7
    ld c, h
    rst $00
    ld b, h
    rst $00
    rst $00
    ld a, [hl+]
    cpl
    dec l
    cpl
    sbc d
    sbc a
    ld a, l
    rst $38
    jr @+$01

    ld [$04ff], sp
    add h
    ld bc, $0308
    ldh a, [rIE]
    rrca
    rrca
    and [hl]
    nop
    sbc $03
    cp $41
    rst $38
    add c
    add l
    ld [bc], a
    sub l
    inc b
    inc b
    sbc [hl]
    sbc [hl]
    ld [hl], e
    ld [hl], e
    add l
    ld [bc], a
    cp b
    ld b, $30
    ldh a, [$08]
    ret z

    adc b
    add sp, -$7c
    ld b, h
    ld a, h
    call nz, $c806
    ld e, b
    adc b
    adc b
    sub b
    sbc b
    db $e4
    add [hl]
    inc bc
    sbc l
    add l
    ld [bc], a
    ret c

    inc bc
    ld [$f0f8], sp
    ldh a, [$8d]
    ld [bc], a
    xor [hl]
    inc hl
    add b
    jp $e0b6


    ccf

jr_04a_56db:
    db $10
    ld de, $2120
    jr nz, jr_04a_5704

jr_04a_56e1:
    inc hl
    daa
    ld h, h
    ld l, a
    xor b
    db $fc
    jr nc, jr_04a_56e1

    jr nz, jr_04a_56db

    ld hl, $477a
    ld e, c
    adc [hl]
    add e
    sbc h
    sub [hl]
    cp b
    cp b
    ld c, b
    ld hl, sp+$13
    ld a, [c]
    call nc, $20f7
    ei
    ld b, b
    rst $30
    add b
    xor $00
    sub $18

jr_04a_5704:
    inc l
    jr nc, @+$1b

    ld h, c
    inc sp
    pop bc
    ld h, a
    add [hl]
    jp z, $850d

    ld [de], a
    ld a, [bc]
    ld [hl+], a
    ld d, $62
    cpl
    jp nz, $814e

    rra
    add c
    cp a
    adc l
    ld bc, $0cd0
    jr nz, @-$1e

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$5c
    db $fd
    ld d, b
    cp $a0
    db $fc
    ld b, b
    and e
    ld bc, $e0a1
    ld a, $da

jr_04a_5732:
    add b
    or $00
    db $ec
    nop
    ret c

    nop
    or b
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    inc b
    call nz, $8c08
    db $10
    jr jr_04a_5778

    inc sp
    ld h, b
    ld h, a
    ld b, c
    rst $08
    add c
    sbc a
    nop
    cp a
    nop
    ld a, a
    ld c, $cb
    jr c, @-$47

    ld d, $6e
    jr c, jr_04a_5732

    ld c, b
    ld hl, sp+$04
    db $f4
    inc b
    db $ec
    inc b
    call c, $868f
    dec e
    rrca
    inc c
    rra
    ld [hl], h
    ld a, [hl]
    jr nc, jr_04a_57a8

    ld c, b
    ld c, c
    add e
    add e
    ld h, c
    add e
    ld [bc], a
    ret nc

    dec b
    jr nz, @+$3e

    ld b, d

jr_04a_5778:
    ld a, d
    ld [bc], a
    or $85
    ld [bc], a
    jp c, $ecff

    ld sp, $0122
    inc c
    ld sp, $2929
    cpl
    ld h, $0f
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, l
    ld b, e
    ld e, l
    ld b, e
    ld b, e
    ld a, [hl]
    ld b, c
    ld de, $213e
    inc a
    inc hl
    nop
    ccf
    dec bc
    inc e
    rla
    db $10
    rla
    ld de, $1719
    ld [$040f], sp
    rlca
    ld [hl+], a

jr_04a_57a8:
    inc bc
    ld a, [bc]
    ld [bc], a
    ld b, $04
    dec b
    ld b, $0b
    add hl, bc
    ld de, $0f13
    rrca

jr_04a_57b5:
    db $ec
    dec hl
    ldh [rBGP], a
    inc c
    inc e
    ld a, $22
    dec a
    ld hl, $437a
    ld [hl], a
    ld b, h

jr_04a_57c3:
    ld [hl], e
    ld b, h
    rst $28
    adc b
    rst $18
    sub b
    rst $18
    db $10
    xor a
    jr nc, jr_04a_57fd

    jr nc, jr_04a_581f

    ld [hl], b
    rst $00
    ld a, c
    jp nz, $ed7e

    db $fc
    pop af
    ldh a, [rIE]
    ldh [$3f], a
    ret nz

    ccf
    pop bc
    ld a, [hl]
    jp nz, $8cff

    rst $30
    jr c, jr_04a_57b5

    ldh a, [rNR34]
    pop hl
    ld hl, sp-$79
    inc bc
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    ret nz

    ld a, a
    ccf
    ccf
    ld l, a
    rra
    ld bc, $39ff
    rst $28
    add $c6

jr_04a_57fd:
    ld c, b
    ld c, b
    jr nc, @+$32

    ldh a, [rNR42]
    nop
    inc de
    ldh [rWX], a
    dec c
    dec c
    dec e
    inc de
    ld e, $12
    inc e
    dec e
    inc [hl]
    inc sp
    ld [hl], l
    ld [hl], e
    rst $38
    ld a, [c]
    sbc $3e
    db $fc
    inc b
    db $fd
    inc b
    ei
    ld [$00f3], sp

jr_04a_581f:
    rst $30
    db $10
    rst $28
    jr nz, jr_04a_57c3

    add b
    ccf
    ld bc, $07fe
    ld hl, sp+$0f
    ld hl, sp+$1f
    db $eb
    ld l, a
    adc e
    call z, $d08f
    rst $38
    ldh [$fe], a
    nop
    db $fc
    nop
    adc [hl]
    ld a, a
    ccf
    rst $38
    db $fc
    rst $18
    ret c

    rra
    ld h, $3f
    cp a
    cp a
    ld a, a
    rst $38
    pop af
    ld sp, hl
    and c
    pop bc
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    ld bc, $0707
    ld [hl], a
    dec b
    ld h, c
    pop hl
    ld e, $1e
    rra
    ld h, e
    ld b, e
    ccf
    ld b, b
    ldh [rKEY1], a
    ld a, $41
    ld a, h
    add e
    ldh [rIE], a
    ldh a, [$1f]
    ld a, b
    rrca
    ld l, h
    scf
    ld [hl], h
    ccf
    rst $38
    dec sp
    rst $18
    dec sp
    rst $38
    inc bc
    db $fc
    rrca
    ld a, [$f20f]
    ld a, a
    adc a
    pop af
    ccf
    pop bc
    ld e, e
    cp l
    cp $c3
    cp $03
    db $fd
    inc bc
    ld a, [c]
    rrca
    ld [hl], d
    rrca
    inc b
    rra
    dec b
    rra
    ld a, [hl+]
    sbc a
    adc d
    rst $38
    cp $ff
    ld [hl], c
    rst $38
    rst $08
    ldh a, [$91]
    ldh [$a1], a
    ret nz

    ld a, a
    add b
    db $fc
    rst $38
    adc a
    inc bc
    inc e
    inc bc
    ld [hl], b
    adc a
    ld b, [hl]
    ld a, a
    ld c, c
    ld a, c
    pop af
    pop af
    add hl, bc
    add hl, bc
    adc a
    pop af
    ldh [rNR43], a
    jr jr_04a_58f1

    inc b
    ld b, h
    ld c, h
    ld d, h
    adc h
    sub h
    ld a, [de]
    ld h, $3d
    ld b, e
    ld a, a
    add b
    rst $38
    nop
    rst $38
    jr @+$81

    and l
    db $76
    set 7, e
    add a
    ldh a, [$8f]
    ld hl, sp-$01
    or a
    rst $08
    ld h, c
    sbc a
    ret nz

    ccf
    nop
    ld c, d
    rst $38
    nop
    ld [de], a
    ld b, $ff
    rrca
    ld sp, hl
    ld l, h
    di
    ret c

    rst $20
    sub b
    rst $28
    nop
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    add c
    rst $38
    inc bc

jr_04a_58f1:
    ld b, h
    rst $38
    nop
    rrca
    add b
    rst $38
    ld b, h
    rst $38
    xor b
    ld a, a
    and l
    ld a, a
    dec sp
    rst $38
    ld [hl], h
    db $fc
    ld a, b
    ld hl, sp-$20
    ldh [rSCX], a
    ld b, b
    ret nz

    inc bc
    nop
    ret nz

    add b
    add b
    ld [hl], a
    ldh [$3c], a
    ld [bc], a
    ld b, $19
    add hl, sp
    pop bc
    jp nz, $0c83

    adc a
    ld [hl], b
    rst $38
    nop
    push af
    adc d
    ld l, d
    push de
    ld d, l
    ld [$f53a], a
    cpl
    rst $38
    ld hl, sp-$08
    inc bc
    add b
    rst $38
    ldh [$5f], a
    and c
    cpl
    pop de
    rla
    ld [$d72a], a
    rla
    db $ed
    dec c
    or $16
    db $eb
    rrca
    di
    sbc a
    db $e3
    cp $87
    rst $38
    ei
    add a
    ld hl, sp-$75
    db $f4
    dec b
    ld a, [$f50a]
    push af
    ld a, [$44f8]
    rst $38
    inc a
    ld [bc], a
    ld a, d
    rst $38
    push af
    ld [hl+], a
    rst $38
    add hl, bc
    dec a
    rst $38
    ld [$0b1f], sp
    add hl, de
    ld de, $0e13
    ld c, $f4
    inc hl
    nop
    db $10
    ld [bc], a
    nop
    add b
    nop
    inc h
    add b
    dec e
    nop
    add b
    ld b, b
    ret nz

    or b
    ld [hl], b
    ld e, b
    ret z

    cp b
    adc b
    ldh a, [$90]
    ldh [$a0], a
    ld h, b
    and b
    jr nz, @-$1e

    sbc b
    ld a, b

jr_04a_5980:
    ld b, $fe
    ld a, [c]
    cp $fe
    ld a, $3c
    db $fc
    ret z

    ld hl, sp+$43
    inc b
    db $fc
    ld bc, $fcfc
    ld b, e
    cp $02
    dec b
    db $fd
    rlca
    cp c
    ld e, a
    ld h, c
    cp a
    ld b, e
    ld h, c
    rst $38
    inc b
    ld [hl-], a
    cp $12
    cp $f4
    ld [hl+], a
    db $fc
    ld a, [bc]
    ld [c], a
    cp $02
    cp $9a
    cp $ec
    call nz, $646c
    jr jr_04a_5980

    ld bc, $05ce
    ld [$0418], sp
    inc h
    dec h
    dec h
    add l
    nop
    ld a, [hl-]
    nop
    ld c, a
    ld b, h
    ld b, c
    ld e, [hl]
    add e
    nop
    ld b, [hl]
    db $10
    ld e, $21
    ld c, a
    ld e, h
    ld c, a
    ld b, b
    ld c, a
    ld b, c
    ld e, [hl]
    ld b, e
    ld e, a
    ld h, e
    jr nz, jr_04a_5a14

    jr jr_04a_59f6

    rlca
    ld b, h
    rlca
    dec b
    nop
    ld [bc], a
    call nz, $4401
    inc bc
    ld bc, $0301
    inc bc
    add e
    nop
    ld e, h
    adc [hl]
    nop
    db $eb
    call nz, $5800
    ld [de], a
    dec e
    ld sp, $4372
    jp hl


    adc [hl]
    and e

jr_04a_59f6:
    inc a
    ld h, a
    ld a, b
    db $d3
    db $fc
    xor b
    rst $38
    cp $fe
    ld hl, sp-$08
    ld b, e
    ld b, h
    ret nz

    ld a, a
    dec b
    rst $38
    add b
    cp $06
    db $fd
    dec de

jr_04a_5a0c:
    add e
    nop
    or d
    ld [$807f], sp
    di
    rrca

jr_04a_5a14:
    inc c
    db $fc
    db $fc
    cp $fe
    inc h
    rst $38
    dec bc
    db $fc
    ld a, a
    add $b9
    rst $38
    rst $38
    db $fd
    ccf
    ld [hl], $0f
    ld h, c
    rra
    adc l
    nop
    ldh a, [$1f]
    sbc l
    sub e
    jp c, $fc56

    dec a
    db $f4
    sub e
    dec e
    ei
    cp $06
    add sp, $18
    pop hl
    jr nz, jr_04a_5a0c

    ld b, b
    sbc a
    add b
    ccf
    nop
    cp $01
    ei
    rlca
    db $fc
    rra
    add sp, $6f
    adc a
    rst $08
    add e
    ld bc, $1226
    rst $38
    nop
    db $fc
    nop
    add b
    ld a, b
    ld a, h
    cp $7e
    ld a, a
    ld a, c

Call_04a_5a5b:
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    rlca
    rst $38
    ccf
    inc h
    rst $38

jr_04a_5a65:
    nop
    pop hl
    ld b, e
    pop bc
    add c
    ld c, $81
    ld a, [hl]
    cp c
    db $fc
    ld b, a
    cp [hl]
    add e
    ld [hl], $1b
    ei
    dec e
    rst $38
    dec e
    rst $28
    dec e
    ld b, e
    rst $38
    ld bc, $fe07
    rlca
    ld a, [$0fff]
    pop af
    ld a, a
    add c
    add a
    ld bc, $108e
    db $fc
    inc bc
    ld a, c
    rlca
    ld a, [de]
    rlca
    inc d
    rrca
    inc h
    sbc a
    adc c
    rst $38
    ld a, d
    rst $38
    cp $ff
    pop af
    add [hl]
    ld bc, $06a5
    ld h, e
    add b
    ld a, $c1
    db $fc
    rst $38
    inc l
    sub b
    ld [bc], a
    ld bc, $800d
    rst $38
    ld b, b
    rst $38
    call nz, $a87f
    ld a, a
    dec [hl]
    rst $38
    dec sp
    rst $38
    ld a, h
    db $fc
    add a
    inc bc
    and h
    nop
    ld bc, $0384
    xor c
    rlca
    sbc [hl]
    sbc [hl]
    ret nc

    ld d, c
    db $f4
    inc sp
    db $fd
    sub d
    adc c
    inc bc
    or [hl]
    adc e
    ld bc, $4364
    ccf
    ld b, b
    sbc d
    ld bc, $83c4
    add c
    nop
    jr jr_04a_5a65

    ld [bc], a
    ld b, h
    inc bc
    rst $38
    nop
    rst $38
    nop
    xor e
    rst $18
    inc hl
    add b
    dec b
    ld b, b
    ret nz

    ld h, b
    and b
    ldh a, [rNR10]
    adc c
    ld [bc], a
    add $01
    ld [bc], a
    inc bc
    add e
    inc b
    ld d, c
    adc b
    inc bc
    ld b, [hl]
    adc [hl]
    inc bc
    ld a, a
    dec bc
    ld [c], a
    rst $38
    ld bc, $fcff
    rst $38
    xor a

Jump_04a_5b03:
    rst $18
    ld c, l
    add a
    ld a, [c]
    rst $28
    add l
    inc bc

jr_04a_5b0a:
    sbc d
    adc e
    inc bc
    ret nc

    nop
    ld b, e
    call nz, Call_04a_4304
    ld [bc], a
    ld bc, $ffff
    add a
    inc bc
    push hl
    ld [hl+], a
    add c
    rst $38
    db $ec
    ld b, c
    inc hl
    ld bc, $0201
    ld [bc], a
    ld b, a
    ld [bc], a
    inc bc
    ld hl, sp+$25
    adc d
    ldh [rNR52], a
    ld bc, $0701
    ld b, $0f
    add hl, bc
    ld e, $12
    inc e
    inc d
    inc e
    inc h
    jr c, jr_04a_5b62

    jr jr_04a_5b84

    ld l, b
    ld c, c
    ld e, c
    ld c, c
    jr z, jr_04a_5b8c

    ld a, [hl-]
    ld a, [hl+]
    ld a, $26
    dec de
    rla
    dec d
    dec de
    add hl, bc
    dec c
    ld b, $06
    inc b
    inc b
    ld bc, $0f08
    ld b, e
    ld [$1407], sp
    dec b
    inc bc
    inc bc
    ld b, $06
    inc c
    inc c
    inc d
    inc e
    jr nz, @+$3a

jr_04a_5b62:
    ld [$1058], sp
    or b
    db $10
    ret nc

    jr nz, jr_04a_5b0a

    jr nz, jr_04a_5bcc

    add e
    add e
    ld b, l
    jr nz, @-$1e

    ld b, e
    db $10
    ldh a, [rSCX]
    adc b
    ld hl, sp+$07
    ld d, h
    ld [hl], h
    ld [hl+], a
    ld [hl+], a
    add hl, de
    add hl, de
    rlca
    rlca
    add e
    db $db
    rlca
    inc bc

jr_04a_5b84:
    ld [bc], a
    inc e
    inc e
    inc h
    inc h
    rra
    rra
    add l

jr_04a_5b8c:
    jp hl


    ldh [$2d], a
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, h
    ld hl, sp-$48
    pop hl
    ld h, c
    add e
    add e
    ld b, $06
    ld [$3008], sp
    jr nc, jr_04a_5be0

    ld b, c
    add [hl]
    add [hl]
    ld [$2018], sp
    ld hl, $4647
    adc l
    adc b
    sbc d
    sub b
    ccf
    ld hl, $47ff
    ld sp, hl
    ret z

    ld sp, hl
    ld e, b
    rst $28
    dec l
    ld hl, sp+$19
    ldh a, [rNR10]
    ldh a, [$f0]
    ld b, e
    ldh [rNR41], a
    ld [bc], a
    ret nz

    pop bc
    nop
    sbc a
    nop
    ld d, e
    inc d
    ld bc, $0103
    ld d, l

jr_04a_5bcc:
    ld bc, $80aa
    dec [hl]
    ld h, b
    cp [hl]
    sbc h
    rst $38
    add e
    rst $38
    jr nc, @-$2f

    ld b, c
    adc $46
    cp c
    cp c
    ld h, l
    add hl, bc
    add e

jr_04a_5be0:
    add e
    adc h
    adc h
    or c
    or c
    ld b, e
    ld b, e
    adc h
    adc h
    add e
    and [hl]
    inc bc
    inc e
    inc a
    ret nz

    ret nz

    ld h, c
    inc bc
    rra
    ccf
    rst $38
    ret nz

    ld b, l
    rst $38
    nop
    ldh [$2b], a
    rst $28
    rst $38
    adc b
    ld hl, sp-$3c
    db $fc
    db $e4
    db $fc
    ld [c], a
    cp $f2
    cp $72
    cp $61
    ld a, a
    pop bc
    rst $38
    add b
    rst $38
    ld bc, $06ff
    rst $38
    ld [$00fa], sp
    ld [hl], l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    dec hl
    nop
    ld d, a
    nop
    cpl
    nop
    ld e, a
    ld b, b
    ld l, a
    ld b, b
    ld e, a
    ld b, e
    ld b, b
    ld a, a
    ld bc, $3f20
    ld b, e
    db $10
    sbc a
    rla
    ld [$060f], sp
    rlca
    inc bc
    inc bc
    add c
    add c
    nop
    add b
    ret nz

    ld h, b
    di
    db $fc
    rst $38
    ld [hl], e
    cp a
    adc h
    inc sp
    db $10
    di
    ldh a, [rIF]
    rrca
    and l
    nop
    call c, $8003
    add b
    rra
    rra
    and e
    nop
    adc $01
    rlca
    rlca
    and e
    nop
    jp c, $070f

    rlca
    ld a, a
    ld a, b
    xor e
    add b
    push de
    nop
    xor e
    nop
    push de
    ld bc, $0efe
    ldh a, [$f0]
    adc h
    ld bc, $0c2c
    ld [bc], a
    dec b
    dec b
    add a
    add l
    db $eb
    add sp, $1f
    ld hl, sp+$0f
    db $fc
    inc bc
    cp $43
    ld bc, $06ff
    nop
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld b, $44
    rst $38
    inc bc
    ldh [rNR42], a
    add c
    rst $38
    ld b, c
    rst $38
    ld [hl-], a
    cp $1c
    db $fc
    db $10
    ldh a, [$30]
    ldh a, [$c0]
    ret nz

    nop
    ld [bc], a
    add c
    add c
    ld h, b
    ld h, b
    ret c

    ret c

    rst $38
    ld a, a
    cp $12
    rst $38
    add hl, bc
    rst $20
    dec h
    and $e6
    jr @+$1a

    ld h, c
    ld de, $0808
    inc [hl]
    inc [hl]
    call nz, $08c4
    ld [$1c1c], sp
    xor $ea
    ld e, $12
    ld a, h
    ld h, h
    db $fc
    add h
    ld b, e
    ld hl, sp+$08
    jp $c100


    ld bc, $40c0
    xor d
    nop
    ld d, d
    ld [de], a
    ld bc, $0602
    ld [$d108], sp
    pop de
    ld [c], a
    and d
    ldh [rNR41], a
    pop bc
    ld b, c
    jp $c742


    ld b, h
    add a
    add h
    ld b, e
    adc a
    adc b
    ldh [$29], a
    rra
    db $10
    sbc a
    sub b
    cp a
    and b
    ld a, a
    ldh [$7f], a
    ret nz

    cp a
    and c
    ld e, $12
    rra
    inc d
    rrca
    add hl, bc
    ld b, $06
    inc b
    inc h
    inc d
    inc d
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $4181
    ld h, c
    jr jr_04a_5d23

    inc b
    inc b
    db $e3
    db $e3
    inc e
    inc e
    db $ec
    ld l, $10
    add b
    ret nz

    ldh [$a0], a
    and b
    nop
    db $10
    ld [hl], b
    ld [hl], b
    ld hl, sp-$68
    db $fc
    inc d
    db $fc
    inc h

jr_04a_5d23:
    ld hl, sp+$48
    add l
    ld [bc], a
    ld b, d
    ld bc, $18f8
    ld b, e
    add sp, $28
    rlca
    ret nc

    ld d, b
    sub b
    sub b
    jr nz, jr_04a_5d55

    ld b, b
    ld b, b
    or e
    nop
    ld d, d
    or c
    nop
    ld d, b
    inc hl
    ld bc, $0618
    rrca
    ld bc, $1310
    db $10
    ld a, [de]
    rla
    rra
    rla
    rrca
    rrca
    rlca
    rlca
    inc bc
    dec bc
    add hl, bc
    ld [$0403], sp
    rlca

jr_04a_5d55:
    inc b
    ld bc, $000b
    ld [hl+], a
    db $10
    dec c
    nop
    jr nz, jr_04a_5d7f

    jr nc, jr_04a_5d61

jr_04a_5d61:
    jr nz, jr_04a_5d73

    inc d
    jr nz, jr_04a_5d8e

    db $10
    ld d, h
    db $10
    or b
    ld l, e
    ldh [rNR44], a
    inc bc
    inc bc
    inc a
    inc a
    rst $28
    rst $08

jr_04a_5d73:
    jp c, $b558

    and b
    ld a, a
    ld b, b
    ld a, a
    rst $08
    call nc, $ec34
    inc e

jr_04a_5d7f:
    cp e
    rst $08

jr_04a_5d81:
    ld hl, sp-$3c
    ld hl, sp-$20
    add sp, -$10
    or b
    ld [hl], b
    ret nc

    inc [hl]
    ldh [rBCPS], a
    add b

jr_04a_5d8e:
    call nc, $a800
    ld l, e
    ldh [rNR50], a
    ldh [$e0], a
    jr jr_04a_5db0

    or $f6
    cp a
    rra
    ld d, l
    ld bc, $00ea
    rst $38
    add b
    rst $38
    ldh a, [$df]
    db $fc
    rst $28
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    ld a, a
    inc sp
    ld a, a
    ld [hl+], a
    ccf

jr_04a_5db0:
    ld h, c
    ld a, a
    ld bc, $037f
    ld a, a
    ld bc, $02bf
    add e
    ld bc, $0afd
    ld a, a
    ld b, $bf
    ld [$005a], sp
    or l
    nop
    ld l, d
    nop
    ld d, l
    add l
    ld [bc], a
    db $fc
    ldh [$29], a
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    ld b, $ff
    jp $e2fe


    rst $38
    pop af
    ld a, a
    ld hl, sp+$1f
    ld a, h
    rlca
    rrca
    ld bc, $8301
    add d
    jr jr_04a_5d81

    ld h, h
    ld h, h
    add hl, bc
    add hl, bc
    and $ff
    cp $32
    db $fc
    inc c
    pop af
    pop af
    ld [c], a
    and d
    adc $01
    inc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    and e
    nop

Call_04a_5e00:
    or h

Jump_04a_5e01:
    rrca
    ld [$090b], sp
    rrca
    ld [$090f], sp
    rrca
    ld a, [bc]
    rrca
    dec b
    rlca
    ld b, $07
    inc bc
    inc bc
    adc c
    nop
    ld d, d
    add a
    nop
    and b
    inc bc
    inc [hl]
    inc [hl]
    ld b, b
    add sp, -$7c
    nop
    xor h
    dec b
    ld [hl], b
    jr nz, @-$1e

    ld h, b
    ldh [$a0], a
    adc b
    add e
    ld de, $f050
    or b
    ldh a, [$58]
    ld hl, sp-$58
    ld hl, sp+$54
    ld h, h
    ld a, [hl-]
    ld [hl-], a
    rrca
    rrca
    ld bc, $0001
    ld a, [hl+]
    add h
    ld bc, $0092
    ld a, a
    add l
    ld bc, $019c
    jr nz, jr_04a_5e86

    add e
    ld bc, $0bf0
    set 1, b
    ccf
    ld hl, sp+$07
    cp $01
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    and e
    ld [bc], a
    nop
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    and h
    ld bc, $e081
    jr nz, jr_04a_5ea4

    rst $38
    jr nz, @+$01

    jr @+$01

    inc c
    rst $38
    rlca
    rst $38
    inc a
    db $fc
    ld [c], a
    ld [c], a
    ld bc, $c001
    ret nz

    ld [hl], b
    jr nc, jr_04a_5eb7

    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    db $ec
    inc bc
    rst $10
    add e
    xor d
    add c
    ld b, h
    pop bc

jr_04a_5e86:
    ld b, c
    inc b
    ld [$0488], sp
    inc b
    ld [bc], a
    call nz, Call_04a_4800
    add e
    ld [bc], a
    inc e
    rlca
    jr jr_04a_5eae

    ld b, $06
    db $e3
    db $e3
    inc e
    ld e, $8d
    ld [bc], a
    or $01
    add b
    add b
    dec h
    ld b, b

jr_04a_5ea4:
    ld bc, $c080
    add e
    ld bc, $0500
    db $fc
    rst $08
    pop af

jr_04a_5eae:
    ld e, a
    rst $38
    ccf
    add l
    ld bc, $ff0a
    ld a, a
    dec bc

jr_04a_5eb7:
    ld [bc], a
    ld b, $01
    add hl, bc
    ld [$1108], sp
    inc de
    inc de
    dec e
    rra
    ld de, $1f47
    db $10
    ld b, l
    rrca
    ld [$070f], sp
    inc b
    rlca
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $04
    dec b
    inc b
    inc b
    ld b, $00
    add hl, bc
    inc h
    ld [$0c04], sp
    ld [$080b], sp
    ld [$0424], sp
    ld bc, $0206
    ld [hl+], a
    inc bc
    inc hl
    ld bc, $23ec
    dec c
    ld bc, $0701
    ld b, $09
    add hl, bc
    inc d
    dec d
    dec e
    ld a, $41
    ld b, c
    adc b
    adc b
    and [hl]
    or e
    inc b
    jr c, @-$30

    rst $08
    rst $38
    ccf
    ld b, e
    rst $38
    rra
    add hl, de
    rst $30
    rla
    rst $28
    cpl
    pop hl
    inc hl
    sbc b
    jr jr_04a_5f20

    rlca
    rrca
    nop
    rra
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, $c1

jr_04a_5f20:
    nop
    ld a, $64
    ld [bc], a
    ldh [rP1], a
    rra
    and l
    call nz, $000f
    ld a, h
    add b
    add e
    ldh [$60], a
    ld hl, sp-$68
    ld a, [hl]
    ld b, a
    ld b, a
    ld a, c
    rlca
    add h
    ccf
    ld a, a
    ld [hl], c
    rla
    inc a
    inc a
    ld b, [hl]
    ld b, d
    sbc a
    add c
    rst $38
    add c
    sub e
    add a
    ld a, [hl+]
    ld bc, $00ff
    cp $01
    cp $02
    ret c

    db $e4
    jr @+$1e

    ld b, [hl]
    ld b, [hl]
    add a
    nop
    ld h, b
    rrca
    ret nz

    ldh [$e0], a
    ld hl, sp-$1a
    rst $20
    db $fc
    db $fc
    ld hl, sp-$04
    ldh [$f0], a
    inc bc
    inc bc
    rst $38
    db $fc
    ld c, e
    rst $38
    nop
    inc bc
    rrca
    ldh a, [$03]
    inc c
    ld b, e
    ld bc, $0302
    nop
    ld bc, $ff01
    inc hl
    ld [bc], a
    ld de, $0400
    ld b, $04
    dec b
    db $fc
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    adc [hl]
    pop af
    pop af
    cp $1e
    pop hl
    pop hl
    ld l, e
    ldh [$31], a
    dec e
    dec e
    ld [hl+], a
    ld h, $20
    ld [hl+], a
    jr nc, jr_04a_5fcd

    ld d, b
    ld a, d
    ld c, b
    ld a, l
    dec sp
    ccf
    inc c
    dec c
    ret


    rst $08
    ld a, [$df3e]
    db $ec
    rra
    inc d
    rlca
    ld [$898f], sp
    rrca
    add hl, bc
    rlca
    ld [$909f], sp
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ccf
    ld hl, $223f
    ccf
    inc h
    ld a, a
    ld c, b
    ld a, a
    ld b, b
    rst $38
    add b
    ld c, d
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    dec b
    xor d
    adc a
    inc b
    ret nz

jr_04a_5fcd:
    ccf
    nop
    rra
    nop
    add [hl]
    nop
    xor [hl]
    adc b
    and e
    dec b
    add a
    ld hl, sp+$0f
    inc b
    rst $38
    rst $38
    ld h, a
    ld bc, $c0c0
    ld b, h
    jr nz, @+$62

    ldh [$2e], a
    ldh [$60], a
    ldh [$3c], a
    db $fc
    jp nz, $01ce

    add a
    ld bc, $e647
    rst $28
    ld a, b
    rra
    ld sp, hl
    rrca
    db $fc
    ld b, $fc
    call nz, $0cf8
    ld hl, sp+$0f
    pop af
    sbc a
    and $ff
    ld hl, sp+$7e
    ldh [$7f], a
    sub b
    sbc [hl]
    ld [$888e], sp
    ld c, [hl]
    ret z

    ccf
    ld hl, sp+$0f
    ldh a, [$1f]
    di
    rra
    ld b, e
    ldh [$3f], a
    dec bc
    pop bc
    ld a, a
    and a
    cp $5b
    db $fc
    cp a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$c3], a
    ld bc, $4b8a
    rst $38
    nop
    nop
    rst $28
    ld b, l
    db $10
    rst $38
    ld b, $11
    cp $22
    db $fc
    inc l
    ldh a, [rSVBK]
    cp e
    nop
    ld h, b
    inc de
    sub b
    cp b
    ld c, b
    ret z

    adc b
    sbc b
    ld [$1438], sp
    inc a
    inc d
    ld a, h
    rrca
    rst $38
    ld [hl], b
    rst $38
    add b
    db $eb
    nop
    ld d, l
    and e
    add c
    ld d, $20
    ld a, [hl+]
    jr nz, jr_04a_608c

    ld b, b
    ld c, d
    ld b, b
    call $aaa0
    add b
    adc l
    ld h, b
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    sub a
    sbc a
    cp $67
    cp $44
    rlca
    db $fc
    dec b
    ld hl, sp+$0e
    ld sp, hl
    add hl, bc
    cp $0e
    xor d
    nop
    ld [hl-], a
    and e
    ld bc, $0241
    ld b, b
    add b
    add b
    db $ec
    ld sp, $c619
    rst $00
    add hl, sp
    ei
    ld de, $6173
    rst $20
    ld bc, $020f

jr_04a_608c:
    ld c, $06
    ld d, $02
    xor [hl]
    ld [bc], a
    ld e, [hl]
    nop
    cp [hl]
    inc e
    db $fc
    db $e4
    db $fc
    inc b
    db $fc
    ld b, l
    ld [$43f8], sp
    db $10
    ldh a, [rSC]
    jr nz, @-$5e

    ld b, b
    ldh a, [rNR50]
    db $db
    dec bc
    add a
    ld c, a
    ret nz

    ld b, e
    ldh a, [$30]
    cp $0e
    rst $38
    ld bc, $009f
    ld b, e
    rrca
    nop
    dec b
    ldh [$f8], a
    ldh [$e4], a
    jr jr_04a_613d

    jp $4d01


    inc bc
    rst $38
    ld e, $ff
    nop
    adc b
    ld bc, $12bd
    nop
    inc c
    ld e, $03
    ld hl, $400f
    ccf
    add b
    ld a, a
    adc h
    rst $20
    add d
    ld a, a
    ld b, d
    ccf
    inc h
    rra
    inc e
    xor b
    ld [bc], a
    add h
    ldh [rNR43], a
    inc b

jr_04a_60e4:
    rlca
    ld [bc], a
    rrca
    ld a, [bc]
    rra
    ld [de], a
    dec de
    inc d
    ld a, $24
    inc a
    inc h
    ld a, h
    ld b, h
    ld [hl], h
    ld c, b
    ld a, l
    ld c, b
    ld a, [$f88c]
    adc e
    ld hl, sp-$78
    add sp, -$68
    ld c, b
    ld l, h
    ld c, b
    ld c, e
    jr c, @+$3a

    inc c
    inc c
    adc c
    nop
    ld d, [hl]
    ld bc, $0100
    jp $3a01


    rla
    rlca
    rlca
    add hl, de
    jr jr_04a_6137

    jr nz, jr_04a_60e4

    sbc $81
    and c
    nop
    ld b, b
    jp nz, $c042

    ld b, c
    add b
    ld b, d
    ldh [rNR50], a
    ldh a, [rNR23]
    ld hl, sp+$08
    call nz, $8802
    dec bc
    ld de, $17f3
    ld hl, sp+$09
    cp $06
    cp a
    ld bc, $005f

jr_04a_6137:
    cpl
    ld l, [hl]
    dec bc
    ld [hl], b
    ldh a, [$38]

jr_04a_613d:
    ld [$047c], sp
    db $fc
    ld a, h
    cp [hl]
    add [hl]
    ld a, [hl]
    ld bc, $fe43
    ld [bc], a
    rlca
    db $fd
    inc bc
    db $ec
    sbc h
    add b
    ldh [$08], a
    adc b
    add a
    nop
    ld a, a
    dec c
    inc bc
    rrca
    rrca
    ld a, a
    rst $08
    rst $08
    db $fc
    cp $c0
    ldh [rTAC], a
    rrca
    rst $38
    ldh a, [$c4]
    ld bc, $049c
    ld b, $fb
    inc c
    di
    inc d
    ld b, e
    pop af
    ld [de], a
    dec b
    rrca
    db $fc
    inc bc
    rlca
    ld bc, $8302
    ld bc, $1160
    ld c, e
    ld a, a
    inc a
    dec a
    adc b
    adc [hl]
    ld c, b
    ld c, l
    cp b
    cp [hl]
    jp hl


    rst $38
    ld a, [bc]
    rrca
    ld b, h
    ld b, a
    inc b
    rlca
    ld b, h
    ld [bc], a
    inc bc
    ld de, $751f
    rst $30
    ld a, [$e5ff]
    rst $30
    adc [hl]
    rst $08
    ld a, $33
    rst $38
    pop bc
    rst $38
    ld bc, $20ff
    rst $38
    adc e
    ld bc, $0687
    inc b
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    nop
    add [hl]
    ld bc, $17d0
    rlca
    ld b, $8f
    jr c, jr_04a_61f6

    pop bc
    rst $10
    nop
    xor [hl]
    nop
    call nc, $aa00
    nop
    rst $10
    ld bc, $06ff
    rst $38

jr_04a_61c5:
    jr jr_04a_61c5

    ld h, b
    db $fd
    ret nz

    and e
    inc bc
    xor h
    rlca
    ld hl, sp+$00
    db $f4
    nop
    ei
    nop
    rst $38
    add e
    and h
    ld bc, $0b94
    pop bc
    ld a, a
    rst $28
    ld a, [hl]
    db $db
    ld a, h
    rst $38
    ld a, b
    rst $38
    jr nc, @+$01

    jr nz, jr_04a_622a

    rst $38
    nop
    add e
    ld [bc], a
    ld h, b
    inc bc
    add b
    adc l
    ret nz

    jp z, $0287

    ld l, b
    adc l
    inc bc

jr_04a_61f6:
    add b
    ld a, [bc]
    sbc a
    and c
    daa
    ld b, b
    rst $20
    ld b, b
    cp $41
    cp h
    ld b, d
    ld hl, sp-$7a
    inc bc
    sbc c
    adc c
    inc bc
    ret nz

    ld b, e
    rst $38
    ld [bc], a
    ld bc, $03fd
    adc c
    inc b
    nop
    rrca
    ret z

    ld c, l
    ld hl, sp+$3e
    jp hl


    rst $38
    jr nz, jr_04a_6250

    ld d, b
    ld a, d
    ld d, b
    db $fd
    sub b
    ld a, [$fd90]
    add l
    rst $08
    adc c
    nop
    add b
    ld a, [bc]
    dec bc

jr_04a_622a:
    add hl, bc
    ld e, $11
    dec e
    ld a, $da
    db $e4
    dec de
    inc e
    ld b, a
    adc d
    ld bc, $8d05
    ld bc, $0360
    ld a, a
    inc d
    rst $30
    ld [$ff43], sp
    add hl, bc
    ld [bc], a
    rst $30
    ld [$86ff], sp
    ld bc, $ff79
    ld h, a
    ld bc, $0101
    inc hl
    inc bc

jr_04a_6250:
    ld l, e
    rlca
    ccf
    ld e, $79
    add hl, sp
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld a, a
    ld bc, $0707
    ld b, e
    add hl, bc
    ld [$0f07], sp
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $ec01
    daa
    ldh [rSTAT], a
    rst $20
    db $e3
    rst $38
    rst $38
    rst $08
    rst $08
    rrca
    rrca
    rra
    inc e
    dec a
    inc e
    ld a, [hl-]
    jr nc, jr_04a_62ba

    jr nc, jr_04a_62f9

    jr nc, jr_04a_62f6

    ld h, b
    ld [$75e0], a
    ld [hl], b
    ld l, d
    ld c, b
    ld d, l
    ld b, h
    db $eb
    jp $87d7


    xor c
    adc a
    pop de
    sub e
    or c
    sub e
    db $e3
    cp a
    and e
    cp a
    and $be
    or h
    sbc h
    rst $18
    adc h
    xor l
    adc l
    ld d, l
    ld b, l
    ld l, e
    ld b, e
    ld e, a
    ld e, a
    cpl
    daa
    ld a, a
    ld b, a
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    rra
    ld b, h
    rst $38
    rrca
    inc c
    rlca
    rst $38
    add a
    ld a, l
    ld c, l
    ld a, [hl-]

jr_04a_62ba:
    jr c, jr_04a_62f1

    jr nc, jr_04a_62f8

    jr nc, jr_04a_62f5

    db $10
    inc hl
    jr jr_04a_62cb

    inc e
    inc c
    ld c, $0e
    rlca
    rlca
    inc bc

jr_04a_62cb:
    inc bc
    adc l
    nop
    ld c, a
    ldh [rNR44], a
    ldh a, [$e0]
    ld hl, sp-$08
    db $f4
    call nz, $04ac
    sub $80
    xor d
    add d
    ld d, [hl]
    ld b, d
    xor d
    ld [hl+], a
    db $76
    ld [hl+], a
    cp e
    db $10
    ld d, l
    ld de, $09ab
    ld e, l
    add hl, bc
    xor e
    add hl, bc
    db $fd
    db $fd
    rst $38
    sbc a

jr_04a_62f1:
    rst $38
    ccf
    pop af
    rst $38

jr_04a_62f5:
    ld b, h

jr_04a_62f6:
    ldh [$f3], a

jr_04a_62f8:
    inc c

jr_04a_62f9:
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rra
    db $fc
    rrca
    rst $38
    rrca
    sbc a
    sbc a
    cp a
    cp a
    ld [hl+], a
    rst $38
    nop
    db $fc
    ld b, e
    ei
    ld hl, sp+$03
    adc $ca
    rst $08
    add [hl]
    ld b, [hl]
    rst $38
    add e
    ld b, e
    pop bc
    rst $38
    ld d, $e1
    rst $38
    ld h, c
    ld e, a
    ld [de], a
    cp a
    cpl
    ld a, l
    ld b, l
    ld sp, hl
    ld c, c
    ld a, b
    ld c, b
    ld hl, sp-$68
    ld hl, sp-$70
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$c0], a
    jp c, Jump_04a_6700

    dec d
    ld [bc], a
    inc b
    inc b
    ld a, [bc]
    ld [$081d], sp
    ld a, [de]
    db $10
    dec [hl]
    ld hl, $223a
    ld a, a
    ld c, h
    ld a, [hl]
    ld d, b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ld b, e
    ldh [$7f], a
    inc b
    di
    ld a, a
    cp $7f
    pop af
    and h
    nop
    cp h
    ld b, $c0
    rst $38
    inc e
    rst $38
    add e
    rst $38
    add b
    ld b, h
    rst $38
    ld b, b
    ldh [rNR52], a
    ldh [rIE], a
    ret c

    rst $38
    db $e4
    rst $38
    db $d3
    rst $38
    ret z

    cp $c4
    rst $38
    add d
    ei
    add c
    db $fd

jr_04a_6373:
    ld b, b
    ld a, [$f520]
    jr nz, jr_04a_6373

    db $10
    call c, $b708
    sub a
    jp nc, $5192

    ld d, b
    ld a, c
    ld [hl], c
    dec a
    add hl, sp
    rra
    rra
    rrca
    rrca
    xor e
    di
    rlca
    ld bc, $0700
    rlca
    add hl, de
    jr jr_04a_63f4

    ld h, b
    and l
    nop
    ld c, [hl]
    ldh [rNR44], a
    inc bc
    inc bc
    adc h
    inc c
    ld a, a
    ccf
    rst $20
    rst $00
    ld b, e
    inc bc
    and c
    ld bc, $0151
    and c
    ld bc, $03d3
    and [hl]
    ld b, $58
    jr @+$01

    ld a, a

jr_04a_63b2:
    call nc, $ea80
    nop
    call nc, $fac0
    jr c, jr_04a_63b2

    rlca
    ld [$c300], a
    add a
    ldh [$2f], a

Jump_04a_63c2:
    db $f4
    ld [hl], b
    sbc $0e
    db $eb
    ld bc, $00d4
    xor d
    nop
    call nc, $a800
    nop
    ret nc

    ret nz

    cp b
    jr c, @+$61

    rlca
    and e
    ld bc, $80c1
    ldh [$60], a
    ld e, h
    ld e, h
    ld b, e
    ld b, e
    and c
    and b
    ld de, $0b11
    add hl, bc
    rrca
    dec bc
    rlca
    rlca
    rra
    rra
    cp $fe
    ld hl, sp-$08
    ldh a, [$e0]
    adc e
    nop

jr_04a_63f4:
    call c, $fc11
    ld hl, sp-$01
    cp $3f
    rra
    rrca
    rrca
    inc sp
    inc sp
    jp $07c1


    rlca
    jr c, jr_04a_643e

    ret nz

    ret nz

    and l
    nop
    ld [$ff03], sp
    rst $38
    add e
    add c
    adc b
    and l
    ld [bc], a
    ldh a, [rIF]
    rrca
    add $01
    ld c, a
    call nz, $839e
    nop
    ld c, [hl]
    inc bc
    add b
    add b
    ld h, c
    ld h, c
    add e
    ld bc, $03b8
    rrca
    rrca
    ld e, $1e
    ld [hl+], a
    db $fc
    nop
    ld hl, sp-$7d
    ld bc, $2846
    ldh [$c4], a
    cp [hl]
    cp c
    nop
    ld c, [hl]
    ld a, [bc]
    add b
    nop
    ret nz

    add b

jr_04a_643e:
    ret nz

    ret nz

    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [rNR43]
    ld [hl], b
    ld b, $78
    jr nc, jr_04a_64c3

    jr c, @-$06

    ld a, b
    ld hl, sp+$43
    ld hl, sp-$04
    nop
    ld a, h
    ld c, c
    ld a, h
    inc a
    ld [bc], a
    db $fc
    db $fc
    ld a, h
    inc h
    ld a, b
    nop
    ld hl, sp+$25
    ldh a, [$86]
    push de
    ld bc, $8080
    db $ec
    dec l
    ldh [rNR42], a
    pop hl
    ldh [$f9], a
    ld sp, hl
    rst $00
    rst $00
    inc bc
    inc bc
    rlca
    ld [bc], a
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    ld c, $04
    dec c
    ld [$e8ea], sp
    dec e
    jr jr_04a_648d

    ld [$0c1d], sp
    dec de
    inc de
    rla
    rla
    add hl, sp
    cpl
    ld b, e

jr_04a_648d:
    ld sp, $4333
    inc hl
    ccf
    inc d
    ld h, $3e
    inc [hl]
    inc e
    ccf
    inc l
    dec a
    dec l
    dec a
    dec d
    rra
    inc de
    rra
    rra
    rst $38
    add a
    ld a, a
    ld c, a
    ld a, $34
    inc bc
    ld [hl+], a
    ld [bc], a
    ld bc, $0103
    xor c
    ld [bc], a
    sub d
    dec d
    ldh a, [$60]
    ld hl, sp-$10
    ret c

    ret c

    xor h
    adc b
    ld e, h
    inc c
    xor h
    add h
    ld d, [hl]
    ld b, h
    xor [hl]
    ld h, $76
    ld [hl+], a

jr_04a_64c3:
    cp d
    ld [de], a
    ld d, a
    ld [de], a
    add e
    nop
    db $fc
    add l
    ld bc, $1330
    ld a, a
    ld [hl-], a
    cp a
    inc l
    ld e, a
    ld d, $bd
    dec d
    ld e, l
    inc d
    cp h
    sub h
    ld hl, sp-$58
    ld hl, sp-$18
    ld [hl], b
    ld d, b
    jr nz, jr_04a_6502

    adc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    add e
    ld bc, $1f64
    ld c, $08
    dec c
    ld [$101a], sp
    dec d

jr_04a_64f2:
    ld de, $84fd
    ld a, [$f582]
    ld b, c

jr_04a_64f9:
    ld [$f520], a
    jr nz, jr_04a_64f9

    ld de, $1357

Jump_04a_6501:
    xor [hl]

jr_04a_6502:
    xor h
    push de
    call nz, $626a
    dec [hl]
    ld sp, $0f1f
    xor a
    ld bc, $a348
    ld [bc], a
    jr c, jr_04a_64f2

    add hl, hl
    ld [hl], e
    ld h, c
    ret nz

    add b
    add c
    nop
    inc bc
    inc bc
    ld b, $04
    jr jr_04a_6527

    cp e
    ld de, $3e7f
    db $eb
    jp $0155


jr_04a_6527:
    xor d
    nop
    ld d, l
    nop
    xor e
    inc bc
    ld d, a
    ld b, $ba
    jr jr_04a_65a7

    ld h, b
    cp $fe
    push de
    ld bc, $00aa
    push af
    ldh [$be], a
    ld e, $83
    add a
    dec bc
    push de
    nop
    xor d
    add b
    push af
    ld [hl], b
    sbc $0c
    xor e
    inc bc
    ld d, l
    nop
    and l
    add c
    inc c
    push de
    pop bc
    cp e
    inc sp
    ld e, a
    ld c, $ae
    inc b
    ld d, a
    ld [bc], a
    xor e
    add e
    rst $10
    add e
    adc e
    dec bc
    rrca
    xor a
    add [hl]
    ld e, [hl]
    ld c, [hl]
    cp [hl]
    inc a
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    adc [hl]
    ld [bc], a
    jp hl


    ldh [$29], a
    ret nz

    add b
    ldh a, [$e0]
    ld hl, sp-$10
    ld a, h

jr_04a_6577:
    jr c, jr_04a_6577

    db $ec
    rrca
    ld b, $3f
    rra
    rst $20
    ld h, e
    add e
    add e
    inc bc
    ld bc, $81c3
    rst $20
    jp $ffff


    di
    db $e3
    jp $0381


    ld bc, $0183
    inc bc
    inc bc
    add e
    inc bc
    rst $20
    jp $3f7f


    and e
    ld [bc], a
    sbc $0c
    rst $08
    adc $7e
    ld a, $1e
    inc c
    inc e
    inc e
    inc a

jr_04a_65a7:
    jr @+$3a

    jr c, @+$7a

    add e
    ld bc, $0345
    ld h, b
    ldh [$c0], a
    ret nz

    adc h
    ld [bc], a
    sub e
    nop
    add b
    push bc
    ld [bc], a
    sub [hl]
    nop
    add b
    ld a, [hl+]
    ret nz

    add h
    ld [bc], a
    sub d
    add a
    nop
    and b
    ld bc, $8baa
    add l
    nop
    xor d
    add a
    ld bc, $0310
    xor a
    ld l, a
    rst $18
    rst $18
    add e
    ld bc, $ff1c
    ld a, l
    dec b
    ld bc, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    inc hl
    ld bc, $0001
    ld bc, $998f
    inc bc
    ld bc, $0101
    ld bc, $3fec
    jr jr_04a_65f2

    rlca
    ld d, $19

jr_04a_65f2:
    dec a
    ld [hl+], a
    ld a, a
    ld b, h
    ld e, e
    ld a, h
    ld c, a
    ld l, b
    ld d, l
    ld e, d
    jp c, $3f95

    ret nz

    ld a, a
    nop
    rst $38
    nop
    adc [hl]
    rst $38
    rra
    ld [hl+], a
    ccf
    ld bc, $ff7f
    inc hl
    ccf
    rlca
    rrca
    ld e, a
    ld c, a
    ld e, a
    rra
    sbc a
    rst $18
    ldh [rSCX], a
    rst $38
    nop
    ld [de], a
    ld b, b
    cp a
    add a
    ld hl, sp+$7f
    ld h, b
    inc a
    jr nz, jr_04a_663d

    db $10
    inc c
    inc c
    dec bc
    ld c, $0d
    dec bc
    inc b
    rlca
    inc bc
    ld hl, sp+$28
    ret nz

    dec e
    ld bc, $0701
    rrca
    ld e, a
    ld [hl], b
    rst $38
    add b
    di
    inc c
    push af

jr_04a_663d:
    db $10
    db $eb
    jr nz, @-$0c

    cpl
    ld hl, sp+$18
    ld l, b
    sbc b
    jp hl


    add hl, de
    push de
    dec l
    add sp, $17
    add b
    ld a, a
    inc a
    rst $38
    ld [hl+], a
    pop af
    nop
    di
    daa
    rst $38
    ld de, $fefe
    db $fc
    cp $3c
    db $fc
    ld hl, sp+$07
    cp $01
    ld a, h
    add e
    nop
    rst $38
    ldh a, [rIF]
    nop
    ld bc, $fc43
    nop
    ld h, c
    rrca
    add b
    rst $38
    ld a, b
    ld hl, sp-$79
    add a
    ld [bc], a
    inc bc
    dec b
    rlca
    rlca
    dec b
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    add e
    add e
    ld bc, $0704
    sub l
    nop
    cp h
    add hl, bc
    ldh a, [$f0]
    ld hl, sp+$08
    inc [hl]
    call z, $1eee
    rst $38
    ld bc, $ff43
    nop
    inc c
    ei
    inc b
    db $fd
    ld [bc], a
    rst $18
    ld [c], a
    dec e
    ld e, $10
    rra
    ld h, b
    ld a, a
    nop
    ld b, h
    rst $38
    nop
    ld b, $04
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rDMA]
    rst $38
    ld hl, sp+$03
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    add a
    sbc c
    ld [bc], a
    nop
    rst $38
    ld bc, $89a3
    ld c, $7f
    nop
    rst $08
    inc bc
    rra
    ld e, $7f
    jp hl


    ld sp, hl
    xor l
    db $fd
    ld b, d
    rst $38
    adc h
    ld a, a
    and e
    sub l
    inc bc
    inc bc
    rst $38
    dec b
    rst $38
    ld b, e
    ld [bc], a
    cp $03
    inc c
    db $fc
    ldh a, [$f0]
    cp c
    nop
    ret nc

    rlca
    ret nz

    ld b, b
    db $fc
    inc a
    sbc e
    ld h, a
    ld hl, sp+$07
    ld b, e
    db $fc
    inc bc
    ld [$cf30], sp
    nop
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    add e
    cp c
    ldh [rNR44], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc d

Jump_04a_66ff:
    rst $38

Jump_04a_6700:
    ld [$05ff], sp
    rst $38
    dec bc
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    ld b, e
    cp [hl]
    xor d
    ld d, a
    ld d, h
    xor a
    and b
    ld e, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld [hl], h
    db $eb
    and b

jr_04a_6719:
    rst $38
    inc hl
    rst $38
    ld b, e
    and l
    rst $38
    rlca
    rst $38
    ld b, h
    ld hl, sp+$30
    di
    call z, $03cf
    ld hl, sp+$2a
    nop
    ld a, [hl]
    inc hl
    add b
    ld b, e
    ld b, b
    ret nz

    daa
    add b
    ld bc, $c040
    ld b, e
    jr nz, jr_04a_6719

    dec bc
    ld hl, $7ee1
    rst $38
    ld hl, sp-$31
    ld a, l
    add d
    cp a
    ld b, b
    ld a, a
    add b
    add l
    add e
    add hl, bc
    ld e, a
    and b
    xor [hl]
    pop de
    ld a, a
    pop af
    ld l, $af
    nop
    rst $00
    add e
    rst $20
    rrca
    jr c, jr_04a_6797

    rst $38
    rst $38
    rrca
    rst $38
    dec bc
    push af
    dec d
    ld a, [bc]
    ld a, [hl+]
    rst $00
    inc e
    call z, $f0e0
    db $ec
    ccf
    add e
    rst $30
    push bc
    db $f4
    ld b, e
    ldh [rNR41], a
    add hl, de
    ldh a, [rNR10]
    db $ec
    inc e
    and $1a

jr_04a_6776:
    xor $1a
    jp z, $043e

    db $fc
    jr z, jr_04a_6776

    ld c, b
    ld hl, sp+$30
    or b
    db $10
    sub b
    and b
    ld h, b
    ld b, b
    ld h, b
    ret nz

    ret nz

    cp h
    nop
    inc a
    add [hl]
    nop
    ld hl, $0102
    ld bc, $8403
    adc c
    inc b

jr_04a_6797:
    ld a, a
    nop
    add b
    cp a
    ld e, $22
    ccf
    ld bc, $c0bf
    ld b, e
    rst $38
    nop
    ld bc, $0ff0
    add e
    ld [bc], a
    ld a, b
    ld a, [de]
    call nc, $aaab
    push de
    db $fc
    add e
    cp d
    push bc
    ld a, l
    ld b, d
    ld e, [hl]
    ld h, c
    and b
    ld e, a
    nop
    rst $38
    inc a
    rst $38
    db $fd
    db $fd
    sbc b
    ld a, h
    add sp, $18
    add e
    ld a, a
    nop
    ld d, [hl]
    rst $38
    nop
    nop
    add h
    add h
    ld bc, $0377
    ld [hl], b
    rst $38
    jr c, @+$01

    adc e
    nop
    or b
    inc de
    inc l
    rlca
    ld d, a
    inc bc
    jr z, jr_04a_67dd

jr_04a_67dd:
    ld d, h
    nop
    jr z, jr_04a_67e1

jr_04a_67e1:
    ld b, b
    nop

jr_04a_67e3:
    and d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    add a
    ld bc, $0b00
    ret nc

    ld a, [c]
    adc h
    db $dd
    add d
    xor b
    add l
    ret nc

    jp nz, $e0e8

    push af
    adc e
    ld bc, $0014
    ld [bc], a
    call nz, $00a1
    push af
    adc b
    ld bc, $0d57
    nop
    rst $38
    jr z, jr_04a_67e3

    inc b
    xor e
    ld [bc], a
    ld d, l
    nop
    xor e
    ld d, d
    dec b
    and b
    dec bc
    add e
    add e
    add hl, bc
    nop
    ld d, l
    nop
    xor d
    jr nz, jr_04a_6874

    ld b, b
    ld l, d
    nop
    push af
    and e
    inc bc
    ld b, b
    adc e
    ld [bc], a
    nop
    ld b, $47
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    adc h
    ld [bc], a
    inc de
    ld [$00a0], sp
    ld d, b
    nop
    and b
    nop
    ret nc

    add b
    and b
    add [hl]
    ld [bc], a
    ld c, c
    dec bc
    ei
    ei
    rst $30
    push af
    add hl, hl
    ld [$6412], a
    dec l
    adc b
    ld [c], a
    ldh a, [$83]
    nop
    dec a
    ld d, $04
    nop
    ld a, [bc]
    nop
    inc b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    call nc, Call_04a_4a80
    ret nz

    ld b, b
    ld h, b
    and b
    add b
    ld d, b
    nop
    xor b
    add h
    or l
    nop
    ld b, b
    add e
    inc bc
    ld c, $13
    nop
    dec d
    nop

jr_04a_6874:
    dec hl
    nop
    dec e
    ld [bc], a
    ld a, [hl+]
    dec b
    dec d
    ld [bc], a
    ld a, [bc]
    nop
    ld bc, $8400
    rlca
    ld b, e
    inc bc
    and b
    jp $029f


    ld b, b
    ld d, b
    add b
    call nz, $00db
    rst $38
    and e
    inc bc
    sbc $13
    nop
    push af
    ret nz

    ld [$d085], a
    adc d
    and b
    sub l
    ret nz

    jp z, $e5e0

jr_04a_68a0:
    ldh a, [$62]
    ld l, b
    ld [hl], l

jr_04a_68a4:
    ld [hl], b
    ld h, d
    ld a, c
    add l
    inc bc
    ld h, b
    dec b
    ld a, [hl+]
    nop
    ld e, l
    nop
    xor [hl]
    ld bc, $bb83
    nop
    dec b
    add h
    ld [bc], a
    ld b, e
    add l
    ld bc, $13e0
    xor l
    ld d, a
    ld b, d
    xor a
    inc b
    ld d, a
    and d
    dec bc
    ld b, b
    rla
    xor b
    inc bc
    ld d, c
    dec b
    inc hl
    adc e
    dec b
    rst $10
    ld [bc], a
    rst $28
    add l
    ld bc, $0bfa
    xor b
    nop
    db $f4
    nop
    cp d
    ld b, b
    ld d, l
    xor b
    xor [hl]
    ld d, b
    ld d, l
    jr z, jr_04a_68a4

    inc bc
    push de
    inc hl
    rst $38
    dec b
    ld a, h
    cp $8c
    ld a, [hl]
    ld b, b
    cp h
    add l
    ld bc, $83b4
    inc b
    inc [hl]
    rlca
    ld d, h
    jr nz, jr_04a_68a0

    ld d, b
    ld d, h
    jr nz, jr_04a_68a4

    db $10
    add e
    inc bc
    add d
    rlca
    ld b, l
    ld h, b
    xor d
    add b
    ld d, l
    nop
    xor d
    inc d
    and d
    adc l
    ld h, [hl]
    add e
    inc bc
    add b
    add hl, bc
    xor d
    nop
    inc d
    nop
    ld a, [bc]
    nop
    inc d
    nop
    jr z, jr_04a_6918

jr_04a_6918:
    add l
    ld [bc], a
    ldh [$09], a
    ld a, [hl+]
    db $fc
    ld c, l
    ld a, [$b43a]
    dec d
    sbc b
    xor d
    ld h, b
    add l
    nop
    add b
    add hl, bc
    ld a, e
    ld c, h
    ld a, a
    ld e, b
    ld [hl], l
    ld a, d
    ld a, [$3f85]
    ret nz

    add l
    nop
    ldh a, [$09]
    pop af
    ld l, $fe
    rra
    ld l, e
    sbc a
    db $f4
    rrca
    rst $18
    inc hl
    add a
    ld bc, $0f60
    rra
    ld [c], a
    push hl
    cp $30
    rst $38
    ldh [rIE], a
    xor [hl]
    pop de
    ld a, a
    pop hl
    ld a, $ff
    inc e
    rst $38
    add a
    ld [bc], a
    ld a, b
    adc c
    ld [bc], a
    ldh [rTIMA], a
    ld d, b
    ldh a, [$30]
    ldh a, [$a0]
    ld h, b
    rst $38
    ld a, [hl]
    ld b, $0f

jr_04a_6967:
    ld [$0708], sp
    inc b
    inc bc
    inc bc
    ld h, c
    add hl, bc
    ld bc, $60ff
    add b
    ld a, $70
    rrca
    ld c, $01
    ld bc, $2365
    ld bc, $0222
    ld c, b
    ld [bc], a
    inc bc
    add l
    adc a
    rlca
    ld bc, $0f04
    ld [$090f], sp
    ld b, $06
    db $ec
    inc l
    inc b
    inc bc
    ld bc, $0905
    dec bc
    ld b, e
    inc de
    rla
    ld b, e
    cpl
    scf
    ldh [rNR41], a
    rst $38
    rst $38
    rlca
    rlca
    ldh [rP1], a
    db $fc
    ldh [rIE], a
    ld hl, sp+$7f
    ld e, [hl]
    ld l, a
    ld e, a
    rst $38
    cpl
    rst $38
    xor a
    ld a, a
    ld l, [hl]
    ld l, a
    ld e, [hl]
    rst $18
    cp [hl]
    cp a
    ld a, [hl]
    cp [hl]
    ld a, l
    ld a, b
    ei
    ld a, h
    ei
    ld a, b
    ld b, h
    rst $30
    ld [hl], b
    db $10
    ld a, b
    rst $30
    db $fc
    ld a, e
    cp h
    ld a, e
    cp $bd
    sbc $bd
    rst $28
    ld e, [hl]
    rst $30
    rst $28
    dec de
    rra
    rrca
    ld b, h
    dec bc
    dec c
    inc bc
    ld b, $05
    inc bc
    ld [bc], a
    add e
    nop
    jr nc, jr_04a_6967

    nop
    ld [hl-], a
    ld l, a
    ld a, [bc]
    ld bc, $0007
    ld [$0c08], sp
    ld b, $87
    add a
    rst $20
    db $e3
    ld h, $ff
    rla
    db $db
    rst $20
    cp h
    ei
    ld c, $1d
    ld a, d
    rlca
    ei
    ld b, $f9
    ld b, $f1
    adc a

jr_04a_69fe:
    db $e3
    ld a, a
    sbc a
    ld a, a
    rrca
    rst $38
    inc de
    rst $38
    dec l
    di
    ld b, e
    ld d, d
    pop hl
    ld [bc], a
    db $ed
    di
    di
    ld [hl+], a

jr_04a_6a10:
    rst $38
    rlca
    cp a
    cp [hl]
    sbc a
    adc a
    sbc a
    rst $18
    rst $28
    rst $18
    ld b, e
    ld a, a
    rst $38
    rlca
    jr c, jr_04a_6a10

    sbc a
    ld a, a
    rst $08
    cp a
    di
    rst $08
    ld b, h
    ld hl, sp-$09
    inc d
    ei
    db $fd
    db $fc
    cp a
    ld a, a
    rst $38
    sbc a
    rst $28
    rst $18
    db $db
    rst $20
    cp a
    cp b
    cp a
    sbc a
    ld [hl], h
    inc sp
    ld h, c
    jr nz, jr_04a_69fe

    ret nz

    xor [hl]
    nop
    ld [hl], l
    ld c, $c0
    jr c, @+$3a

    and $06
    dec a
    ld b, e
    ld a, [hl-]
    dec b
    sbc l
    and d
    sbc d
    and l
    db $dd
    and d
    ld b, e
    rst $08
    ret nc

    inc de
    ld h, a
    ret z

    daa
    add sp, $11
    ld a, [c]
    ld [$06f9], sp
    db $fc
    inc bc
    ld a, a
    sub b
    adc a
    db $fc
    di
    rst $38
    db $fc
    rst $38
    cp $22
    rst $38
    ld [$f3fb], sp
    db $e3
    db $e3
    jp $83c3


    add e
    inc bc
    ld [hl+], a
    ld b, a
    inc c
    ld b, h
    adc l
    adc h
    pop af

jr_04a_6a7d:
    ld hl, sp-$0f
    jp hl


    add e
    ld c, e
    rla
    ld c, a
    rst $38
    rst $38
    inc hl
    cp $00
    ld a, a
    ld b, e
    cp $01
    inc bc
    rst $38
    ret nz

    ccf
    ld hl, sp-$5a
    nop
    ld hl, sp+$07
    ld a, a
    rst $38
    cp a
    rst $38
    ld b, b
    rst $38
    ccf
    rst $38
    adc l
    nop
    pop hl
    ldh [$2f], a
    ld [bc], a
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    pop af
    ldh a, [rIE]
    db $10
    rst $30
    jr jr_04a_6a7d

    ld a, h
    sbc e
    rlca
    di
    ld c, $f2
    rrca
    ei
    ld b, $fe
    ld bc, $00ff
    ld a, h
    add e
    inc a
    ld b, b
    adc a
    db $10
    rst $00
    ret z

    inc hl
    db $e4
    inc de
    db $f4
    sbc c
    ld [hl], d
    adc c
    ld a, d
    call $c4b8
    cp l
    ld b, l
    db $e4
    db $dd
    dec bc
    push hl
    ret c

    jp hl


    jp c, $b2c9

    jp $d3b4


    or h
    rst $10
    and b
    ld b, e
    add a
    ld l, b
    add hl, de
    inc de
    db $e4
    inc de
    db $f4
    dec de
    ldh a, [$09]
    ld a, [$7a89]
    ret


    cp d
    add hl, de
    ld a, [$f4fb]
    di
    db $e4
    rst $20
    add sp, -$11
    ldh a, [$78]
    rst $38
    add a
    add a
    and l
    ld bc, $0f5a
    dec b
    dec c
    inc de
    add hl, de
    ld h, $22
    ld c, [hl]
    ld b, d
    sbc h
    add h
    inc a
    inc b
    ld a, b
    ld [$08f8], sp
    ld b, e
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ldh [$39], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    cp h
    ld e, h
    ld e, [hl]
    cp d
    cp a
    ld b, l
    rst $00
    dec b
    ld h, a
    add d
    ccf
    ld b, d
    ld e, $23
    ei
    dec h
    db $f4
    dec hl
    ld [$b757], a
    ld c, e
    db $fc
    nop
    xor [hl]
    nop
    rst $18
    nop
    xor a
    nop
    rst $10
    nop
    rst $28
    nop
    cp $01
    xor $11
    db $e4
    dec bc
    ldh [rTAC], a
    db $f4
    rlca
    db $fd
    ld b, $ff
    add hl, de
    xor $30
    sbc $20
    ld b, e
    rst $38
    nop
    inc de
    rst $30
    ld [$07f9], sp
    ld hl, sp+$07
    pop af
    rrca
    xor [hl]
    ld d, [hl]

jr_04a_6b65:
    ld d, h
    xor h
    xor h
    ld e, h
    ld [hl], b
    or b
    ld b, b
    ret nz

    add b
    add b
    db $ec
    dec hl
    ldh [rNR44], a
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ldh [$a0], a
    or b
    ret nc

    ret nc

    or b
    or b
    ret nc

    ret nc

    ldh a, [$38]
    inc a
    add h
    ld [bc], a
    cp $02
    db $fc
    inc c
    ldh a, [rSVBK]
    sub b
    ldh a, [$b0]
    ldh a, [$98]
    add sp, -$78
    ld hl, sp-$38
    ld a, b
    ld b, h
    ret nc

    ld [hl], b
    inc c
    ldh a, [$60]
    ld h, b
    db $10
    jr jr_04a_6b65

    inc c
    ld [c], a
    ld [bc], a
    ld a, [c]
    jp nz, $fcfc

    sub c
    db $e3
    add a
    nop
    jr nz, jr_04a_6bb3

    nop
    ccf
    jr jr_04a_6bd2

    rrca

jr_04a_6bb3:
    inc e
    xor a
    ld bc, $054e
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    sub b
    nop
    call c, $0102
    ld [bc], a
    ld [bc], a
    ld b, e
    inc b
    dec b
    ld b, e
    dec bc
    dec c
    add a
    nop
    sub b
    rla
    ld a, a
    db $fc
    rra

jr_04a_6bd2:
    ld d, $9b
    rla
    rst $38
    adc e
    ld a, a
    ld l, e
    rra
    ld a, [de]
    dec de
    ld d, $37
    ld l, $6f
    ld e, [hl]
    ld l, [hl]
    ld e, l
    sbc h
    cp a
    sbc h
    cp e
    ld b, a
    ret c

    or a
    rrca
    ld a, h
    ld e, e
    ld l, h
    ld e, e
    cp [hl]
    xor l
    db $76
    dec l
    ei
    ld d, $fd
    ld a, e
    add [hl]
    add a
    inc bc
    ld [bc], a
    sub h
    rst $10

jr_04a_6bfd:
    dec bc
    nop
    rlca
    rra
    nop
    jr nz, jr_04a_6c27

    ldh a, [$58]
    ld e, l
    ld e, h
    call c, $c3ce
    ld bc, $02a4
    cp $ff

jr_04a_6c10:
    rst $38
    adc c
    ld bc, $e030
    inc hl
    ld a, h
    ei
    cp a
    ld a, h
    rst $28
    sbc a
    ld a, a
    ld h, a

jr_04a_6c1e:
    dec sp
    scf
    ld [hl], $39
    cpl
    ld l, $2f
    daa
    ld e, l

jr_04a_6c27:
    ld c, h
    ld e, b
    ld c, b
    jr nc, @+$32

    ld a, b
    jr c, jr_04a_6bfd

    ld b, $f5
    dec bc
    rst $28
    db $10
    ld [hl], a
    adc b
    ld l, a
    sub b
    ld [hl], a
    adc b
    ld b, e
    ccf
    ld b, b
    ld de, $209f
    sbc a
    and b
    ld b, a
    ret z

    ld hl, $18e6
    pop af
    adc [hl]
    ld a, h
    db $e3
    sbc a
    add e
    inc bc
    ld b, a
    ld b, [hl]
    add a
    ld bc, $0594
    add c
    ld c, c
    dec de
    ld b, e
    rlca
    ld d, a
    sub e
    ld bc, $07a2
    rst $18
    ccf
    rst $28
    rst $38
    db $10
    rst $38
    ld l, a
    rra

jr_04a_6c66:
    adc l
    inc bc
    inc hl
    rla
    inc b
    ld b, $08
    ld [$1011], sp
    ld hl, $e320
    ldh [rIE], a
    jr nz, jr_04a_6c66

    jr nc, jr_04a_6c10

    ld hl, sp+$37
    rrca
    rst $20
    inc e
    db $e4
    rra
    rst $30
    inc c
    add e
    ld bc, $0ae4
    ld hl, sp+$07
    ld hl, sp+$00
    ld a, $40
    rra
    jr nz, jr_04a_6c1e

    sub b
    ld c, a
    add h
    ld bc, $0371
    rst $30
    and b

jr_04a_6c97:
    db $d3
    or h
    ld b, l
    db $d3
    db $f4
    dec bc
    rst $10
    ldh [$e7], a
    add sp, -$59
    ret z

    adc a
    ret nc

    rst $08
    ret nc

    rst $18
    add b
    ld b, e
    rra
    and b
    dec b
    ld c, a
    sub b
    ld c, a
    ret nc

    ld l, a
    ret nz

    ld b, e
    daa
    add sp, $0f
    and a
    add sp, $67
    add sp, -$11
    ret nc

    rst $08
    sub b
    sbc a
    and b
    cp a
    ret nz

    ldh [rIE], a
    adc a
    adc a
    push bc
    nop
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld h, $32
    ld c, h
    ld b, h
    sbc h
    add h
    jr c, jr_04a_6cdd

    ld a, b
    adc e
    ld [bc], a
    ld b, c
    ld [bc], a
    ld b, b
    add b
    add b

jr_04a_6cdd:
    add e
    ld [bc], a
    ld c, h
    adc l
    ld bc, $0790
    rra
    ld c, a
    add e
    inc bc
    rla
    ld d, $17
    inc d
    adc c
    inc bc
    or $ff
    ld h, c
    ldh [$35], a
    ld b, b
    ret nz

    jr nz, jr_04a_6c97

    db $10
    sub b
    ld c, b
    ld c, b
    inc c
    ld b, h
    ld [hl+], a
    ld [hl+], a
    dec b
    ld hl, $101b
    ld [hl], a
    ld [hl], b
    adc a
    ld hl, sp+$67
    ld e, h
    inc sp
    cpl
    ld [de], a
    ld e, $2c
    inc a
    ld c, b
    ld a, b
    ld hl, $1330
    db $10
    inc bc
    jr nz, jr_04a_6d1f

    jr nz, @+$11

    ld b, c
    ld c, $47
    inc e
    ld c, a

jr_04a_6d1f:
    ld [hl], e
    ld [hl], e
    ld b, $07
    ld [$070f], sp
    ld b, $01
    ld bc, $28ec
    nop
    ld bc, $e0a3
    ld bc, $0703
    adc e
    adc a
    ldh [$37], a
    inc b
    inc b
    add hl, bc
    ld [$1013], sp
    inc bc
    db $10
    daa
    jr nz, jr_04a_6d48

    jr nz, jr_04a_6d92

    ld b, b
    adc a
    ret nz

    sbc a
    ret nz

jr_04a_6d48:
    cp a
    ret nz

    ld e, $00
    ccf
    inc bc
    ld a, a
    ld b, $f1
    ld a, [bc]
    ld sp, hl
    ld a, [de]
    db $eb
    inc l
    rst $30
    add hl, sp
    rst $38
    ld c, [hl]
    rst $38
    add c
    rst $38
    add $3f
    ld hl, sp-$71
    ld a, c
    rst $20
    db $dd
    inc sp
    rst $38
    dec c
    rst $38
    db $e3
    rst $18
    add hl, sp
    ccf
    rlca
    rlca
    sbc d
    push af
    db $10
    ldh [$08], a
    sbc b
    ld l, h
    ld h, h
    rra
    inc de
    ccf
    ld a, d
    sbc a
    sbc a
    ccf
    rra
    rst $28
    rst $28
    inc bc
    inc bc
    xor c
    rst $28
    nop
    ld b, b
    ld b, [hl]
    ld b, b
    ret nz

    dec h
    add b
    add hl, bc
    ldh [$60], a
    ld hl, sp+$18
    db $e4
    inc b

jr_04a_6d92:
    jr c, jr_04a_6dcc

    ldh [$e0], a
    ld b, [hl]
    ldh a, [rNR10]
    nop
    jr nc, jr_04a_6de1

    ldh [rNR41], a
    ldh [$37], a
    ldh a, [rNR10]
    ld hl, sp-$68
    db $fc
    xor h
    cp $5a
    rst $38
    or a

jr_04a_6daa:
    rst $38
    db $ed
    rst $38
    ld e, e
    cp a
    or a
    rst $38
    xor $df
    ld e, h
    cp e
    cp h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    and b
    ld l, [hl]
    ld b, b
    ld c, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld h, $20
    daa
    jr nz, @+$1d

    db $10
    dec de
    jr @+$1f

    inc d

jr_04a_6dcc:
    cpl
    ld [hl+], a
    cpl
    inc hl
    inc a
    inc h
    ld e, b
    ld e, b
    ldh a, [$f0]
    ldh [$60], a
    inc hl
    ldh [$03], a
    or b
    ret nc

    ldh a, [$90]
    inc hl
    ld d, b

jr_04a_6de1:
    ld bc, $2020
    push de
    nop
    pop bc
    ld bc, $0202
    inc hl
    inc b
    inc hl
    ld [$20e0], sp
    nop
    ld [$1010], sp
    add hl, bc
    db $10
    scf
    jr nz, @+$2d

    ld hl, $2337
    ld a, [hl+]
    inc hl
    ld d, h
    ld b, a
    ld l, h
    ld b, a
    ld a, b
    ld c, a
    ld hl, sp-$31
    ld [hl], c
    rst $18
    ld a, [c]
    ld e, a
    rst $30
    ld e, l

jr_04a_6e0c:
    rst $38
    ld hl, $00ff
    pop bc
    ld h, a
    inc c
    inc c
    nop
    inc de
    ld bc, $0710
    jr nz, jr_04a_6daa

    jr nz, jr_04a_6e0c

    jr nz, @+$01

    inc hl
    ld b, e
    db $fd
    inc d
    ld de, $cffc
    ld a, $3e
    ld [bc], a
    inc bc
    rlca
    ld c, $1b
    dec de
    daa
    ld hl, $232f
    cpl
    cpl
    inc de
    inc de
    adc l
    nop
    xor h
    ldh [$31], a
    ld bc, $0401
    ld b, $19

jr_04a_6e40:
    jr jr_04a_6ea9

    ld h, b
    xor e
    add b
    dec d
    nop
    dec bc

jr_04a_6e48:
    nop
    rlca
    ld bc, $030e
    inc e

jr_04a_6e4e:
    rlca
    jr c, @+$11

    ld [hl], b
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add e
    db $fd
    ld b, $fb
    inc c
    rst $30
    jr jr_04a_6e4e

    jr nc, jr_04a_6e40

    ld h, b
    cp a
    ld b, a
    ei
    adc h
    rst $30
    jr c, jr_04a_6e48

    ld h, e
    rst $38
    cp h
    db $fc
    add e
    nop
    ld hl, sp-$20
    dec hl
    ld hl, sp+$08
    cp h
    inc b
    ld e, h
    inc b
    xor [hl]
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    xor [hl]
    ld [bc], a
    sbc $c2
    rst $38
    inc hl
    ei
    rla
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld c, a
    rst $30
    ld d, a
    ld h, a
    rst $20
    sbc e
    sbc e
    push hl
    push hl
    and $c2
    and $e2
    db $f4
    db $f4
    db $fc
    db $f4
    ld hl, sp-$08
    inc hl
    and b
    ld bc, $4040

jr_04a_6ea3:
    ld h, c
    ldh [$33], a
    rlca
    rlca
    db $10

jr_04a_6ea9:
    jr jr_04a_6eeb

    ld h, b
    ld bc, $4780
    ld bc, $02fe
    db $fd
    dec c
    cp $1f
    ldh [$7f], a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $06ff
    ld a, [$f70f]
    jr c, jr_04a_6ea3

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    ei
    inc a
    rst $08
    ldh a, [$3f]
    ret nz

jr_04a_6ed3:
    rst $38
    inc bc
    db $fc
    scf
    rst $08
    ld a, b
    ld hl, sp-$4b
    nop
    xor h
    ld b, $a0
    ret nz

    ret nz

    jr nc, jr_04a_6ed3

    ldh [$f0], a
    ld [hl+], a
    ld hl, sp+$0e
    cp b
    db $fc
    ld a, h

jr_04a_6eeb:
    db $f4
    inc e
    cp [hl]
    cp [hl]
    cp d
    sbc a
    cp l
    rrca
    ld e, $07
    rlca
    ld bc, $0089
    rst $10
    ld [$7800], sp
    ld a, b
    inc b
    add h
    jr c, jr_04a_6f0a

    ldh a, [$30]
    and l
    nop
    sub $07
    ld hl, sp-$08

jr_04a_6f0a:
    inc b
    db $fc
    ld [$30f8], sp
    ldh a, [$83]
    nop
    add sp, -$3d
    adc [hl]
    inc bc
    jr c, @-$06

    inc b
    db $fc
    push bc
    nop
    di
    add l
    adc e
    dec b
    inc a
    call z, $f070
    add b
    add b
    db $ec
    dec hl
    dec b
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    xor c
    nop
    ld h, [hl]
    rra
    inc e
    ld e, $60
    ld h, b
    add e
    add b
    ld a, e
    ld a, h
    ccf
    ccf
    rra
    rra
    inc sp
    ccf
    ld b, c
    ld a, a
    jr nz, @+$41

    jr @+$19

    ld c, $0d
    rra
    rra
    ld hl, $183f
    rla
    inc c
    rrca
    inc bc
    inc bc
    adc e
    ld bc, $03be
    ld c, $1e
    ldh [$e2], a
    ld h, c
    ld bc, $003f
    ld b, e
    rst $38
    nop
    ld bc, $8f7f
    ld [hl+], a
    ld a, [$e612]
    rst $38
    ldh a, [$fb]
    db $fc
    ld a, a
    db $fc
    rst $28
    xor $bf
    or d
    rst $38
    pop hl
    rst $38
    add [hl]
    ld a, a
    ld hl, sp-$71
    ld a, c
    ld h, e
    rrca
    ld c, $0e
    inc sp
    ld sp, $c1cf
    ld a, $02
    ld a, h
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$18
    ld b, e
    ld hl, sp+$08
    dec bc
    db $fc
    add h
    ld a, h
    ld h, h
    ld a, [hl]
    sub d
    cp $0e
    ld hl, sp+$08
    ldh a, [rNR10]
    adc e
    ld bc, $6904
    rlca
    ld b, b
    ld h, b
    or b
    sub b
    sbc c
    adc c
    ld e, h
    ld e, [hl]
    add a
    inc bc
    ld [de], a
    db $10
    ld a, a
    ld a, a
    ld e, e
    ld [hl], a
    dec a
    dec sp
    inc d
    rra
    dec bc
    rlca
    dec c
    rrca
    inc de
    rra
    dec c
    dec bc
    ld b, $84
    nop
    xor e
    adc l

Jump_04a_6fc3:
    rst $28
    rlca
    rst $28
    reti


    scf
    dec a
    dec bc
    rrca
    rlca
    rlca
    dec h
    ld bc, $018f
    cp d
    ld bc, $0202
    add l
    ld bc, $0064
    inc c
    ld [hl+], a
    ld [$1b0f], sp
    db $10
    dec d
    db $10
    dec de
    ld de, $2135
    ld a, $23
    db $fc
    rst $20
    ld a, c
    rst $28
    ld a, [$864f]
    ld bc, $d188
    nop
    ld b, [hl]
    ldh [$2a], a
    ld b, $1f
    jr jr_04a_7024

    jr nz, jr_04a_7040

    ld b, b
    adc d
    add b
    dec b
    nop
    rlca
    nop
    rrca
    inc bc
    ld e, $07
    jr c, jr_04a_7017

    ld [hl], e
    dec e
    ld [c], a
    ccf
    call z, $9877
    rst $28
    or e
    db $dd
    ld [hl+], a
    rst $38
    ld c, l
    rst $30
    sbc d

jr_04a_7017:
    cp $34
    db $fc
    ld e, b
    ld hl, sp-$60
    ldh a, [$e0]
    ld h, b
    add e
    ld bc, $aafc

jr_04a_7024:
    nop
    cp l
    ldh [rNR43], a
    rlca
    jr c, jr_04a_7063

    ret nz

    ret nz

    jr nc, jr_04a_702f

jr_04a_702f:
    di
    nop
    rst $38
    inc bc
    db $fc
    rrca
    pop af
    rra
    and $7b
    call nz, $38ff
    rst $18
    ld hl, $46ff

jr_04a_7040:
    ei
    adc h
    rst $38
    inc de
    db $fd
    ld h, [hl]
    cp [hl]
    ret z

    ld hl, sp+$30
    ldh a, [$d9]

jr_04a_704c:
    inc bc
    inc bc
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    add c
    add c
    ld e, $06
    ld a, b
    jr jr_04a_704c

    inc a
    add e
    and a
    nop
    ld e, b
    and e
    inc bc
    daa
    rlca
    ld hl, sp+$70

jr_04a_7063:
    ldh a, [$88]
    ld hl, sp+$30
    ret nc

    ld h, b
    xor h
    nop
    xor e
    rst $38
    ld h, [hl]
    ld [hl+], a
    ld bc, $0000
    ld [hl+], a
    ld [bc], a
    nop
    nop
    inc h
    inc b
    inc c
    nop
    ld [$0908], sp
    add hl, bc
    ld [$080a], sp
    ld [$000a], sp
    ld [de], a
    rla
    ld b, a
    db $10
    rra
    ld a, [bc]
    ld hl, $233d
    inc a
    ld [hl+], a
    ld a, $22
    ld e, $42
    ld e, [hl]
    ld b, d
    ld b, e
    ld c, a
    ld b, c
    inc bc
    inc bc
    ld b, h
    ld b, b
    ld b, e
    dec h
    ld b, b
    ld bc, $4000
    and h
    or e
    ld c, $20
    db $10
    stop
    db $10
    ld [$0108], sp
    ld [$0402], sp
    ld bc, $0102
    ld bc, $e079
    dec h
    jr @+$7a

    inc b
    add h
    rlca
    inc bc
    inc c
    ld [bc], a
    db $10
    inc c
    nop
    stop
    jr nz, jr_04a_70c6

jr_04a_70c6:
    ld b, c
    nop
    add [hl]
    add b
    ld [$1102], sp
    nop
    jr nz, jr_04a_70d0

jr_04a_70d0:
    jr nz, jr_04a_70d3

    ld b, b

jr_04a_70d3:
    inc b
    ld b, d
    nop
    add b
    add b
    nop
    cp a
    inc a
    jp Jump_04a_6fc3


    dec b
    add b
    add b
    ldh [$30], a
    rrca
    rst $38
    ld [hl], c
    inc de
    ld b, b
    nop
    and b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    add b
    ld a, [hl+]
    ld b, b
    dec d
    jr nz, @+$20

    jr jr_04a_70fb

    inc b
    inc bc
    inc bc

jr_04a_70fb:
    ld [hl], e
    ldh [rNR42], a
    ld hl, sp-$07

Call_04a_7100:
    ld b, $07
    ld [bc], a
    ld c, $05
    inc [hl]
    ld a, [bc]
    ret z

    dec d
    jr nc, jr_04a_710d

    ret nz

    dec b

jr_04a_710d:
    nop
    ld [$0203], sp
    inc e
    ld bc, $02e0
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    jp $3c3c


    xor [hl]
    rst $28
    ld bc, $f807
    call $04b2
    ld bc, $0e06
    db $10
    jr nc, @+$25

    ld b, b
    dec c
    jr nc, jr_04a_7162

    ld [$0408], sp
    inc b
    ld d, c
    inc bc
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld b, h
    rst $38
    nop
    inc b
    ret nz

    ccf
    jr c, jr_04a_714d

    rlca
    ld l, e
    ldh [$28], a
    jr c, jr_04a_71c4

    add h

jr_04a_714d:
    add h
    inc b
    ld [bc], a
    ld c, $01
    ld e, a
    ld bc, $029e
    ld a, h
    inc b
    cp h
    inc b
    ld a, b
    ld [$c838], sp
    sub b
    ld sp, $1171

jr_04a_7162:
    pop hl
    ld hl, $23e1
    ret nz

    ld b, h
    add h
    add h
    inc bc
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $00c8
    add hl, bc
    ld b, $ff
    rst $38
    ld bc, $0403
    ld b, $10
    call nz, $0cb8
    inc e
    inc e
    ld h, b
    ld [hl], b
    add b
    add c
    nop
    ld bc, $1201
    ld bc, $0022
    ld b, e
    ld b, c
    nop
    ld a, [bc]
    add c
    ld [$5581], sp
    ld [bc], a
    xor b
    add d
    or l
    ld h, d
    rst $28
    rra
    ld c, b
    rst $38
    nop
    ld [bc], a
    add b
    ccf
    ld a, a
    adc e
    ld bc, $861e
    nop
    ld a, [bc]
    rlca
    inc c
    inc d
    inc d
    inc b
    jr nz, jr_04a_71f1

    ld b, b
    nop
    ld h, $80
    ld h, c
    inc b
    ld a, [de]
    add b
    dec a
    jr nc, jr_04a_71fa

    jp $0501


    ld de, $ffc0
    ld a, a
    ld a, c

jr_04a_71c4:
    ld a, a
    ld h, c
    ld a, a
    ccf
    ld a, a
    rst $00
    add b
    ld h, e
    ld b, b

jr_04a_71cd:
    sub e
    adc h
    rrca
    add b
    rlca
    ret


    or d
    dec c
    ld h, b
    ld [hl], b
    sub b
    add sp, $08
    xor b
    ld c, b
    add h
    inc h
    inc b
    inc h
    inc bc
    ld [hl+], a
    ld [bc], a
    ld b, h
    ld [de], a
    inc bc
    rlca
    ld b, c
    ld [de], a
    add a
    inc h
    ld d, a
    jr c, jr_04a_71cd

    ldh [rDMA], a
    rst $38

jr_04a_71f1:
    nop
    ld [bc], a
    rlca
    ld hl, sp+$78
    xor l
    nop
    ld d, [hl]
    inc hl

jr_04a_71fa:
    add b
    rlca
    ret nz

    ld b, b
    ld hl, sp+$38
    or $06
    ld h, c
    ld bc, $00a5
    cp [hl]
    ld a, [bc]
    ld [hl-], a
    jr c, @+$7b

    ld a, h
    ld e, a
    ld e, h
    rst $08
    ld e, h
    ld l, a
    ld a, b
    cp a
    add e
    or c
    ld a, [bc]
    inc b
    rra
    ld hl, sp-$01
    jr nc, jr_04a_725b

    and b
    cp a
    and b
    rst $38
    ld b, b
    ld c, c
    rst $38
    nop
    jp $3e01


    ld [bc], a
    dec hl
    nop
    rla
    add h
    add e
    nop
    cpl
    add h
    ld bc, $023b
    ld e, a
    nop
    cp a
    and [hl]
    ld bc, $0db3
    db $fd
    ld [bc], a
    db $fd
    ld b, $f5
    ld a, [bc]
    db $fc
    ld [de], a
    db $fc
    ld sp, $d1d8
    db $10
    db $10
    and e
    nop
    ld c, d
    ld [bc], a
    ld [bc], a
    ld b, $00
    sub h
    nop
    ld d, a
    add e
    ld sp, hl
    nop
    ld h, b
    ld b, e
    jr nz, @-$1e

    ld b, a
    db $10

jr_04a_725b:
    ldh a, [$58]
    ld [$01f8], sp
    ldh a, [rNR10]
    res 3, e
    ld bc, $20e0
    ld b, e
    ret nz

    ld b, b
    rra
    ldh [rNR41], a
    ldh [$a0], a
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld a, h
    add h
    cp d
    ld b, d
    ld sp, $0141
    ld hl, $1101
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    add [hl]
    inc b
    add h
    jr jr_04a_729d

    jr nz, jr_04a_72a7

    ret nz

    ret nz

    rla
    db $10
    ld b, h
    ccf
    jr nz, jr_04a_728f

jr_04a_728f:
    ld hl, $7e47
    ld b, d
    jr jr_04a_72a4

    rrca
    jr nc, jr_04a_72d1

    ld b, c
    ld d, d
    inc b
    and d
    nop

jr_04a_729d:
    inc h
    nop
    ld b, h
    dec de
    add h
    ld a, e
    add a

jr_04a_72a4:
    rst $38
    inc e
    rst $18

jr_04a_72a7:
    inc hl
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    add [hl]
    ld [bc], a
    rra
    inc de
    ldh [$f0], a
    adc b
    ld e, b
    nop
    ld b, h
    inc b
    inc h
    inc c
    ld [hl+], a
    ld a, [bc]
    ld d, $de
    ld a, [hl-]
    cp $c2
    rst $38
    inc b
    cp $f8
    ld c, e
    rst $38
    nop
    inc hl
    ld [$1043], sp
    ld de, $1201
    db $10
    ld b, l

jr_04a_72d1:
    db $10
    ld [de], a
    rrca
    nop
    ld b, e
    nop
    adc h
    nop
    db $10
    ld [bc], a
    ld hl, $2000
    nop
    ld b, b
    ld bc, $0440
    add d
    add e
    nop
    sub b
    ld [bc], a
    adc a
    nop
    rst $38
    adc h
    nop
    xor l
    inc c
    jr jr_04a_7309

    ld a, $26
    dec a
    ld hl, $1e10
    rrca
    jr jr_04a_7301

    inc c
    inc bc

Call_04a_72fc:
    add [hl]
    ld [bc], a
    sbc l
    nop
    ld d, b

jr_04a_7301:
    add e
    nop
    push bc
    ld [bc], a
    nop
    xor e
    nop
    adc c

jr_04a_7309:
    ld bc, $0d60
    sub c
    ld sp, $1272
    ldh [rNR43], a
    ldh [rNR51], a
    push bc
    ld b, l
    add a
    add l
    ld bc, $2207
    inc bc
    nop
    inc bc
    and a
    ld bc, $61d8
    inc bc
    ccf
    ccf
    pop bc
    pop bc
    adc a
    ld bc, $0c8a
    ret nz

    pop bc
    ld a, a
    ccf
    push bc
    ld [hl+], a
    cp [hl]
    ld b, c
    cp $c1
    rra
    ccf
    rrca
    add [hl]
    ld [bc], a
    ld a, a
    adc a
    nop
    xor l
    rrca

jr_04a_733f:
    rlca
    rlca
    db $10
    jr jr_04a_7344

jr_04a_7344:
    jr nz, jr_04a_7386

    ld b, b
    add b
    add b
    ret nz

    ret nz

    nop
    ret nz

    jr nc, jr_04a_737f

    ld h, c
    ld a, [bc]
    xor $f0
    ld a, [hl]
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    ld [hl], b
    ld a, a
    ret nz

    ld b, e
    rst $38
    add b
    nop
    ld a, a
    add a
    ld [bc], a
    nop
    inc b
    db $fc
    inc a
    and $c2
    ld e, a
    ld b, e
    ld hl, $04df
    ld [hl+], a
    rst $28
    inc e
    rst $38
    ldh a, [rSCX]
    rst $38
    nop
    nop
    rst $38
    adc h
    rst $08
    ld a, [bc]
    db $10
    jr nc, jr_04a_738e

    ld d, b

jr_04a_737f:
    sub b
    sub b
    jr c, jr_04a_739b

    ld a, $06
    rrca

jr_04a_7386:
    add h
    ld [bc], a
    ld b, e
    ld [$3831], sp
    ld e, d
    ld e, h

jr_04a_738e:
    ld a, l
    ld a, h
    rst $28
    inc e
    ld a, a
    jp $0cf3


    ret nz

    rst $18
    and b
    rst $38
    sub d

jr_04a_739b:
    rst $38
    cp h
    rst $38
    ldh a, [$7f]
    ldh [rIE], a
    add b
    ld c, e
    rst $38
    nop
    dec bc
    xor a
    nop
    ld h, b
    ld h, b
    jr @-$66

    inc b
    add h
    rlca
    dec bc
    nop
    ld [$0084], sp
    ld a, h
    nop
    jr nz, jr_04a_733f

    ld [bc], a
    xor [hl]
    ld d, $c0
    ld a, $3f
    nop
    ld bc, $3e02
    dec c
    call z, $1012
    dec b
    ld h, b
    ld [bc], a
    add b
    dec b
    nop
    ld a, [bc]
    nop
    inc d
    inc bc
    ld bc, $88fc
    nop
    cp $00
    ld bc, $018b
    ld b, $0b
    jr jr_04a_7416

    ld b, h
    call nz, $0202
    ld b, $02
    ld c, $02
    ld e, [hl]
    ld [bc], a
    rst $38
    db $ec
    add hl, sp
    inc de
    inc bc
    inc bc
    inc b
    inc c
    inc de
    ld de, $2606
    dec l
    jr z, jr_04a_7475

    ld b, b
    ld a, a
    ld b, b
    rst $38
    adc a
    ldh a, [$b0]
    ret nz

    ret nz

    ld h, c
    dec b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $ec01
    ld hl, $0113
    ld bc, $0607
    dec c
    ld [$101a], sp
    dec h
    jr nz, jr_04a_7440

jr_04a_7416:
    jr nz, jr_04a_745d

    ld b, b
    ld b, d
    ld b, b
    ld a, h
    ld a, b
    rlca
    rlca
    add l
    sbc c
    inc h
    ld bc, $80c2
    adc e
    push bc
    dec d
    ld e, $3e
    db $eb
    ret nz

    rla
    nop
    ccf
    ccf
    rst $18
    ret nz

    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ccf
    ld h, e
    db $10

jr_04a_7440:
    ldh [$f0], a
    ld [$020c], sp
    inc bc
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$42

    jr nc, jr_04a_746e

    inc e
    jr nz, @+$21

    ld b, e
    db $10
    rrca
    nop
    inc c
    call $3b00
    ldh [rNR42], a
    rlca
    rlca

jr_04a_745d:
    ccf
    jr c, @+$01

    ret nz

    rst $38
    ld bc, $025e
    xor l
    nop
    ld d, l
    dec b
    xor a
    ld b, $5f
    inc b
    xor a

jr_04a_746e:
    ld [$087f], sp
    ccf
    ld [$80df], sp

jr_04a_7475:
    rst $38
    ret nz

    cp a
    pop hl
    ccf
    di
    ld e, a
    rst $10
    ld b, e
    ld c, a
    rst $08
    rla
    daa
    rst $20
    sbc a
    rst $38
    add a
    rst $38
    ld b, b
    ld [hl], e
    jr nz, jr_04a_74c3

    jr jr_04a_74ac

    ld a, [de]
    ld a, [de]
    rst $08
    rst $08
    db $f4
    inc [hl]
    db $fc
    inc c
    db $fc
    db $e4
    db $fc
    inc d
    ld b, l
    ld sp, hl
    ld [$f003], sp
    ldh a, [rNR10]
    db $10
    daa
    jr nz, @+$0d

    db $10
    db $10
    sub b
    sub b
    ld c, d
    ld c, b
    ld h, l
    inc h

jr_04a_74ac:
    ld h, e
    inc hl
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    rlca
    ld hl, sp-$78
    ld a, a
    ld b, a
    jr c, jr_04a_74ea

    rrca
    rrca
    add h
    nop
    ld [hl], $0c
    rlca
    sbc b
    sbc b

jr_04a_74c3:
    rst $20
    ld h, e
    sbc a
    adc h
    ld a, a
    jr nc, @+$01

    ld b, b
    rst $38
    add b
    ld c, h
    rst $38
    nop
    nop
    rra
    inc hl
    rst $38
    inc bc
    rst $30
    rst $30
    di
    di
    inc hl
    pop af
    rrca
    ld sp, hl
    ld sp, hl
    cp $ff
    ldh [rIE], a
    ld bc, $06ff
    ld a, [hl]
    inc e
    db $fc
    push hl
    push hl

jr_04a_74ea:
    rra
    ld a, $61
    ld [bc], a
    ld c, $00
    ld b, $a3
    cp a
    ld [bc], a
    nop
    ret nz

    nop
    and e
    nop
    sbc e
    dec d
    ld bc, $1800
    nop
    add hl, sp
    nop
    ld [hl-], a
    nop
    ld bc, $0a00
    nop
    dec d
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    inc bc
    db $fc
    db $fc
    adc c
    nop
    ld l, a
    ld bc, $fefe
    ld h, c
    ld bc, $fffe
    add e
    nop
    cp [hl]
    add hl, bc
    inc c
    ld c, $f1
    pop hl
    db $fc
    inc e
    ei
    dec bc
    db $fc
    inc b
    ld b, e
    cp $02
    ld c, c
    rst $38
    ld bc, $fe00
    ld b, h
    cp $e2
    ld b, e
    call nz, $15fc
    adc h
    db $fc
    inc c
    db $fc
    inc e
    db $fc
    inc a
    db $f4
    ld a, h
    db $f4
    db $fc
    db $e4
    db $fc
    call nz, $84fc
    rst $38
    rlca
    rst $38
    inc c
    ld a, a
    inc sp
    ld b, e
    rst $38
    ld b, b
    dec de
    db $fd
    add b
    ld a, [$fc80]
    ld h, b

jr_04a_7558:
    ld e, [hl]
    jr @-$3f

    inc b
    ld e, e
    ld a, [bc]
    cp c
    add hl, bc
    ld e, b
    ld [$10b0], sp
    ld [hl], b
    db $10
    and b
    jr nz, jr_04a_75c9

    jr nz, @-$3e

    ld b, b
    add b
    add b
    adc c
    nop
    ld [hl], d
    rlca
    dec de
    jr jr_04a_7558

    db $e3
    inc c
    inc c
    ldh a, [$f0]
    xor c
    db $fd
    rrca
    ld h, b
    ld h, b
    db $10
    db $10
    ret z

    ret z

    inc h
    inc h
    ld [de], a
    ld [de], a
    ld [$0509], sp
    dec b
    inc b
    inc b
    inc hl
    ld [bc], a
    add e

Jump_04a_7590:
    nop
    sub [hl]
    sub e
    nop
    ld d, h
    ldh [$31], a
    inc a
    inc a
    rst $38
    jp $01ff


    rst $38
    add b
    push af
    ld h, b
    cp d
    db $10
    ld e, l
    ld [$00ae], sp
    ld d, a
    ld [bc], a
    dec bc
    ld bc, $0115
    adc e
    nop
    push bc
    nop
    rst $28
    add b
    ld [hl], a
    ld b, b
    scf
    jr nz, jr_04a_75f7

    jr nz, jr_04a_75d9

    db $10
    rra
    jr jr_04a_75fd

    inc h
    ccf
    inc l
    ld a, e
    ld c, d
    di
    sub d
    pop hl
    ld hl, $41c1

jr_04a_75c9:
    cp a
    nop
    ld d, h
    and h
    rst $20
    inc h
    ld b, b
    ld bc, $2000
    inc hl
    and b
    ld bc, $9080
    daa

jr_04a_75d9:
    ld d, b
    ld b, l
    ld [hl], b
    ld d, b
    ld bc, $90f0
    ld b, h
    ldh [$a0], a
    inc c
    ld h, b
    ldh [rNR41], a
    ld [hl], b
    db $10
    or b
    db $10
    ld a, b
    ld [$08b8], sp
    ld a, b
    ld [$f843], sp
    adc b
    ld bc, $84fc

jr_04a_75f7:
    ld c, b
    db $fc
    ld b, h
    nop
    inc b
    ld b, l

jr_04a_75fd:
    ld hl, sp+$08
    ld b, l
    ldh a, [rNR10]
    ld b, e
    ldh [$a0], a
    ld bc, $4040
    push bc
    nop
    ld e, c

jr_04a_760b:
    ld c, c
    ld [bc], a
    inc bc
    inc hl
    ld bc, $0088
    ldh a, [rNR34]
    nop
    ccf
    nop
    cp a
    add b
    rst $38
    add b
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    cp a
    sbc a
    sbc a
    rra
    sbc a
    ld c, a
    rst $08
    ccf
    rst $38
    rra
    rst $38
    add e
    rst $38
    add b
    di
    ld h, b
    ld a, b
    rra
    rra
    add a
    ld bc, $0318
    ld hl, sp+$18
    ld sp, hl
    ld [$f143], sp
    db $10
    inc bc
    ldh [$e0], a
    jr nz, @+$22

    adc l
    ld bc, $052c
    ld l, l
    jr z, jr_04a_76b0

    ld h, $e1
    ld hl, $ff23
    inc bc
    db $fd
    db $fd
    db $fc
    db $fd
    inc hl
    ld hl, sp-$79
    ld bc, $037a
    rlca
    rst $38
    db $fd
    push af
    add a
    ld bc, $8b88
    ld bc, $00d0
    rst $38
    ld b, h
    rst $38
    pop af
    inc b
    ld a, [c]
    cp $e2
    cp $e4
    add h
    ld bc, $83e3
    ld bc, $89ea
    nop
    ld [hl-], a
    dec b
    ld a, $3c
    dec [hl]
    jr nz, jr_04a_7698

    db $10
    and e
    inc bc
    inc b
    xor c
    ld [bc], a
    jr jr_04a_760b

    add a
    rra
    rlca
    rlca
    rra
    jr @+$01

    ldh [$af], a
    ld bc, $0256
    db $fd
    jr nc, @-$1f

    ld d, l
    rst $28
    adc d

jr_04a_7698:
    rst $30
    inc b
    rst $38
    inc bc
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    rst $38
    db $fc
    ccf
    rst $38
    ld hl, sp+$18
    pop af
    db $10
    ld b, e
    db $e3
    jr nz, jr_04a_76ad

    ret nz

jr_04a_76ad:
    ret nz

    daa
    ld b, b

jr_04a_76b0:
    inc hl
    jr nz, jr_04a_76b6

    or b
    and b
    ld e, d

jr_04a_76b6:
    ld d, b
    add l
    inc bc
    ld l, d
    ld c, b
    rst $38
    nop
    add e
    inc bc
    add b
    ld [bc], a

jr_04a_76c1:
    rrca
    rst $38
    rst $38
    adc h
    ld bc, $02a0
    ld bc, $fefe
    ld b, h
    rst $38
    ld bc, $0304

jr_04a_76d0:
    rst $38
    rlca
    ei
    rra
    ld b, l
    pop af
    rst $38
    ld bc, $08b8
    add e
    ld [bc], a
    ldh [rSC], a
    ld h, b
    jr nz, jr_04a_76c1

    add [hl]
    ld [bc], a
    rla
    adc l
    inc bc
    ret nz

    ld h, c
    adc c
    rst $38
    dec bc
    ccf
    jr nc, @+$81

    ld a, h
    cp a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $18
    adc c
    ld bc, $8406
    ld bc, $0642
    ld [$87f7], sp
    ld a, b
    ld h, b
    rra
    rra
    adc e
    ld [bc], a
    xor h
    ld [bc], a
    ld a, a
    ld a, a
    add b
    and h
    ld bc, $61b9
    inc bc
    ld bc, $0403
    inc c
    add l
    ld bc, $092a
    ld b, e
    ld b, b
    ld b, a
    ld b, e
    sbc h
    adc h
    or b
    sub b
    ldh [$e0], a
    ld l, c
    jp Jump_04a_5b03


    dec bc
    jr jr_04a_7742

    inc c
    inc b
    ld a, [hl]
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld a, e
    adc a
    adc c
    and e
    ld [bc], a
    jp c, $ff8b

    inc hl
    add b
    add hl, bc
    ld b, b
    ld b, b
    or b
    jr nc, jr_04a_76d0

    adc a

jr_04a_7742:
    jr nz, @+$62

    rrca
    rra
    add a
    inc bc
    ret z

    ld bc, $0203
    ld b, e
    ld b, $04
    inc bc
    rlca
    dec b
    ld b, $06
    ld h, c
    inc bc
    ld a, h
    ld a, h
    add e
    add e
    ld h, c
    rlca
    ld a, h

jr_04a_775d:
    jr c, jr_04a_775d

    and $7f
    jr nz, @+$21

    jr nz, @+$01

    db $ec
    inc sp
    dec bc
    ld e, $1e
    daa
    ccf
    ld l, $3f
    inc a
    ccf
    jr jr_04a_7791

    db $10
    rra
    ld b, e
    ld [$050f], sp
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $4801
    inc bc
    ld [bc], a
    ld bc, $0503
    ld b, h
    rlca
    inc b
    push bc
    adc h
    ld h, h
    ld [hl+], a
    ld bc, $0101
    ld bc, $c471

jr_04a_7791:
    or d
    ld [$0107], sp
    rlca
    rrca
    dec bc
    rlca
    dec bc
    rra
    inc de
    ld b, e
    rra
    rla
    nop
    rla
    ld [hl+], a
    rra
    ldh [rNR44], a
    ld c, $0f
    ld [$0c0f], sp
    rra
    ld d, $17
    inc a
    ccf
    jr z, jr_04a_77f0

    ld h, c
    ld e, a
    ld h, h
    ld e, a
    ld h, e
    ld e, a
    ld b, c
    ld a, a
    jr nz, jr_04a_77fa

    ldh [rIE], a
    jr nz, @+$01

    rlca
    ld hl, sp+$5f
    ldh [$3f], a
    ret nz

    ldh [$80], a
    ret nz

    nop
    ld b, e
    add b
    nop
    dec b
    add c
    nop
    add e
    nop
    rst $00
    nop
    ld b, [hl]
    rst $38
    nop
    inc d
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp-$39
    rst $38
    jr c, @+$81

    cp $ff
    ld e, b
    cp a
    ld sp, hl
    rst $38
    db $fc
    cp $6b
    inc bc
    jr nc, jr_04a_7820

jr_04a_77f0:
    ldh [$f0], a
    inc hl
    ldh [rSB], a
    ret nz

    ldh [rNR51], a
    ret nz

    inc d

jr_04a_77fa:
    add b
    ret nz

    add b
    add b
    add a
    sbc a
    rst $38
    ldh [$be], a
    pop bc
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld bc, $05ff
    db $fd
    rlca
    rst $38
    inc bc
    ld b, h
    rst $38
    nop
    inc bc
    ld hl, sp-$01
    db $10
    rra
    and l
    adc c
    dec bc
    ret nz

    ccf
    ld hl, sp+$07
    db $fc
    inc bc

jr_04a_7820:
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld d, d
    rst $38
    nop
    ld b, l
    ld bc, $08ff
    nop
    ld [hl], b
    rst $38
    rra
    rst $38
    ld h, b
    ldh [$80], a
    add b
    ld h, e
    sub a
    nop
    ld l, d
    ld [hl+], a
    rrca
    ld d, $1f
    ld e, $1f
    rst $18
    sbc $3d
    cp $bf
    ld a, h
    ccf
    db $fc
    dec e
    cp $de
    rst $38
    adc a
    rst $38
    add e
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld b, l
    ld hl, sp+$07
    ld bc, $8f70
    and h
    rst $28
    ld [bc], a
    db $fd
    rlca
    ld hl, sp-$7c
    nop
    jp $7f00


    add e
    nop
    ret


    ld bc, $3fc1
    ld b, [hl]
    ldh [$1f], a
    ld [$c03f], sp
    ld a, a
    or b
    rst $08
    ldh a, [$8f]
    ld h, b
    sbc a
    and a
    db $f4
    dec bc
    ret nz

    rst $38
    jr c, jr_04a_78be

    dec de
    rra
    dec [hl]
    dec sp
    ccf
    ccf
    ld e, $1f
    ld l, c
    rrca
    ld b, $0f
    inc e
    ld a, $7e
    ld a, [$f6ea]
    call nc, $acec
    call nc, $a858
    cp b
    ld c, b
    ld b, l
    ldh a, [rNR10]
    ld de, $08f8
    cp $06
    rst $38
    ld bc, $39ff
    ld b, a
    push bc
    and e
    db $e3
    ld [hl+], a
    ld [c], a
    db $76
    or $3c
    db $fc
    ld b, e
    db $10
    ldh a, [$08]
    ld [$3ef8], sp
    rst $38
    db $d3
    rst $38
    inc sp
    rst $38
    ccf
    ld b, e
    rst $38

jr_04a_78be:
    ld a, $17
    cp $1c
    cp $0c
    db $fc
    jr c, @-$02

    call z, $1cfc
    db $fc
    inc a
    db $fc
    inc e
    cp $02
    cp $06
    cp $0e

jr_04a_78d4:
    cp $1e
    cp $0e
    ld b, h
    cp $02
    ld b, e
    rlca
    rst $38
    ld [bc], a
    add hl, bc
    ld sp, hl
    jr nc, jr_04a_7905

    ld hl, sp+$03
    ldh a, [$f0]
    ret nz

    ldh [$8f], a
    ld bc, $0752
    ld [bc], a
    ld [bc], a
    ld b, $04
    dec c

jr_04a_78f2:
    ld [$101f], sp
    ld b, e
    ccf
    jr nz, jr_04a_793c

    ld a, a
    ld b, b
    ld b, [hl]
    rst $38
    add b
    ld c, $04
    rst $38
    jr jr_04a_78f2

    jr z, jr_04a_78d4

jr_04a_7905:
    ld c, b
    adc l
    adc d
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld b, $05
    adc d
    nop
    ld d, [hl]
    nop
    ld bc, $21ec
    ld [bc], a
    ret nz

    pop hl
    rst $38
    xor [hl]
    nop
    reti


    rrca
    inc bc
    inc bc
    dec c
    dec c
    ld [hl-], a
    ld [hl-], a
    ld b, h
    ld b, h
    adc b
    adc b
    ld [$9008], sp
    db $10
    ld d, b
    db $10
    and e
    ret nc

    dec bc
    ret nz

    ld b, b
    sbc $5e
    cp $62
    ld a, h
    add h
    db $fc
    inc b
    ld hl, sp+$08

jr_04a_793c:
    push bc
    ld bc, $05f7
    ldh [rNR41], a
    ld h, b
    and b
    and b
    ld h, b
    ld b, l
    ld b, b
    ret nz

    dec h
    add b
    rst $00
    nop
    ld hl, sp+$07
    ld h, b
    ldh [$60], a
    ld h, b
    jr nc, @+$72

    jr nc, jr_04a_798f

    ld [hl+], a
    jr @+$04

    inc e
    ld [$291c], sp
    inc c
    dec bc
    jr jr_04a_797e

    jr jr_04a_799c

    jr nc, jr_04a_79de

    ldh [$f0], a
    ret nz

    ldh [rP1], a
    add b
    call z, Call_04a_7100
    nop
    ld bc, $0285
    ld l, h
    rlca
    ld bc, $0703
    inc b
    ld b, $01
    dec c
    ld a, [bc]
    ld b, e

jr_04a_797e:
    ld [$0f0f], sp
    add hl, bc
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0703
    rlca
    dec bc
    rrca

jr_04a_798f:
    rla
    rra
    ld b, e
    ld l, $3f
    inc e
    ld e, [hl]
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ccf

jr_04a_799c:
    ld a, h
    cpl
    jr c, @+$17

    ld a, [hl-]
    ld [hl-], a
    dec a
    ld e, b
    ld e, a
    or b
    rst $38
    ret nz

    cp a
    adc b
    ld a, a
    add b
    ld a, a
    ld c, $ff
    rra
    rst $38
    ld b, $85
    ld bc, $10af
    cp a
    ldh [$5f], a
    ld d, l
    ld [$f0ab], a
    ld [hl], l
    ldh a, [$78]
    ldh a, [$f9]
    ldh a, [$e2]
    ldh a, [$85]
    ld h, b
    ld h, [hl]
    inc hl
    jr nz, jr_04a_79cc

    ld h, b

jr_04a_79cc:
    ld b, b
    add e
    nop
    push af
    xor h
    ld [bc], a
    ld l, e
    inc de
    jr c, jr_04a_7a52

    db $fd
    inc bc
    or $09
    xor b
    ld d, a
    ld b, b
    cp a

jr_04a_79de:
    rlca
    rst $38
    ld d, $f7
    ld e, $ff
    inc c
    rst $38
    ld bc, $45fe
    inc bc
    db $fc
    ld bc, $fe01
    add a
    ld bc, $0835
    ld d, e
    xor [hl]
    xor l
    ld d, a
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    call nz, $8596
    inc bc
    jr nc, jr_04a_7a15

    ld d, $1f
    dec l
    ld a, $3b
    inc a
    ld a, a
    ld a, b
    ld [hl], a
    ld a, b
    rst $38
    ldh a, [$7f]
    ldh a, [rPCM34]
    ld hl, sp+$3a
    db $fd
    dec e
    rst $38

jr_04a_7a15:
    rlca
    add h
    ld bc, $c717
    ld bc, $09a4
    ret nz

Jump_04a_7a1e:
    ccf
    nop
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $08
    ldh [$9f], a
    and l
    ret


    rlca
    ld bc, $8eff
    rst $38
    ldh a, [rIE]
    add b
    ld a, a
    and a
    inc bc
    ld [hl], c
    dec c
    ld [$100c], sp
    inc e
    inc l
    ld [hl], h
    add sp, -$0c
    ret nc

    add sp, -$48
    ret z

    ld [hl], b
    add b

jr_04a_7a44:
    add l
    ld [bc], a
    add $43
    ldh [rNR41], a

jr_04a_7a4a:
    add e
    ld bc, $15f3
    ld sp, hl
    add hl, bc
    ld a, c
    add l

jr_04a_7a52:
    db $dd
    push hl
    dec [hl]
    dec sp
    adc d
    adc [hl]
    add [hl]
    add [hl]
    ld b, d
    jp nz, $c644

    inc h
    db $e4
    jr z, jr_04a_7a4a

    jr nz, jr_04a_7a44

    ld b, a
    db $10
    ldh a, [rLYC]
    ld [$02f8], sp
    sbc b
    ld hl, sp+$0c
    add h
    ld [bc], a
    dec bc
    add a
    inc bc
    ld d, b
    ld [bc], a
    rrca
    rst $38
    add [hl]
    add h
    inc bc
    ld e, e
    ld bc, $bf40
    adc l
    ld bc, $04a2
    ld b, d
    jp $c141


    ld hl, $e143
    jr nz, jr_04a_7a8b

jr_04a_7a8b:
    ld [c], a
    ld b, l
    db $10
    ldh a, [$89]
    xor a
    dec b
    add a
    rst $38
    add e
    rst $38
    ret nz

    cp a
    add a
    inc bc
    and b
    ld bc, $fe81
    push bc
    nop
    rst $00
    add a
    rst $38
    dec bc
    sbc l
    push hl
    ld l, l
    ld [hl], e
    sub [hl]
    sbc d
    adc b
    adc [hl]
    ld b, h
    rst $00
    ld b, d
    jp $2143


    pop hl
    ld bc, $e120
    ld b, l
    db $10
    ldh a, [$85]
    nop
    sub b
    add hl, bc
    ld [$181f], sp
    rra
    ld h, $3f
    jr nz, jr_04a_7b04

    ld h, c
    ld e, a
    add l
    ld bc, $8300
    inc bc
    or $00
    ld c, $44
    rst $38
    nop
    add l
    ld bc, $0270
    ld e, $ff
    adc a
    add h
    ld bc, $010b
    ld [hl], b
    adc a
    rst $38
    ld l, a
    dec bc
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    inc b
    dec bc
    ld b, e
    ld [$020f], sp
    inc b
    rlca
    ld [bc], a
    jp nz, Jump_04a_7590

    inc b
    inc bc
    rlca
    dec c
    dec bc
    ld de, $1f44
    db $10
    add l
    xor c
    add l

jr_04a_7b04:
    xor e
    ld bc, $0101
    db $ec
    inc hl
    dec bc
    inc bc

jr_04a_7b0c:
    rlca
    jr @+$21

    daa
    jr c, @+$59

    ld a, b
    sub c
    cp $60
    ld a, a
    ld b, e
    ldh [rIE], a
    ldh [$36], a
    ldh a, [rIE]
    db $fc
    rst $38
    dec sp
    ei
    ld [hl], b
    ldh a, [$0c]
    db $fc
    inc bc
    rst $38
    nop
    cp $c2
    cp $2f
    ld a, $17
    ld [de], a
    ld [$0008], sp
    inc e
    jr nz, jr_04a_7b56

    jr jr_04a_7b48

    nop
    ld [$7030], sp
    jr nz, jr_04a_7b5e

    ret nz

    db $e4
    db $fc
    inc e
    jr c, jr_04a_7b0c

    rra
    rst $28
    sbc a
    db $e4

jr_04a_7b48:
    adc h
    rst $30
    ld b, $fb
    rlca
    ei
    inc bc
    rst $38
    inc bc
    db $fd
    ld bc, $ff44
    nop

jr_04a_7b56:
    and e
    add l
    inc bc
    ld b, c
    ld a, a
    ld e, $3e
    ld a, e

jr_04a_7b5e:
    ldh [$35], a
    add b
    ret nz

    jr nz, @-$0e

    db $10
    ldh a, [$90]
    ld l, b
    ld hl, sp+$08
    ld a, b
    adc b
    add hl, bc
    ld sp, hl
    add hl, de
    ld sp, hl
    ld [de], a
    ld a, [c]
    ld [hl], $f6
    ret c

    ret nc

    ld b, b
    ld b, c
    ld b, b
    ld b, b
    add b
    add b
    ret nz

    adc b
    nop
    ld b, h
    nop
    ld [de], a
    db $10
    ld de, $1a12
    ld bc, $0807
    ld [$1611], sp
    rra
    inc d
    rra
    db $10
    rrca
    ld [$060f], sp
    ld [bc], a
    ld bc, $1861
    ld e, d
    add b
    rst $00
    ld h, b
    rst $38
    jr nz, jr_04a_7bbe

    ldh a, [$9f]
    ldh a, [rVBK]
    ld [hl], b
    xor a
    or b
    ei
    and h
    db $fd
    ld [c], a
    cp $e5
    rst $18
    sub $99
    sbc c
    nop
    db $f4
    inc h
    nop
    ld d, e
    ld de, $3020
    add b
    ret z

    xor b
    xor b
    ld c, b
    ld l, b

jr_04a_7bbe:
    inc b
    ld [hl], h
    inc e
    push af
    inc d
    or $15
    or h
    nop
    jr nc, jr_04a_7c2e

    dec e
    ld [bc], a
    ld bc, $8400
    ld b, b
    adc b
    adc e
    rlca
    add h
    call nz, $3161
    ldh a, [rNR10]
    jr c, @-$36

    ld hl, sp-$78
    ldh a, [$08]
    ldh [rNR10], a
    ret nz

    ldh [rSB], a
    nop
    ld a, [hl+]
    nop
    ld d, a
    nop
    ld b, a
    rst $38
    nop
    ldh [rNR44], a
    db $fd
    ld [bc], a
    ld a, [$7505]
    adc d
    xor e
    ld d, h
    ld e, a
    xor b
    rst $38
    add hl, bc
    rst $38
    xor l
    db $fc
    cp a

jr_04a_7bfd:
    ld e, [hl]
    ld e, a
    ld e, $1f
    ld l, $3f
    cpl
    ccf
    daa
    ccf
    ld hl, $043f
    dec sp
    rla
    add hl, de
    ld [$071f], sp
    rlca
    call Call_04a_5e00
    nop
    nop
    ld b, a
    inc bc
    ld [bc], a
    ld c, $0b
    ld bc, $4195
    push hl
    adc [hl]
    add [hl]
    inc c
    inc b
    ld bc, $0009
    inc bc
    nop
    nop
    add l
    ld bc, $0138
    pop bc

jr_04a_7c2e:
    ldh a, [rSCX]
    inc bc
    ld [$8513], sp
    ld d, b
    dec bc
    jr nz, jr_04a_7c3d

    ld [bc], a
    ld [$1102], sp
    inc c

Jump_04a_7c3d:
jr_04a_7c3d:
    ld a, [hl+]
    nop
    ld b, l
    jr jr_04a_7bfd

    inc b
    ld a, [$fe05]
    ld bc, $ff47
    nop
    ldh [rNR42], a
    cp [hl]
    ld b, c
    ld a, [hl]
    adc c
    ld a, e
    adc l
    rst $38
    and l
    dec a
    rst $30
    inc c
    db $fc

jr_04a_7c58:
    inc [hl]
    call z, $8678
    ld a, d
    add [hl]
    ld a, [hl-]
    add $04
    db $fc
    adc b
    db $fc
    ldh a, [$f0]
    jr nc, jr_04a_7c58

    ld l, b
    sbc b
    adc b
    ld hl, sp-$10
    ldh a, [$65]
    rrca
    rrca
    rra
    ld h, b
    ld a, a
    sbc h
    db $e3
    ld a, h
    add e
    ld a, a
    add b
    ccf
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    add l
    cp [hl]
    ldh [$35], a
    ret nz

    rst $38
    or b

jr_04a_7c87:
    rst $38
    ccf
    rst $28
    ccf
    rst $08
    ld h, h
    rst $18
    db $fc
    rra
    or $17
    cp $03
    or $0f
    cp $03
    db $fc
    rlca
    cp $01
    db $fc
    rlca
    ld hl, sp+$0f
    ld a, h
    add a
    ld a, c
    adc a
    sbc [hl]
    ld h, [hl]
    rra
    ld bc, $c23e
    rst $38
    ld bc, $0fff
    ret nc

    jr z, @-$1e

    db $10
    ret nz

    ld [hl], b
    and b
    jr nz, jr_04a_7c87

    db $10
    ldh a, [$f0]
    db $ec
    inc h
    ld c, $80
    ld h, b
    ldh a, [$08]
    ld hl, sp+$08
    db $fc
    add h
    ld a, h
    db $e4
    inc e
    call nz, $d63e
    ld a, $43
    ld a, [de]
    ld a, [$3e02]
    ld a, [$223c]
    db $fc
    ld b, $f4
    db $fc
    call nz, $04fc
    db $fc
    nop
    ld c, b
    ld hl, sp+$08
    ld bc, $f810
    and e
    nop
    ld c, b
    xor l
    nop
    jr nz, jr_04a_7ceb

    nop

jr_04a_7ceb:
    add b
    db $ec
    dec [hl]
    ld bc, $0101

jr_04a_7cf1:
    ld b, a
    ld [bc], a
    inc bc
    ld c, c
    inc b
    rlca
    inc bc
    ld b, $07
    ld [bc], a
    inc bc
    inc hl
    ld [bc], a
    ld bc, $0e0f
    add l
    nop
    sbc d
    add e
    and l
    dec de
    rlca
    rlca
    dec e
    add hl, de
    inc hl
    dec sp
    rst $00
    rst $38
    ld h, a
    sbc a
    jp $033f


    rst $38
    rlca
    rst $38

jr_04a_7d17:
    add hl, bc
    ld sp, hl
    ld de, $12f1
    ld a, [c]
    ld d, $f6
    jr jr_04a_7cf1

    ld b, b
    pop bc
    add e
    ld bc, $e000
    ld a, [hl+]
    pop bc
    adc b
    nop
    ld b, l
    nop
    inc de
    ld [de], a
    ld de, $1f17
    inc c
    ld [$1013], sp
    dec e
    ld [de], a
    dec e
    ld d, $1f
    inc d
    rrca
    db $10
    rrca
    ld [$0607], sp
    nop
    ld bc, $3e3e
    pop bc
    rst $38
    sbc a
    ldh [$bf], a
    ret nz

    ccf
    ret nz

    jr c, jr_04a_7d17

    nop
    rst $38
    nop
    ld b, [hl]
    rst $38
    add b
    inc bc
    ld b, b
    rst $38
    ccf
    rst $38
    adc e
    ld bc, $836a
    nop
    ld [hl], l

jr_04a_7d61:
    ld c, $43
    adc h
    ei
    add a
    cp h
    ld h, h
    rst $38
    ld de, $08ff
    cp e
    ld c, b
    cp b
    ret z

    ldh a, [$84]
    ld bc, $0187
    pop bc

jr_04a_7d76:
    ldh [$a5], a
    inc bc
    ld a, [de]
    inc de
    ret nz

    ld b, b
    and b
    ld h, b
    jr nz, jr_04a_7d61

    inc h
    ldh [rNR41], a
    ldh [rP1], a
    ldh [rSTAT], a
    ret nz

    ld b, b
    ret nz

    add b
    adc b
    nop
    sub h
    add l
    ld bc, $11da
    inc bc
    ld [$5481], sp
    ld [de], a
    dec l
    inc b
    ld bc, $1802
    inc b
    dec bc
    add hl, hl
    ld [bc], a
    ld d, a
    nop
    cp a
    nop
    ld b, e
    rst $38
    nop
    sub e
    ld [bc], a
    ld b, $05
    inc b
    db $fc
    jr c, jr_04a_7d76

    ld a, d
    add [hl]
    jp Jump_04a_5e01


    add hl, de
    jr jr_04a_7dd0

    ld h, $26
    sbc $da
    ld c, $3a
    ld c, [hl]
    ld [hl], d
    sbc h
    db $f4
    inc a
    db $e4
    inc a
    call z, $dc64
    db $fc
    inc e
    db $f4
    inc d
    cp $02
    or $0e

jr_04a_7dd0:
    and e
    nop
    add e
    add hl, bc
    ld hl, sp+$0f
    di
    inc e
    ld [hl], a
    sbc b
    ld h, a
    jr c, jr_04a_7e3d

    cp a
    ld b, l
    ldh [$3f], a
    inc bc
    ldh a, [$1f]
    cp $1f
    ld b, e
    rst $38
    rrca
    inc de
    bit 7, a
    and h
    daa
    pop de
    ld de, $8080
    ld h, b
    ldh [rNR23], a
    ld hl, sp-$3c
    inc a
    ldh [rNR34], a
    ld a, [c]
    ld c, $62
    sbc [hl]
    ld b, e
    ld a, [bc]
    cp $0d
    inc d
    db $fc
    inc l
    db $fc
    db $fc
    db $f4
    ld hl, sp-$10
    add sp, -$08
    db $10
    ldh a, [$e0]
    ldh [$89], a
    inc bc
    ld h, b
    add h
    ld bc, $000a
    rlca
    adc h
    inc bc
    and b
    rlca
    rlca
    cp h
    call nz, $316f
    rst $38
    db $10
    dec sp
    adc d
    ld bc, $8585
    ld bc, $0df0
    rlca
    nop
    ld [$1102], sp
    ld b, $2a
    nop
    ld d, c
    inc c
    cp d
    dec b
    cp $01
    adc e
    inc bc
    db $f4
    adc e

jr_04a_7e3d:
    ld [bc], a
    ld h, b
    inc bc
    cp [hl]
    ld b, [hl]
    ld a, a
    ld bc, $0061
    inc b
    add a
    ld [bc], a
    ld [c], a
    inc b
    ld bc, $0111
    nop
    inc bc
    rst $38
    ld [hl], a
    rlca
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    dec b
    rlca
    inc hl
    ld [$1023], sp
    dec bc
    nop
    db $10
    jr nz, jr_04a_7e84

    daa
    daa
    jr c, jr_04a_7ea0

    jr nz, jr_04a_7e8a

    nop
    jr nz, jr_04a_7e9e

    ld b, b
    inc c
    ld h, b
    ld b, b
    ld d, h
    ld b, b
    ld a, [bc]
    jr nz, jr_04a_7eab

    jr nc, jr_04a_7e9d

    cpl
    dec d
    jr nz, @+$1c

    ld b, h
    db $10
    rra
    ld b, e
    rrca
    ld [$0603], sp

jr_04a_7e84:
    dec b
    ld b, $06
    adc l
    db $d3
    add hl, bc

jr_04a_7e8a:
    ld b, $06
    ld [$2318], sp
    cpl
    ld b, b
    ld [hl], b
    add b
    add b
    ld h, e
    ld bc, $ff7f

jr_04a_7e98:
    ld l, c
    and l
    adc a
    ld a, c
    dec bc

jr_04a_7e9d:
    dec b

jr_04a_7e9e:
    nop
    xor d

jr_04a_7ea0:
    nop
    ld d, h
    ld bc, $fefc
    ld d, l
    nop
    xor d
    nop
    ld b, l
    rst $38

jr_04a_7eab:
    nop
    rlca
    ccf
    cp $87
    add c
    rra
    nop
    jr nz, jr_04a_7ed5

    inc hl
    ld d, b
    add hl, bc
    ld e, b
    ld c, b
    sbc b
    adc b
    sbc a
    add a
    or d
    adc h
    rrca
    ld [hl], b
    ld h, c
    inc bc
    ldh a, [$fc]
    inc bc
    inc bc
    ld h, c
    nop
    ld bc, $e061
    jr nz, @+$04

    pop bc
    ldh [rNR34], a
    inc e
    rlca
    inc bc

jr_04a_7ed5:
    ld [bc], a
    ld [$0015], sp
    dec bc
    jr nz, @+$09

    db $10
    dec bc
    jr nz, jr_04a_7ef7

    nop
    rst $38
    ldh a, [$1f]
    ld c, $3f

jr_04a_7ee6:
    ld bc, $502f
    ccf
    nop
    rra
    jr nz, jr_04a_7f1d

    db $10
    add e
    add e
    ld [de], a
    ccf
    nop
    cpl
    db $10

jr_04a_7ef6:
    ccf

jr_04a_7ef7:
    ld b, b
    rst $38
    nop
    ld a, a
    inc bc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    nop
    ld l, a
    db $10
    rst $30
    and h
    add c
    rlca
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    jr nc, jr_04a_7e98

    nop
    ld h, [hl]
    inc d
    nop
    ld bc, $f2f2
    dec c
    ld a, [hl]
    ld bc, $020d

jr_04a_7f1d:
    ld [bc], a
    dec bc
    dec d
    scf
    add hl, bc
    cp a
    ret nz

    ld a, a
    jr nz, jr_04a_7ee6

    db $10
    ld [hl], a
    ld b, e
    ld [$09ff], sp
    dec b
    rst $38
    add a
    cp a
    ld c, b
    rst $38
    jr nc, @+$01

    jr nz, jr_04a_7ef6

    ld b, h
    ld b, b

Call_04a_7f39:
    rst $38
    inc b
    ld a, a
    add e
    rst $38
    add h
    rst $30
    ld c, b
    adc b
    rst $38
    inc bc
    db $fd
    add [hl]
    rst $38
    add b
    ld b, h
    rst $38
    ld b, b
    nop
    ret nz

    ld b, h
    rst $38
    jr nz, jr_04a_7f53

    add hl, de
    rst $38

jr_04a_7f53:
    ld d, $44
    rst $38
    ld hl, $91c2
    ld b, h
    rst $38
    nop
    ld [bc], a
    ld bc, $06ff
    ld h, c
    inc b
    ld b, b
    ld b, b
    and b
    and b
    jr nz, @+$46

    jr nz, jr_04a_7fca

    ldh [rNR41], a
    ldh [rNR41], a
    ld h, b
    and b
    ld b, b
    ld h, b
    ld [hl], b
    db $10
    ret c

    ld [$8460], sp
    ret nc

    add d
    xor d
    add [hl]
    rst $10
    add l
    cpl
    add l
    db $d3
    inc b
    ei
    adc b
    push af

jr_04a_7f85:
    ld c, b

jr_04a_7f86:
    ei
    jr nc, jr_04a_7f86

    jr nz, jr_04a_7f85

    db $10
    db $fd
    ld b, e
    db $10
    rst $38
    dec b
    dec bc
    rst $38
    adc h
    rst $38
    adc b

jr_04a_7f96:
    cp a
    ld b, l
    ld c, b
    rst $38
    inc e
    ld c, [hl]
    rst $38
    ld c, c
    cp a
    ld l, b
    cp $48
    rst $38
    ld c, b
    cp [hl]
    ld c, b
    rst $38
    adc b
    rst $30
    ret z

    rst $38
    jr nc, @+$01

    db $10
    rst $28
    db $10
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ret nz

    cp a
    ret nz

    add h
    db $e3
    nop
    ld bc, $0579
    ld [hl], b
    ld a, b
    sbc b
    adc b
    jr c, jr_04a_7fcc

    ld b, e
    ldh a, [$90]
    inc bc
    ldh [$a0], a

jr_04a_7fca:
    ldh [$60], a

jr_04a_7fcc:
    ld b, e
    ret nz

    ld b, b
    nop

jr_04a_7fd0:
    ldh [$c3], a
    add l
    inc d
    jr nz, @-$0e

jr_04a_7fd6:
    jr nc, jr_04a_7fd0

    jr jr_04a_7fd6

    inc d
    db $fc
    ld [de], a
    cp [hl]
    ld [de], a
    ld e, h
    inc d
    cp b
    ret c

    ld [hl], b
    jr nc, jr_04a_7f96

    db $10
    ld d, b
    db $10
    add a
    add e
    rlca
    ld hl, sp+$28
    db $fc
    inc h
    cp $22
    db $fc
    inc l
    ld b, e
    ldh a, [$50]
    ld bc, $48f8
    ld b, e
    ld hl, sp-$78
    rst $38
    nop
    nop
