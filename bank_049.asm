; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    inc hl
    ld e, c
    ld d, [hl]
    inc hl
    ret


    ld h, h
    inc hl
    ld a, [hl]
    ld b, a
    inc hl
    ld c, h
    ld h, d
    ld hl, $7724
    inc hl
    rst $18
    ld e, d
    ld e, $b3
    ld d, e
    ld [hl+], a
    ld h, [hl]
    ld a, a
    dec d
    ld c, $7f
    inc hl
    dec a
    ld h, c
    inc hl
    cp a
    ld d, h
    dec de
    ld h, a
    ld a, a
    ld [hl+], a
    ld d, l
    ld d, l
    inc hl
    and e
    ld e, l
    ld [hl+], a
    jp $2173


    ld c, a
    ld a, a
    inc hl
    ld b, a
    ld e, [hl]
    inc hl
    dec de
    ld l, c
    inc hl
    adc l
    ld d, b
    inc hl
    ret


    ld h, c
    inc hl
    and $41
    inc hl
    cp l
    ld h, l
    inc hl
    ld c, d
    ld d, d
    inc hl
    rla
    ld h, a
    inc hl
    rst $28
    ld d, e
    inc hl
    ld b, h
    ld h, l
    inc hl
    db $dd
    ld c, l
    inc hl
    ld c, [hl]
    ld h, h
    ld [hl+], a
    cp d
    ld l, l
    inc hl
    rst $08
    ld h, d
    inc hl
    ld h, $5a
    inc hl
    cp l
    ld l, b
    inc hl
    ld l, c
    ld e, c
    inc hl
    xor $67
    inc hl
    xor e
    ld h, b
    inc hl
    ld a, c
    ld l, c
    ld [hl+], a
    xor e
    ld l, d
    inc hl
    add hl, de
    ld h, b
    ld [hl+], a
    cp [hl]
    ld l, [hl]
    inc hl
    ld [hl-], a
    ld h, [hl]
    inc hl
    ld [$2357], a
    add e
    ld h, a
    ld [hl+], a

Jump_049_407f:
    ld l, $60
    inc hl
    ld [$215e], a
    sbc [hl]
    ld [hl], e
    inc hl
    ret nc

    ld h, e
    inc hl
    rst $30
    ld c, h
    inc hl
    and [hl]
    ld h, [hl]
    inc hl
    or $5c
    inc hl
    ld d, a
    ld l, b
    ld hl, $7aa7
    inc hl
    ld d, c
    ld h, e
    db $ec
    daa
    rra
    ld bc, $0201
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld c, $11
    ld de, $2721
    nop
    ld c, e
    ld b, b
    ld d, a
    add b
    adc e
    and b
    cp a
    jr nz, @+$01

    sub b
    rst $38
    adc [hl]
    cp a
    ld b, c
    ld h, a
    add hl, hl
    cpl
    ld e, $1e
    db $ec
    add hl, hl
    ld [$1e06], sp
    ld hl, $0c21
    ld e, h
    ld e, [hl]
    ld a, [hl]
    ld a, $43
    cp [hl]
    cp h
    ld e, $bd
    sbc e
    sbc e
    ld b, h
    ld b, h
    inc h
    inc h
    db $10
    add hl, de
    ld [$100b], sp
    inc de
    jr nc, jr_049_4113

    ld b, b
    ld c, e
    ld b, b
    ld d, l
    and b
    xor e
    sub b
    sub a
    or b
    cp a
    jr nc, @+$41

    nop
    rrca
    nop
    ccf
    ld b, e
    ld b, b
    ld a, a
    dec de
    inc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ccf
    rst $28
    inc de
    ldh a, [$0d]
    db $fc
    ld e, $ff
    ld h, [hl]
    push hl
    add l
    add h
    inc b
    ld b, $0b
    ld c, $11
    rra
    ld hl, $203f
    daa
    ld b, h
    ld b, b
    ld b, a
    nop
    ld c, a

jr_049_4113:
    ld b, e
    jr nz, jr_049_4155

    rrca
    db $10
    rra
    rrca
    rrca
    ld b, $0f
    ld bc, $0111
    jr nz, @+$09

    ld b, b
    ld a, e
    ld b, a
    jr c, jr_049_415f

    ld l, c
    ld d, $03
    rlca
    add hl, bc
    adc b
    inc de
    ld d, b
    cpl
    inc l
    rra
    rra
    rrca
    rrca
    rlca
    add a
    inc bc
    rst $10
    add c
    db $eb
    ld h, e
    rst $30
    inc e
    cp $07
    ld c, e
    rst $38
    nop
    ld a, [bc]
    db $e3
    nop
    rst $00
    add hl, bc
    rst $00
    ld h, [hl]
    sbc $3a
    ld a, [$fe0e]

jr_049_414f:
    add a
    sub e
    inc bc
    ldh [rIE], a
    rst $18

jr_049_4155:
    ccf
    ld b, e
    rst $38
    nop
    ldh [rNR51], a
    rst $18
    ldh [$df], a
    ccf

jr_049_415f:
    ld [hl], e
    rrca
    rra
    nop
    dec b
    add b
    ld [hl+], a
    ld b, b
    add l
    or b
    ret nz

    adc [hl]
    ld b, b
    pop bc
    jr nc, jr_049_414f

    add hl, sp
    ldh a, [$6e]
    db $fc
    rst $10
    rst $38
    xor e
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    db $fd
    ld h, a
    adc $c6
    jr c, jr_049_41b9

    ld l, l
    add hl, bc
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    ld b, e
    db $fc
    call nz, $ff17
    rst $38
    ldh [$e0], a
    ld c, $1c
    inc bc
    inc bc
    ret nz

    ret nz

    ccf
    rst $38
    nop
    jp $c702


    ld b, $ff
    ld c, $ff
    ld b, [hl]
    rst $38
    add b
    rst $38
    ld b, e
    ld b, b
    ld a, a
    ld bc, $7f01
    ld b, e
    ld bc, $13ff
    ld hl, $23ff
    rst $38
    ld [hl], a
    rst $08

jr_049_41b9:
    rst $30
    adc a
    cp $0f
    sbc $3e
    ld a, [hl]
    cp $fc
    cp $fe
    db $fc
    or $0c
    ld b, e
    rst $38
    dec b
    dec d
    cp $02
    ld a, [c]
    ld c, $07
    ld a, [c]
    ccf
    inc bc
    ld e, a
    ld bc, $00bf
    ld e, a
    add b
    rst $18
    ld [$f57f], a
    rst $08
    rst $08
    add b
    add b
    db $f4
    jr nz, jr_049_41e4

jr_049_41e4:
    ld [$28e0], sp
    ldh [$38], a
    inc a
    jp $15f3


    add b
    xor e
    add b
    ld d, a
    ld b, c
    sbc a
    and c
    cp a
    and b
    adc a
    sub b
    sbc a
    sub b
    add a
    adc b
    adc a
    adc b
    sbc [hl]
    ret


    rst $28
    ret


    rst $10
    push bc
    db $ed
    rst $00
    rst $10
    rst $00
    db $eb
    rst $00
    sub a
    jp $81a9


    ld b, b
    add b
    ld h, c
    ldh [rNR42], a
    rlca
    rrca
    jr nc, jr_049_4250

    ld b, c
    ld a, a
    and b

jr_049_421a:
    db $e3
    sbc $ff
    ld bc, $00ff
    rst $38
    ld [bc], a
    dec sp
    ld bc, $5b31
    ld [hl], c
    sbc $73
    call $83ff
    cp $e3
    ld a, [hl]
    rst $38
    rra
    db $fc
    ld a, a
    ld hl, sp-$01
    ld b, e
    ld [$070f], sp
    inc c
    rrca
    rrca
    inc de
    rrca
    ld hl, $1f1f
    sub [hl]
    nop
    ld [de], a
    dec d
    inc bc
    dec c
    inc e
    cpl
    jr nz, jr_049_421a

    ret nz

    inc bc
    rlca
    rrca
    rra

jr_049_4250:
    jr c, jr_049_428e

    di
    di
    and a
    ld h, a
    rst $08
    ld l, a
    ld c, a
    rst $08
    rst $08
    ld b, e
    rst $08
    rst $00
    rlca
    rst $20
    jp $a0e3


    ldh a, [$50]
    db $fc
    xor h
    inc h
    rst $38
    inc d
    ld a, a
    rst $38
    rra
    ccf
    ld b, $8f
    rst $00
    db $e4
    inc hl
    ld a, [c]
    ld d, e
    ld a, [c]
    jr z, @+$7b

    sbc c
    ld sp, hl

jr_049_427a:
    ld c, b
    db $fc
    jr c, jr_049_427a

    ld a, $44
    rst $38
    jr jr_049_429e

    or b
    ld a, a
    jr nc, jr_049_42c6

    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    ld b, c

jr_049_428e:
    rst $38
    ld a, $ff
    nop
    rst $38
    jr c, @+$01

    ld c, l
    rst $00
    adc a
    add e
    rrca
    ld bc, $830f
    ld a, h

jr_049_429e:
    ld a, h
    ld [hl], c
    dec d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    cp [hl]
    jp nz, $f2ee

    scf
    ld sp, hl
    rst $18
    ld sp, hl
    db $eb
    db $fd
    rst $30
    db $fd
    or $fe
    ld b, e
    db $f4
    db $fc
    add hl, bc
    add sp, -$08
    ret z

    ld hl, sp+$10
    jr nc, jr_049_42f2

    ld h, b
    ld [hl], b
    ldh a, [rSCX]

jr_049_42c6:
    ld hl, sp-$38
    inc bc
    cp b
    ret z

    db $fc
    add h
    ld c, c
    db $fc
    inc b
    ld a, [de]
    ld hl, sp+$04
    ld hl, sp-$78
    ld a, b
    ld l, b
    db $10
    db $10
    xor b
    adc b
    ld e, h
    call nz, $e46c
    ld a, [hl]
    xor $79
    rst $38
    ld a, [hl]
    rst $38
    cp h
    cp $60
    ld hl, sp-$60
    ldh [$60], a
    inc hl
    ldh [rDIV], a
    and b
    ldh a, [rNR10]

jr_049_42f2:
    ret z

    ld [$02ab], sp
    ld a, [hl+]
    inc bc
    ld bc, $0301
    inc bc
    add e
    nop

Call_049_42fe:
    inc l
    inc b
    ld [de], a
    ld [de], a
    ld hl, $0127
    adc d
    nop

Jump_049_4307:
    dec [hl]
    add hl, bc
    sbc b
    sbc a
    ld b, e
    ld b, e
    inc h
    inc h
    inc d
    inc e
    ld [$8b09], sp
    nop
    adc b
    ld bc, $b7a0
    sub d
    nop
    sub [hl]
    inc c
    rst $38
    rra
    push hl
    cpl
    db $eb
    ld [hl], a
    rst $30
    adc c
    adc c
    ld c, $0e
    dec bc
    rrca
    add a
    nop
    cp b
    add hl, bc
    inc bc
    rst $10
    ld bc, $83eb
    rst $30
    ld h, h
    cp $18
    ld hl, sp-$74
    nop
    ld hl, sp+$00
    di
    add e
    ld bc, $0106
    ld h, a
    rst $18
    adc l
    ld bc, $010c
    di
    ei
    inc h

jr_049_434a:
    rst $38
    inc c
    db $fc
    ld a, [hl]
    ld bc, $fffe
    ccf
    add b
    ld a, [bc]
    ld b, b
    add c
    or b
    ret nz

    adc [hl]
    adc c
    ld bc, $0160
    nop
    nop
    sub e
    ld bc, $006a
    add c
    adc l
    ld bc, $e07f
    jr nz, @-$6f

    sbc $3e
    cp $7e
    db $fc
    cp $f6
    inc c
    cp $04
    rst $38
    dec b
    rst $38
    inc bc
    di
    rrca
    rlca
    di
    ld a, $07
    ld e, b
    inc e
    and h
    ld [hl+], a
    ld c, [hl]
    jp $fbfe


    ld [hl], h
    rst $30
    jp $8dc3


    ld bc, $01d0
    rra
    ld hl, $018d
    ldh a, [$61]
    ld e, $17
    rrca
    jr nc, jr_049_43c9

    ld c, a
    ld a, a
    or b
    ld a, [c]
    ret nz

    push hl
    dec c
    rst $38
    ld h, b
    pop af
    sbc [hl]
    rst $38
    ld bc, $009f
    ccf
    ld bc, $0cfd
    ld hl, sp+$0e
    ld hl, sp+$07
    cp $83
    rst $38
    nop
    add h
    push af
    inc hl
    ccf
    add a
    ld [bc], a
    jr z, jr_049_434a

    ld [bc], a
    ld h, b
    dec d
    rrca
    rlca
    add h

Jump_049_43c2:
    ld h, e

Jump_049_43c3:
    ld [c], a
    inc de
    ld [hl], d
    ret z

    ld sp, hl

Call_049_43c8:
jr_049_43c8:
    add hl, sp

jr_049_43c9:
    ld a, c
    jr jr_049_43c8

    ret z

    db $fc
    ld l, $ff
    sbc h
    rst $38
    call z, $2cff
    ld b, h
    rst $38
    sbc h
    dec c
    adc b
    rst $38
    jr @+$01

    ld c, c
    rst $08
    xor $87
    db $fc
    rst $00
    db $fc
    rst $30
    call $8ccf
    ld [bc], a
    sbc b
    ld [hl+], a
    ld bc, $0000
    inc h
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    xor [hl]
    ld bc, $8bb1
    inc bc
    jr nz, @+$09

    and b
    rst $38
    sub b
    rst $38

Jump_049_43ff:
    ld c, [hl]
    ld l, a
    ld hl, $8b27
    ld [bc], a
    ld a, [hl+]
    ld [$7818], sp
    add [hl]
    add [hl]
    ld sp, $7871
    ld hl, sp-$08
    ld b, e
    ld hl, sp-$10
    ld [$60f0], sp
    ld [hl], d
    nop
    rlca
    add e
    sla h
    ld h, h
    adc h
    inc bc
    ld [hl], $00
    ld d, a
    add l
    inc bc
    ld b, h
    inc bc
    db $10
    rra
    nop
    rra
    add l
    inc bc
    ld c, [hl]
    nop
    inc h
    add [hl]
    inc bc
    ld d, l
    ld a, [bc]
    rla
    push af
    rla
    ld a, [c]
    ld l, e
    jp hl


    adc e
    adc d
    dec c
    dec c
    ld a, [bc]
    adc b
    nop
    or a
    add h
    nop
    ldh [rTMA], a
    ld [$9093], sp
    ld l, a
    ld l, h
    ccf
    ccf
    add [hl]
    nop
    ld [$cf00], a
    sub d
    inc bc
    ld [hl], h
    inc bc
    ei
    nop
    rst $20
    ld [$0384], sp
    adc e
    ld bc, $ff00
    adc d
    inc bc
    sub d
    ld bc, $fb7b
    ld h, $ff
    dec bc
    ld a, l
    ld a, [hl]
    add e
    add c
    ld a, [hl]
    rst $38
    add a
    or b
    ret nz

    adc [hl]
    ld bc, $8aff
    inc bc
    jp nc, $cf0c

    cp $cf
    cp [hl]
    sbc $de
    cp [hl]
    ld a, h
    cp [hl]
    or $7c
    cp [hl]
    call nz, $0385
    ld [$0287], a
    ld b, b
    ld c, $cd
    jp $0e04


    add hl, bc
    add hl, de
    inc sp
    inc sp
    di
    rst $30
    and a
    ld h, a
    rst $00
    ld h, a
    ld b, a
    ld b, e
    rst $00
    jp $c304


    ret nz

    pop hl
    ret nz

    ldh [$87], a
    ld [bc], a
    or b
    ld a, [de]
    call c, $16e4
    ld a, [de]
    add $ee
    db $d3
    rst $30
    db $eb
    ei
    db $db
    ei
    db $eb
    ei
    ld a, [$f2fe]
    cp $f4
    cp $e4
    db $fc
    ld [$0318], sp
    rst $10
    inc bc
    adc h
    inc bc
    ld [hl], e
    rrca
    xor h
    adc [hl]
    ld e, a
    rst $00
    ld l, l
    rst $20
    ld a, [hl]
    xor $7a
    cp $7c
    db $fc
    or b
    ldh a, [$60]
    ldh [rIE], a
    ld h, [hl]
    ld [$0002], sp
    inc b
    inc b
    ld a, [bc]
    ld c, $01
    ld d, $09
    ld b, e
    dec c
    ld [de], a
    add hl, de
    dec bc
    inc d
    dec bc
    inc b
    ld [bc], a
    dec c
    dec b
    ld b, $32
    ld [hl], e
    dec c
    adc l
    ld [hl], d
    ld b, c
    ccf
    inc hl
    inc a
    ld a, h
    rra
    add b
    ccf
    ld [hl], b
    rlca
    ld c, $08
    add hl, bc
    inc hl
    inc b
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $2702
    ld bc, $0003
    ld bc, $0100
    db $ec
    inc l
    ldh [$32], a
    ret nc

    add b
    ld a, b
    jr nz, @+$5a

    jr nc, jr_049_4565

    ld h, b
    sbc l
    ld d, c
    xor [hl]
    push hl
    ld a, [de]
    jp nz, $c43d

    dec sp
    ret nz

    ccf
    and c
    ld e, a
    jp $863e


    ld a, l
    ld c, h
    cp e
    adc h
    ld a, e
    jr @-$07

    ld a, c
    and $9f
    add c
    rst $28
    nop
    rst $10
    nop
    rst $28
    nop
    push bc
    inc bc
    add e
    ld b, $0c
    ld b, $0d
    rlca
    rrca
    ld [bc], a
    ld b, l
    rlca
    nop
    ld b, l
    rrca
    nop
    dec e
    rra
    inc b
    ld e, a
    add hl, bc
    cp a
    add e
    ld a, [hl]
    ld a, a
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld c, h
    inc h

jr_049_455d:
    add l
    ld c, h
    add hl, hl
    ret c

    ld d, c
    or b
    sub c
    ld [hl], b

jr_049_4565:
    inc de
    ld [hl], b
    ld c, a
    jr c, jr_049_4591

    inc e
    dec bc
    ld b, $92
    nop
    ld b, b
    dec d
    jr @+$1b

    ld h, [hl]
    ld a, [hl]
    add c
    ld hl, sp+$07
    ret nc

jr_049_4579:
    cpl
    xor b
    ld d, a
    ld b, c
    cp [hl]
    ld a, [bc]
    push af
    dec d
    ld [$d52a], a
    add l
    ld a, [$4580]
    ld a, a
    ret nz

    ld de, $c075
    ld a, d
    cp h
    rst $38
    rst $20

jr_049_4591:
    ld bc, $00f9
    cp $00
    rst $38
    nop
    rst $18
    jr nz, @+$01

    jr nz, @-$0f

    ld b, [hl]

jr_049_459e:
    db $10
    rst $38
    ldh [$2d], a
    rst $28
    db $10
    rst $38
    jr nz, @-$1f

    ld b, b
    rst $08
    ld h, b
    xor a
    ret c

    rst $10
    xor b
    ld l, e
    db $f4
    ld d, b
    cp a
    xor h
    ld e, a
    ld e, e
    xor a
    ld hl, sp+$08
    ldh [rNR10], a
    ret nc

    jr nc, jr_049_455d

    ld h, b
    ld b, b
    ret nz

    add b
    ldh [$c0], a
    ldh [$60], a
    or b
    ldh a, [$30]
    ldh a, [rSVBK]
    jr nc, jr_049_463c

    and b
    ldh [$c0], a
    ret nz

    ld l, e
    dec de
    jr z, jr_049_4624

    ld b, d
    and c
    jr c, jr_049_459e

    ld h, h
    sbc b
    nop
    db $fc
    inc b
    di
    ld b, d
    cp l
    and c
    ld c, [hl]
    ldh a, [rTAC]
    db $fd
    ld [bc], a
    ld e, [hl]
    and c
    dec l
    jp nc, $e51a

    inc b
    ei
    ld b, e
    ld bc, $0efe
    ld [bc], a
    db $fd
    add h
    ei
    ld a, b
    jr nc, jr_049_4579

    nop
    ld b, b
    nop
    and b
    nop
    ret nc

    nop
    ldh [$8a], a
    add e
    ld [bc], a
    and b
    nop
    ld b, b
    push bc
    sub c
    and e
    nop
    ld b, $04
    ret nz

    ld h, b
    ret nz

    ldh [$e0], a
    ld b, e

jr_049_4613:
    jr nc, jr_049_4635

    ldh [rSTAT], a
    db $10
    db $10

jr_049_4619:
    add hl, de
    db $10
    jr @+$13

    ld bc, $0b08
    ld [$090c], sp
    dec bc

jr_049_4624:
    ld [$090e], sp
    rrca
    add hl, bc
    dec bc
    add hl, bc
    ld [bc], a
    add hl, bc
    ld d, $11
    dec c
    inc sp
    cpl
    ccf
    rra
    ccf

jr_049_4635:
    inc e
    ld e, $44
    ld [bc], a
    adc d
    dec b
    dec d

jr_049_463c:
    ld a, [bc]
    ld a, [bc]
    dec d
    inc c
    inc de
    add hl, de
    and [hl]
    ld a, [c]
    inc c
    add sp, $14
    pop af
    ld c, $41
    cp [hl]
    add d
    ld [hl], h
    nop
    ldh [$80], a
    ld h, b
    jr nz, jr_049_4613

    ld e, h
    cp h
    dec bc
    di
    jr nz, jr_049_4619

    xor l
    nop
    pop de
    ld [bc], a
    ld [$1000], sp
    inc h
    ld [$0c0c], sp
    ld [$0c1c], sp
    ld a, [hl]
    inc c
    ld a, [c]
    ld [de], a
    db $e3
    ld [hl+], a
    pop bc
    add c
    ret nz

    ld [hl+], a
    ld b, b
    ld d, $48
    ld b, b
    call nz, $c240
    ld d, h
    call nc, $aca8
    jp nc, $8678

    db $f4
    ld a, [bc]
    xor d
    ld d, h
    inc b
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rNR41]
    add h
    ld bc, $a843
    nop
    ld a, [hl-]
    add l
    pop bc
    ldh [$2b], a
    inc b
    db $10
    adc d
    jr nz, @-$21

    nop
    ld hl, sp+$00
    ldh a, [$80]
    ld h, b
    nop
    rlca
    rrca
    db $10
    rra
    ld h, b
    ld a, l
    add d
    ld a, d
    add l
    ld [hl], h
    adc e
    jr z, jr_049_4704

    nop
    ld a, a
    inc bc
    db $fc
    add c
    xor $23
    inc h
    jr nc, @+$13

    ld e, b
    add hl, bc
    jr z, jr_049_46c3

    ld e, b
    ld [$0528], sp
    inc e
    ld b, e
    dec b
    inc a

jr_049_46c3:
    ld b, e
    inc b
    jr c, @+$48

    ld [$0d78], sp
    cp b
    dec bc
    ld a, d
    add hl, bc
    cp l
    ld b, $f2
    adc l

jr_049_46d2:
    ld h, a
    ld e, b
    ld [hl], d
    ld c, l
    ld a, h
    ld b, e
    ld b, e
    jr c, @+$29

    dec c
    jr nc, jr_049_4704

    jr nz, jr_049_470c

    inc h
    inc h
    inc c
    ld c, h
    ld e, h
    ld a, h
    ld e, b

jr_049_46e7:
    ld e, h
    ld a, b
    ld a, b
    db $ec
    ld [hl+], a
    ld a, [de]
    ldh [$e0], a
    db $10
    ld d, b
    xor b
    and b
    ld e, b
    nop
    ldh a, [rLCDC]
    cp b
    xor b
    ld d, [hl]
    ld d, h
    xor e
    add d
    ld a, l
    inc b
    ei
    nop
    cp $18
    db $e4

jr_049_4704:
    jr nc, jr_049_46d2

    ld h, b
    sbc b
    ld b, e
    ldh [rNR23], a
    add hl, bc

jr_049_470c:
    ldh a, [$0c]
    ld e, b
    and h
    ld b, h
    cp d
    nop
    ld a, a

jr_049_4714:
    nop
    inc e
    ld h, d
    add hl, bc
    inc c
    nop
    jr c, jr_049_473c

    ret nc

    ld d, b
    xor b
    nop
    db $fc
    nop
    ld b, e
    ld hl, sp+$00
    nop
    jr nc, jr_049_4714

    inc hl
    add e
    nop
    or b
    inc bc
    cp [hl]
    add d
    ld a, h
    ld a, h
    ld h, a
    add e
    ld bc, $1420
    push de
    ld a, [$5f6c]
    ld d, a
    ld l, e

jr_049_473c:
    ld a, [bc]
    ld [hl], l
    dec d
    ld a, [hl+]
    ld a, [bc]
    dec [hl]
    dec h
    ld a, [de]
    add d
    dec d
    ld b, e
    ld [$0025], sp
    ld [de], a
    and h
    ld bc, $0087
    nop
    adc h
    ld bc, $438f
    or b
    ldh [$09], a
    ret nc

    ldh a, [$99]
    ld [hl], b
    ld e, b
    or c
    ld hl, $8b68
    jr z, jr_049_46e7

    ld bc, $e0aa
    dec [hl]
    ld bc, $0200
    ld bc, $0628
    db $10
    dec l
    ld [de], a
    ld c, l
    add hl, bc
    add $54
    and e
    and c
    ld e, [hl]
    ld c, d
    dec [hl]
    db $10
    cpl
    dec hl

jr_049_477b:
    inc d
    ld d, a
    jr z, @+$2f

    ld d, d
    ld e, d
    and l
    ld d, h
    xor e
    jr c, @-$37

    cp b
    ld b, a
    ld a, h
    jp $f728


    inc [hl]
    db $eb
    ld [de], a
    ld a, l
    inc c
    ccf
    ld [de], a
    rra
    ccf
    cpl
    ld d, e
    ld d, b
    rra
    ld a, b
    rrca
    rlca
    add h
    nop
    inc a
    add e
    nop
    inc b
    dec bc
    ld bc, $0609
    db $10
    rrca
    inc h
    inc bc
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    add h
    sub d
    dec e
    stop
    jr nz, jr_049_47f6

    nop
    add b
    jr nz, jr_049_477b

    adc b
    ld [hl], c
    ld b, l
    cp d
    adc e
    ld [hl], h
    ld d, $e9
    dec l
    jp nc, $05fa

    push af
    ld a, [bc]
    xor b
    ld d, a
    ld b, b
    cp a
    add b
    ld a, a
    inc bc
    rst $38
    ld b, e
    ld b, $fd
    ld b, e
    inc c
    ei
    ldh [$30], a
    dec d
    di
    ccf
    ldh a, [rVBK]
    ret nz

    inc hl
    nop
    pop af
    add b
    pop af
    nop
    di
    nop
    db $e3
    add c
    ld h, e
    ld h, c
    inc bc
    ld bc, $8085
    jp nz, $e040

    ld h, b
    ld d, b
    or b
    cp b
    ld [hl], b

jr_049_47f6:
    ld c, b
    ret z

    adc b
    adc b
    adc h
    add h
    sbc c
    add h
    ld a, l
    db $e3
    ld e, a
    jr c, jr_049_481a

    inc c
    inc bc

Jump_049_4805:
    ld [bc], a
    nop
    ld bc, $8801
    nop
    pop de
    inc b
    ld d, h
    xor e
    and b
    ld e, a
    nop
    ld b, h
    rst $38
    nop
    add e
    nop
    xor $08
    and b

jr_049_481a:
    rst $18
    cp h
    rst $38
    and e
    jp $80fd


    cp $84
    sub d
    rrca
    rst $28
    db $10
    rst $30
    ld [$887f], sp
    ei
    add h
    ld a, a
    inc b
    ld a, a
    call nz, $84ff
    ld a, a
    add h
    ld b, e
    rst $38
    ld [$fb10], sp
    inc c
    db $fd
    ld a, [bc]
    ld a, [hl]

jr_049_483e:
    dec b
    inc [hl]
    ld c, a
    or $4f
    jp hl


    add hl, de
    ldh [$e0], a
    nop
    ret nz

    and b
    ld b, e
    ld [hl], b
    ldh a, [rSC]
    ldh a, [rSVBK]
    ldh a, [$c7]
    ld [bc], a
    or d
    ld [bc], a
    jr jr_049_483e

    ld bc, $bc84
    add e
    ld bc, $046e
    ld b, l
    cp d
    xor e
    ld d, h
    ld b, b
    add l
    ld [bc], a
    ld a, [hl+]
    ld [$0d0d], sp
    ld [de], a
    ld e, $21
    inc [hl]
    set 5, d
    dec d
    ld h, d

jr_049_4871:
    ld b, $60
    nop
    ldh a, [rP1]
    ei
    nop
    call z, $00a4
    adc $00
    rlca
    add e
    nop
    ld [de], a
    dec d
    ld d, $29
    rrca
    jr nc, @+$30

    ld d, c
    dec e
    ld h, d
    ld e, [hl]
    and c
    cp h
    ld b, e
    add hl, bc
    nop
    db $10
    ld bc, $0219
    ld d, $09
    ld [$a507], sp
    ld bc, $07e0
    adc h
    ld [hl], e
    ld d, b
    xor a
    and b
    ld e, a
    jr nz, @-$1f

    jp $2d04


    add e
    inc bc
    call z, $1501
    ld [$04a9], a
    db $10
    ld e, $00
    push af
    add b
    ld a, [$0807]
    rrca
    db $10
    rra
    jr nz, jr_049_48da

    ld hl, $4a35
    ld a, [hl+]
    ld d, l
    inc d
    ld l, e
    inc bc
    db $fc
    add b
    ld [hl], b
    db $e4
    jr jr_049_491c

    xor h
    xor b
    ld d, [hl]
    ld [bc], a
    db $fc
    ld b, h
    add h
    ld [bc], a
    cp e
    ld de, $758a
    inc b
    ei
    ld [bc], a
    db $fd

jr_049_48da:
    nop
    cp a
    ld [hl+], a
    dec e
    ld d, l
    xor d
    and d
    ld e, h
    ld b, b
    cp b
    add b
    ld [hl], b
    add e
    ld bc, $01d6
    ld b, b
    jr nc, jr_049_4871

    ld bc, $61ed
    nop
    db $10
    adc c
    nop
    sub b
    add hl, bc
    add $01
    add a
    ld bc, $010f
    dec c
    inc bc
    rrca
    ld b, $8b
    nop
    and h
    rst $38
    db $ec
    ld hl, $23e0
    rlca
    rlca
    add hl, de
    jr jr_049_4935

    daa
    ld d, b
    ld c, a
    and b
    sbc a
    and c
    sbc [hl]
    ld b, b
    ld e, a
    ld d, b
    ld c, a
    jr nc, @+$31

    inc hl
    cpl

jr_049_491c:
    inc e
    inc e
    ld [de], a
    ld de, $2728
    jr nz, @+$31

    ld d, e
    ld c, h
    ld b, h
    ld e, e
    ld b, b
    ld e, a
    and b
    sbc a
    ld b, e
    add b
    cp a
    add hl, bc
    and c
    sbc [hl]
    add h
    add e
    sbc c

jr_049_4935:
    sbc b
    ld h, a
    ld h, a
    inc bc
    ld bc, $0343
    ld [bc], a
    ld b, e
    rlca
    inc b
    nop
    dec b
    inc hl
    inc b
    nop
    inc c
    inc hl
    ld [$0907], sp
    ld [$0b0c], sp
    inc d
    inc d
    rrca
    rrca
    ld [hl], a
    ldh [rHDMA5], a
    inc bc
    inc bc
    inc b
    inc b
    ld a, [bc]
    add hl, bc
    inc c
    dec bc
    db $10
    rla
    ld hl, sp-$09
    jr nz, jr_049_4991

    jr z, @-$17

    db $10
    rst $30
    inc d
    di
    ld [$86fb], sp
    ld a, l
    ld h, c
    sbc a
    ld bc, $03ff
    cp $c3
    cp $33
    ld a, $0b
    cp $13
    pop hl
    ld bc, $21f1
    ret nz

    ld d, b
    adc l
    ld [bc], a
    db $fd
    ld bc, $20fe
    sbc $43
    cp l
    add c
    ld a, l
    ld [bc], a
    ei
    sub h
    ld h, a
    add hl, de
    ld e, $f1

jr_049_4991:
    cp $f0
    rla
    ld hl, sp+$0b
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    jr @+$01

    rlca
    rst $38
    inc bc
    cp $06
    db $fc
    inc b
    add sp, $18
    ld c, b
    xor b
    or e
    rst $28
    ldh [rNR51], a
    jr jr_049_49c8

    inc h
    inc h
    db $db
    jp $1c22


    add c
    ld a, [hl]
    ld bc, $02ff
    cp $04
    db $fc
    ld [$18f8], sp
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$61], a
    ret nz

jr_049_49c8:
    ret nz

    add b
    pop bc
    add b
    ld [c], a
    nop
    push de
    nop
    ld [$f500], a
    nop
    ld c, b
    rst $38
    nop
    inc bc
    add b
    ld a, a
    ldh [$1f], a
    add e
    add [hl]
    ldh [rNR43], a
    rst $38
    ld b, $fd
    inc b
    db $fd
    inc de
    xor $92
    ld l, [hl]
    add hl, bc
    rst $30
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    ld a, [c]
    rrca
    ld l, h
    sbc a
    sub b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    rrca
    dec c
    rrca
    ld a, [bc]
    rrca
    push de
    nop
    inc hl
    ldh [rNR42], a
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    and b
    and b
    ret nz

    ret nz

    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, c
    rlca
    cp $03
    db $fc
    rlca
    ld b, e
    ld hl, sp+$0f
    ld b, e
    ldh a, [$1f]
    ldh [rNR43], a
    di
    rra
    pop hl
    ld a, $e0
    ccf
    jp nz, $08c1

    add a
    ld b, l
    add d
    nop
    db $d3
    nop
    db $dd
    ld [$06f7], sp
    ld sp, hl
    nop
    rst $38
    ld b, b

jr_049_4a49:
    ccf
    pop de
    adc $f0
    or b
    rst $38
    rrca
    rst $38
    nop
    sbc a
    nop
    rrca
    call nz, $e0bd
    dec [hl]
    adc e
    nop
    add a
    add b
    ld c, e
    ret nz

    rst $10
    ret nz

    db $ec
    di
    ld c, b
    ld d, h
    ccf
    ccf
    ld bc, $0e03
    ld e, $70
    ldh a, [$90]
    sub b
    ld h, b
    ld h, b
    ld bc, $0c03
    inc e
    ld h, b
    ldh [$03], a
    inc bc
    inc b
    inc c
    ld a, [bc]
    ld a, [de]
    rra
    rra
    ld a, a
    rra
    rst $38
    rrca
    cp $07
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    inc b
    rst $38
    inc bc
    add [hl]
    ld bc, $1a1a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    ld [bc], a
    ld a, [$f404]
    ld [$18e8], sp
    sbc b
    db $fc
    and $5f
    sub c
    cpl
    ret z

    rrca
    add sp, $17

jr_049_4aa9:
    db $e4
    add a
    ld [hl], h
    ld c, a
    or h
    ld b, e
    inc bc
    ld a, [$0b07]
    ld a, [c]
    inc hl
    jp nz, $3a3f

    rst $38
    call nz, $ff4e
    nop
    ld b, $07
    ld hl, sp+$08
    ldh a, [rNR10]
    ret nc

    jr nc, jr_049_4a49

    nop
    jp c, $f004

    db $fc
    ld b, $06
    nop
    ld [hl+], a
    ld bc, $1e61
    ldh [$f0], a
    ld [$7d0c], sp
    inc bc
    rst $18
    ld hl, $93fe
    ld a, a
    ld d, h
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    inc b
    rst $38
    ld bc, $7cff
    rst $38
    add d
    rst $38
    and e
    adc e
    inc b
    ld bc, $06fe
    ld hl, sp+$18
    xor l
    ld bc, $a34a
    nop
    ld d, [hl]
    dec bc
    ldh a, [rNR10]
    ldh a, [rNR23]
    db $fc
    ld c, $f9
    add hl, bc
    db $fc
    inc b

jr_049_4b0a:
    cp $04
    ld b, l
    rst $38
    ld [bc], a
    ld bc, $03fe
    ld b, h
    rst $38
    ld bc, $090d
    rst $38
    ld [$10ff], sp
    rst $38
    ldh [$eb], a
    add b
    ld [hl], a
    ld b, b
    inc a
    inc hl
    jr jr_049_4aa9

    nop
    ld l, e
    ld bc, $0604
    inc hl
    ld a, [bc]
    ld [bc], a
    ld b, $06
    ld [bc], a
    inc h
    add d
    dec c
    nop

jr_049_4b34:
    add d
    inc b
    ld b, $04
    inc b
    ld [$b08c], sp
    or b
    ret nz

    ret nz

    nop
    add b
    ld c, c
    ret nz

    ld b, b
    dec b
    add b
    ld b, b
    add b
    add b
    add b
    add b
    ld a, a
    ld bc, $8080
    ld [hl+], a
    ld b, b
    ld b, e
    jr nz, jr_049_4b34

    ld c, $10
    ldh a, [rNR10]
    ld hl, sp+$08
    ldh a, [$08]
    db $fc
    add h
    db $fc
    call nz, $b2be
    adc h
    adc h
    ld b, l
    ret nz

    ld b, b
    inc bc
    jr nz, jr_049_4b0a

    ret nz

    ret nz

    ld h, c
    ld b, $01
    inc bc
    inc b
    inc c
    db $10
    stop
    ld [hl+], a
    jr nz, jr_049_4b79

    nop

jr_049_4b79:
    ld b, c
    ld b, e
    ld b, b
    ld b, d
    nop
    jr nz, jr_049_4ba2

    inc h
    inc d
    ld [$0018], sp
    ld [$0c08], sp
    ld c, $0a
    inc c
    ld [$1c16], sp
    rst $30
    db $fc
    daa
    inc l
    dec hl
    and $13
    or $15
    add h
    nop
    sbc c
    ld bc, $9f60
    ld b, e
    ld bc, $8bff
    nop

jr_049_4ba2:
    and h
    ld e, $80
    ret nz

    jr nc, jr_049_4bd8

    dec bc
    rrca
    rra
    inc a
    ld d, a
    ret nc

    ld h, $20
    ld c, h
    ld b, b
    dec c
    add h
    adc l
    add h
    rra
    add h
    ld e, a
    ld b, d
    ccf
    ld b, b
    ccf
    jr nz, jr_049_4bfe

    nop
    ld a, a
    nop
    ld a, a
    add l
    ld [bc], a
    rra
    ld de, $fe08
    add c
    rst $18
    ccf
    rst $38
    rst $38
    ld e, b
    rst $18
    sbc h
    sub a
    sbc a
    ld a, [bc]
    cpl
    inc b
    sub a
    inc bc

jr_049_4bd8:
    rst $08
    adc b
    ld bc, $e017
    dec [hl]
    ld c, $1e
    pop hl
    pop hl
    nop
    ret nz

    ldh [$30], a
    ldh a, [$08]
    db $fc
    inc b
    sbc [hl]
    ld h, d
    rrca
    sub c
    add a
    adc b
    rst $00
    ret nz

    and e
    and h
    ld [hl], e
    db $f4
    rst $30
    ld [hl], h
    cp a
    ld a, b
    rst $08
    jr nc, @+$01

    nop

jr_049_4bfe:
    rst $30

Call_049_4bff:
    ld c, $ff
    inc e
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rrca
    ld sp, hl
    ccf
    di
    rst $38
    push bc
    cp $0b
    cp $33
    db $fc
    rst $00
    add e
    ld bc, $0580
    ei
    rrca
    pop af
    ld e, $e0
    ccf
    and e
    inc bc
    ld c, $05
    inc [hl]
    ld a, $09
    add hl, bc
    ld b, $07
    rlc d
    db $d3
    nop
    add b
    adc e
    ld [bc], a
    cp e
    ld [hl+], a
    add b
    rlca
    ldh [$e0], a
    jr @-$26

    inc b
    db $f4
    ld [bc], a
    ld a, [HeaderCGBFlag]
    db $fd
    ld bc, $fe02
    adc e
    ld bc, $00f4
    inc h
    adc h
    inc bc
    ld hl, $0e0a
    ld [$0405], sp
    ld b, $04
    dec de
    ld a, [de]
    dec hl
    ld h, $51
    add [hl]
    nop
    add hl, hl
    add h
    ld bc, $0a74
    ld [$00ff], sp
    cp [hl]
    ld b, c
    ei
    rst $00
    cp a
    ld a, [hl]
    ld h, c
    sbc a
    add a
    inc bc
    sub b
    dec b
    ld hl, sp+$0c
    cp $02
    sbc [hl]
    ld h, c
    add a
    inc bc
    sbc [hl]
    ldh [rNR41], a
    di
    db $f4
    ld [hl], a
    db $f4
    rst $38
    ld a, b
    xor a
    ld [hl], c
    rst $38
    inc bc
    rst $30
    rrca
    rst $18
    ccf
    rst $38
    ld a, a
    di
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add e
    cp $8f
    ld a, h
    rst $38
    or c
    rst $38
    ld b, [hl]
    ccf
    jr c, @-$5f

    adc b
    inc bc
    add a
    nop
    add b
    xor b
    nop
    ld d, e
    rrca
    ld hl, sp+$18
    db $f4
    inc d
    db $f4
    inc e
    ld a, [$7a0a]
    adc [hl]
    ei
    adc a
    ld a, [$fcaa]
    dec h
    ld b, h
    db $fc
    ld b, a
    ld [bc], a
    add a
    db $fc
    rlca
    add l
    ld bc, $0380
    ld hl, sp+$0f
    di
    rra
    add e
    inc bc
    call z, $02c5
    ld l, c
    adc c
    inc bc
    or $89
    ld bc, $0f70
    ld a, [$7f07]
    ld bc, $03fe
    rst $38
    add b
    ld [hl], a
    ld hl, sp-$05
    inc e
    rst $38
    rlca
    cp $01
    add h
    ld bc, $01ea
    ret nz

    ccf
    add e
    ld bc, $00ef
    ei
    adc c
    inc b
    ld b, $83
    ld [bc], a
    ld d, b
    db $10
    or a
    ld a, b
    db $fd
    cp $fe
    rst $38
    or $0f
    rst $38
    inc bc
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh a, [rNR23]
    ret nz

    adc d
    ld [bc], a
    ld h, e
    ld [$0003], sp
    inc c
    nop
    inc de
    nop
    rlca
    db $10
    ld l, a
    and e
    ld [bc], a
    adc a
    ld a, [bc]
    inc b
    rst $38
    add e
    rst $18
    ld hl, $937e
    cp a
    ld d, h
    rst $38
    ld b, b
    and e
    ld [bc], a
    ld d, [hl]
    inc bc
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    ld a, b
    ld b, $01
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $7b01
    dec de

jr_049_4d2f:
    inc bc
    inc bc
    inc c
    inc c
    db $10
    add hl, de
    jr nz, jr_049_4d6a

    jr nz, jr_049_4d70

    inc bc
    ld e, a
    ld [de], a
    sbc [hl]
    sub b
    sbc h
    ld c, e
    ld c, a
    ld [hl], b
    ld a, a
    ld b, b
    ld e, a
    ld [$274f], sp
    daa
    jr jr_049_4d63

    ld a, c
    ldh [$3f], a
    inc b
    inc c
    inc bc
    inc de
    db $10
    rla
    jr nz, jr_049_4d81

    ld b, b
    ld [hl], a
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    ld b, h
    ld a, a
    ld d, b
    ld a, a
    inc [hl]
    scf
    inc h

jr_049_4d63:
    daa
    ld hl, sp-$01
    nop
    ccf
    nop
    rst $38

jr_049_4d6a:
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_049_4d2f

jr_049_4d70:
    and b
    cp a
    add b
    sbc a
    ld b, [hl]
    ld c, a
    ld b, h
    ld c, a
    jr nz, jr_049_4da9

    jr jr_049_4d9b

    rlca

jr_049_4d7d:
    rlca
    dec bc
    rrca
    db $10

jr_049_4d81:
    rla
    db $10
    dec de
    jr nc, @+$39

    call z, $02ef
    adc a
    jp nz, $21ff

    rst $38
    ld b, e
    ld [de], a
    cp $07
    dec bc
    cp $8d
    db $fd
    adc c
    ld sp, hl
    db $10
    ldh a, [rSCX]

jr_049_4d9b:
    jr nz, jr_049_4d7d

    ld bc, $c0c0
    call nz, $2200
    ld [bc], a
    ld bc, $0101
    reti


    nop

jr_049_4da9:
    ld a, [de]
    inc c
    or b
    or b
    ld c, b
    ret c

    ld c, [hl]
    sbc $81
    sbc a
    ld bc, $02bf
    rst $38
    ld [bc], a
    ld b, [hl]
    rst $38
    nop
    inc e
    ld c, $ff
    ld d, e
    di
    sbc c
    ld sp, hl
    xor b
    jp hl


    jr c, @+$01

    jr nz, @+$01

    nop
    rst $38
    rlca
    rst $38
    rra
    ld hl, sp+$7f
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add e
    db $fc
    rst $38
    ret nz

    ld b, e
    rst $38
    ld h, b
    ldh [$32], a
    rst $18
    ldh a, [$9f]
    cp b
    adc a
    jr jr_049_4df4

    inc a
    rlca
    ld e, h
    rlca
    cp h
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$9f]
    ld h, b
    ld h, a
    ld b, b

jr_049_4df4:
    push bc
    and b
    ld [$fdbc], a
    inc de
    di
    ld [de], a
    jr nc, @+$0a

    inc a
    inc b
    rst $38
    add e
    rst $38
    ld l, h
    ld a, a
    jr nc, jr_049_4e46

    inc c
    rrca
    dec de
    rra
    jr nc, jr_049_4e4c

    ld b, c
    ld b, a
    ld a, $3e
    add e
    nop
    ld e, $0a
    inc bc
    rlca
    jr jr_049_4e32

    jr nz, jr_049_4e5a

    ld b, a
    ld a, a
    sbc a
    rst $38
    ccf
    ld b, [hl]
    rst $38
    ld a, a
    ld [$ffff], sp
    rra
    ld a, [$f50f]
    nop
    rst $38
    inc bc
    and l
    rst $30
    ld c, $cf
    ld a, b

jr_049_4e32:
    rst $00
    ld hl, sp-$71
    ld sp, hl
    rrca
    pop af
    rra
    ld a, [c]
    rra
    ld [c], a
    ccf
    jp nz, Jump_049_43ff

    rlca
    db $fd
    dec c
    rrca
    ld hl, sp+$13

jr_049_4e46:
    ldh a, [rNR51]
    ldh [rSCX], a
    ret nz

    ld b, l

jr_049_4e4c:
    ret nz

    add e
    add b
    add a
    add b
    ld b, e
    ld a, a
    ret nz

    inc b
    ccf
    ldh [$1f], a
    ld hl, sp+$07

jr_049_4e5a:
    ld b, [hl]
    rst $38
    nop
    ldh [rNR51], a
    rrca
    cp $ff
    ldh a, [$bf]
    nop
    ld a, a
    nop
    cp $01
    ld bc, $fffe
    ret nz

    rra
    ld hl, sp+$33
    rst $38
    pop bc
    rst $38
    inc bc
    rst $38
    jp Jump_049_6cff


    inc a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$08]
    jr @+$0a

    ld hl, sp+$10
    ldh a, [$90]
    ldh a, [rSCX]
    ret z

    ld hl, sp+$44
    db $e4
    db $fc
    ld d, $bc
    db $e4
    ld a, h
    add sp, -$48
    ret z

    ld a, b
    jr nc, @-$0e

    ret nz

    ret nz

    cp b
    ld hl, sp-$7b
    push hl
    ld e, [hl]
    rst $38
    ld h, h
    cp $84
    db $fd
    ld [$43b9], sp
    ld [$0f1f], sp
    inc b
    cp a
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add [hl]
    rst $38
    reti


    ld a, a
    pop hl
    ccf
    ld hl, sp+$0f
    ld b, l
    db $fc
    rlca
    nop
    ld hl, sp-$7d
    ld bc, $e029
    ld h, $1f
    ldh [$7f], a
    add b
    rst $38
    ld b, $ff

jr_049_4ec8:
    jr jr_049_4ec8

    ld hl, sp-$14
    ldh a, [rNR32]
    ldh a, [$1f]
    add sp, $3f
    db $e4
    ccf
    inc hl
    di
    ldh [$33], a
    ldh [$37], a
    ldh a, [$1f]
    ld hl, sp-$21
    or a
    cp a
    adc b
    adc a
    ld a, [bc]
    dec bc
    ld de, $1e11
    ld e, $63
    rrca
    db $10
    jr nc, jr_049_4f35

    ld c, b
    ld h, $27
    ld [hl+], a
    ld h, $72
    ld a, [hl]
    and c
    cp a
    add d
    sbc a
    add h
    cp a
    ld b, e
    ld b, h
    ld a, a
    dec d
    ld b, b
    ld a, a
    ld b, d
    ld e, a
    add c
    rst $08
    add b
    rst $10
    add b
    rst $08
    ld b, b
    ld d, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    jr nz, @+$01

    jr @+$01

    rlca
    rst $38
    and e
    ld bc, $0e42
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    adc h
    adc h
    sub d
    sub [hl]
    ld [c], a
    xor $82
    cp $44
    ld b, h
    db $fc
    inc h
    db $10
    inc d
    db $fc
    dec c
    db $fd
    ld c, $fe
    or $ff
    dec c
    rst $38

jr_049_4f35:
    inc b
    ld a, $02
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $00a5
    adc l
    ld bc, $f0ff
    ld b, h
    rst $38
    nop
    dec bc
    add hl, sp
    rst $38
    adc $fe
    ld b, $fe
    ld [bc], a
    ld a, [$f9f9]
    rlca
    rlca
    xor b
    nop
    ld de, $8000
    inc hl
    ld b, b
    ld b, e
    jr nz, @-$1e

    ld b, l
    db $10
    ldh a, [rSCX]
    ld [$01f8], sp
    adc b
    ld hl, sp+$45
    db $10
    ldh a, [rSCX]
    jr nz, @-$1e

    cp l
    nop
    inc e
    ld c, $c0
    ret nz

    jr nz, jr_049_4fd3

    jr nz, @-$1e

    inc l
    xor $71
    db $fd
    add hl, bc
    ld a, e
    dec b
    add a
    dec b
    jp $f501


    ld [$82fe], sp
    cp $84
    db $fc
    adc b
    ld hl, sp-$50
    ldh a, [$cd]
    sbc d
    rla
    db $10
    add hl, de
    db $10
    rla
    jr nz, jr_049_4fcb

    jr nz, jr_049_4fd5

    ld [hl-], a
    dec sp
    jr nc, jr_049_4fcb

    add hl, hl
    add hl, sp
    rla
    rra
    db $10
    rla
    inc de
    inc de
    add hl, bc
    add hl, bc
    ld b, $06
    ld h, a
    ld de, $ff31
    ld [de], a
    cp $0a
    cp $6f
    cp $19
    sbc c
    ld e, c
    reti


    jr c, @-$06

    db $10
    ldh a, [$30]
    ldh a, [$8d]
    nop
    jp nz, $0287

    nop
    dec c
    pop af
    rra
    db $e4
    ld a, a
    adc b
    db $fc
    jr @+$01

    ld h, $ff

jr_049_4fcb:
    pop bc
    rst $20
    ret nz

    ld l, a
    ld b, e
    ret nz

    ld a, a
    rrca

jr_049_4fd3:
    rst $20
    ccf

jr_049_4fd5:
    ld e, b
    rst $38
    db $e4
    ld h, a
    call z, $fc47
    ccf
    rst $38
    rst $38
    adc a
    sbc a

jr_049_4fe1:
    add e
    add a
    ld l, a
    dec bc
    jr c, jr_049_501f

    ld b, h
    ld b, h
    ld [hl+], a
    ld h, $73
    ld a, a
    and d
    cp [hl]
    add d
    sbc [hl]
    add a
    ld [bc], a
    ld b, d
    ld bc, $df83
    add a
    ld [bc], a
    ld [hl], b
    ld a, [bc]
    db $ed
    db $fd
    ld e, $3e
    ld a, [bc]
    rra
    dec b
    rst $38
    ld b, $fe
    ld_long a, $ff44
    ld bc, $f111
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    dec de
    rst $38
    daa
    rst $20
    inc sp
    db $e3
    ld e, a
    rst $38
    db $fc
    cp $e0
    ldh a, [$89]
    ld [bc], a
    and d

jr_049_501f:
    ld bc, $6020
    add a
    ld [bc], a
    or b
    ld bc, $f010
    adc c
    ld [bc], a
    ldh a, [$e0]
    ld hl, $fe02
    inc b
    db $fc
    ld [$07f8], sp
    rlca
    dec bc
    dec bc
    add hl, bc
    dec bc
    nop
    rla
    db $10
    rla
    inc de
    rra
    inc c
    rrca
    ld [$090f], sp
    dec bc
    ld bc, $121b
    rla
    inc d
    dec d
    inc c
    dec c
    ld b, $07
    add a
    nop
    ld e, $8b
    inc bc
    ld b, h
    ld [bc], a
    xor b
    rst $28
    jr nc, jr_049_4fe1

    ld bc, $8403
    ld bc, $1f61
    ld hl, sp-$07
    db $fc
    db $fd
    rst $38
    ld a, [hl]
    db $db
    cp h
    ld a, a
    rst $20
    cp $ff
    ld [hl], b
    cp $a0
    cp b
    ld h, b
    ld a, h
    ret nz

    rst $18
    sub b
    sbc a
    or b
    cp a
    db $ec
    rst $28
    ld b, a
    rst $00
    pop af
    rst $38
    ld c, a
    ld a, a
    add l
    ld bc, $0970
    db $fc
    add a
    db $fc
    rlca
    db $fc
    add a
    ld hl, sp-$71
    ld a, c
    adc a
    ld b, e
    pop af
    rra
    dec bc
    ld [c], a
    ccf
    call nz, $fefe
    rst $38
    ld bc, $00ff
    rlca
    nop
    ccf
    add l
    ld bc, $009e
    ld bc, $0183
    and e
    ldh [$2c], a
    ld hl, sp+$57
    rst $38
    ldh [rIE], a
    add h
    db $e4
    ld b, h
    db $fc
    ld c, b
    ld hl, sp+$3c
    db $fc
    ld b, e
    rst $38
    add b
    rst $00
    nop
    adc a
    nop
    rst $08
    ret nz

    rst $38
    jr nc, @+$01

    ld [$047f], sp
    ld a, a
    dec b
    rst $38
    rlca
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    ld e, h
    rst $30
    ld a, h
    rst $20
    ld hl, sp-$39
    ld hl, sp-$71
    add a
    inc bc
    ld e, b
    adc e
    ld [bc], a
    call c, $a001
    and b
    ld b, e
    ld h, b
    ldh [rSC], a
    ld b, b
    ret nz

    ret nz

    adc d
    ld [bc], a
    ld h, l
    add a
    xor a
    add a
    ld [bc], a
    ld [$02a7], sp
    and [hl]

jr_049_50f0:
    jp $0a82


    ld bc, $0601
    rlca

jr_049_50f7:
    ld [$0508], sp
    dec b
    ld [bc], a
    inc bc
    ld bc, $03a8
    inc bc
    inc d
    ret nz

    push bc
    jr nz, jr_049_50f0

    inc a
    ld a, l
    inc de
    inc sp
    ld a, [bc]
    ld a, b
    inc a
    db $fc
    add e
    cp $19
    rst $38
    jr nz, jr_049_50f7

    sub [hl]
    rst $30
    rst $38
    push bc
    inc b
    cpl
    ld [bc], a
    ccf
    nop

jr_049_511d:
    rrca
    ld h, c
    ld b, $7f
    ldh a, [$2f]
    db $fc
    rla
    rst $38
    add sp, $22
    ld hl, sp+$03
    ldh [$f0], a
    nop
    ret nz

    ld h, c
    add l
    ld [bc], a
    jr nz, @+$05

    scf
    ccf
    ld [$850f], sp
    ld [bc], a
    ld a, [hl+]
    inc bc
    jr nz, jr_049_511d

    pop bc
    pop bc
    adc e
    rst $18
    rst $38
    ld [hl], a
    rra
    inc bc
    inc bc
    rra
    ld e, $31
    ccf
    ld d, a
    ld a, a
    ld l, a
    ld a, b
    rst $08
    cp $97
    pop af
    and e
    pop hl
    or a
    pop hl
    ld l, a
    ld [hl], c
    scf
    jr c, jr_049_5173

    rrca
    rra
    rla
    inc e
    inc de
    db $10
    rra
    rrca
    rrca
    db $ec
    ccf
    ldh [$2d], a
    ld bc, $0201
    ld b, $08
    ld [$1012], sp
    dec b
    jr nz, jr_049_51a2

jr_049_5173:
    jr nz, jr_049_51a3

    ld hl, $c0ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    ei
    adc d
    di
    ld d, d
    di
    ld a, [c]
    add hl, sp
    add hl, bc
    dec a
    dec b
    db $fd
    add l
    push af
    ld c, l
    push hl
    db $dd
    ld a, c
    ld sp, hl
    jp Jump_049_43c2


    jp nz, $8486

    ld b, l
    rlca
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld hl, sp+$34
    or h
    rla
    rlca

jr_049_51a2:
    rrca

jr_049_51a3:
    ld sp, $8070
    add b
    ld a, [bc]
    nop
    ld d, l
    nop
    xor a
    rlca
    ld e, [hl]
    ld b, $fa
    ld b, $fe
    ld [bc], a
    ld a, l
    add e
    ld a, a
    add b
    rst $38
    add b
    ld d, d
    rst $38
    nop
    rlca
    rlca
    rst $38
    jr jr_049_5220

    ld bc, $03ae
    ld a, [hl]
    ld b, h
    inc bc
    cp $0b
    db $eb
    dec d
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    db $eb
    rra
    rra
    ld [bc], a
    inc bc
    adc e
    rst $30
    add hl, bc
    rlca
    rlca
    ld e, $1b
    ld a, $23
    ld a, [hl]
    ld [hl], e
    ld c, a
    ld c, c
    ld b, e
    add e
    add h
    rlca
    inc bc
    add h
    ld c, a
    ld c, b
    scf
    jr c, jr_049_51f1

    rlca
    ret


    nop
    add hl, de

jr_049_51f1:
    ld a, [de]
    ldh a, [$f0]
    db $fc
    inc c
    ei
    inc bc
    or $00
    db $fd
    nop
    rst $38
    add b
    ld a, a
    ldh [$3f], a
    jr nc, jr_049_51a2

    sbc b
    rst $18
    ret c

    ld a, a
    ld sp, hl
    sbc $39
    rst $38
    ld bc, $abfe
    di
    rlca
    ld bc, $03ff
    db $fc
    rra
    pop af
    rst $38
    sub d
    ld b, h
    rst $38
    ld [hl+], a
    dec b
    inc hl

jr_049_521d:
    rst $38
    or l
    rst $38

jr_049_5220:
    ld e, [hl]
    cp $22
    ld hl, sp+$1e
    ld a, b
    add sp, -$08
    inc d
    db $fc
    inc c
    db $fc
    ld a, [de]
    cp $e6
    cp $82
    rst $38
    ld b, a
    ld a, a
    ld a, l
    ld a, a
    adc e
    rst $38

jr_049_5238:
    ld d, $fe

jr_049_523a:
    adc d
    cp $74
    db $fc
    jr z, jr_049_5238

Jump_049_5240:
    jr jr_049_523a

    cp $e6
    ld b, e
    cp $01
    add hl, bc
    rst $38
    ld bc, $0ef0
    ld [c], a
    ld [de], a
    ld bc, $fef1
    ld a, [hl]
    ld l, e
    dec b
    add b
    add b
    ld b, b
    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    dec d
    ld hl, sp+$08
    ret c

    add sp, $38
    jr z, jr_049_521d

    xor b
    db $fc
    call z, $8b7f
    xor $10
    rst $28
    db $10
    rst $38
    jr nz, @+$01

    ld b, a
    ld hl, sp-$08
    ld h, c
    rlca
    xor $fe
    sbc c
    rst $38
    ld h, $fe
    ld l, a
    ld sp, hl
    ld b, e
    ld e, a
    ldh a, [$03]
    ccf
    db $e3
    rst $38
    db $e4
    ld b, e
    ld a, h
    ld c, b
    dec bc
    ld a, e
    ld c, h
    ld a, b
    ld c, a
    jr c, @+$31

    inc l
    scf
    rla
    dec de
    rlca
    rlca
    or l
    nop
    inc b
    rlca
    jr nz, jr_049_52bc

    sub b
    sub b
    ld h, b
    ld h, b
    db $10
    db $10
    or e
    sbc a
    ld bc, $0707
    ld b, e
    rrca
    ld [$0701], sp
    ld b, $83
    ld bc, $0f28
    inc bc
    inc bc
    ld b, $07
    sbc c
    rra
    ld a, l
    ld h, a
    db $fc
    rlca
    rst $38

jr_049_52bc:
    inc bc
    db $fc
    call z, $3030
    add e
    ld bc, $2252
    ld [$0404], sp
    sbc a
    dec bc
    rst $38
    ldh a, [$a3]
    ld bc, $010c
    rra
    ldh a, [rSCX]
    adc a
    ld a, b
    rlca
    dec c
    ld a, [$fd0a]
    dec c
    ld a, [$fd12]
    jp $018e


    cp $ff
    ldh a, [$29]
    nop
    or b
    add hl, de
    ld [hl], b
    ld [hl], b
    cp b
    adc b
    or h
    adc h
    db $f4
    adc h
    xor $9a
    rst $10
    ld [hl], c
    db $e3
    ld h, c
    push af
    jp $e6fa


    sbc h
    db $fc
    ld a, b
    ld hl, sp+$20
    ldh [rLCDC], a
    ret nz

    xor a
    jp $8019


    add b
    ldh [$60], a
    sbc b
    sbc b
    add h
    add h
    add d
    add d
    call c, $f87c
    jr jr_049_5378

    and h
    and d
    ld h, d
    ld d, c
    pop af
    xor l
    ld e, l
    ld d, e
    or e
    db $10
    sub b
    ld b, e
    ld [$0388], sp
    add sp, -$18
    jr c, jr_049_535f

    ld a, e
    ret z

    ld bc, $1676
    rlca
    cp $0b
    cp $13
    db $fd
    daa
    xor l
    rlca
    ld e, l
    rlca
    cp [hl]
    inc bc
    ld a, a
    ld bc, $00ff
    db $fd
    ld [bc], a
    ld [$5515], a
    xor d
    adc [hl]
    ld bc, $e060
    jr nz, jr_049_5350

    ld sp, hl
    rra
    ld a, [c]
    ccf
    jp z, $29ff

jr_049_5350:
    rst $38
    xor b
    rst $38
    and l
    rst $38
    sub d
    rst $38
    ld c, e
    cp $47
    db $fc
    cpl
    db $fd
    sbc l
    ei

jr_049_535f:
    ld a, d
    cp $8a
    cp $34
    db $fc
    inc d
    db $fc
    jr c, @-$06

    adc e
    ld bc, $0fd0
    ld hl, sp-$08

jr_049_536f:
    xor a
    rst $38
    ld d, e
    ldh a, [$a7]
    ldh [$ef], a
    pop bc
    ld a, [hl]

jr_049_5378:
    add $f4
    cp b
    call z, Call_049_43c8
    adc a
    adc b
    rrca
    sbc a
    sub b
    ld a, a
    ldh [$f0], a
    adc a
    ret nz

    cp a
    ld b, a
    ld a, a
    jr z, jr_049_53cc

    inc e
    jr @+$07

    ld b, $cf
    nop
    add hl, de
    ldh [rNR44], a
    db $fd
    rst $20
    db $fc
    ld b, a
    rst $38
    inc hl
    ld a, h
    ld l, h
    db $10
    jr nc, @-$0e

    db $10
    jr c, jr_049_53ac

    sbc $06
    db $fd
    inc bc
    cp $01
    db $fd
    inc bc

jr_049_53ac:
    ld c, $f2
    jp nz, $31fe

    rst $38
    adc c
    ld a, a
    push hl
    rra
    sub a
    rst $30
    ld h, b
    ld h, c
    ret nc

    ld [bc], a
    pop de
    dec b
    ret nz

    jr nz, jr_049_5421

    ld d, b
    ld d, b
    jr nz, jr_049_53e7

    jr z, @+$09

    ld [$4828], sp
    ld l, b
    db $10

jr_049_53cc:
    ld d, b
    jr nz, jr_049_536f

    adc d
    inc bc
    ld b, $c3
    ld bc, $11b5
    inc bc
    rst $38
    inc bc
    db $fd
    rlca
    cp $0f
    cp $17
    db $ed
    daa
    cp [hl]
    rlca
    ld a, a
    inc bc
    cp $03

jr_049_53e7:
    rst $38
    adc c
    inc bc
    daa
    ldh [$4c], a
    rst $00
    ld [hl-], a
    ld de, $a6bf
    jp hl


    rst $18
    ld d, h
    rst $38
    jp z, $a5be

    db $fc
    xor a
    ld hl, sp+$1f
    ld hl, sp-$61
    db $fc
    adc d
    ei
    ld c, c
    ld hl, sp+$39
    ld sp, hl
    add l
    db $fd
    ld h, [hl]
    rst $38
    ld e, $ff
    ldh a, [$90]
    ldh a, [$d0]
    xor b
    ld a, b
    ld a, b
    ld hl, sp-$78
    adc b
    ld e, h
    inc b
    xor h

jr_049_5419:
    ld b, $d2
    rrca
    push hl
    inc de
    and d
    ld b, c
    pop hl

jr_049_5421:
    nop
    ldh a, [rP1]
    add sp, $00
    ld [hl], h
    add b
    ld a, d

jr_049_5429:
    add b
    dec a
    jp nz, $a25c

    ld a, [hl+]
    push de
    sub b
    ld [$7940], a
    jr z, jr_049_546a

    inc c
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld h, c
    adc e
    ld [bc], a
    ld d, b
    ld h, e
    ldh [rNR51], a
    ld e, e
    dec b
    rst $38
    dec b
    db $fc
    rlca
    ld [hl], a
    adc e
    ld [hl], h
    adc e
    ei
    adc a
    db $fc
    rrca
    db $eb
    rla
    add sp, $17
    or $1f
    pop af
    rra
    db $fc
    cpl
    db $e3
    ccf
    call c, $a37f
    ld a, a
    rst $38
    sbc a
    rst $38
    rlca
    db $fd
    ld [bc], a
    cp $01
    add l
    add e
    inc bc

jr_049_546a:
    ld [$5415], a
    xor e
    ld h, c
    ldh [$33], a
    ld [$4000], sp
    ld [$0c44], sp
    xor e

jr_049_5478:
    dec bc
    sbc d
    jr z, jr_049_5419

    jr z, jr_049_5429

    ld e, h
    cp a
    ld e, b
    rst $28
    ret c

    ccf
    ld hl, sp-$71
    ld hl, sp+$7f
    ld sp, hl
    adc [hl]
    ld sp, hl
    ld [hl], a
    ld sp, hl
    sub [hl]
    ld sp, hl
    ld a, a
    ldh a, [$3f]
    ldh a, [$df]
    ldh a, [$3f]
    ldh a, [$d7]
    ld hl, sp+$3f
    ld hl, sp-$21
    ld hl, sp+$3f
    ld hl, sp-$11
    ld hl, sp+$0f
    ld sp, hl
    adc l
    ld a, e
    ld b, e
    ld a, [bc]
    cp $00
    inc d
    add h
    inc bc
    ld e, e
    adc b
    ld bc, $00e0
    ld a, b
    and e
    nop
    xor [hl]
    ld de, $8080
    dec [hl]
    and b
    scf
    jr nc, @-$69

    sub b
    sub a
    sub b
    scf
    or c
    sub h
    ld sp, $01b5
    or h
    ld bc, $b447
    nop
    ld b, e
    xor d
    nop
    rra
    and b
    ld a, [bc]
    add d
    jr z, @-$76

    ld [hl+], a
    add b
    ld a, [hl+]
    add b
    ld a, [bc]
    sub d
    ld [$900a], sp

jr_049_54dd:
    add d
    sbc b
    add e
    sbc c
    adc e
    sub c
    add hl, bc
    sub c
    jr jr_049_5478

    add hl, bc
    sub c
    sbc c
    sub c
    sub c
    sbc c
    ld d, c
    reti


    ld b, h
    ld d, b
    ret


    ld d, $49
    ld e, c
    ld c, b
    ld a, b
    db $10
    inc a
    ld d, b
    scf
    ld e, b
    jr nc, jr_049_54dd

    cp b
    rst $08
    sbc a
    rst $20
    sbc a
    ldh [$c7], a
    ld a, b
    ldh [$3f], a
    rst $38
    rra
    add a
    ld bc, $e0b8
    daa
    ld d, l
    rla
    ld d, c
    scf
    ld b, a
    ld [hl], e
    or $63
    db $76
    rst $20
    or d
    rst $30
    jp c, $aab7

    rst $10
    cp l
    call $ed5d
    xor l
    ld [hl], l
    sbc a
    ld [hl], l
    dec de
    push af
    ld sp, $76df
    xor [hl]
    db $e4
    call c, $3cc4
    ld [$30f8], sp
    ldh a, [$e0]
    ldh [$87], a
    ld [bc], a
    jr z, jr_049_5540

    ld e, a
    rlca
    ei
    rlca
    rst $38

jr_049_5540:
    inc bc
    adc d
    nop
    or $02
    ldh [rIE], a
    ldh a, [rSCX]
    rst $38
    ld hl, sp+$02
    ld a, a
    ld sp, hl
    rst $18
    add h
    ld bc, $876b
    inc bc
    ld h, b
    ld b, e
    ld hl, sp-$18
    add e
    ld bc, $ffdc
    db $ec
    inc sp
    ld [$0101], sp
    rlca
    ld b, $0f
    ld [$101f], sp
    ccf
    ld b, e
    jr nz, jr_049_557a

    inc bc
    ld b, b
    ld c, a
    ld b, b
    rst $18
    ld b, e
    add b
    rst $38
    db $10
    add c
    cp $82
    ld a, h
    ld c, h
    inc sp

jr_049_557a:
    inc sp
    rlca
    rlca
    rrca
    rrca
    dec bc
    dec bc
    inc b
    inc b
    nop
    inc bc
    db $ec
    ld c, c
    rlca
    di
    di
    rst $38
    inc c
    rst $38
    ld [bc], a
    cp $31
    ld b, e
    rst $28
    ld l, b
    add hl, de
    cp a
    ld a, b
    rst $38
    jr nc, @+$01

    inc c
    rst $28
    ld e, $ff
    sbc [hl]
    db $fd
    cp $ff
    db $fc
    db $eb
    push hl
    rst $18
    pop hl
    cp $c2
    db $fc
    add h
    ld hl, sp+$18
    ldh [$e0], a
    inc hl
    ld bc, $0300
    ld [hl+], a
    ld [bc], a
    dec bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc b
    inc b
    nop
    ld bc, $0e09

jr_049_55c0:
    ld c, $64
    ld [$0020], sp
    ld d, b
    nop
    ld l, b
    nop
    xor b
    ld [$43bc], sp
    inc l
    and [hl]
    inc b
    ld e, $a2
    rrca
    sub e
    rra
    ld b, e
    ld d, c
    ld e, $02
    ld d, d
    ld c, $4a
    ld b, e
    rrca
    jr z, jr_049_55c0

    add hl, sp
    dec c
    jr z, jr_049_560d

    ld [$1809], sp
    dec c
    jr @+$1e

    inc e
    ld a, $24
    ccf
    ld [hl+], a
    scf
    add hl, hl
    inc de
    inc e
    rrca
    ld [$111f], sp
    sbc $d2
    db $f4
    inc l
    db $fc
    dec h
    ld hl, sp+$19
    ldh a, [rNR30]
    or c
    ld e, e
    and c
    ld l, d
    call nz, $c654
    ld d, h
    jp $834a


    add a

jr_049_560d:
    add e
    add d
    rlca
    inc b
    rrca
    dec c
    dec a
    inc sp
    ld a, [hl]
    ld b, c
    rst $38
    add c
    rst $18
    add c
    ld b, e
    cp [hl]
    ld [bc], a
    dec c
    ld a, h
    inc b
    ld hl, sp+$08
    ld a, b
    adc b
    inc [hl]
    ld d, h
    jr c, jr_049_56a1

    ld b, b
    ld b, b
    add b
    add b
    ld h, e
    inc de
    ld [$0c08], sp
    inc d
    inc l
    inc h
    inc c
    inc h
    ld c, h
    ld b, h
    inc e
    ld b, h
    sbc h
    add h
    dec a
    add l
    cp e
    add [hl]
    di
    inc c
    ld c, e
    rst $38
    nop
    ldh [$3d], a
    ei
    inc b
    ld sp, hl
    ld a, [bc]
    pop af
    ld a, [de]
    pop hl
    ld a, [de]
    db $e3
    inc h
    rst $20
    jr c, @+$01

    inc bc
    rst $38
    rra
    pop af
    rst $38
    pop af
    sbc [hl]
    xor e
    adc [hl]
    ld e, a
    call z, $c06f
    ccf
    jr nz, jr_049_5684

    ld e, b
    rrca
    ld c, b
    or $ff
    ldh a, [$2f]
    pop af
    ld e, a
    ld l, [hl]
    ld e, a
    ldh [$5f], a
    ld [hl], c
    sbc a
    rst $38
    adc [hl]
    rst $20
    add b
    ld h, a
    ld b, b
    ld [hl], a
    ld b, b
    scf
    jr nz, jr_049_56ba

    jr nz, jr_049_569c

    db $10
    rrca
    add hl, bc

jr_049_5684:
    ld b, $06
    ld a, e
    ld de, $181c
    ld a, h
    ld h, h
    ld hl, sp-$78
    ld sp, hl
    add hl, bc
    ld a, [c]
    ld [de], a
    ld [c], a
    ld [hl+], a
    push hl
    inc h
    push bc
    ld b, h
    bit 1, b
    ld b, e
    rrca

jr_049_569c:
    adc b
    ld b, e
    rst $18
    ld d, b
    inc c

jr_049_56a1:
    rst $38
    ld h, c
    rst $38
    ld e, e
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    ld [$10f3], sp
    rst $30
    ld b, e
    db $10
    rst $38
    ldh [rNR50], a
    ld c, $f9
    dec bc
    pop af
    dec de
    ldh [rBCPD], a

jr_049_56ba:
    ret nz

    push bc
    ld h, b
    db $e4
    ld a, [hl]
    sbc $ff
    pop de
    ld b, c
    ldh [$e7], a

jr_049_56c5:
    and b
    rst $38
    and c
    jp c, $fe26

    ld a, [de]
    rst $38
    ld de, $19ff
    db $ed
    ld a, [hl+]
    pop bc
    ld b, [hl]
    rst $00
    ld b, h
    add a
    add h
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101

jr_049_56de:
    jp nc, $3500

    dec c
    ld bc, $0600
    nop
    ld [$1300], sp
    nop
    ld h, $60
    ld l, d
    ldh a, [$92]
    ld [hl], b
    ld b, e
    ld [de], a
    ldh a, [rP1]
    inc d
    ld b, l
    ldh [rNR50], a
    ld b, e
    ret nz

    ld c, c
    ld b, e
    add b
    sub d
    rlca
    nop
    inc h
    add b
    ret


    ldh [$72], a
    ldh a, [rNR14]
    ld b, e
    ld hl, sp+$08
    ldh [rOBP0], a
    jr nc, jr_049_56de

    ldh [rNR41], a
    db $e3
    inc hl
    rst $30
    inc [hl]
    db $dd
    jr z, jr_049_56c5

    ret nc

    ld a, d
    ld d, h
    ld a, l
    or $37
    ld l, [hl]
    dec sp
    ld a, [hl+]
    ei
    jp z, $cefd

    ld a, a
    ld b, h
    ld a, a
    ld d, b
    ccf
    jr nc, @+$41

    jr z, jr_049_576c

    inc h
    sbc a
    sub h
    rst $18
    ld d, h
    rst $28
    ld a, [hl+]
    ld [hl], a
    rla
    ld a, b
    ld [$08b8], sp
    sbc h
    inc b
    call c, $de04
    add d
    ld e, [hl]
    add d
    ld h, [hl]
    ld e, d
    ld b, b
    ld h, h
    jr nz, @+$24

    ld [de], a
    ld [de], a
    inc c
    inc c
    nop
    ld h, b
    nop
    sub b
    nop
    ld [$f800], sp
    nop
    ld c, e
    ld c, b
    nop
    ld b, a
    sub b
    nop
    ld b, e
    jr nz, jr_049_575e

jr_049_575e:
    ld b, e
    ld b, b
    nop
    nop
    add b
    or l
    nop
    ld h, $a3
    nop
    ld a, [hl-]
    ld bc, $04fc

jr_049_576c:
    ld b, l
    cp $02
    ld [bc], a
    cp [hl]
    ld [bc], a
    cp [hl]
    ld b, h
    ld [bc], a
    ld a, $01
    inc a
    inc b
    add e
    ld bc, $043e
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    cp d
    nop
    ld e, c
    ld de, $0301
    rlca
    inc c
    inc bc
    db $10
    inc bc
    jr nz, jr_049_57b6

    jr nz, jr_049_5798

    ld b, b
    ld b, a
    ld b, c
    rlca
    add c
    adc a
    add c

jr_049_5798:
    ld b, e
    rst $08
    add b
    inc bc
    ld l, a
    ld b, b
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, @+$07

    rra
    db $10
    rrca
    ld [$0603], sp
    adc c
    ld [bc], a
    jr nz, @+$09

    ld l, h
    ld l, h
    sbc a
    adc e
    db $fd
    ld h, h
    cp $12

jr_049_57b6:
    ld b, e
    rst $38
    ld bc, $fb0d
    add l
    cp d
    adc $76
    ld e, d
    ld a, h
    ld d, h
    db $fc
    call nc, $b4dc
    db $ec
    inc [hl]
    ld b, e
    ld hl, sp+$28
    ld bc, $30d0
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    add b
    ret nz

    pop de
    ld [bc], a
    cpl
    ld bc, $0203
    add l
    ld bc, $1000
    dec e
    jr @-$02

    db $ec
    xor $24
    rst $28
    ld b, d
    rst $18
    db $e3
    inc a
    inc h
    jr c, jr_049_5816

    nop
    stop
    call nz, $e400
    nop
    ld b, a
    ld h, d
    rrca
    cp a
    nop
    ld [bc], a
    nop
    rst $38
    nop
    jr jr_049_5800

jr_049_5800:
    ld a, $41
    dec c
    inc sp
    ld [bc], a
    rrca
    rlca
    rlca
    adc c
    ld bc, $0470
    pop bc
    ld a, $00
    pop bc
    nop
    and h
    ld [bc], a
    call nz, $3f00

jr_049_5816:
    ld h, d
    nop
    ld a, a
    ld h, d
    inc de
    rst $38
    nop
    inc c
    inc bc
    ld hl, sp+$06
    dec sp
    rlca
    rst $38
    ld b, $1f
    add hl, bc
    sbc [hl]
    di
    dec a
    rst $08
    rst $38
    ld a, $e7
    ret nz

    adc c
    ld bc, $03e0
    ld sp, hl
    adc b
    ccf
    ret z

    ld h, c
    ld bc, $1ff0
    ld h, c
    ld bc, $0dff
    ld h, c
    dec c
    db $f4
    rrca
    dec h
    rra
    ld d, $ee
    ld l, b
    ld e, h
    ld a, [hl]
    sbc $ff
    or c
    pop bc
    ld h, b
    adc c
    ld [bc], a
    ld b, $01
    ld c, h
    db $f4
    ld h, c
    ld bc, $7c94
    jp $fd02


    nop
    add b
    ld b, e
    and b
    nop
    ld a, [bc]
    sub b
    nop
    ld d, b
    nop
    ld c, b
    add b
    xor b
    add b
    or b
    nop
    ld b, b
    adc c
    ld [bc], a
    call z, $c005
    ld b, b
    ldh [rNR41], a
    ld [hl], b
    db $10
    add l
    ld [bc], a
    adc d
    ld b, e
    add b
    sub d
    db $10
    ld bc, $c725
    adc $ed

jr_049_5883:
    jr c, jr_049_5883

    db $10
    jp c, $fd24

    ld h, $f7
    ld l, $bb
    ld c, d
    ld a, e
    adc b
    ld [bc], a
    ld [hl], l
    inc bc
    ld a, $a8
    ld a, $64
    ld b, e
    sbc a
    or h
    inc bc
    adc a
    xor d
    rlca
    add $86
    inc bc
    ld a, [hl-]
    ld b, $40
    nop
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    add a
    ld [bc], a
    jp c, $0063

    rlca
    ld h, c
    ld bc, $0300
    jp $c303


    add [hl]
    adc e
    nop
    call c, $0062
    and b
    ld h, c
    and e
    inc bc
    cp h
    ldh [$30], a
    nop
    rra
    nop
    inc bc
    nop
    rst $38
    nop
    rrca
    nop
    ld a, a
    nop
    ld b, $01
    dec de
    rlca
    ld bc, $2f01
    ld e, a
    ld a, d
    cp a
    cp l
    ld a, a
    ld c, [hl]
    add a
    rst $38
    add c
    ld a, a
    ld b, b
    ccf
    jr nc, jr_049_58f2

    rrca
    pop hl
    ld [$0811], sp
    ld sp, hl
    nop
    dec c
    nop
    ld a, [hl]
    ld [bc], a
    ld b, $02
    rst $38

jr_049_58f2:
    ld bc, $043b
    ld b, e
    ld sp, hl
    ld a, [bc]
    ld a, [de]
    push af
    ld c, $ff
    inc b
    cp e
    ld [hl], l
    cp $f9
    ld a, [$feff]
    ld a, [$fbff]
    rst $28
    rst $30
    ld e, [hl]
    and $de
    xor $f3
    sub d
    db $e3
    inc hl
    add e
    jp nz, Jump_049_4307

    inc b
    rst $38
    nop
    ld a, [bc]
    ld b, h
    rst $38
    ld [de], a
    ld bc, $df24
    add h
    ld bc, $837b
    ld bc, $0510
    rlca
    inc b
    inc bc
    inc bc
    nop
    inc b
    and l
    inc b
    inc e
    dec bc
    ld bc, $070b
    ld c, $04
    inc d
    ld b, $14
    inc bc
    ld a, [bc]
    inc bc
    rlca
    and e
    inc b
    inc [hl]
    add h
    inc bc
    ld a, c
    nop
    ld bc, $02aa
    call nz, $0305
    dec b
    inc c
    inc bc
    db $10
    rlca
    add h
    nop
    ccf
    ld [$801e], sp
    sbc [hl]
    add b
    cp l
    nop
    cp c
    nop
    ld sp, hl
    add e
    ld bc, $0d6b
    add b
    ld a, [hl]
    add c
    dec sp
    ld h, a

jr_049_5964:
    rra
    rra
    call $f9e8
    jr c, jr_049_5964

    ld [$84fd], sp
    ld [bc], a
    pop hl
    inc bc
    ei
    dec b
    rst $30
    dec c
    rst $38
    ld h, l
    ld [bc], a
    ld b, b
    ret nz

    add b
    ld [hl+], a
    and b
    nop
    add b
    ld [hl+], a
    sub b
    inc d
    and b
    adc b
    xor b
    xor b
    or b
    and h
    sub h
    add h
    sub b
    sub d
    adc d
    sub d
    ld [$4989], sp
    ld c, l
    ld b, [hl]
    ld c, h
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, e
    ld b, [hl]
    ld b, e
    ld a, [bc]
    ld b, d
    ld b, d
    ld b, e
    ld b, c
    ld b, e
    ld bc, $0141
    ld hl, $2120
    dec h
    jr nz, @+$07

    jr jr_049_59c3

    rlca
    rrca
    ld bc, $ec03
    ld sp, $47e0
    inc e
    inc e
    ld [hl+], a
    ld a, [hl+]
    nop
    ld c, c
    ld b, e
    ld c, e
    ld b, e
    ld b, a
    ld b, $a6
    add [hl]
    xor [hl]
    adc h
    xor [hl]

jr_049_59c3:
    ld [$489a], sp
    ld e, c
    ld e, b
    ld e, b
    nop
    ld b, h
    ld hl, $0225
    daa
    ld d, h
    ld d, [hl]
    ld c, h
    call z, $ccc9
    dec bc
    ld c, l
    ld c, c
    ld c, a
    add l
    daa
    push hl
    ld h, $43
    sub d
    sub d
    jp nc, $cbe8

    jp hl


    ret


    db $ec
    call z, $9bdb
    db $10
    jr jr_049_5a4d

    pop af
    db $e3
    db $e3
    sub e
    di
    ld e, [hl]
    ld a, [hl]
    ld l, $3e
    inc e
    inc e
    ld bc, $0301
    rlca
    inc hl
    ld b, $0d
    ld c, $0e
    rlca
    rrca
    ld d, $1e
    inc l
    inc a
    ld [$5078], sp
    ld [hl], b
    db $10
    ldh a, [rBGP]
    and b
    ldh [rTAC], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    db $10
    db $10
    ld h, a
    rlca
    jr nz, jr_049_5a7c

    ldh [$e0], a
    or b
    or b
    jr nc, jr_049_5a52

    inc hl
    jr z, jr_049_5a26

    ld c, b

jr_049_5a26:
    ld l, h
    ld [hl+], a
    ld b, h
    ld c, $c4
    ld b, h
    ld b, h
    ld c, l
    ld a, l
    rst $20
    db $e3
    ld b, e
    add d
    jp $e780


    add b
    rst $38
    ld bc, $fe43
    ld [bc], a
    ld [bc], a
    db $fc
    rlca
    db $fc
    ld b, h
    rlca
    ld a, h
    add hl, de
    ld a, [hl]
    inc bc
    ld a, a
    ld [bc], a
    rst $38
    sbc h
    ld a, a
    ld [hl], b
    pop af

jr_049_5a4d:
    ldh [$f0], a
    ldh [$98], a
    sub b

jr_049_5a52:
    inc a
    jr c, jr_049_5a74

    ld a, $11
    ld sp, $6161
    db $e3
    ld [c], a
    jp Jump_049_43c3


    ld b, $07
    ld b, $07
    dec b
    ld b, $04
    ld b, $07
    ld [bc], a
    ld [hl+], a
    inc bc
    ld bc, $0101
    ld a, e
    inc bc
    inc b
    inc c
    inc c
    inc e

jr_049_5a74:
    ld [hl+], a
    ld d, $00
    ld [hl], $22
    ld h, $00
    ld h, [hl]

jr_049_5a7c:
    ld [hl+], a
    ld b, [hl]
    nop
    add $43
    add h
    adc h

jr_049_5a83:
    ldh [$35], a
    adc h
    adc h
    ret nz

    ld b, b
    ldh [$60], a
    sub b
    ldh a, [rNR10]
    jr nc, jr_049_5a98

    jr @+$0a

    add hl, de
    ld [$123a], sp
    ld a, [c]
    inc d

jr_049_5a98:
    db $f4
    jr c, jr_049_5a83

    cp $c7
    di
    ccf
    db $fc
    inc a
    cp $02
    rst $38
    rrca
    ld sp, hl
    rrca
    cp $07
    rst $38
    add hl, bc
    rst $38
    jr nc, @+$01

    ret nz

    rst $38

jr_049_5ab0:
    nop
    sbc a
    nop
    rra
    rlca
    ld a, a
    rst $38
    rra
    rst $38
    rst $38
    ld hl, sp+$43
    rra
    nop
    dec c
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    ld a, a
    jp $30c0


    jr nc, jr_049_5ad9

    rrca
    ld bc, $ec01
    jr z, jr_049_5ab0

    ld d, b
    ld bc, $0602
    ld [$0018], sp
    jr nz, jr_049_5b19

jr_049_5ad9:
    ld b, b
    add b
    add b
    ld bc, $0403
    inc c
    ld h, b
    ld [hl], b
    and b
    ldh [rSVBK], a
    ldh a, [$d8]
    ld sp, hl
    dec c
    ccf
    xor $fe
    add hl, de
    jr jr_049_5b05

    db $10
    push bc
    and $66
    rst $28
    rst $20
    rst $20
    db $e3
    inc hl
    pop af
    ld sp, $78f8
    db $fc
    db $f4
    cp $e2
    rst $38
    rst $00
    rst $38
    rlca
    rst $38

jr_049_5b05:
    rrca
    rst $38
    dec a
    rst $38
    db $fd
    rst $38
    ld sp, hl
    cp $e2
    ld a, [$f206]
    ld a, [bc]
    add $32
    ld a, [hl-]
    jp nz, $0216

    adc d

jr_049_5b19:
    add d
    ld c, [hl]
    ld b, d
    ld d, $32
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    sbc c
    jp hl


    rlca
    ld b, $0e
    jr nc, @+$72

    add b
    sub c
    nop
    ld c, $61
    ld b, $03
    rlca
    jr jr_049_5b6b

    ld b, b
    ret z

    nop
    ld b, e
    inc b
    nop
    ldh [$2e], a
    ld [$1000], sp
    nop
    ld h, b
    inc bc
    add a
    cp h
    db $fc
    ld b, b
    ld b, h
    jr nz, jr_049_5b6c

    sub b
    inc e
    ld d, b
    inc de
    xor b
    ld [$8948], sp
    db $e4
    add h
    sub h
    call nz, $e2ca
    db $76
    ld h, d
    dec sp
    ld sp, $191d
    adc d
    adc b
    ld b, l
    ld b, h
    inc sp
    ld [hl-], a
    add hl, de
    jr @+$0e

    inc c
    ld c, $1e
    dec e
    dec e
    ld [hl+], a

jr_049_5b6b:
    inc e

jr_049_5b6c:
    ld b, e
    inc a
    jr c, @+$03

    jr c, jr_049_5bca

    ld b, e
    ld a, b
    ld d, b
    ld [$5070], sp
    ld [hl], b
    jr nc, jr_049_5bab

    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld [hl], e
    dec bc
    ldh a, [$f8]
    inc b
    ld b, $00
    dec e
    ld bc, $01e1
    rrca
    ld h, c
    pop af
    ld [hl+], a
    ld bc, $070e
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld [hl+], a
    inc b
    ld b, h
    ld [$3088], sp
    or b
    ret nz

    ret nz

    ld b, b
    ld b, b
    daa
    jr nz, jr_049_5ba2

jr_049_5ba2:
    ld b, b
    or b
    ld bc, $2337
    add b
    inc b
    ld b, b
    ld b, b

jr_049_5bab:
    ret nz

    ld b, b
    and b
    ld [hl+], a
    jr nz, @+$0b

    db $10
    db $10
    sub b
    sub b
    ld c, b
    ld c, b
    jr z, jr_049_5be1

    jr jr_049_5bd3

    xor a
    and e
    dec bc
    ld [bc], a
    ld [bc], a
    nop
    ld b, $18
    add hl, sp
    ld bc, $0981
    add hl, de
    inc bc
    add e

jr_049_5bca:
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld b, $04
    ld b, $8a
    sbc e
    dec c

jr_049_5bd3:
    inc bc
    ld [bc], a
    add d
    add l
    add [hl]
    inc b
    ld b, a
    ld b, l
    ld b, a
    add e
    ld h, $e2
    ld [hl+], a
    ld b, d

jr_049_5be1:
    add [hl]
    nop
    sbc l
    inc bc
    add sp, -$38
    ret c

    sbc b
    add a
    nop
    xor b
    inc de
    ldh a, [$f0]
    jr z, jr_049_5c59

    db $e4
    db $e4
    db $f4
    db $f4
    sub b
    sub b
    ld [de], a
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld [$1008], sp
    ld [de], a
    db $10
    jr c, jr_049_5c25

    db $10
    dec c
    ld c, $1e
    di
    pop hl
    ld hl, $6160
    ld b, b
    ld [hl], e
    ret nz

    rst $38
    add b
    ld a, a
    add c
    add l
    ld bc, $c304
    ld bc, $070c
    cp $03
    rst $30
    adc a
    rst $30
    ld hl, sp+$7f
    ld h, b
    add a
    ld bc, $6918

jr_049_5c25:
    dec b
    ld [bc], a
    ld b, $0e
    ld c, $0b
    dec de
    ld [hl+], a
    inc de
    nop
    inc sp
    ld [hl+], a
    inc hl
    ld a, [bc]
    ld h, e
    ld b, d
    ld b, [hl]
    jp nz, $c6c6

    ld b, [hl]
    ldh [rNR41], a
    pop hl
    ld hl, $0186
    ld [hl], b
    ld a, [bc]
    jr jr_049_5c4c

    jr c, jr_049_5c56

    ldh a, [rNR23]
    ld hl, sp+$7e
    rst $20
    di

jr_049_5c4c:
    cp a
    adc e
    ld bc, $8584
    inc bc
    jr z, jr_049_5c59

    nop
    ld [bc], a

jr_049_5c56:
    inc b
    inc b
    nop

jr_049_5c59:
    ld [$0284], sp
    ld e, d
    inc b
    jr z, jr_049_5c80

    jr nz, jr_049_5c62

jr_049_5c62:
    ld b, b
    add e
    ld [bc], a
    ret nc

    ld bc, $9090
    adc e
    inc bc
    ld b, $03
    inc b
    inc b
    ld h, b
    ld h, b
    add h
    ld bc, $04ec
    ld hl, sp+$0d
    ccf
    ld l, $3e
    adc c
    ld bc, $04f6
    nop
    ret nz

jr_049_5c80:
    ld h, b
    ld [hl], b
    ld [$b9c3], sp
    inc d
    ld b, $85
    sub h
    nop
    jr z, @+$12

    inc d
    ld [$840a], sp
    add h
    ld b, b
    ld h, d
    ld de, $0830
    ld [$0c0c], sp
    db $10
    ld [de], a
    jp $f902


    ld bc, $4848
    inc hl
    inc b
    and e
    db $db
    inc bc
    ld [$120c], sp
    db $10
    and l
    inc bc
    ld c, $09
    jr nz, @+$22

    sub b
    db $10
    ld d, b
    db $10
    xor b
    ld [$8848], sp
    xor d
    ld [bc], a
    push hl
    jp $3701


    nop
    ld [bc], a
    add a
    inc bc
    jr nc, jr_049_5cc4

jr_049_5cc4:
    add a
    add [hl]
    inc bc
    add hl, sp
    db $10
    inc c
    inc c
    jr nc, jr_049_5d3f

    ld [c], a
    ld [$faf2], a
    sub b
    sbc c
    ld de, $2939
    dec l
    add hl, hl
    dec hl
    ld de, $5126
    ld bc, $5f0e
    add l
    inc bc
    ld l, d
    rla
    inc bc
    rlca
    ld [$100a], sp
    ld de, $2200
    jr nz, jr_049_5d51

    ld b, b
    ld h, b

jr_049_5cef:
    nop
    xor b
    add b
    sub c
    db $10
    ld de, $2100
    jr nz, jr_049_5d1a

    nop
    ld b, c
    and e
    inc bc
    ld e, $03
    nop
    add b
    add b
    sub b
    ld b, e
    ld bc, $1311
    ld [bc], a
    ld [bc], a
    inc b
    ld h, $08
    ld c, d
    ld [hl], b
    ld [hl], e
    and b
    db $e4
    ld [hl], c
    ld sp, hl
    sbc $fe
    dec c
    dec a
    ld l, [hl]
    ld a, [hl]
    sbc c

jr_049_5d1a:
    sbc b
    adc b
    inc b
    ld [$03a4], sp
    db $d3
    inc hl
    ld b, b
    ld bc, $a000
    add hl, hl
    jr nz, jr_049_5d2a

    nop

jr_049_5d2a:
    jr nz, jr_049_5cef

    ld [bc], a
    di
    inc bc
    ld b, b
    ld b, b
    and b
    and b
    rst $00
    ld [bc], a
    rst $10
    ret


    ld [bc], a
    pop af
    add l
    nop
    ld [hl], d
    dec b
    ld b, c
    ld c, c

jr_049_5d3f:
    ld b, c
    ld b, a
    inc bc
    and a
    ld b, e
    add d
    and [hl]
    ld de, $9604
    ld b, b
    ld d, c
    ld b, b
    ld c, b
    nop
    ld c, b
    jr nz, jr_049_5d79

jr_049_5d51:
    ld bc, $5225
    ld d, a
    ld c, d
    adc $cd
    adc $8b
    inc b
    ld h, h
    add l
    nop
    ld [c], a
    ld bc, $f0f0
    jp $fb02


    inc hl
    ld [$1807], sp
    inc e
    inc d
    inc [hl]
    inc d
    call nc, $1414
    add a
    inc bc
    ld l, b
    ld bc, $20e0
    add h
    inc bc
    or d

jr_049_5d79:
    ld [$0819], sp
    ld a, [de]
    ld a, [bc]
    ld a, [hl-]
    inc d
    db $f4
    jr @-$06

    rst $38
    ld l, e

jr_049_5d85:
    ld bc, $0101
    add e
    add e
    inc hl
    ld [bc], a
    add hl, de
    ld bc, $0704
    inc b
    dec b
    inc b
    ld a, [bc]
    ld [$1015], sp
    ld h, e
    ld h, b
    rrca
    ld b, b
    ccf
    jr z, jr_049_5d85

    ldh a, [$8b]
    add b
    ld [hl], a
    ld h, b
    dec de
    jr jr_049_5dad

    rlca
    add [hl]
    and c
    add hl, de
    ld a, [bc]
    rlca
    inc d

jr_049_5dad:
    ld a, [de]
    db $10
    ld de, $7810
    ld [hl], b
    ld a, h
    ld c, b
    inc l
    jr nz, jr_049_5ddc

    jr nz, jr_049_5dd0

    db $10
    add hl, bc
    ld [$1000], sp
    ld [$0408], sp
    inc b
    inc bc
    call nz, $229a
    ld bc, $0343
    ld [bc], a
    inc b
    rlca
    inc b
    rlca
    rlca

jr_049_5dd0:
    inc b
    ld b, e
    inc b
    rlca
    ld bc, $0303
    ld l, l
    inc bc
    ld bc, $0c03

jr_049_5ddc:
    inc e
    and l
    bit 4, l
    dec b
    ld h, b
    nop
    sub b
    ld h, b
    ld hl, sp+$20
    ld b, e
    ld hl, sp+$40
    ldh [rOBP1], a
    ld [hl], h
    add b
    ld hl, sp-$80
    push af
    add b
    cp $80
    db $fd
    add b
    ld a, [hl]
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    ccf
    jr nz, jr_049_5e3c

    inc hl
    sbc l
    sub a
    ld c, b
    ld c, a
    ld e, c
    ld e, a
    ld [hl], d
    ld a, [hl]
    dec sp
    ccf
    ld a, $3e
    cpl
    ccf
    rla
    rra
    inc d
    inc e
    ld [hl], $3e
    add hl, sp
    ccf
    dec sp
    ld a, $1d
    rra
    sbc [hl]
    rra
    ld e, b
    rrca
    xor h
    rlca
    ld d, h
    rlca
    rst $28
    inc bc
    rst $38
    add b
    ld a, a
    db $e3
    dec e
    rst $38
    ld a, [c]
    ld c, $f9
    add a
    dec b
    rst $38
    ld b, l
    rst $38
    ld b, [hl]
    cp $f8
    ld hl, sp+$67
    add hl, bc
    jr nz, jr_049_5e5a

    ld d, b
    ld d, b

jr_049_5e3c:
    ret z

    ret z

    ld [bc], a
    ld c, d
    dec b
    dec b
    and h
    db $ed
    add l
    nop
    ld d, l
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0085
    ld d, e
    nop
    ld bc, $1f61
    dec d
    nop
    xor e
    inc bc
    ld d, h
    inc b
    xor a

jr_049_5e5a:
    inc bc
    ld e, [hl]
    ld [bc], a
    call c, $7f3c
    db $fd
    rst $20
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    or e
    cp [hl]
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    add d
    inc bc
    pop hl
    add c
    push bc
    nop
    add [hl]
    dec d
    sub l
    ld bc, $81eb
    push af
    pop hl
    ld a, $f1
    ccf
    pop hl
    rst $38
    pop af
    rst $28

Call_049_5e84:
    cpl
    jp $8143


    add c
    ld bc, $0001
    ld bc, $8571
    nop
    db $10
    ldh [$2b], a
    inc b
    inc b
    inc c
    inc c
    inc d
    inc d
    ld [hl], d
    ld a, [c]
    sbc [hl]
    sbc [hl]
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    ldh [$e0], a
    ld e, $00
    rst $38
    nop
    or $8f

jr_049_5ea9:
    ld a, $7e
    ld l, d
    ld a, [hl]
    push de
    rst $38
    xor a
    cp a
    rla
    rra

jr_049_5eb3:
    ccf

jr_049_5eb4:
    ccf
    ld b, b
    ld h, e
    ld a, h
    ld b, b
    rst $38
    jr nz, jr_049_5eb3

    jr jr_049_5eb4

    rrca
    ld b, [hl]
    rst $38
    nop
    nop
    ret nz

    inc hl
    add b
    db $10
    jr nz, jr_049_5ea9

    sbc h
    db $fc
    ld l, d
    ld d, [hl]
    sbc l
    db $e3
    ld a, [hl+]
    push de
    inc d
    db $eb
    ld h, b
    rst $38
    ld a, b
    rst $38
    db $fc
    ld [hl+], a
    rst $38
    rrca
    rst $18
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    and c
    rst $38
    ld c, d
    cp $3c
    inc a
    adc a
    db $ed
    ld [$a4a4], sp
    ld e, c
    ld e, b
    ld d, c
    ld d, b
    inc bc
    ld b, c
    ld [bc], a
    and h
    sub b
    inc c
    inc c
    adc h
    or c
    di
    ld e, c
    ld a, c
    add hl, hl
    add hl, hl
    db $10
    rra
    adc a
    adc a
    ld b, b
    ld b, e
    ret nz

    ldh [$0b], a
    ldh [$f0], a
    ldh [$f8], a
    ldh a, [$f8]
    ld a, b
    ret nz

    ret nz

    inc bc
    nop
    rst $28
    add h
    jp hl


    ld bc, $807f
    ld b, a
    rst $38
    nop
    ld b, $7f
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $00a6
    xor $00
    ld b, b
    jr z, @-$3e

    dec c
    ld d, c
    ret nz

    ld [hl], l
    jp nz, $82fd

    ei
    add [hl]
    db $fd
    and l
    ld a, b
    ld l, b
    db $10
    db $10
    xor a
    ld bc, $0544
    add b
    add b
    sbc b
    cp b
    ret z

    ret z

    add e
    nop
    ld l, $18
    rrca
    rrca
    ld [hl], $39
    ld c, h
    ld a, a
    ld a, $f3
    ld a, [hl]
    pop hl
    ld a, h
    jp $c779


    ld [hl-], a
    cp $ce
    call z, $1c1c
    inc bc
    inc bc
    inc d
    nop
    dec a
    and e
    nop
    sbc e
    nop
    ld bc, $dfa3
    inc bc
    rst $38
    rlca
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld bc, $03ff
    ld c, e
    rst $38
    nop
    ldh [$29], a
    cpl
    nop
    ld e, a
    ld [$0e3f], sp
    ld a, e
    rrca
    cp e
    ld b, $5d
    rlca
    cp l
    rla
    ld a, c
    ld e, $e1

jr_049_5f8c:
    ccf
    ldh [$3f], a
    ld sp, hl
    cp a
    db $fd
    rst $38
    ld e, a
    ld a, a
    ld b, a
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_049_5fda

    daa
    ld a, [hl-]
    ld l, $31
    dec e
    inc de
    ld de, $0f1f
    rrca
    ld l, e
    ld de, $c0c0
    and b
    jr nz, jr_049_5f8c

    and b
    ld a, h
    call c, $c242
    add h
    add h
    sbc b
    adc b
    ld a, h
    inc e
    ld l, $02
    ld [hl+], a
    inc c
    dec bc
    inc b
    ld hl, sp+$08
    ldh a, [$90]

jr_049_5fc1:
    jr nc, jr_049_5ff3

    ld [$f008], sp
    db $10
    ldh [$ca], a
    sbc [hl]
    ld bc, $8080
    push bc
    ld [bc], a
    dec c
    and h
    nop
    ld e, e

jr_049_5fd3:
    ld b, $60
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

jr_049_5fda:
    ld b, b
    xor b
    nop

jr_049_5fdd:
    ld d, a
    inc b
    jr nz, jr_049_5fc1

    jr nz, jr_049_5fd3

    sub b
    add d
    xor l
    call nz, $138e
    ld b, b
    ret nz

    jr nc, jr_049_5fdd

jr_049_5fed:
    adc b
    ld a, b
    ld hl, sp+$28
    add sp, $38

jr_049_5ff3:
    jr z, jr_049_5fed

    ldh a, [$f0]
    add e
    inc bc
    db $e4
    add h
    ld h, [hl]
    inc b
    and e
    xor e
    ld bc, $0297
    adc b
    ld bc, $182c
    ldh a, [$ef]
    add hl, hl

jr_049_6009:
    rst $00
    ld b, l
    add e
    add e
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rrca
    rrca
    rra
    add hl, de
    ccf
    add hl, hl
    jr nc, jr_049_6048

    jr nz, jr_049_605a

    add hl, de
    rra
    rlca
    rlca
    adc b
    db $ed
    ld h, h
    ld b, $e0
    sub b
    jr nz, @-$1e

    jr jr_049_6009

    ld [de], a
    ld b, e
    ld hl, sp+$0d
    ld [de], a
    ld a, [$fe9f]
    db $fd
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    add c
    rst $38
    ld [c], a
    ld a, $d2
    ld a, $24
    call c, $fc04
    and h
    ld [bc], a
    sbc h
    add e
    ld bc, $90ff

jr_049_6048:
    ld bc, $063e
    jr nz, jr_049_604d

jr_049_604d:
    ld d, e
    nop
    dec h
    add d
    db $dd
    add h
    ld [bc], a
    dec de
    ld b, e
    inc b
    rlca
    ld [bc], a
    inc c

jr_049_605a:
    dec bc
    dec de
    and h
    inc bc
    add hl, bc
    inc bc
    inc c
    rrca
    inc bc
    inc bc
    add e
    ld bc, $1b70
    xor d
    cp a
    dec d
    rra
    inc de
    rra
    dec de
    rra
    scf
    rra
    ld l, h
    cpl
    xor b
    ld l, a
    ret c

    ld a, a
    db $fc
    ld e, a
    rst $28
    cpl
    ld hl, sp+$10
    rst $30
    rst $08

Call_049_6080:
    sbc a
    add b
    add a
    add b
    ld b, l
    ld [bc], a
    cp $08
    db $f4
    ld c, h
    and h
    call c, $f888
    ld e, b
    ld hl, sp-$20
    jp $e301


    inc bc
    ldh [$b0], a
    ldh [$78], a
    ld b, e
    ldh a, [$f8]
    ld c, $f8
    add hl, de
    ld hl, sp+$51
    ldh a, [$b3]
    or b
    and a
    and b
    rst $08
    ret nz

    sbc a
    adc h
    ld a, l
    ld [hl-], a
    and l
    ld [bc], a
    ld l, b
    ld b, $01
    inc bc
    ld b, $0f
    db $10
    jr jr_049_60c1

    ld b, e
    jr nz, @+$41

    dec b
    jr c, jr_049_60c4

    inc b
    inc bc
    ld [bc], a
    inc bc

jr_049_60c1:
    add h
    nop
    ei

jr_049_60c4:
    ret


    ld bc, $05c1
    ldh [$f0], a
    inc c
    adc h
    ld b, e
    ld b, e
    ld h, c
    rrca
    ld b, b
    nop
    and b
    nop
    ret nz

    nop
    ret z

    nop
    ldh a, [rP1]
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    ld b, l
    ldh a, [$80]
    ld [bc], a
    ld hl, sp-$80
    db $f4
    adc d
    nop
    sub c
    rlca
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, $23
    inc a
    daa
    adc e
    nop
    and h
    adc c
    ld bc, $0500
    cp a
    ccf
    adc $fe
    inc a
    db $fc
    ld h, d
    jr @+$48

    ld h, d
    ld l, d
    ld e, d
    ld d, d
    ld e, c
    ld d, e
    ld b, h
    adc b
    pop bc
    add c
    ldh [$80], a
    ret nc

    add b
    ldh [$80], a
    ldh a, [$80]
    push af
    add b
    ld a, e
    ld b, b
    ld a, l
    ld b, b
    ld b, e
    ccf
    jr nz, @+$08

    rra
    db $10
    rrca
    ld a, [bc]
    rlca
    ld b, $03
    adc $01
    jp nz, $e007

    ldh a, [$8f]
    adc a
    add d
    jp nz, $03e0

    adc c
    sub l
    add e
    inc b
    jr @+$05

    sub b
    ld b, b
    ldh [rLCDC], a
    adc [hl]
    rst $38
    nop
    ld b, b
    xor e
    nop
    ld l, h
    dec b
    jr nz, jr_049_61a6

    db $10
    db $10
    ld [$2209], sp
    dec b
    nop
    rlca
    adc c
    nop
    or $a7
    ld [bc], a
    and [hl]
    add a
    ld bc, $6158
    add hl, bc
    ld h, c
    ld h, c
    and d
    and d
    dec e
    inc a
    add hl, bc
    ld c, b
    inc bc
    ld bc, $0186
    call z, $8e06
    or b
    rst $38
    ld c, a
    ld a, a
    jr nc, @+$41

    add l
    ld bc, $0fda
    ret nc

    sub b
    ld l, b
    ret z

    ld b, h
    call nz, $828e
    cp h
    sbc h
    jr c, @+$0a

    inc e
    inc b
    ld c, $02
    rst $38
    ld l, d
    inc h
    ld bc, $0223
    ld b, $06
    ld b, $0f
    dec bc
    rlca
    add hl, bc
    ld b, $43
    dec b
    ld [bc], a
    nop
    inc bc
    adc $91
    add h
    and [hl]
    rrca
    ld [bc], a
    ld b, $08
    ld [$1013], sp
    rlca
    jr nz, jr_049_61d2

    jr nz, jr_049_61c8

    inc l

jr_049_61a6:
    inc de
    inc de
    inc c
    inc c
    db $ec
    dec hl
    ldh [rSTAT], a
    ld bc, $0003
    inc b
    dec b
    ld b, h
    ld hl, $aba8
    xor b
    inc hl
    ld sp, $3133
    ld h, a
    ld hl, $4186
    rst $00
    ld b, b
    adc a
    ld b, b
    rrca
    nop
    rlca
    inc c

jr_049_61c8:
    rlca
    inc bc
    ld bc, $0700
    nop
    dec e
    inc bc
    ccf
    rlca

jr_049_61d2:
    cp a
    sbc b
    rst $08
    or b
    ld a, a
    ld h, c
    rra
    ld d, $2b
    cpl
    ld c, a
    ld c, b
    rst $00
    ret z

    db $dd
    ld b, h
    ld e, l
    and h
    db $fc
    and h
    ld hl, sp-$68
    ld sp, hl
    ld c, b
    ld hl, sp+$39
    add sp, $69
    add c
    adc c
    ld b, e
    rlca
    dec b
    ldh [$27], a
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    ld [de], a
    inc bc
    ld hl, $2123
    daa
    ld b, b
    ld a, a
    ld e, b
    ld a, a
    ld d, h
    ccf
    ld [hl-], a
    rra

jr_049_6210:
    ld [de], a
    rrca
    add hl, bc
    inc de
    inc e
    jr nz, jr_049_623a

jr_049_6217:
    nop
    ld b, c
    ld b, e
    ld b, e
    inc a
    inc a
    ld h, c
    ld de, $0404
    ld c, $8a
    cp [hl]
    or d
    rst $00
    db $fd
    adc e
    ld sp, hl
    ld h, $e2
    adc $c2
    rra
    rlca
    rst $28
    jr jr_049_6275

    rst $38
    nop
    dec de
    rst $30
    jr c, jr_049_6217

    ret z

    ld a, a

jr_049_623a:
    ld [$30ff], sp
    rst $38
    ldh [$3f], a
    jr nz, jr_049_6281

    ld b, b
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    add b
    cp $01
    db $fd
    inc bc
    call $9ff3
    ld h, b
    ld b, e
    rst $38
    nop
    ldh [$35], a
    ei
    nop
    di
    nop
    inc hl
    pop bc
    pop hl
    pop bc
    or c
    pop hl
    add hl, de
    pop af
    rra
    or $e9
    ld a, [$9271]
    inc de
    db $fc
    cp a
    ldh a, [rBGP]
    ret z

    add hl, sp
    rst $38
    adc d
    ei
    push bc
    rst $38
    cp [hl]

jr_049_6275:
    ld a, a
    ret nz

    ld a, a
    ldh [$bf], a
    ld sp, hl
    ld e, a
    or $2e
    ret c

    jr nc, jr_049_6210

jr_049_6281:
    ld a, h
    inc sp
    rst $38
    call z, $08fc
    ld hl, sp-$3c
    db $e4
    jr c, jr_049_62c4

    ld l, l
    rrca
    jr nc, jr_049_62c0

    ld_long a, $ffcb
    inc e
    di
    dec a
    jp nz, $c37e

    ld a, a
    rst $20
    cp [hl]
    ld a, a
    sbc b
    ld b, [hl]
    rst $38
    nop
    add hl, bc
    ld bc, $01ff
    cp $01
    rst $38
    nop
    ld e, a
    ldh [$ef], a
    ld b, e
    ldh a, [rIE]
    inc c
    add b
    rst $38
    jr nc, @+$81

    ld hl, sp-$11
    ldh a, [$cf]
    nop
    sbc a
    jr jr_049_6317

    ld h, [hl]
    ld b, e
    rst $38
    add c

jr_049_62c0:
    inc bc
    ld l, a
    ld a, [c]
    rst $28

jr_049_62c4:
    inc e
    ld b, h
    rst $38
    ld bc, $0215
    rst $38
    inc c
    rst $38
    ld [hl], b
    sbc a
    ld hl, sp+$2f
    db $fc
    rst $08
    ei
    dec de
    ldh a, [rNR51]
    pop hl
    jp $07c1


    ld bc, $010f
    ccf
    add h
    jp $fc03


    db $e3
    rra
    rra
    or h
    nop
    ld e, h
    and h
    nop
    ld hl, $601b
    ld h, b
    ldh a, [$90]
    ldh a, [rNR10]
    ldh [rNR41], a
    ld hl, sp+$78
    cp b
    ret z

    sbc h
    db $fc
    ld a, [hl]
    ld [c], a
    cp $02
    db $fc
    inc b
    cp $0a
    ld a, [c]
    ld e, $e7
    ccf
    sbc a
    ld a, b
    add l
    ld bc, $1d6c
    cp $03
    db $fc
    rlca
    cp $07
    ld sp, hl
    rrca
    ld hl, sp+$0f

jr_049_6317:
    db $fc
    rlca
    db $fd
    add [hl]
    cp $85
    db $fd
    ld a, $cf
    ld a, a
    rst $18
    ld a, b

jr_049_6323:
    cp a
    ldh [rIE], a
    ret nz

    rst $38

jr_049_6328:
    pop bc
    db $fd
    add e
    ld b, e
    rst $38
    add b
    ld b, [hl]
    rst $38
    nop
    ld de, $f31c
    cp a
    rst $28
    or b
    ld a, a
    ldh [$3f], a
    ldh [$fe], a
    pop af
    ld a, [bc]
    ld c, $16
    ld d, $1a
    ld a, [de]
    ld bc, $28f8
    nop
    ld [hl], b
    ld bc, $c0c0
    ld b, e
    ldh [rNR41], a
    ldh [$28], a
    ret nz

    ld b, b
    add b
    add b
    ldh [$e0], a
    pop hl
    dec h
    ld b, a
    res 0, a
    adc c
    rrca
    add hl, bc
    adc [hl]
    adc h
    adc $c8
    ld a, a
    ldh a, [$f9]
    ld b, b
    ld b, c
    ldh [$e3], a
    ld [hl], b
    push bc
    ld [$35ea], a
    push af
    sbc d
    ld a, [$fdd5]
    adc d
    ld a, [$b93d]
    ld a, [hl]
    db $fc
    and e
    ei
    dec c
    ld bc, $70bf
    xor a
    ld e, a
    call nc, $e4ac
    ld e, h
    add sp, $38
    ld d, b
    or b
    ld [$6822], sp
    ld bc, $5050
    db $f4
    add hl, hl
    rst $28
    ld bc, $6020
    ld b, e
    jr nc, jr_049_6328

    dec d
    jr c, jr_049_6323

    cp b
    adc b
    sbc b
    adc b
    sbc h
    inc b
    cp h
    ld h, h
    inc a
    sub h
    ld a, $16
    dec a
    dec e
    ld [hl], l
    add hl, de
    db $fc
    nop
    cp $02
    ld b, l
    db $fc
    inc b
    dec bc
    ld hl, sp+$08
    ld a, b
    adc b
    or b
    ld d, b
    ld [hl], b
    sub b
    and b
    ld h, b
    ld b, b
    ret nz

    add l
    rst $10
    sub l
    db $dd
    inc de
    inc bc
    inc bc
    nop
    inc b
    ld de, $5b3a
    ld c, d
    ccf
    ld h, $3f
    ld b, b
    ld a, a
    ld b, b
    cpl
    jr c, jr_049_63e4

    add hl, hl
    ld [de], a
    ld d, $ae
    ld bc, $e0c0
    ld [hl-], a
    ld [bc], a
    ld bc, $0702
    inc b
    daa
    daa

jr_049_63e4:
    ld [hl], b
    ld d, h
    ld l, b
    ld e, b
    ld [hl], b
    ld b, b
    ld b, b
    ld h, b
    inc hl
    ld b, b
    ld c, a
    ld b, b
    db $fd
    add e
    ei
    add a
    rst $28
    sub b
    ld e, a
    ld h, e
    ccf
    ld c, a
    dec de
    dec sp
    ld b, $07
    dec c

jr_049_63ff:
    rrca
    rrca
    ld a, [bc]
    inc bc
    inc b
    rrca
    inc c
    rra
    ld a, [hl-]
    ld c, a
    jp nz, $829f

    cp [hl]
    ld h, d
    cp $12
    ld b, e
    db $f4
    inc c
    inc c
    db $fc
    ld [$08fe], sp
    rst $38

jr_049_6419:
    add hl, sp
    rst $08
    ret


    rlca
    dec b
    inc bc
    dec b
    ld [bc], a
    add [hl]
    nop
    cp c
    ld a, [de]
    nop
    ld bc, $0602
    adc c
    adc b
    sub e
    or b
    rst $00
    pop bc
    rrca
    inc bc
    ccf
    ld bc, $403f
    ld [hl], a
    ld a, h
    inc bc
    ld [bc], a
    rst $38
    inc c
    ld a, a
    ldh a, [$1f]
    jr nz, jr_049_63ff

    add e
    ld [bc], a
    dec d
    ld b, $60
    rst $38
    ldh a, [$2f]
    ldh a, [$7f]
    ret nz

    add e
    ld [bc], a
    inc d
    dec b
    cp $01
    ld d, a
    xor c
    xor l
    ld d, e
    add e
    ld bc, $1910
    ld a, [$f201]
    ld b, $60
    ld [$d021], sp
    di
    ldh [$cb], a
    ret nc

    or a
    and b
    ld c, a
    ldh a, [$c6]
    ret


    ld e, [hl]
    sbc $32
    cp $81
    rst $38
    ld b, [hl]
    rst $38
    and e
    ld bc, $0093
    pop bc
    adc h
    ld bc, $c333
    ld [bc], a
    rst $30
    dec d
    ret nc

    ld [hl], b
    sub b
    ldh a, [$2c]
    db $ec
    ld a, [hl]
    ld a, [c]
    cp $82
    db $fc
    inc b
    ld hl, sp+$1c
    pop hl
    ccf
    rst $18
    ld a, [hl]
    rst $38
    ld b, b
    rst $18
    jr nz, jr_049_6419

    ld bc, $0af2
    cp $03
    rst $38
    nop
    db $db
    inc a
    push bc
    jp nz, $311e

    rst $30
    ld b, h
    ld [$11ff], sp
    rst $30
    ld [$11ff], sp
    rst $18
    ld [hl+], a
    rst $18
    ld a, h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ldh [$1f], a
    db $fc
    rla
    rst $38
    ld h, c
    ld bc, $e0e0
    add a
    ld [bc], a
    ld e, d
    rlca
    add b
    add b
    ld b, [hl]
    adc $fd
    ld b, $fe
    dec b
    adc e
    ld [bc], a
    inc b
    add e
    nop
    ld l, [hl]
    inc d
    ld [$2d1d], sp
    dec h
    cpl
    ld a, [hl+]
    rra
    db $10
    rrca
    jr jr_049_6513

    jr c, jr_049_64e1

    inc h
    ld l, $28

jr_049_64e1:
    rla
    inc d
    inc bc
    inc b
    inc bc
    add $00
    inc [hl]
    rra
    inc a
    ld c, h
    ld de, $8231
    jp $2fcc


    rst $28
    dec hl
    or e
    inc d
    ld e, a
    inc c
    cp a
    ld a, [bc]
    ld e, a
    ld a, [bc]
    cp a
    ld [de], a
    ld a, a
    inc de
    db $fd
    inc h
    db $f4
    adc $f6
    ld a, [bc]
    rst $38
    ret


    ccf
    add hl, sp
    ld b, e
    rrca
    add hl, bc
    ld [bc], a
    rlca
    dec b
    rlca
    adc b
    nop

jr_049_6513:
    or a
    add hl, bc
    rst $38
    ld hl, sp-$69
    db $fc
    rra
    ldh a, [$7f]
    ldh [rIE], a
    add b
    add l
    inc bc
    xor d
    inc b
    sbc [hl]
    ld a, [hl]
    rst $20
    ld h, b
    cp a
    ld b, e
    add b
    ld a, a
    db $10
    ld b, b
    ld a, a
    ldh a, [$8f]
    ret z

    sub a
    cp c
    cp a
    cp [hl]
    ld a, a
    pop hl
    rst $38
    ld hl, sp+$6f
    sbc [hl]
    inc sp
    rst $38
    add l
    inc bc
    jp z, Jump_049_7f00

    and e
    inc bc
    ld b, a
    nop
    ld hl, $04a4
    ld [$1108], sp
    rst $38
    ld hl, $c6bf
    rst $38
    jr @+$01

    ldh [$a3], a
    ld bc, $896c
    inc b
    jr jr_049_65c0

    ld bc, $c3c1
    ld b, e
    ldh [rNR50], a
    dec b
    jp nz, $8242

    add d
    db $e3
    ld [c], a
    adc e
    ld [bc], a
    ld h, h
    adc l
    ld [bc], a
    ld c, [hl]
    ld b, e
    ld [hl], b
    db $10
    inc bc
    ld a, b
    ld [$08f8], sp
    adc c
    ld [bc], a
    sub $a3
    ld [bc], a
    add [hl]
    adc e
    ld bc, $ff04
    ld h, a
    ld de, $000c
    inc e
    ld bc, $025d
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    jp $0380


    dec e
    ld [bc], a
    ld a, $01
    add e
    sub c
    inc bc
    ld b, $19
    nop
    ld b, $62
    ld b, h
    ld bc, $0100
    ld bc, $2501
    ld [bc], a
    ld bc, $0301
    inc hl
    ld [bc], a
    rrca
    inc b
    inc b
    nop
    dec b
    nop
    dec bc
    ld de, $1317
    rra
    ld h, $3f
    add hl, hl
    dec sp
    db $10

jr_049_65c0:
    db $10
    db $ec
    ld [hl+], a
    ld a, [de]
    inc b
    nop
    ld c, $00
    ld a, [hl]
    nop
    db $fc
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ldh a, [rIF]
    ld a, [$fc05]
    ld [bc], a
    ret nz

    ccf
    nop
    rst $38
    dec b
    ld a, [$55aa]
    and e
    add c
    ldh [$29], a
    db $f4
    dec bc
    ld hl, sp+$07
    ld a, l
    add d
    jr c, @+$49

    ld a, h
    add e
    ld sp, hl
    ld b, $73
    adc h
    add a
    ld a, b
    rlca
    ld h, b
    inc bc
    nop
    rlca
    ld b, $09
    ld [$1a19], sp
    ld a, e
    call c, $603f
    ccf
    pop af
    ld h, [hl]
    cp $d8
    ld hl, sp-$60
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld [hl], a
    ld [$0303], sp
    inc b
    rlca
    dec c
    dec bc
    ld c, $0a
    inc b
    call $e0e9
    dec hl
    add b
    nop
    ret nz

    nop
    add b
    nop
    add [hl]
    nop
    jr c, jr_049_6626

jr_049_6626:
    ld [hl], d
    nop
    db $f4
    nop
    db $fc
    ld b, b
    cp [hl]

jr_049_662d:
    and b
    ld e, h
    ld b, h
    cp e
    jr @-$17

    ld [hl], h
    adc e
    ld a, d
    add l
    db $f4
    dec bc
    ld a, d
    push af
    rlca
    adc a
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    jr jr_049_662d

    ld a, $c1
    ld b, h
    ld a, a
    ret nz

    ld b, $c1
    ld a, [hl]
    and d
    sbc h
    inc d
    inc c
    inc c
    inc hl
    ld [$1022], sp
    nop
    jr nc, jr_049_669d

    jr nz, @+$3a

Call_049_665c:
    inc c
    jr z, @+$3a

    jr z, jr_049_669d

    inc h
    inc e
    inc d
    rra
    ld [de], a
    rrca
    add hl, bc
    rlca
    inc b
    ld b, e
    ld [bc], a
    inc bc
    rrca
    ld a, [de]
    dec de
    db $e4
    rst $38
    ld b, b
    rst $38
    sbc c
    rst $38
    sbc h
    rst $38
    db $fc
    cp a
    rst $28
    xor c
    ld b, [hl]
    ld b, [hl]
    db $ec
    jr nz, jr_049_6682

    ret nz

jr_049_6682:
    nop
    ld b, e
    ldh [rP1], a
    ld b, h
    ldh a, [rP1]
    inc c
    ret nz

    ldh [rNR10], a
    jr nc, jr_049_6693

    inc c
    jp nz, $e102

jr_049_6693:
    ld bc, $00f1
    ld hl, sp+$44
    add b
    db $fc
    ld b, e
    ld a, h
    nop

jr_049_669d:
    nop
    jr c, jr_049_6710

    ld [bc], a
    ld bc, $0700
    add e
    ld bc, $150f
    add b
    rst $38
    ld h, c
    ld e, a
    sbc $8b
    adc a
    adc c
    adc a
    sub d
    sbc [hl]
    ld de, $a81f
    cp a
    cp l
    xor a
    dec [hl]
    scf
    ld b, $06
    ld bc, $d2a5
    ld [bc], a
    ld [$102f], sp
    ld b, e
    ld a, a
    nop
    ld b, e
    rst $38
    nop
    ld b, e
    ld a, a
    add b
    ldh [$2d], a
    rst $38
    nop
    ld a, e
    inc b
    scf
    ld c, b
    dec sp
    ld b, h
    dec [hl]
    ld c, d
    dec sp
    ld b, h
    ld a, l
    ld [bc], a
    ld a, [de]
    dec h
    dec e
    ld [hl+], a
    dec de
    inc h
    dec e
    ld [hl+], a
    ld e, $21
    dec e
    ld [hl+], a
    ld a, [hl-]
    dec b
    dec a
    ld b, d
    ld a, [hl-]
    ld b, l
    or l
    jp z, $8778

    db $f4

jr_049_66f4:
    ld a, [bc]
    ld a, b
    dec b
    ldh a, [$0e]
    ld h, b
    jr jr_049_6704

    jr z, jr_049_6720

    ld [$0905], sp
    adc b
    dec bc
    ld c, b

jr_049_6704:
    rlca
    sbc h
    ld b, h
    rlca
    ld a, h
    ld b, e
    db $fc
    daa
    ld b, e
    ld hl, sp+$4f
    ld a, [bc]

jr_049_6710:
    db $fc
    sub e
    rst $38
    jr nz, jr_049_66f4

    ret nz

    sbc a
    add b
    rrca
    nop
    rlca
    call nz, $be00
    add l
    nop

jr_049_6720:
    cp d
    inc de
    add c
    nop
    ret nz

    ld bc, $07c0
    call c, $be23
    ld b, c
    ld [hl], l
    adc d
    xor d
    ld d, l

jr_049_6730:
    ld [hl], h
    adc e
    add sp, $17
    ret nc

    cpl
    add e
    add e
    dec bc
    xor b
    ld d, a

jr_049_673b:
    push de
    ld a, [hl+]
    ld [$d415], a
    dec hl
    and b
    ld e, a
    ld b, b
    cp a
    add e
    nop
    ld a, d
    inc de
    and b
    ld e, a
    ld d, b
    xor [hl]
    and b
    ld e, a
    ld b, b
    cp [hl]
    add b
    ld a, a
    ld b, b
    cp h
    add b
    ld [hl], h
    ld b, b
    cp d
    add b
    ld d, h
    nop
    xor b
    xor [hl]
    ld bc, $0499
    di
    jr nz, jr_049_673b

    ld d, c
    xor [hl]
    add e
    nop
    adc h
    inc c
    ccf
    ret nz

    add hl, sp
    ret nz

    jr nc, jr_049_6730

    ld [hl], b
    add b
    ret nz

    nop
    pop hl
    nop
    pop hl
    rst $08
    ld bc, $0574
    add b
    jr nz, @-$3e

    add b
    ld a, b
    nop
    add e
    ld bc, $058c
    ld hl, sp+$00
    ldh a, [rNR23]
    and $00
    and l
    nop
    ld c, $00
    ld hl, sp-$3b
    ld bc, $887a
    add a
    ld [$00c0], sp
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    ld a, d
    add e
    di
    ld c, $e0
    add b
    ld [hl], b
    ld b, b
    cp h
    and b
    ld e, [hl]
    ret nz

    inc a
    ldh [rNR34], a
    ldh [rNR32], a
    db $e4
    ld a, [de]
    ld b, e
    cp $00
    nop
    sbc h
    adc [hl]
    ld bc, $a397
    ret z

    ld [$000f], sp
    rla
    nop

jr_049_67c1:
    ld a, [bc]
    ld bc, $0017
    ccf
    ld h, c
    inc d
    add b
    and h
    ld b, b
    ld [$04f0], sp
    ldh a, [rLCDC]
    cp b
    add b
    ld [hl], h
    ld d, b
    xor [hl]
    and d
    ld e, l
    push de
    ld a, [hl+]
    xor e
    ld d, h
    or $08
    adc c
    nop
    add [hl]
    inc d
    ld bc, $0a00
    nop
    ld d, $01
    dec l
    ld [bc], a
    ld e, $01
    ld e, l
    ld [bc], a
    ld a, [hl]
    ld bc, $00ff
    adc e
    add b
    dec b
    nop
    inc bc
    adc d
    ld [bc], a
    dec h
    dec bc
    ld b, $29
    sbc l
    ld b, d
    ld a, [$f405]
    dec bc
    add sp, $17
    ld [hl], b
    adc a
    add e
    ld [bc], a
    ld b, h
    ld [$7d80], sp
    ld b, b
    cp [hl]
    add b
    ld a, h
    ld b, b
    or b
    add b
    add [hl]
    ld [bc], a
    call $26e0
    ld bc, $0600
    ld bc, $0708
    ld d, b
    rrca
    jr nz, jr_049_67c1

    ld d, b
    rrca
    xor b
    rla
    ld d, c
    xor [hl]
    and d
    ld e, l
    ld d, a
    xor b
    ld l, $d0
    inc d
    add sp, $0e
    ldh a, [$15]
    add sp, -$12
    db $10
    cp $00
    db $fd
    nop
    ld [$d400], a
    nop
    and b
    ld l, c
    inc b
    and b
    nop
    ret nc

    nop
    ldh [$84], a
    add e
    inc b
    ldh a, [rP1]
    ld hl, sp+$18
    db $e4
    add e
    ld [bc], a
    cp [hl]
    ld b, $20
    ret nc

    ld d, b
    xor b
    xor b
    ld d, b
    nop
    ld b, e
    db $fc
    nop
    ld [bc], a
    xor b
    nop
    ld d, b
    add [hl]
    and c
    nop
    ret nz

    and e
    inc bc
    rrca
    ld bc, $8000
    adc a
    ld [bc], a
    call z, $efa3
    inc bc
    jr @-$1e

    inc c
    ldh a, [$83]
    pop hl
    ld c, $8e
    ld [hl], b
    ld d, [hl]
    xor b
    xor [hl]
    ld d, b
    ld e, [hl]
    and b
    cp d
    nop
    ld d, h
    nop
    jr z, jr_049_6885

jr_049_6885:
    inc d
    ld h, h
    add e
    nop
    ld [hl+], a
    rra
    ld a, $01
    dec c
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld a, [bc]
    ld a, [de]
    dec b
    rrca
    db $10
    ccf
    nop
    ld e, $21
    ccf
    nop
    ld a, [hl]
    ld bc, $403f
    ccf
    nop
    rra
    jr nz, jr_049_68b5

    db $10
    dec bc
    inc c
    inc b
    rlca
    dec h
    ld [$041d], sp
    inc c

jr_049_68b0:
    add hl, bc
    dec bc
    ld [$1009], sp

jr_049_68b5:
    inc de
    ld bc, $0317
    cpl
    ld b, l
    ld e, l
    ld c, c
    ld a, c
    sub c
    pop af
    and c
    pop hl
    ld b, c
    ld b, c
    ret nc

    ld l, $82
    ld a, l
    ld a, c
    add [hl]
    db $f4
    dec bc
    push bc
    inc bc
    ccf
    dec d
    and c
    ld e, [hl]
    ld b, [hl]
    cp c
    adc a
    ld [hl], b
    rlca
    ld hl, sp-$7f

jr_049_68d9:
    ld a, [hl]
    ld b, c
    cp a
    cp b
    ld b, a
    rst $20
    jr jr_049_68b0

jr_049_68e1:
    jr nc, jr_049_6902

    ldh [$1f], a
    add b
    and h
    inc bc
    cp e
    inc c
    ld hl, $6967
    rst $28
    ld [hl], c
    cp $82
    db $fc
    call nz, $f8e8
    ret nc

    ldh a, [rSCX]
    and b
    ldh [rSB], a
    ld b, b
    ret nz

    add h
    nop
    cp b
    ld [de], a
    xor b

jr_049_6902:
    add b
    ld [hl], b
    nop
    ldh [rP1], a
    ret c

    nop
    ldh a, [rLCDC]
    and b
    nop
    db $fc
    inc b
    ei
    jr c, jr_049_68d9

    db $f4
    dec bc
    add e
    inc bc
    ld h, h
    dec b
    ld [$1ef5], a
    rra
    add c
    ld bc, $0184
    ld c, $03
    nop
    rst $38
    inc a
    jp $ff44


    nop
    inc bc
    add c
    ld a, [hl]
    ld h, d
    inc e
    ld h, c
    ldh [rNR43], a
    ld e, d
    jr nz, jr_049_68e1

    ld d, b
    ld d, $e8
    dec c
    ldh a, [rNR21]
    add sp, -$53
    ld d, b
    ld e, b
    and b
    or b
    ld b, b
    inc d
    add sp, $0d
    ld a, [c]
    ld l, $d1
    ld e, d
    and c
    and a
    ld d, b
    ld h, d
    add c
    sub c
    nop
    jr z, jr_049_6951

jr_049_6951:
    sub h
    nop
    jr z, @-$32

    nop
    add sp, -$79
    nop
    ld b, d
    add hl, bc
    dec h
    dec a
    add hl, hl
    add hl, sp
    db $10
    db $10
    ccf
    pop af
    db $76
    cp $89
    inc b
    add d
    ld bc, $8080
    add e
    nop
    and b
    dec bc
    rlca
    nop
    ld bc, $0702
    ld [bc], a
    rrca
    ld [bc], a
    ld l, a
    call c, $603f
    rst $38
    ld h, [hl]
    ld b, $18
    ld d, $16
    dec bc
    add hl, bc
    dec bc
    ld [$0543], sp
    inc b
    inc hl
    ld [bc], a
    dec h
    ld bc, $390b
    ld sp, hl
    cp a
    add a
    ld e, a
    ld b, b
    ccf
    jr nc, jr_049_69a5

    ld [$0607], sp
    inc hl
    ld bc, $0607
    rrca
    rrca
    ld [$0703], sp
    ld bc, $6603

jr_049_69a5:
    inc e
    ld bc, $0200
    ld bc, $0103
    ld bc, $0302
    inc b
    rlca
    add hl, bc
    rrca
    inc de
    rra
    inc b
    inc l
    ld [$5058], sp
    ld [hl], b
    and c
    pop hl
    jp nz, $02c2

    ld [bc], a
    inc bc
    inc bc
    ld h, c
    ld [hl+], a
    ld bc, $0100
    ld a, b
    inc e
    ld [$0e08], sp
    dec c
    dec c
    adc l
    adc l
    rst $08
    ld c, l
    rst $28
    dec l
    rst $38
    dec e
    ei
    dec c
    ei
    adc b
    ld a, e
    ld l, b
    ld a, a
    jr jr_049_6a17

    ld [$90bf], sp
    cp a
    sub c
    ld a, [hl]
    sub d
    ld b, e
    db $fc
    ld b, b
    rra
    ld sp, hl
    ld b, b
    ld a, [$dde0]
    db $10
    rst $38
    dec a
    ld [hl], d
    sbc [hl]
    ld [c], a
    xor a
    ld h, c
    rst $28
    jr nz, jr_049_6a3a

    ld b, a
    ld e, a
    ld c, b
    rst $38
    sub a
    rst $38
    ccf
    ld hl, sp+$3f
    ldh [$7f], a
    jp $8fff


    db $fc
    ld a, [hl]
    and l
    db $db
    ld [de], a
    jr nc, jr_049_6a40

    ret z

    ret z

    ld d, h
    ld e, h
    or [hl]
    cp $d3

jr_049_6a17:
    rst $38
    add sp, -$01
    nop
    ld a, a
    ld a, c
    ld a, a
    add h
    add a
    ld [bc], a
    add e
    nop
    ccf
    nop
    ld [bc], a
    sub e
    ld sp, hl
    add e
    sub a

jr_049_6a2a:
    ldh [$3f], a
    nop
    inc b
    dec b
    inc b
    adc c
    adc c
    sub e
    sub c
    sub $d2
    and $e2
    xor $c2

jr_049_6a3a:
    db $fc
    call nz, $87ff
    ld a, a
    inc c

jr_049_6a40:
    ld a, a
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    rst $38
    jr c, jr_049_6a2a

    ld a, b
    sbc a
    sbc b
    cp a
    or b
    ccf
    ret nz

    rst $38
    ld [$8fff], sp
    rst $38
    inc b
    rst $38
    call nz, $f2bf
    rst $38
    adc h
    rst $38
    ret nz

    rst $18
    ret nz

    call $22e0
    jr nz, jr_049_6a98

    ld [hl], b
    ld a, b
    ld a, b
    ld a, [hl]
    cp $43
    ld a, a
    rst $38
    dec b
    ld e, h
    ld a, [hl]
    sbc b
    ld hl, sp+$20
    ldh [$a3], a
    rst $20
    and l
    nop
    ld e, b
    ld bc, $4040
    or l
    rst $28
    add e
    sbc h
    inc hl
    add c
    add e
    rst $30
    dec d
    inc bc
    ld [bc], a
    dec b
    inc b
    scf
    inc [hl]
    push af
    call nc, $28eb
    rst $08
    ld c, b
    rst $18
    ret nc

    rst $38
    ldh a, [rIE]

jr_049_6a98:
    ld [$30ff], sp
    rst $38
    ret nz

    ld b, h
    rst $38
    ld b, b
    ld a, [bc]
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [c], a
    rst $38

jr_049_6aab:
    inc e
    ld b, e
    rst $38
    nop
    add hl, de
    rst $28
    db $10
    cp $0f
    ld a, a
    rlca
    cp a
    rra
    ld a, a
    rra
    cp a
    ccf
    ld a, e
    ccf
    ld sp, hl
    sbc a
    ld [hl], e
    di
    ld [hl], $36
    ld c, l
    ld c, a
    ld d, l
    ld e, a
    jr z, @+$31

    ld b, e
    ld [$440f], sp
    dec b
    rlca

Jump_049_6ad0:
    inc b
    dec b
    add hl, bc
    add hl, bc
    ld b, $06
    ld l, a
    dec d

jr_049_6ad8:
    ld b, c
    ld h, c
    and e
    and e
    and a
    and a
    ld l, a
    cpl
    ld a, a
    ccf
    cp $3e
    db $fc
    jr c, jr_049_6ad8

    jr nz, jr_049_6aab

    nop
    push de
    nop
    xor e
    nop
    ld e, e
    rst $38
    nop
    ld b, $fb
    rlca
    ei
    ld bc, $00f5
    cp $83
    adc e
    ldh [$28], a
    ldh a, [$c7]
    ld b, a
    rst $38
    cp [hl]
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $18
    jp nz, $c2ef

    rla
    ld b, e
    cpl
    daa
    ccf
    daa
    cpl
    daa
    dec sp
    dec hl
    add hl, hl
    dec hl
    add hl, de
    add hl, hl
    db $10
    ld de, $0189
    ld d, d
    add hl, bc
    add c
    add c
    add d
    add [hl]
    add hl, de
    sbc b
    daa
    ld h, b
    sbc a
    add b
    and e
    pop bc
    ld bc, $007f
    ld b, h
    rst $38
    ld bc, $0300
    ld b, h
    rst $38
    rlca
    ld [$ff0f], sp
    rra
    cp $1e
    db $fc
    inc a
    rst $38
    ccf
    push bc
    rst $10
    and h
    db $d3
    ld [bc], a
    ld c, $f0
    ld [hl], b
    inc hl
    rst $38
    ld c, $7f
    ld a, a
    sbc a
    ccf
    db $f4
    ld c, $cf
    inc bc
    di
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    db $fc
    and e
    ld bc, $0479
    nop
    rst $38
    db $10
    cp $0f
    push bc
    or l
    dec b
    cp a
    ld h, b
    rst $18
    jr c, @+$01

    ld e, $43
    rst $38
    sbc a
    inc bc
    db $eb
    db $db
    ld a, b
    ld c, b
    ld b, e
    jr c, @+$2a

    inc c
    db $10
    db $10
    inc bc
    rlca
    add hl, bc
    add hl, bc
    ld d, $32
    ld c, b
    ld b, [hl]
    cp h
    add h
    ld a, b
    ld b, e
    ld [$02f0], sp
    db $10
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    ld a, [bc]
    add b
    add b
    inc e
    ld a, $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$a3], a
    nop
    ld sp, $0185
    ld b, a
    add hl, bc
    add b
    cp [hl]
    ld a, a
    ld d, c
    ld bc, $06ae
    ld a, b
    jr c, @-$3e

    and h
    nop
    inc sp
    inc b
    add b
    ret nz

    ldh a, [$f8]
    ret nz

    and [hl]
    nop
    inc sp
    inc bc
    ret nz

    ret nz

    ldh [rNR41], a
    add l
    adc e
    ld a, [bc]
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    call c, $f8e4
    ld hl, sp-$20
    ld [hl+], a
    ldh a, [$c3]
    ld bc, $0339
    ldh a, [$90]
    ld [hl], b
    ld [hl], b
    ld l, e
    dec bc
    jr jr_049_6bfc

    ld d, $16
    add hl, bc
    dec c
    inc b
    rlca
    ld [bc], a
    dec bc
    dec bc
    add hl, bc
    adc e
    nop
    ld c, $61
    ld bc, $f838
    adc e
    nop
    ld e, $8b
    nop
    ldh [$03], a

jr_049_6bfc:
    inc bc
    ld [bc], a
    inc bc
    inc bc
    adc c
    nop
    db $e4
    sub d
    nop
    ld d, h
    ldh [rNR52], a
    ld [$8c88], sp
    ld c, h
    ld c, [hl]
    ld l, $be
    adc [hl]
    rst $28
    rst $00
    ld [hl], a
    db $e3
    dec sp
    ldh a, [rNR32]
    ld hl, sp+$0f
    cp $07
    db $fd
    rlca
    cp $83
    cp $87
    cp $4b
    rst $38
    ld d, c
    rst $28
    jr nz, @-$1f

    ld b, h
    rst $38
    ld a, c
    rst $38
    adc e
    ld a, a
    ld c, h
    and h
    ld [bc], a
    ld d, b
    ld [de], a
    ld sp, hl
    ld a, a
    db $fd
    rra
    add hl, sp
    rra

jr_049_6c39:
    ld h, c
    rra
    add b
    ld a, a
    ld [$f0ff], sp
    ld a, a
    ld h, b
    rst $38
    jp $0fff


    adc c
    nop
    or [hl]
    adc l
    nop
    sbc $15
    ld b, $06
    add hl, sp
    jr c, jr_049_6c39

    rst $20
    rst $18
    ret nz

    scf
    cpl
    inc d
    sub l
    sub c
    ld sp, hl
    ld c, e
    rst $38
    rrca
    ld hl, sp+$3f
    ldh a, [rIE]
    ret nz

    ld c, b
    rst $38
    nop
    ld [de], a
    adc h
    rst $38
    add d
    ld a, a

jr_049_6c6b:
    ld bc, $001f
    rrca
    nop
    rlca
    nop
    dec bc
    nop
    sub l
    add b
    xor e
    add b
    or a
    add b
    adc l
    ld bc, $084f
    ld b, c
    ld b, c
    cp $fe
    db $e3
    ret nz

    rst $38
    ld bc, $c3ff
    pop hl
    jr jr_049_6c6b

    rst $38
    add a
    rst $38
    ld [de], a
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    ld h, c
    rst $38
    ld e, b
    rst $38
    ld h, $ff
    and c
    rst $38
    ld h, b
    ld c, c
    rst $38
    nop
    nop
    rst $38
    adc [hl]
    ld bc, $08bf
    rst $28
    rst $28
    ccf
    rra
    cp $7e
    db $fc
    ld hl, sp+$71
    add e
    ld bc, $02d7
    add b
    db $eb
    add b
    ld c, [hl]
    rst $38
    nop
    inc b
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    adc l
    ld bc, $8bf2
    inc bc
    or c
    inc bc
    nop
    ld [bc], a
    ld bc, $ab03
    inc bc
    or h
    dec b
    jr nc, @-$4e

    adc b
    add sp, -$3c
    ld [hl], h
    add a
    inc bc
    ld [hl], d
    dec bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add l
    rst $38
    ld c, e
    cp $53
    rst $28
    ld hl, $0387
    add [hl]
    add hl, bc
    ccf
    jr nz, jr_049_6d10

    db $10
    rra
    add hl, sp
    ccf
    ld a, l
    rst $38
    ld sp, hl
    adc l
    inc bc
    sbc b
    inc bc
    rst $30
    ld [hl], a
    adc [hl]

Jump_049_6cff:
    adc a
    sub b
    inc bc
    xor d
    ld b, $40
    ld b, c
    pop hl
    and $e6
    ld sp, hl
    ld hl, sp-$77
    inc bc
    jp nz, $cb09

jr_049_6d10:
    rst $38
    rst $08
    ld hl, sp-$61
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    adc c
    inc bc
    sub $85
    ld bc, $0120
    ld [c], a
    ldh [$86], a
    ld bc, $8828
    inc b
    ld l, $01
    ld b, b
    ld h, b
    inc hl
    and b
    rlca
    pop hl
    pop hl
    scf
    rla
    xor $6e
    call c, $88d8
    inc b
    ld b, [hl]
    adc e
    nop
    pop hl
    inc b
    ld b, [hl]
    reti


    ret c

    rst $20
    ldh [$8b], a
    ld [bc], a
    ld b, b
    inc bc
    cp $02
    rst $38
    rlca
    add a
    ld [bc], a
    ld h, b
    rlca
    ldh [rSVBK], a
    ldh a, [$f8]
    db $fc
    cp $7f
    ld a, a
    add h
    ld [bc], a
    or b
    adc b
    ld bc, $0645
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ret nz

    add b
    sub h
    ld [bc], a
    push bc
    add l
    sub e
    ld bc, $e0c0
    adc l
    ld [bc], a
    ld [c], a
    rst $38
    ld [hl], a
    ld [de], a
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    dec bc
    add hl, bc
    rla
    ld [de], a
    daa
    inc h
    cpl
    inc h
    ld c, a
    ld c, b
    ld e, a
    ld b, d
    sbc a
    ld b, l
    add e
    cp a
    ld [bc], a
    add c
    cp a
    add c
    ld b, e
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_049_6d98

    rrca
    ld [$0407], sp
    inc bc

jr_049_6d98:
    inc bc
    add a
    xor a
    db $10
    inc bc
    ld [bc], a
    rlca
    inc b
    ld c, $08
    ld b, $08
    inc e
    db $10
    dec e
    ld de, $160f
    inc a
    jr z, @+$3e

    ld b, e
    jr nc, jr_049_6dee

    nop
    jr nz, jr_049_6df6

    rra
    db $10
    adc e
    and a
    push bc
    add d
    dec bc
    rrca
    inc c
    jr jr_049_6dce

jr_049_6dbe:
    jr nc, jr_049_6de0

    ld sp, $7320
    ld d, b
    ld [hl], a
    ld d, b
    ld b, e
    rst $18
    sub b
    ldh [$38], a
    rst $28
    or b
    ld a, a

jr_049_6dce:
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $38
    sub b
    ei
    dec bc
    cp $c7
    db $fc
    rst $20
    db $fc
    db $fd
    cp a
    cp $83

jr_049_6de0:
    rst $38
    nop
    db $e3
    jr jr_049_6dbe

    sbc h
    db $dd
    adc h
    call $e3c0
    pop af
    ld a, a
    rst $38

jr_049_6dee:
    ccf
    rst $38
    adc $ff
    ldh a, [rIE]
    ld a, a
    di

jr_049_6df6:
    ccf
    db $fc
    rst $08
    ld a, a
    ld [hl], a
    ld a, a
    ld l, l
    rst $38
    sbc d
    adc a
    dec b
    rra
    ld [bc], a
    ccf
    ld b, e
    ld [bc], a
    ld a, a
    dec bc
    inc bc
    cp $e6
    ld hl, sp+$18
    db $fc
    inc b
    rst $38
    inc bc
    ld a, a
    ld b, $0e
    ld [hl+], a
    ld [$d000], sp
    ld b, a
    db $10
    rst $38
    inc b
    ret z

    ccf
    inc a
    rlca
    rlca
    ld h, c
    dec b
    ld hl, sp-$08
    cp $06
    rst $38
    ld bc, $ff46
    nop
    nop
    inc b
    ld b, e
    ei
    ld [$f71b], sp
    inc c
    rst $30
    dec e
    rst $38
    add hl, de
    rst $38
    ld [de], a
    rst $38
    add [hl]
    ei
    inc e
    add a
    cp l
    ld c, a
    ld a, [$fc0f]
    rra
    call nc, $e8ff
    rst $38
    ld de, $e3ff
    rst $38
    jp Jump_049_7e43


    rst $20
    add e
    add a
    ld b, $ff
    add c
    rst $38
    jr c, @+$01

    cp $cf
    add [hl]
    cp b
    dec c
    add b
    rst $38
    ldh [$7f], a
    pop af
    ccf
    rst $38
    sbc a
    rst $38
    ld c, [hl]
    rst $30
    ld b, b
    di
    ldh [rSCX], a
    inc sp
    jr nz, @+$0c

    ld h, a
    ld b, b
    rst $20
    and b
    cp a
    jr nz, jr_049_6e96

    db $10
    ccf
    ld [$87ff], sp
    db $dd
    inc b
    inc bc
    db $fc
    inc c
    ldh a, [$f0]
    xor e
    nop
    ld b, d
    rrca
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    or c
    rst $38
    jr @+$01

    ld c, $ff

jr_049_6e96:
    rlca
    add h
    and a
    add hl, bc
    add d
    rst $38
    ld b, $ff
    rrca
    ei
    ccf
    pop af
    rst $38
    ret nz

    and h
    nop
    sbc e
    nop
    jr c, @-$59

    nop
    and c
    nop
    rst $38
    and e
    nop
    xor b
    rrca
    cp $0f
    ld sp, hl
    rst $38
    jp $0fff


    cp $1f
    ld hl, sp+$3f
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    and h
    ld hl, sp+$00
    ld bc, $ff48
    ld [bc], a
    ld b, e
    inc b
    rst $38
    nop
    rrca
    and h
    nop
    ld h, d
    inc b
    ldh [$c0], a
    ld b, b
    add b
    add b
    ld a, c
    add e
    db $fd
    ld de, $30f0
    db $fc
    inc c
    cp $c2
    ld sp, hl

jr_049_6ee2:
    ld h, c
    ld hl, sp+$10
    db $fc
    ld [$04fe], sp
    rst $38
    add d
    rst $38
    and d
    ld b, [hl]
    rst $38
    pop hl
    ld [bc], a
    ret nz

    rst $38
    ret nz

    and h
    ld bc, $026c
    ld h, b
    rst $38
    ldh [$86], a
    adc c
    nop
    ld bc, $00a3
    ld [hl], $12
    ld hl, sp+$18
    ldh [$60], a
    ldh [$e0], a
    sbc b
    jr jr_049_6ee2

jr_049_6f0c:
    ld d, $f9
    add hl, bc
    db $fc
    ld [$08fe], sp
    rst $38
    db $10
    rst $38

jr_049_6f16:
    and l
    ld bc, $a341
    ld bc, $024b
    add hl, bc
    rlca
    ld b, $b7
    rst $28
    ld bc, $0303
    inc hl
    inc b
    and e
    ld bc, $01b6
    ld bc, $8701
    ei
    ld [bc], a
    ld b, b
    ld b, b
    ld h, b
    ld b, h
    jr nz, jr_049_6f16

    ld b, a
    ldh a, [rNR10]
    jr @-$0d

    ld de, $12f3
    and $24
    db $ec
    jr z, jr_049_6f0c

    ld c, c
    rst $10
    ld d, [hl]
    sbc c
    sub b
    inc de
    db $10
    inc sp
    inc hl
    dec a
    inc h
    add hl, sp
    jr z, @+$3e

    jr z, @+$20

    ld b, h
    db $10
    rra
    dec bc
    adc a
    adc b
    rst $08
    ld c, e
    ld h, a
    inc h
    sbc [hl]
    ld c, $d1
    ld de, $10f3
    ld b, h
    rst $38
    jr nz, jr_049_6f67

jr_049_6f67:
    ld b, b
    add h
    ld bc, $02fe
    pop bc
    ld a, $3e
    sbc c
    ld bc, $00be
    ld h, b
    add e
    db $db
    inc e
    ld [hl], b
    sbc b
    adc b
    ret c

    adc b
    ld hl, sp-$78
    ld a, h
    ld e, h
    ld l, h
    ld h, h
    ld l, h
    ld b, h
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, d
    ld l, [hl]
    ld b, [hl]
    ld a, [hl]
    ld b, d
    sbc $82
    db $fc
    db $e4
    cp h
    inc d
    ld a, h
    inc c
    and h
    nop
    ld h, b
    ld [bc], a
    sub b
    ldh a, [$50]
    ld b, h
    ldh [rNR41], a
    ld [bc], a
    and b
    ldh [$60], a
    ld b, e
    ldh a, [rNR10]
    rrca
    ld [hl], b
    db $10
    ld a, b
    ld [$0838], sp
    db $fc
    call nz, $343c
    inc a
    inc c
    inc a
    inc b
    ld a, h
    inc b
    ld b, e
    db $fc
    add h
    ld b, e
    ld hl, sp+$48
    inc bc
    ldh a, [$50]
    ldh [$a0], a
    and a
    nop
    ld l, b
    add h
    ld bc, $139c
    ld [bc], a
    rst $38
    ld b, $fb
    ld a, [de]
    db $e3
    ld h, e
    db $e3
    ld [c], a
    sbc c
    add hl, de
    pop af
    ld de, $16f7
    ld hl, sp+$18
    di
    db $10
    rst $28
    ld b, e
    jr nz, @+$01

    ld [bc], a
    ld d, c
    cp $4a
    jp $05b1


    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp-$38
    add h

jr_049_6fed:
    ld bc, $0d60
    dec c
    rst $38
    jr nc, @-$04

    ret nz

    ld [hl], l
    ld b, b
    ld e, $1c
    jp z, $f10a

    ld de, $8cff
    ld [bc], a
    adc l
    ld bc, $1e1e
    ld l, l
    dec e
    ld h, b
    ld h, b
    sub b
    sub b
    adc b
    adc b
    cp h
    add h

Jump_049_700e:
    call c, Call_049_5e84
    ld e, d
    ld l, $26
    ld l, [hl]
    ld b, d
    ld e, [hl]
    ld b, d
    db $fc
    or h
    call c, $bccc
    inc b
    ld a, b
    ld [$88f8], sp
    ldh a, [$50]
    and a
    nop
    ld h, [hl]
    add e
    ld [bc], a
    or h
    ld bc, $10b0
    and e
    ld [bc], a
    ld a, h
    nop
    db $fc
    adc h
    ld [bc], a
    ei
    add a
    ld bc, $0bb8

jr_049_7039:
    add b
    add b
    call c, Call_049_665c
    ld h, d
    ld l, [hl]
    ld [hl+], a
    db $fc
    inc h
    ld hl, sp+$28
    ld b, l
    ldh a, [rNR10]
    dec c
    ld hl, sp+$18
    db $f4
    inc d
    di
    inc de
    db $f4
    inc h
    cp $28
    rst $18
    ld e, b
    rst $00
    ld b, [hl]
    add e
    and c
    ld b, $70
    ld [hl], b
    sbc a
    rrca
    and $00
    ld hl, sp+$43
    db $10
    rst $38
    nop
    jr nz, jr_049_6fed

    or l
    inc c
    nop
    ld b, b
    ld b, b
    jr nz, jr_049_708e

    or b
    jr nc, jr_049_7039

    ld c, b
    db $e4
    add h
    db $f4
    add h
    ld b, e

jr_049_7077:
    ld a, d
    ld b, d
    rla
    ccf
    ld hl, $3d3f
    ccf
    inc hl
    ld a, a
    ld b, c
    ld e, a
    ld b, c
    xor a
    add c
    rst $18
    sbc c
    cp a
    dec b
    ld e, a
    inc bc
    cp a
    add d

jr_049_708e:
    cp $42
    cp $44
    add h
    rst $10
    inc b
    jr nc, jr_049_7077

    ld h, b
    ret nz

jr_049_7099:
    ret nz

    ld l, a
    dec c
    jr c, jr_049_70d6

    ld h, [hl]
    ld b, [hl]
    ret


    add c
    cp $88
    rst $38
    ld e, b
    ld h, a
    ld h, h
    ld h, e
    ld [hl+], a
    ld b, e
    pop hl
    ld hl, $f04b
    db $10
    ld b, e
    pop hl
    ld hl, $c107
    ld b, c
    jp nz, $8342

    add e
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    ld b, [hl]
    add a
    ld [bc], a
    ld c, b
    add e
    inc bc
    ret nc

    ld b, $60
    ld h, b
    sbc a
    rra
    call nz, $fa00
    add h
    inc bc
    db $db
    and [hl]
    nop
    jr @+$08

    ret nc

    ret nc

jr_049_70d6:
    db $10
    add sp, $08
    add sp, -$78
    ld b, h
    db $fc
    add h
    inc c
    cp b
    db $fc
    call nz, $84bc
    cp h
    inc b
    ld a, h
    nop
    ld a, b
    ld [$f0f8], sp
    ld b, l
    ld hl, sp+$08
    ld bc, $38fc
    push bc
    inc b
    db $10
    ld bc, $82be
    ld b, e
    ld e, a
    ld b, c
    dec bc
    cp a
    or c
    ccf
    dec c
    ld a, a
    ld [bc], a
    cp $80
    cp $82
    cp $42
    ld b, e
    db $fc
    ld b, h
    inc bc
    ld hl, sp+$48
    ldh a, [$b0]
    add a
    inc b
    jr jr_049_7099

    nop
    sub b
    inc bc
    cp $fd
    cp [hl]
    rst $38
    add l
    nop
    sbc d
    adc [hl]
    nop
    ldh a, [rNR14]
    ld e, $a3
    cp l
    ld b, a
    db $dd
    rlca
    cp d
    rrca
    ld e, d
    rrca
    db $f4
    ld l, a
    ld h, l
    rst $38
    sbc e
    rst $38
    db $e3
    sbc h
    db $dd
    adc h
    call z, $008b
    and h
    add h
    sbc a
    ld c, $da
    rrca
    cp d
    rrca
    or h
    cpl
    dec h
    cp a
    sbc e
    ld e, a
    ld b, e
    ld e, [hl]
    ld b, a
    ld l, [hl]
    rst $00
    adc e
    ld bc, $8614
    sbc a
    nop
    jp c, $9f83

    rlca
    sbc a
    sbc e
    xor a
    add e
    db $76
    ld b, a
    ld a, [hl]
    ld b, a
    adc e
    sbc a
    rst $38
    db $ec
    dec hl
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ld c, $2b
    dec sp
    ld e, h
    ld b, h
    ld a, l
    ld b, b
    ld a, a
    ld b, h
    dec sp
    inc a
    rrca
    ld [$0407], sp
    inc bc
    jp nz, $ec92

    ld c, a
    ldh [$37], a
    inc bc
    inc bc
    ld b, $05
    dec c
    ld a, [bc]
    dec bc
    dec c
    ld d, h
    db $db
    ld [hl], b
    ccf
    ret nc

    ccf
    add hl, sp
    rst $08
    cp $ce
    db $fc
    inc b
    db $d3
    inc a
    xor a
    ld h, d
    ld a, a
    and d
    ld a, a
    and a
    db $fd
    sbc l
    ld a, d
    ei
    adc d
    ei
    add h
    rst $38
    ld b, h
    ld a, a
    ld c, d
    ld a, l
    dec l
    ld a, [hl-]
    ld a, [de]
    dec e
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld b, $05
    dec b
    ld b, $02
    inc bc
    add l
    nop
    ld b, b
    ldh [$4e], a
    inc bc
    inc bc
    add hl, bc
    inc c
    db $10
    db $10
    jr c, jr_049_71e4

    ccf
    jr nz, @+$21

    ld de, $0e0e
    ld b, $06
    ld bc, $0909
    ld [$080b], sp
    inc bc
    add hl, bc
    inc bc
    ld [de], a
    nop
    stop
    db $10
    jr nz, @+$22

    ld b, b
    ld b, b
    add b
    add b
    add c
    add b
    add b
    add c

jr_049_71e4:
    db $10
    jp nz, Jump_049_5240

    nop
    ld d, d
    jr nz, jr_049_720d

    ldh [$e0], a
    ld h, c
    and b
    or c
    ld h, h
    ld e, a
    or b
    rrca
    rst $38
    add c
    rst $38
    add a
    cp $99
    ld hl, sp-$03
    ld [c], a
    inc de
    inc e
    ccf
    nop
    ei
    rlca
    rst $38
    rrca
    pop af
    ccf
    pop bc
    rst $38
    ld bc, $ff44

jr_049_720d:
    nop
    add hl, bc
    inc bc
    rst $38
    inc b
    db $fc
    adc b
    ld a, b
    ld c, b
    cp b
    sub b
    ld [hl], b
    and e
    db $ed
    dec de
    ld d, b
    or b
    cp b

jr_049_721f:
    ld d, b
    ld e, a
    cp b
    sub a
    ld a, h
    jr nc, @+$01

    ld h, b
    rst $38

jr_049_7228:
    add c
    rst $38
    di
    rrca
    rst $38
    inc b
    rlca
    jr c, jr_049_7255

    ld b, a
    rst $20
    ld b, a
    db $fc
    call nz, $3838
    ld h, c
    dec bc
    add b
    add c
    jp nz, $3e42

    cp $fe
    add d
    ei
    inc b
    ld [hl], a
    ld [$3f43], sp
    nop
    ld de, $007f
    rst $38
    nop
    ei
    inc b
    ld a, e
    inc e
    ld h, e
    jr nz, jr_049_7228

jr_049_7255:
    ld [hl], b
    ld d, e
    db $f4
    rst $10
    cp b
    cp a
    ret nz

    ld b, e
    rst $38
    nop
    ldh [rNR42], a
    db $fd
    rst $08
    pop af
    ccf
    db $f4
    rst $38
    cp l
    add $df
    ld h, d
    call z, $cc70
    jr nc, @-$30

    ldh a, [$2f]
    ldh a, [$d7]
    ld hl, sp+$51
    ld a, a
    cpl
    ld a, $33
    jr nz, jr_049_721f

    and b
    db $e3
    ret nz

    and a
    ld b, b
    ld a, a
    ld de, $3e44
    dec bc
    ld b, h
    rlca
    inc a
    inc de
    ld a, h
    rlca
    db $f4
    rrca

jr_049_728e:
    add sp, $1f
    adc b
    ld a, a
    db $10
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    rst $20
    rst $38
    ld sp, hl
    ld sp, hl
    add c
    add c
    and a
    nop
    ld b, d
    inc bc
    ld h, b
    ldh [$30], a
    db $10
    ld b, e
    ld a, b
    ld [$f045], sp
    db $10
    ld b, e
    ld hl, sp+$08
    ld b, a
    db $fc
    inc b
    ldh [$33], a
    cp $0a
    rst $38
    add hl, bc
    rst $38
    ld de, $18ff
    rst $28
    jr z, jr_049_728e

    ld c, b
    sub a
    sbc c
    pop hl
    rst $38
    ld [hl-], a
    cp $bc
    call z, Call_049_42fe
    db $fd
    ld b, e
    rst $18
    ld hl, $21ff
    ld a, a
    ld hl, $334d
    ld [c], a
    cp $fc
    inc e
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$0c
    cp $0e
    rst $38
    ld [hl], l
    adc a
    db $fc
    dec de
    and $3f
    jp nz, $3d43

    jp $1902


    rst $20
    ld bc, $ff44
    ld [bc], a

jr_049_72f2:
    ld de, $ff04
    add hl, bc
    rst $38
    inc sp
    rst $38
    db $e3
    db $fc
    rst $28
    db $10
    rst $28
    ld de, $10fe
    cp $f0
    rrca
    inc c
    ld hl, sp+$23
    nop
    sub l
    ld [hl+], a
    add b
    call z, $1180
    add b
    add b
    jr nz, jr_049_72f2

    inc e
    db $fc
    rra
    db $e3
    cp $c1
    ccf
    jr nc, @+$0f

    ld c, $07
    inc b
    inc bc
    ld [bc], a
    push bc
    nop
    ld sp, $00a5
    inc l
    ld b, a
    ldh [rNR41], a
    and d
    sub e
    and [hl]
    nop
    ld b, c
    dec c
    ret nz

    ret nz

    ldh a, [$38]
    ld h, h
    add [hl]
    ld [bc], a
    ld b, c
    ld a, a
    ld b, c
    cp $46
    ld hl, sp-$08
    db $ec
    dec [hl]
    db $10
    jr nc, @-$0e

    ld [$8408], sp
    inc b
    call nc, $f80c
    ld [$0cf4], sp

jr_049_734c:
    db $e4
    inc a
    ld e, b
    ret c

    ld b, b
    db $f4
    ld a, [hl+]
    nop
    ld b, c
    add l
    ld bc, $0260
    rst $38
    nop
    dec de
    ld b, h
    inc b
    ccf
    rrca
    ld a, a
    ld [$020d], sp
    ld a, [bc]
    dec b
    dec c
    ld [bc], a
    ld b, $01
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    and l
    ld [bc], a
    adc e
    inc c
    nop
    inc c
    nop
    stop
    jr nz, jr_049_737b

jr_049_737b:
    jr nz, @+$04

    ld de, $0e00
    ld bc, $aea4
    nop
    inc bc
    and h
    nop
    jp c, Jump_049_4805

    or b
    sub b
    ld h, b
    ld d, b
    and b
    and l
    or c
    rla
    ld e, b
    and b
    sbc h
    ld h, b
    ld e, $e1
    ld a, $c1
    ld a, [hl]
    add c
    dec c
    ld [bc], a
    ld bc, HeaderLogo
    jr c, @+$09

    ld b, b
    add b

jr_049_73a5:
    ld b, a
    ld [$00c4], sp
    jr c, @-$77

    rst $18
    inc de
    ld a, e
    inc e

jr_049_73af:
    ld h, e
    jr nc, jr_049_73a5

    ld [hl], b
    ld d, e
    db $f4
    rst $20
    ld hl, sp-$01
    nop
    rst $08
    jr nc, @+$79

    ld hl, sp-$1b
    rst $38
    sbc c
    rst $38
    add e
    ld bc, $e07c
    jr z, jr_049_73da

    jr nz, jr_049_734c

    jr nz, jr_049_73ee

    ret nz

    add a
    ld h, b
    ld l, [hl]
    ld de, $0b34
    inc d
    dec bc
    jr c, jr_049_73dd

    jr jr_049_73df

    jr c, jr_049_73e1

jr_049_73da:
    ld a, b
    rlca
    or h

jr_049_73dd:
    dec bc
    ld l, b

jr_049_73df:
    rla
    adc b

jr_049_73e1:
    ld [hl], a
    db $10
    rst $28
    ld h, b
    sbc a
    ld b, b
    cp a
    daa
    ret c

jr_049_73ea:
    ld a, b
    add c
    nop
    add c

jr_049_73ee:
    nop
    add [hl]
    ld [bc], a
    rst $20
    dec c
    ldh [rNR23], a
    ldh a, [$0c]
    ldh a, [$0e]
    add d
    ld a, l
    inc bc
    db $fc
    add hl, de
    and $3d
    jp nz, $3c43

    jp $1803


    rst $20
    nop
    rst $38
    ld b, e
    ld [bc], a
    db $fd
    inc c
    inc b
    ei
    add hl, bc
    or $32
    call $1ce3
    ldh a, [rP1]
    db $e3
    nop
    ldh [$61], a
    nop
    ldh a, [$c5]
    inc bc
    ld [hl], $45
    ret nz

    jr nz, jr_049_7426

    ld b, b
    add b

jr_049_7426:
    ld b, b
    add a
    ld [bc], a
    and $0b
    ret nz

    nop
    jr c, jr_049_73af

    ld b, $42
    ld bc, HeaderGlobalChecksum
    ld a, b
    ld b, $00
    add e
    ld [bc], a
    sbc l
    ld a, [bc]
    ld [bc], a
    db $10
    dec hl
    nop
    ld b, h
    nop
    ld b, b
    nop
    ld b, h
    inc b
    jr c, jr_049_73ea

    inc bc
    ld [hl], $85
    inc bc
    cpl
    ldh [$2f], a
    ld b, $01
    dec c
    ld [bc], a
    dec bc
    inc b
    sub h
    ld c, e
    db $10
    cpl
    jr nc, jr_049_7469

jr_049_745a:
    ret


    ld b, $0a
    call nz, $0004
    inc l
    db $10
    ld b, b
    ld [hl+], a
    add b
    ld [hl+], a
    add c
    ld h, $05

jr_049_7469:
    sbc b
    ld a, d
    add c
    adc d
    ld [hl], c
    add h
    ld a, e
    ld b, h
    dec sp
    ld c, d
    dec [hl]
    dec l
    ld [de], a
    ld [de], a
    dec c
    jr jr_049_745a

    ld [c], a
    nop
    inc c
    db $10
    and e
    rst $20
    rla
    inc c
    inc bc
    ld sp, $c10e
    ld a, $47
    jr nz, jr_049_74fa

    nop
    jr nc, jr_049_748d

jr_049_748d:
    ldh a, [rP1]
    db $10
    ret nz

    add sp, $00
    ld l, [hl]
    ld bc, $1e21
    or c
    ld b, d
    ld b, e
    ret nz

    ld hl, $401a
    ld hl, $0073
    inc e
    ld [c], a
    ldh [rNR32], a
    ldh [rNR10], a
    nop
    add b
    ret nz

    jr nz, @-$1e

    inc e
    ldh [$03], a
    ld bc, $00c0
    jr nc, jr_049_74b6

    inc c
    nop

jr_049_74b6:
    inc b
    nop
    ld b, h
    ld [bc], a
    ld bc, $0001

jr_049_74bd:
    ld bc, $03c5
    ei
    nop
    ret nz

    and l
    rst $38
    and h
    inc bc
    dec [hl]
    inc c
    ld [$0004], sp
    ld [$0408], sp
    jr jr_049_74f5

    add b
    ld e, b
    add b
    ld b, b
    nop
    adc c
    ld [bc], a
    rst $20
    ld [bc], a
    ld b, $08
    ld bc, $00a3
    db $ec
    inc bc
    ld [$1001], sp
    ld [bc], a
    ld b, e
    stop
    and e
    pop bc
    dec de
    nop
    add b
    nop
    add b
    ld bc, $c280
    nop
    ld [de], a
    ld b, b

jr_049_74f5:
    ld d, d
    nop
    ld hl, $e000

jr_049_74fa:
    nop
    jr nz, jr_049_74bd

    and h
    ld b, b
    ld d, b
    and b
    rrca
    ldh a, [$80]
    ld a, a
    add a
    ld a, b
    ld h, c
    rlca
    ld bc, $0080
    ld b, d
    ret nz

    ld a, $00
    add d
    jp nz, Jump_049_6ad0

    rlca
    inc b
    jr jr_049_7528

    jr nz, jr_049_751a

jr_049_751a:
    ld [hl], b
    and h
    ld d, b
    jp $c103


    ld de, $0030
    adc b
    ld [hl], b
    ld a, [de]
    push hl
    ld h, [hl]

jr_049_7528:
    sbc c
    inc bc
    db $fc
    dec sp
    call nz, Call_049_6080
    nop
    stop
    ld [$83a3], sp
    xor b
    add l
    ld b, a
    inc b
    nop
    inc d
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld de, $1800
    nop
    jr z, jr_049_7545

jr_049_7545:
    ld c, b
    ld [$de91], sp
    ld hl, $f20c
    jr nc, jr_049_751a

    cp h
    ld b, d
    rst $38
    ld l, e
    inc e
    ld [bc], a
    ld b, $05
    dec b
    ld [de], a
    inc sp
    dec l
    dec l
    inc de
    rra
    ld [$040f], sp
    rlca
    ld e, $7f
    ld b, b
    ld e, a
    inc a
    ccf
    ld [bc], a
    inc bc
    inc c
    rra
    db $10
    rla
    inc c
    rrca
    inc bc
    ld b, e
    inc bc
    nop
    inc b
    dec b
    nop
    dec b
    ld bc, $4307
    ld bc, $430b
    ld [bc], a
    ld c, $44
    inc b
    inc d
    nop
    inc e
    ld b, e
    ld [$4328], sp
    db $10
    jr nc, jr_049_75ce

    jr nz, jr_049_75ed

    db $ec
    cpl
    dec bc
    db $10
    jr nc, jr_049_75bc

    add hl, hl
    xor e
    cp d
    ld l, a
    db $fc
    rrca
    ld hl, sp-$71
    ldh a, [rSCX]
    rrca
    ld hl, sp+$01
    rra
    ld hl, sp+$43
    cpl
    jp hl


    ld de, $e96f
    ld a, [hl]
    ld a, [c]
    cp $c2
    ld a, h
    adc h
    ld [hl], b
    ldh a, [$a0]
    ldh [$a1], a
    pop hl
    ld b, c
    pop bc
    add c
    add c
    ld b, e
    inc bc
    ld [bc], a
    ld b, h

jr_049_75bc:
    rlca
    inc b
    ld [bc], a
    dec b
    rrca
    add hl, bc
    ld b, e
    rrca
    ld a, [bc]
    dec c
    ld a, [bc]
    ld a, [bc]
    rra
    ld [de], a
    dec d
    dec d
    rra
    dec d

jr_049_75ce:
    dec l
    add hl, hl
    dec sp
    dec hl
    ld c, d
    ld c, d
    inc hl
    ld d, h
    inc b
    xor b
    xor b
    or b
    or b
    ldh [$9e], a
    rst $38
    dec b
    inc e
    inc e
    ld a, a
    ld h, e
    rst $38
    add b
    ld b, h
    rst $38
    nop
    inc b
    jr c, @-$37

    ld b, h
    add e

jr_049_75ed:
    add d
    inc hl
    add c
    dec e
    inc bc
    ld bc, $0505
    dec de
    ld a, [bc]
    inc hl
    ld [hl+], a
    ld b, e
    ld [bc], a
    ld c, a
    ld b, d
    cp a
    adc l
    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld hl, $4afe
    db $fc
    ld d, h
    db $fc
    and h
    ld hl, sp-$58
    ld b, e
    ld hl, sp+$48
    dec bc
    pop af
    ld d, c
    sub c
    sub c
    ld [c], a
    and e
    and d
    and d
    ld b, c
    ld b, c
    add b
    add b
    db $ec
    ld sp, $8001
    add b
    and e
    nop
    and [hl]
    dec c
    ld hl, sp+$18
    rst $38
    rlca
    rst $38
    nop
    cp $00
    db $fd
    add b
    cp $40
    db $fd
    nop
    ld b, h
    rst $38
    ld bc, $000e
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    set 7, a
    xor [hl]
    rst $38
    ret c

    ccf
    jr nz, jr_049_7667

    jr jr_049_766c

    rlca
    ld [de], a
    inc b
    inc bc
    inc bc
    ld a, [hl-]
    dec sp
    call nz, Call_049_4bff
    rst $38
    ld a, [bc]
    xor $ad
    rst $28
    cp l
    cp l
    xor c
    xor c
    ld b, [hl]
    ld b, [hl]
    db $ec
    add hl, sp
    rlca
    inc bc
    inc bc
    call nz, $b7c4

jr_049_7667:
    dec [hl]
    ld c, a
    dec c
    push bc
    add [hl]

jr_049_766c:
    ldh [rNR42], a
    add b
    nop
    ret nz

    add b
    ldh a, [$c0]
    ld hl, sp-$50
    db $fc
    adc b
    cp $0c
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    inc h
    rst $18
    ld d, h
    adc a
    adc h
    adc e
    adc [hl]
    add a
    add [hl]
    rlca
    ld b, $1f
    ld e, $2b
    ld a, $43
    ld d, e
    ld a, [hl]
    ld [bc], a
    dec hl
    ccf
    dec de
    jp $0201


    nop
    ld bc, $31f4
    ld bc, $e02a
    cpl
    ld a, h
    ld a, h
    add e
    add e
    call nc, $ad84
    ld [$10fa], sp
    db $fd
    ld hl, $c6fe
    dec a
    jr z, jr_049_76d1

    db $10
    rrca
    add hl, bc
    add [hl]

jr_049_76b7:
    ld b, $44
    inc b
    ld h, d
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    dec h
    ld bc, $0195
    inc d
    inc b
    sbc [hl]
    sbc d
    rst $18
    sub e
    rst $38
    ld d, b
    rst $38
    inc h
    rst $38
    inc b
    cp $02
    rst $38

jr_049_76d1:
    ld [bc], a
    add e
    add e
    ld c, $f5
    ld de, $11fb
    xor l
    add hl, bc
    ld e, e
    add hl, bc
    xor l
    add hl, bc
    ld e, c
    add hl, bc
    xor c
    adc c
    ret


    ld [hl+], a
    adc c
    inc hl
    add l
    inc bc
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    inc hl
    ld b, h
    ld bc, $2828
    db $dd
    nop
    ld a, l
    ld c, $80
    add b
    ld h, b
    ld h, b
    jr nz, jr_049_771c

    ret nz

    ld b, b
    and b
    and b
    sub b
    db $10
    ld d, b
    db $10
    ldh [$ce], a
    adc h
    and l
    ld [bc], a
    db $10
    inc hl
    add b
    ld b, e
    ret nz

    ld b, b
    ld b, $40
    ld b, b
    and b
    jr nz, jr_049_7775

    jr nz, jr_049_76b7

    ld [hl+], a
    jr nz, @+$2d

    ld b, b
    sub a

jr_049_771c:
    ld bc, $192a
    ld a, d
    ld a, e
    adc h
    sbc a
    or b
    or a
    ld l, h
    ld l, a
    ld e, e
    ld c, e
    sub b
    sub e
    sub b
    sub l
    and b
    and l
    ld h, c
    ld b, a
    ld b, c
    dec bc
    ld b, c
    ld c, e
    ld d, d
    ld c, [hl]
    ld [hl-], a
    ld a, $85
    nop
    ld a, [hl-]
    ld h, c
    dec c
    inc bc
    ld bc, $040c
    stop
    jr nz, jr_049_7746

jr_049_7746:
    ld d, l
    nop
    jp c, $adf8

    xor c
    adc b
    nop
    sub b
    ld b, $84
    ld l, b
    ld hl, sp-$38
    ld hl, sp-$30
    ldh a, [rSCX]
    ld d, b
    ld [hl], b
    ld b, e
    jr nz, jr_049_77bd

    ld bc, $6040
    inc hl
    ld b, b
    add l
    ld [bc], a
    ret nc

    ld [$60e0], sp
    jr nc, jr_049_777a

    jr jr_049_7774

    inc a
    inc e
    rst $38
    adc b
    nop
    db $ed
    dec d
    rst $38

jr_049_7774:
    ld h, h

jr_049_7775:
    rst $38
    jp c, $85ff

    rst $38

jr_049_777a:
    sbc d
    rst $38
    ld h, c
    rst $38
    and l
    rst $38
    ld c, d
    ccf
    ld [hl-], a
    rrca
    ld a, [bc]
    rlca
    ld b, $03
    ld bc, $02a7
    ret nc

    ld bc, $0302
    xor c
    ld [bc], a
    or $83
    ld bc, $0660
    ld sp, hl

jr_049_7797:
    jr jr_049_7797

    ld b, $fc
    nop
    ld a, [$0184]
    ld l, e
    dec bc
    ld bc, $0600
    nop
    ld [$1300], sp
    nop
    inc d
    db $10
    dec h
    inc b
    ld b, e
    ld l, $22
    ld [$014f], sp
    ld e, a
    ld b, c
    cp a
    add c
    ld e, a
    nop
    cp a
    add e
    rst $10
    ld [bc], a

jr_049_77bd:
    ld sp, $0cff
    ld b, h
    rst $38
    ld [bc], a
    ld [bc], a
    ld bc, $80ff
    ld b, h
    rst $38
    adc b
    ld b, $90
    rst $38
    ld h, c
    rst $38
    ld [bc], a
    rst $38
    nop
    ld b, h
    rst $38
    jr nz, jr_049_77e2

    ld de, $2feb
    push bc
    rst $00
    add l
    add a
    dec b
    rlca
    inc e
    rra
    dec hl

jr_049_77e2:
    ccf
    ld b, e
    ld d, d
    ld a, a
    dec d
    dec hl
    ccf
    ld a, [de]
    ld a, [de]
    inc b
    inc b
    ldh [$c0], a
    inc e
    jr jr_049_77f5

    inc bc
    ld b, b
    nop

jr_049_77f5:
    pop hl
    jr nz, jr_049_7868

    db $10
    db $fc
    inc b

jr_049_77fb:
    ld a, a
    nop
    and e
    ld bc, $1b68
    rst $38
    inc b
    cp $84
    rst $38
    add d
    cp $82
    rst $38
    add d
    db $eb
    ld b, c
    push de
    ld b, c
    jp hl


    ld b, c
    pop hl
    ld hl, $a1e1
    di
    ld [hl], d
    rst $38
    xor l
    cp $d6
    ld hl, sp-$58
    and h
    inc bc
    add [hl]
    nop
    ret nz

    xor e
    ld [bc], a
    db $10
    and l
    inc bc
    sub b
    xor e
    inc bc
    sub h
    ld d, $80
    nop
    ld [hl], b
    ld h, b
    inc l
    ld [$8292], sp
    xor $6a
    db $fc
    inc b
    ld d, [hl]
    ld [bc], a
    ld [$7242], a
    ld [hl+], a
    and d
    jr nz, @+$56

    inc d
    sbc b
    inc h
    ld [$9806], sp
    ld [$90f0], sp
    ld h, b
    ld h, b
    ret nz

    adc b
    xor e
    ld b, e
    ld d, c
    ld [hl], c
    ld b, e
    inc hl
    ld h, d
    rlca
    ld b, a
    ld h, h
    ld b, a
    ld b, h
    ld b, a
    ld b, l
    rrca
    add hl, bc
    add l
    nop
    jr nz, jr_049_7873

    inc a
    cpl
    ld h, e
    ld b, e
    ld h, h
    ld b, a

jr_049_7868:
    ld a, b
    dec l
    ld h, b
    ld b, l
    add hl, hl
    cpl
    ld d, c
    ld e, e
    ld d, c
    ld c, e
    ld [hl-], a

jr_049_7873:
    ld a, $87
    nop
    jr c, jr_049_77fb

    inc bc
    ld b, b
    ld c, $7f
    ld a, [c]
    rst $38
    jp $867f


    ld l, a
    rst $38
    rst $08
    db $fc
    ret c

    ldh a, [$d0]
    ld [hl], b
    ret nc

    adc h
    inc bc
    ld d, e
    adc c
    nop
    ldh a, [rNR11]
    sbc a
    adc l
    pop hl
    ldh [$03], a
    ld bc, $01cd
    di
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    cp [hl]
    rst $38
    ld [$9dff], a
    and e
    inc b
    inc [hl]
    adc [hl]
    ld bc, $0870
    xor a
    rst $38
    reti


    ccf
    ld [hl+], a
    rra
    ld a, [de]
    ld b, $02
    and e
    ld [bc], a
    add sp, $03
    inc a
    inc a
    add $fe
    add a
    ld bc, $04d0
    db $f4
    db $e4
    xor a
    ld c, $41
    and e
    ld [bc], a
    rst $10
    add hl, de
    nop
    stop
    adc b
    nop
    add b
    add b
    add h
    add b
    call nz, $ee80
    nop
    db $dd
    inc b
    cp $00
    rst $38
    inc b
    ld e, a
    inc b
    xor l
    nop
    ld e, d
    ld [$222d], sp
    ld [$1c05], sp
    inc c
    ld a, e
    ccf
    db $fc
    rst $38
    adc e
    inc bc
    db $f4
    dec de
    ld e, $0a
    dec c
    inc b
    add [hl]
    inc b
    ld b, a
    ld [bc], a
    dec hl
    ld bc, $085f
    rst $28
    inc b
    rst $38
    ld b, d
    push af
    ld b, c
    ld [$b420], a
    jr nz, jr_049_795e

    db $10
    sbc h
    inc e
    inc hl
    ld bc, $0283
    cp d
    add a
    ld [bc], a
    ret nz

    add e
    inc bc
    ld h, d
    dec bc
    or b
    db $10
    ld d, b
    db $10
    and b
    and b
    ld b, b
    ld b, b
    jr nz, jr_049_791f

jr_049_791f:
    ld h, b
    jr nz, @-$77

    inc b
    db $76
    adc h
    nop
    add b
    ld a, [bc]
    add sp, $1f
    ld sp, hl
    ccf
    pop de
    ccf
    pop af
    ld a, [hl]
    ld a, [c]
    cp $e2
    add a
    nop
    sbc b
    rst $38
    ld l, e
    ld de, $1c1c
    daa
    ld hl, $444f
    rst $38
    adc b
    rst $38
    add b
    ei
    bit 3, e
    ld e, e
    ld h, $25
    ld b, $05
    ld b, e
    inc c
    dec bc
    ldh [rNR42], a
    rra
    rla
    dec e
    dec d
    rra
    rla
    dec de
    rla
    dec sp
    daa
    ld sp, $302f
    cpl

jr_049_795e:
    inc sp
    cpl
    inc [hl]
    inc l
    ld sp, $3a29
    ld a, [hl+]
    add hl, hl
    add hl, hl
    inc de
    inc de
    rlca
    ld b, $09
    ld a, [bc]
    rlca
    ld b, $01
    ld bc, $2dec
    rrca
    ld bc, $0201
    ld [bc], a
    rrca
    rra
    ld [hl], a
    ld h, b
    rst $00
    add c
    call c, $fa94
    jp c, $0efa

    ld b, [hl]
    rst $38
    nop
    ldh [rNR43], a
    ldh a, [$7f]
    db $fc
    ld a, a
    db $e3
    ld a, a
    add $df
    add h
    sbc a
    adc c
    cp a
    add hl, bc
    cp $1b
    cp $b3
    db $fc
    rst $00
    ld hl, sp+$1f
    ldh [rIE], a
    dec e
    rra
    ld [bc], a
    inc bc
    add c
    add c
    ld b, c
    ld b, c
    ld h, b
    and b
    ldh a, [$30]
    ld b, e
    ret


    ld c, c
    dec bc
    rst $38
    ld [hl], $ff
    add d
    ld a, a
    ld a, b
    ccf
    ld hl, $121e
    inc c
    inc c
    add e
    bit 0, e
    inc bc
    ld [bc], a
    daa
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    call nz, $09da
    ld bc, $0701
    ld b, $09
    ld [$0e0e], sp
    inc bc
    inc bc
    ld h, c
    dec bc
    ret nz

    ret nz

    ld h, a
    daa
    ld sp, hl
    ld a, b
    rst $08
    ret nz

    rst $38
    inc bc
    db $fc
    adc h
    ld b, e
    ld [hl], b
    db $10
    inc bc
    ld a, b
    ld [$08f8], sp
    ld b, l
    db $fc
    inc b
    ld b, e
    cp $22
    dec b
    rst $38
    ld hl, $c1ff
    rst $38
    nop
    ld b, e
    rst $38
    add b
    inc d
    ld a, a
    ret nz

    ld l, a
    ret nz

    ld [hl], a
    ret nz

    xor e
    ldh [$75], a
    ldh [$ab], a
    ldh [rHDMA5], a
    ldh a, [$bb]
    ldh a, [rIE]
    ldh a, [$9f]
    sub b
    jr c, jr_049_7a56

    db $10
    ldh a, [rTMA]
    ldh [$60], a
    and c
    and c
    ld hl, $0021
    ld [hl+], a
    ld b, b
    ld bc, $c0c0
    ld b, h
    ret nz

    ld b, b
    ld [$e000], sp
    jr nz, @+$62

    jr nz, jr_049_7a9b

    db $10
    ldh a, [rNR10]
    add e
    ret


    dec c
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    ret c

    ld h, a
    ld h, c
    cp [hl]
    cp [hl]
    and a

jr_049_7a40:
    nop
    ld l, h
    or l
    nop
    ld b, d
    nop
    ld bc, $9d86
    rlca
    ret nz

    ld b, b
    ldh [rNR41], a
    di
    inc de
    rst $38
    inc c
    and e
    ld sp, hl
    ld c, e
    rst $38

jr_049_7a56:
    nop
    ld de, $6c7f
    sbc a
    sub d
    cp a
    add d
    rst $38
    jp Jump_049_407f


    ccf
    nop
    rst $38
    ldh a, [rIF]
    ld [$0707], sp
    and a
    call $0347
    ld [bc], a
    add hl, bc
    dec hl
    ld bc, $0155
    ld [$fdc0], a
    jr c, jr_049_7a40

    ld b, a
    and l
    nop
    adc $a3
    nop
    ld a, [bc]
    rlca
    ld c, a
    ld b, a
    ld c, a
    ld b, b
    ccf
    jr nc, jr_049_7a97

    ld [$0745], sp
    inc b
    ld b, l
    inc bc
    ld [bc], a
    ldh [rNR51], a
    ld b, e
    ld [bc], a
    ld h, e
    ld [bc], a
    scf
    inc b

jr_049_7a97:
    cp a
    dec b
    rst $38
    add hl, bc

jr_049_7a9b:
    ld a, [hl]
    inc de
    ld a, h
    rla
    inc a
    daa
    ld a, b
    ld c, a
    db $f4
    sbc a
    ld [$f43f], a
    ld a, a
    db $eb
    rst $38
    rst $38
    db $fc
    rst $30
    ldh a, [$e7]
    ld h, b
    rst $30
    jr nc, @-$03

    ld [$24fd], sp
    ld b, e
    cp $12
    inc bc
    rst $38
    ld de, $21ff
    ld b, h
    rst $38
    jr nz, jr_049_7b06

    ld b, b
    rst $38
    ld b, $80
    ld a, a
    ld h, b
    rst $38
    add b
    rst $00
    nop
    ld b, e
    add e
    nop
    nop
    rst $00
    adc c
    ld bc, $8381
    sub l
    ld [$3fee], sp
    jr nz, jr_049_7b28

    ld b, b
    ld c, h
    ld c, h
    inc sp
    inc sp
    ld h, e
    inc c
    ldh [$e0], a
    ld hl, sp+$18
    cp $06
    rst $38
    ld [hl], c
    adc a
    db $fc
    add e
    cp $81
    ld c, d
    rst $38
    add b
    ld [$ff00], sp
    ret nz

    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    inc c
    and h
    adc $a3
    adc l
    inc bc
    rst $20
    db $fc
    rst $18
    inc e

jr_049_7b06:
    ld b, e
    adc a
    nop
    dec c
    adc [hl]
    inc c
    rst $18
    inc bc
    rst $38
    jr @+$81

    inc b
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $01a7
    and d
    ld b, e
    pop hl
    ld hl, $f303
    ld [de], a
    rst $38
    inc e
    ld c, d
    rst $38
    ld [$1010], sp

jr_049_7b28:
    db $fc
    db $10
    ldh [rNR41], a
    db $e3
    ld h, e
    db $fc

jr_049_7b2f:
    inc c
    ld hl, sp+$08
    ret z

    adc b
    ret z

    ret z

    jr nc, @+$32

    xor l
    nop
    ld h, [hl]
    add e
    ld bc, $0974
    ldh a, [$90]
    ld [hl], b
    ret nc

    ld a, b
    ret z

    jr c, jr_049_7b2f

    inc a
    db $e4
    ld b, e
    inc e
    db $f4
    ld bc, $f21e
    ld b, l
    ld c, $fa
    add hl, bc
    rrca
    ld sp, hl
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    ld a, l
    daa
    dec a
    ld b, e
    rla
    dec e
    ld [de], a
    ld c, $08
    ld c, $0a
    adc [hl]
    adc d
    add $46
    ld h, b
    nop
    or b
    db $10
    ld e, b
    ld [$04bc], sp
    call c, $be84
    ld b, e
    add d
    cp $46
    ld [bc], a
    ld a, [$f443]
    inc b
    add hl, bc
    ld hl, sp+$08
    add sp, $08
    ret nc

    db $10
    jr nz, @+$22

    ld b, b
    ld b, b
    sub l
    ld bc, $1156
    ld c, $07
    ld de, $2710
    jr nz, jr_049_7bf2

    nop
    ld a, a
    jr c, jr_049_7c15

    ld a, [hl]
    ld l, $2e
    rla
    rla
    ld b, $05
    add l
    nop
    inc e
    add e
    nop
    jr nc, @+$09

    jr nc, @+$2a

    jr c, jr_049_7bd1

    add hl, hl
    add hl, hl
    ld de, $8311
    nop
    ld [hl], d
    or c
    cp a
    add e
    sub l
    ld [$1f1f], sp
    scf
    inc hl
    xor $ce
    ld a, [$fe26]
    add e
    ld bc, $1889
    ld b, b
    rst $38
    ld hl, sp-$01
    db $fc
    ccf
    rst $38
    rra
    pop af
    ccf
    pop hl
    ld a, a
    jp nz, $84df

jr_049_7bd1:
    cp a
    add h
    ccf
    ld [$097f], sp
    rst $38
    sub e
    db $fc
    rst $20
    add a
    nop
    sbc h
    dec e
    ld bc, $e101
    pop hl
    jr nc, jr_049_7bf5

    jr c, @+$3a

    ret


    ret


    ld c, l
    ld c, l
    ret nz

    ret nz

    ld h, b
    jr nz, @-$5e

    ld h, b
    ret nz

jr_049_7bf2:
    ret nz

    ld hl, sp-$48

jr_049_7bf5:
    ld [hl], a
    ld b, a
    ld a, h
    nop
    ld a, a
    ld [$0fff], sp
    add h
    nop
    or $43
    ld [bc], a
    cp $06
    add d
    rst $38
    ld bc, $11ff
    rst $38
    ld b, b
    and [hl]
    ld bc, $007c
    add b
    add l
    ld bc, $070a
    pop af

jr_049_7c15:
    db $10
    pop hl
    ld h, c
    and c
    and c
    jr nz, jr_049_7c3c

    add a
    ld bc, $8d28
    ld [bc], a
    and d
    ld bc, $c040
    adc h
    ld bc, $0780
    ld a, b
    cp a
    and h
    db $fd
    add [hl]
    rst $38
    add e
    ld a, a
    add h
    ld [bc], a
    ld hl, $1f04
    jr @+$09

    rlca
    nop
    add [hl]
    inc bc

jr_049_7c3c:
    rra
    ld bc, $1111
    add l
    ld bc, $07a4
    ld [bc], a
    dec b
    ld b, $05
    rlca
    rlca
    dec b
    dec c
    ld b, e
    rrca
    dec bc
    ld [bc], a
    dec bc
    rrca
    add hl, bc
    ld b, [hl]
    rla
    jr jr_049_7c9a

    db $10
    rra
    ld b, l
    add hl, bc
    rrca
    ld bc, $0602
    ld h, l
    adc c
    inc bc
    ld d, [hl]
    rlca
    ld bc, $02ff
    rst $38
    dec d
    rst $38
    rst $28
    rst $28
    add a
    inc bc
    adc b
    ld h, l
    adc c
    inc bc
    sub [hl]
    adc b
    inc bc
    ld c, d
    ld b, $07
    adc b
    adc b
    ret


    ld c, b
    ld b, a
    rst $00
    ld [hl+], a
    add b
    inc b
    ld b, b
    db $e3
    inc hl
    ei
    inc e
    ld b, h
    rst $38
    nop
    ld [bc], a
    dec b
    rst $38
    inc bc
    adc c
    inc bc
    jp nc, Jump_049_700e

    ld [hl], b
    db $ec
    inc c
    rst $30
    inc bc
    ld_long a, $ffc0

jr_049_7c9a:
    ldh a, [$7f]
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    ld [hl+], a
    ccf
    add hl, de
    cp a
    cpl
    cp $2f
    rst $38
    ld c, a
    cp $9f
    rst $38
    rra
    ld a, [$f53f]
    ld a, a
    ld [$d4ff], a
    rst $38
    db $eb
    rst $38
    rst $30
    cp $df
    ld hl, sp-$09
    ld [hl], b
    adc c
    ld bc, $83f6
    inc bc
    sub b
    ld [de], a
    cp b
    jr @-$0a

    inc b
    cp $02
    rst $38
    pop bc
    ld a, a
    ldh [$bf], a
    ldh a, [$5f]
    ld hl, sp-$51
    db $fc
    ld d, a
    cp $ab
    call nz, $03d8
    add b
    rst $38
    rst $00
    rst $38
    ld b, e
    ldh [rNR41], a
    nop
    ldh a, [$84]
    ld bc, $1539
    ld hl, sp-$78
    db $fc
    call nz, $e4fc
    ld a, [hl]
    ld [c], a
    ld a, $72
    ld e, $32
    rrca
    add hl, de
    rrca
    add hl, bc
    add a
    adc l
    rst $00
    ld b, l
    ld h, d
    ld b, $87
    nop
    ld [hl], b
    add hl, bc
    ld [hl], c
    ld h, b
    rst $20
    add b
    rst $28
    sbc h
    ei
    rst $00
    rst $38
    nop
    adc l
    nop
    add d
    adc d
    nop
    ldh [rTIMA], a
    inc c
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld hl, sp-$72
    nop
    pop af
    rst $38
    db $ec
    inc l
    ldh [rNR52], a
    ld bc, $0100
    ld bc, $4000
    nop
    jr nz, jr_049_7d29

jr_049_7d29:
    ld [$0010], sp
    ld c, h
    ld de, $0426
    dec de
    ld bc, $440e
    adc e
    sbc d
    ld h, l
    dec h
    ld a, [de]
    jr jr_049_7d42

    add h
    ld h, e
    jr nz, jr_049_7d5e

    ld [$1407], sp

jr_049_7d42:
    dec bc
    ld b, b
    cp a
    ld b, $01
    db $ec
    scf
    inc bc
    inc b
    nop
    add h
    nop
    ld b, e
    inc b
    add d
    ldh [rKEY1], a
    add h
    ld c, d
    adc b
    ld b, [hl]
    ld b, d
    xor h
    and l

jr_049_7d5a:
    ld e, d
    jp nc, $282d

jr_049_7d5e:
    rst $10
    ld [hl], c
    adc a
    ld a, [hl+]
    rst $10
    dec b
    rst $38
    adc e
    ld a, a
    ld b, c
    cp a
    rlca
    rst $38
    ld a, [hl+]
    rst $38
    ld d, $fe
    inc l
    cp $15
    db $fc
    rst $08
    inc a
    inc de
    rrca
    dec bc
    jr @+$30

    ld h, $5b
    ld c, b
    ccf
    ld a, a
    add [hl]
    rlca
    ld b, l
    rrca
    dec bc
    ld l, $0d
    ld e, $44
    adc a
    ld e, d
    dec h
    dec b
    ld a, [de]
    ld [bc], a
    dec c
    and c
    ld b, [hl]
    ld h, $19
    add hl, bc
    ld b, $04
    inc bc
    dec b
    ld b, $06
    rlca
    dec b
    rlca
    ld [bc], a
    rlca
    ld bc, $4307
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld bc, $8701
    nop
    ld d, e
    ld e, $10
    db $10
    jr nz, jr_049_7db0

jr_049_7db0:
    jr nz, jr_049_7dd2

    ld b, b
    and b
    ld b, c
    ld bc, $4fc3
    cp a
    ccf
    rst $38
    ld e, a
    rst $38
    cp l
    cp $f4
    ld hl, sp-$40
    ldh [$c2], a
    add b
    add l
    nop
    rra
    nop
    ld a, a
    nop
    ld c, b
    rst $38
    nop
    ldh [$3f], a
    ldh [$ed], a

jr_049_7dd2:
    ld e, $ff
    rra
    ldh a, [$f0]
    nop
    jr nz, jr_049_7d5a

    and b
    ret nz

    ldh a, [$73]
    rst $18
    sbc a
    ld l, a
    rst $28
    ld e, a
    or a
    ld c, a
    rst $28
    rra
    cp a
    ld e, a
    db $ec
    ccf
    ld e, c
    rst $38
    cp e
    ld a, a
    db $76
    cp $35
    db $fd
    ld a, l
    rst $38
    rst $38
    cp $53
    ld hl, sp-$59
    ldh a, [rVBK]
    ldh [$8f], a
    pop bc
    rra
    ld [bc], a
    cp a
    add h
    scf
    ld a, b
    ld e, a
    ld b, b
    ld c, a
    ld b, b
    ld d, a
    ld b, c
    rrca
    add c
    add a
    add d
    rlca
    ld b, e
    ld [bc], a
    rrca
    ld a, [bc]
    inc b
    sub a
    inc b
    rst $30
    add h
    ld e, a
    ld e, b
    cpl
    jr nz, jr_049_7e7d

    nop
    ld d, b
    rst $38
    nop
    ld b, $01
    rst $18
    ld a, $ef
    db $ec
    rlca
    rlca
    ld h, c
    add hl, bc
    rlca
    rrca
    dec a
    ld a, a
    db $eb
    rst $38
    ld d, a
    db $fd
    xor a
    ld sp, hl
    ld b, h
    cp $fa
    inc b
    cp $fe
    rst $30
    rst $38
    rst $28
    ld [hl+], a
    ld a, a
    inc c
    ld c, a

Jump_049_7e43:
    ld a, a
    inc bc
    rst $38
    ld bc, $00ff
    cp $00
    cp l
    ld b, b
    ld a, [hl]
    add b
    ld b, e
    rst $38
    nop
    nop
    db $fd
    ld b, e
    ld [bc], a
    rst $38
    ld [bc], a
    ld bc, $81ff
    ld d, h
    rst $38
    nop
    ld b, e
    ld bc, $43fe
    ld [bc], a
    db $fc
    ld b, e
    inc b
    ld hl, sp+$11
    ld [$10f0], sp
    ld hl, sp+$38
    or $c6
    rst $38
    dec h
    cp $13
    db $ec
    cp $00
    nop
    nop
    add b
    add b
    or e
    nop
    ld d, e

jr_049_7e7d:
    dec h
    add b
    dec b
    ret nz

    ret nz

    ld b, b
    ld h, b
    jr nz, @-$5e

    ld [hl+], a
    db $10
    add hl, bc
    add b
    ld [$0888], sp
    add b
    inc b
    call nz, $c004
    ld [bc], a
    ld b, e
    add $82
    rlca
    db $ec
    add h
    db $f4
    add h
    ret c

    ld c, b
    ldh a, [rSVBK]
    add $9f
    db $f4
    inc h
    nop
    ld d, e
    nop
    ld [bc], a
    add e
    nop
    dec hl
    dec b
    nop
    jr nz, jr_049_7ec6

    add hl, bc
    ld b, $02
    add e
    nop
    add sp, $02
    ld bc, $0e31
    add e
    nop
    ld d, d
    ld [bc], a
    jr jr_049_7ec5

    ld bc, $00b2
    inc e
    ld e, $02
    add b

jr_049_7ec5:
    ld b, d

jr_049_7ec6:
    nop
    ld bc, $2542
    ld b, d
    ld d, h
    and e
    nop
    sub d
    adc d
    ld d, h
    inc d
    ld l, c
    ld a, [bc]
    scf
    dec l
    dec de
    rra
    rla
    inc e
    ccf
    ld sp, $477c
    ldh [$9f], a
    ret nz

    rst $38
    and e
    ld bc, $04c9
    jr nc, jr_049_7eef

    inc c
    ld bc, $8403
    nop
    db $ed
    and e

jr_049_7eef:
    nop
    adc e
    ld d, $01
    ld b, d
    ld [bc], a
    ld b, d
    add d
    ld c, a
    cp [hl]
    ccf
    rst $38
    nop
    ld b, b
    ld b, l
    add a
    sub e

Jump_049_7f00:
    ld a, a
    rst $38
    rst $38
    add a
    rst $00
    ld c, a
    ld c, a
    db $dd

jr_049_7f08:
    db $e3
    ld c, d
    rst $38
    nop
    ld [bc], a
    jr nc, @+$01

    db $10
    and h
    ld bc, $00c4
    ld b, b
    ld b, e
    ccf
    jr nz, jr_049_7f5e

    rra
    db $10
    add hl, bc
    cpl
    jr nz, jr_049_7f46

    jr nz, jr_049_7f64

    ld b, b
    ld b, e
    ld b, c
    add a
    add c
    add l
    ld bc, $0958
    ld l, a
    inc b
    ld l, a
    ld l, b
    rst $28
    xor b
    rla
    db $10
    cpl
    nop
    adc c
    ld bc, $0666
    ldh [$f0], a
    ret nc

    ldh a, [$80]
    ldh a, [$c0]
    ld [hl+], a
    ldh [rNR43], a
    ldh a, [$09]
    ld hl, sp-$48

jr_049_7f46:
    ld a, b
    db $fc
    inc c
    db $fc
    ld b, $fe
    ld [bc], a
    rst $38
    and h
    ld bc, $00a5
    cp $84
    add e
    ld [bc], a
    db $fd
    nop
    cp $87
    ld bc, $02a7
    ld [bc], a

jr_049_7f5e:
    rst $38
    ld bc, $018c
    ldh a, [$09]

jr_049_7f64:
    ld b, b
    ld b, b
    jr nz, jr_049_7f08

    jr nz, jr_049_7faa

    db $10
    sub b
    db $10
    db $10
    inc hl
    ld [$0443], sp
    add h
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld b, e
    add e
    add c
    add hl, bc
    push bc
    add c
    sub $42
    call nc, $a854
    ld l, b
    ret nz

    ld b, b
    adc d
    ld [bc], a
    ret nz

    rra
    jr c, @+$01

    jr @+$01

    add b
    cp a
    ld e, a
    xor $3f
    ld e, h
    rst $38
    cp l
    ld a, e
    ld a, c
    rst $38
    dec sp
    rst $38
    ld a, a
    cp $ff
    db $fc
    cp $fe
    ld a, [hl]
    rst $30
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    add h

jr_049_7faa:
    ld bc, $a39b
    ld bc, $00fd
    dec b
    ld b, e
    rlca
    inc bc
    ld c, $0f
    rlca
    rrca
    ld b, $0f
    ld c, $0e
    inc c
    ld c, $05
    inc c
    rlca
    inc b
    inc bc
    rlca
    add a
    nop
    cp b
    dec c
    ld b, $07
    dec b
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    nop
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, e
    ld bc, $0103
    inc bc
    inc bc
    call nz, $c4ab
    nop
    rst $18
    ld bc, $0702
    xor d
    inc bc
    jr nc, jr_049_7fec

    inc bc
    rra
    ccf
    rst $38

jr_049_7fec:
    rst $38
    ld h, c
    ld [$c080], sp
    ret nz

    ldh [$67], a
    rst $38
    cp a
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    ld bc, $ffcf
    rst $38
    nop
    nop
