; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    db $ec
    ld b, b
    dec b
    ld bc, $0200
    nop
    inc b
    nop
    dec h
    inc b
    inc bc
    inc c
    inc b
    inc d
    inc bc
    ld b, e
    ld [de], a
    rla
    ld a, [bc]
    ld de, $2007
    cpl
    jr nz, @+$11

    ld b, c
    ld c, [hl]
    ld b, d
    sbc [hl]
    add d
    ld l, b
    ld [hl+], a
    ld bc, $0223
    jp nz, $26ab

    ld bc, $0008
    ld bc, $0202
    inc b
    inc b
    dec b
    inc b
    dec bc
    ld b, e
    ld [$070f], sp
    add hl, bc
    ld [bc], a
    ld b, $08
    ld [$1013], sp
    daa
    add h
    or a
    ldh [$2b], a
    ld e, a
    ld b, e
    ld e, $82
    cp h
    add h
    db $fc
    add h
    db $fd
    add l
    rst $38
    add e
    ld a, a
    ld b, d
    ccf
    ld b, b
    ccf
    jr nz, @+$20

    ld hl, $1916
    add hl, de
    ld b, $2f
    nop
    ld d, a
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    ldh a, [$9f]
    adc h
    rla
    add d
    dec bc
    ld b, c
    ld d, a
    ld b, b
    ld c, e
    ld b, b
    ld h, l
    ld de, $f070
    ld [$3808], sp
    ld [$047c], sp
    ld a, [hl]
    ld [bc], a
    ld a, c
    rlca
    ld h, b
    jr jr_056_407f

jr_056_407f:
    ld h, b
    nop
    add b
    ld h, e
    ld bc, $003e
    ld b, [hl]
    rst $38
    nop
    inc bc
    ld a, b
    adc e
    add h
    ccf
    add h
    adc c
    inc bc
    db $fd
    ld [hl-], a
    rst $30
    ret z

    ld b, h
    rst $38
    nop
    inc c
    add b
    cp $81
    db $fd
    add d
    ei
    inc b
    ei
    dec b
    db $fd
    sub e
    ld a, [hl]
    adc [hl]
    ld c, b
    rst $38
    nop
    ld [bc], a
    ld bc, $02ff
    ld b, h
    rst $38
    inc b
    ld a, [bc]
    inc c
    ei
    ld c, $f5
    dec sp
    jp hl


    rst $10
    sub $2a
    db $ec
    inc d
    adc c
    nop
    ld h, c
    dec d
    nop
    ld bc, $0200
    ld a, h
    db $fc
    ld [$0008], sp
    ld [$1001], sp
    dec b
    db $10
    dec bc
    nop
    dec d
    nop
    ld a, [bc]
    nop
    push de
    nop
    ld d, a
    rst $38
    nop
    nop
    ld a, a
    jp $e0e1


    ld [hl+], a
    ldh a, [rTAC]
    rrca
    ret nz

    ldh [rNR10], a
    jr jr_056_40e7

jr_056_40e7:
    inc b
    ret nz

    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld hl, sp-$0f
    ld a, l
    adc c
    rst $38
    dec b
    rst $20
    dec b
    add $06
    call nz, $e404
    inc b
    ldh [rSC], a
    ld a, [c]
    ld [bc], a
    ldh a, [$81]
    ld sp, hl
    add c
    ld h, l
    ld [$e060], sp
    nop
    stop
    ld [$0838], sp
    ld a, b

jr_056_410d:
    ld b, h
    ld [$00f8], sp
    add sp, $44
    jr jr_056_410d

    inc b
    db $fc
    inc d
    db $ec
    inc d
    db $fc
    ld b, e
    ld [bc], a
    cp $44
    ld bc, $01ff
    db $fc
    ld b, $43
    ld a, [c]
    ld a, [bc]
    nop
    or $43
    ld c, $f4
    nop
    inc c
    ld b, e
    db $fc
    inc b
    rlca
    db $e4
    inc [hl]
    ldh a, [rNR23]
    sub b
    db $10
    ret nz

    ldh [$71], a
    dec c
    inc c
    inc c
    inc de
    inc de
    ld hl, $222c
    jr nc, jr_056_4166

    jr nz, jr_056_4169

    jr nz, jr_056_415c

    db $10
    db $ec
    ld c, a
    rrca
    jr c, @+$3a

    ld b, h
    ld b, h
    jp nz, Jump_056_72b2

    ld a, [bc]
    ld a, [c]
    ld a, [bc]
    ld a, h
    inc b
    ld a, [$fd06]

jr_056_415c:
    ld bc, $ecff
    sbc a
    add hl, de
    ld c, $0e
    ld [hl], c
    ld [hl], a
    and [hl]

jr_056_4166:
    cp a
    ei
    cp e

jr_056_4169:
    ld l, a
    ld l, h
    ccf
    ld sp, $4e5f
    ld b, l
    ld d, d
    inc a
    ld [hl-], a
    rra
    rra
    dec e
    jr jr_056_4186

    inc c
    inc bc
    inc bc
    db $ec
    daa
    dec d
    inc b
    rlca
    ld [$0408], sp
    inc b
    jr nz, @+$3a

jr_056_4186:
    jr @+$12

    inc c
    add hl, bc
    inc c
    inc de
    ld a, [bc]
    ld c, $06
    ld b, $03
    rlca
    rlca
    add hl, bc
    inc hl
    ld a, [bc]
    dec b
    ld b, $06
    ld [bc], a
    inc bc
    ld bc, $c401
    add $e0
    inc h

jr_056_41a1:
    dec c
    db $10
    ld [de], a
    jr nz, @+$26

    jr nz, jr_056_41cf

    ld b, b
    ld h, d
    nop
    sub h
    db $10
    inc d
    sub b
    sub h

jr_056_41b0:
    sub b
    sub d
    ldh a, [$d2]
    ld h, b
    or c
    jr nz, jr_056_4169

    ldh [$d0], a
    ret nz

    sub b
    add b
    jr nz, @+$42

    jr nz, jr_056_41a1

    ld h, b
    and b
    and b
    jr nz, jr_056_4204

    ld c, h
    jr nz, jr_056_41eb

    ld [$2032], sp
    inc l
    db $10
    db $10

jr_056_41cf:
    rrca
    rrca
    ld [$430f], sp
    inc b
    rlca
    add hl, bc
    dec bc
    rrca
    inc c
    rrca
    ld de, $1f10
    db $10
    rrca
    rrca
    ld h, e
    ld bc, $fffe
    ld h, e
    ldh [$29], a
    ret nz

    jr nz, jr_056_41b0

jr_056_41eb:
    rst $20
    ccf
    inc d
    ld a, a
    ld [$007f], sp
    rst $38
    add b
    db $dd
    db $e3
    ld a, [hl-]
    and [hl]
    cp [hl]
    ld [hl+], a
    ld a, a
    nop
    rlca
    ld [$000f], sp
    cp a
    cp [hl]
    ld e, l
    db $e3

jr_056_4204:
    rst $38
    ld a, a
    or c
    rst $38
    sub a
    ei
    adc l
    rst $38
    ld e, [hl]
    rst $38
    ld l, e
    ld a, a
    ld d, l
    ld a, a
    add e
    add e
    nop
    ld l, a
    dec h
    ld a, a
    ld bc, $7fff
    add $81
    inc b
    ld a, a
    ld h, e
    ld e, h
    ld a, a
    ld b, b
    ld b, h
    ld a, a
    ld d, b
    ld [bc], a
    ld [hl], b
    ld a, a
    ld e, b
    ld c, b
    ld a, a
    ld c, b
    nop
    adc b
    ld b, h
    rst $38
    ld [$1443], sp
    rst $30
    rlca
    db $f4
    rst $30
    ei
    db $db

jr_056_423a:
    di
    ld [hl-], a
    pop bc
    pop bc
    ld h, l
    ld bc, $e0c0

jr_056_4242:
    ld [hl+], a
    db $10
    ldh [rNR52], a
    ld [$c8a8], sp
    ret c

    ld c, b
    ld hl, sp+$28
    add sp, $38
    ldh a, [$f0]
    ret c

    add sp, $58
    xor b
    ret c

    jr z, @-$0e

    jr nc, jr_056_423a

    jr nz, @-$7e

    ld b, b
    add b
    add b
    ld h, b
    ldh [$d8], a
    cp b
    ld [$f1d6], a
    ret


    ret nz

    ld hl, sp-$60
    pop de
    add c
    adc c
    ld b, h
    add d
    adc d
    ld [bc], a
    sub e
    add b
    sub c
    ld b, h
    add c
    and c
    ld [bc], a
    pop bc
    add c
    pop bc
    jr z, @-$7d

    nop
    sbc a
    ld c, h
    add c
    sub c
    dec b
    sub e
    add c
    sbc l
    add d
    add d
    ld a, h
    ld b, h
    db $fc
    inc b
    ld [bc], a
    add sp, -$08
    ld [$f822], sp
    dec b
    jr jr_056_429d

    db $fc
    inc b
    ld hl, sp-$08
    db $ec
    dec hl
    inc hl
    add b

jr_056_429d:
    inc hl
    ld b, b
    dec b
    jr nz, jr_056_4242

Jump_056_42a2:
    jr nz, jr_056_42c4

    nop
    jr nz, jr_056_42ca

    db $10
    rrca
    nop
    db $10
    ld [$5808], sp
    ld [$08a8], sp
    ld d, b
    db $10
    or b
    db $10
    ldh [$60], a
    add b
    add b
    db $ec
    sub c
    rst $38
    db $ec
    sbc a
    add hl, bc
    ld bc, $0201

Jump_056_42c2:
    rlca
    rrca

jr_056_42c4:
    ld [$090f], sp
    inc e
    inc de
    ld b, e

jr_056_42ca:
    jr jr_056_42e3

    ld b, e
    ld [$030e], sp
    inc b
    ld b, $03
    inc bc
    db $ec
    inc l
    inc d
    ld bc, $0602
    ld [$2008], sp
    jr nc, jr_056_4350

    ld [hl], e
    adc e
    ei
    ld a, a

jr_056_42e3:
    ld a, a
    cpl
    ld a, $5f
    ld a, a
    cp [hl]
    rst $38
    rst $38
    db $f4
    ld b, e
    dec de
    ld [de], a
    dec b
    ld [$0809], sp
    ld [$0406], sp
    inc hl
    inc bc
    add hl, de
    inc c
    inc e
    ld sp, $7131

Jump_056_42fe:
    ld d, c

Call_056_42ff:
    jp hl


    sbc c
    add $be
    call z, $1b32
    push af
    push de
    ld a, d
    ld [$35f5], a
    ld_long $ff2f, a
    jr nc, jr_056_4341

    ld a, b
    ld a, b
    ld b, e
    ld hl, sp-$48
    inc c
    ldh [$a0], a
    ld b, b
    ld a, a
    ld c, a
    ld a, a
    jr nc, jr_056_4358

    jr nc, jr_056_4352

    ld sp, $3130
    ld b, [hl]
    jr nc, jr_056_4348

    dec d
    dec e
    ld e, $09
    rrca
    rrca
    ld [$080b], sp
    dec b
    ld e, $03
    inc de
    dec a
    inc a
    ld l, [hl]
    ld e, a
    sbc a
    sbc a
    ei
    add a
    ld a, h
    ld a, [hl]
    ld h, e
    rlca
    ld a, b

jr_056_4341:
    ld hl, sp+$0e
    ld b, $07
    inc bc
    dec b
    inc bc

jr_056_4348:
    ld b, l
    rst $00
    pop bc
    add hl, bc
    rrca
    ld bc, $f3ed

jr_056_4350:
    rst $38
    ccf

jr_056_4352:
    xor a
    ld h, e
    db $ed
    ld [hl+], a
    ld b, e
    rst $38

jr_056_4358:
    nop
    inc d
    db $dd
    db $e3
    ld a, [$7e06]
    ld c, $e9
    rst $38
    cp a
    ret z

    rra
    ldh a, [rVBK]
    pop bc
    add [hl]
    add a
    ldh a, [rIE]
    add c
    cp $81
    ld b, h
    rst $38
    ld bc, $031d
    rst $38
    db $f4
    rst $38
    ld c, $0f
    dec sp
    add hl, sp
    ccf
    dec a
    ccf
    inc a
    inc bc
    inc bc
    ld bc, $f8ff
    rst $38
    and a
    ld b, a
    add l
    ld b, e
    add l
    jp Jump_056_63c1


    pop bc
    inc hl
    ld [c], a
    ld hl, $e343
    jr nz, jr_056_4398

    call c, $8bdf

jr_056_4398:
    adc h
    ld b, e
    add a
    add h
    dec bc
    rlca
    add a
    adc d
    adc h
    adc $cf
    set 1, a
    ld a, [bc]
    adc e
    ld b, $04
    adc b
    nop
    or h
    ld bc, $8080
    inc hl
    ret nz

    inc h
    ldh [rSCX], a

jr_056_43b4:
    and b
    ldh [rTAC], a
    ldh [$f0], a
    ld hl, sp+$78
    cp h
    ld a, h
    ret nz

    ld b, b
    push bc
    sub l
    add hl, bc
    add b
    add b
    ldh [rSVBK], a
    ld hl, sp-$78
    cp $06
    ld sp, $43cf
    add b
    ld a, a

jr_056_43cf:
    add hl, bc
    call c, Call_056_7c3f
    and e
    ld hl, sp-$01
    ldh a, [$8f]
    jr nc, @+$01

    ld b, e
    ld a, b
    rst $18
    ld b, $b1
    rst $38
    add [hl]
    cp $b8
    ld hl, sp-$30
    and e
    nop
    and h
    nop
    ldh a, [$2a]
    ldh [rSC], a
    jr nz, jr_056_43cf

    jr nz, jr_056_43b4

jr_056_43f1:
    rst $08
    ld b, h
    ret nz

    ld b, b
    ld a, [bc]

jr_056_43f6:
    ret nz

    jr nz, jr_056_4459

    ld h, b
    ldh [$d0], a
    ldh a, [$50]
    ret nc

Call_056_43ff:
    ld h, b
    jr nz, jr_056_43f6

    ld l, $00
    or h
    nop
    nop
    inc hl
    add b
    inc bc
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, a
    jr nz, jr_056_43f1

    inc bc
    ld b, b
    ret nz

    add b
    add b
    db $ec
    sbc l
    rst $38
    db $ec
    ld a, c
    inc b
    inc bc
    inc bc
    inc b
    ld b, $09
    ld [hl+], a
    rrca
    ld [bc], a
    add hl, bc
    add hl, bc
    inc b
    push bc
    adc b
    jr jr_056_442f

    ld a, [de]
    ld a, [de]
    dec bc
    add hl, hl

jr_056_442f:
    cpl
    dec h
    ld a, [de]
    dec d
    rra
    db $10
    dec bc
    ld c, $0b
    add hl, bc
    rla
    dec d
    rra
    inc de
    rrca
    ld a, [bc]
    rlca
    inc b
    inc bc
    ld [bc], a
    inc hl
    ld bc, $41ec
    db $10
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$60], a
    ld h, b
    ldh [$a0], a
    pop bc
    ld b, c
    add c
    add c
    ld [bc], a
    inc bc
    ld [bc], a

jr_056_4459:
    inc h
    inc bc
    dec b
    ld sp, $4931
    ld c, c
    ret nz

    ret z

    ld b, e
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    dec d
    pop hl
    ld hl, $62e2
    ld a, [c]
    ld [de], a
    di
    ld [de], a
    rst $38
    inc c
    rst $38
    add h
    ld a, l
    ld b, d
    dec a
    ld b, d
    ccf
    ld hl, $121e
    inc c
    inc c
    db $ec
    inc sp
    inc d
    ld [$0408], sp
    inc c
    inc d
    inc e
    inc de
    rra
    jr nz, jr_056_44cb

    ret nz

    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec bc
    ld l, a
    ld c, l
    rst $38
    ld c, a
    ld b, e
    ld hl, sp-$01
    ldh [rNR41], a
    cp $d9
    and $dd
    and h
    ld e, l

jr_056_44a2:
    and h
    db $fd
    and h
    ld a, a
    ld [hl], b
    sbc l
    or d
    inc c
    ld a, [bc]
    adc a
    ld b, h
    rst $20
    ld hl, $20e3
    rst $10
    jr nc, jr_056_44a2

    ld a, l
    or e
    xor a
    add hl, sp
    and a
    inc de
    ld e, $0f
    rrca
    inc hl
    ld bc, $0346
    ld [bc], a
    ld b, [hl]
    inc b
    rlca
    rla
    rrca
    ld [$1007], sp
    rlca

jr_056_44cb:
    jr nz, jr_056_44fc

    ld hl, $223e
    ld a, $42
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    ld hl, sp-$78
    or h
    call z, $fc84
    ld a, b
    ld a, b
    ld l, l
    add hl, de
    rrca
    rrca
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    add b

jr_056_44e9:
    rst $38
    ld b, b
    rst $38
    jr nc, jr_056_44e9

    jr @-$3f

    add hl, de
    rst $38
    sbc l
    rst $38
    cp a
    rst $38
    rst $38
    rst $08
    rst $38
    adc a
    ld b, h
    rst $30

jr_056_44fc:
    ld [de], a
    ldh [$34], a
    inc de
    cp $06
    sbc $26
    cpl
    ld e, c
    rst $38
    ld sp, $c0ff
    rst $38
    ld [$18ff], sp
    rst $28
    ld a, b
    adc a
    ld hl, sp-$31
    cp c
    rst $08
    ld a, c
    rst $30
    add hl, sp
    rst $38
    sub c
    rst $38
    ld [hl], c
    sub $31
    rst $10
    ld [hl-], a
    rst $30
    ld [de], a
    rst $30
    ld [hl-], a
    and a
    ld h, c
    rst $28
    ld h, b
    rst $38
    ld b, c
    rst $38
    ld h, l
    sbc a
    sub [hl]

jr_056_452e:
    rra
    sbc b
    rra
    db $10
    rrca
    ld [$fdc7], sp
    dec b
    ld [bc], a
    inc bc
    rlca
    inc b
    inc b
    rlca
    call Call_056_7b00
    ld bc, $c0c0
    and l
    sub c
    add e
    nop
    ld [$01c5], a
    dec bc
    inc bc
    jr nz, jr_056_452e

    ld b, b
    ret nz

    inc hl
    add b
    xor l
    nop
    and h
    dec hl
    add b
    inc bc
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, l
    ldh [rNR41], a
    nop
    ret nz

    and d
    rst $10
    rst $00
    adc h
    nop
    nop
    adc e
    and b
    ld b, h
    ld b, b
    ret nz

    inc bc
    and b
    ldh [$a0], a
    ld h, b
    and e
    rst $28
    db $ec
    ld [hl], c
    rst $38
    db $ec
    dec [hl]
    dec bc
    inc e
    inc e
    inc h
    ld a, $2a
    ld a, $14
    ld e, $0c
    dec c
    inc bc
    inc bc
    ld b, e
    inc b
    rlca
    inc bc
    inc bc
    rlca
    nop
    inc bc
    db $ec
    add hl, hl
    inc b
    ld bc, $0201
    ld [bc], a
    nop
    ld [hl+], a
    inc b
    dec bc
    rlca
    dec bc
    rlca
    inc c
    inc c
    ld [$0c0b], sp
    inc c
    rla
    rra
    inc de
    ld b, e
    rra
    db $10
    ld de, $603f
    rst $38
    ldh [$3f], a
    pop hl
    ld e, [hl]
    ei
    cp [hl]
    rst $38
    db $dd
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    ld a, a
    nop
    dec hl
    db $ec
    ld hl, $1f17
    ccf
    ld b, c
    ret nz

    inc bc
    nop
    ld b, e
    ld b, d
    rst $10
    add $ef
    add $ff
    and $1f
    ldh a, [$8f]
    ld a, b
    rrca
    ld hl, sp+$1f
    ldh a, [rIE]
    ldh [rDMA], a
    rst $38
    nop
    ld c, $60
    sbc [hl]
    ld sp, hl
    dec d
    cp $ae
    rst $38
    ld d, a
    rst $38
    cp e
    rst $38
    inc d
    rst $18
    nop
    add hl, de
    db $f4
    inc hl
    nop
    ld d, c
    dec b
    ret nz

    ld h, b
    ldh a, [rNR10]
    ld hl, sp+$08
    ld b, h
    db $fc
    inc b
    ld c, d
    ld [bc], a
    cp $15
    ld a, [$d406]
    ld a, [hl+]
    xor h
    ld d, [hl]
    ld d, a
    xor a
    xor [hl]
    ld e, a
    ld [hl], c
    cp a
    ld [c], a
    rst $38
    dec d
    rst $38
    cp d
    rst $38
    inc b
    xor $00
    ld d, b
    db $ec
    add hl, sp
    ld de, $6060
    or b
    ldh a, [$d4]
    db $fc
    ld l, d
    ld l, [hl]
    db $ec
    db $ec
    ld d, b
    ldh a, [$a0]
    ldh a, [rP1]
    add sp, -$80
    ret nc

    adc l
    nop
    ld h, a
    add hl, de
    ld [bc], a
    ld b, $08
    ld [$1212], sp
    ld b, $26
    daa
    ld h, $3f
    ld e, a
    inc a
    ld h, e
    ld h, d
    ld b, c
    ld e, h
    db $e3
    ret nz

    rst $38
    ldh [$bf], a
    rst $38
    sbc a
    rst $38
    add b
    ld b, l
    ld a, a
    ld b, b
    rlca
    rra
    ld h, b
    cpl
    jr nc, jr_056_4683

    ld l, b
    db $eb
    db $f4
    ld h, l
    ld a, [bc]
    ld a, b
    db $fc
    ld c, $03
    rra
    nop

jr_056_4657:
    rra

jr_056_4658:
    db $10
    cp a
    jr nc, @+$81

    ld b, e
    jr nc, @+$01

    nop
    add b
    ld b, l
    ld a, a
    ret nz

    ld bc, $80ff
    ld d, b
    rst $38
    nop
    nop
    ld h, b
    xor e

jr_056_466d:
    nop
    ld l, d
    inc b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, l
    jr nz, jr_056_4658

    ld bc, $e010
    ld b, l
    db $10
    ldh a, [$0c]
    ld [$18e8], sp
    ret c

jr_056_4683:
    jr z, jr_056_466d

    jr jr_056_4657

    inc l
    xor h
    ld d, h
    call nc, $832c
    ld bc, $0b2c
    rra
    ld a, $27
    ld b, d
    ld c, c
    ld b, a
    ld [hl], c
    ld c, a
    ld h, e
    cp [hl]
    ld a, a
    sbc h
    ld b, h
    rst $38
    add b
    ld [bc], a
    jr nc, @+$01

    jr nc, jr_056_46ef

    rst $38
    nop
    ld [$0e0e], sp
    ld de, $151f
    rra
    dec bc
    rrca
    ld b, $a5
    reti


    db $10
    ld bc, $3030
    ld e, b
    ld a, b
    xor b
    ld hl, sp-$50
    ldh a, [$60]
    ld h, b
    jr jr_056_46d8

    inc d
    inc e
    adc h
    adc h
    add l
    nop
    ret nz

    add hl, bc
    inc bc
    nop
    ld d, a
    nop
    xor a
    add [hl]
    rst $38
    xor $1f
    ldh a, [rIE]
    db $ec
    ld b, l
    inc bc
    jr jr_056_46d8

jr_056_46d8:
    inc a
    nop
    ld hl, sp+$45
    add c
    ld c, $60
    nop
    ld d, b
    nop
    jr z, jr_056_46e4

jr_056_46e4:
    inc d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $027e

jr_056_46ef:
    inc bc
    nop
    inc bc
    db $ec
    ld [hl+], a
    ld bc, $0303
    ld b, l
    inc b
    rlca
    ld bc, $0605
    ld b, e
    rlca
    inc b
    dec b
    rrca
    rrca

jr_056_4703:
    rra
    rra
    rrca
    rrca
    ld b, e
    ld [bc], a
    inc bc
    dec b
    ld bc, $0302
    ld [bc], a
    ld bc, $8301
    sbc a
    inc de
    ld b, $07
    ld [$1f0f], sp
    rra
    sbc b
    rra
    ld d, b
    rra
    or b
    rra
    ld d, a
    ld [$002c], sp
    stop
    jr nc, jr_056_4728

jr_056_4728:
    ld b, l
    jr nz, jr_056_472b

jr_056_472b:
    nop
    jr nc, @+$64

    add hl, bc
    inc b
    nop
    rrca
    ld [$0f28], sp
    ld [$880f], sp
    rrca
    ld b, a
    inc b
    rlca
    ld b, a
    ld [bc], a
    inc bc
    add a
    adc l
    dec h
    inc bc
    nop
    ld bc, $0084
    sbc [hl]
    nop
    rst $38
    ld b, a
    rst $38
    nop
    nop
    rst $20
    ld b, e
    add c
    ld b, d
    inc b
    jp $fc24


    rst $38
    ldh [rNR43], a
    rst $38
    ldh [$37], a
    ld b, [hl]
    ld a, [hl]
    ld a, d
    ld b, d
    inc a
    jp $00c7


    rrca
    jr nz, jr_056_4703

    sbc h
    ld [c], a
    db $e3
    ld a, $ff
    dec de
    ei
    add hl, bc
    ld sp, hl
    add l
    db $fd
    ld b, h
    db $fd
    ld b, d
    rst $38
    ret nz

    scf
    ld b, b
    rrca
    nop
    rrca
    jr jr_056_4785

    ld [$0907], sp
    rlca
    rrca
    rlca
    rra

jr_056_4785:
    rlca
    rla
    rrca
    ld l, a
    rlca
    rst $10
    inc hl
    dec de
    pop af
    dec e
    ld hl, sp+$1e
    db $fc

jr_056_4792:
    rra
    cp $49
    rrca
    rst $38
    ld [bc], a
    rra
    rst $38
    rst $38
    ld b, h
    rst $38
    rra
    ld [bc], a
    ld e, $fe
    ld e, $22
    rst $38
    dec b
    ccf
    sbc a
    db $10
    rst $38
    ldh a, [$f8]
    ld h, e

jr_056_47ac:
    ld bc, $8080
    and e
    ld bc, $4306
    ld [$e0f8], sp
    ld h, $88
    ld a, b
    add sp, $18
    ld hl, sp+$08
    ldh [rNR10], a
    ldh a, [$d0]
    ldh a, [$f0]
    ld hl, sp-$18
    ld l, b
    xor b
    add sp, $08
    ret nc

    jr nc, jr_056_47ac

    ld h, b
    add [hl]
    add [hl]
    ret


    ret


    ld c, b
    ret z

    ld h, h
    db $e4
    ld h, d
    ld [c], a
    ld sp, $38f1
    ld hl, sp+$3e
    cp $31
    ld b, h
    rst $38
    ld h, b
    dec b
    ld d, b
    rst $18
    adc h
    adc a
    add e
    add e
    ld h, a
    inc hl
    add b
    ld [hl+], a
    ret nz

    add hl, bc
    ld b, b
    ld h, b
    jr nz, jr_056_4792

    nop
    ret nc

    add b
    ldh a, [$c0]
    ret nz

    ld [hl+], a
    ldh [$cc], a
    adc [hl]
    ld [bc], a
    add b
    nop
    add b
    db $ec
    dec hl
    add hl, de
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    inc e
    inc e
    adc [hl]
    adc d
    ld e, [hl]
    ld d, d
    db $eb
    or l
    rst $20
    sbc b
    db $e3
    sbc h
    ld b, e
    rst $38
    ld h, b
    cp $f2
    cp $0f
    dec c
    db $ec
    ld h, e
    call nz, $1d02
    ld [$e0a0], sp
    and b
    ld h, b
    ld h, b
    jr nz, jr_056_484a

    ret nz

    ret nz

    db $ec
    dec l
    rst $38
    db $ec
    ld b, h
    ld b, $01
    nop
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$1743], sp
    jr jr_056_4842

    ld [hl+], a
    dec a
    jr nz, jr_056_4880

    ld b, c

jr_056_4842:
    ld a, [hl]
    ld b, e
    ld b, d
    ld a, a
    dec b
    add h
    rst $38
    adc d

jr_056_484a:
    db $fd

jr_056_484b:
    sbc l
    ld a, [c]
    db $ec
    dec [hl]
    inc hl
    ld bc, $25e0
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$110f], sp
    ccf
    ld a, a
    add $1f
    ld [$101f], sp
    scf
    jr jr_056_484b

    jr c, @-$0b

    ld c, h
    ldh a, [$8f]
    ld a, b
    add a
    cp $01
    rst $38
    nop
    ld a, a
    add b
    inc bc
    db $fc
    nop
    rst $38
    adc b
    ld [hl], a
    ld d, l
    xor d
    adc a
    cp b
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ret


jr_056_4880:
    cp b
    dec h
    ld bc, $071f
    ld b, $0e
    ld [$101c], sp

jr_056_488a:
    ld e, $10
    inc hl
    inc a
    jr nz, jr_056_48cf

    inc h
    dec sp
    ld l, d
    ld d, l
    push de
    xor d
    ld_long a, $ff05
    nop
    ld [hl], a
    adc a
    ld a, $f0
    ld hl, sp-$40
    ldh [rP1], a
    ret nz

    nop
    ld b, e
    add b
    nop
    ld bc, $00c7
    ld b, e
    rst $38
    nop
    ld bc, $03fc
    add e
    add [hl]
    dec bc
    ldh [$1f], a
    db $fd
    ld [bc], a
    cp $01
    rst $38
    add b
    ccf
    ldh a, [rIF]
    db $fc
    adc e
    nop
    adc l
    ldh [rNR42], a
    ld hl, $31e1
    ld de, $0939
    ld a, e
    ld a, [bc]
    db $fc
    inc c
    ret z

jr_056_48cf:
    jr nc, jr_056_488a

    ld b, b
    rst $38
    add b
    push de
    xor d
    xor d
    ld d, l
    ld bc, $20fe
    adc a
    inc e
    inc bc
    cpl
    nop
    ld d, a

jr_056_48e1:
    nop
    cp a
    nop
    ld a, a
    nop
    add e
    nop
    or h
    inc de
    ccf
    ret nz

    ld c, $f1
    add c
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    rla
    nop
    dec bc
    nop
    rla
    nop
    rrca
    nop

jr_056_48fc:
    rla
    nop
    ld b, a
    rst $38
    nop
    db $10
    rra
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
    jr z, jr_056_48e1

    ld d, l
    xor d
    xor d
    ld d, l
    ld [hl], l
    adc d
    rst $38
    nop
    rst $38
    ld h, [hl]
    rrca
    ld h, b
    ldh [$30], a
    db $10
    jr c, @+$0a

    ld [hl], h
    inc c
    inc a
    call nz, $f40c
    call nz, $e03c
    jr jr_056_496b

    ld hl, sp+$08
    inc bc
    db $fc
    inc b
    cp $03
    add e
    rst $08
    dec bc
    rrca
    ldh a, [$03]
    db $fc
    add e
    ld a, a
    adc h
    ld a, h
    sub b
    ld [hl], b
    ldh [rNR41], a
    and a
    nop
    call nc, $8007
    add b
    ldh a, [rSVBK]
    db $fc
    inc c
    rst $38
    inc bc
    ld c, e
    rst $38
    nop
    inc bc
    cp $01
    ld hl, sp+$07
    and e
    nop
    cp b
    dec bc
    ld bc, $0ffe
    ldh a, [rIE]
    nop
    rst $38
    ld [bc], a
    rst $38
    inc c
    ldh a, [$7f]
    db $f4
    ld hl, $7600
    dec b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b

jr_056_496b:
    sbc e
    sbc a
    ld b, e
    ldh [rNR41], a
    dec bc
    ret nc

    jr nc, jr_056_48fc

    ld a, b
    ld [$04f8], sp
    db $fc
    jr c, @-$3a

    ld a, [hl]
    add d
    ld b, e
    ld a, [$0706]
    pop af
    rrca
    pop hl
    rra
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    db $ec
    dec l
    rlca
    db $10
    jr nc, jr_056_499c

    ld c, [hl]
    ld b, c
    ld d, l
    ld b, b
    ld l, d
    ld b, e
    jr nz, jr_056_49d7

    ld bc, $1f10
    ld b, e

jr_056_499c:
    ld [$050f], sp
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $6a01
    rlca
    ld bc, $0602
    nop
    ld [$1000], sp
    nop
    ld [hl+], a
    jr nz, jr_056_49b2

jr_056_49b2:
    nop
    ld [hl+], a
    ld b, b
    db $ec
    ld hl, $0127
    nop
    nop
    ld h, $02
    dec b
    ld [c], a
    ld a, [c]
    ld c, $be
    nop
    cp $43
    ld bc, $01ff
    nop
    rst $38
    add l
    add l
    dec c
    add d
    rst $38
    ld b, d
    ld a, a
    jr nc, @+$41

    inc c
    rrca
    inc b
    rlca

jr_056_49d7:
    ld a, $7f
    add c
    add c
    ld h, c
    rlca
    ld e, $1e
    ld bc, $0701
    nop
    rrca
    nop
    ld b, e
    rra
    nop
    ld h, c
    ld a, [de]
    inc c
    inc c
    rra
    inc de
    rra
    db $10
    rrca
    ld [$303f], sp
    ld a, a
    ld b, b
    ccf
    jr nc, jr_056_4a08

    ld c, $03
    inc bc
    inc c
    rrca
    db $10
    dec d
    jr nz, jr_056_4a2d

    ld b, b
    ld [hl], a
    ld b, b
    and e
    push bc
    ld c, b

jr_056_4a08:
    rst $38
    nop
    inc bc
    rst $00
    rst $38
    jr c, jr_056_4a47

    ld h, a
    ld [$0202], sp
    ld b, e
    ld b, e
    ld h, h
    ld h, a
    sub h
    rst $30
    ld [$ff50], sp
    nop
    add hl, bc
    add b
    rst $38
    ld h, b
    ld a, a
    ld [hl], b
    rra
    ld hl, sp-$11
    rst $38
    rra
    ld b, l
    rst $38
    nop
    add e
    xor e

jr_056_4a2d:
    ld c, $07
    dec b
    add a
    add h
    jp $f342


    ld [hl-], a
    ld sp, hl
    add hl, bc
    rst $38
    rlca
    rst $38
    ld sp, hl
    inc bc
    or b
    or c
    dec bc
    inc bc
    cp $0f
    db $fc
    ld a, a
    ldh a, [$bf]

jr_056_4a47:
    add b
    ld e, a
    nop
    cpl
    nop
    add l
    add e
    inc b
    xor a
    nop
    rst $38
    db $e3
    inc e
    or d
    db $db
    nop
    ld bc, $ff48
    ld [bc], a
    inc bc
    pop bc
    rst $38
    rst $38
    ccf
    add l
    rst $18
    ld h, c
    rlca
    ld [$9c08], sp
    sub h
    call c, $fc54
    inc h
    ld b, [hl]
    db $fc
    inc b
    ld bc, $7c84
    ld b, e
    call nz, $023c
    db $e4
    ld a, $e2
    ld b, e
    ld a, [hl]
    jp nz, $fe05

    add d
    db $fc
    inc e
    db $eb
    dec hl
    ld b, e
    db $ec
    ld l, h
    add hl, bc
    db $e4
    ld h, h
    db $e4
    ld [hl], l
    rst $30
    ld [hl], $df
    dec a
    ei
    dec e
    ld b, e
    cp $00
    ld [$c0fd], sp
    ld a, [hl-]
    ldh a, [$0d]
    ld hl, sp+$06
    db $fc
    inc bc
    xor b
    nop
    db $dd
    ld [bc], a
    add c
    db $fd
    ld bc, $94c4
    xor l
    ld bc, $ec38
    dec h
    dec bc
    ret nz

    ldh [rNR10], a
    db $10
    jr nc, jr_056_4ac3

    jr nz, @-$1e

    ldh [rNR41], a
    ret nz

    ld b, b
    inc hl
    add b
    inc hl
    ld b, b
    rla
    jr nc, jr_056_4af0

    ld [$8808], sp

jr_056_4ac3:
    ld [$04c4], sp
    add h
    inc b
    ld [c], a
    ld h, d
    sub d
    ld a, [c]
    inc c
    db $fc
    ld [$04f8], sp
    db $fc
    add h
    db $fc
    add d
    cp $43
    ld b, d
    ld a, [hl]
    inc bc
    ld c, [hl]
    ld a, [hl]
    ccf
    or c
    ld b, e
    ccf
    and c
    ld bc, $e63e
    rst $38
    db $ec
    and $03
    ld bc, $0301
    ld [bc], a
    ld b, e
    rlca
    inc b
    inc b

jr_056_4af0:
    ld c, $08
    rrca
    inc b
    rlca
    db $db
    adc e
    rrca
    jr @+$1a

    inc h
    inc h
    inc hl
    ld [hl], e
    sub d
    sub d
    cp l
    xor l
    ld [hl], b
    ld [hl], d
    jr nz, jr_056_4b28

    ld a, [de]
    ld a, [de]
    inc hl
    rrca
    ld [bc], a
    rlca
    rlca
    nop
    db $db
    sub a
    ld [hl+], a
    ld bc, $0603
    rlca
    inc b
    inc b
    inc hl
    ld [$0722], sp
    ldh [$38], a
    rrca
    rra
    ccf
    ld a, a
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38

jr_056_4b28:
    ld [hl], l
    rst $38
    db $fd
    rst $30
    xor h
    or a
    db $ec
    rst $30
    rst $38
    rst $20
    xor l
    or e
    ld e, a
    and c
    sbc a
    add b
    ld c, a
    ld d, b
    rla
    inc l
    ld a, a
    ld [hl], b
    adc [hl]
    rst $38
    add d
    rst $38
    call nc, Call_056_70ff
    ld a, a

jr_056_4b46:
    ld [hl], b
    ld l, a
    ld d, c
    ld l, [hl]
    ld a, e
    ld a, h
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    adc a
    rst $38
    rrca
    ld a, a
    rla
    ccf
    ld b, e
    sub b
    cp a
    db $10
    and c
    cp [hl]
    inc hl
    inc a
    ld [hl], e
    ld a, a
    cp h
    cp a
    jr c, jr_056_4ba3

    jr nc, @+$41

    ld sp, HeaderManufacturerCode
    rra
    inc de
    inc h
    ccf
    nop
    ld a, $22
    ld a, a
    ld [hl+], a
    ld a, h
    inc b
    db $fc
    sbc b
    sbc b
    add h
    add h
    add h
    rst $20
    db $10
    ret z

    nop
    or b
    ld [$0858], sp
    jr z, jr_056_4bb4

    jr nc, jr_056_4b46

    ret nz

    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$08
    ld [hl+], a
    db $fc
    inc hl
    cp $22
    rst $38
    ld bc, $5f5f
    and e
    add l
    ldh [$2c], a
    scf
    ld l, a
    ld e, a
    and a
    db $fc
    dec c
    ldh a, [$15]
    or b

jr_056_4ba3:
    ld [hl], d
    ld hl, sp-$06
    ld l, b
    ld hl, sp+$44
    cp $8c
    db $fc
    db $10
    ldh a, [$0e]
    cp $91
    ld a, a
    ld h, c
    rst $38

jr_056_4bb4:
    db $fc
    rst $38
    ld a, [c]
    di
    pop hl
    pop hl
    sub b
    ldh a, [$88]
    ld a, b
    ld c, b
    cp b
    ld h, h
    sbc h
    add h
    ld a, h
    inc d
    db $fc
    or h
    jp $00bc


    ldh a, [rNR51]
    ldh [rIF], a
    and b
    ldh [rLCDC], a
    ldh [$b0], a
    ldh a, [$58]
    ld hl, sp-$54
    db $fc
    call nc, Call_056_6afc
    ld a, [hl]
    scf
    add hl, hl
    ld b, e
    rra
    ld de, $0f09
    ld a, [bc]
    rla
    inc e
    dec a
    ld [hl+], a
    ld a, $21
    inc e
    ld e, $ba
    ld bc, $002b
    add b
    inc hl
    ret nz

    dec de
    jr nz, jr_056_4c16

    jr nc, @-$4e

    jr @-$26

    inc e
    ld e, [hl]
    rra
    sbc a
    rla
    sub a
    rla
    ld d, a
    inc sp
    inc sp
    di
    di
    inc sp
    or a
    add e
    rst $00
    add l
    push hl
    adc b
    ld hl, sp+$70
    ld [hl], b
    adc [hl]
    ld bc, $0033
    inc bc
    sub a

jr_056_4c16:
    bit 0, e
    ret nz

    ld b, b
    inc bc
    add b
    add b
    add b
    add b
    db $ec
    dec l
    add h
    rst $38
    push bc
    ld [bc], a
    dec bc
    jp $0702


    ld bc, $78f8
    ld b, e
    ld a, h
    inc a
    ld b, e
    inc a
    inc e
    ld [$181c], sp
    inc e
    jr c, jr_056_4c70

    ld [hl], b
    ld [hl], b

jr_056_4c3a:
    ret nz

    ret nz

    db $ec
    daa
    rst $38
    db $ec
    ld sp, $2011
    ld h, b
    jr nc, @-$6e

    ld hl, sp-$78
    ld a, h
    ld b, h
    inc a
    ld [hl+], a
    ld e, [hl]
    ld d, d
    ld c, a
    ld c, c
    ld c, a
    ld c, b
    rlca
    add h
    ld b, e
    add e
    add d
    add hl, bc
    add c
    pop hl
    add c
    sbc c
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, b
    ld b, b
    dec h
    jr nz, jr_056_4c87

    ld b, b
    inc b
    ld b, c
    add b
    add [hl]
    add b
    sbc b
    ld [hl], a
    ld bc, $0301

jr_056_4c70:
    inc hl
    inc b
    nop
    nop
    and e
    and a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc hl
    ld bc, $0000
    call nz, $e092
    ld [hl+], a
    ld bc, $0001
    ld [bc], a
    nop

jr_056_4c87:
    inc b
    nop
    ld [$0809], sp
    ld bc, $1210
    rla
    inc hl
    jr z, jr_056_4c3a

    or b
    rst $00
    ldh [$c7], a
    ld b, b
    bit 0, b
    rst $20
    jr nz, @+$6d

    and b
    ld [hl], a
    sub b
    rst $38
    sub b
    scf
    ret z

    ccf
    ld b, h
    ld b, b
    ld a, a
    rlca
    ld a, l
    jp nz, Jump_056_4d72

    db $fc
    adc a
    ldh a, [$9f]
    ld h, l
    ld b, $10
    stop
    jr z, jr_056_4cc0

    jr z, jr_056_4cda

    inc h
    inc h
    nop
    jr nz, jr_056_4ce3

    ld [hl+], a

jr_056_4cc0:
    ld [$2121], sp
    and c
    and c
    ld h, c
    ld h, c
    jr nc, @+$22

    nop
    add $9a
    add e
    call c, $850b
    add b
    add d
    add b
    ld b, e
    ld b, e
    ld b, h
    ld b, a
    ld c, b
    ld c, a

jr_056_4cd9:
    pop af

jr_056_4cda:
    ld a, $43
    jp $0a3c


    rst $20
    jr @+$01

    add b

jr_056_4ce3:
    rst $38
    ld b, b
    rst $18
    jr nz, @+$01

    jr nz, jr_056_4cd9

    ld b, h
    db $10
    rst $38
    nop
    rst $30
    ld c, d
    ld [$01ff], sp
    ld e, l
    xor d
    jp $0180


    db $10
    rst $38
    adc [hl]
    nop
    inc h
    ld bc, $1020
    inc h
    ld d, b
    nop
    ld [$8825], sp
    ld [bc], a
    ld [$8808], sp
    dec h
    ld [$21e0], sp
    xor b
    ld [$0c5c], sp
    or d
    ld e, $75
    ld a, e
    sbc a
    ld sp, hl

jr_056_4d18:
    ld a, [hl]
    push bc
    ccf
    call nz, Call_056_42ff

jr_056_4d1e:
    db $db
    ld h, $ed
    ld a, [de]
    rst $28
    ld de, $11ff
    rst $18
    ld hl, $21fe
    rst $28
    db $10
    rst $38
    ld [$07f9], sp
    and h
    db $e3
    nop
    db $10
    add e
    db $eb
    dec c
    cp $11
    push af
    ld a, [bc]
    xor [hl]
    ld d, l
    ld e, e
    xor a
    or c
    ld e, a
    ld bc, $42ff
    rst $38
    db $ec
    dec l
    ldh [$31], a
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ret nz

    jr z, jr_056_4d1e

    jr z, jr_056_4d18

    inc b
    add h
    ld b, h
    adc h
    ld c, h
    ret z

    adc d
    jp nz, Jump_056_42a2

    and d
    ld [c], a
    sub d
    db $e3
    sub a
    rst $30
    adc h
    db $ed
    sbc e
    jp c, $9cb6

    db $f4
    xor b
    db $fd
    xor b

Jump_056_4d72:
    cp $50
    ld hl, sp+$10
    ldh a, [rNR41]
    ld hl, sp+$20
    and $ec
    ld b, e
    ld de, $0602
    rrca
    add hl, de
    ld a, c
    rst $20
    adc $3e
    ld [hl+], a
    ld a, [c]
    add d
    jp nz, $0200

    inc b
    inc a
    nop
    call nz, $0823
    inc hl
    db $10
    ld bc, $2020
    rst $38
    ld [hl], l
    rrca
    ld b, $0e
    add hl, bc
    add hl, bc
    nop
    ld [$0404], sp
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld bc, $7101
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    ld b, e
    ld a, [bc]
    ld c, $01
    add hl, bc
    rrca
    ld b, l
    ld de, $021f
    inc de
    rla
    inc bc
    ld b, e
    ld [hl+], a
    inc hl
    ld [bc], a
    inc h
    daa
    inc h
    ld b, h
    ld b, a
    ld b, h
    ld [$8766], sp
    cp $85
    db $fd
    adc c
    ld sp, hl
    adc b
    ld hl, sp+$79
    dec de

jr_056_4dd3:
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_056_4e39

    jr jr_056_4dd3

    inc b
    db $fc
    ld [bc], a
    cp $81
    rst $38
    add b
    cp $40
    ld a, [hl]
    ld b, b
    ld a, h
    jr nz, jr_056_4e21

    db $10
    db $10
    ld [$0208], sp
    ld b, $83
    pop af
    ldh [rNR51], a
    add c
    add e
    ld h, a
    ld h, a
    ld e, $1f
    or [hl]
    cp b
    ld e, h
    ld h, b
    db $ec
    sbc b
    cp l
    ld a, h
    ld a, [hl]
    db $fc
    rst $38
    ld hl, sp-$01
    ld h, b
    db $fd
    inc bc
    db $f4
    inc c
    ldh a, [rNR10]
    ldh [rNR41], a
    add b
    ld c, b
    call c, $9c5c
    ld e, h
    ldh [$28], a
    ldh a, [$90]
    db $ec
    jr z, jr_056_4e3e

    add b
    nop
    nop
    ld [hl+], a
    ld b, b

jr_056_4e21:
    jr jr_056_4e43

    jr nz, @+$42

    jr nz, @-$46

    inc e
    sub $83
    ld b, e
    ld sp, hl
    xor a
    rst $38
    ld e, a
    rst $38
    adc l
    inc bc
    rrca
    nop
    rra
    nop
    xor a
    nop
    ld e, [hl]

jr_056_4e39:
    ld bc, $43fd
    inc bc
    rst $38

jr_056_4e3e:
    rlca
    ld bc, $80ff
    ld e, a

jr_056_4e43:
    ld h, b
    rrca
    db $10
    rrca
    ld b, e
    ld [$0707], sp
    inc b
    rlca
    inc b
    inc bc
    inc b
    rrca
    ld [$f400], sp
    dec hl
    ldh [rP1], a
    ld bc, $0225
    dec d
    inc b
    inc b
    ld b, $04
    push hl
    db $e4
    sbc [hl]
    sbc h
    db $fd
    ld hl, sp-$01
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    ldh [rLY], a

jr_056_4e72:
    rst $38
    ldh a, [rP1]
    ldh [rKEY1], a
    rst $38
    nop
    nop
    rst $38
    sbc b
    call z, $c583
    inc c
    ld [$1008], sp
    jr jr_056_4e85

jr_056_4e85:
    dec a
    ld hl, $413f
    ld a, a
    add b
    rst $38
    add d
    ld b, h
    cp $02
    inc bc
    inc b
    db $fc
    ld [$a378], sp
    nop
    sub b
    nop
    and b
    ld [hl+], a
    jr nz, @+$0d

    ret nz

    ld b, b
    add b
    add b
    pop bc
    pop bc
    pop hl
    pop af
    ld sp, hl
    jp hl


    cp $f6
    ld b, e
    cp $fa
    rlca
    db $fc
    ld a, h
    cp b
    ld a, b
    db $fd
    dec a
    sbc $3e
    ld b, e
    cp $1e
    add hl, bc
    db $fc
    inc e
    rst $38
    rra
    call c, $f83c
    jr c, jr_056_4e72

    ld [hl], b
    sbc c
    nop
    ld h, h
    jp $0280


    add b
    add b
    nop
    ret c

    nop
    jp hl


    ld [bc], a
    jr nz, jr_056_4f32

    sub b
    ld b, h
    or b
    db $10
    ld [bc], a
    ld [$08f8], sp
    ld b, h
    ld hl, sp-$78
    ld bc, $c480
    dec h
    add h
    nop
    ld b, b
    ld [hl+], a
    ld b, d
    dec b
    jp nz, Jump_056_42c2

    ld e, [hl]
    ld b, c
    ld a, a
    ld b, e
    ld hl, $ff3f
    ld h, c
    ld b, $07
    ld bc, $0405
    ld b, $04
    inc bc
    ld [hl+], a
    ld [bc], a
    inc hl
    ld bc, $257f
    ld bc, $0000
    ld b, h
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    ld h, $07
    rla
    inc bc
    rlca
    ld bc, $6003
    ld h, b
    cp b
    sbc b
    sub $86
    xor a
    add c
    ld e, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    inc c
    inc bc
    inc bc
    and e
    or c
    dec c
    ld [hl], b
    ld h, b
    xor [hl]
    inc c
    ld d, l
    ld bc, $00bf

jr_056_4f32:
    ld a, a
    nop
    cp a
    nop
    rst $38
    add b
    add h
    sbc e
    ld [bc], a
    jr jr_056_4f44

    inc b
    adc b
    db $eb
    ldh [$2a], a
    inc bc
    nop

jr_056_4f44:
    inc c
    nop
    stop
    inc hl
    ld b, c
    ld b, l
    add c
    adc c
    add d
    add e
    ld [bc], a
    inc sp
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    ld b, $ff
    ld c, $ff
    call Call_056_79fd
    add hl, sp
    cp b
    jr jr_056_4fb8

    ld [$08b8], sp
    rst $38
    add a
    cp h
    add a
    cp $83
    cp $c3
    ld a, a
    ld b, c
    ld b, e
    ccf
    ld hl, $1f0d
    ld de, $888f
    rst $18
    ld e, b
    rst $30
    inc a
    di
    ld e, $f8
    rrca
    ldh a, [rIF]
    ld l, c
    dec de
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ccf
    jr nc, jr_056_4fa5

    ld c, $07
    rlca
    jr @+$01

    jr nz, @+$41

    and d
    sub b
    ld d, b
    rst $38
    nop
    inc c
    dec b
    rst $38

jr_056_4fa5:
    ld a, [bc]
    rst $38
    or a
    rst $38
    ld a, a
    ld a, a
    rra
    ccf
    rlca
    rrca
    rst $38
    ld b, h
    rst $38
    nop
    dec b
    ldh [rIE], a
    ld h, b
    ld a, a

jr_056_4fb8:
    ld b, b
    ld a, a
    ld b, a
    add b
    rst $38
    call nz, $00c0
    rst $38
    cp e
    nop
    jr jr_056_4fc9

    rst $20
    ld h, a
    ret c

    ld a, a

jr_056_4fc9:
    nop
    ld e, b
    rst $38
    nop
    ld b, $40
    rst $38
    xor b
    rst $38
    push de
    rst $38
    ld_long a, $ff28
    inc bc
    ld e, $ff
    ld [$43f8], sp
    inc b
    db $fc
    dec c
    ld [bc], a
    cp $42
    cp $41
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ld [hl], b
    rst $38
    add sp, -$11
    ld l, a
    ld [$1818], sp
    inc h
    inc a
    ld [hl+], a
    ld a, $42
    ld a, [hl]
    ld b, c
    add l
    ld bc, $0111
    rst $38
    ld bc, $ff5c
    nop
    inc b

jr_056_5003:
    ld d, l
    rst $38
    xor a
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    inc bc
    cp $ff
    ldh a, [$f8]
    ld l, l
    rlca

jr_056_5011:
    ret nz

    ret nz

    jr c, jr_056_5011

    rlca
    rst $38
    ld a, a
    rst $38
    cp a
    nop
    inc d
    dec b
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_056_5003

    ld b, e
    db $10
    ldh a, [rSCX]
    ld [$05f8], sp
    nop
    db $fc

jr_056_502c:
    inc h
    db $fc
    inc e
    db $fc
    ld b, e
    inc d
    db $f4
    inc b
    inc a
    db $f4
    jr jr_056_502c

    jr c, @+$45

    ld hl, sp-$10
    inc b
    ldh a, [$e0]
    ldh [$80], a
    ret nz

    sub [hl]
    cp a
    ld [bc], a
    ret nz

    ldh a, [$f8]
    rst $38
    ld l, [hl]
    ld bc, $1010
    inc hl
    jr jr_056_5053

    inc e
    inc l
    inc a

jr_056_5053:
    inc l
    ld b, e
    ld a, $2e
    ld [bc], a
    ccf
    cpl
    ccf
    ld b, l
    ld b, a
    ld a, a
    ld de, $7f43
    ld b, a
    ld e, h
    ld l, a
    ld b, b
    scf
    jr nz, @+$2d

    ld hl, $3f23
    ld hl, $113f
    rra
    db $10
    rra
    ld b, e
    ld [$050f], sp
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $6101
    call nz, $0181
    inc bc
    inc bc

jr_056_5081:
    dec h
    rlca
    dec h
    rrca
    daa
    rra
    nop
    ccf
    ld h, a
    ld [bc], a
    inc bc
    rlca
    nop
    ld b, h
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $006a
    add b
    and e
    cp d
    add hl, bc
    ldh [$a0], a
    ret nz

    jr nz, jr_056_5081

    db $10
    ldh a, [$30]
    ldh a, [$78]
    and l
    or e
    nop
    ld hl, sp+$24
    db $fc
    ld b, e
    ld a, b
    db $fc
    ld [bc], a
    dec sp
    rst $38
    sbc a
    ld b, e
    rst $38
    rst $18
    inc l
    rst $38
    dec c
    cp a
    rst $38
    rst $08
    rst $38

jr_056_50bd:
    push af
    rst $38
    ld a, [$e5ff]
    rst $30
    jp nz, $81e3

    jp $dfa8


    ld a, [de]
    ret nz

    jr nc, jr_056_50bd

    ld a, b
    db $fc
    ld a, [hl]
    cp $3f
    rst $38
    rra
    rst $38
    adc a
    rst $38
    add a
    db $fc
    ld b, e
    ld a, b
    ld b, l
    ld [hl], b
    dec hl
    ld sp, $1b1f
    rlca
    rlca
    ld bc, $6f03
    inc hl
    ld bc, $0208
    rlca
    ld [$e21f], sp
    rst $38
    ld b, l
    rst $38
    xor e
    jr nc, @+$01

    ld b, l
    cp $ff
    inc bc
    db $fd
    rst $38
    db $fd
    di
    ld b, e
    rst $38
    db $ed
    ld [hl], b
    add e
    nop
    add c
    nop
    jr nz, jr_056_5149

    ldh a, [rNR10]
    add l
    nop
    adc [hl]
    ld c, $fd
    db $fd
    db $fc
    rst $38
    jr nc, @+$01

    jr nz, jr_056_5153

    jr nz, jr_056_5195

    ld [hl], h
    ld a, a
    ld l, e
    ld a, a
    ld [hl], l
    jr z, @+$01

    add e
    nop
    ret nc

    ld [bc], a
    cp a
    rst $38
    ld e, a
    ld l, $ff
    ld b, e
    ei
    rst $38
    dec c
    jp $3bff


    rst $38
    pop hl
    db $e3
    pop bc
    pop hl
    ret nz

    pop bc
    ret nz

    ret nz

    add b
    ret nz

    sub e
    nop
    push hl
    dec d
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    ld b, $04
    rlca
    nop
    rrca
    add hl, bc
    rrca
    db $d3

jr_056_5149:
    rst $38
    daa
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld a, $fe
    db $d3

jr_056_5153:
    ld bc, $0314
    cp $fe
    ldh a, [$f8]
    ld h, $e0
    nop
    ldh a, [$a5]
    nop
    ld d, b
    ld bc, $e0f8
    ld b, [hl]
    ld hl, sp-$28
    ldh [$2c], a
    call c, $e4f8
    db $fc
    db $fc
    ld a, h
    cp $00
    inc b
    inc b
    inc c
    inc c
    ld e, $14
    ld a, $26
    ld a, [hl]
    ld c, [hl]
    cp $8e
    cp $9e
    cp $1e
    cp $3c
    cp $bc
    ld a, [hl]
    ld a, h
    inc a
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b

jr_056_5195:
    add b
    or d
    ld bc, $0280
    add b
    nop
    add b
    db $ec
    inc hl
    rst $38
    ld l, c
    dec b
    ld b, $0e
    db $10
    rra
    inc e
    rra
    inc hl
    rrca
    dec b
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $6701
    add hl, bc
    ld bc, $0601
    rlca
    ld [$070f], sp
    rlca
    ld bc, $ec01
    ccf
    ld a, [bc]
    ldh [$e0], a
    inc e
    db $fc
    inc bc
    rst $38
    pop de
    rst $38
    ld [$f5ff], a
    inc h
    rst $38
    ld a, [bc]
    ld a, a
    ld a, a
    ccf
    ccf
    ld l, e
    ld a, a
    add l
    rst $38
    dec bc
    rst $38
    rra
    inc h
    rst $38
    ld de, $1f1f
    rla
    rra
    dec hl
    ccf
    dec [hl]
    ccf
    dec hl
    ccf
    ld b, l
    ld a, a
    ld b, e
    ld a, a
    ld b, h
    ld a, h
    jr c, jr_056_5226

    ld h, c
    add l
    nop
    inc d
    add e
    add l
    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    rrca
    dec c
    rrca
    ld a, [de]
    rra
    dec d
    rra
    dec sp
    jr z, jr_056_5241

    ld bc, $1f1f
    ld h, l
    ld bc, $3030
    ld b, e
    ld c, b
    ld a, b
    ld [$f898], sp
    call c, $bcfc
    db $fc
    ld a, a
    rst $38
    cp a
    ld [hl-], a
    rst $38
    nop
    cp $2e
    rst $38
    ld a, [bc]
    ccf
    ccf
    inc a
    inc a
    jr c, jr_056_529f

    ld a, b
    ld a, b
    db $fc

jr_056_5226:
    db $fc
    db $fd
    and h
    db $fd
    ld [de], a
    cp $fe
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    add sp, -$01
    ldh a, [rIE]
    ld a, [$c7a4]
    ld h, a

jr_056_5241:
    ld [$0303], sp
    dec c
    rrca
    ld [de], a
    rra
    ld b, c
    ld a, a
    ld [c], a
    call nz, Call_056_7700
    add hl, de
    push af
    rst $38
    db $eb
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    db $db
    rst $38
    cp e
    db $fd
    sbc $d8
    cp e
    cp h
    ld a, $3c
    ccf
    inc a
    rra
    jr @-$5f

    sub b
    ld b, e
    rst $38
    ldh [$09], a
    rst $28
    ld hl, sp-$09
    rst $08
    rst $38
    ldh [$1f], a
    jr jr_056_527d

    rlca
    and l
    cp c
    inc bc
    add l
    add l
    rrca

jr_056_527d:
    rrca
    jp $bf00


    ld [bc], a
    ld a, a
    ld a, a
    cp $44
    rst $38
    ld a, a
    ld [$ff3f], sp
    scf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    xor h
    rst $18
    add hl, bc
    ld h, b
    ldh [$a0], a
    ldh [$60], a
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

jr_056_529f:
    inc hl
    add b
    ld bc, $e0e0
    and l
    nop
    and b
    add hl, bc
    inc c
    rrca
    ldh [$f0], a
    and b
    nop
    ld c, a
    nop
    cp a
    nop
    ld c, c
    rst $38
    nop
    rlca
    cp a
    ld a, [hl]
    db $fd
    add l
    ld hl, sp+$18
    ldh [$60], a
    and l
    nop
    ld a, [hl+]
    ld a, [bc]
    ret nz

    ret nz

    ret c

    ret c

    xor h
    db $fc
    ld d, [hl]
    cp $ab
    rst $38
    ld d, a
    and e
    db $db
    adc d
    nop
    add sp, -$5d
    di
    db $ec
    ld hl, $400a
    ret nz

    jr nz, jr_056_52fb

    db $10
    db $10
    ret nz

    db $10
    add sp, $08
    add sp, $46
    ld [$43f8], sp
    ldh a, [rNR10]
    ld [bc], a
    ldh [$a0], a
    ld b, b
    sub $98
    inc bc
    add b
    ret nz

    nop
    nop
    xor c
    nop
    ld a, [hl+]
    rst $38
    db $ec
    add hl, sp
    ldh [rNR51], a

jr_056_52fb:
    ld bc, $0201
    ld [bc], a
    ld c, $0e
    ld de, $1e11
    jr jr_056_5343

    ld sp, $467e
    db $fd
    add b
    cp $98
    ld a, a
    ld [hl], c
    ld a, $22
    ccf
    dec sp
    rlca
    rlca
    ld c, $0c
    dec d
    db $10
    ld [de], a
    db $10
    rra
    jr jr_056_535d

    ld hl, $203f
    sbc [hl]
    jp nz, $0101

    nop
    ld b, e
    ld [bc], a
    nop
    ld [hl+], a
    inc b
    nop
    nop
    ld [hl+], a
    ld [$1022], sp
    inc b
    ld a, [de]
    db $10
    dec d
    jr nz, @+$3c

    ld b, l
    jr nz, jr_056_5379

    rra
    ldh [rIE], a
    db $10
    rra
    jr nc, @+$21

    ld e, b
    rrca

jr_056_5343:
    ld hl, sp+$7f
    db $fc
    add a
    cp a
    rra
    ld h, e
    ld hl, $f0f5
    dec sp
    jr @+$61

    inc bc
    xor a
    inc c
    ld e, a
    db $10
    xor a
    jr nz, @+$59

    ld b, b
    xor a
    add b
    ld b, h
    rst $38

jr_056_535d:
    nop
    nop
    ld [$1475], sp
    inc c
    inc c
    inc sp
    ccf
    push bc
    rst $38
    ld c, [hl]
    ld a, a
    inc sp
    ld a, a
    ld b, $7f
    ld [bc], a
    rst $38
    ld bc, $015f
    ccf
    nop
    ld e, a
    nop
    add e
    add e

jr_056_5379:
    inc bc
    cp a
    nop
    ld a, a
    nop
    ld c, [hl]
    rst $38
    nop
    dec bc
    ld a, [bc]
    rst $38
    sub l

jr_056_5385:
    rst $38
    ld a, [$fd6f]
    rst $20
    rst $38
    ccf
    rst $38
    db $e3
    ld b, h
    rst $38
    nop
    inc c
    jr nz, @+$01

    jr @+$01

    inc c
    rst $38
    rlca
    rst $38
    add d
    rst $38
    call Call_056_70ff
    ld [hl], l
    db $10
    ret nz

    ret nz

    jr nz, jr_056_5385

    ld e, b
    ld hl, sp-$78
    ld hl, sp+$44
    db $fc
    add h
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld bc, $ff44
    add b
    ld [bc], a
    ld b, b
    rst $38
    ld b, b
    ld b, e
    rst $38
    jr nz, jr_056_5407

    rst $38
    db $10
    ld b, e
    jr nz, @+$01

    dec e
    or h
    rst $38
    ld e, a
    ei
    rst $38
    xor c
    rst $38

jr_056_53ca:
    or d
    rst $38
    rra
    push af
    or b
    ld [$f7e0], a
    ld h, d
    ld [$d742], a
    ld b, h
    rst $38
    and h
    rst $38
    ld e, h
    rst $38
    xor h
    rst $38
    ld d, a
    rst $38
    ld a, [bc]
    db $f4
    add hl, hl
    nop
    ld [de], a
    rrca
    add b
    add b
    ld b, b
    ret nz

    ld b, c
    pop bc
    ld e, [hl]
    sbc $2b
    ld [c], a
    dec [hl]
    pop hl
    cpl
    and $3f
    ld hl, sp+$43
    ccf
    ldh [$15], a
    ld a, a
    sub $7f
    pop hl
    rst $38
    ret nc

    rst $38
    ld sp, hl
    rst $38
    add h
    rst $38
    rrca
    rst $38

jr_056_5407:
    ret nz

    ld a, a
    jr nc, jr_056_53ca

    ld [$025f], sp
    cp a
    ld bc, $0184
    db $10
    ld b, $20
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    jp nz, $2fec

    dec bc
    ret nz

    ret nz

    ld h, b
    jr nz, @-$06

    sbc b
    db $fc
    inc b
    ld hl, sp-$38
    ldh a, [$30]
    ld b, e
    ldh [rNR41], a
    dec de
    ret c

    ret c

    db $fc
    db $e4
    db $fc
    adc h
    db $fc
    inc c
    cp $1a
    cp $9a
    cp $4a
    cp $f2
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    adc l
    rst $38
    ld b, a
    cp $22
    rst $38
    daa
    ld b, e
    rst $38
    ld bc, $ecff
    cpl
    rlca
    inc bc
    inc bc
    inc b
    dec b
    inc b
    rlca
    ld [bc], a
    inc bc
    dec h
    ld bc, $0308
    inc bc
    dec b
    dec b
    nop
    add hl, bc
    ld [$0008], sp
    ld h, $10
    ld de, $3d28
    ld [$445a], sp
    ld c, l
    inc bc
    add a
    add b
    add e
    add b
    ret nz

    add b
    and b
    ld b, b
    ld d, l
    ld b, b
    ld l, d
    ld [hl], l
    ld bc, $0301
    inc hl
    inc b
    nop
    dec c
    ld b, h
    ld [$430f], sp
    rlca
    inc b
    ldh [rNR43], a
    dec bc
    ld a, [de]
    dec b
    dec h
    dec b
    ld b, l
    ld b, l
    ld c, l
    ld b, l
    ld a, l
    add e
    rst $38
    add d
    rst $38
    add h
    cp a
    inc b
    rra
    ld bc, $003f
    ld e, a
    nop
    cpl
    nop
    ld e, a
    ld bc, $86af
    rst $18
    jr c, @+$01

    nop
    ld a, a
    nop
    add e
    adc a
    nop
    xor a
    add h
    add e
    ld b, $7f
    nop
    rst $38
    pop bc

jr_056_54b8:
    rst $38
    ld a, $ff
    push bc
    adc a
    ld [hl], e
    dec d
    ld h, b
    ldh [$38], a
    jr jr_056_5543

    rlca
    rst $38
    inc bc
    db $fc
    inc c
    ldh a, [rNR10]
    ret nz

    jr nz, jr_056_54b8

    nop
    push af
    nop
    ld l, d
    add b
    push af
    add b
    ld b, [hl]
    rst $38
    nop
    ld c, $c0
    ccf
    jr nz, @+$41

    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh a, [rVBK]
    ld hl, sp-$79
    db $fc
    ld b, e
    inc bc
    cp $43
    ld bc, $17ff
    ld d, c
    rst $38
    and c
    rst $38
    ld d, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $40ff
    rst $38
    and b
    rst $38
    ld [hl], l
    dec b
    rra
    rra
    rst $38
    ldh [rTAC], a
    nop
    ld b, e
    inc bc
    nop
    rlca
    rlca
    nop
    adc a
    nop
    ld e, a
    nop
    cp a
    nop
    add sp, $22
    rst $38
    nop
    ld [bc], a
    add b
    ld a, a
    ret nz

    ld b, e
    ccf
    ldh [$0d], a
    rra
    ldh a, [$9f]
    ldh a, [$5f]
    ldh a, [$8f]
    ld hl, sp+$4f
    ld hl, sp-$71
    ld hl, sp+$1f
    ldh a, [$75]
    dec bc
    add $ce
    di
    ld sp, $c0c7

jr_056_553d:
    rst $08
    nop
    rst $38
    inc c
    rst $38
    ld [de], a

jr_056_5543:
    ld b, [hl]
    rst $38
    jr nz, jr_056_5549

    add hl, de
    rst $38

jr_056_5549:
    ld b, $b1
    pop de
    ld bc, $01ff
    res 0, c
    inc b
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [$a6]
    nop
    xor d
    ld bc, $00ff
    ld b, h
    rst $38
    ld b, b
    nop
    jr nz, jr_056_55da

jr_056_5563:
    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    ld b, l
    ldh [rNR41], a
    ld b, h
    ret nz

    ld b, b
    and e
    nop
    ld sp, $a00b
    sub b
    db $10
    sub b
    ld d, b
    ret z

    jr c, jr_056_5563

    jr z, jr_056_553d

    ld b, h
    inc b
    ld [hl+], a
    add h
    dec bc
    inc b
    inc b
    jr jr_056_559e

    ld [$0828], sp
    adc b
    sub b
    sub b
    and b
    ldh [rNR43], a
    ret nz

    inc bc
    ld b, b
    ld h, b
    jr nz, jr_056_55c5

    ld [hl+], a
    db $10
    rlca
    cp b
    ld [$0858], sp
    cp h
    inc b

jr_056_559e:
    db $fc
    inc b
    ld b, l
    cp $02
    rst $38
    db $ec
    ld [$0114], a
    inc bc
    rlca
    rrca
    rrca
    rra
    rra
    dec de
    dec de
    ld a, $3e
    ld a, a
    ld a, a
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rra
    ld e, $43
    rra
    ld [de], a
    inc bc
    ld c, $09
    rlca
    rlca
    ld h, c

jr_056_55c5:
    dec de
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    inc d
    rra
    ld [hl+], a
    ccf
    ld hl, $413f
    ld a, a
    ld b, d
    ld a, a
    ld d, d
    ld a, a

jr_056_55da:
    sub a
    rst $38
    sub [hl]
    rst $38
    adc a
    rst $38
    add l
    rst $38
    ld b, e
    ld b, d
    ld a, a
    rlca
    ld b, c
    ld a, a
    inc hl
    ccf
    inc l
    ccf
    jr @+$21

    ld b, e
    jr nz, jr_056_5630

    add hl, bc
    ld de, $101f
    rra
    ld [$070f], sp
    rlca
    ld b, $05
    ld b, h
    rrca
    ld [$0903], sp
    rrca
    add hl, bc
    ld de, $9783
    ld [bc], a
    jr nz, jr_056_5628

    rra
    ld h, d
    add hl, bc
    ld bc, $0303
    ld c, $0e
    inc e
    inc e
    jp c, $effe

    ld b, h
    rst $38
    rst $30
    ldh [rNR51], a
    rst $38
    rst $38
    db $dd
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $30
    ld a, $e7
    rst $38
    pop bc
    xor l

jr_056_5628:
    or d
    cp a
    add e
    cp $00
    ld a, [$7d04]

jr_056_5630:
    sbc c
    sbc $e6
    db $fc
    sbc h
    ld [hl], d
    sbc $39
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    add a
    ld bc, $4387
    ld b, b
    rst $38
    nop
    add b
    ld b, h
    rst $38
    nop
    inc b
    add b
    rst $38
    ld sp, hl
    rst $38
    rra
    ld b, h
    rst $38
    nop
    nop
    ret nz

    ld b, h
    rst $38
    ld b, c
    nop
    ld b, e
    ld b, h
    rst $38
    inc bc
    rlca
    dec b
    rst $38
    dec c
    rst $38
    db $fd
    rst $38
    ld e, c
    rst $10
    ld b, e
    adc a
    adc c
    add hl, bc
    ccf
    ld sp, $3f26
    sbc b
    sbc b
    add a
    add a
    add b
    add b
    ld h, e
    ld bc, $8080
    ld l, b
    ld a, [de]
    ret nz

    ldh [$e0], a
    adc b
    ld hl, sp-$1c
    db $fc
    cp b
    ld hl, sp-$70
    ldh a, [$c8]
    ld hl, sp-$1c
    db $fc
    db $fc
    ld a, h
    or b
    ld [hl], b
    pop bc
    ld b, c
    ld b, d

jr_056_568f:
    ld b, e
    add d
    add d
    ld [bc], a
    ld [bc], a
    and a
    and l
    dec c
    add c
    add c
    add e
    add d
    add d
    add e
    ld b, a
    push bc
    rst $18
    call c, $faef
    ld c, l
    ld a, [$4743]
    rst $38
    ld a, [bc]
    add e
    rst $38
    jp nz, $ceff

    cp $f0
    ldh a, [$a0]
    ldh [$a0], a
    ld c, d
    ldh [rNR41], a
    ld [bc], a
    ld h, b
    ldh [$c0], a
    call nz, $a7cd
    ld bc, $0308
    db $10
    db $10
    ldh [$e0], a
    db $ec
    ld hl, $e00f
    ldh [rNR10], a
    ldh a, [$c8]
    add sp, -$58
    cp b
    ld l, b
    ld a, b
    db $10
    db $10
    pop hl
    pop hl
    ld [bc], a
    inc bc
    ld b, e
    inc b
    rlca
    dec bc
    call nz, $e2c4
    and d
    pop hl
    and c
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    add b
    db $ec
    ld e, e
    ld a, [bc]
    ret nz

    ret nz

    jr nz, jr_056_568f

jr_056_56ef:
    db $10
    ldh a, [$d0]
    ret nc

    ld [hl], b
    ld [hl], b
    jr nz, jr_056_56ef

    ld a, [hl-]
    adc b
    rst $38
    db $ec
    inc sp
    ld [bc], a
    ld [$0418], sp
    ld [hl+], a
    inc h
    ld a, [bc]
    inc b
    ld b, h
    ld b, h
    ld c, h
    ld b, a
    ld c, a
    ld b, h
    ld e, a
    inc b
    sbc a
    add h
    ld b, e
    sbc a
    add d
    inc b
    cp a
    add d
    cp a
    add e
    cp a
    ld b, e
    add c
    rst $38
    ld c, c
    ld b, b
    ld a, a
    inc bc
    dec h
    ccf
    ld a, [hl+]
    ccf
    ld [hl], e
    rrca
    jr nc, @+$3e

    ld [hl+], a
    inc sp
    db $10
    jr @+$0a

    ld c, $08
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $6f01
    ld d, $01
    inc bc
    inc b
    inc c
    nop
    stop
    ld hl, $c848
    ld [$1039], sp
    ldh a, [rNR10]
    pop af
    jr nz, @-$04

    ld b, h
    rst $38
    adc b
    rst $38
    and b
    ld b, [hl]
    rst $38
    nop
    ld [bc], a
    add b
    rst $38
    add b
    ld b, h
    rst $38
    ld b, b
    dec b
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld h, e
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld b, [hl]
    dec b
    inc b
    ld bc, $0400
    inc hl
    ld [bc], a
    inc c
    nop
    ld [bc], a
    ld bc, $c101
    pop hl
    add hl, de
    dec e
    inc bc
    add e
    ld bc, $01e3
    add h
    or c
    ld b, e
    ld b, b
    ld a, a
    ld b, e
    jr nz, jr_056_57c0

    ld a, [de]
    db $10
    rra
    ld [de], a
    rra
    inc e
    rra
    ldh [$e3], a
    nop
    rlca
    nop
    dec hl

jr_056_578e:
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, [hl]
    nop
    xor h
    nop
    ld e, h
    inc b
    db $fd
    inc b
    rst $38
    inc b
    ld b, h
    rst $38
    ld [bc], a
    nop
    ld bc, $ff51
    nop
    and a
    nop
    adc l
    dec c
    add b
    ld b, b
    ret nz

    jr nz, jr_056_578e

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc bc
    ld a, a
    ld bc, $7f43
    nop
    ld bc, $007f
    ld d, [hl]
    rst $38
    nop

jr_056_57c0:
    ld b, $0c
    rst $38
    inc bc
    rst $38
    nop
    ld sp, hl
    nop
    ld b, e
    ldh a, [rP1]
    inc b
    db $fd
    nop
    ld a, [$fd00]
    add l
    sub l
    nop
    db $10
    ld b, h
    rst $38
    ld [$8400], sp
    ld b, h
    rst $38
    inc b
    ld b, e
    ld a, [bc]
    ei
    inc b
    add hl, bc
    ld sp, hl
    inc b
    db $fc
    inc b
    and l
    nop
    ld e, a
    ld bc, $0810
    inc h
    jr z, @+$03

    ld [$4358], sp
    ld b, h
    ld e, h
    add hl, bc
    inc b
    sbc h
    add h
    cp h
    inc b
    inc a
    ld [bc], a
    ld a, $02
    cp [hl]
    ld b, e
    ld [bc], a
    cp $00
    ld bc, $01d0
    dec e
    and l
    nop
    or h

jr_056_580a:
    dec c
    add l
    db $fd
    ld e, l
    ld sp, hl
    inc a
    ld h, b
    ld a, $60
    ld e, $b0
    ld e, $70
    rra
    ldh a, [rBGP]
    rrca
    ld hl, sp+$43
    rlca
    db $fc
    ld bc, $ff03
    add l
    or l
    dec b
    ld a, [bc]
    rst $38
    sub l
    rst $38
    xor d
    rst $38
    ld a, c
    rlca
    ld [bc], a
    rlca
    add hl, bc
    add hl, de
    ld hl, $8263
    adc [hl]
    and l
    nop
    ld [$00b4], a
    ld a, h
    inc h
    add b
    nop
    nop
    inc h
    ld b, b
    nop
    nop
    inc hl
    jr nz, jr_056_580a

    ld bc, $8b2c
    ld bc, $0122
    sub b
    ldh a, [rIE]
    ld [hl], l
    ld a, [bc]
    inc d
    nop
    ld a, [hl+]
    nop
    rla
    nop
    ld l, $00
    dec d
    nop
    ld a, [bc]
    ld h, d
    add hl, bc
    inc bc
    inc bc
    rlca
    inc b
    ld c, $09
    dec c
    ld a, [bc]
    ld b, $04
    ld b, e
    rrca
    ld [$1f45], sp
    db $10
    inc bc
    daa
    jr c, jr_056_58b1

    jr nc, jr_056_58b7

    ld a, a
    ld b, b
    dec b
    ld a, l
    ld b, d
    ld h, $39
    jr nz, jr_056_58bc

jr_056_587d:
    ld b, l
    db $10
    rra
    inc de
    add hl, bc
    rrca
    dec bc
    ld c, $3c
    scf
    dec a
    ld b, d
    ld a, [hl]
    ld b, c
    ld sp, hl
    add [hl]
    ld hl, sp-$79
    ld [hl], c
    adc [hl]
    ld b, d
    ld a, l
    ld b, c
    ld a, [hl]
    ld [hl], e
    ld [bc], a
    dec b
    nop
    ld [bc], a
    add h
    add e
    ld h, c
    rla
    ld bc, $0301
    ld [bc], a
    dec e
    ld e, $7e
    ld h, c
    rst $38
    add b
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    ld b, $ff

jr_056_58b1:
    add hl, bc
    rst $38
    db $10
    or $19
    ld b, h

jr_056_58b7:
    ld hl, sp+$0f
    ldh [rNR50], a
    rlca

jr_056_58bc:
    ldh a, [rIF]
    xor b
    ld d, a
    ld d, b
    xor a
    add c
    ld a, a
    rlca
    db $fc
    ld a, [de]
    ldh a, [$75]
    ldh [$ea], a
    add b
    push af
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld d, a
    xor b
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld l, e
    ld a, [bc]
    ld d, $00
    dec hl
    nop
    rla
    nop
    cpl
    nop
    ccf
    nop
    ld e, $64
    ld b, $e0
    ldh [$f0], a
    db $10
    ret z

    jr c, jr_056_587d

    call nz, $01b0
    ret nz

    ccf
    ld b, [hl]
    ldh [$1f], a
    dec b
    cp a
    nop
    rst $38
    nop
    rst $38
    inc b
    ld b, h
    rst $38
    ld [$050f], sp
    rst $38
    ld c, $fe
    ccf
    ld a, [c]
    db $fd
    add [hl]
    ld e, [hl]
    add hl, bc
    xor l
    ld [bc], a
    ld d, [hl]
    ld bc, $00af
    ld d, b
    rst $38
    nop
    ld [bc], a
    dec d
    ld a, a
    add d
    ld h, e
    dec bc
    dec bc
    nop
    ld d, l
    nop
    dec hl
    nop
    ld d, a
    nop
    xor e
    nop
    rst $18
    nop
    ld b, e
    cp a
    nop
    nop
    adc [hl]
    ld l, [hl]
    dec b
    ld b, b
    ret nz

    inc l
    db $ec
    ld [hl], d
    cp $45
    ld bc, $05ff
    ld [bc], a

jr_056_5940:
    cp $15
    rst $38
    add hl, hl
    rst $38
    jp $11b8


    dec b
    rst $38
    ld [$bcff], a
    rra
    ld [hl], a
    rra
    call $023a
    db $fd
    dec b
    ld a, [$54ab]
    ld e, a
    and b
    ld c, [hl]
    rst $38
    nop
    inc bc
    ld bc, $46fb
    rst $38
    ld h, [hl]
    ld bc, $0080
    ld b, e
    ret nz

    nop
    call nz, $ec81
    ld h, $27
    add b
    add e
    nop
    jp c, $fb05

    rra
    rst $38
    inc b
    db $fc
    inc bc
    ld b, l
    rst $38
    nop
    xor b
    nop
    or b
    ld b, $e2
    ld a, [$f41d]
    rrca
    ldh [$1f], a
    db $ec
    ld b, e
    and e
    nop
    ld a, [hl]
    ld de, $20e0
    db $10
    ldh a, [$90]
    ld [hl], b
    ldh [$30], a
    ret nc

    jr nc, jr_056_5940

    ld e, b
    ld e, b
    xor b
    and h
    ld e, h
    inc b
    db $fc
    ld b, l
    ld [bc], a
    cp $ff
    db $ec
    jr c, jr_056_59c9

    ld bc, $020c
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    inc hl
    jr nz, jr_056_59dd

    ld b, b
    add hl, hl
    add b
    ld bc, $4040
    ldh a, [rNR44]
    ret z

    dec e
    ld b, $06
    rra
    jr c, @-$3f

    ret nz

    dec c

jr_056_59c9:
    inc sp
    inc b
    inc c
    ld bc, $0210
    jr nz, jr_056_59e8

    ld b, b
    cpl
    add b
    cp $81
    db $fd
    ld [bc], a
    ld [$5715], a
    xor e
    cp b

jr_056_59dd:
    ld e, b
    ret nz

    ret nz

    adc [hl]
    xor l
    rlca
    nop
    ld a, [bc]
    nop
    dec d
    nop

jr_056_59e8:
    ld a, [hl+]
    nop
    ld d, l
    add l
    add e
    ld a, h
    rra
    ld b, $0f
    ld sp, $4f30
    ld b, b
    cp a
    add b
    cp $01
    di
    rrca
    or d
    ld [hl], c
    adc a
    add b
    ccf
    nop
    ld a, e
    inc b
    rst $30
    ld [$18e7], sp
    db $d3
    inc l
    xor l
    ld e, [hl]
    ld [hl], d
    or e
    jp $83c1


    rlc b
    ld d, l
    and h
    add c

jr_056_5a15:
    inc b
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    add h
    add e
    ld [bc], a
    ld b, c
    nop
    xor b
    add h
    sub e
    ld b, $45
    db $10
    add b
    ld a, [hl+]
    ld bc, $8255
    sbc b
    ldh [$e0], a
    ld b, a
    jr jr_056_5a49

    inc h
    inc [hl]
    ld d, $1a
    sub a
    rst $18
    xor d
    ld a, b
    ld e, l
    or b
    cp [hl]
    ld h, b
    rst $08
    ldh a, [rPCM34]
    adc b
    ld c, e
    inc b
    and l
    ld [bc], a
    ld b, d
    ld bc, $00a1

jr_056_5a49:
    ret nc

    nop
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    ld [hl], l
    add b
    cp d
    ret nz

    db $fd
    ld b, b
    ld e, [hl]
    ld h, b
    cp a
    jr nz, @+$71

    jr nc, jr_056_5a15

    jr jr_056_5abb

    inc d
    xor a
    ld [$0c5b], sp
    xor l
    ld a, [bc]
    ld d, [hl]
    dec b
    xor l
    rlca
    ld d, [hl]

jr_056_5a6c:
    ld b, $ac
    dec c
    ld d, b
    ld [de], a
    add sp, $64
    add b
    sub b

jr_056_5a75:
    nop
    jr nz, jr_056_5a6c

    ld hl, $6400
    ldh [$29], a
    inc de
    inc de
    adc a
    inc c
    ld e, h
    dec bc
    db $ec
    rlca
    push af
    rlca
    ld_long a, $ff06
    inc bc
    ld a, [hl]
    add e
    ld a, e
    add a
    cp [hl]
    ld b, l
    dec a
    ld b, [hl]
    rst $10
    ld l, $5a
    cpl
    cp $2b
    ld h, l
    dec sp
    db $fd

jr_056_5a9c:
    inc de
    rst $38
    ld de, $09ff
    cp $09
    rst $38
    ld [$08f7], sp
    ld b, h
    rst $38
    inc b
    dec c
    push bc
    ld a, $6e
    ld [hl], b
    or b
    jr nz, jr_056_5ad3

    ld b, b
    ld b, [hl]
    ld b, b
    ld e, b
    ld bc, $82e0
    db $f4
    ld [hl+], a

jr_056_5abb:
    nop
    ld h, c
    ld bc, $4040
    ld b, e
    ld b, b
    ret nz

    push bc
    add [hl]
    dec d
    add b
    add b
    ldh [$60], a
    jr nc, jr_056_5a9c

    sbc b
    add sp, $48
    add sp, $38
    ld l, b
    ld [hl], b

jr_056_5ad3:
    jr nc, jr_056_5a75

    jr nz, jr_056_5ad7

jr_056_5ad7:
    and b
    ld b, b
    and b
    and b
    ldh [$85], a
    nop
    ld d, d
    dec d
    add [hl]
    add [hl]
    sbc c
    sbc c
    pop hl
    db $e3
    adc c
    add l
    ld [de], a
    ld [hl+], a
    inc b
    ld b, h
    ld b, h
    add h
    ld c, b
    ld [$10b0], sp
    ld [hl], b
    db $10
    ldh [rNR41], a
    rst $38
    db $ec
    dec hl
    inc bc
    ld bc, $0101
    ld bc, $61ec
    inc de
    inc bc
    inc bc
    inc a
    ccf
    ld b, [hl]
    ld a, a
    cp a
    rst $38
    rst $00
    rst $38
    adc c
    rst $38
    add hl, hl
    rst $38
    xor e
    rst $38
    ld a, l
    ld a, a
    ld b, $06
    db $ec
    dec sp
    ld c, $01
    ld bc, $0706
    ld [$100f], sp
    rra
    jr nz, jr_056_5b59

    ld b, h
    ld a, [hl]
    add h
    rst $38
    ld l, b
    ld b, h
    ld a, a
    ld c, b
    rrca
    ld d, l
    ld a, a
    ld a, [hl+]
    cpl
    rlca
    ld b, $0a
    add hl, bc
    rrca
    add hl, bc
    rlca
    rlca
    ld hl, sp-$06
    jr nz, @-$1c

    ld b, e
    ld bc, $15e1
    ld [$0cfa], a
    inc c
    rla
    rra
    inc de
    rra
    ld hl, $203f
    cpl
    ld b, b
    ld a, e
    add b
    rst $38
    ld h, h
    ld a, a
    ld a, [hl+]
    dec sp
    ld de, $2911
    ld bc, $25f0

jr_056_5b59:
    nop
    inc l
    ldh [$30], a
    ld h, b
    ld h, b
    sub b
    ldh a, [rIF]
    rst $38
    inc b
    rst $38
    jr nc, @+$01

    ld c, d
    rst $38
    ld l, l
    rst $38
    xor e
    rst $38
    db $eb
    rst $38
    rst $38
    db $dd
    rst $38
    add c
    ld a, a
    add c
    ld a, l
    ld b, e
    ld a, [hl]
    ld b, [hl]
    cp $02
    rst $38
    jr nz, @+$71

    sbc h
    di
    push bc
    ld a, $36
    jr @+$1a

    nop
    ld h, [hl]
    nop
    ld a, a
    nop
    db $e3
    nop
    cp $30
    inc hl
    rst $38
    rra
    rst $28
    ld a, a
    rst $00
    ld b, b
    ld hl, sp-$80
    add b
    inc bc
    add e
    inc b
    rlca
    ld [$100b], sp
    sbc e
    sub b
    sbc h
    ldh a, [$7d]
    ldh a, [$1f]
    ld a, e
    adc a
    ccf
    rst $38
    dec e
    rst $38
    sbc h
    cp $9e
    cp $5e
    inc hl
    ld a, [hl]
    ld b, e
    ld a, a
    ccf
    ld [hl+], a
    ccf
    ld [bc], a
    rra
    ccf
    rla
    inc h
    rra
    dec b
    inc de
    rra
    ld de, $0e1f
    ld c, $ad
    nop
    call c, $0802
    ld hl, sp+$24
    ld b, h
    db $fc
    inc d
    rrca
    inc h
    db $fc
    ld h, h
    db $fc
    ld c, b
    ld hl, sp-$18
    cp b
    ld [hl], b
    ldh a, [$df]
    ld c, a
    ld a, [$31cb]
    ld sp, $0122
    ld b, $21
    ld e, $3f
    jr nc, jr_056_5c67

    ld c, b
    ld c, a
    ld b, e
    call nz, $01c7
    add d
    add d
    add e
    nop
    db $e4
    add hl, bc
    add a
    add a
    ld b, b
    ld b, b
    ldh [$e0], a
    ld h, b
    ldh [rNR41], a
    ldh [rLYC], a
    db $10
    ldh a, [$03]
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$5d
    ld bc, $030e
    sub b
    ldh a, [$60]
    ld h, b
    xor [hl]
    nop
    dec e
    db $f4
    jr z, jr_056_5c15

    daa

jr_056_5c15:
    ld h, c
    ld b, $f0
    ldh a, [rNR34]
    cp $0f
    rst $38
    rra
    ld [hl+], a
    rst $38
    dec bc
    sbc a
    sbc a
    ld b, e
    jp $f010


    inc c
    db $fc
    ld [bc], a
    cp $04
    cp h
    ld b, e
    inc b
    db $fc
    dec b
    jr @-$06

    and b
    ldh [rLCDC], a
    ld b, b
    db $ec
    ld d, e
    dec b
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    inc hl
    ld hl, sp+$03
    cp b
    ld hl, sp-$10
    ldh a, [$ec]
    ccf
    rst $38
    ld [hl], l
    dec b
    ld bc, $0001
    ld bc, $0302
    inc hl
    ld [bc], a
    ld bc, $0301
    ld [hl+], a
    ld bc, $0705
    nop
    ld [$1100], sp
    ld b, $22
    rla
    dec b
    dec bc
    rrca
    inc b
    rlca

jr_056_5c67:
    inc bc
    inc bc
    db $ec
    inc hl
    ld bc, $2020
    ld b, l
    ld d, b
    ld [hl], b
    inc c
    ld c, a
    ld a, a
    ld h, b
    ld h, a
    add b
    add a
    nop
    rrca
    ld bc, $829f
    cp $43
    and h
    add c
    ld de, $df42
    add c
    cp a
    nop
    ld a, a
    nop
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    cpl
    rst $28
    pop bc
    pop bc
    nop
    ld bc, $2bec
    dec c
    add b
    add b
    ld h, c
    db $e3
    inc e
    db $fd
    jr nc, @+$01

    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc hl
    ccf
    ld b, e
    and b
    cp a
    ldh [rNR42], a
    and c
    cp a
    add e
    cp a
    nop
    rst $38
    inc e
    rst $38
    dec bc
    rst $38
    ld sp, $b0ff
    rst $08
    ld a, h
    rlca
    inc a
    dec de
    cp $e1
    ld a, $8f
    ld [hl], c
    ld e, a
    jr nz, jr_056_5ceb

    nop
    daa
    inc b
    ld b, a
    ld b, h
    ld c, a
    ld b, e
    ld a, a
    ld b, e
    jr nz, jr_056_5d0e

    inc bc
    db $10
    rra
    inc c
    rrca
    sub e
    nop
    ld [hl-], a
    dec b
    ld b, b
    ret nz

    jr nz, @+$62

    ld b, b
    ret nz

    push bc
    call nc, $c019
    ldh [rNR13], a
    sub e
    ld l, a
    db $ec
    sbc a
    sub b
    inc a
    inc hl

jr_056_5ceb:
    di
    call z, $f02f

jr_056_5cef:
    db $fc
    jp $9c63


    rst $38
    rst $20
    jr nc, jr_056_5cef

    ld [$04f8], sp
    db $fc
    ld b, e
    ld [bc], a
    cp $00
    add c
    ld b, [hl]
    rst $38
    ld b, c
    ld bc, $ff81

jr_056_5d06:
    ld b, e
    ld [bc], a
    cp $05
    inc b
    db $fc
    jr jr_056_5d06

jr_056_5d0e:
    ldh [$e0], a
    ldh a, [rNR44]
    nop
    adc [hl]
    inc bc
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, e
    ret nz

    ld b, b
    ld bc, $8080
    ld hl, sp+$23
    adc d
    and e
    xor [hl]
    ld bc, $0400
    add l
    nop
    ld h, $0c
    rlca
    rrca
    dec bc
    rrca
    ld b, e
    ld a, a
    jp nz, $11ff

    ccf
    ld [$007f], sp
    ld b, h
    rst $38
    ld [$1105], sp
    rst $38
    ld l, a
    rst $28
    add b
    add c
    adc l
    xor a
    ld [hl+], a
    ld bc, $0f06
    nop
    stop
    ld hl, $2f0c
    ld b, e
    ld l, $3f
    dec b
    ld h, $3f
    ld de, $061f
    ld b, $69
    adc c
    nop
    ld [hl], b
    add e
    nop
    ld a, b
    ld bc, $f733
    adc l
    ld bc, $1100
    ld e, $9e
    ld a, l
    di
    or e
    xor l
    ld l, [hl]
    ld d, c
    sbc $e1
    add hl, sp
    rst $20
    and $da
    inc e
    db $ec
    ldh a, [$f0]
    add a
    nop
    ld h, b
    ld [bc], a
    nop
    sbc a
    nop
    ld b, h
    rst $38
    nop
    ld bc, $ff42
    adc l
    nop
    ld [hl], d
    add a
    nop
    or b
    inc b
    ld bc, $02ff
    cp $03
    ld b, h
    rst $38
    nop
    inc bc
    ld hl, $c3ff
    rst $38
    adc c
    nop
    add $ff
    ld h, l
    ldh [rNR44], a
    jr nz, jr_056_5dc2

    ld d, b
    ld d, b
    ld c, h
    ld c, h
    add d
    add e
    ld b, b
    ld b, b
    jr nz, jr_056_5dcc

    ld a, b
    ld e, h
    ld [hl], b
    ld d, e
    ld a, b
    ld c, b
    inc a
    inc h
    ld a, a
    ld b, e
    ccf
    jr nc, jr_056_5dc8

    add hl, bc
    rlca
    ld b, $0f
    ld [$101f], sp
    rrca
    dec bc

jr_056_5dc2:
    rlca
    inc b
    add e
    add a
    add hl, bc
    ccf

jr_056_5dc8:
    jr nz, jr_056_5e09

    jr nc, jr_056_5e0b

jr_056_5dcc:
    jr nz, jr_056_5e4d

    ld b, c
    ld a, [hl]
    ld b, d
    ld b, e
    db $fc
    add h
    ld b, e
    ld hl, sp-$78
    ld b, e
    ld [hl], b
    ld d, b
    nop
    ld [hl], b
    jp nz, $6dbc

    inc bc
    ld bc, $0201
    inc bc
    ld b, e
    inc b
    rlca
    ld bc, $0f08
    ld l, l
    dec b
    ret nz

    ret nz

    jr c, jr_056_5e2c

    inc bc
    inc bc
    ld h, l
    inc c
    rlca
    add a
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $feff
    cp $a3
    add a
    ld [$fc03], sp
    inc c
    ldh a, [$30]

jr_056_5e09:
    ret nz

    ld b, b

jr_056_5e0b:
    add b
    add b
    adc a
    rlc c
    ld bc, $2201
    ld [bc], a
    dec bc
    inc bc
    inc b
    ld b, $08
    dec c
    db $10
    ld a, [de]
    jr nz, jr_056_5e53

    ld b, b
    ld a, e
    add b
    ld c, c
    rst $38
    nop
    nop
    rst $38
    ld [hl], c
    nop
    rst $38
    add h
    sub e
    inc bc

jr_056_5e2c:
    ccf
    ccf
    rst $38
    ret nz

    ld b, [hl]
    rst $38
    nop
    ld a, [bc]
    rst $38
    ld d, l
    xor e
    xor d
    ld d, a
    ld d, h
    xor a
    adc b
    rst $38
    ld hl, sp-$01
    ld b, e
    db $10
    rra
    ld b, l
    jr nz, @+$41

    inc de
    ld b, b
    ld e, a
    ld b, b
    ld l, a
    ld b, b
    ld d, a
    add b

jr_056_5e4d:
    xor a
    add b
    rst $10
    nop
    xor a
    nop

jr_056_5e53:
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    add e
    add e
    nop
    nop
    ld b, e
    rst $38
    nop
    sbc h
    rst $18
    ld [de], a
    nop
    add b
    ld [hl], b
    ld a, b
    rlca
    rlca
    add b
    add b
    rst $38
    ld a, a
    push de

jr_056_5e6f:
    nop
    ld [c], a
    nop
    push af
    nop
    rst $38
    ret nz

    cp a
    ld c, [hl]
    rst $38
    nop
    ld b, e
    ld bc, $c2ff
    add c
    ld e, l
    rst $38
    nop
    nop
    ld a, [$f3a4]
    nop
    db $f4
    ld [hl], a
    rra
    ret nz

    ldh [rNR10], a
    jr jr_056_5e6f

    db $e4
    ld a, [$7f1a]
    rlca
    rst $38
    ld bc, $c0ff
    ccf
    ld hl, sp+$1f
    cp $31
    di
    ld a, c
    ld sp, hl
    ld a, b
    ld sp, hl
    db $fc
    rst $38
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f0]
    inc hl
    ldh [$0d], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rLY]
    ld bc, $02e1
    pop bc
    ld [bc], a
    jp nz, $0243

    add d
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [hl+], a
    ld bc, $00c3
    and l
    db $ec
    inc hl
    add hl, bc
    cp h
    cp h
    cp $42
    rst $00
    ld b, c
    rst $08
    add c
    ld a, [hl]
    ld b, [hl]
    ld b, e
    ld hl, sp-$38
    dec bc
    ld [hl], b
    ld d, b
    jr nc, jr_056_5f13

    ld [hl], b
    ld d, b
    ld a, b
    ld c, b
    ld a, h
    inc b
    ld a, b
    jr c, jr_056_5f11

    ld b, b
    cp e
    ret


    rst $38
    db $ec
    ld c, e
    inc hl
    ld bc, $030f
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    dec b
    inc c
    add hl, bc
    ld [bc], a
    add hl, bc
    inc d
    inc de
    ld [$3513], sp
    ld [hl+], a
    ld l, [hl]
    ld h, $01
    nop
    nop
    sbc $aa
    ld d, $01
    ld bc, $0202

jr_056_5f11:
    ld b, $04

jr_056_5f13:
    ld bc, $0a04
    inc c
    dec d
    jr jr_056_5f1d

    inc d
    jr nz, jr_056_5f48

jr_056_5f1d:
    ld b, b
    ld d, a
    nop
    ld l, a
    add b
    rst $18
    nop
    ld c, d
    rst $38
    nop
    ld b, $0c
    di
    ld a, $c1
    rst $38
    nop
    rst $38
    push bc
    jp $0205


    jr jr_056_5f71

    ld [bc], a
    ld b, d
    ld bc, $8522
    nop
    inc b
    ld b, [hl]
    ld b, $02
    ld [hl+], a
    inc b
    inc h
    add h
    inc bc
    inc b
    ld b, h
    ld b, b
    ld b, h

jr_056_5f48:
    inc hl
    ld b, d
    ld bc, $2202
    and h
    adc l
    inc d
    dec sp
    ld c, c
    ld b, $5f
    ld b, b
    adc a
    nop

jr_056_5f57:
    sbc a
    add b
    cpl
    nop
    ld e, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld b, e
    rlca
    ld hl, sp+$43
    inc bc
    db $fc
    rlca
    inc b
    rst $38
    ld [$10fe], sp

jr_056_5f71:
    ld hl, sp+$1e
    rst $38
    ld b, e
    jr nz, jr_056_5f57

    ldh [rNR52], a
    nop
    ret nz

    ld b, b
    pop bc
    ld b, d
    jp nz, $8405

    adc b
    adc b
    ld h, e
    rst $20
    db $10
    jr @+$0a

    add hl, bc
    dec b

jr_056_5f8a:
    dec b
    inc b
    ld d, $14
    inc d
    ld hl, $2229
    ld [hl-], a
    ld [bc], a
    ld [hl+], a
    rlca
    ld b, a
    ld b, h
    ld b, h
    ld c, b
    ld c, b
    ld [HeaderRAMSize], sp
    sub c
    sub b
    ld [hl+], a
    sub d
    ld [bc], a
    add b
    inc h
    and h
    ld [hl+], a
    inc h
    inc c
    jr nz, jr_056_5fe3

    ld a, [hl+]
    ei
    inc c
    db $fc
    add sp, $18

jr_056_5fb1:
    db $fc
    inc b
    call c, $b23e
    ld b, e

jr_056_5fb7:
    db $76
    ld a, [c]
    ldh [$28], a
    ld a, d
    ld a, [$fe7c]
    ld a, l
    cp e
    ld a, l
    db $fc
    ld a, [hl-]
    jp nc, $e73e

    dec d
    add a
    ld h, l
    rlca
    adc c
    rrca
    adc c
    ld c, $0a
    inc c
    inc c
    ld [$0008], sp
    ld [$9c8c], sp
    ld a, [hl]
    ld h, b
    ld a, [hl]
    add d
    cp $02
    db $fd
    dec b
    ld e, [hl]
    ld c, $b8

jr_056_5fe3:
    jr jr_056_5f8a

    nop
    sub h
    inc hl
    ld b, b
    inc bc
    nop
    ret nz

    ld b, b
    ld b, b
    ld [hl+], a
    jr nz, jr_056_5ff3

    and b
    nop

jr_056_5ff3:
    jr nz, jr_056_5fb7

    adc [hl]
    xor e
    nop
    ld [hl], a
    inc b
    ld c, $29
    ld sp, $c0a0
    add h
    sub b
    inc c
    ld b, b
    inc bc
    add a
    ld [$1008], sp
    stop
    jr nz, jr_056_600c

jr_056_600c:
    ld b, b
    add b
    add b
    sub l
    nop
    add e
    rrca
    rlca
    inc b
    rrca
    nop
    rla
    db $10
    ld l, a
    jr nz, jr_056_5fb1

    add b
    dec hl
    nop
    dec d
    ld bc, $0606
    db $ec
    dec h
    db $f4
    ld [hl+], a
    nop
    ld [hl], b
    ld [de], a
    jr nc, @+$32

    ld c, b
    ld hl, sp-$78
    ldh a, [rNR32]
    db $fc
    ld [bc], a
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    add e
    ld bc, $ffb8
    ld a, b
    inc hl
    ld bc, $0200
    ld b, e
    ld [bc], a
    inc bc
    ld b, e
    inc b
    rlca
    ld b, e
    dec b
    ld b, $04
    dec bc
    inc c
    rrca
    ld [$430f], sp
    db $10
    rra
    inc c
    jr nz, jr_056_609a

    jr nz, @+$31

    jr nc, @+$57

    ld l, d
    ld l, d
    ld d, l
    ld d, l
    ld l, d
    adc d
    push af
    ld b, a
    add b
    rst $38
    ld b, l
    ld b, b
    ld a, a
    dec c
    jr nz, jr_056_60ae

    ld a, [hl+]
    ccf
    dec d
    rra
    ld a, [de]
    rra
    dec c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    push de
    pop bc
    ld de, $1e0e
    add hl, sp
    ld h, a
    db $fc
    add e
    ldh a, [rIF]
    db $e3
    rra
    adc a
    ld a, h
    ccf
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    ld c, e
    rst $38
    nop
    rlca
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]

jr_056_609a:
    xor d
    ld d, l
    and e
    add c
    inc b
    ld d, b
    xor a
    add b
    ld a, a
    nop
    ld c, h
    rst $38
    nop
    ld [$ff01], sp
    ld a, [bc]
    rst $38
    ld d, l
    rst $38

jr_056_60ae:
    xor d
    rst $38
    ld e, a
    ld h, $ff
    ld bc, $7f7f
    or l
    nop
    dec b
    rlca
    ld b, b
    ret nz

    ccf
    rst $38
    ld a, a
    add c
    ei
    ld b, $47
    rst $38
    nop
    inc de
    cp $01
    push af
    ld a, [bc]
    ld [$d415], a
    dec hl
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    and c
    ld e, [hl]
    inc bc
    db $fc
    ld b, e
    rlca
    ld hl, sp+$07
    rrca
    ld hl, sp+$2f
    ld hl, sp+$2b
    db $fc
    ld d, $fd
    ld b, e
    inc c
    rst $38
    ld [$ff16], sp
    cpl
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    inc l
    rst $38
    ld [hl], l
    inc bc
    inc a
    inc a
    rst $38
    jp $f845


    rlca
    add hl, bc
    ldh a, [rIF]
    ldh [$1f], a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    adc e
    nop
    and d
    rra
    ret nz

    ccf
    db $e4
    rra
    push de
    cpl
    and [hl]

jr_056_6114:
    ld e, a
    db $d3
    cpl
    and e
    ld e, a
    ld b, b
    cp a
    add e
    ld a, a
    inc c
    db $fc
    db $10
    ldh a, [rNR41]
    pop hl
    ld b, b

jr_056_6124:
    jp nz, $c26a

    call nc, $ec84
    add h
    ldh a, [$88]
    ld b, h
    ld hl, sp-$38
    dec b
    add sp, -$08
    ld hl, sp-$04
    db $fc
    nop
    cp l
    nop
    nop
    ld [bc], a
    ret nz

    ld b, b
    ret nz

    and a
    nop
    ld e, $01
    jr nz, jr_056_6124

    ld b, e
    db $10
    ldh a, [rNR24]
    jr @-$16

    jr z, jr_056_6114

    ld [$18c8], sp
    ret z

    xor h
    call nz, $8c54
    xor h
    adc h
    call z, $ac9c
    sbc h
    sbc $9f
    cp b
    sbc b
    jr nz, jr_056_61c0

    nop
    add b
    ld h, c
    ld bc, $0602
    add [hl]
    nop
    ld e, h
    ld [hl+], a
    ld b, b
    rlca
    ld hl, $2720
    jr nz, jr_056_6190

    db $10
    ld a, a
    ld [$43ec], sp
    inc b
    ret nz

    ldh [rNR10], a
    db $10
    ld [$0844], sp
    jr jr_056_6183

    cp h
    add h
    ld a, h

jr_056_6183:
    call nz, Call_056_7e43
    ld a, [hl+]
    ld b, e
    cp $12
    ld b, e
    db $fc
    inc h
    ld bc, $78f8

jr_056_6190:
    rst $38
    ld h, c
    ld b, $1c
    inc a
    ld [bc], a
    ld b, e
    ld b, b
    ld b, b
    nop
    ld h, $80
    dec c
    ld h, l
    ld b, b
    ld a, [hl+]
    ld b, b
    dec [hl]
    jr nz, jr_056_61c2

    db $10
    rrca
    ld [$0407], sp
    ld bc, $ec03
    ld b, a
    dec e
    add b
    add b
    ld b, b
    ld b, b
    add b
    jr nz, jr_056_6215

    jr nz, @-$5e

    db $10
    ld [hl], b
    db $10
    cp b
    ld [$0878], sp
    db $fc
    inc b

jr_056_61c0:
    db $fc
    ld [bc], a

jr_056_61c2:
    rst $38
    ld bc, $00ff
    ld a, a
    ldh [rIF], a
    ld e, $01
    ld bc, $006e
    ld bc, $33ec
    ld c, $1c
    inc a
    rrca
    ld b, e
    jr jr_056_621c

    ld [hl], b
    ld b, b
    ld a, b
    ld b, b

Call_056_61dc:
    ld d, h
    ld h, b
    ld l, d
    ld b, b
    push af
    ld b, h
    add b
    rst $38
    dec e
    rst $28
    ld [hl], b
    cp $0f
    rst $38
    nop
    rst $38
    ld hl, sp+$7b
    ld b, a
    ccf
    jr nz, jr_056_6229

    jr z, jr_056_6213

    jr jr_056_6205

    ld [$484f], sp
    rst $38
    or b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    rla
    jr jr_056_6247

    rrca

jr_056_6205:
    ld [$0747], sp
    inc b
    ld b, l
    inc bc
    ld [bc], a
    and e
    nop
    ld h, [hl]
    nop
    ld [bc], a
    add h
    add a

jr_056_6213:
    sub b
    nop

jr_056_6215:
    add d
    stop
    ld a, $7e
    adc a
    add c

jr_056_621c:
    inc b
    ld [bc], a
    rlca
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ld c, b

jr_056_6229:
    rst $38
    nop
    inc b
    rst $38
    rst $38
    nop
    rst $38
    cp $83
    nop
    ld a, d
    rlca
    ei
    inc b
    rst $38
    dec b
    ld a, [$f202]
    ld [bc], a
    ld b, e
    pop hl
    ld bc, $a7a3
    inc b
    ldh a, [rP1]
    ld hl, sp+$00

jr_056_6247:
    db $fc
    xor e
    xor c
    ld [$3fc0], sp
    jr nc, @+$21

    ld [$043f], sp
    rst $38
    rlca
    ld b, e
    adc $32
    rlca
    rst $20
    sbc c
    ld h, a
    ld e, c
    ld a, a
    ld b, b
    ccf
    jr nz, @+$69

    inc b
    ld a, b
    ld a, b
    adc h
    add h
    inc a
    ld b, h
    inc b
    db $fc
    ld b, $f8
    ld [$18e8], sp
    ld hl, sp+$08
    ld hl, sp-$3a
    add l
    dec bc
    ld a, h
    add h
    cp $7e
    rst $38
    ld bc, $f8ff
    rst $30
    ld d, $e1
    ld h, c
    xor c
    ld bc, $0b16
    add b
    add b
    ld h, b
    ld h, b
    db $10
    db $10
    ld [$0f08], sp
    rlca
    ccf
    inc e
    and l
    nop
    ld a, [c]
    inc de
    or $0a
    db $fc
    inc b
    cp $07
    ld hl, sp+$08
    ldh a, [$30]
    pop bc
    ldh a, [$37]
    jr c, jr_056_62b2

    add hl, bc

jr_056_62a5:
    ld b, $05
    rlca
    inc b
    ld b, e
    add e

jr_056_62ab:
    add d
    db $ec
    inc hl
    ld c, $80
    add b
    ret nz

jr_056_62b2:
    ld h, b
    ret nz

jr_056_62b4:
    db $10
    ldh [$88], a
    ld h, b
    ld b, h
    inc h
    inc h
    jr nc, jr_056_62df

    ld a, [de]
    ld b, h
    ld [de], a
    ld e, $06
    ld a, $22
    inc a
    inc h
    db $fc
    call nz, $a3f8
    nop
    rla
    call z, $05ea
    ret nz

    ld b, b
    ret nz

    jr nz, jr_056_62b4

    jr nz, jr_056_6319

    ld [hl], b
    sub b
    dec b
    jr nc, jr_056_62ab

    jr c, jr_056_62a5

    ld hl, sp+$08

jr_056_62df:
    rst $38
    db $ec
    ld a, [hl-]
    db $10
    ld bc, $0200
    inc b
    inc c
    db $10
    db $10
    add hl, sp
    jr nz, @+$41

    jr nz, @+$81

    ld b, b
    ld a, a
    ld b, c
    ld e, l
    ld h, e
    ld b, e
    ld hl, $043f
    ld [de], a
    ld e, $0f
    ld c, $02
    ld b, e
    ld [bc], a
    inc bc
    ld b, $07
    jr jr_056_633c

    inc bc
    ld b, b
    ld c, a
    ld b, b
    ld [hl], d
    rlca
    inc bc
    dec b
    dec b
    inc b
    ld a, [bc]
    ld c, $0a
    add hl, de
    ld b, h
    inc d
    dec e
    add hl, de
    rlca
    ld a, [bc]
    rra

jr_056_6319:
    ld a, [de]
    dec e
    rla
    rrca
    jr nz, jr_056_6346

    jr nz, jr_056_634b

    jr nz, @+$27

    jr nz, jr_056_6347

    jr nz, jr_056_6338

    db $10
    ld [de], a
    db $10
    dec c
    ld [$3f39], sp
    cp a
    add $43
    ccf
    nop
    dec b
    ld e, e
    ld h, $b7
    ld c, b

jr_056_6338:
    rst $38
    ld c, b
    ld b, h
    rst $38

jr_056_633c:
    sub b
    inc b
    and b
    ld e, a
    nop
    xor a
    nop
    add l
    add e
    ld a, [bc]

jr_056_6346:
    cp a

jr_056_6347:
    jr nz, @+$01

    ret nz

    ccf

jr_056_634b:
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rlca
    inc d
    ld [hl], e
    adc b
    adc h
    ld d, e
    db $10
    rst $28
    jr nz, @+$45

    rst $18
    ld b, b
    add hl, bc
    cp a
    add e
    cp a
    adc h
    cp a
    sub b
    rst $38
    ld h, b
    rst $38
    add b
    ld c, a
    rst $38
    nop
    dec c
    cp $01

jr_056_636f:
    ld hl, sp+$07
    rst $38
    inc bc
    cp $00
    call c, $8e20
    ld b, b
    rst $08
    ld b, b
    ld b, e
    rra
    add b
    ld b, $ff
    ld b, b
    rst $30
    jr z, jr_056_636f

    inc d
    cp $aa
    xor c
    ld bc, $03fd

jr_056_638b:
    sub e
    rst $18
    dec b
    ld b, b
    ret nz

    db $10
    jr nc, jr_056_638b

    ld [$00a3], sp
    ld b, h
    add hl, bc
    db $76
    ld a, [$06e2]
    pop bc
    ld bc, $01e3
    db $fc
    inc bc
    ld b, l
    ld sp, hl
    dec b
    inc b
    ld hl, sp+$05
    ld hl, sp+$04
    db $fc
    add e
    or e
    inc d
    db $10
    rst $08
    ld a, $01
    rst $38
    ldh [rIE], a
    ld sp, $0e1f
    ld c, $1c
    inc b
    ld a, $02
    rst $38
    ld bc, $00fd

Jump_056_63c1:
    cp $00
    add e
    add e
    add hl, bc
    rst $38
    ret nz

    ccf
    ldh [$bf], a
    ld a, b
    jp $8046


    ld b, c
    dec h
    add b
    inc bc
    ret nz

    ld b, b
    ldh [rNR41], a
    db $f4
    ld [hl+], a
    nop
    add hl, de
    ld [hl+], a
    add b
    inc b
    nop
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld [hl+], a
    ret nz

    ld bc, $a060
    ld b, l
    ldh [rNR41], a
    rla
    ld b, c
    jp $8580


    nop
    ld [$080c], sp
    rrca
    ld [$0407], sp
    add [hl]
    add l
    jp $ac42


    inc l
    ld e, b
    db $10
    cp c
    ld [$08f7], sp
    ld b, [hl]
    rst $38
    nop
    inc b
    add c
    inc a
    ld h, [hl]
    jr jr_056_6425

    db $ec
    add hl, sp
    add hl, bc
    jr nc, @-$0e

    nop
    ld [$8808], sp
    inc a
    inc b
    ld a, h
    inc b
    ld b, l
    cp $02
    dec b
    ld a, h
    inc b
    ld l, h
    inc d
    add sp, $18
    and e

jr_056_6425:
    db $eb
    inc bc
    ret nz

    jr nz, @-$3e

    ld b, b
    call $a301
    rst $38
    db $ec
    inc sp
    add hl, bc
    inc bc
    inc bc
    dec c
    ld c, $1a
    dec d
    dec h
    ld a, [hl-]
    ld a, [hl+]
    dec [hl]
    ld b, e
    ld b, b
    ld a, a
    dec b
    jr nc, jr_056_6481

    inc c
    rrca
    inc bc
    inc bc
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    inc b
    ld de, $0805
    dec c
    ld [$140f], sp
    dec de
    rla
    inc d
    inc de
    inc de
    db $10
    dec bc
    ld [$0805], sp
    rlca
    inc b
    ld l, e
    ld a, [bc]
    ld [bc], a
    ld b, $01
    add hl, bc
    ld [$0908], sp
    ld [$1003], sp
    inc bc
    ld b, h
    db $10
    rla
    ld b, $1f
    db $10
    rra
    jr @+$21

    db $10
    rra
    ld b, e
    jr nz, jr_056_64b7

    ld b, h

jr_056_6479:
    ld b, b
    ld a, a
    nop
    ccf
    call nz, $0c85
    rst $38

jr_056_6481:
    ldh a, [$af]
    ld e, b
    ld d, a
    xor [hl]
    and c
    ld e, a
    ld b, e
    cp a
    inc bc
    rst $38
    inc bc
    ld b, [hl]
    rst $38
    rlca
    add hl, de
    ld b, $fd
    ld sp, hl
    cp $fa
    dec e
    jp hl


    ld l, $ec
    dec hl
    and $68
    db $fc
    ld e, h
    cp [hl]
    call z, $9e6d
    adc $26
    or $23
    rst $28
    ld b, e
    rst $38
    ld b, c
    ld l, [hl]
    inc c
    add b
    ldh [$60], a
    ldh a, [rNR10]
    db $fc
    inc c
    di
    rrca
    ret nz

jr_056_64b7:
    jr nc, jr_056_6479

    nop
    ld b, e
    add b
    nop
    rlca
    ld b, e
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld c, l
    rst $38
    nop
    nop
    ld a, [hl]

jr_056_64cb:
    inc l
    rst $38
    add hl, bc
    ld b, e
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    add e
    add e
    dec c
    ld e, a
    nop
    cp h
    inc bc
    ld d, a
    inc c
    and l
    db $10
    ld c, d
    jr nz, jr_056_64cb

    jr nz, jr_056_654a

    ret nz

    ld [hl], d
    ld a, [bc]
    ld bc, $0202
    add h
    db $e4
    db $fc
    jr jr_056_6571

    nop
    ld a, a
    nop
    ld e, b
    rst $38
    nop
    inc bc
    ld bc, $f7ee
    ld hl, sp+$46
    rst $38
    ldh a, [rSCX]
    ld hl, sp-$01
    ld [bc], a
    inc a
    rst $38
    ld b, $44
    rst $38
    ld bc, $0310
    db $fd
    ld a, a
    add c
    rst $38
    ld bc, $c2fe
    rst $38
    scf
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    inc bc
    cp a
    ld l, [hl]
    ld a, [bc]
    ld [$2c18], sp
    ld h, h
    sbc h
    add h
    ld e, $02
    ld a, $02
    ld a, [hl]
    ld b, [hl]
    ld [bc], a
    cp $45
    db $fc
    inc b
    ld [bc], a
    cp $02
    cp $8a
    adc a
    dec bc
    ld hl, sp+$78
    sub $ae
    dec hl
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec b
    ld a, [$f087]
    dec b
    inc bc
    rst $38
    rra
    rst $38

jr_056_654a:
    rst $38
    pop hl
    ld b, l
    ld a, [hl]
    ld b, d
    dec bc
    inc e
    ld [hl], h
    ld e, $8e
    sbc a
    ld bc, $003f
    cp a
    add b
    rst $38

jr_056_655b:
    ld [hl], b
    db $ec
    add hl, sp
    dec b
    ret nz

    ret nz

    and b
    ld h, b
    db $10
    ldh a, [rSCX]
    ld [$04f8], sp
    jr nc, jr_056_655b

    ldh [$e0], a
    add b
    rlc b
    rst $08

jr_056_6571:
    ld bc, $0204
    ld [hl+], a
    ld a, [bc]
    dec b
    sub e
    sub c
    and a
    and c
    cp $c2
    rst $38
    ld a, l
    dec bc
    ld b, $0e
    rrca
    ld de, $131c
    ld [$060f], sp
    rlca
    ld bc, $ec01
    daa
    jp $09a8


    rra
    jr jr_056_65d3

    jr nz, @+$81

    ld b, b
    ld a, [hl]
    ld b, c
    db $fd
    add d
    ld [hl], c
    ldh [$27], a
    ld [$1c18], sp
    inc h
    ld a, $22
    rla
    add hl, de
    inc de
    inc e
    dec bc
    inc c
    add hl, bc
    ld c, $85
    add [hl]
    ld h, h
    rst $20
    ld a, [de]
    ei
    ld b, $ff
    rlca
    rst $38
    adc c
    rst $38
    ld d, b
    ld a, a
    jr nz, jr_056_65fb

    jr z, jr_056_65f5

    ld d, l
    ld l, e
    ld l, d
    ld d, l
    ld d, h
    ld l, e
    jr nz, jr_056_6605

    ld b, e
    db $10
    rra
    ld [bc], a
    inc h
    ccf
    jr nz, jr_056_6612

    ccf
    inc h
    ld bc, $392e

jr_056_65d3:
    ld b, e
    ld e, $11
    inc de
    inc a
    inc hl
    ld a, b
    ld b, a
    ld hl, sp-$79
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld b, b
    cp a
    cp e
    nop
    jr c, jr_056_65fa

    ret nz

    ld b, b
    ldh [rNR41], a
    ret c

    inc e

jr_056_65f5:
    db $eb
    inc bc

jr_056_65f7:
    ld [hl], l
    add b
    ld a, l

jr_056_65fa:
    add e

jr_056_65fb:
    ld b, e
    ld a, $c1
    ld b, e
    ld a, a
    add b
    ld b, h
    rst $38
    nop
    inc c

jr_056_6605:
    add b
    rst $38
    add b
    ld a, [hl]
    pop bc
    ld a, h
    jp $c778


    jr c, jr_056_65f7

    inc a
    db $e3

jr_056_6612:
    ld b, l
    ccf
    ldh [$0b], a
    rra
    ldh a, [rIF]
    rst $38
    nop

jr_056_661b:
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    jr jr_056_661b

    jp $01b4


    ld b, b
    ret nz

    inc hl
    add b
    db $f4
    inc hl
    nop
    jr z, jr_056_663d

    ldh [$f0], a
    ld hl, sp+$08
    cp h
    call c, $726e
    add hl, de
    rra
    inc d
    sub a
    rrca
    adc h
    adc a

jr_056_663d:
    ld a, b
    ld b, e
    rst $38
    nop
    ld b, e
    ccf
    ret nz

    dec bc
    ld a, a
    add b
    ld a, h
    sbc a
    db $e3
    db $e3
    ld hl, sp-$68
    ld a, h
    add l
    rst $38
    inc bc
    ld b, [hl]
    rst $38
    nop
    ld c, $e0
    ld e, a
    ld hl, sp-$55
    cp $d5
    rst $38
    ld a, [hl-]
    ld a, a
    dec c
    rra
    inc b
    rlca
    ld [bc], a
    inc bc
    db $f4

jr_056_6665:
    dec h
    rst $18
    add hl, bc
    inc bc
    inc bc
    inc b
    inc b
    add hl, de
    jr jr_056_66ee

    ld h, b
    rst $38
    add b
    ld b, a
    rst $38
    nop
    dec bc
    cp $01
    ld sp, hl
    rlca
    ld [c], a
    ld e, $84
    ld a, h
    db $10
    ld hl, sp-$40
    ldh [$83], a
    nop
    ret c

    rrca
    ld h, b
    ld h, b
    ret nc

    ret nc

    or h
    ld [hl], h
    ld_long a, $ff1a
    rlca
    ld a, [$fe06]
    ld [bc], a
    cp $01
    call nz, $f000
    ld b, $c0
    ld a, a
    pop bc
    ld a, $e2
    inc e
    db $ec
    db $f4
    inc hl
    nop
    cpl
    add e
    nop
    call c, $f007
    db $10
    ld hl, sp-$38
    ret c

    jr c, @-$06

    inc b
    and e
    nop
    ld e, b
    dec b
    xor $f2
    db $f4
    db $fc
    jr jr_056_66f3

    ld [hl], e
    rlca
    and b
    and b
    ret nc

    ret nc

    sub b
    sub b
    jr nz, jr_056_6665

    ld b, e
    ret nz

    ld b, b
    add l
    ld bc, $ff1e
    db $ec
    ld d, e
    inc bc
    ld bc, $0403
    inc b
    ld [hl+], a
    ld [$1003], sp
    jr @+$12

    inc e
    ld b, e
    jr nz, jr_056_671c

    rra
    ld h, b
    ld l, a
    ld [hl], b
    ld e, a
    ld d, b
    ld d, a
    ld d, b
    scf
    jr nc, jr_056_670b

    jr nz, jr_056_6705

    jr jr_056_66f7

    inc c
    inc e

jr_056_66ee:
    rla
    db $10
    inc d
    inc d
    ld [de], a

jr_056_66f3:
    rrca
    dec bc
    rrca
    ld a, [bc]

jr_056_66f7:
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    inc hl
    ld bc, $0244
    inc bc
    inc bc
    ld [bc], a

jr_056_6705:
    inc bc
    nop
    inc bc
    jp nz, $ce89

jr_056_670b:
    cp [hl]
    inc bc
    ld a, [hl]
    cp $3f
    ld bc, $1f45
    nop
    ldh [rSTAT], a
    ccf
    nop
    rst $38
    nop
    db $fc
    inc bc

jr_056_671c:
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra

jr_056_6722:
    rst $30
    rla
    and $27

jr_056_6726:
    rst $30
    jr c, jr_056_6726

jr_056_6729:
    inc bc
    cp $1f
    daa
    ld hl, sp-$0f
    ld [hl], b
    ret z

    ld a, h
    add l
    rst $38
    ld b, a
    cp h
    ld h, a
    sbc h
    ld a, a
    adc b
    ld a, e
    adc h
    cp e
    ld c, a
    or [hl]
    ld e, c
    or a
    reti


    ld e, e
    db $fd
    db $76
    db $fd
    ld h, l
    sbc $73
    cp $1f
    adc [hl]
    inc de
    adc [hl]
    or c
    adc a
    ldh a, [rIE]
    cp l
    adc a
    ld h, [hl]
    ld e, [hl]
    jr c, jr_056_6790

    ld h, l
    add hl, bc
    add b
    add b
    ldh [$60], a
    ret nc

    jr nc, jr_056_6729

    jr c, @-$76

    ld a, b
    ld b, l
    inc b
    db $fc
    ld bc, $fc84
    ld b, e
    adc b
    ld hl, sp+$19
    inc d
    db $fc
    ld h, d
    cp $82
    cp $e1
    rra
    pop af

jr_056_6777:
    rrca
    ld a, [$fc06]
    inc e
    db $e4
    db $fc
    call z, $d43c
    inc a
    and h
    ld a, h
    ld h, h
    call c, $1ce4
    ld b, e
    add sp, $18
    ld b, e
    ret z

    jr c, jr_056_679a

    ret nc

jr_056_6790:
    jr nc, jr_056_6722

    ld [hl], b
    and b
    ld h, b
    jr nz, jr_056_6777

    ld b, b
    ret nz

    add b

jr_056_679a:
    add b
    db $ec
    ld e, h
    inc b
    ld bc, $0602
    nop
    ld [$1022], sp
    inc bc
    jr nz, jr_056_67d8

    jr nz, @+$3b

    ld b, e
    ld b, b
    ld a, a
    ld d, $c0
    rst $18
    ldh [$bf], a
    and b
    xor a
    and b
    ld l, a
    ld h, b
    ld b, a
    ld b, b
    scf
    jr nc, @+$29

    jr c, @+$3a

    cpl
    add hl, de
    db $10
    add hl, bc
    inc c
    rrca
    dec bc
    add e
    nop
    ld a, h
    ld h, e
    dec b
    db $fc
    db $fc
    ld a, e
    rlca
    ld a, $01
    ld b, e
    ccf
    nop
    dec e
    ld a, a
    nop
    cp $01

jr_056_67d8:
    ld hl, sp+$07
    cp $0f
    rst $38
    rra
    rst $38
    ccf
    rst $28
    cpl
    call z, $ee4f
    ld [hl], c
    ei
    rlca
    rst $38
    inc a
    ld [hl], e
    ldh a, [$91]
    ld hl, sp-$75
    rst $38
    ld b, [hl]
    cp l
    add e
    nop
    call z, $0767
    ret nz

    ret nz

    and b
    ld h, b
    sub b
    ld [hl], b

jr_056_67fd:
    db $10
    ldh a, [rOBP1]
    ld [$15f8], sp
    jr jr_056_67fd

    inc h
    db $fc
    call nz, $42fc
    cp [hl]
    and d
    ld e, [hl]
    db $f4
    inc c
    ld hl, sp+$38
    call nz, $acfc
    ld e, h
    ld [hl], h
    cp h
    and h
    ld a, h
    rst $38
    db $ec
    inc [hl]
    inc bc
    ld bc, $0200
    nop
    ld [hl+], a
    inc b
    nop
    nop
    ld [hl+], a
    ld [$0d08], sp
    ld [$101a], sp
    dec d
    db $10
    ld a, [de]
    db $10
    dec e
    ld b, l
    db $10
    rra
    db $10
    jr nc, jr_056_6876

    ld [hl], b
    ld e, a
    ld [hl], b
    ld l, a
    ldh a, [$df]
    ld hl, sp-$6b
    rst $38
    xor d
    rst $38
    ld e, a
    ld a, a
    dec hl
    ld a, a
    sub d
    cp h
    inc b
    inc bc
    nop
    inc b
    nop
    ld [$bba3], sp
    nop
    nop

jr_056_6852:
    inc h
    jr nz, jr_056_6866

    nop
    ld b, b
    ld bc, $6a40
    ld b, b
    ld d, l
    ld b, b
    ld l, e
    ld b, b
    ld a, a
    ld b, b
    ld [hl], a
    ld c, a
    ld a, a
    ld [hl], b
    ld b, a

jr_056_6866:
    ret nz

    ld b, e
    inc bc
    nop
    ld a, [bc]
    rlca
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    ld e, a
    nop
    cp a

jr_056_6876:
    add h
    add e
    ld bc, $007f
    ld c, l
    rst $38
    nop
    rlca
    ld a, a
    sbc a
    ld [c], a
    rst $38
    ld b, c
    rst $38
    adc d
    rst $38
    ld l, l
    inc bc
    rra
    ccf
    ld a, a
    ret nz

    jp nz, $84b5

    cp e
    ld b, e
    ccf
    nop
    nop
    ld a, a
    add e
    or a
    adc d
    cp e
    dec b
    rst $30
    ld hl, sp-$02
    rlca
    rst $38
    ld bc, $ff51
    nop
    ld bc, $01fe
    adc h
    add e
    add hl, bc
    ld bc, $0ffe
    ld [hl], c
    sbc a
    ld [c], a
    rst $38
    ld d, l
    rst $38
    ld [$df8e], a
    rlca
    ret nz

    ret nz

    ldh a, [$30]
    db $fc
    inc c
    cp $02
    add l

Call_056_68c0:
    jp $f505


    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    add e
    add e
    add hl, bc
    db $eb
    rla
    rst $18
    inc l
    ret nc

    jr nc, jr_056_6852

    ld b, b
    nop
    add b
    ld h, c
    inc de
    add b

jr_056_68d8:
    add b
    jp z, $f540

    jr nz, jr_056_68d8

    db $10
    push af
    db $10
    ei
    ld [$58af], sp
    ld e, a
    xor b
    xor a
    ld d, h
    ld d, a
    xor h
    add l
    add e
    ld c, $55
    xor [hl]
    xor [hl]
    ld d, l
    ld d, l
    xor [hl]
    xor [hl]
    ld d, a
    rst $10
    rst $28
    cp d
    rst $38
    ld b, l
    rst $38
    xor d
    and e
    add c
    nop
    rst $38
    cp b
    nop
    dec e
    ld [hl+], a
    add b
    ld b, e
    ret nz

    ld b, b
    db $10
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    and b
    ldh a, [$f8]
    cp $06
    rst $38
    ld bc, $007f
    ld a, a
    nop
    ld a, a
    sub h
    nop
    ei
    ld bc, $02fd
    add l
    add e
    ld de, $42bd
    ld a, [hl]
    cp a
    jp hl


    rst $38
    db $76
    db $fd
    xor b
    rst $38
    ld b, d
    rst $38
    and l
    rst $38
    ld d, d
    rst $38
    ld [hl], l
    xor d
    db $f4
    dec hl
    nop
    ld a, [bc]
    inc bc
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    dec b
    xor b
    ld e, b
    ld d, h
    xor h
    xor h
    ld d, h
    adc c
    add e
    rla
    xor b
    ld e, b
    ld e, h
    xor b
    xor d
    ld e, h
    ld e, l
    xor [hl]
    or d
    ld a, a
    rst $10
    rst $38
    xor d
    ld a, a
    inc d
    rst $38
    xor e
    cp $56
    db $fc
    xor b
    ldh a, [rLCDC]
    add b
    rst $38
    ld h, l
    add hl, bc
    inc bc
    inc bc
    inc b
    ld b, $08
    rrca
    dec bc
    rrca
    inc b
    inc b
    ld [hl], a
    ld bc, $0001
    inc hl
    ld bc, $0201
    nop
    add hl, hl
    ld [bc], a
    ld bc, $0004
    add hl, hl
    inc b
    dec bc
    ld b, $06
    ld c, $0a
    ld d, $12
    ld h, $22
    cpl
    ld hl, $414f
    ld b, e
    ld e, a
    ld b, b
    nop
    sbc a
    ld b, [hl]
    add b
    cp a
    ld bc, $407f
    ld h, e
    rra
    ld a, b
    ld hl, sp+$06
    ld e, $01
    ld a, a
    ret nz

    rst $38
    jr nc, jr_056_69e7

    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld b, $07
    ld c, $0b
    inc de
    ld de, $1011
    jr c, jr_056_69d8

    ccf
    jr nz, jr_056_6a2a

    ld e, b
    ld b, e
    ld b, a

jr_056_69be:
    inc hl
    add b
    db $ec
    inc hl
    add hl, bc
    ld [bc], a
    nop
    dec d
    nop
    xor d
    nop
    push de
    add b
    xor e
    add b
    ld b, h
    rst $38
    ld b, b
    inc b

jr_056_69d1:
    jr nz, @+$01

    db $10
    rst $38
    ld [$aecb], sp

jr_056_69d8:
    ld b, e
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_056_69be

    rlca
    jr nc, jr_056_69d1

    inc a
    db $ec
    cp $c2
    rst $38
    inc bc

jr_056_69e7:
    and h
    and e
    ld b, $18
    rst $18
    ldh [rIE], a
    nop
    ccf
    nop
    ld b, [hl]
    rra
    nop
    ld [bc], a
    ld bc, $010f
    ld b, h
    rrca
    ld [bc], a
    inc bc
    inc b
    rrca
    inc b
    rla
    add h
    add e
    dec bc
    cpl
    inc b
    rla
    ld [bc], a
    cpl
    ld [bc], a
    ld d, a
    ld bc, $00af
    ld e, a
    nop
    add e
    add e
    inc bc
    cp a
    nop
    ld a, a
    nop
    ld c, c
    rst $38
    nop
    nop
    rst $38
    call c, $03fc
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld a, [bc]
    ld hl, sp+$08
    db $fd
    dec b

jr_056_6a2a:
    cp $1e
    ldh [$60], a
    sbc a
    add b
    ld a, a
    and d
    cp l
    ld d, [hl]
    rst $38
    nop
    ld b, $80
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    inc bc
    ld c, c
    rst $38
    nop
    and e
    rst $28
    nop
    ld [$2274], a
    rlca
    nop
    inc b

jr_056_6a4a:
    ld b, e
    inc bc
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld [$080b], sp
    inc de
    db $10
    ld h, a
    ld h, b
    adc a
    add b
    ccf
    jp $0f01


    adc b
    add e
    inc b
    ld d, a
    nop
    xor e
    nop
    rst $10
    add e
    add e
    xor d
    rst $18
    ld b, $fe
    ld b, $ff
    dec de
    cp $c3
    cp $46
    ld bc, $06ff
    ld e, a
    ld bc, $03ae
    ld d, [hl]
    inc bc
    xor h
    push de
    jp z, $0002

    ret nz

    ret nz

    add e
    ld bc, $013e
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld b, l
    cp $02
    ld c, c
    rst $38
    ld bc, $fe43
    ld [bc], a
    ld b, e
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    ld bc, $20e0
    rst $00
    nop
    call $800d
    add b
    nop
    ld b, b
    jr nz, jr_056_6a4a

    jr nz, jr_056_6b0c

    db $10
    or b
    db $10
    ld d, b
    db $10
    or b
    ld b, l
    ld [$fff8], sp
    db $ec
    ld h, $02
    ld bc, $0101
    sbc c
    sub e
    ld [hl+], a
    ld bc, $0706
    inc b
    inc b
    inc bc
    ld [bc], a
    ld bc, $2503
    ld [bc], a
    ld [hl+], a
    ld bc, $0308
    rlca
    rrca
    rra
    rra
    rlca
    rrca
    ld bc, $9703
    rst $08
    ld h, c
    inc d
    inc bc
    inc bc
    rlca
    inc c
    rla
    db $10
    cpl
    jr nz, jr_056_6b32

    ld b, b
    sbc a
    add b
    ccf
    db $10
    ld a, a
    jr nc, @-$2f

    ret z

    dec bc
    ld [$2205], sp
    inc b
    rla
    inc bc
    inc bc
    ld bc, $0601
    ld b, $68
    ld hl, sp+$3c
    rra

Call_056_6afc:
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld e, a
    ldh [$ef], a
    db $10
    rst $18
    ldh [$7f], a
    nop
    ld b, e
    rst $38

jr_056_6b0c:
    nop
    dec b
    cp a
    ret nz

    ld a, a
    ld b, b
    ccf
    ld b, b
    ld b, e

jr_056_6b15:
    rst $18
    jr nz, jr_056_6b1f

    rst $28
    sub b
    rst $20
    ld hl, sp-$67
    cp $c7

jr_056_6b1f:
    rst $38
    ld [hl], e
    inc de
    ld h, b
    ldh [rNR23], a
    jr @+$01

    rst $00
    rst $18
    ldh [rIE], a
    inc bc
    db $fc
    inc e
    pop hl
    ld h, b
    adc a
    add b

jr_056_6b32:
    sub e
    adc l
    rst $38
    ld [hl], e
    ld b, h
    rst $38
    add hl, bc
    db $10
    inc d
    rst $38
    inc d
    rst $30
    ld [de], a
    db $eb
    ld [c], a
    add e
    add c
    ld bc, $0200
    add b
    add l
    nop
    ld [$4700], a
    rst $38
    nop
    inc bc
    rst $20
    jr jr_056_6b15

    inc a
    ld b, l
    pop bc
    ld a, $01
    db $e3
    inc e
    ld b, e
    rst $38
    nop
    ld b, e
    cp $01
    and h
    add a
    nop
    add b
    ld [hl], d
    rla
    ld [bc], a
    nop
    dec b
    rlca
    dec b
    rrca
    adc h
    rst $38
    ld [hl], d
    sbc a
    add c
    ld a, [hl]
    dec c
    rst $38
    ld a, $f1
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add b
    add h
    add e
    dec bc
    pop bc
    ld a, a
    jp $ff7f


    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rra
    ld h, b
    ld b, e
    rrca
    ldh a, [rSB]
    rra
    ldh [rKEY1], a
    rst $38
    nop
    and e
    nop
    sbc h
    ld b, e
    ccf
    jp nz, Jump_056_7d07

    add [hl]
    rst $38
    inc e
    rst $28
    ld a, $cf
    ld [hl], a
    cp d
    nop
    rrca
    ldh [rNR41], a
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ld [c], a
    ld h, $f9
    add hl, sp
    rst $18
    ld de, $8ac6
    ld a, [hl]
    add $be
    ld [c], a
    ld a, [hl]
    jp hl


    rst $30
    push bc
    ld [hl], a
    add $f5
    ld b, $f3
    ld a, [bc]
    di
    inc c
    rst $38
    nop
    ld sp, hl
    ld [bc], a
    ld b, h
    db $fc
    ld bc, $020e
    cp $02
    rst $38
    inc bc
    db $fd
    dec b
    db $fc
    inc b
    ld hl, sp+$08
    add sp, $18
    ld a, b
    adc b
    ld b, e
    ld hl, sp+$08
    dec bc
    ldh [rNR10], a
    ld hl, sp+$18
    cp $1e
    rst $38
    rra
    adc $2e
    ld hl, sp-$08
    db $ec
    jr nc, @+$24

    add b
    ld [bc], a
    ld b, b
    ld b, b
    add b
    ld b, e
    ld b, b
    ret nz

    ld [bc], a
    ret nz

    ld b, b
    ld b, b
    dec h
    add b
    and e
    nop
    ld d, b
    rst $10
    sub l
    rst $38
    db $ec
    dec a
    ldh [rNR42], a
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    rlca
    inc b
    rrca
    ld [$090e], sp
    rrca
    inc c
    ld e, $15
    dec a
    ld h, $3e
    add hl, hl
    ld l, e
    ld b, b
    ld d, a
    ld b, b
    xor e
    add b
    pop de
    add a
    ld a, [$e588]
    sub b
    ei
    sub b
    ldh a, [$35]
    push de
    ldh [$29], a
    rlca
    ld b, $0f
    ld [$303f], sp
    rst $38
    call nz, $3e79
    add b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    add c
    ld a, a
    inc bc
    cp $a6
    ld e, h
    ld d, a
    xor h
    xor a
    ld d, b
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $81
    db $fd
    ld [hl], d
    jp z, $803d

    ld a, a
    sbc d
    call nz, $0106
    nop
    ld [bc], a
    ld bc, $0303
    ld [bc], a
    ld [hl+], a
    inc bc
    ld b, h
    inc b
    rlca
    ld bc, $0d0a
    ld b, e
    ld [$e00f], sp
    daa
    ld de, $3f1f
    ccf
    sub $c1
    cp h
    add e
    ld hl, sp+$07
    rst $38
    ld a, [hl+]
    rst $38
    inc d
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    ldh a, [$ac]
    adc a
    ld e, [hl]
    inc bc
    or c
    rrca
    ldh [$1f], a
    ld [$543f], a
    rst $38
    and b
    ld a, a
    ret nc

    cpl
    jp $0394


    ld bc, $02ff
    rst $38
    sub d
    ret c

    ldh [$2c], a
    inc bc
    inc c
    inc c
    ld e, e
    call nc, $227d
    db $fd
    inc hl
    ld a, l
    jp $03fc


    cp a
    ret nz

    rst $38

jr_056_6cb3:
    nop
    xor $19
    xor h
    ld a, a
    ld d, l
    rst $38
    ld l, $fe
    ld e, b
    ld hl, sp-$58
    ld hl, sp+$54
    db $fc
    xor h
    db $fc
    cp $ff
    ld d, a
    pop bc
    xor [hl]
    add c
    ld a, [$fa07]
    dec b
    push af
    ld a, [bc]
    and h
    db $dd
    add hl, bc
    ld bc, $00ff
    cp [hl]
    ld b, c
    ld d, l
    xor d
    jr z, jr_056_6cb3

    nop
    ld b, [hl]
    rst $38
    nop
    add hl, bc

jr_056_6ce1:
    inc bc
    rst $38
    ld b, $fc
    rrca
    rst $38
    ld d, c
    ld hl, sp-$5f
    ldh [$71], a
    inc b
    ret nz

    ret nz

    jr nz, jr_056_6d11

    ldh [$c6], a
    add d
    add hl, bc
    adc b
    cp b
    call nz, $9a44
    ld h, d
    ld e, $e2
    inc a
    db $fc
    call $1394
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ce]
    cp $f7
    ld sp, $00ab
    ld d, a
    nop
    xor e

jr_056_6d11:
    nop
    rst $18
    nop
    rst $38
    ld bc, $0083
    cp $01
    ld d, a
    xor b
    jp $0bf0


    ldh a, [rIE]
    ld e, h
    rrca
    and d
    inc de
    add c
    ld h, c
    add a
    ldh [$9f], a
    ldh a, [$f4]
    ccf
    nop
    nop
    ld bc, $40c0
    and e
    nop
    ld b, h
    dec c
    ret nc

    jr nc, jr_056_6ce1

    ld e, b
    ld e, b
    xor b
    add sp, $58
    ld b, h
    db $fc
    add h
    ld a, h
    inc e
    db $fc
    add e
    ld bc, $0763
    ld d, c
    rst $38
    xor e
    rst $38
    push de
    rst $38
    xor d
    cp $ff
    ld l, a
    rlca
    ld b, $0e
    ld bc, $2015
    ld a, [hl+]
    jr nz, jr_056_6d90

    ld c, c
    ld b, b
    ld a, a
    ld b, e
    jr nz, jr_056_6da0

    ld bc, $3f21
    ld b, e
    ld de, $051f
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    ld l, l
    inc b
    jr nc, jr_056_6da2

    ld c, h
    ld a, h
    ld b, e
    add h
    and l
    dec b
    jr jr_056_6d99

    ld b, $07
    ld bc, $ec01
    ld hl, $800e
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    inc hl
    db $e3
    inc e
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld b, b

jr_056_6d90:
    ld b, e
    rst $38
    add b
    ld c, d
    rst $38
    nop
    ld d, $05
    rst $38

jr_056_6d99:
    adc d
    rst $38
    add l
    rst $38
    ld c, d
    ld a, a
    scf

jr_056_6da0:
    ccf
    rrca

jr_056_6da2:
    rra
    inc bc
    rlca
    nop
    ld bc, $0707
    jr jr_056_6dca

    ldh [rIE], a
    nop
    ld b, h
    rst $38
    inc b
    dec b
    inc e
    rst $38
    add sp, -$11
    ld [$430f], sp
    db $10
    rra
    ld b, $18
    rra
    dec c
    rrca
    ld a, [bc]
    rrca
    dec b
    adc c
    nop
    cpl
    add hl, bc
    inc b
    ld [bc], a
    ld a, [bc]

jr_056_6dca:
    add hl, bc
    dec bc
    add hl, bc
    rrca
    jr z, jr_056_6dff

    ld d, b
    add h
    nop
    ld b, l
    ld [bc], a
    ld [hl], b
    ld a, a
    add b
    ld d, [hl]
    rst $38
    nop
    ld b, $50
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld_long a, $ff28
    rrca
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    pop hl
    ld a, a
    ret nz

    rst $38
    add b
    cp $81
    ld b, e
    rst $38
    add b
    dec bc
    ld a, a
    ret nz

    ccf
    ldh a, [$5f]

jr_056_6dff:
    db $fc
    xor a
    cp $7f
    cp $ff
    rst $38
    ld l, l
    ld bc, $a0a0
    ld b, e
    ret nc

    ldh a, [rSB]
    sub b
    ldh a, [$a3]
    nop
    or b
    ld [bc], a
    inc c
    db $fc
    inc bc
    and [hl]
    nop
    add e
    nop
    ld bc, $00ae
    add c
    nop
    ld b, b
    add h
    db $e3
    ld c, $ef
    cp $fe
    db $fc
    ld hl, sp-$04
    db $fd
    ld hl, sp-$71
    adc b
    jp $fbe4


    db $fc
    rst $38
    ld b, e
    ld hl, sp-$09
    inc b
    ret z

    rst $38
    add b
    rst $00
    nop
    ld b, e
    add e
    nop
    ld [bc], a
    add a
    nop
    rst $08
    add h
    xor h
    nop
    rst $38
    db $76
    add e
    nop
    and b
    rlca
    jr nz, @+$41

    ld b, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    sub c
    nop
    ret c

    dec b
    ld bc, $62ff
    cp $fc
    sbc h
    ld b, e
    db $fc
    inc b
    ld b, l
    cp $02
    inc bc
    db $fc
    inc b
    ld a, [$430e]
    pop af
    rra
    rlca
    or $3e
    db $fc
    ld a, h
    pop af
    ld d, c
    rst $38
    ld c, $89
    xor b
    ld bc, $0efe
    sbc e
    nop
    ld e, d
    ld b, e
    ld b, b
    ret nz

    ld c, e
    jr nz, @-$1e

    ld b, e
    ld b, b
    ret nz

    ld bc, $8080
    cp e
    nop
    ld c, [hl]
    ld b, $70
    ld [hl], b
    ret z

    adc b
    adc h
    inc b
    call c, $0444
    db $fc
    inc bc
    ld hl, sp+$08
    ld [hl], b
    ldh a, [$61]
    rst $38
    db $ec
    dec h
    dec d
    inc c
    inc e
    ld [bc], a
    ld [hl+], a
    ld bc, $4341
    ld b, c
    ld b, l
    ld b, b
    ld h, d
    jr nz, jr_056_6ed3

    jr nz, @+$15

    db $10
    dec d
    db $10
    ld a, [bc]
    ld [$0809], sp
    add e
    add e
    ld a, [bc]
    dec bc
    db $10
    inc de
    db $10
    rlca
    jr nz, @+$29

    ld hl, $202f
    rrca
    ld b, [hl]
    ld b, b
    ld e, a
    nop
    ld a, a
    ld b, h
    add b
    rst $38
    ld bc, $807f
    ld b, e
    ld a, a
    ld b, b

jr_056_6ed3:
    ld bc, $403f
    ld [hl], a
    inc de
    inc e
    ld a, $01
    ld b, c
    ld [bc], a
    ld b, b
    dec h
    jr nz, jr_056_6eeb

    jr nz, jr_056_6ef8

    db $10
    rra
    db $10
    rrca
    ld [$0407], sp
    inc bc

jr_056_6eeb:
    inc bc
    ld h, c
    dec h
    add b
    inc c
    ret nz

    ld b, b
    pop bc
    ld b, c
    jp $c742


    inc h

jr_056_6ef8:
    rst $20
    jr z, @+$01

    ld h, b
    rst $38
    add l
    rst $08
    ld [bc], a
    inc bc
    db $fc
    inc b
    and l
    and l
    dec bc
    ld [c], a
    inc hl
    ret nz

    ld b, h
    ret nz

    ld c, b
    call nc, $ba50
    and b
    cp l
    and b
    ld b, e
    rst $38
    ret nz

    ld a, c
    ldh [$2c], a
    add b
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld a, [$fd06]
    inc bc
    rst $38
    nop
    or $0e
    ldh a, [rNR11]
    ldh [rNR41], a
    ldh [$e0], a
    jr nz, @+$62

    ld b, b
    ld b, b
    ld c, c
    ld b, b
    rst $10
    add b
    xor a
    ld bc, $015f
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_056_6f3d:
    ld [$18ff], sp
    xor a
    ld l, b
    adc h
    adc b
    jr jr_056_6f68

    db $10
    dec b
    jr nz, jr_056_6f6a

    nop
    ld b, b
    nop
    add b
    ld h, c
    inc c
    dec b
    nop

jr_056_6f52:
    ld a, [bc]
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    inc c
    rrca
    rrca
    ld [hl], c
    ld [hl], b
    add b
    add b
    ld bc, $5700

jr_056_6f68:
    nop
    xor e

jr_056_6f6a:
    nop
    ld d, a
    ld c, b
    add b
    rst $38
    ld bc, $807f
    ld c, a
    rst $38
    nop
    ld bc, $003f
    ld b, e
    rra
    nop
    ld b, $3f
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    add a
    sbc c
    sbc a
    rst $18
    dec bc
    ld bc, $0606
    adc b
    adc b
    ldh a, [rSVBK]
    db $f4
    jr nz, jr_056_6f3d

    ld b, b
    rst $10
    adc b
    xor a
    ld b, $fe
    inc bc
    rst $28
    inc e
    rst $38
    nop
    cp a
    and h
    nop
    ei
    dec b
    cp $08
    ei
    dec b
    ld a, [$431a]
    ldh [rNR41], a
    ld c, b
    ret nz

    ld b, b
    ld b, h
    jr nz, @-$1e

    ld b, a
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld [hl], e
    dec c
    ld b, $0e
    ld [de], a
    ld sp, $c147
    rrca
    ld bc, $020e
    ld e, $02
    inc a
    inc b
    add e
    nop
    xor b
    ld b, $f8
    ld [$10e0], sp
    ret nz

    jr nz, jr_056_6f52

    add h
    ld bc, $830d
    nop
    sub d
    jp $08b7


    ld d, b
    db $10
    and b
    ld [$88d8], sp
    jr z, jr_056_702b

    jr c, jr_056_7007

    jr z, jr_056_6fe8

    db $10

jr_056_6fe8:
    db $10
    ld [hl], a
    rst $38
    db $ec
    ld e, b
    ldh [$2c], a
    inc bc
    nop
    inc c
    db $10
    db $10
    jr nz, jr_056_7017

    ld bc, $4041
    ld b, c
    ld b, a
    add b
    ld l, c
    add e
    push de
    add [hl]
    ld a, [c]
    adc h
    ld a, [$798c]
    ld c, [hl]
    ld [hl], b

jr_056_7007:
    ld c, a
    inc a
    daa
    ld l, $33
    ld d, $19
    dec de
    inc d
    ccf
    inc hl
    ccf
    jr nc, @+$51

    ld e, b
    ld c, h

jr_056_7017:
    ld a, b
    jr c, @+$32

    ld [$2208], sp
    ld b, $08
    dec b
    rlca
    ld b, $09
    dec bc
    add hl, bc
    rrca
    ld b, $06
    ld [hl], e
    add hl, de
    ld [hl], b

jr_056_702b:
    ld sp, hl
    ld a, d
    ld b, $3c
    inc b
    ld a, h
    nop
    cp [hl]
    add d
    rst $38
    pop bc
    cp a
    ret nz

    rst $38
    nop

jr_056_703a:
    cp a
    ret nz

    cp $30
    cpl
    add hl, de
    ld h, $19
    rst $00
    inc a
    ld b, e
    rlca
    db $fc
    ld d, $0f
    ld hl, sp-$11
    ldh a, [rIE]
    nop
    cp $01
    jp $fcff


    inc a
    ld a, [hl]
    ld a, [de]
    ld h, $2e
    daa
    dec a
    ccf
    add hl, de
    rst $18
    ldh [$9f], a
    add h
    rst $08
    inc c
    adc a
    add $3f
    jr c, jr_056_70e6

    ld h, c
    sub e
    or c
    sbc b
    ld hl, sp+$67

jr_056_706d:
    ld h, a
    ld bc, $00c4
    ld e, c
    dec b
    ld [$201c], sp
    ld h, h
    adc h
    add h
    ld b, e
    jr jr_056_7084

    ld de, $1030
    ld d, b
    jr nc, jr_056_70e2

    and b
    ld [hl], b

jr_056_7084:
    ret nc

    ldh a, [rNR10]
    ld hl, sp+$08
    cp b
    ret z

    ld hl, sp-$38
    cp b
    ret z

    ld b, e
    ld hl, sp+$08
    inc c
    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, jr_056_703a

    ld h, b
    ret nz

    ret nz

    nop
    ld bc, $2800
    ld [bc], a
    dec d
    ld bc, $8186
    adc c
    adc a
    sbc h
    di
    ld [hl], d
    rst $38
    add hl, hl
    cp $d5
    ccf
    ld [hl], l
    ld a, $ee
    ld a, [$f2ce]
    ld e, $ec
    db $ec
    db $ec
    cpl
    ld bc, $8080
    inc hl
    ld b, b
    inc hl
    jr nz, jr_056_70cc

    and b
    jr nz, @-$3e

    ld b, b
    add b
    add b
    ld b, b
    ret nz

    add b

jr_056_70cc:
    add b
    call $8592
    nop
    ld h, b
    ld de, $816a
    rst $10
    add d
    cp $84
    ld a, [c]
    adc h
    ld a, c
    ld c, [hl]
    ld a, b
    ld b, a
    inc a
    daa
    dec l

jr_056_70e2:
    inc sp
    rla
    jr jr_056_706d

jr_056_70e6:
    nop
    ld a, b
    add a
    nop
    or b
    rrca
    sbc $30
    cpl
    add hl, de
    ld [hl+], a
    dec e
    rst $00
    inc a
    rlca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$df]
    ldh [$87], a
    nop
    ret z

Call_056_70ff:
    adc [hl]
    nop
    and b
    inc bc
    ld [bc], a
    rst $38
    ld bc, $8cff
    nop
    or e
    add a
    ld bc, $4400
    ld hl, sp+$08
    adc a
    ld bc, $aa0d
    ld bc, $8767
    ld bc, $6d28
    dec b
    jr nc, jr_056_714d

    ld d, b
    ld d, b
    sub b
    sub b
    inc hl
    db $10
    ld b, e
    and b
    jr nz, jr_056_712a

    ret nz

    ret nz

    ld b, b

jr_056_712a:
    ret nz

    ld h, c
    rlca
    ld a, b
    ld a, b
    add h
    add h
    ld [$1008], sp
    db $10
    add l
    adc a
    rst $38
    db $ec
    dec hl
    ld bc, $0301
    ld [hl+], a
    inc b
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $6101
    dec d
    ld bc, $0601
    rrca
    jr nc, @+$33

jr_056_714d:
    ld b, b
    ld c, a
    ld b, b
    ld a, a
    jr nz, @+$41

    db $10
    rra
    ld [$060f], sp
    rlca
    inc c
    rrca
    db $10
    inc de
    add e
    adc c
    add e
    and c
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    push bc
    add [hl]
    sub b
    jp Boot


    ld b, e
    inc bc
    ld [bc], a
    ld b, l
    rlca
    inc b
    ld b, l
    rrca
    ld [$1f44], sp
    db $10
    ld b, $16
    dec de
    ld a, $43
    add $03
    ld a, $46
    rlca
    db $fc
    inc bc
    db $fd
    adc a
    ld sp, hl
    rst $08
    ld b, e
    ld sp, hl
    ld c, $05
    ei
    ld c, $fb
    ld e, $f3
    ld e, $45
    di
    inc e
    ld [bc], a
    rst $30
    inc e
    rst $30
    ld b, e
    inc a
    rst $20
    add hl, bc
    add hl, sp
    rst $20
    add hl, sp
    rst $28
    ld a, c
    rst $08
    ld a, c
    adc $fb
    ld c, $43
    rst $38
    nop
    nop
    rst $38
    ld l, h
    rlca
    ld a, $3e
    pop af
    pop bc
    rst $38

jr_056_71b3:
    inc bc
    rst $20
    inc e
    ld e, l
    rst $38
    nop
    inc b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    ld b, e
    ret nz

    ccf
    ld c, c
    ret nz

    ld a, a
    ld bc, $7f80
    ld b, l
    add b
    rst $38
    nop
    add b
    ld d, c
    rst $38
    nop
    ld l, e
    add hl, bc
    inc a
    inc a
    jp $e7c3


    nop
    cp $07
    db $fd
    dec c
    ld b, h
    ld sp, hl
    add hl, bc
    ld a, [bc]
    add hl, de
    db $fd
    dec e
    db $fc
    inc e
    db $ec
    inc e
    db $fc
    inc c
    db $fc
    ld b, $44
    rst $38
    nop
    ld [bc], a
    rrca
    ei
    rlca
    ld b, e
    cp $03
    ld b, e
    rst $38
    ld bc, $df00
    ld b, e
    jr nz, @+$01

    rrca
    db $10
    rst $38
    db $10
    rst $08
    jr c, jr_056_71b3

    ld b, [hl]
    push de
    ld bc, $00e8
    ldh a, [rP1]
    ld hl, sp+$00
    cp $85
    pop de
    ld c, $20
    rst $38
    ld e, $ff
    inc bc
    ld a, [$f002]
    ld bc, $01f9
    push af
    ld bc, $01fb
    or l
    nop
    ld h, b
    inc de
    rst $20
    and a
    ld a, a
    ld e, b
    rst $38
    rst $20
    ld a, a
    ldh a, [$7f]
    ld hl, sp+$6f
    ldh a, [$df]
    ldh [rIE], a
    add c
    cp $0e
    ldh a, [rSVBK]
    and l
    nop
    inc [hl]
    ldh [$27], a
    ret nz

    ret nz

    jr nz, jr_056_7261

    ld h, b
    ld h, b
    and b
    ldh [$9c], a
    cp $c2
    ld h, d
    db $e4
    inc h
    add sp, $18
    db $f4
    inc b
    db $f4
    add h
    ld a, b
    ld l, b
    db $10
    db $10
    inc c
    inc c
    inc bc
    inc bc
    ret nz

    nop
    pop af
    ld bc, $00fe
    rst $38
    inc bc

jr_056_7261:
    rst $38
    pop hl
    ld e, $1e
    ld a, l
    ld b, $c0
    ret nz

    jr nz, jr_056_729b

    nop
    ld [$44c8], sp
    ld [$07e8], sp
    ldh a, [$30]
    ret nc

    ret nc

    ld d, b
    ld d, b
    jr nz, jr_056_729a

    db $f4

jr_056_727b:
    ld [hl+], a
    nop
    ld a, [bc]
    ld bc, $0080
    ret nc

    add b
    rst $38
    ld [hl], h
    dec b
    ld bc, $0302
    dec b
    rlca
    ld b, $22
    rlca
    add hl, bc
    dec de
    rra
    dec [hl]
    ccf
    ld l, e
    ld a, a
    ld e, a
    ld a, [hl]
    ld a, a
    cp $47

jr_056_729a:
    rst $38

jr_056_729b:
    db $fc
    dec b
    ld a, a
    cp $7f
    ld a, a
    inc e
    ld a, $ec
    dec sp
    inc de
    ld l, $7f
    ret c

    ld hl, sp-$4a
    ld hl, sp+$7f
    ret nz

    rst $38
    add b
    cp $82

Jump_056_72b2:
    call z, $8afc
    adc b
    adc l
    db $10
    cp $10
    ld b, [hl]
    rst $38
    jr nz, jr_056_72be

jr_056_72be:
    nop
    ld b, e
    rst $38
    nop
    ld bc, $c07f
    ld b, e
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, @-$1e

    inc hl
    rra
    db $10
    rrca
    inc c
    inc bc
    rra
    jr nz, jr_056_733a

    nop
    adc e
    nop
    sub l
    ld b, b
    ld l, e
    jr c, jr_056_731c

    inc e
    rla
    ccf
    inc hl
    ccf
    ld hl, $121f
    ld c, $0e
    inc bc
    ld [bc], a
    ld b, $04
    add hl, bc
    ld [$080a], sp
    rlca
    ld b, $92
    nop
    inc bc
    ld [de], a
    inc bc
    call z, Call_056_61dc
    jr nz, jr_056_727b

    add b
    ld bc, $0200
    nop
    dec d
    nop
    xor d
    nop
    ld d, l
    nop
    xor a
    nop
    ld e, d
    rst $38
    nop
    ld bc, $7f80
    ld b, [hl]
    rst $38
    nop
    inc bc
    inc e
    rst $38
    ld a, a
    db $e3
    ld b, l
    rst $38
    nop
    ld a, [bc]
    sbc a
    ld h, b

jr_056_731c:
    rrca
    ld a, [c]
    dec c
    or $9b
    ld l, b
    rst $38
    ld [$92ff], sp
    rst $18
    inc bc
    ld hl, sp-$07
    rst $38
    ld b, $c3
    nop
    sub d
    inc b
    ld a, a
    nop
    rst $18
    nop
    ld a, a
    adc d
    ret


    dec b
    ei
    inc b

jr_056_733a:
    rst $38
    ld [bc], a
    rst $38
    ld bc, $dbae
    ld bc, $f00f
    ld c, b
    rst $38
    nop
    dec b
    inc bc
    rst $38
    adc a
    db $fc
    rst $38
    ld [hl], b
    and [hl]
    rst $18
    inc b
    rrca
    ldh a, [rIF]
    ld sp, hl
    ld b, $83
    db $f4
    ld l, l
    ld b, $07
    rrca
    jr nc, jr_056_73cd

    add e
    add b
    rra
    add e
    call $0706
    or b
    ld [hl], b
    add c
    ld bc, $03ff
    ld b, e
    rst $38
    rlca
    ld b, [hl]
    rst $38
    rrca
    ld b, l
    rra
    rst $38
    ld d, $df
    rst $38
    ccf
    rst $38
    rrca
    ld hl, sp+$08
    ldh a, [rNR10]
    db $ec
    ld a, h
    add d
    cp $02
    cp $3c
    db $fc
    ld a, b
    ret z

    ld a, [hl]
    add [hl]
    rst $38
    add c
    and [hl]
    ld sp, hl
    ld b, $61
    cp $1e
    ldh a, [rNR10]
    ld hl, sp+$08
    and a
    nop
    sbc b
    xor l
    nop
    cp [hl]
    inc b
    ld l, [hl]
    cp $d5
    ccf
    db $eb
    ld b, e
    ld a, a
    rst $38
    ld [hl+], a
    rst $38
    ld a, [bc]
    cp $ff
    add $ff
    xor d
    rst $38
    ld d, h
    cp $aa
    cp $f6
    ld b, e
    cp $fc
    ld bc, $fcfc
    ld b, e
    db $fc
    ld hl, sp+$43
    ld hl, sp-$10
    inc b
    ldh a, [$e0]
    ldh a, [$80]
    ret nz

    or b
    nop
    jp nz, $8000

    ld b, l
    ret nz

    ld b, b
    pop de

jr_056_73cd:
    add [hl]
    rst $38
    ld [hl], l
    rlca
    ld bc, $0201
    inc bc
    inc b
    ld b, $06
    inc b
    ld b, e
    ld [$050c], sp
    ld a, [bc]
    inc c
    ld [$080e], sp
    rrca
    ld c, c
    db $10
    rra
    ld b, a
    jr nz, jr_056_7428

    ld b, e
    ld b, b
    ld a, a
    ld de, $7f41
    inc hl
    ld a, $27
    inc a
    rla
    inc e
    dec c
    ld [$080a], sp
    add hl, bc
    ld [$0504], sp
    ld b, $05
    inc hl
    inc bc
    inc hl
    ld bc, $0001
    ld bc, $0345
    ld [bc], a
    adc a
    rst $10
    ld [$0706], sp
    jr c, jr_056_744f

    ret nz

    rst $38
    nop
    add a
    nop
    ld b, e
    inc bc
    nop
    ld bc, $0007
    ld b, e
    rrca
    nop
    dec b
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    ld d, h
    rst $38
    nop

jr_056_7428:
    dec b
    ret nz

    rst $38
    ldh a, [$3f]
    ld hl, sp+$0f
    ld b, e
    db $fc
    rlca
    dec c
    sbc $23
    cp $93
    rst $38
    add hl, bc
    rst $30
    add hl, bc
    cp a
    ld bc, $03be
    cp l
    dec b
    ld b, l
    jr c, jr_056_744c

    ld b, e
    ld a, b
    ld [$0363], sp
    inc bc
    inc bc
    inc c

jr_056_744c:
    rrca
    add e
    nop

jr_056_744f:
    jr nc, jr_056_745b

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    db $fc
    nop
    ld sp, hl
    nop
    rst $28

jr_056_745b:
    nop
    add sp, $20
    rst $38
    nop
    ld bc, $ff01
    rst $10
    add c
    dec c
    rrca
    rst $38
    ldh a, [$f0]
    ld [bc], a
    ld b, $01
    add hl, bc
    add hl, bc
    dec bc

Jump_056_7470:
    dec d

jr_056_7471:
    dec de
    ld de, $611f
    rrca
    inc a
    ld a, [hl]
    add c
    add c
    ld b, b
    add b
    db $10
    ldh [rDIV], a
    ld hl, sp+$60
    sbc a
    db $10
    rrca
    nop
    ld a, a
    sub a
    rst $08
    add hl, bc
    rlca
    rst $38
    rrca
    rst $38
    db $10
    pop af
    jr nz, jr_056_7471

    ld b, b
    ret nz

    dec h
    add b
    inc b
    pop hl
    di
    rst $38
    rst $38
    ld a, [hl]
    ld b, h
    rst $38
    db $10
    dec c
    inc de
    rst $38
    inc d
    db $fc
    inc h
    db $fc
    dec h
    db $fc
    ld b, h
    db $fd
    ld a, d
    db $fd

jr_056_74ab:
    adc b
    adc a
    ld c, c
    ld [$430f], sp
    db $10
    rra
    and h
    nop
    ld l, d
    inc c
    ret nz

    jr nc, @+$32

    ld [$4418], sp
    inc a

jr_056_74be:
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    cp e
    rst $18
    inc de
    ldh a, [rIE]
    jr c, jr_056_750a

    jr jr_056_74ec

    ld [$0d0f], sp
    cpl
    ld h, l
    rst $30
    jp nc, $d0d2

    sub b
    ld [hl], b
    sub b
    jr nc, jr_056_74ab

    ld b, e
    jr nz, jr_056_74be

    ld bc, $c0c0
    dec hl
    add b
    ld b, a
    ld b, c
    pop bc
    inc bc
    ld b, d
    jp $e322


    or c

jr_056_74ec:
    nop
    ld b, $01
    add b
    add b
    ld b, l
    ld b, b
    ret nz

    nop
    ld b, b
    add h
    or e
    add a
    adc a
    adc l
    sub e
    ld h, a
    dec c
    inc c
    inc e
    ld b, $22
    ld [hl+], a
    ld h, $2a
    ld h, $42
    ld l, [hl]
    ld h, d
    ld c, [hl]

jr_056_750a:
    ld d, h
    ld c, h
    ld b, e
    add h
    call c, $a405
    call c, $fc84
    inc b
    db $fc
    ld c, c
    ld [$fff8], sp
    ld l, [hl]
    inc h
    ld bc, $0001
    ld bc, $0571
    inc bc
    inc bc
    ld [$070f], sp
    rlca
    jp $099d


    ld bc, $0601
    rlca
    jr jr_056_7550

    jr nz, @+$41

    inc e
    rra
    inc hl
    rlca
    rra
    dec c
    rrca
    db $10
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    ld a, a
    ld a, a
    dec bc
    rrca
    dec c
    rrca
    ld a, [bc]
    rra
    dec d
    rra
    dec bc
    rra
    ld d, $1f
    inc e
    rra

jr_056_7550:
    db $10
    rra
    inc hl
    ccf
    cpl
    ccf
    rra
    rra
    xor a
    push bc
    db $10
    jr nz, @-$0e

    sbc b
    db $fc
    add $ff
    pop bc
    rst $38
    pop hl
    rst $38
    ld a, [c]
    rst $38
    ld a, l
    rst $38
    ld a, d
    ld a, a
    ld a, l
    ld b, e
    ld a, a
    ccf
    dec b
    ccf
    ld hl, sp-$01
    nop
    rst $38
    rlca
    ld h, $ff
    ld b, $5f
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    ccf
    ld h, $ff
    inc b
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    add $83
    ld b, $fe
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld [hl], e
    jp z, $019d

    rst $38
    rst $38
    ld [hl], e
    inc bc
    jr nc, @+$3a

    inc e
    cp [hl]
    ld b, e
    rst $08
    rst $38
    ld b, $47
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
    jp $01c7


    rst $38
    ld a, a
    inc l
    rst $38
    ld [$fff5], sp
    ld [$c1ff], a
    rst $38
    adc a
    rst $38
    ccf
    ld a, [hl+]
    rst $38
    inc b
    ld d, a
    rst $38
    xor e
    rst $38
    rla
    daa
    rst $38
    sbc b
    rst $18
    inc c
    jr nz, jr_056_75e8

    jr nc, jr_056_75fa

    jr z, jr_056_7604

    jr z, jr_056_7646

    ld h, l
    db $fd
    cp $ff
    ld hl, sp-$5c
    or e
    nop
    db $eb
    db $e4
    ld [hl-], a
    rst $38
    ld [bc], a
    db $fd
    rst $38
    db $fd
    ld b, e
    rst $38
    cp $92
    rst $18
    add l
    nop
    ld [hl-], a
    ld a, [bc]
    ld h, b

jr_056_75e8:
    ld a, a
    add c
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, [hl-]
    rst $38
    ld [bc], a
    cp $ff
    cp $a4
    nop

jr_056_75fa:
    add c
    ld [hl+], a
    db $fc
    ld [hl+], a
    cp $a5
    xor c
    nop
    db $fc
    and h

jr_056_7604:
    nop
    and e
    nop
    db $fd
    and h
    nop
    sub c
    ld [bc], a
    cp $ff
    ld a, a
    adc h
    rst $18
    ld a, [bc]

jr_056_7612:
    inc e
    inc e
    ld l, h
    ld a, h
    sbc b
    db $fc
    jr c, jr_056_7612

    ld [hl], b
    ld hl, sp-$10
    ld b, e
    ldh a, [$e0]
    ld bc, $e0e0
    ld b, e
    ldh [$c0], a
    ld bc, $c0c0
    ld b, e
    ret nz

    add b
    ld [hl+], a
    add b
    nop
    ld b, b
    jp $1788


    ldh [$e0], a
    or b
    ld [hl], b
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$74
    ld hl, sp-$34
    db $fc
    db $e4
    db $fc
    cp $7e
    ld a, [hl]

jr_056_7646:
    ld e, $3e
    inc b
    ld h, $00
    ld b, h
    inc h
    nop
    inc de
    jr nz, jr_056_7675

    and b
    and h
    db $e4
    db $e4
    inc [hl]
    db $f4
    inc e
    db $fc
    ld [$84fc], sp
    db $fc
    ld b, d
    cp $82
    cp $e1
    rst $38
    rst $38
    db $76
    dec c
    ld bc, $0202
    ld b, $04
    dec b
    ld [$080b], sp
    inc d
    ld de, $111a
    dec e
    ld b, h

jr_056_7675:
    inc hl
    dec a
    dec b
    dec sp
    daa
    ld a, [hl-]
    ld b, [hl]
    ld a, d
    ld b, [hl]
    ld b, l
    ld a, h
    ld b, h
    ld bc, $443c
    ld b, e
    inc a
    inc h
    rrca
    ld e, $22
    ld e, $12
    rra
    ld de, $090f
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $ec01
    daa
    add hl, de
    jr c, jr_056_7715

    adc h
    add h
    ld d, $02
    ld l, $02
    db $fd
    ld b, e
    dec a
    db $e3
    add hl, sp
    rst $20
    ld a, [$32c6]
    adc $04
    db $fc
    adc b
    ld sp, hl
    ld [hl], c
    ld [hl], c
    ld bc, $9501
    jp $8115


    add c
    ld b, e

jr_056_76bb:
    jp nz, $e427

    rra
    ld hl, sp-$73
    cp $43
    ld a, a
    ld sp, $183e
    rra
    ld h, $3f
    ld hl, $203f
    ccf
    ld b, e
    db $10
    rra
    ld bc, $0f08
    ld a, e
    dec c
    ld c, $1e
    inc bc
    ld hl, $4005
    ld c, d
    ld b, b
    dec d
    add b
    xor e
    add b
    ld d, a
    nop
    ld b, e
    cp $01
    add hl, bc
    db $fd
    ld [bc], a
    rst $38
    add d
    ld a, a
    ld h, d
    rra
    ld e, $03
    ld [bc], a
    add h
    db $eb
    ld [$0301], sp
    inc bc
    ld c, $0c
    ld [hl], l
    ld [hl], b
    rst $38
    add b
    ld b, l
    rst $38

Call_056_7700:
    nop
    ld bc, $01fe
    add e
    adc c
    dec b
    ld a, a
    add b
    ccf
    ret nz

    ld a, [bc]
    push af
    push bc
    adc d
    ld bc, $ff40
    ld a, l

jr_056_7713:
    rrca
    add c

jr_056_7715:
    add e
    ld a, h
    ld a, h
    ret nz

    jr nc, jr_056_76bb

    ld b, b
    ld b, c
    add b
    ld c, d
    add b
    push af
    nop
    db $eb
    nop
    ld c, c
    rst $38
    nop
    add hl, bc
    jp $3d3c


    jp nz, $80af

    ld d, a
    nop
    xor a
    nop
    and h
    ret z

    inc b
    nop
    db $db
    inc a
    ccf
    jp nz, $e7a5

    rlca
    ld a, [$f505]
    ld a, [bc]
    xor d
    ld d, l
    ld d, b
    xor a
    call nz, $9b88
    rst $18
    inc c
    ld bc, $0602
    ret z

    ret z

    or b
    jr nc, jr_056_77c5

    jr nz, jr_056_7713

    nop
    ld a, a
    nop
    ld c, e
    rst $38
    nop
    dec b
    db $fd
    inc bc
    db $f4
    inc c
    ldh a, [rP1]
    ld b, e
    ldh [rP1], a
    dec b
    ldh a, [rSB]
    ei
    ld h, e
    db $fc
    inc e
    ld b, h
    ld hl, sp+$08
    ld [de], a
    inc b
    db $fc
    inc b
    inc a
    jp nz, $e29e

    cp l
    pop hl
    ld e, b
    ret nc

    ld d, d
    jp c, $c743

    ld b, b
    ret nz

    add b
    add b
    cp l
    nop
    ld c, d
    rlca
    add b
    add b
    ld h, b
    ld h, b
    ld [hl], b
    db $10
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld b, l
    db $fc
    inc b
    inc de
    db $f4
    inc c
    db $e4
    inc e
    ret c

    jr c, @+$62

    ldh [$a0], a
    and b
    jr nc, jr_056_77df

    db $10
    ld hl, $4e3e
    ld [hl], b
    ldh a, [$c0]
    ret nz

    push de
    or b
    ld l, c
    rst $38
    db $ec
    sub a
    ld [$0606], sp
    rrca
    add hl, bc
    ld c, $0b
    inc c
    rrca
    inc e
    ld b, e
    rla
    dec e
    inc b
    dec d
    ld c, $0e
    ld bc, $ec01
    ld d, [hl]
    ld [hl+], a

jr_056_77c5:
    ld bc, $0015
    ld bc, $6060
    ret nc

    sub b
    rst $38
    sbc a
    inc a
    ld [hl], b
    ld c, $f8
    rst $08
    ret z

    ld d, a
    ld d, h
    sbc a
    sub h
    dec de
    dec de
    ldh [$e0], a
    db $ec
    dec a

jr_056_77df:
    dec bc
    ld bc, $0601
    rlca
    jr jr_056_7805

    jr nz, @+$41

    nop
    ccf
    ld b, b
    ld a, a
    ld b, h
    add b
    cp a
    ldh [rNR43], a
    sbc a
    ld b, e
    ld e, a
    ld c, [hl]
    ld e, l
    ld a, a
    db $fd
    rst $30
    db $ed
    ld_long a, $ffe5
    ldh [rNR31], a
    inc d
    ld c, $0f
    ld a, $7f
    db $e3

jr_056_7805:
    ld h, e
    ld [hl], b
    ld [de], a
    ldh a, [rNR10]
    ldh [rNR11], a
    ldh [$e1], a
    ret nz

    ld [c], a
    ret nz

    jp nz, Jump_056_7470

    dec h
    ld [$0422], sp
    ld bc, $0007
    inc hl
    ld [$0f03], sp
    inc b
    rlca
    inc b
    ld b, e
    inc b
    rlca
    rlca
    ld [$0807], sp
    rrca
    ld [$080b], sp
    inc bc
    ld b, h
    db $10
    rla
    dec c
    rra
    inc e
    ld [bc], a
    inc hl
    ld hl, $5d61
    ld a, l
    ld b, e
    ld h, a
    ld [bc], a
    ld b, d
    inc e
    inc a
    ld l, c
    nop
    ld hl, sp-$5d
    rst $20
    ldh [rNR51], a
    rst $38
    ld bc, $00ff
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    nop
    rst $38
    rra
    rst $38
    rst $38
    jp $85fd


    ld e, h
    ld h, l
    ld a, b
    ld b, $7c
    add b
    push af
    add hl, bc
    adc d
    add d
    db $f4
    inc c
    dec sp
    ei
    ldh [rNR50], a
    ld h, b
    ld a, [c]
    nop
    ld [bc], a
    nop
    ld b, e
    ld bc, $8900
    nop
    xor c
    ld [bc], a
    jr jr_056_7876

jr_056_7876:
    ldh [$61], a
    add hl, bc
    rrca
    rrca
    ldh a, [rIE]
    nop
    rst $38
    inc c
    rst $38
    jr jr_056_78bb

    ld b, e
    rst $28
    jr z, jr_056_78ca

    rst $08
    ld c, b
    inc de
    rst $18
    ld d, b
    sub a
    sub b
    sub e
    sub b
    adc e
    adc b
    add c
    adc e
    inc c
    inc c
    ld de, $1211
    rra
    inc c
    inc c
    inc bc
    inc bc
    or [hl]
    ld bc, $2643
    add b
    ld b, l
    ret nz

    ld b, b
    nop
    nop
    ret z

    adc l
    dec de
    ret nz

    ldh [rNR32], a
    inc e
    ld c, $12
    rlca
    add hl, bc
    rlca
    ld [$100f], sp
    ld a, a
    ld a, b
    add a
    add h

jr_056_78bb:
    add c
    add [hl]
    add e
    add d
    add a
    add h
    ld b, $45
    ld [bc], a
    ld b, e
    pop bc
    pop bc
    ld b, [hl]
    ld b, b
    ret nz

jr_056_78ca:
    ld c, b
    ld b, b
    ret nz

    ld b, e
    add b
    ld b, b
    adc b
    add $08
    ld b, b
    and b
    ldh [rNR10], a
    sub b
    db $10
    db $10
    ret nz

    ldh [$f4], a
    scf
    ld bc, $0322
    add b
    add b
    ld b, b
    ld b, b
    ld b, e
    and b
    jr nz, jr_056_78e9

jr_056_78e9:
    ret nc

    ld b, h
    db $10
    ldh a, [$03]
    ldh [rNR41], a
    ret nz

    ret nz

    db $ec
    add hl, hl
    rst $38
    ld [hl], a
    ld a, [bc]
    inc bc
    inc bc
    inc b
    dec b
    add hl, bc
    rrca
    ld c, $0e
    dec bc
    dec bc
    inc b
    add $88
    ld [bc], a
    inc bc
    inc bc
    rlca
    jp nz, $ec92

    ld d, a
    inc b
    add b
    add b
    ld b, b
    ret nz

    and b
    ld [hl+], a
    ldh [rSC], a
    jr nz, @+$22

    ld b, b
    call nz, $0d88
    ld a, a
    ld a, a
    ei
    add a
    rst $38
    rlca
    rst $38
    ld b, a
    ei
    sbc e
    ldh [$a0], a
    ld b, b
    ld b, b
    db $ec
    ld b, a
    ld [hl+], a
    ld bc, $80d4
    dec c
    rlca
    rra
    rst $30
    db $eb
    xor [hl]
    rst $10
    jr @+$01

    ld b, $ff
    db $e3
    rst $38
    inc e
    inc e
    db $ec
    dec sp
    jr jr_056_7948

    ld b, $09
    rrca
    ld bc, $100b

jr_056_7948:
    inc de
    jr nc, jr_056_7985

    ld d, b
    ld a, a
    adc c
    rst $38
    add hl, bc
    rst $38
    dec l
    rst $38
    inc a
    rst $38
    xor [hl]
    rst $38
    ld h, a
    ld h, a
    inc hl
    ld [hl+], a
    daa
    ld [hl+], a
    rra
    ld [de], a
    inc d
    dec c
    dec bc
    rlca
    ld b, $39
    add hl, sp
    rst $00
    rst $38
    ld c, [hl]
    rst $38
    ld c, a
    rst $38
    ld a, $ff
    ld e, $ff
    call c, Call_056_43ff
    inc a
    ccf
    nop
    dec a
    ld [hl+], a
    ccf
    ld [de], a
    dec sp
    ld a, a
    ld d, e
    ld a, a
    ld h, b
    ld e, a
    ld d, b
    xor a
    or b
    rst $18
    ret z

jr_056_7985:
    cp a
    and h
    rst $18
    call nz, $44bf
    ld a, a
    ld b, h
    ld b, [hl]
    ld a, a
    ld b, d
    ld b, e
    ld [hl+], a
    ccf
    inc b
    ld sp, $193f
    rra
    add hl, de
    ld b, h
    rra
    dec d
    dec bc
    ld [$090f], sp
    rrca
    rlca
    rlca
    rrca
    rrca
    inc de
    rla
    ld c, $0f
    and l
    nop
    ld h, $e0
    inc l
    or b

jr_056_79af:
    ldh a, [$8c]
    db $fc
    ld b, e
    rst $38
    ld b, b
    rst $38
    jr nz, jr_056_79af

    nop
    cp $92
    rst $38
    jp c, $e9ff

    rst $38
    adc l
    rst $08
    rrca
    rrca
    rra
    inc e
    db $fd
    cp $fb
    dec e
    cp $9e
    ldh a, [$30]
    rst $28
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    di
    rst $38
    or $ff
    ld hl, sp+$22
    rst $38
    dec h
    ld hl, sp+$03
    ret nc

    ldh a, [rNR10]
    ldh a, [rKEY1]
    ld [$47f8], sp
    inc b
    db $fc
    ld b, e
    inc c

jr_056_79ec:
    db $fc
    nop
    inc c
    ld b, [hl]
    db $fc
    inc d
    ld bc, $fc24
    ld b, e
    xor b
    ld hl, sp+$00
    sbc b
    ld [hl+], a
    ld hl, sp+$05

Call_056_79fd:
    db $fc
    db $fc
    add h
    cp h
    ld a, b
    ld a, b
    ld l, c
    inc hl
    add b
    ld b, l
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_056_79ec

    dec b
    db $10
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [$89], a
    sbc e
    nop
    ld b, b
    ld [hl+], a
    ret nz

    db $10
    and b
    ldh [rNR32], a
    db $fc
    ld [de], a
    cp $4a
    cp $a5
    rst $38
    ld h, e
    ld a, a
    ld b, c
    ld a, a
    ld e, c
    ld a, a
    ld a, l
    ld [hl+], a
    ld a, a
    dec bc
    ccf
    daa
    ld e, a
    ld h, c
    rst $38
    and c
    ld a, a
    ld h, c
    ld e, $12
    inc c
    inc c
    db $ec
    sub e
    rst $38
    db $ec
    and a
    rrca
    inc c
    inc e
    ld h, $22
    ld e, l
    ld d, e
    rst $38
    sub h
    rst $38
    adc h
    ld a, a
    ld [hl], a
    ld a, $3f
    rlca
    rlca
    ld l, l
    ld bc, $0303
    ld [hl+], a
    inc b
    ld b, $06
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $7e01
    ldh [rNR41], a
    ld bc, $0703
    rrca
    rrca
    rra
    rra
    cpl
    ccf
    rrca
    ccf
    ld b, c
    ld l, e
    ld h, c
    ld a, a
    ld a, a
    ld a, [hl]
    ccf
    ld a, $1f
    ld a, [hl-]
    dec e
    add hl, de
    dec c
    add hl, bc
    dec bc
    ld [$0800], sp
    inc b
    inc b
    ld [bc], a
    inc bc
    push bc
    cp h
    ldh [$2d], a
    ld [bc], a
    inc bc
    inc b
    rlca
    jr @+$21

    pop hl
    rst $38
    sub c
    rst $38
    ld de, $07ff
    rst $38
    ld a, [de]
    ei
    ld h, d
    ld h, e
    ld [bc], a
    inc bc
    ld bc, $0601
    ld b, $07
    rrca
    dec bc
    ld [$1003], sp
    rla
    sub b
    ld a, a
    ld h, b
    ccf
    ld [hl], c
    ld c, $ea
    add h
    or h
    call nz, $e8d4
    add sp, $30
    jr nc, @+$75

    ld [$0c04], sp
    inc e
    inc e
    ld a, $7e
    rst $38
    rst $38
    cp $26
    rst $38
    ld e, $ef
    cp a
    pop hl
    dec sp
    ldh a, [$1f]
    ei
    rrca
    rst $38
    dec c
    di
    ld de, $88fb
    ei
    ld [$00ff], sp
    ld a, a
    add b
    ld a, a
    ld h, b
    ld e, a
    ld hl, $c6fe
    ld h, e
    ld a, a
    and h
    rst $38
    jr nc, @+$48

    rst $38
    nop
    ld bc, $ff01
    rst $00
    add c
    rra
    add hl, sp
    rst $38
    ld [c], a
    rst $38
    jr jr_056_7b0d

    inc b
    add l
    add b
    adc h
    pop bc
    ld [hl], c
    pop bc
    pop bc
    jp nz, $ccc2

    call z, $b1b1
    ld b, a
    ld b, [hl]

Call_056_7b00:
    ccf
    jr c, jr_056_7b12

    ld [$0607], sp
    ld bc, $0203
    inc bc
    pop de
    nop
    ret


jr_056_7b0d:
    ld h, e
    ld b, $e0
    ldh [rNR32], a

jr_056_7b12:
    db $fc
    jr c, jr_056_7b0d

    ldh a, [$a3]
    nop
    db $f4
    nop
    ld hl, sp+$22
    db $fc
    ld [hl+], a
    cp $c3
    add h
    add hl, bc
    sub b
    cp b
    cp b
    jr @-$06

    jr @-$22

    cp h
    ldh [$f0], a
    xor b
    nop
    ret nz

    ld [bc], a
    ldh [rNR41], a
    ldh [rSCX], a
    db $10
    ldh a, [rSCX]
    ld [$43f8], sp
    add h
    db $fc
    ldh [rNR51], a
    jp nz, Jump_056_42fe

    ld a, [hl]
    pop bc
    rst $38
    and c
    cp a
    and e
    cp a
    sbc a
    sbc l
    cpl
    ld hl, $afae
    cp b
    cp a
    ret z

    rst $30
    ld c, c
    ld d, [hl]
    add $d9
    and h
    xor e
    ld [c], a
    ld l, l
    jp nc, $1175

    ld [hl], a
    ld c, $fe
    db $10
    ld [hl], b
    ldh [$e0], a
    db $ec
    ld c, a
    add hl, de
    add b
    add b
    ld b, b
    ld b, b
    ld a, b
    ld a, b
    call nc, $b2cc
    cp $ee
    xor $9a
    sbc d
    push bc
    ld b, a

jr_056_7b77:
    add hl, sp
    rst $38
    add hl, bc
    rst $30
    ld c, $f6
    jr c, jr_056_7b77

    ret nz

    ret nz

    db $ec
    ld [hl], a
    rst $38
    db $ec
    dec hl
    ld bc, $0103
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $ec01
    dec l
    inc c
    ld bc, $0200
    ld [bc], a
    inc b
    nop
    dec b
    dec b
    rlca
    ld [bc], a
    ld bc, $0201
    add h
    adc e
    inc hl
    inc b

jr_056_7ba3:
    inc de
    inc c
    inc c
    db $76
    ld [hl], h
    add a
    add h
    ccf
    ld c, $77
    or l
    rst $08
    call z, $393f
    cp $e6
    ld hl, sp-$68
    ld h, b
    ld h, b
    db $f4
    ld h, $00
    ld b, $08
    ret nz

    jr nz, jr_056_7be0

    ldh [$60], a
    cp $be
    pop bc
    pop bc
    ld h, l
    add hl, de
    add hl, sp
    jr jr_056_7c12

    ld b, h
    add e
    ld [bc], a
    add e
    add d
    sub e
    sub d
    rst $00
    ld b, h
    db $fd
    jr c, @-$14

    nop
    push af
    pop bc
    ld a, [hl]
    ld a, [hl]
    xor b
    adc b
    ld hl, sp-$58

jr_056_7be0:
    ld [hl], b
    ld [hl], b
    ld hl, sp+$29
    nop
    ld e, e
    rra
    ld b, $06
    add hl, de
    jr jr_056_7ba3

    and b
    rst $08
    ld b, e
    call c, $d94c
    ld c, c
    rst $38
    ld b, [hl]
    rst $38
    jr nz, @+$01

    ld d, c
    cp $be
    ldh a, [$50]
    ld hl, sp-$48
    call nc, $fc54
    ld h, h
    call nc, $38c4
    jr c, @-$0a

    ld l, $00
    inc [hl]
    nop
    add b
    dec h
    ret nz

    jp $8d00


jr_056_7c12:
    rlca
    or b
    or b
    jr nc, @-$0e

    ld h, b
    ldh [$80], a
    add b
    db $ec
    inc sp
    add hl, bc
    ld bc, $0e01
    ld b, $09
    ld [$0e09], sp
    rlca
    rlca
    and e
    nop
    or b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    adc b
    nop
    ld l, a
    dec d
    inc b
    inc b
    ld a, $3c
    rst $08

jr_056_7c3a:
    call nz, $023f
    rst $38
    inc sp

Call_056_7c3f:
    rst $18
    jp nc, $323e

    db $fc
    db $e4
    ld hl, sp-$68
    ldh [$60], a
    add b
    add b
    adc c
    nop
    cp [hl]
    rlca
    and e
    and d
    add e
    add d
    rst $00
    ld b, h
    db $fd
    jr c, @-$77

    ld bc, $1200
    dec c
    ld [$9093], sp
    rst $10
    ld d, c
    or $32
    rst $38

jr_056_7c64:
    ld sp, $18ff
    rst $38

jr_056_7c68:
    inc a
    ei
    ld e, e
    ld hl, sp-$58
    ld hl, sp-$7c
    ld bc, $851b
    ld bc, $115c
    ld [hl], b
    jr nc, jr_056_7c68

    jr nc, jr_056_7c3a

    ret nz

    jr @+$1a

    ld l, h
    ld l, h
    call z, $d8bc
    jr c, jr_056_7c64

    ld h, b
    add b
    add b
    sub b
    nop
    ld e, d
    nop
    inc bc
    call nz, $84fa
    nop
    or c
    inc bc
    ret nz

    ld b, b
    ldh [$a0], a
    adc l
    nop
    cp b
    dec b
    sub e
    ld [de], a
    add e
    add d
    add e
    add d
    add a
    nop
    call z, $3e0b
    ld a, $70
    ld [hl], b
    xor b
    adc b
    ld hl, sp-$48
    xor b
    xor b
    ld [hl], b
    ld [hl], b
    adc c
    rst $28
    dec bc
    ldh a, [$50]
    ldh a, [$b0]
    ld a, h
    ld a, h
    ld [$be6a], a
    or d
    ld a, [hl+]
    ld [hl+], a
    xor e
    ld bc, $8524
    ld bc, $01d2
    adc e
    adc d
    add l
    cp a
    rst $38
    db $ec
    add c
    ld [hl+], a
    ld bc, $0323
    ld [hl+], a
    rlca
    inc bc
    dec b
    dec b
    ld b, $06
    dec h
    rlca
    ld bc, $0303
    call nc, $0194
    ld bc, $8400
    xor h
    ld [bc], a
    dec b
    rlca
    add hl, bc
    ld b, [hl]
    rrca
    ld [$0443], sp
    rlca
    add e
    adc a
    ld bc, $0705
    add e
    cp b
    add e
    sub a
    dec bc
    add hl, bc
    rrca
    ld [de], a
    ld e, $14
    inc e
    ld [$0908], sp
    add hl, bc
    ld b, $06
    ld l, a
    inc bc
    rrca

Jump_056_7d07:
    rra
    ccf
    ld a, a
    inc hl
    rst $38
    rrca
    db $fc
    db $fc
    ldh a, [$f1]
    db $e3
    rst $20
    rst $28
    rst $38
    db $fd
    db $fd
    cp d
    cp a
    rst $28
    ldh a, [$f7]
    db $ec
    ld b, e
    ei
    add sp, $1b
    rst $28
    ldh [$67], a
    ldh [$36], a
    ld [hl], c
    dec hl
    inc l
    dec c
    dec bc
    rra
    add hl, de
    ld h, $25
    ld b, d
    ld d, e
    add c
    adc c
    add b
    add h
    nop
    ld h, d
    nop
    ld de, $0800
    inc b
    inc b
    add e
    nop
    sub [hl]
    ld bc, $8181
    inc hl
    add b
    ld b, $40
    ret nz

    pop bc
    ret nz

    ld h, c
    ret nz

    ld a, e
    ld b, h

jr_056_7d4e:
    ret nz

    rst $38
    nop
    ld a, [hl]
    ld b, h
    ret nz

    ld a, h
    dec bc
    ld l, d
    ret nz

    call nc, Call_056_68c0
    ld b, b
    ld h, c
    ld h, b
    ld hl, sp-$08
    rst $30
    rst $38
    or c
    nop
    sbc h
    dec d
    ret nz

    ldh [$e0], a
    ldh a, [$08]
    adc b
    inc b
    inc b
    db $fc
    cp $fe
    ld a, a
    or a
    ld [hl], a
    ei
    ccf
    db $eb
    ccf
    rst $38
    rlca
    rst $18
    scf
    ld b, e
    xor $2e
    rlca

jr_056_7d80:
    cp $0e
    cp [hl]
    ld c, [hl]
    db $f4
    sub [hl]
    call nz, $a464
    nop
    or b
    add hl, bc
    and b
    sub b
    sub b
    add b
    sbc b
    nop
    sub h
    inc b
    sub h
    nop
    ld b, e
    sub d
    ld [bc], a
    ldh [$28], a
    xor d
    ld [c], a
    ld a, [$f2e2]
    pop af
    di
    pop af
    sub l
    ld [hl], b
    ld a, d
    call c, $aa1c
    ld [bc], a
    rst $10
    inc bc
    db $fd
    rlca
    cp $09
    ld e, $19
    rra
    rra
    inc d
    scf
    jr z, jr_056_7de7

    jr nc, jr_056_7df9

    ld h, b
    ccf
    and b
    ccf
    ld a, c
    ccf
    rst $38
    ld a, a
    sbc a
    cp a
    ld a, a
    inc hl
    add b
    ld bc, $8000
    db $ec
    add hl, hl
    jr jr_056_7d4e

    add b
    ld b, b
    ld b, b
    jr nz, jr_056_7df3

    ldh a, [$f0]
    or b
    jr nc, jr_056_7d80

    ld e, b
    db $fc
    ld e, h
    rst $28
    ld [hl], e
    sub a
    ld hl, sp+$09
    cp $48
    rst $38
    ld c, c
    rst $38
    db $db
    ld [hl+], a

jr_056_7de7:
    rst $38
    inc bc
    cp $ff
    ld hl, sp-$04
    db $ec
    ld e, a
    inc hl
    add b
    add hl, bc
    add e

jr_056_7df3:
    add e
    add h
    add a
    ld [$098e], sp

jr_056_7df9:
    dec bc
    add hl, bc
    add hl, bc
    add e
    ld bc, $ec22
    ld h, c
    add e
    ld bc, $002c
    jr nz, @+$45

    ldh [$a0], a
    ld [bc], a
    and b
    ld [hl], b
    ld [hl], b
    and e
    rst $28
    rst $38
    ld a, l
    rlca
    ld c, h
    ld c, h
    cp a
    or e
    ld hl, sp-$7c
    ld [hl], e
    ld c, e
    ld b, e
    inc sp
    dec hl
    inc bc
    ld a, h
    ld c, l
    jr nc, jr_056_7e52

    db $ec
    ld h, b
    ld [hl+], a
    ld bc, $f10f
    ei
    jp z, $b6df

    xor d
    xor e
    or [hl]
    push de
    ld [$7779], a
    dec c

jr_056_7e34:
    rrca
    inc bc
    inc bc
    db $ec
    ld c, [hl]
    nop
    ld [bc], a
    ld [hl+], a
    inc bc
    ld [hl+], a
    rlca
    dec bc
    ld e, $1e
    ld a, a

Call_056_7e43:
    ld a, a
    cp e
    rst $38
    rst $28
    rst $38
    db $fd
    adc $37
    ld c, b
    ld b, h
    ccf
    nop
    ld [de], a
    add b
    rst $38

jr_056_7e52:
    ld b, b
    cp l
    inc hl
    cp a
    ld hl, $21df
    rst $28
    sub b
    ld a, a
    adc [hl]
    add hl, sp
    ld h, d
    add hl, de
    ld [hl], $07
    rrca
    ld b, e
    ld [bc], a
    inc bc
    ld hl, sp+$43
    nop
    sub b
    ld de, $b7a2
    ldh a, [rIE]
    add hl, sp
    ld a, a
    rst $08
    rst $18
    rst $30
    rst $30
    ld a, e
    rst $38
    ei
    ei
    cp l
    db $fd
    db $fd
    dec a
    ld b, e
    db $fd
    rra
    dec de
    rst $38
    sbc e
    dec sp
    ld d, l
    scf
    ld e, c
    ld [hl], $4b
    db $ed
    ld d, $f6
    dec e
    rst $20
    ld a, $cf
    rst $38
    di
    rst $38
    ld h, c
    rst $38
    ld bc, $87ff
    rst $38
    ld a, [hl]
    ld a, a
    ld [$230e], sp
    rrca
    nop
    rlca
    push bc
    nop
    rst $30
    ld bc, $0303
    ldh a, [$2e]
    ld bc, $021f
    ld [hl], b
    ldh a, [rNR41]
    ld [hl+], a
    ldh [$e0], a
    jr nc, jr_056_7e34

    add b
    pop hl
    pop hl
    ld [de], a
    di
    and d
    db $e3
    call nz, $e5c7
    rst $20
    db $db
    rst $38
    or $ff
    add sp, -$01
    or c
    rst $38
    cp $ff
    sub l
    ld [$55aa], a
    ld d, l
    xor d
    xor e
    ld d, a
    ld a, h
    cp h
    ret nz

    ret nz

    add b
    ret nz

    cp h
    db $fc
    sub e
    rst $38
    inc e
    rst $18
    ld [hl-], a
    cp a
    ld h, c
    ld a, a
    sbc a
    rst $38
    ldh [rLY], a
    rst $38

jr_056_7ee6:
    ret nz

    ld b, e
    add b
    rst $38
    add hl, bc
    nop
    rst $10
    ld bc, $81af
    rst $18
    ld b, d
    ld a, a
    ld a, $3e
    ldh a, [$2d]
    ld sp, hl
    inc b
    ret c

    ret c

    ld [hl+], a
    cp $41
    add h
    jp $000f


    rst $38
    ld bc, $1eff
    rst $38
    pop hl
    db $fd
    db $dd
    ld e, l
    ld e, [hl]
    rst $18
    rst $28
    ld l, a
    ld a, b
    cp h
    xor e
    nop
    and b
    inc hl
    add b
    ld b, e
    ld b, b
    ret nz

    dec b
    ret nz

    ret nz

    ld b, b
    ret nz

    nop
    add b
    and l
    nop
    ld a, [c]
    ld bc, $b0a0
    ld [hl+], a
    db $10
    db $10
    ld [hl], b
    nop
    sub b
    jr c, jr_056_7ee6

    ld hl, sp-$08
    xor h
    db $fc
    ld d, [hl]
    ld a, [hl]
    ld h, d
    ld [hl], d
    ld [hl+], a
    ld l, $12
    ld [de], a
    db $f4
    dec h
    nop
    inc l
    ld de, $b8b8
    ld d, h
    adc $f6
    jp z, $92ee

    ld hl, sp+$04
    or [hl]
    ld a, d
    ld a, [hl]
    sub d
    db $fc
    sbc h
    ld h, b
    ld h, b
    db $ec
    dec a
    rst $38
    ld a, l
    inc bc
    ld bc, $0001
    ld bc, $0243
    inc bc
    ld bc, $0101
    db $ec
    ld c, l
    jr jr_056_7fd4

    ld [hl], b
    ld a, b
    ld c, b
    cp $86
    rst $38
    sbc l
    rst $38
    sbc $ff
    cp $7f
    rst $18
    ld a, a
    rst $28
    ld a, [hl]
    cp $fc
    db $fc
    ld a, h
    ld a, h
    ld a, $38
    ld c, $48
    ld [$430f], sp
    rlca
    inc b
    ld bc, $0203
    ldh a, [$3b]
    rst $30
    inc hl
    ld bc, $9f03
    adc a
    ldh [$e0], a
    xor a
    jp $c101


    nop
    ld b, a
    rst $38
    nop
    add hl, bc
    db $fd
    nop
    xor d
    nop
    push de
    add b
    ld l, d
    ld h, b
    rra
    rrca
    db $ec
    cpl
    ld a, [de]
    ld h, b
    ld h, b
    sbc b
    adc b
    inc [hl]
    inc a
    adc $62
    cp $82
    db $fc
    call nz, $b8f8
    ld a, b
    ld l, b
    inc c
    inc b
    ld c, $02
    ld e, $02
    rra
    ld bc, HeaderManufacturerCode
    ld a, a
    ld b, e
    ld bc, $14ff
    rrca
    push af
    rra
    ld a, [$fd3f]
    ccf
    ld a, a
    ccf
    cp e
    ccf
    ld a, e
    ccf
    db $fd
    ld a, a
    sbc a

jr_056_7fd4:
    sbc [hl]
    rrca
    ld c, $03
    ld [bc], a
    ldh a, [rWX]
    nop
    ld h, $0c
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    sub b
    ldh a, [$08]
    ld hl, sp+$08
    ret z

    adc b
    ld [hl+], a
    ret z

    ld bc, $70f0
    ld b, h
    sub b
    db $10
    ld [bc], a
    sub b
    ld h, b
    ld h, b
    db $ec
    ld l, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
