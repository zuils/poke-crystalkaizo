; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

    ldh a, [$e6]
    and a
    ret z

    ldh a, [$ea]
    and a
    ret z

    ld a, [$cfbe]
    push af
    set 7, a
    ld [$cfbe], a
    call Call_05b_4108
    ld a, $40
    ld hl, $4063
    rst $08
    ld a, $40
    ld hl, $4082
    rst $08
    call Call_05b_4031
    ld a, $40
    ld hl, $40a4
    rst $08
    xor a
    ldh [$ea], a
    pop af
    ld [$cfbe], a
    ret


Call_05b_4031:
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$d002], a
    ld [$d003], a

jr_05b_403e:
    call $045a
    ld a, $41
    ld hl, $635c
    rst $08
    ld a, [$d002]
    ld hl, $405c
    rst $28
    call Call_05b_4b2e
    call Call_05b_4bae
    ld a, [$d002]
    cp $ff
    jr nz, jr_05b_403e

    ret


    ld [hl], h
    ld b, b
    cp d
    ld b, b
    adc c
    ld b, b
    sbc [hl]
    ld b, b
    xor b
    ld b, b
    call c, $ec40
    ld b, b
    cp d
    ld b, b
    jp z, $dc40

    ld b, b
    db $ec
    ld b, b
    add c
    ld b, b
    ld a, [$cf64]
    and a
    ret z

    ld [$d002], a
    xor a
    ld [$d003], a
    ret


    push af
    ld a, $ff
    ld [$d002], a
    pop af
    ret


    ld a, $01
    ld [$d1eb], a
    ld [$d1f1], a
    xor a
    ldh [$d2], a
    call Call_05b_40fa
    ld a, [$d002]
    ld [$cf64], a
    ret


    ld a, [$cf64]
    cp $04
    ret nz

    call Call_05b_40fa
    ret


    xor a
    ld [$d1eb], a
    ld [$d1f1], a
    call $300b
    ld a, $90
    ldh [$d2], a
    call Call_05b_40fa
    ret


    call Call_05b_4943
    push af
    ld a, [$d003]
    inc a
    ld [$d003], a
    pop af
    call c, Call_05b_40fa
    ret


    ld a, [$d003]
    cp $28
    push af
    ld a, [$d003]
    inc a
    ld [$d003], a
    pop af
    call z, Call_05b_40fa
    ret


    call Call_05b_4a11
    push af
    ld a, [$d003]
    inc a
    ld [$d003], a
    pop af
    call c, Call_05b_40fa
    ret


    call $31f3
    call $0fdb
    push af
    ld a, $ff
    ld [$d002], a
    pop af
    ret


Call_05b_40fa:
    push af
    ld a, [$d002]
    inc a
    ld [$d002], a
    xor a
    ld [$d003], a
    pop af
    ret


Call_05b_4108:
    call $0568
    ld hl, $9000
    ld de, $4173
    ld bc, $5b68
    call $0f82
    call Call_05b_4130
    call Call_05b_4145
    call Call_05b_415c
    ld hl, $9800
    call Call_05b_4c73
    call $4c02
    xor a
    ldh [$d4], a
    call $058a
    ret


Call_05b_4130:
    ld de, $d000
    ld hl, $4903
    ld bc, $0008
    ld a, $05
    call $306b
    ld a, $02
    ld hl, $56a4
    rst $08
    ret


Call_05b_4145:
    ld hl, $c4a0
    ld bc, $0014
    xor a
    call $3041
    ld hl, $4633
    ld de, $c4b4
    ld bc, $0154
    call $3026
    ret


Call_05b_415c:
    ld hl, $cdd9
    ld bc, $0014
    xor a
    call $3041
    ld hl, $479b
    ld de, $cded
    ld bc, $0154
    call $3026
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    rrca
    ld [$615e], sp
    ld a, d
    add [hl]
    ld hl, sp+$09
    nop
    nop
    dec c
    ld c, $5d
    ld h, e
    add sp, $18
    and h
    ld h, a
    xor [hl]
    or d
    or h
    call z, $10f0
    add $fe
    or b
    ld [hl], b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

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

jr_05b_41de:
    nop
    nop
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
    add b
    add a
    add a
    ld [$7f63], sp
    dec c
    ld c, $00
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    db $fc
    db $fd
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0203
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nz, jr_05b_4298

    ld b, c
    db $fc
    add d
    cp $02
    ld sp, hl
    dec b
    ld hl, sp+$01
    rst $10
    inc [hl]
    add a
    ld c, b
    adc [hl]
    sub c
    rra
    ld hl, $423e
    ld sp, hl
    add l
    ld hl, sp+$01
    pop af
    ld [$2cec], sp
    nop
    sbc b
    jr jr_05b_4261

    jr nz, jr_05b_428b

    ldh a, [$90]
    pop hl
    ld bc, $21c0
    jp $0b22


    inc c
    rra
    db $10
    ccf
    jr nz, jr_05b_42c9

    ld b, b
    rst $38
    add b
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
    ldh a, [rIF]
    ret nc

    jr nc, jr_05b_41de

    ld b, b
    nop
    add b

jr_05b_4261:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop

jr_05b_4271:
    nop
    nop
    add a
    ld [$008f], sp
    sbc a
    sub b
    rrca
    db $10
    rrca
    db $10
    rra
    nop
    rra
    nop
    rra
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    rra

jr_05b_428b:
    ldh a, [rNR10]
    ldh [rP1], a
    ret nz

    jr nz, jr_05b_4271

    ccf

jr_05b_4293:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05b_4298:
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ld a, a
    add b
    or a
    or h
    ret nz

    ld e, c
    sbc b
    ld d, h
    call nz, $ef0a
    add hl, hl
    rst $20
    jr nz, jr_05b_4293

    inc h
    db $e3
    inc h
    ld bc, $0102
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0102
    ld [bc], a

jr_05b_42c1:
    inc bc
    ld [bc], a
    pop af
    ld [$0af3], sp
    ld sp, hl
    ld a, [bc]

jr_05b_42c9:
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    ld a, [bc]
    di
    ld a, [bc]
    pop af
    ld [$01f8], sp
    ei
    ld a, [bc]
    pop af
    ld [bc], a
    pop hl
    ld [de], a
    pop hl
    ld [de], a
    pop hl
    ld [de], a
    pop af
    ld [bc], a
    ei
    ld a, [bc]
    pop af
    ld [$22e1], sp
    rst $20
    inc h
    jp $c304


    inc b
    rst $08
    ld [$28ef], sp
    rst $28
    jr z, jr_05b_42c1

    jr z, @+$01

    ld bc, $02fc
    cp $02
    db $fc
    nop
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec bc
    inc c
    rlca
    ld [$0807], sp
    rlca
    ld [$0e09], sp
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $01
    rst $38
    ld bc, $01ff
    cp $00
    db $fc
    ld [bc], a
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, a
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
    pop bc
    ld b, c
    ret nz

    ld b, b
    add b
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
    add b
    rst $38
    add b
    add a
    ld b, h
    rst $00
    ld b, h
    inc bc
    add b
    jp $8340


    ld b, b
    rst $20
    inc h
    rst $20
    inc h
    db $e3
    inc h
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    dec b
    cp $02
    db $fc
    add d

jr_05b_4379:
    ccf
    ld b, c
    ccf
    jr nz, jr_05b_439d

    db $10
    dec bc
    inc c
    ld bc, $f802
    ld bc, $85f9
    ld a, $42
    ld e, $20
    adc [hl]
    sub c
    add a
    ld c, b
    rst $10
    inc [hl]
    ld a, [$cf0b]
    jr z, jr_05b_4379

    inc b
    di
    sub h
    daa
    ld d, h
    add hl, de
    ld a, [hl+]

jr_05b_439d:
    nop
    sbc c
    xor h
    ld l, h
    ldh a, [rNR10]
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    ld h, b
    ld bc, $0302
    nop
    add a
    add h
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    cp $02
    cp $02
    db $fc
    nop
    ld hl, sp+$04
    db $fd
    dec b
    pop af
    add hl, bc
    pop hl
    ld de, $80ff
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    ld bc, $8281
    add e
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fa
    add sp, $18
    db $e3
    inc h
    add a
    ld b, b
    rst $08
    ld c, c
    inc b
    adc d
    sbc b
    sub h
    nop
    add hl, de
    dec [hl]
    ld [hl], $0f
    ld [$801f], sp
    sbc [hl]
    and c
    ld a, h
    ld b, d
    ld a, b
    inc b
    ld [hl], c
    adc c
    pop hl
    ld [de], a
    db $eb
    inc l
    ld e, a
    ret nc

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
    nop
    nop
    nop
    nop
    ld a, d
    add [hl]
    ld e, [hl]
    ld h, c
    rra
    jr jr_05b_443c

    inc bc
    nop

jr_05b_443c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    call z, $b2ae
    xor h
    ld l, a
    jp hl


    add hl, de
    ld e, l
    ld h, e
    dec c
    ld c, $00
    nop
    nop
    nop
    jr @+$21

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    or b
    ld [hl], b
    add $fe
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld hl, $00e1
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    nop

Call_05b_4488:
    nop
    inc bc
    inc bc
    nop
    nop
    dec c
    ld c, $63
    ld a, a
    nop
    nop
    ld e, [hl]
    ld h, c
    ld a, d
    add [hl]
    ld hl, sp+$18
    ld b, c
    jp nz, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    adc $24
    sbc e
    dec d
    add h
    dec de
    sbc a
    ld a, [bc]
    inc c
    sbc l
    nop
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
    ld h, $39
    ld h, $1f
    jr nz, jr_05b_44c4

jr_05b_44c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    ld c, b
    rst $08
    ld d, b
    sbc e
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $a1
    cp a
    ld h, b
    rst $38
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    jr jr_05b_4566

    sbc b
    db $76
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld b, b
    ld [hl], b
    ld c, h
    ld a, h
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    inc h
    dec a
    ld b, d
    ld a, c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_4519:
    nop
    nop
    nop
    nop
    db $fd
    ld h, [hl]
    sbc e
    ld h, h
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    ld b, c
    rst $18
    ld hl, $e18d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    inc b
    rst $00
    inc [hl]
    jp $0004


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$38
    jr c, jr_05b_4519

    ldh a, [$08]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    ld [hl+], a
    ld [hl], $49

jr_05b_4561:
    ld l, [hl]
    ld e, $00
    nop
    nop

jr_05b_4566:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$7c
    db $fc
    add d
    db $fc
    sub d
    ld a, a
    ld b, b
    db $76
    ld c, c
    scf
    ld c, c
    ccf
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$21
    ei
    ld h, $cf
    jr nc, jr_05b_4561

    jr c, jr_05b_458c

jr_05b_458c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $21
    rst $38
    inc h
    cp e
    ld h, h
    ld a, $a1
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $98
    db $76
    sbc b
    ld [hl], a
    sbc b
    ld [hl], a
    jr jr_05b_45ac

jr_05b_45ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld b, b
    ld [hl], b
    ld b, b
    ldh a, [$4c]
    db $fc
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld b, d
    inc e
    ld [hl], d
    inc a
    ld b, d
    jr jr_05b_45ef

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    sub h
    pop af
    sub a
    di
    sub h
    pop af
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call $cd01
    ld hl, $21cd
    adc l
    ld b, c
    nop
    nop
    nop
    nop

jr_05b_45ef:
    nop
    nop
    nop
    nop
    rst $38
    ld [$09ce], sp
    add $39
    rst $30
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc b
    call c, $f824
    inc h
    ld hl, sp+$24
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    jr jr_05b_4695

    inc c
    ld a, $41
    dec e
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$fc86]
    sub d
    db $ec
    sub d
    ld hl, sp-$7c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_4695:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, $08
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    dec bc
    ld a, [bc]
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_05b_46e1

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $16
    dec d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_05b_46fa

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

jr_05b_46e1:
    ld a, [hl+]
    jr nz, jr_05b_4703

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05b_4721

    cpl
    ld sp, $322d
    inc sp
    nop
    nop
    nop

jr_05b_46fa:
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_05b_4703:
    jr c, jr_05b_473e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    nop

jr_05b_4721:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_473e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_482e

    jr nz, jr_05b_4810

jr_05b_4810:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_4843

    jr nz, jr_05b_4825

jr_05b_4825:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_482e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_4857

    jr nz, jr_05b_4839

jr_05b_4839:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_4843:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_486c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_4857:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_485e

jr_05b_485e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_486c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, h
    ld d, c
    ld [hl], b
    ld h, [hl]
    ld a, c
    ld [hl], a
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

Call_05b_4943:
    ld a, [$d003]
    and a
    jr nz, jr_05b_495e

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, $ff
    ld bc, $0008
    ld hl, $d000
    call $3041
    pop af
    ldh [rSVBK], a

jr_05b_495e:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld e, $00
    ld a, $00

jr_05b_4969:
    ld hl, $4903
    call Call_05b_4ab6
    call Call_05b_4abb
    ld d, a
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4abb
    cp d
    jr z, jr_05b_4991

    ld b, $01

jr_05b_4981:
    dec a
    cp d
    jr z, jr_05b_4988

    dec b
    jr nz, jr_05b_4981

jr_05b_4988:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4adc

jr_05b_4991:
    ld hl, $4903
    call Call_05b_4ab6
    call Call_05b_4ad8
    ld d, a
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4ad8
    cp d
    jr z, jr_05b_49b9

    ld b, $01

jr_05b_49a9:
    dec a
    cp d
    jr z, jr_05b_49b0

    dec b
    jr nz, jr_05b_49a9

jr_05b_49b0:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4b08

jr_05b_49b9:
    ld hl, $4903
    call Call_05b_4ab6
    call Call_05b_4ac4
    ld d, a
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4ac4
    cp d
    jr z, jr_05b_49e1

    ld b, $01

jr_05b_49d1:
    dec a
    cp d
    jr z, jr_05b_49d8

    dec b
    jr nz, jr_05b_49d1

jr_05b_49d8:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4ae8

jr_05b_49e1:
    inc e
    inc e
    ld a, e
    cp $08
    jr nz, jr_05b_4969

    ld a, $02
    ld hl, $56a4
    rst $08
    call $32f9
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d003]
    cp $1f
    jr z, jr_05b_4a09

    pop af
    ldh [rSVBK], a
    ld e, $00
    pop af
    ldh [rSVBK], a
    and a
    ret


jr_05b_4a09:
    pop af
    ldh [rSVBK], a
    pop af
    ldh [rSVBK], a
    scf
    ret


Call_05b_4a11:
    ld a, [$d003]
    and a
    jr nz, jr_05b_4a1d

    ld a, $02
    ld hl, $56a4
    rst $08

jr_05b_4a1d:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld e, $00
    ld a, $00

jr_05b_4a28:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4abb
    cp $1f
    jr z, jr_05b_4a48

    ld b, $01

jr_05b_4a37:
    inc a
    cp $1f
    jr z, jr_05b_4a3f

    dec b
    jr nz, jr_05b_4a37

jr_05b_4a3f:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4adc

jr_05b_4a48:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4ad8
    cp $1f
    jr z, jr_05b_4a68

    ld b, $01

jr_05b_4a57:
    inc a
    cp $1f
    jr z, jr_05b_4a5f

    dec b
    jr nz, jr_05b_4a57

jr_05b_4a5f:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4b08

jr_05b_4a68:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4ac4
    cp $1f
    jr z, jr_05b_4a88

    ld b, $01

jr_05b_4a77:
    inc a
    cp $1f
    jr z, jr_05b_4a7f

    dec b
    jr nz, jr_05b_4a77

jr_05b_4a7f:
    ld hl, $d000
    call Call_05b_4ab6
    call Call_05b_4ae8

jr_05b_4a88:
    inc e
    inc e
    ld a, e
    cp $08
    jr nz, jr_05b_4a28

    ld a, $02
    ld hl, $56a4
    rst $08
    call $32f9
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d003]
    cp $1f
    jr z, jr_05b_4aae

    pop af
    ldh [rSVBK], a
    pop af
    ldh [rSVBK], a
    and a
    ret


jr_05b_4aae:
    pop af
    ldh [rSVBK], a
    pop af
    ldh [rSVBK], a
    scf
    ret


Call_05b_4ab6:
    ld b, $00
    ld c, e
    add hl, bc
    ret


Call_05b_4abb:
    inc hl
    ld a, [hl]
    srl a
    srl a
    and $1f
    ret


Call_05b_4ac4:
    inc hl
    ld a, [hl-]
    and $03
    ld b, a
    ld a, [hl]
    sla a
    rl b
    sla a
    rl b
    sla a
    rl b
    ld a, b
    ret


Call_05b_4ad8:
    ld a, [hl]
    and $1f
    ret


Call_05b_4adc:
    sla a
    sla a
    ld b, a
    inc hl
    ld a, [hl]
    and $83
    or b
    ld [hl], a
    ret


Call_05b_4ae8:
    ld c, a
    srl a
    srl a
    srl a
    ld b, a
    inc hl
    ld a, [hl]
    and $fc
    or b
    ld [hl-], a
    ld a, c
    sla a
    sla a
    sla a
    sla a
    sla a
    ld b, a
    ld a, [hl]
    and $1f
    or b
    ld [hl], a
    ret


Call_05b_4b08:
    ld b, a
    ld a, [hl]
    and $e0
    or b
    ld [hl], a
    ret


Call_05b_4b0f:
    xor a
    ld [$d1ea], a
    ld [$d1eb], a
    xor a
    ld [$d1ec], a
    ld a, $70
    ld [$d1ee], a
    ld a, $04
    ld [$d1ed], a
    ld a, $a0
    ld [$d1ef], a
    xor a
    ld [$d1f0], a
    ret


Call_05b_4b2e:
    ld a, [$d1eb]
    and a
    ret z

    call Call_05b_4b40
    ld hl, $4b86
    ld de, $c400
    call Call_05b_4b5d
    ret


Call_05b_4b40:
    ld hl, $d1ec
    inc [hl]
    ld a, [hl]
    cp $18
    ret c

    xor a
    ld [hl], a
    ld a, [$d1ef]
    cp $a0
    jr nz, jr_05b_4b57

    ld a, $a7
    ld [$d1ef], a
    ret


jr_05b_4b57:
    ld a, $a0
    ld [$d1ef], a
    ret


Call_05b_4b5d:
    ld a, [hl+]
    and a
    ret z

jr_05b_4b60:
    push af
    ld a, [$d1ee]
    add [hl]
    add $10
    ld [de], a
    inc hl
    inc de
    ld a, [$d1ed]
    add [hl]
    add $08
    ld [de], a
    inc hl
    inc de
    ld a, [$d1ef]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$d1f0]
    or [hl]
    ld [de], a
    inc hl
    inc de
    pop af
    dec a
    jr nz, jr_05b_4b60

    ret


    rlca
    nop
    nop
    nop
    ld bc, $0008
    ld bc, $0801
    ld [$0002], sp
    ld [$0310], sp
    nop
    stop
    inc b
    ld bc, $0810
    dec b
    nop
    db $10
    db $10
    ld b, $00

Call_05b_4ba3:
    xor a
    ld [$d1f1], a
    ld [$d1f2], a
    ld [$d1f3], a
    ret


Call_05b_4bae:
    ld a, [$d1f1]
    and a
    ret z

    call Call_05b_4bba
    call Call_05b_4bd1
    ret


Call_05b_4bba:
    ld hl, $d1f2
    inc [hl]
    ld a, [hl]
    cp $0c
    ret c

    xor a
    ld [hl], a
    ld a, [$d1f3]
    inc a
    cp $04
    jr c, jr_05b_4bcd

    xor a

jr_05b_4bcd:
    ld [$d1f3], a
    ret


Call_05b_4bd1:
    ld a, [$d1f3]
    ld c, a
    ld b, $00
    ld hl, $4bfb
    add hl, bc
    ld a, [hl]
    ld bc, $0002
    ld hl, $4fa3
    call $30fe
    ld de, $d00c
    ld bc, $0002
    ld a, $05
    call $306b
    ld a, $02
    ld hl, $56a4
    rst $08
    ld a, $01
    ldh [$e5], a
    ret


    nop
    ld bc, $0102
    nop
    ld bc, $cd02
    jr jr_05b_4c51

    call Call_05b_4c49
    call Call_05b_4c62
    call Call_05b_4c25
    call Call_05b_4c6e
    call Call_05b_4b0f
    call Call_05b_4ba3
    ret


    ld hl, $8800
    ld de, $4ca3
    ld bc, $5b2e
    call $0f82
    ret


Call_05b_4c25:
    ld hl, $4fa9
    ld de, $d008
    call Call_05b_4c41
    ld hl, $4fb1
    ld de, $d040
    call Call_05b_4c41
    ld hl, $4fb9
    ld de, $d048
    call Call_05b_4c41
    ret


Call_05b_4c41:
    ld bc, $0008
    ld a, $05
    jp $306b


Call_05b_4c49:
    ld hl, $c5d0
    ld a, $80
    call Call_05b_4c5a

jr_05b_4c51:
    ld hl, $c5e4
    ld a, $90
    call Call_05b_4c5a
    ret


Call_05b_4c5a:
    ld c, $10

jr_05b_4c5c:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_05b_4c5c

    ret


Call_05b_4c62:
    ld hl, $cf05
    ld bc, $0028
    ld a, $01
    call $3041
    ret


Call_05b_4c6e:
    ld hl, $9c00
    jr jr_05b_4c73

Call_05b_4c73:
jr_05b_4c73:
    ldh a, [rVBK]
    push af
    ld a, $00
    ldh [rVBK], a
    push hl
    ld de, $c4a0
    call Call_05b_4c90
    pop hl
    ld a, $01
    ldh [rVBK], a
    ld de, $cdd9
    call Call_05b_4c90
    pop af
    ldh [rVBK], a
    ret


Call_05b_4c90:
    ld bc, $1214

jr_05b_4c93:
    push bc

jr_05b_4c94:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_05b_4c94

    ld bc, $000c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_05b_4c93

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ccf
    db $10
    ld a, [hl]
    ld a, [hl]
    ccf
    stop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld e, a
    ld e, d
    ld a, l
    ld d, b
    ld a, e
    ld d, e
    ld a, c
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    dec hl
    ld [hl+], a
    db $d3
    jp nz, $42e3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    sbc a
    rst $08
    add b
    jp $c383


    add d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9f01
    sbc a
    rst $18
    sub c
    rst $38
    cpl
    rrca
    ld bc, $0000
    nop
    nop
    nop
    nop
    add e
    add e
    rst $38
    cp [hl]
    rst $18
    inc bc
    add e
    ld [bc], a
    add e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    cp $be
    rst $38
    and d
    rst $38

jr_05b_4d10:
    ld e, [hl]
    rra

jr_05b_4d12:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1e08], sp
    ld e, $0f
    ld [$0f0f], sp
    rra
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    ld c, $07
    ld [bc], a
    rra
    rra
    adc a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    cp d
    cp d
    rst $38
    ld [de], a
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

jr_05b_4d4e:
    add hl, bc
    sbc c
    sub c
    pop bc
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $b021
    jr nz, jr_05b_4d10

    jr nz, jr_05b_4d12

    jr nz, jr_05b_4d64

jr_05b_4d64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    db $f4
    cp $44
    and [hl]
    add h
    add $84
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    sbc a
    sbc a
    rst $08
    ld b, d
    ld a, a
    ld e, a
    ld l, a
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$7e08], sp
    ld a, [hl]
    cp [hl]
    jr jr_05b_4dcc

    jr z, jr_05b_4d4e

    jr jr_05b_4d94

jr_05b_4d94:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr jr_05b_4db5

    ld c, $0e
    rrca
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    xor b
    adc b

jr_05b_4db5:
    call z, Call_05b_4488
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    ld h, e
    ld b, d
    ld h, l
    ld b, h
    ld [hl+], a
    nop
    nop
    nop
    nop

jr_05b_4dcc:
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    db $e3
    and d
    push de
    call nz, $0062
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    ld b, $00
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    add l
    inc b
    ld a, [bc]
    ld [$0004], sp
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    dec b
    inc b
    ld a, [de]
    jr jr_05b_4e14

    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    ld a, [de]

jr_05b_4e14:
    db $10
    rrca
    rrca
    rlca
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    inc bc
    ld [bc], a
    dec b
    inc b
    add d
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    add hl, de
    db $10
    add hl, sp
    add hl, sp
    inc e
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    ld h, d
    ld b, d
    xor l
    adc h
    add $00
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    or h
    inc h
    ld a, [de]
    jr @+$0e

    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    add $84
    ld h, d
    ld h, d
    ld sp, $0000
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    ld a, a
    ld d, e
    ld l, a
    ld c, h
    ld h, $00
    nop

jr_05b_4e7a:
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    inc e
    ld [$1094], sp
    ld [$0000], sp
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    ldh [$a0], a
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    jr nc, jr_05b_4ed5

    nop
    nop
    jr nc, jr_05b_4ed9

    nop
    nop
    jr nc, jr_05b_4edd

    jr nc, jr_05b_4edf

    nop
    nop
    ld a, b
    nop
    cp h
    ld b, b
    cp h
    ld b, b
    db $fc
    add h
    db $fc
    ld a, b

jr_05b_4ebb:
    db $fc
    jr nc, jr_05b_4e7a

    ld [hl], b

jr_05b_4ebf:
    cp h
    ld [hl], b
    cp h
    ld [hl], b
    rlca
    nop
    rrca
    rlca
    ld c, $06
    xor $e6
    xor $e6
    adc $c6
    rst $08
    rst $00
    rrca
    rst $00
    db $fc
    nop

jr_05b_4ed5:
    cp $fc
    ld c, $0c

jr_05b_4ed9:
    ld c, $0c
    ld c, $0c

jr_05b_4edd:
    ld c, $0c

jr_05b_4edf:
    cp $fc
    cp $fc
    ld a, b
    jr nc, jr_05b_4f5e

    jr nc, jr_05b_4ee8

jr_05b_4ee8:
    nop
    jr nc, jr_05b_4f1b

    jr nc, jr_05b_4f1d

    ccf
    ccf
    ccf
    ccf
    nop
    nop
    rst $08
    ret nz

    rrca
    jp nz, $c7cf

jr_05b_4ef9:
    rst $08
    jp nz, $c0cf

    rst $08
    ret nz

    rst $08
    ret nz

    rlca
    nop
    cp $00
    cp $00
    cp $00
    cp $04
    cp $10
    cp $00
    cp $00
    db $fc
    nop
    jr nc, jr_05b_4f45

    nop
    nop
    jr nc, jr_05b_4f49

    nop
    nop

jr_05b_4f1b:
    jr nc, jr_05b_4f4d

jr_05b_4f1d:
    jr nc, jr_05b_4f4f

    nop
    nop
    nop
    ld a, b
    nop
    cp h
    nop
    cp h
    add h
    ld a, b
    ld a, b
    add h
    jr nc, jr_05b_4ef9

    jr nc, jr_05b_4ebb

    jr nc, @-$72

    jr nc, jr_05b_4ebf

    rlca
    nop
    rrca
    rlca
    ld c, $06
    xor $e6
    xor $e7
    adc $c7
    rst $08
    rst $00
    rrca
    rlca
    db $fc
    nop

jr_05b_4f45:
    cp $fc
    ld c, $7c

jr_05b_4f49:
    ld c, $fc
    ld c, $fc

jr_05b_4f4d:
    ld c, $fc

jr_05b_4f4f:
    cp $fc
    cp $fc
    jr nc, jr_05b_4f9d

    jr nc, jr_05b_4f9f

    nop
    nop
    jr nc, jr_05b_4f8b

    jr nc, jr_05b_4f8d

    ccf

jr_05b_4f5e:
    ccf
    ccf
    ccf
    nop
    nop
    rst $08
    ret nz

    rrca
    ld [bc], a
    rst $08
    rst $00
    rst $08
    jp nz, $c0cf

    rst $08
    ret nz

    rst $08
    ret nz

    rlca
    nop
    cp $00
    cp $00
    cp $00
    cp $04
    cp $10
    cp $00
    cp $00
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

jr_05b_4f8b:
    nop
    nop

jr_05b_4f8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_4f9d:
    nop
    nop

jr_05b_4f9f:
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    ld a, c
    ld [hl], a
    ld [hl], b
    ld h, [hl]
    rst $38
    ld a, a
    ld a, c
    ld [hl], a
    rst $38
    ld a, a
    rst $20
    inc e
    rst $38
    ld a, a
    dec l
    ld c, c
    cp d
    ld b, d
    rst $20
    inc e
    rst $38
    ld a, a
    or d
    ld [$317b], sp
    rst $20
    inc e
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    ldh [$1f], a
    nop
    nop
    nop
    add b
    nop
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
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $00
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
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ld bc, $ff00
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
    ld a, l
    cp $7d
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fb
    db $fc
    rlca
    ld hl, sp+$7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $e2
    ld a, $e1
    ccf
    ldh [$3f], a
    ldh [$3f], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld b, a
    ld a, h
    add a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rst $38
    ld hl, sp-$01
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
    rra
    ldh [$3f], a
    ldh [$3f], a
    pop hl
    ccf
    ld [c], a
    ld a, $ff
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
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    add a
    db $fc
    ld b, a
    ld a, h
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
    ld [c], a
    ld a, $e2
    ld a, $e2
    ld a, $e2
    ld a, $e2
    ld a, $e2
    ld a, $e2
    ld a, $e2
    ld a, $47
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$3f], a
    ldh [$3f], a
    pop hl
    ccf
    ld [c], a
    ld a, $fe
    nop
    cp $00
    cp $00
    db $fc
    db $fc
    ld [bc], a
    cp $02
    cp $fc
    db $fc
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ccf
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    add a
    db $fc
    ld b, a
    ld a, h
    ld [c], a
    ld a, $e2
    ld a, $e1
    ccf
    ldh [$3f], a
    ldh [$3f], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    add a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld l, h
    ld h, c
    ld l, h
    nop
    nop
    ld h, c
    ld l, h
    ld h, c
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    ld [hl], $86
    ld [hl], $00
    nop
    add [hl]
    ld [hl], $86
    ld [hl], $00
    ld bc, $0100
    nop
    ld bc, $5900
    nop
    ld e, a
    nop
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ld b, b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    sbc d
    nop
    ld a, [$1a00]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    add b
    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl+], a
    ld [hl+], a
    ld a, a
    add b
    ld e, a
    and b
    ld d, l
    xor d
    ld d, l
    xor d
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call $b332
    ld c, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [$aa05]
    ld d, l
    xor d
    ld d, l
    ld a, [$fe05]
    ld bc, $00ff
    rst $38
    nop
    ld b, a
    cp b
    ld b, b
    cp a
    ld b, a
    cp b
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
    inc bc
    db $fc
    rst $30
    ld [$10ef], sp
    ret nz

    ccf
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
    ld [c], a
    dec e
    ld [bc], a
    db $fd
    ld [c], a
    dec e
    rst $38
    nop
    rst $38
    nop
    sbc e
    ld h, h
    ld [hl], l
    adc d
    ld [hl], l
    adc d
    ld [hl], c
    adc [hl]
    sub l

jr_05b_526a:
    ld l, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    ld d, a
    xor b
    rla
    add sp, $57
    xor b
    ld sp, $ffce
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_05b_526a

    ld a, l
    add d
    dec a
    jp nz, $827d

    dec e
    ld [c], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc l
    ld h, d
    xor d
    ld d, l
    sbc d
    ld h, l
    xor b
    ld d, a
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc b
    ld h, a
    xor e
    ld d, h
    xor c
    ld d, [hl]
    xor e
    ld d, h
    sbc b
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $813c


    ld a, [hl]
    sbc c
    ld h, [hl]
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ccf
    nop
    ld e, a
    nop
    ld a, a
    rlca
    ld a, a
    ld [$107c], sp
    ld a, b
    db $10
    ld a, b
    stop
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    nop
    ld a, [$fe00]
    ldh [$fe], a
    db $10
    ld [hl], $00
    ld d, $00
    ld d, $00
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, b
    db $10
    ld d, $00
    ld d, $00
    ld d, $00
    ld d, $00
    ld d, $00
    ld d, $00
    ld d, $00
    ld d, $00
    ld a, b
    db $10
    ld a, b
    db $10
    ld a, h
    db $10
    ld [hl], a
    nop
    ld a, b
    nop
    ld e, a
    nop
    ccf
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld d, $00
    ld d, $00
    ld [hl], $00
    xor $00
    ld e, $00
    ld a, [$fc00]
    nop
    nop
    nop
    rst $30
    ld [$0df2], sp
    push af
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, h
    cp e
    ld d, l
    xor d
    ld d, h
    xor e
    ld d, l
    xor d
    ld b, h

jr_05b_535a:
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, jr_05b_53bb

    xor b
    rst $10
    jr z, jr_05b_53bf

    xor b
    pop de
    ld l, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_05b_535a

    ld a, l
    add d
    dec a
    jp nz, $827d

    dec e
    ld [c], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc l
    ld h, d
    xor d
    ld d, l
    sbc d
    ld h, l
    xor b
    ld d, a
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc b
    ld h, a
    xor e
    ld d, h
    xor c
    ld d, [hl]
    xor e
    ld d, h
    sbc b
    ld h, a
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
    ldh [$1f], a
    rst $18
    ccf
    rst $18
    ccf
    sbc $3f
    call c, $ff3e
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_05b_53bb:
    rst $38
    rst $38
    nop
    rst $38

jr_05b_53bf:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ld a, e
    db $fc
    dec sp
    ld a, h
    call c, $dc3e
    ld a, $de
    ccf
    rst $18
    ccf
    rst $18
    ccf
    ldh [$1f], a
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    dec sp
    ld a, h
    dec sp
    ld a, h
    ld a, e
    db $fc
    ei
    db $fc
    ei
    db $fc
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    call c, $dc3e
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $3b
    ld a, h
    dec sp
    ld a, h
    dec sp
    ld a, h
    dec sp
    ld a, h
    dec sp
    ld a, h
    dec sp
    ld a, h
    dec sp
    ld a, h
    dec sp
    ld a, h

Call_05b_5421:
    ld de, $4fc1
    ld hl, $9000
    ld bc, $5b46
    call $0f82
    ret


Call_05b_542e:
    ld hl, $5465
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ret


    call $1d6e
    call $31f3
    call $0fc8
    call $300b
    ld a, $5b
    ld hl, $5421
    rst $08
    ld a, $5b
    ld hl, $542e
    rst $08
    ld b, $08
    call $3340
    call $32f9
    call $31f6
    call $0a36
    call $1d7d
    ret


    ccf
    ld b, b
    ld [de], a
    inc de
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec d
    add hl, de
    ld b, l
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    ld d, $17
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    jr jr_05b_550a

    ld b, l
    ld [de], a
    inc de
    dec c

jr_05b_550a:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec d
    inc b
    ld b, l
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4504
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $451a
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $4342
    ld d, $17
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    jr jr_05b_55b5

    rrca
    cpl
    inc h
    dec h
    ld h, $2f
    rrca
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_05b_55b5:
    ccf
    ccf
    ccf
    ld b, b
    rrca
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    rrca
    ld b, h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, l
    ccf
    ld b, b
    ld [de], a
    inc de
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec d
    add hl, de
    ld b, l
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $0f0f
    cpl
    daa
    jr z, jr_05b_5624

    cpl
    rrca
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld b, b
    rrca
    rrca
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $0f
    ld b, h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, l

Call_05b_561d:
    ld h, d
    ld l, e
    push bc
    push hl
    call Call_05b_5640

jr_05b_5624:
    pop hl
    pop bc
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    ld a, $07

jr_05b_5630:
    push bc
    push hl

jr_05b_5632:
    ld [hl+], a
    dec c
    jr nz, jr_05b_5632

    pop hl
    ld de, $0014
    add hl, de
    pop bc
    dec b
    jr nz, jr_05b_5630

    ret


Call_05b_5640:
    push hl
    ld a, $30
    ld [hl+], a
    inc a
    call Call_05b_566d
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_05b_564f:
    push hl
    ld a, $33
    ld [hl+], a
    ld a, $7f
    call Call_05b_566d
    ld [hl], $34
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_05b_564f

    ld a, $35
    ld [hl+], a
    ld a, $36
    call Call_05b_566d
    ld [hl], $37
    ret


Call_05b_566d:
    ld d, c

jr_05b_566e:
    ld [hl+], a
    dec d
    jr nz, jr_05b_566e

    ret


    call Call_05b_5696
    call Call_05b_56ae
    ld a, $12
    ld hl, $5856
    rst $08
    ld a, $3e
    ld hl, $760d
    rst $08
    ld hl, $c5fe
    ld de, $568f
    call $1078
    ret


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_05b_5696:
    call Call_05b_5421
    ret


    ld de, $52c1
    ld hl, $9760
    ld bc, $5b08
    call $0f82
    ret


    ld a, $12
    ld hl, $5811
    rst $08
    ret


Call_05b_56ae:
    call Call_05b_542e
    ld hl, $55cd
    ld de, $c4a0
    ld bc, $0028
    call $3026
    ld hl, $55f5
    ld de, $c5e0
    ld bc, $0028
    call $3026
    ret


    call Call_05b_561d
    ret


    call $1d6e
    call Call_05b_56e1
    ld a, $00
    ld hl, $087d
    rst $08
    call $1d7d
    call $3200
    ret


Call_05b_56e1:
    ld hl, $c56c
    ld b, $01
    ld c, $0a
    ld a, $10
    call $2d83
    ld hl, $c581
    ld de, $5701
    call $1078
    call $31f6
    call $3200
    ld c, $32
    jp $0468


    sub [hl]
    add b
    adc b
    sub e
    adc b
    adc l
    add [hl]
    add sp, -$18
    rst $20
    ld d, b
    call Call_05b_5725
    call Call_05b_5713
    ret


Call_05b_5713:
    push bc
    push af
    ldh a, [$a9]
    and $f0
    ld b, a
    ldh a, [$a7]
    and $0f
    or b
    ld b, a
    pop af
    ld a, b
    pop bc
    ld d, a
    ret


Call_05b_5725:
    ld hl, $cfa6
    res 7, [hl]
    ldh a, [$d4]
    push af
    call Call_05b_5734
    pop af
    ldh [$d4], a
    ret


Call_05b_5734:
jr_05b_5734:
    call Call_05b_577a
    call Call_05b_5759
    call Call_05b_576a
    jr nc, jr_05b_5758

    ld a, $09
    ld hl, $4270
    rst $08
    jr c, jr_05b_5758

    ld a, [$cfa5]
    bit 7, a
    jr nz, jr_05b_5758

    call Call_05b_5713
    ld b, a
    ld a, [$cfa8]
    and b
    jr z, jr_05b_5734

jr_05b_5758:
    ret


Call_05b_5759:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call $31f6
    pop af
    ldh [$d8], a
    xor a
    ldh [$d4], a
    ret


Call_05b_576a:
jr_05b_576a:
    call $046f
    call Call_05b_57e7
    ret c

    ld a, [$cfa5]
    bit 7, a
    jr z, jr_05b_576a

    and a
    ret


Call_05b_577a:
    ld hl, $cfac
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $1f
    jr nz, jr_05b_5792

    ld a, [$cfab]
    ld [hl], a
    push hl
    push bc
    ld bc, $000b
    add hl, bc
    ld [hl], a
    pop bc
    pop hl

jr_05b_5792:
    ld a, [$cfa1]
    ld b, a
    ld a, [$cfa2]
    ld c, a
    call $1d05
    ld a, [$cfa7]
    swap a
    and $0f
    ld c, a
    ld a, [$cfa9]
    ld b, a
    xor a
    dec b
    jr z, jr_05b_57b1

jr_05b_57ad:
    add c
    dec b
    jr nz, jr_05b_57ad

jr_05b_57b1:
    ld c, $14
    call $30fe
    ld a, [$cfa7]
    and $0f
    ld c, a
    ld a, [$cfaa]
    ld b, a
    xor a
    dec b
    jr z, jr_05b_57c8

jr_05b_57c4:
    add c
    dec b
    jr nz, jr_05b_57c4

jr_05b_57c8:
    ld c, a
    add hl, bc
    ld a, [hl]
    cp $1f
    jr z, jr_05b_57de

    ld [$cfab], a
    ld [hl], $1f
    push hl
    push bc
    ld bc, $000b
    add hl, bc
    ld [hl], $1f
    pop bc
    pop hl

jr_05b_57de:
    ld a, l
    ld [$cfac], a
    ld a, h
    ld [$cfad], a
    ret


Call_05b_57e7:
    ld a, [$cfa5]
    bit 6, a
    jr z, jr_05b_57f4

    ld a, $23
    ld hl, $4f62
    rst $08

jr_05b_57f4:
    call $0a57
    call Call_05b_5713
    and a
    ret z

    scf
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
