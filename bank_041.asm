; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    ld hl, $4006
    jp Jump_041_4177


    ld de, $cdd9
    ld hl, $d400
    call Call_041_4263
    ld de, $c4a0
    ld hl, $d000
    call Call_041_425f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    call Call_041_419d
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    call Call_041_419d
    ret


    ld hl, $4033
    jp Jump_041_4177


    ld de, $c4a0
    ld hl, $d000
    call Call_041_425f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    call Call_041_419d
    ret


    ld hl, $404d
    jp Jump_041_4177


    ld de, $cdd9
    ld hl, $d400
    call Call_041_4263
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    call Call_041_419d
    ret


    ld hl, $4067
    jp Jump_041_4177


    ld de, $cdd9
    ld hl, $d400
    call Call_041_4263
    ld de, $c4a0
    ld hl, $d000
    call Call_041_425f
    call $045a
    di
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    call Call_041_41ad
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    call Call_041_41ad
    pop af
    ldh [rVBK], a
    ei
    ret


    ld hl, $4061
    ld hl, $40a2
    jp Jump_041_4177


    ld de, $cdd9
    ld hl, $d400
    call Call_041_4263
    ld de, $c4a0
    ld hl, $d000
    call Call_041_425f
    call $045a
    di
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    call Call_041_41c1
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    call Call_041_41c1
    pop af
    ldh [rVBK], a
    ei
    ret


    ld hl, $40da
    jp Jump_041_4177


    ld a, $01
    ldh [rVBK], a
    ld a, $03
    ldh [rSVBK], a
    ld de, $d800
    ldh a, [$d7]
    ldh [rHDMA1], a
    ldh a, [$d6]
    ldh [rHDMA2], a
    ld a, d
    ldh [rHDMA3], a
    ld a, e
    ldh [rHDMA4], a
    ld a, $23
    ldh [$e8], a
    call Call_041_41a4
    ret


    ld hl, $4101
    jp Jump_041_4177


    ld a, $01
    ldh [rVBK], a
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    call Call_041_419d
    ret


    ld hl, $4116
    jp Jump_041_4177


    ld de, $cdd9
    ld hl, $d400
    call Call_041_4263
    ld de, $c4a0
    ld hl, $d000
    call Call_041_425f
    call $045a
    di
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    call Call_041_41b7
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    call Call_041_41b7
    pop af
    ldh [rVBK], a
    ei
    ret


    ld hl, $414e
    jp Jump_041_4177


    ld de, $cdd9
    ld hl, $d400
    call Call_041_4263
    ld c, $ff
    ld de, $c4a0
    ld hl, $d000
    call Call_041_4265
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    call Call_041_41ad
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    call Call_041_41ad
    ret


Jump_041_4177:
    ldh a, [$d4]
    push af
    ldh a, [$de]
    push af
    xor a
    ldh [$d4], a
    ldh [$de], a
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ldh a, [rVBK]
    push af
    call Call_041_419c
    pop af
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    pop af
    ldh [$de], a
    pop af
    ldh [$d4], a
    ret


Call_041_419c:
    jp hl


Call_041_419d:
    call Call_041_424e
    ld a, $23
    ldh [$e8], a

Call_041_41a4:
jr_041_41a4:
    call $045a
    ldh a, [$e8]
    and a
    jr nz, jr_041_41a4

    ret


Call_041_41ad:
    ldh a, [$d7]
    ld d, a
    ldh a, [$d6]
    ld e, a
    ld c, $24
    jr jr_041_4209

Call_041_41b7:
    ldh a, [$d7]
    ld d, a
    ldh a, [$d6]
    ld e, a
    ld c, $24
    jr jr_041_4205

Call_041_41c1:
    ldh a, [$d7]
    ld d, a
    ldh a, [$d6]
    ld e, a
    ld c, $24
    ld a, h
    ldh [rHDMA1], a
    ld a, l
    and $f0
    ldh [rHDMA2], a
    ld a, d
    and $1f
    ldh [rHDMA3], a
    ld a, e
    and $f0
    ldh [rHDMA4], a
    ld a, c
    dec c
    or $80
    ld b, a
    ld a, $7f
    sub c
    ld d, a

jr_041_41e4:
    ldh a, [rLY]
    cp d
    jr nc, jr_041_41e4

jr_041_41e9:
    ldh a, [rSTAT]
    and $03
    jr z, jr_041_41e9

    ld a, b
    ldh [rHDMA5], a
    ldh a, [rLY]
    inc c
    ld hl, $ff44

jr_041_41f8:
    cp [hl]
    jr z, jr_041_41f8

    ld a, [hl]
    dec c
    jr nz, jr_041_41f8

    ld hl, $ff55
    res 7, [hl]
    ret


jr_041_4205:
    ld b, $7b
    jr jr_041_420b

Call_041_4209:
jr_041_4209:
    ld b, $7f

jr_041_420b:
    ld a, h
    ldh [rHDMA1], a
    ld a, l
    and $f0
    ldh [rHDMA2], a
    ld a, d
    and $1f
    ldh [rHDMA3], a
    ld a, e
    and $f0
    ldh [rHDMA4], a
    ld a, c
    dec c
    or $80
    ld e, a
    ld a, b
    sub c
    ld d, a

jr_041_4225:
    ldh a, [rLY]
    cp d
    jr nc, jr_041_4225

    di

jr_041_422b:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_041_422b

jr_041_4231:
    ldh a, [rSTAT]
    and $03
    jr z, jr_041_4231

    ld a, e
    ldh [rHDMA5], a
    ldh a, [rLY]
    inc c
    ld hl, $ff44

jr_041_4240:
    cp [hl]
    jr z, jr_041_4240

    ld a, [hl]
    dec c
    jr nz, jr_041_4240

    ld hl, $ff55
    res 7, [hl]
    ei
    ret


Call_041_424e:
    ld a, h
    ldh [rHDMA1], a
    ld a, l
    ldh [rHDMA2], a
    ldh a, [$d7]
    and $1f
    ldh [rHDMA3], a
    ldh a, [$d6]
    ldh [rHDMA4], a
    ret


Call_041_425f:
    ld c, $7f
    jr jr_041_4265

Call_041_4263:
    ld c, $00

Call_041_4265:
jr_041_4265:
    ldh a, [$af]
    push af
    ld a, c
    ldh [$af], a
    ld c, $12

jr_041_426d:
    ld b, $14

jr_041_426f:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_041_426f

    ldh a, [$af]
    ld b, $0c

jr_041_4279:
    ld [hl+], a
    dec b
    jr nz, jr_041_4279

    dec c
    jr nz, jr_041_426d

    pop af
    ldh [$af], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push bc
    push hl
    ld a, b
    ld l, c
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld de, $d000
    call $0e8d
    pop hl
    pop bc
    push bc
    call $045a
    pop bc
    ld d, h
    ld e, l
    ld hl, $d000
    call Call_041_4209
    pop af
    ldh [rSVBK], a
    ret


jr_041_42b2:
    ld a, c
    cp $10
    jp c, Jump_041_42d6

    jp z, Jump_041_42d6

    push bc
    push hl
    push de
    ld c, $10
    call Call_041_42d6
    pop de
    ld hl, $0080
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld bc, $0100
    add hl, bc
    pop bc
    ld a, c
    sub $10
    ld c, a
    jr jr_041_42b2

Call_041_42d6:
Jump_041_42d6:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push bc
    push hl
    ld a, b
    ld l, c
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    ld h, d
    ld l, e
    ld de, $d000
    call $0def
    pop hl
    pop bc
    push bc
    call $045a
    pop bc
    ld d, h
    ld e, l
    ld hl, $d000
    call Call_041_4209

Jump_041_42ff:
    pop af
    ldh [rSVBK], a
    ret


    ld hl, $4309
    jp Jump_041_4177


    ld hl, $d000
    ld de, $c4a0
    call Call_041_433a
    ld hl, $d080
    ld de, $cdd9
    call Call_041_433a
    ld a, $01
    ldh [rVBK], a
    ld c, $08
    ld hl, $d080
    ld de, $9c00
    call Call_041_4209
    ld a, $00
    ldh [rVBK], a
    ld c, $08
    ld hl, $d000
    ld de, $9c00
    call Call_041_4209
    ret


Call_041_433a:
    ld b, $04

jr_041_433c:
    ld c, $14

jr_041_433e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_041_433e

    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_041_433c

    ret


    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add d
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld c, a
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld a, [c]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld [c], a
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    jp nz, $c2ff

    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld c, h
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    ld b, b
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [hl-], a
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld b, e
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    jp nz, $04fe

    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld c, a
    rst $38
    ld e, c
    rst $38
    ld e, c
    rst $38
    ld e, e
    rst $38
    ld c, a
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld a, [c]
    rst $38
    sbc d
    rst $38
    sbc d
    rst $38
    jp c, $f2ff

    rst $38
    ld b, b
    rst $38
    ld b, l
    rst $38
    ld b, a
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    and d
    rst $38
    ld [c], a
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld c, h
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [hl], d
    rst $38
    jp c, $eaff

    rst $38
    ld a, [$f2ff]
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld b, c
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [c], a
    rst $38
    jp nz, $82ff

    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld b, b
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    jp nz, $82ff

    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld b, [hl]
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    jp nz, $82ff

    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld e, [hl]
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld e, [hl]
    rst $38
    ld b, b
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    xor d
    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld b, b
    rst $38
    ld c, d
    rst $38
    ld b, b
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld a, [c]
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    jp c, $faff

    rst $38
    ld e, a
    rst $38
    ld b, a
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_041_4578

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    jp c, $0aff

    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
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
    rra
    rra
    rlca
    rlca
    ret nz

    ret nz

    ldh a, [$f0]
    inc a
    inc a
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rlca
    dec b
    adc l
    adc e

jr_041_4578:
    db $ed
    db $eb
    sbc $d6
    cp b
    cp b
    ld h, b
    ld h, b
    nop
    jr jr_041_459d

    ld h, [hl]
    inc b
    ld b, d
    dec bc
    add c
    ld d, [hl]
    adc c
    ld a, [de]
    ld l, $4c
    ld [de], a
    jr c, @+$3a

    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld a, [bc]
    ld a, [bc]
    nop

jr_041_459d:
    nop
    jr c, @+$3a

    ld b, b
    db $10
    jr nz, jr_041_45bc

    ld [hl-], a
    inc c
    ld [de], a
    call z, Call_041_641a
    add hl, bc
    ld [hl], $09
    ld d, $04
    dec de
    call $210f
    call $2e50
    call $2e5d
    call $212a

jr_041_45bc:
    call $2e56
    ld a, $05
    call $263b
    ld a, $25
    ld hl, $7df9
    rst $08
    ld a, $03
    call $263b
    call $2cff
    ld [$c2d0], a
    ret


    ld a, [$d151]
    and a
    jp z, Jump_041_4696

    cp $01
    jp z, Jump_041_4665

    cp $02
    jp z, Jump_041_45ed

    cp $03
    jp z, Jump_041_4629

    ret


Jump_041_45ed:
    ld a, [$d1c1]
    ld [$dcb5], a
    ld a, [$d1c2]
    ld [$dcb6], a
    ld a, [$d1ca]
    ld [$dcb8], a
    ld a, [$d1c9]
    ld hl, $dcb7
    add [hl]
    ld [hl], a
    ld c, a
    ld hl, $d1cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl c
    jr z, jr_041_461e

    ld a, [$d1c8]
    add $06
    ld e, a
    ld d, $00

jr_041_461a:
    add hl, de
    dec c
    jr nz, jr_041_461a

jr_041_461e:
    ld a, l
    ld [$d194], a
    ld a, h
    ld [$d195], a
    jp Jump_041_46c4


Jump_041_4629:
    ld a, [$d1cd]
    ld [$dcb5], a
    ld a, [$d1ce]
    ld [$dcb6], a
    ld a, [$d1d6]
    ld [$dcb8], a
    ld a, [$d1d5]
    ld hl, $dcb7
    add [hl]
    ld [hl], a
    ld c, a
    ld hl, $d1d7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl c
    jr z, jr_041_465a

    ld a, [$d1d4]
    add $06
    ld e, a
    ld d, $00

jr_041_4656:
    add hl, de
    dec c
    jr nz, jr_041_4656

jr_041_465a:
    ld a, l
    ld [$d194], a
    ld a, h
    ld [$d195], a
    jp Jump_041_46c4


Jump_041_4665:
    ld a, [$d1a9]
    ld [$dcb5], a
    ld a, [$d1aa]
    ld [$dcb6], a
    ld a, [$d1b1]
    ld [$dcb7], a
    ld a, [$d1b2]
    ld hl, $dcb8
    add [hl]
    ld [hl], a
    ld c, a
    ld hl, $d1b3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    srl c
    add hl, bc
    ld a, l
    ld [$d194], a
    ld a, h
    ld [$d195], a
    jp Jump_041_46c4


Jump_041_4696:
    ld a, [$d1b5]
    ld [$dcb5], a
    ld a, [$d1b6]
    ld [$dcb6], a
    ld a, [$d1bd]
    ld [$dcb7], a
    ld a, [$d1be]
    ld hl, $dcb8
    add [hl]
    ld [hl], a
    ld c, a
    ld hl, $d1bf
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    srl c
    add hl, bc
    ld a, l
    ld [$d194], a
    ld a, h
    ld [$d195], a

Jump_041_46c4:
    scf
    ret


    call Call_041_46df
    call Call_041_4718
    ld a, [$d146]
    ld [$dcb4], a
    ld a, [$d147]
    ld [$dcb5], a
    ld a, [$d148]
    ld [$dcb6], a
    ret


Call_041_46df:
    call $2c8a
    call $22ee
    ret nz

    ld a, [$d147]
    ld b, a
    ld a, [$d148]
    ld c, a
    call $2c99
    call $22f4
    ret nz

    ld a, [$d14a]
    cp $0f
    jr nz, jr_041_4705

    ld a, [$d14b]
    cp $0a
    ret z

    cp $0c
    ret z

jr_041_4705:
    ld a, [$d149]
    ld [$dca9], a
    ld a, [$d14a]
    ld [$dcaa], a
    ld a, [$d14b]
    ld [$dcab], a
    ret


Call_041_4718:
    call $2c8a
    call $22ee
    ret nz

    ld a, [$d147]
    ld b, a
    ld a, [$d148]
    ld c, a
    call $2c99
    call $22f4
    ret nz

    ld a, [$d147]
    ld b, a
    ld a, [$d148]
    ld c, a
    call $2ca7
    ld a, c
    cp $07
    jr z, jr_041_4743

    cp $15
    jr z, jr_041_4743

    ret


jr_041_4743:
    ld a, [$d14a]
    ld [$dcb2], a
    ld a, [$d14b]
    ld [$dcb3], a
    ret


    ld hl, $d0ed
    res 6, [hl]
    ld a, $01
    ld [$c2ce], a
    ld a, $23
    ld hl, $40e5
    rst $08
    ld a, $23
    ld hl, $4001
    rst $08
    call $2173
    call Call_041_4770
    call Call_041_47a3
    ret


Call_041_4770:
    ld a, $98
    ld [$d153], a
    xor a
    ld [$d152], a
    ldh [$d0], a
    ldh [$cf], a
    ld a, $01
    ld hl, $5958
    rst $08
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    xor a
    ld bc, $0400
    ld hl, $9800
    call $3041
    pop af
    ldh [rVBK], a
    ld a, $60
    ld bc, $0400
    ld hl, $9800
    call $3041
    ret


Call_041_47a3:
    ld de, $c4a0
    call Call_041_47b4
    ldh a, [$e6]
    and a
    ret z

    ld de, $cdd9
    ld a, $01
    ldh [rVBK], a

Call_041_47b4:
    ld hl, $9800
    ld c, $14
    ld b, $12

jr_041_47bb:
    push bc

jr_041_47bc:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_041_47bc

    ld bc, $000c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_041_47bb

    ld a, $00
    ldh [rVBK], a
    ret


    call $2d27
    call $2821
    xor a
    ldh [$de], a
    xor a
    ldh [$df], a
    ld a, $05
    ld hl, $4168
    rst $08
    call $0e5f
    ld a, $41
    ld hl, $6594
    rst $08
    ret


    ld b, $09
    jp $3340


    call $300b
    ld a, $2e
    ld hl, $4000
    rst $08
    call $2914
    ld a, $01
    ld hl, $579d
    rst $08
    ld a, $05
    ld hl, $54f7
    rst $08
    ld hl, $d45b
    bit 6, [hl]
    jr nz, jr_041_4817

    ld hl, $d0ed
    set 0, [hl]
    call $2e31

jr_041_4817:
    ld a, [$d45b]
    and $1c
    ld [$d45b], a
    ret


    ld a, [$d151]
    cp $ff
    ret z

    and a
    jr z, jr_041_4837

    cp $01
    jr z, jr_041_4846

    cp $02
    jr z, jr_041_4851

    cp $03
    jr z, jr_041_485c

    and a
    ret


jr_041_4837:
    ld a, [$d4e7]
    sub $04
    ld b, a
    ld a, [$d19e]
    add a
    cp b
    jr z, jr_041_486b

    and a
    ret


jr_041_4846:
    ld a, [$d4e7]
    sub $04
    cp $ff
    jr z, jr_041_486b

    and a
    ret


jr_041_4851:
    ld a, [$d4e6]
    sub $04
    cp $ff
    jr z, jr_041_486b

    and a
    ret


jr_041_485c:
    ld a, [$d4e6]
    sub $04
    ld b, a
    ld a, [$d19f]
    add a
    cp b
    jr z, jr_041_486b

    and a
    ret


jr_041_486b:
    scf
    ret


    ld hl, $c800
    ld a, [$dcb8]
    bit 0, a
    jr nz, jr_041_487d

    srl a
    add $01
    jr jr_041_4881

jr_041_487d:
    add $01
    srl a

jr_041_4881:
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d19f]
    add $06
    ld c, a
    ld b, $00
    ld a, [$dcb7]
    bit 0, a
    jr nz, jr_041_489a

    srl a
    add $01
    jr jr_041_489e

jr_041_489a:
    add $01
    srl a

jr_041_489e:
    call $30fe
    ld a, l
    ld [$d194], a
    ld a, h
    ld [$d195], a
    ld a, [$dcb7]
    and $01
    ld [$d196], a
    ld a, [$dcb8]
    and $01
    ld [$d197], a
    ret


Jump_041_48ba:
    call $0fc8
    call $300b
    call $31f6
    call Call_041_5153
    ld hl, $c543
    ld de, $49cd
    call $1078
    call $31f6
    ld a, $0b
    ld hl, $4642
    rst $08
    call Call_041_50fb
    ld a, $02
    ld [$ca01], a
    ld a, $14
    ld [$ca02], a
    ldh a, [rIE]
    push af
    call Call_041_4a95
    ld d, a
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    push de
    call $0fc8
    call $058a
    call $31f6
    ld b, $08
    call $3340
    call $32f9
    pop de
    ld hl, $c542
    ld a, d
    ld de, $49fd
    cp $10
    jp z, Jump_041_49af

    cp $6c
    jp nz, Jump_041_49b4

    ld a, [$c900]
    cp $03
    jr z, jr_041_492f

    call Call_041_4a25
    ld hl, $4a11
    jp nc, Jump_041_49c5

    call Call_041_4a30
    ld hl, $4a16
    jp c, Jump_041_49c5

jr_041_492f:
    ld a, [$c962]
    and a
    jp nz, Jump_041_49bd

    ld a, [$c912]
    and a
    jp nz, Jump_041_49c2

    ld a, [$c900]
    cp $03
    jr z, jr_041_4963

    call Call_041_4a56
    ld a, [$c900]
    cp $04
    jr z, jr_041_4963

    call Call_041_4a71
    ld a, $41
    ld hl, $619d
    rst $08
    ld a, $41
    ld hl, $60a9
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08

jr_041_4963:
    ld a, [$c90f]
    and a
    jr z, jr_041_4990

    ld a, [$c911]
    ld c, a
    ld a, $0b
    ld hl, $4715
    rst $08
    push bc
    call Call_041_5069
    pop bc
    jr nz, jr_041_4990

    ld hl, $6ef5
    ld a, $09
    rst $08
    ld h, d
    ld l, e
    ld de, $d073
    ld bc, $000d
    call $3026
    ld hl, $4a20
    jr jr_041_49c5

jr_041_4990:
    call Call_041_5106
    ld a, [$c910]
    ld c, a
    ld a, $0b
    ld hl, $4708
    rst $08
    ld a, c
    ld [$abe4], a
    ld [$d265], a
    call $2fe1
    call $3468
    ld hl, $4a1b
    jr jr_041_49c5

Jump_041_49af:
    ld hl, $49fd
    jr jr_041_49c5

Jump_041_49b4:
    ld hl, $4a02
    call $1057
    jp Jump_041_48ba


Jump_041_49bd:
    ld hl, $4a07
    jr jr_041_49c5

Jump_041_49c2:
    ld hl, $4a0c

Jump_041_49c5:
jr_041_49c5:
    call $1057
    ld a, $e3
    ldh [rLCDC], a
    ret


    adc a
    or c
    and h
    or d
    or d
    ld a, a
    add b
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor e
    xor b
    xor l
    xor d
    ld a, a
    adc b
    sub c
    db $e3
    add e
    and h
    or l
    xor b
    and d
    and h
    ld c, [hl]
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    add c
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    and b
    xor l
    and d
    and h
    xor e
    ld a, a
    xor b
    or e
    add sp, $50
    ld d, $36
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $54
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $6a
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $8e
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $a7
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $c6
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $e9
    ld b, h
    ld [hl], b
    ld d, b
    ld d, $fa
    ld b, h
    ld [hl], b
    ld d, b

Call_041_4a25:
    call Call_041_5106
    ld a, [$abe5]
    cp $05
    jp $2fe1


Call_041_4a30:
    call Call_041_5106
    ld a, [$c901]
    ld b, a
    ld a, [$c902]
    ld c, a
    ld a, [$abe5]
    ld d, a
    ld hl, $abe6

jr_041_4a42:
    ld a, d
    and a
    jr z, jr_041_4a53

    ld a, [hl+]
    cp b
    jr nz, jr_041_4a4e

    ld a, [hl]
    cp c
    jr z, jr_041_4a52

jr_041_4a4e:
    inc hl
    dec d
    jr jr_041_4a42

jr_041_4a52:
    scf

jr_041_4a53:
    jp $2fe1


Call_041_4a56:
    call Call_041_5106
    ld hl, $abe5
    ld a, [hl]
    inc [hl]
    ld hl, $abe6
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [$c901]
    ld [hl+], a
    ld a, [$c902]
    ld [hl], a
    jp $2fe1


Call_041_4a71:
    call Call_041_5106
    ld a, $01
    ld [$abfd], a
    ld hl, $c903
    ld de, $abfe
    ld bc, $000b
    call $3026
    ld a, $01
    ld [de], a
    inc de
    ld hl, $c850
    ld bc, $0026
    call $3026
    jp $2fe1


Call_041_4a95:
    di
    ld a, $3a
    ld hl, $4fe9
    rst $08
    call Call_041_4d5e

jr_041_4a9f:
    call Call_041_4d96
    call Call_041_4ddd
    ldh a, [$bc]
    cp $10
    jp z, Jump_041_4bd0

    cp $6c
    jr nz, jr_041_4a9f

    ldh a, [$bb]
    cp $02
    jr z, jr_041_4b22

    ld hl, $ffb3
    ld b, $01
    call Call_041_4d56
    jr nz, jr_041_4ac8

    call Call_041_4b49
    jp nz, Jump_041_4bd0

    jr jr_041_4b0a

jr_041_4ac8:
    ldh a, [rLY]
    cp $90
    jr c, jr_041_4ac8

    ld c, $56
    ld a, $c0
    ld [c], a
    ld b, $f0

jr_041_4ad5:
    push bc
    call Call_041_5038
    ld b, $02
    ld c, $56

jr_041_4add:
    ld a, [c]
    and b
    ld b, a
    ldh a, [rLY]
    cp $90
    jr nc, jr_041_4add

jr_041_4ae6:
    ld a, [c]
    and b
    ld b, a
    ldh a, [rLY]
    cp $90
    jr c, jr_041_4ae6

    ld a, b
    pop bc
    dec b
    jr z, jr_041_4a9f

    or a
    jr nz, jr_041_4a9f

    ldh a, [$c4]
    bit 1, a
    jr z, jr_041_4ad5

    ld a, $10
    ldh [$bc], a
    jp Jump_041_4bd0


Jump_041_4b04:
    call Call_041_4b40
    jp nz, Jump_041_4bd0

jr_041_4b0a:
    call Call_041_4d38
    jp nz, Jump_041_4bd0

    call Call_041_4b88
    jp nz, Jump_041_4bd0

    call Call_041_4d43
    jp nz, Jump_041_4bd0

    call Call_041_5033
    jp Jump_041_4bd0


Jump_041_4b22:
jr_041_4b22:
    call Call_041_4b88
    jp nz, Jump_041_4bd0

    call Call_041_4d43
    jp nz, Jump_041_4bd0

    call Call_041_4b40
    jp nz, Jump_041_4bd0

    call Call_041_4d38
    jp nz, Jump_041_4bd0

    call Call_041_502e
    jp Jump_041_4bd0


Call_041_4b40:
    ld hl, $ffb3
    ld b, $01
    call Call_041_4d56
    ret nz

Call_041_4b49:
    call Call_041_5033
    ldh a, [$bc]
    cp $6c
    ret nz

    ldh a, [$b3]
    cp $96
    jp nz, Jump_041_4d32

    ld a, $90
    ldh [$b3], a
    call Call_041_4d38
    ret nz

    ld hl, $ffb3
    ld b, $01
    call Call_041_4d4e
    ret nz

    call Call_041_502e
    ldh a, [$bc]
    cp $6c
    ret nz

    call Call_041_4d43
    ret nz

    ld hl, $c850
    ld a, [$ca02]
    ld b, a
    call Call_041_4d56
    ret nz

    call Call_041_5033
    ldh a, [$bc]
    cp $6c
    ret


Call_041_4b88:
    ld a, $96
    ldh [$b3], a
    ld hl, $ffb3
    ld b, $01
    call Call_041_4d4e
    ret nz

    call Call_041_502e
    ldh a, [$bc]
    cp $6c
    ret nz

    call Call_041_4d43
    ret nz

    ld hl, $ffb3
    ld b, $01
    call Call_041_4d56
    ret nz

    call Call_041_5033
    ldh a, [$bc]
    cp $6c
    ret nz

    ldh a, [$b3]
    cp $90
    jp nz, Jump_041_4d32

    call Call_041_4d38
    ret nz

    ld hl, $c800
    ld a, [$ca02]
    ld b, a
    call Call_041_4d4e
    ret nz

    call Call_041_502e
    ldh a, [$bc]
    cp $6c
    ret


Jump_041_4bd0:
jr_041_4bd0:
    nop
    ldh a, [$bc]
    cp $10
    jr z, jr_041_4c18

    cp $6c
    jr nz, jr_041_4c18

    ld hl, $ca01
    dec [hl]
    jr z, jr_041_4c18

    ld hl, $c850
    ld de, $c900
    ld bc, $0014
    call $3026
    ld a, [$c850]
    cp $03
    jr nc, jr_041_4c18

    ld a, $41
    ld hl, $510b
    rst $08
    call Call_041_50fb
    ld a, $26
    ld [$ca02], a
    ldh a, [$bb]
    cp $02
    jr z, jr_041_4c10

    call Call_041_4d43
    jr nz, jr_041_4bd0

    jp Jump_041_4b04


jr_041_4c10:
    call Call_041_4d38
    jr nz, jr_041_4bd0

    jp Jump_041_4b22


jr_041_4c18:
    ldh a, [$bc]
    push af
    call Call_041_4da0
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    or $01
    ldh [rIE], a
    ei
    call $045a
    pop af
    ret


Call_041_4c2d:
    di
    ld a, $3a
    ld hl, $4fe9
    rst $08
    call Call_041_4d5e

jr_041_4c37:
    call Call_041_4d96
    call Call_041_4ddd
    ldh a, [$bc]
    cp $10
    jp z, Jump_041_4d1c

    cp $6c
    jr nz, jr_041_4c37

    ldh a, [$bb]
    cp $02
    jr z, jr_041_4c6c

    call Call_041_4c8a
    jp nz, Jump_041_4d1c

    call Call_041_4d38
    jp nz, Jump_041_4d1c

    call Call_041_4cd2
    jp nz, Jump_041_4d1c

    call Call_041_4d43
    jp nz, Jump_041_4d1c

    call Call_041_5033
    jp Jump_041_4d1c


jr_041_4c6c:
    call Call_041_4cd2
    jp nz, Jump_041_4d1c

    call Call_041_4d43
    jp nz, Jump_041_4d1c

    call Call_041_4c8a
    jp nz, Jump_041_4d1c

    call Call_041_4d38
    jp nz, Jump_041_4d1c

    call Call_041_502e
    jp Jump_041_4d1c


Call_041_4c8a:
    ld hl, $ffb3
    ld b, $01
    call Call_041_4d56
    ret nz

    call Call_041_5033
    ldh a, [$bc]
    cp $6c
    ret nz

    ldh a, [$b3]
    cp $3c
    jp nz, Jump_041_4d32

    swap a
    ldh [$b3], a
    call Call_041_4d38
    ret nz

    ld hl, $ffb3
    ld b, $01
    call Call_041_4d4e
    ret nz

    call Call_041_502e
    ldh a, [$bc]
    cp $6c
    ret nz

    call Call_041_4d43
    ret nz

    ld hl, $c850
    ld a, [$ca02]
    ld b, a
    call Call_041_4d56
    ret nz

    call Call_041_5033
    ldh a, [$bc]
    cp $6c
    ret


Call_041_4cd2:
    ld a, $3c
    ldh [$b3], a
    ld hl, $ffb3
    ld b, $01
    call Call_041_4d4e
    ret nz

    call Call_041_502e
    ldh a, [$bc]
    cp $6c
    ret nz

    call Call_041_4d43
    ret nz

    ld hl, $ffb3
    ld b, $01
    call Call_041_4d56
    ret nz

    call Call_041_5033
    ldh a, [$bc]
    cp $6c
    ret nz

    ldh a, [$b3]
    swap a
    cp $3c
    jp nz, Jump_041_4d32

    call Call_041_4d38
    ret nz

    ld hl, $c800
    ld a, [$ca02]
    ld b, a
    call Call_041_4d4e
    ret nz

    call Call_041_502e
    ldh a, [$bc]
    cp $6c
    ret


Jump_041_4d1c:
    nop
    ldh a, [$bc]
    push af
    call Call_041_4da0
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    or $01
    ldh [rIE], a
    ei
    call $045a
    pop af
    ret


Jump_041_4d32:
    ld a, $80
    ldh [$bc], a
    and a
    ret


Call_041_4d38:
    call Call_041_4d96
    call Call_041_4e46
    ldh a, [$bc]
    cp $6c
    ret


Call_041_4d43:
    call Call_041_4d96
    call Call_041_4dfe
    ldh a, [$bc]
    cp $6c
    ret


Call_041_4d4e:
    call Call_041_4e93
    ldh a, [$bc]
    cp $6c
    ret


Call_041_4d56:
    call Call_041_4f57
    ldh a, [$bc]
    cp $6c
    ret


Call_041_4d5e:
    call Call_041_4d74
    ld a, $04
    ldh [rIE], a
    xor a
    ldh [rIF], a
    call Call_041_4d96
    xor a
    ld b, a

jr_041_4d6d:
    inc a
    jr nz, jr_041_4d6d

    inc b
    jr nz, jr_041_4d6d

    ret


Call_041_4d74:
    xor a
    ldh [rTAC], a
    ld a, $fe
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, $02
    ldh [rTAC], a
    or $04
    ldh [rTAC], a
    ret


Call_041_4d86:
    xor a
    ldh [rTAC], a
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, $02
    ldh [rTAC], a
    or $04
    ldh [rTAC], a
    ret


Call_041_4d96:
    ld a, $c0
    call Call_041_4e8c
    ld a, $01
    ldh [$bb], a
    ret


Call_041_4da0:
    xor a
    call Call_041_4e8c
    ld a, $02
    ldh [rTAC], a
    ret


Call_041_4da9:
jr_041_4da9:
    inc d
    ret z

    xor a
    ldh [rIF], a
    halt
    ld a, [c]
    bit 1, a
    jr z, jr_041_4da9

    or a
    ret


Call_041_4db7:
jr_041_4db7:
    inc d
    ret z

    xor a
    ldh [rIF], a
    halt
    ld a, [c]
    bit 1, a
    jr nz, jr_041_4db7

    or a
    ret


Call_041_4dc5:
    ld a, $c1
    ld [c], a

jr_041_4dc8:
    dec d
    ret z

    xor a
    ldh [rIF], a
    halt
    jr jr_041_4dc8

Call_041_4dd1:
    ld a, $c0
    ld [c], a

jr_041_4dd4:
    dec d
    ret z

    xor a
    ldh [rIF], a
    halt
    jr jr_041_4dd4

Call_041_4ddd:
    ld d, $00
    ld e, d
    ld a, $01
    ldh [$bb], a

jr_041_4de4:
    call Call_041_5038
    ld b, $02
    ld c, $56
    ldh a, [$c4]
    bit 1, a
    jr z, jr_041_4df6

    ld a, $10
    ldh [$bc], a
    ret


jr_041_4df6:
    bit 0, a
    jr nz, jr_041_4e3a

    ld a, [c]
    and b
    jr nz, jr_041_4de4

Call_041_4dfe:
    ld c, $56
    ld d, $00
    ld e, d
    call Call_041_4db7
    jp z, Jump_041_4f42

    ld d, e
    call Call_041_4da9
    jp z, Jump_041_4f42

    call Call_041_4db7
    jp z, Jump_041_4f42

    call Call_041_4da9
    jp z, Jump_041_4f42

    ld a, $6c
    ldh [$bc], a
    ld d, $3d
    call Call_041_4dd1
    ld d, $05
    call Call_041_4dc5
    ld d, $15
    call Call_041_4dd1
    ld d, $05
    call Call_041_4dc5
    ld d, $05
    call Call_041_4dd1
    ret


jr_041_4e3a:
    call $2f8c
    ld e, a
    and $0f
    ld d, a

jr_041_4e41:
    dec de
    ld a, d
    or e
    jr nz, jr_041_4e41

Call_041_4e46:
    ld a, $02
    ldh [$bb], a
    ld c, $56
    ld d, $00
    ld e, d
    ld d, $3d
    call Call_041_4dd1
    ld d, $05
    call Call_041_4dc5
    ld d, $15
    call Call_041_4dd1
    ld d, $05
    call Call_041_4dc5
    ld d, $05
    call Call_041_4dd1
    ld d, e
    call Call_041_4db7
    jp z, Jump_041_4f42

    ld d, e
    call Call_041_4da9
    jp z, Jump_041_4f42

    call Call_041_4db7
    jp z, Jump_041_4f42

    call Call_041_4da9
    jp z, Jump_041_4f42

    ld d, $3d
    call Call_041_4dd1
    ld a, $6c
    ldh [$bc], a
    ret


Call_041_4e8c:
    ldh [rRP], a
    ld a, $ff
    ldh [$bc], a
    ret


Call_041_4e93:
Jump_041_4e93:
    xor a
    ldh [$b7], a
    ldh [$b8], a
    push hl
    push bc
    ld c, $56
    ld d, $3d
    call Call_041_4dd1
    ld hl, $ffb4
    ld a, $5a
    ld [hl+], a
    ld [hl], b
    dec hl
    ld b, $02
    call Call_041_4ed6
    pop bc
    pop hl
    call Call_041_4ed6
    ldh a, [$b7]
    ldh [$b4], a
    ldh a, [$b8]
    ldh [$b5], a
    push hl
    ld hl, $ffb4
    ld b, $02
    call Call_041_4ed6
    ld hl, $ffbc
    ld b, $01
    call Call_041_4faf
    ldh a, [$b4]
    ldh [$b7], a
    ldh a, [$b5]
    ldh [$b8], a
    pop hl
    ret


Call_041_4ed6:
    ld c, $56
    ld d, $05
    call Call_041_4dd1
    ld d, $05
    call Call_041_4dc5
    ld d, $15
    call Call_041_4dd1
    ld a, b
    cpl
    ld b, a
    ld a, $f4
    ldh [rTMA], a

jr_041_4eee:
    inc b
    jr z, jr_041_4f2e

    ld a, $08
    ldh [$b6], a
    ld a, [hl+]
    ld e, a
    ldh a, [$b7]
    add e
    ldh [$b7], a
    ldh a, [$b8]
    adc $00
    ldh [$b8], a

jr_041_4f02:
    xor a
    ldh [rIF], a
    halt
    ld a, $c1
    ldh [rRP], a
    ld d, $01
    ld a, e
    rlca
    ld e, a
    jr nc, jr_041_4f13

    inc d

jr_041_4f13:
    ldh a, [rTIMA]
    cp $f8
    jr c, jr_041_4f13

    ld a, $c0
    ldh [rRP], a
    dec d
    jr z, jr_041_4f25

    xor a
    ldh [rIF], a
    halt

jr_041_4f25:
    ldh a, [$b6]
    dec a
    jr z, jr_041_4eee

    ldh [$b6], a
    jr jr_041_4f02

jr_041_4f2e:
    ld a, $fe
    ldh [rTMA], a
    xor a
    ldh [rIF], a
    halt
    ld d, $05
    call Call_041_4dc5
    ld d, $11
    call Call_041_4dd1
    ret


Jump_041_4f42:
    ldh a, [$bc]
    or $02
    ldh [$bc], a
    ret


Call_041_4f49:
    ldh a, [$bc]
    or $01
    ldh [$bc], a
    ret


Jump_041_4f50:
    ldh a, [$bc]
    or $80
    ldh [$bc], a
    ret


Call_041_4f57:
Jump_041_4f57:
    xor a
    ldh [$b7], a
    ldh [$b8], a
    push bc
    push hl
    ld hl, $ffb4
    ld b, $02
    call Call_041_4faf
    ldh a, [$b5]
    ldh [$ba], a
    ld b, a
    pop hl
    pop af
    cp b
    jp c, Jump_041_4f50

    ldh a, [$b4]
    cp $5a
    jp nz, Jump_041_4f50

    call Call_041_4faf
    ldh a, [$b7]
    ld d, a
    ldh a, [$b8]
    ld e, a
    push hl
    push de
    ld hl, $ffb4
    ld b, $02
    call Call_041_4faf
    pop de
    ld hl, $ffb4
    ld a, [hl+]
    xor d
    ld b, a
    ld a, [hl]
    xor e
    or b
    call nz, Call_041_4f49
    push de
    ld d, $3d
    call Call_041_4dd1
    ld hl, $ffbc
    ld b, $01
    call Call_041_4ed6
    pop de
    pop hl
    ld a, d
    ldh [$b7], a
    ld a, e
    ldh [$b8], a
    ret


Call_041_4faf:
    ld c, $56
    ld d, $00
    call Call_041_4db7
    jp z, Jump_041_4f42

    ld d, $00
    call Call_041_4da9
    jp z, Jump_041_4f42

    ld d, $00
    call Call_041_4db7
    jp z, Jump_041_4f42

    ld a, b
    cpl
    ld b, a
    xor a
    ldh [$c5], a
    call Call_041_4d86

jr_041_4fd2:
    inc b
    jr z, jr_041_501a

    ld a, $08
    ldh [$b6], a

jr_041_4fd9:
    ld d, $00

jr_041_4fdb:
    inc d
    jr z, jr_041_4fe5

    ld a, [c]
    bit 1, a
    jr z, jr_041_4fdb

    ld d, $00

jr_041_4fe5:
    inc d
    jr z, jr_041_4fed

    ld a, [c]
    bit 1, a
    jr nz, jr_041_4fe5

jr_041_4fed:
    ldh a, [$c5]
    ld d, a
    ldh a, [rTIMA]
    ldh [$c5], a
    sub d
    cp $12
    jr c, jr_041_4ffd

    set 0, e
    jr jr_041_4fff

jr_041_4ffd:
    res 0, e

jr_041_4fff:
    ldh a, [$b6]
    dec a
    ldh [$b6], a
    jr z, jr_041_500b

    ld a, e
    rlca
    ld e, a
    jr jr_041_4fd9

jr_041_500b:
    ld a, e
    ld [hl+], a
    ldh a, [$b7]
    add e
    ldh [$b7], a
    ldh a, [$b8]
    adc $00
    ldh [$b8], a
    jr jr_041_4fd2

jr_041_501a:
    call Call_041_4d74
    xor a
    ldh [rIF], a
    ld d, $00
    call Call_041_4da9
    jp z, Jump_041_4f42

    ld d, $10
    call Call_041_4dd1
    ret


Call_041_502e:
    ld b, $00
    jp Jump_041_4e93


Call_041_5033:
    ld b, $00
    jp Jump_041_4f57


Call_041_5038:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [$c3]
    xor c
    and c
    ldh [$c4], a
    ld a, c
    ldh [$c3], a
    ld a, $30
    ldh [rP1], a
    ret


Call_041_5069:
    call Call_041_5106
    ld d, $00
    ld b, $02
    ld hl, $abf0
    ld a, $03
    push hl
    push bc
    call $2d83
    call $2fe1
    ld a, c
    and a
    pop bc
    pop hl
    ret nz

    call Call_041_5106
    ld b, $01
    ld a, $03
    call $2d83
    call $2fe1
    xor a
    ret


    call Call_041_5106
    ld c, $00

jr_041_5096:
    push bc
    ld d, $00
    ld b, $02
    ld hl, $abf0
    ld a, $03
    call $2d83
    ld a, c
    and a
    pop bc
    jr z, jr_041_50b0

    push bc
    ld hl, $6f02
    ld a, $09
    rst $08
    pop bc

jr_041_50b0:
    inc c
    ld a, c
    cp $2b
    jr c, jr_041_5096

    jp $2fe1


    call Call_041_5106
    ld hl, $abe3
    ld a, [hl]
    inc a
    jr nz, jr_041_50c5

    ld [hl-], a
    ld [hl], a

jr_041_50c5:
    jp $2fe1


    call Call_041_5106
    ld a, [$abe5]
    cp $ff
    jr z, jr_041_50d6

    xor a
    ld [$abe5], a

jr_041_50d6:
    jp $2fe1


    call Call_041_5106
    ld hl, $abe2
    ld de, $abe4
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jp $2fe1


    call Call_041_5106
    ld hl, $abe4
    ld de, $abe2
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jp $2fe1


Call_041_50fb:
    ld hl, $c850
    xor a
    ld b, $26

jr_041_5101:
    ld [hl+], a
    dec b
    jr nz, jr_041_5101

    ret


Call_041_5106:
    ld a, $00
    jp $2fcb


    ld a, $01
    call $2fcb
    ld de, $c800
    ld bc, $a86d
    ld hl, $a866

jr_041_5119:
    ld a, [hl+]
    cp $ff
    jr z, jr_041_5148

    cp $fd
    jr z, jr_041_513e

    push hl
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $0002
    add hl, bc
    push bc
    ld bc, $0004
    call $3026
    pop bc
    pop hl

jr_041_513e:
    push hl
    ld hl, $0030
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    jr jr_041_5119

jr_041_5148:
    ld a, $ff
    ld [de], a
    ld a, $26
    ld [$ca00], a
    jp $2fe1


Call_041_5153:
    call $31f3
    call $0568
    ld hl, $5258
    ld de, $9000
    ld a, $41
    ld bc, $0430
    call $0e8d
    ld hl, $c4a0
    ld a, $42
    ld bc, $0168
    call $3041
    ld hl, $c52f
    ld bc, $090f
    call $0fb6
    ld hl, $c4a0
    ld a, $00
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4b4
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4bb
    ld a, $12
    call Call_041_522e
    ld hl, $c4ca
    ld a, $17
    call Call_041_5236
    ld hl, $c4de
    ld a, $27
    call Call_041_5236
    ld hl, $c4f9
    ld a, $37
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4c9
    ld [hl], $04
    ld hl, $c4dd
    ld a, $05
    call Call_041_5246
    ld a, $09
    ld hl, $c516
    call Call_041_5242
    ld hl, $c506
    ld a, $0b
    call Call_041_5251
    ld hl, $c5e2
    ld a, $07
    call Call_041_5251
    ld hl, $c506
    ld a, $0d
    call Call_041_522e
    ld hl, $c50b
    ld [hl], $0c
    ld hl, $c516
    ld [hl], $0a
    ld hl, $c5f2
    ld [hl], $08
    ld hl, $c5e1
    ld [hl], $06
    ld hl, $c51a
    ld a, $3a
    call Call_041_5251
    ld hl, $c5ce
    ld a, $40
    call Call_041_5251
    ld hl, $c51a
    ld a, $3c
    call Call_041_523e
    ld hl, $c529
    ld a, $3e
    call Call_041_523e
    ld hl, $c51a
    ld [hl], $39
    ld hl, $c529
    ld [hl], $3b
    ld hl, $c5ce
    ld [hl], $3f
    ld hl, $c5dd
    ld [hl], $41
    call $058a
    call $31f6
    ld b, $1d
    call $3340
    call $32f9
    ret


Call_041_522e:
    ld b, $05
    jr jr_041_5238

    ld b, $06
    jr jr_041_5238

Call_041_5236:
    ld b, $10

jr_041_5238:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_041_5238

    ret


Call_041_523e:
    ld b, $09
    jr jr_041_5248

Call_041_5242:
    ld b, $0b
    jr jr_041_5248

Call_041_5246:
    ld b, $0e

jr_041_5248:
    ld [hl], a
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_041_5248

    ret


Call_041_5251:
    ld b, $10

jr_041_5253:
    ld [hl+], a
    dec b
    jr nz, jr_041_5253

    ret


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ld sp, hl
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    ld bc, $f900
    ldh a, [rIF]
    db $fc
    inc bc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    ldh a, [rIE]
    ld [$08ff], sp
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    rst $38
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
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$fe]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    add [hl]
    nop
    sbc d
    nop
    sbc d
    ld a, c
    add [hl]
    ld h, c
    sbc [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_041_533b

jr_041_533b:
    ld l, c
    nop
    ld l, b
    and $19
    sub a
    ld l, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, d
    nop
    adc $00
    jp nz, $fa05

    cp l
    ld b, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc de
    nop
    ld [hl], c
    nop
    ld [hl-], a
    adc h
    ld [hl], e
    db $ec
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, e
    nop
    ld h, a
    nop
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a

jr_041_53be:
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    nop
    db $fc
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fd
    jr jr_041_53be

    db $eb
    db $e3
    ld a, [hl+]
    di
    ld [de], a
    rst $30
    inc d
    rst $38
    ld [$20ff], sp
    rst $38
    ld [hl+], a
    nop
    db $10
    adc $ce
    sbc $52

jr_041_53ee:
    sbc $52
    sbc $52
    db $fc
    ld h, h
    db $fc
    ld h, h
    rst $38
    ld h, e
    nop
    rlca
    ldh a, [$f4]
    pop af
    sub l
    di
    sub d
    rst $30
    sub h
    rst $30
    sub h
    rst $30
    sub h
    di
    ld [de], a
    nop
    jr jr_041_53ee

    db $eb
    di
    ld [de], a
    ei
    ld a, [bc]
    db $fd
    ld b, l
    cp h
    and h
    ret c

    ld e, c
    ldh a, [$33]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    rst $08
    ld a, b
    ld c, b
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld c, a
    ld a, b
    ld c, b
    ld a, a
    ld c, a
    ld a, a
    ld b, c
    nop
    nop
    cp a
    cp a
    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    and a
    dec a
    dec h
    ccf
    ld h, $3f
    jr nz, jr_041_5449

jr_041_5449:
    ld hl, sp+$07
    scf
    adc a
    xor c
    rst $08
    ld c, c
    rst $28
    add hl, hl
    cp $32
    cp $32
    rst $18
    ld d, c
    nop
    inc bc
    ld a, b
    ld a, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld hl, sp-$75
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld bc, $03fd
    ld a, [$fa03]
    rlca
    db $f4
    rlca
    db $f4
    nop
    add [hl]
    ld a, b
    ld a, d
    db $fc
    add h
    cp $02
    cp $32
    adc $4e
    ret nz

    ld b, b
    cp [hl]
    cp [hl]
    nop
    nop
    db $fd
    db $fd
    db $fd
    add l
    db $fd
    add l
    ld a, b
    ld c, b
    ld a, b
    ld c, d
    ld a, b
    ld c, d
    ld a, b
    ld c, d
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    cp $9e
    ldh a, [$90]
    cp $9e
    cp $82
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    di
    ld e, $12
    ld e, $d2
    ld e, $d2
    nop
    rra
    ret nz

    rst $18
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    rst $18
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fd
    db $fd
    inc bc
    ld a, [$fa02]
    ld [bc], a
    ld a, [$fa02]
    inc bc
    ei
    nop
    ld hl, sp-$01
    ld [hl], $2a
    ld a, [hl+]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    ld a, [hl+]
    db $e3
    db $eb
    nop
    ld [$60ff], sp
    ld d, b
    ld d, b
    ld c, h
    ld c, h
    ld b, h
    ld b, h
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    rst $08
    rst $08
    nop
    nop
    pop af
    ld de, $2626
    ld c, c
    ld c, c
    adc b
    xor b
    adc b
    xor b
    add h
    or h
    add e
    or e
    nop
    inc a
    ld hl, sp+$09
    add h
    add h
    ld b, h
    ld b, h
    call nz, $04c4
    inc b
    ld [$f00a], sp
    or $00
    ld c, $78
    ld c, e
    ret z

    adc e
    adc b
    adc e
    adc b
    adc d
    adc b
    adc d
    adc b
    adc d
    ld hl, sp-$06
    nop
    ld [bc], a
    ld a, a
    ld b, c
    ld c, a
    ld c, a
    ld c, b
    ld c, b
    rst $08
    adc a
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ccf
    jr nz, jr_041_5561

    ld h, $66
    ld h, [hl]
    ld h, [hl]
    ld b, [hl]
    add $c6
    add $c6
    cp e
    cp e
    nop
    nop
    sbc a
    sub b
    ld c, b
    ld c, b
    ld b, [hl]
    ld b, [hl]
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    inc h
    inc h
    rst $20
    rst $20
    nop
    ld [$0bf8], sp
    db $10
    rla
    jr nz, jr_041_558d

    ld b, b
    ld e, a
    ld b, b

jr_041_5561:
    ld e, a
    ld b, b
    ld e, a
    ret nz

    rst $18
    nop
    rra
    rlca
    db $f4
    inc b
    db $f4
    inc b
    db $f4
    inc b
    db $f4
    inc b
    db $f4
    ld [bc], a
    ld a, [$f901]
    nop
    cp $fe
    jp nz, $c2c2

    ld a, [c]
    ld a, [c]
    ld h, d
    ld h, d
    dec b
    dec b
    dec b
    dec b
    ld sp, hl
    ld sp, hl
    nop
    inc b
    ld a, b
    ld c, d
    ld c, b
    ld c, d
    ld c, b

jr_041_558d:
    ld c, d
    ret


    ret


    dec b
    dec b
    dec b
    dec b
    db $fd
    db $fd
    nop
    nop
    cp $82
    sbc [hl]
    sbc [hl]
    sub b
    sub b
    sub b
    rla
    db $10
    rla
    db $10
    rla
    ldh a, [$f7]
    nop
    rlca
    ld e, $d2
    ld [hl-], a
    and d
    ld [hl+], a
    and d
    ld [hl+], a
    and d
    ld [hl+], a
    and d
    ld [hl+], a
    and d
    ld a, $be
    nop
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
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $00ff
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $e0ff
    ccf
    ldh [rIE], a
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_041_55f0:
    nop
    rst $38

jr_041_55f2:
    nop
    cp $00
    db $fd
    nop

jr_041_55f7:
    ei
    nop
    rst $38
    nop
    rst $38

jr_041_55fc:
    inc e
    jp $bd02


    ld bc, $0066
    jp $8100


    nop
    nop
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
    ld a, a
    ld b, b
    cp a
    jr nz, jr_041_55f7

    nop
    or $00
    db $ec
    nop
    ret c

    jr nz, jr_041_55f0

    jr nz, jr_041_55f2

    jr nz, jr_041_55fc

    db $10
    db $ec
    ld [$00f6], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld l, a
    ld [$0437], sp
    dec de
    inc b
    dec bc
    inc b
    dec bc
    nop
    dec de
    nop
    scf
    nop
    ld l, a
    inc b

jr_041_5649:
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
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
    nop
    nop
    add c
    nop
    jp Jump_041_6680


    ld b, b
    cp l
    jr c, @-$3b

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_041_5649

    ld b, b
    cp a
    add b
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

Jump_041_5688:
    call $0fc8
    call $300b
    call $31f6
    call Call_041_57d7
    ld hl, $c543
    ld de, $572e
    call $1078
    call $31f6
    call Call_041_578c
    call Call_041_50fb
    ld a, $24
    ld [$ca02], a
    ldh a, [rIE]
    push af
    call Call_041_4c2d
    ld d, a
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    ld a, d
    cp $10
    jp z, Jump_041_5712

    cp $6c
    jp nz, Jump_041_571a

    call Call_041_56eb
    ld c, $3c
    call $0468
    call Call_041_5777
    ld hl, $575e
    call $1057
    ld de, $c850
    ld a, $22
    ld hl, $6c70
    rst $08
    ld a, c
    ld [$d265], a
    ld hl, $5768
    jr c, jr_041_5726

    ld hl, $5763
    jr jr_041_5726

Call_041_56eb:
    ld c, $10

jr_041_56ed:
    ld hl, $c400
    ld b, $08

jr_041_56f2:
    dec [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_041_56f2

    ld hl, $c420
    ld b, $08

jr_041_56ff:
    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_041_56ff

    dec c
    ret z

    push bc
    ld c, $04
    call $0468
    pop bc
    jr jr_041_56ed

Jump_041_5712:
    call Call_041_5777
    ld hl, $576d
    jr jr_041_5726

Jump_041_571a:
    call Call_041_5777
    ld hl, $5772
    call $1057
    jp Jump_041_5688


jr_041_5726:
    call $1057
    ld a, $e3
    ldh [rLCDC], a
    ret


    add e
    db $e3
    inc e
    adc a
    xor e
    rra
    or l
    cp l
    call nz, $c24e
    or e
    cp h
    sbc $4a
    or l
    cp d
    push bc
    call c, $d9da
    sub $e7
    ld c, [hl]
    ld a, [de]
    db $e3
    inc e
    adc a
    xor e
    rra
    or l
    cp l
    call nz, $c24e
    or e
    cp h
    sbc $1f
    pop bc
    pop hl
    or e
    cp h
    ld a, a
    cp h
    rst $08
    cp l
    ld d, b
    ld d, $1a
    ld b, l
    ld [hl], b
    ld d, b
    ld d, $31
    ld b, l
    ld [hl], b
    ld d, b
    ld d, $55
    ld b, l
    ld [hl], b
    ld d, b
    ld d, $73
    ld b, l
    ld [hl], b
    ld d, b
    ld d, $91
    ld b, l
    ld [hl], b
    ld d, b

Call_041_5777:
    call $300b
    call $0fc8
    call $058a
    call $31f6
    ld b, $08
    call $3340
    call $32f9
    ret


Call_041_578c:
    ld de, $c800
    ld a, $01
    call $2fcb
    ld hl, $a00b
    ld bc, $000b
    call $3026
    ld hl, $a009
    ld bc, $0002
    call $3026
    ld hl, $a3d8
    ld bc, $0002
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld a, [$be3d]
    ld [de], a
    inc de
    ld a, $04
    call $2fcb
    ld hl, $a603
    ld bc, $0008
    call $3026
    ld hl, $a007
    ld bc, $000c
    call $3026
    call $2fe1
    ret


Call_041_57d7:
    call $31f3
    call $0568
    ld hl, $5930
    ld de, $9000
    ld a, $41
    ld bc, $0400
    call $0e8d
    ld hl, $5d30
    ld de, $8000
    ld a, $41
    ld bc, $0080
    call $0e8d
    ld hl, $c4a0
    ld a, $3f
    ld bc, $0168
    call $3041
    ld hl, $c52f
    ld bc, $090f
    call $0fb6
    ld hl, $c4a0
    ld a, $00
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4b4
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4cc
    ld a, $13
    call Call_041_58ca
    ld hl, $c4e0
    ld a, $1e
    call Call_041_58ce
    ld hl, $c4f4
    ld a, $2a
    call Call_041_58ce
    ld hl, $c4c9
    ld [hl], $04
    ld hl, $c4dd
    ld a, $05
    call Call_041_58de
    ld a, $09
    ld hl, $c516
    call Call_041_58da
    ld hl, $c506
    ld a, $0b
    call Call_041_58e9
    ld hl, $c5e2
    ld a, $07
    call Call_041_58e9
    ld hl, $c506
    ld a, $0d
    call Call_041_58c6
    ld hl, $c50c
    ld [hl], $0c
    ld hl, $c516
    ld [hl], $0a
    ld hl, $c5f2
    ld [hl], $08
    ld hl, $c5e1
    ld [hl], $06
    ld hl, $c51a
    ld a, $37
    call Call_041_58e9
    ld hl, $c5ce
    ld a, $3d
    call Call_041_58e9
    ld hl, $c51a
    ld a, $39
    call Call_041_58d6
    ld hl, $c529
    ld a, $3b
    call Call_041_58d6
    ld hl, $c51a
    ld [hl], $36
    ld hl, $c529
    ld [hl], $38
    ld hl, $c5ce
    ld [hl], $3c
    ld hl, $c5dd
    ld [hl], $3e
    ld de, $c400
    ld hl, $58f0
    ld bc, $0040
    call $3026
    call $058a
    call $31f6
    ld b, $02
    ld a, $12
    ld hl, $530f
    rst $08
    jp $32f9


Call_041_58c6:
    ld b, $06
    jr jr_041_58d0

Call_041_58ca:
    ld b, $0b
    jr jr_041_58d0

Call_041_58ce:
    ld b, $0c

jr_041_58d0:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_041_58d0

    ret


Call_041_58d6:
    ld b, $09
    jr jr_041_58e0

Call_041_58da:
    ld b, $0b
    jr jr_041_58e0

Call_041_58de:
    ld b, $0e

jr_041_58e0:
    ld [hl], a
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_041_58e0

    ret


Call_041_58e9:
    ld b, $10

jr_041_58eb:
    ld [hl+], a
    dec b
    jr nz, jr_041_58eb

    ret


    ld de, $0034
    nop
    ld de, $013c
    nop
    ld de, $0244
    nop
    ld de, $034c
    nop
    add hl, de
    inc [hl]
    inc b
    nop
    add hl, de
    inc a
    dec b
    nop
    add hl, de
    ld b, h
    ld b, $00
    add hl, de
    ld c, h
    rlca
    nop
    ld bc, $005c
    nop
    ld bc, $0164
    nop
    ld bc, $026c
    nop
    ld bc, $0374
    nop
    add hl, bc
    ld e, h
    inc b
    nop
    add hl, bc
    ld h, h
    dec b
    nop
    add hl, bc
    ld l, h
    ld b, $00
    add hl, bc
    ld [hl], h
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ld sp, hl
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    ld bc, $f900
    ldh a, [rIF]
    db $fc
    inc bc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    ldh a, [rIE]
    ld [$08ff], sp
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
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
    ld [hl], $00
    ld d, $00
    inc h
    swap h
    swap h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc sp
    nop
    ld sp, $d200
    db $ec
    inc de
    inc l
    db $d3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and c
    nop
    daa
    nop
    and e
    ld e, b
    and a
    ld e, [hl]
    and c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    sbc e
    nop
    sbc [hl]
    ld h, l
    sbc d
    add hl, sp
    add $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_041_5a43

jr_041_5a43:
    add hl, de
    nop
    ld l, c
    rst $30
    ld [$6996], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, c
    nop
    and [hl]
    nop
    and [hl]
    sbc c
    ld h, [hl]
    ld e, [hl]
    and c
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
    ld hl, sp+$03
    ei
    inc bc
    ld a, [$fa03]
    inc bc
    ld_long a, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, @-$2f

    rst $08
    rst $08
    ld c, c
    rst $38
    ld a, c
    rst $38
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld b, b
    ld e, $5e
    ld e, $52
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
    ret nz

    ld e, $de
    ld e, $d2
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld a, b
    ld a, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rTAC]
    rst $30
    rlca
    db $f4
    rlca
    db $f4
    nop
    rst $38
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
    inc b
    cp $02
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ld e, $de
    ld e, $d2
    ld e, $d2
    ld e, $12
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rTAC]
    rst $30
    rlca
    add h
    ccf
    cp h
    ccf
    jr nz, jr_041_5af1

jr_041_5af1:
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$9c2a], sp
    sub h
    cp [hl]
    and d
    rst $38
    pop af
    rst $38
    jr jr_041_5b01

jr_041_5b01:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ldh a, [$f7]
    ldh a, [$97]
    ldh a, [$97]
    ldh a, [$97]
    rlca
    db $f4
    rrca
    add sp, $0f
    add sp, $0f
    jp hl


    add hl, bc
    jp hl


    ld [$0ce8], sp
    add sp, $04
    db $f4
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    ld [de], a
    sub [hl]
    add d
    add [hl]
    add [hl]
    add l
    add l
    dec b
    dec b
    sbc [hl]
    sub d
    sbc $52
    sbc $52
    cp $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    ld sp, $3038
    rra
    pop de
    rrca
    jp hl


    rrca
    jp hl


    rrca
    jp hl


    add hl, bc
    jp hl


    add hl, bc
    add hl, hl
    ret


    ret


    ld c, c
    ld c, c
    ld a, b
    ld c, d
    ld a, b
    ld c, d
    ld a, b
    ld c, d
    ld a, b
    ld c, d
    ld c, b
    ld c, d
    ld c, l
    ld b, l
    ld h, a
    ld b, a
    jr nz, jr_041_5b80

    rlca
    rlca
    ldh a, [$f0]
    ldh a, [$97]
    ldh a, [$90]
    sub a
    sub a
    sub h
    inc d
    inc [hl]
    inc d
    ld h, $24
    cp $f2
    ld e, $12
    ld e, $de
    nop
    ld b, c
    add b
    cp a
    add b
    add b
    cp $7e
    ld [bc], a
    ld [bc], a

jr_041_5b80:
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $fc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$e202]
    inc c
    db $ec
    ld [$bfe8], sp
    and b
    rst $38
    ld a, h
    rst $00
    ld b, h
    ld b, h
    ld d, h
    ld b, h
    ld d, h
    ld c, h
    ld c, b
    ld c, c
    ld c, b
    sub c
    sub c
    rst $38
    dec c
    ld a, [$f88a]
    ret z

    ret z

    jp z, $cac8

    ret


    ret


    ret


    ret


    ld c, d
    ld c, d
    ldh a, [$97]
    ldh a, [$97]
    ldh a, [$91]
    sbc [hl]
    sbc [hl]
    add e
    add c
    add c
    nop
    inc e
    jr jr_041_5be3

    inc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    add a
    ldh a, [$f7]
    db $10
    rla
    rlca
    or $01
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    rst $38

jr_041_5bda:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    add hl, de
    pop hl

jr_041_5be3:
    push hl
    nop
    inc e
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
    inc l
    jr z, jr_041_5bda

    rst $20
    nop
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, c
    ld c, c
    rst $08
    rst $08
    nop
    jr nz, jr_041_5c07

jr_041_5c07:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_041_5c6a

    rlca
    ld h, a
    nop
    ld a, b
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
    jp $01da


    dec a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    cp $fe
    nop
    nop
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
    add hl, bc
    jp hl


    ld c, $ee
    nop
    pop hl
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
    ld a, [bc]
    ld l, d
    inc b
    push af
    nop
    ei
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
    ld c, d
    ld c, d
    ld a, e
    ld a, e
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_041_5c6a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    ld e, d
    pop bc
    db $dd
    nop
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rla
    ldh a, [$f7]
    nop
    rlca
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
    rst $38
    nop
    rst $38

jr_041_5c98:
    nop
    rst $38

jr_041_5c9a:
    nop
    cp $00
    db $fd
    nop

jr_041_5c9f:
    ei
    nop
    rst $38
    nop
    rst $38

jr_041_5ca4:
    inc e
    jp $bd02


    ld bc, $0066
    jp $8100


    nop
    nop
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
    ld a, a
    ld b, b
    cp a
    jr nz, jr_041_5c9f

    nop
    or $00
    db $ec
    nop
    ret c

    jr nz, jr_041_5c98

    jr nz, jr_041_5c9a

    jr nz, jr_041_5ca4

    db $10
    db $ec
    ld [$00f6], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld l, a
    ld [$0437], sp
    dec de
    inc b
    dec bc
    inc b
    dec bc
    nop
    dec de
    nop
    scf
    nop
    ld l, a
    inc b

jr_041_5cf1:
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
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
    nop
    nop
    add c
    nop
    jp Jump_041_6680


    ld b, b
    cp l
    jr c, @-$3b

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_041_5cf1

    ld b, b
    cp a
    add b
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
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    ld l, c
    ld a, a
    ld a, c
    ld a, a
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ld h, b
    ld a, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $bf
    db $fc
    rra
    db $fc
    nop
    nop
    ldh a, [$f8]
    ld hl, sp+$7c
    ld hl, sp+$3c
    ld hl, sp+$3c
    ld hl, sp+$7c
    ld hl, sp+$3c
    ld hl, sp+$3c
    ld a, a
    ld a, a
    ld [hl], l
    ld a, a
    ld l, d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
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
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
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
    ld hl, sp-$04
    ld e, b
    db $fc
    cp b
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    nop
    ld hl, sp+$00
    nop
    ld hl, $5db9
    call $3ac3
    jp $31f6


    ld d, $7a
    ld c, l
    ld [hl], b
    ld [$e4f0], sp
    and a
    jr nz, jr_041_5dc9

    ld a, [$c60f]
    call Call_041_5ed0

jr_041_5dc9:
    ld a, $13
    call $39e7
    ld d, h
    ld e, l
    ld a, $11
    call $39e7
    ld a, $0c
    call $39e1
    ld [$d265], a
    push hl
    ld a, $0d
    ld hl, $4548
    rst $08
    pop hl
    jr nz, jr_041_5dec

    ld a, [$d265]
    ld [hl], a
    ld [de], a

jr_041_5dec:
    call Call_041_5e5c
    ld a, [$c6f4]
    and a
    ld hl, $5e0b
    ret nz

    ld a, [$d265]
    cp $03
    ld hl, $5e0b
    ret c

    ld hl, $5e04
    ret


    ld d, $7e
    ld c, l
    ld [hl], b
    ld [$0518], sp
    ld d, $87
    ld c, l
    ld [hl], b
    ld [$f4fa], sp
    add $a7
    jr z, @+$0b

    ld hl, $5e1a
    ret


    ld d, $90
    ld c, l
    ld [hl], b
    ld [$2321], sp
    ld e, [hl]
    ret


    ld d, $9c
    ld c, l
    ld [hl], b
    ld [$3921], sp
    ld e, [hl]
    ld a, [$d265]
    add a
    push bc
    ld b, $00
    ld c, a
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld b, e
    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld d, a
    ld e, [hl]
    ld d, $a1
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $a4
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $a7
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $aa
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $ad
    ld c, l
    ld [hl], b
    ld d, b

Call_041_5e5c:
    push bc
    ld a, [$d265]
    ld c, a
    ld b, $00
    ld hl, $5e7a

jr_041_5e66:
    ld a, [hl+]
    cp $ff
    jr z, jr_041_5e74

    cp c
    jr z, jr_041_5e74

    and a
    jr nz, jr_041_5e66

    inc b
    jr jr_041_5e66

jr_041_5e74:
    ld a, b
    ld [$d265], a
    pop bc
    ret


    ld c, $4a
    ld b, [hl]
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, a
    ld a, c
    ld a, e
    ld a, l
    sub h
    sub [hl]
    sub a
    sbc e
    sbc h
    sbc a
    and h
    xor d
    xor l
    or [hl]
    cp a
    set 1, l
    rst $08
    sub $ed
    db $f4
    push af
    nop
    ld l, c
    ld h, h
    ld [hl], l
    ld a, b
    add l
    xor a
    nop
    ld h, b
    ld h, c
    ld h, [hl]
    ld l, b
    adc h
    sub b
    and l
    cp b
    nop
    ld bc, $0b0a
    ld de, $1413
    dec d
    ld e, $23
    dec h
    daa
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, a
    ld d, c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld h, a
    db $76
    ld a, d
    add b
    add h
    adc e
    sub c
    and e
    xor c
    xor e
    xor [hl]
    pop bc
    call z, $f9d5
    nop
    rst $38

Call_041_5ed0:
    push bc
    ld hl, $c712
    ld b, a
    ld c, $04

jr_041_5ed7:
    ld a, [hl+]
    and a
    jr z, jr_041_5ef2

    cp b
    jr z, jr_041_5ef4

    dec c
    jr nz, jr_041_5ed7

    ld hl, $c713
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl], a
    ld a, b
    ld [$c715], a
    jr jr_041_5ef4

jr_041_5ef2:
    dec hl
    ld [hl], b

jr_041_5ef4:
    pop bc
    ret


    ret


    ld a, $05
    call $2fcb
    ld hl, $d4c4
    ld de, $a001
    ld bc, $0004
    call $3026
    ld hl, $a010
    ld de, $a005
    ld bc, $0004
    call $3026
    ld hl, $a039
    ld de, $a009
    ld bc, $0004
    call $3026
    ld hl, $a01b
    ld de, $a00d
    ld bc, $0003
    call $3026
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld a, $05
    call $2fcb
    ld de, $d1ea
    ld hl, $a07b
    ld a, [de]
    cp [hl]
    jr z, jr_041_5f47

    jr nc, jr_041_5f4f

    jr jr_041_5f55

jr_041_5f47:
    inc hl
    inc de
    ld a, [de]
    cp [hl]
    dec hl
    dec de
    jr c, jr_041_5f55

jr_041_5f4f:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    dec de
    ld [hl], a

jr_041_5f55:
    ld hl, $a07d
    ld a, [hl+]
    or [hl]
    dec hl
    jr z, jr_041_5f6d

    ld a, [de]
    cp [hl]
    jr z, jr_041_5f65

    jr c, jr_041_5f6d

    jr jr_041_5f72

jr_041_5f65:
    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nc, jr_041_5f72

    dec hl
    dec de

jr_041_5f6d:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a

jr_041_5f72:
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld a, $05
    call $2fcb
    ldh a, [$b3]
    ld hl, $a07f
    cp [hl]
    jr z, jr_041_5f8b

    jr nc, jr_041_5f92

    jr jr_041_5f98

jr_041_5f8b:
    inc hl
    ldh a, [$b4]
    cp [hl]
    jr c, jr_041_5f98

    dec hl

jr_041_5f92:
    ldh a, [$b3]
    ld [hl+], a
    ldh a, [$b4]
    ld [hl], a

jr_041_5f98:
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld a, $05
    call $2fcb
    ld hl, $a070
    inc [hl]
    jr nz, jr_041_5fae

    dec hl
    inc [hl]
    inc hl

jr_041_5fae:
    dec hl
    ld a, [$a071]
    cp [hl]
    jr z, jr_041_5fb9

    jr c, jr_041_5fc1

    jr jr_041_5fc9

jr_041_5fb9:
    inc hl
    ld a, [$a072]
    cp [hl]
    jr nc, jr_041_5fc9

    dec hl

jr_041_5fc1:
    ld a, [hl+]
    ld [$a071], a
    ld a, [hl]
    ld [$a072], a

jr_041_5fc9:
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld a, $05
    call $2fcb
    ld hl, $a06f
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld a, $05
    call $2fcb
    ld hl, $a076
    ld a, e
    add [hl]
    ld [hl-], a
    ld a, d
    adc [hl]
    ld [hl-], a
    jr nc, jr_041_6001

    inc [hl]
    jr nz, jr_041_6001

    dec hl
    inc [hl]
    jr nz, jr_041_6001

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_041_6001:
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld a, $05
    call $2fcb
    ld hl, $a07a
    ld a, [bc]
    dec bc
    add [hl]
    ld [hl-], a
    ld a, [bc]
    dec bc
    adc [hl]
    ld [hl-], a
    ld a, [bc]
    adc [hl]
    ld [hl-], a
    jr nc, jr_041_6027

    inc [hl]
    jr nz, jr_041_6027

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_041_6027:
    call Call_041_6162
    call $2fe1
    ret


    ret


    ld hl, $a010
    jp Jump_041_6117


    ret


    ld a, $05
    call $2fcb
    ld a, [$aa8d]
    and a
    call $2fe1
    ret nz

    ld hl, $a014
    jp Jump_041_6123


    ret


    ld hl, $a018
    jp Jump_041_611d


    ret


    ld a, [$d230]
    cp $03
    ret z

    ld hl, $a01b
    jp Jump_041_611d


    ret


    ld a, [$d230]
    cp $03
    ret z

    ld hl, $a01e
    jp Jump_041_611d


    ret


    ld hl, $a021
    jp Jump_041_611d


    ret


    ld hl, $a024
    jp Jump_041_611d


    ret


    ld hl, $a027
    jp Jump_041_611d


    ret


    ld hl, $a02a
    jp Jump_041_611d


    ret


    ld hl, $a02d
    jp Jump_041_611d


    ret


    ld hl, $a030
    jp Jump_041_611d


    ret


    ld hl, $a033
    jp Jump_041_611d


    ret


    ld hl, $a036
    jp Jump_041_611d


    ret


    ld hl, $a039
    jp Jump_041_611d


    ret


    ld hl, $a03c
    jr jr_041_611d

    ret


    ld hl, $a03f
    jr jr_041_611d

    ret


    ld hl, $a042
    jr jr_041_611d

    ret


    ld hl, $a045
    jr jr_041_611d

    ret


    ld hl, $a048
    jr jr_041_611d

    ret


    ld hl, $a04b
    jr jr_041_611d

    ret


    ld hl, $a04e
    jr jr_041_6123

    ret


    ld hl, $a051
    jr jr_041_611d

    ret


    ld hl, $a054
    jr jr_041_611d

    ret


    ld hl, $a057
    jr jr_041_611d

    ret


    ldh a, [$e4]
    and a
    ret nz

    ld hl, $a05a
    jr jr_041_611d

    ret


    ld hl, $a05d
    jr jr_041_611d

    ret


    ld hl, $a060
    jr jr_041_611d

    ret


    ld hl, $a063
    jr jr_041_611d

    ret


    ld hl, $a066
    jr jr_041_611d

    ret


    ld hl, $a069
    jr jr_041_611d

    ret


    ldh a, [$e4]
    and a
    ret nz

    ld hl, $a06c
    jr jr_041_611d

Jump_041_6117:
    push bc
    ld bc, $0003
    jr jr_041_612d

Jump_041_611d:
jr_041_611d:
    push bc
    ld bc, $0002
    jr jr_041_612d

Jump_041_6123:
jr_041_6123:
    push bc
    ld bc, $0001
    jr jr_041_612d

    push bc
    ld bc, $0000

jr_041_612d:
    ld a, $05
    call $2fcb
    push hl
    push de
    ld e, c
    inc e

jr_041_6136:
    ld a, [hl+]
    inc a
    jr nz, jr_041_613d

    dec e
    jr nz, jr_041_6136

jr_041_613d:
    pop de
    pop hl
    jr z, jr_041_614d

    add hl, bc

jr_041_6142:
    inc [hl]
    jr nz, jr_041_614d

    ld a, c
    and a
    jr z, jr_041_614d

    dec hl
    dec c
    jr jr_041_6142

jr_041_614d:
    call Call_041_6162
    call $2fe1
    pop bc
    ret


    ret


    ld a, $05
    call $2fcb
    call Call_041_6162
    call $2fe1
    ret


Call_041_6162:
    push de
    call Call_041_616e
    ld hl, $a081
    ld [hl], d
    inc hl
    ld [hl], e
    pop de
    ret


Call_041_616e:
    push bc
    ld hl, $a001
    ld bc, $0080
    xor a
    ld de, $0000

jr_041_6179:
    ld a, e
    add [hl]
    ld e, a
    jr nc, jr_041_617f

    inc d

jr_041_617f:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6179

    pop bc
    ret


    ld a, $01
    call $2fcb
    ld a, [$be3c]
    push af
    ld a, $01
    call $2fcb
    pop af
    ld [$be44], a
    call $2fe1
    ret


    ld a, $01
    call $2fcb
    ld a, [$be44]
    push af
    ld a, $01
    call $2fcb
    pop af
    ld [$be3c], a
    call $2fe1
    ret


    call Call_041_616e
    ld hl, $a081
    ld a, d
    cp [hl]
    ret nz

    inc hl
    ld a, e
    cp [hl]
    ret


    ld a, $01
    call $2fcb
    xor a
    ld [$be3c], a
    call $2fe1
    ret


    ld hl, $a001
    ld bc, $0082
    xor a
    call $3041
    ld hl, $a07d
    ld a, $03
    ld [hl+], a
    ld [hl], $e8
    call Call_041_6162
    ld hl, $a001
    ld de, $a084
    ld bc, $0082
    call $3026
    ret


    push bc
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld a, b
    and $0f
    cp $01
    jr z, jr_041_6212

    cp $02
    jr z, jr_041_620e

    cp $03
    jr z, jr_041_620a

    ld a, [de]
    ldh [$b3], a
    inc de

jr_041_620a:
    ld a, [de]
    ldh [$b4], a
    inc de

jr_041_620e:
    ld a, [de]
    ldh [$b5], a
    inc de

jr_041_6212:
    ld a, [de]
    ldh [$b6], a
    inc de
    push de
    xor a
    ldh [$bb], a
    ld a, b
    ldh [$bc], a
    ld a, c
    cp $02
    jr z, jr_041_626a

    ld de, $62ae
    cp $03
    jr z, jr_041_6256

    ld de, $62aa
    cp $04
    jr z, jr_041_6256

    ld de, $62a6
    cp $05
    jr z, jr_041_6256

    ld de, $62a2
    cp $06
    jr z, jr_041_6256

    ld de, $629e
    cp $07
    jr z, jr_041_6256

    ld de, $629a
    cp $08
    jr z, jr_041_6256

    ld de, $6296
    cp $09
    jr z, jr_041_6256

    ld de, $6292

jr_041_6256:
    inc de
    inc de
    inc de
    dec a
    dec a

jr_041_625b:
    push af
    call Call_041_62b2
    call Call_041_62ff
    inc de
    inc de
    inc de
    inc de
    pop af
    dec a
    jr nz, jr_041_625b

jr_041_626a:
    ld c, $00
    ldh a, [$b6]

jr_041_626e:
    cp $0a
    jr c, jr_041_6277

    sub $0a
    inc c
    jr jr_041_626e

jr_041_6277:
    ld b, a
    ldh a, [$bb]
    or c
    ldh [$bb], a
    jr nz, jr_041_6284

    call Call_041_62f7
    jr jr_041_6288

jr_041_6284:
    ld a, $f6
    add c
    ld [hl], a

jr_041_6288:
    call Call_041_62ff
    ld a, $f6
    add b
    ld [hl+], a
    pop de
    pop bc
    ret


    dec sp
    sbc d
    jp z, $0500

    push af
    pop hl
    nop
    nop
    sbc b
    sub [hl]
    add b
    nop
    rrca
    ld b, d
    ld b, b
    nop
    ld bc, $a086
    nop
    nop
    daa
    stop
    nop
    inc bc
    add sp, $00
    nop
    nop
    ld h, h

Call_041_62b2:
    ld c, $00

jr_041_62b4:
    ld a, [de]
    dec de
    ld b, a
    ldh a, [$b6]
    sub b
    ldh [$ba], a
    ld a, [de]
    dec de
    ld b, a
    ldh a, [$b5]
    sbc b
    ldh [$b9], a
    ld a, [de]
    dec de
    ld b, a
    ldh a, [$b4]
    sbc b
    ldh [$b8], a
    ld a, [de]
    inc de
    inc de
    inc de
    ld b, a
    ldh a, [$b3]
    sbc b
    ldh [$b7], a
    jr c, jr_041_62eb

    ldh a, [$b7]
    ldh [$b3], a
    ldh a, [$b8]
    ldh [$b4], a
    ldh a, [$b9]
    ldh [$b5], a
    ldh a, [$ba]
    ldh [$b6], a
    inc c
    jr jr_041_62b4

jr_041_62eb:
    ldh a, [$bb]
    or c
    jr z, jr_041_62f7

    ld a, $f6
    add c
    ld [hl], a
    ldh [$bb], a
    ret


Call_041_62f7:
jr_041_62f7:
    ldh a, [$bc]
    bit 7, a
    ret z

    ld [hl], $f6
    ret


Call_041_62ff:
    ldh a, [$bc]
    bit 7, a
    jr nz, jr_041_630d

    bit 6, a
    jr z, jr_041_630d

    ldh a, [$bb]
    and a
    ret z

jr_041_630d:
    inc hl
    ret


    xor a
    ld [$c2dd], a
    ret


Call_041_6314:
    ret


    ld a, $04
    call $2fcb
    ld a, c
    cpl
    ld [$b000], a
    call $2fe1
    ld a, $07
    call $2fcb
    ld a, c
    ld [$a800], a
    call $2fe1
    ret


Call_041_632f:
    or a
    ret


    ld a, $04
    call $2fcb
    ld a, [$b000]
    cpl
    ld b, a
    call $2fe1
    ld a, $07
    call $2fcb
    ld a, [$a800]
    ld c, a
    call $2fe1
    ld a, c
    cp b
    jr nz, jr_041_6359

    and a
    jr z, jr_041_6359

    and $8f
    cp c
    jr nz, jr_041_6359

    ld c, a
    scf
    ret


jr_041_6359:
    xor a
    ld c, a
    ret


    ld a, [$cd25]
    bit 7, a
    ret nz

    ld a, [$cd25]
    ld hl, $636a
    rst $28
    ret


    ld a, h
    ld h, e
    sub d
    ld h, e
    call z, $d863
    ld h, e
    push hl
    ld h, e
    di
    ld h, e
    inc bc
    ld h, h
    ld b, d
    ld h, h
    ld d, e
    ld h, h
    ld de, $cd30
    ld hl, $0041
    ld bc, $0041
    ld a, $40
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    xor a
    ld [$cf64], a
    ld a, [$c821]
    bit 1, a
    jr nz, jr_041_63a2

    bit 0, a
    jr z, jr_041_63bf

    ret


jr_041_63a2:
    call Call_041_632f
    ld a, c
    and a
    jr nz, jr_041_63b4

    ld a, $0b
    ld [$cf64], a
    ld a, $07
    ld [$cd25], a
    ret


jr_041_63b4:
    ld a, $07
    ld [$cf64], a
    ld a, $07
    ld [$cd25], a
    ret


jr_041_63bf:
    ld a, $01
    ld [$cf64], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $78
    ld [$cd42], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld hl, $cd42
    dec [hl]
    ret nz

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, [$cf64]
    cp $03
    ret nz

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld de, $cd31
    ld a, $32
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, [$c821]
    bit 1, a
    jr nz, jr_041_6426

    bit 0, a
    jr z, jr_041_640f

    ret


jr_041_640f:
    ld a, [$cd31]
    and $80
    ld c, a
    ld a, [$cd30]
    or c
    inc a

Call_041_641a:
    ld c, a
    call Call_041_6314
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_041_6426:
    call Call_041_632f
    ld a, c
    and a
    jr z, jr_041_6435

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_041_6435:
    ld c, $00
    call Call_041_6314
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $36
    call $3e32
    xor a
    ldh [$e9], a
    ldh [$c9], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, [$cd25]
    set 7, a
    ld [$cd25], a
    nop
    ld a, $04
    ld [$cf64], a
    ret


    ret


    ret


    ld de, $5214
    ld hl, $9600
    ld bc, $3e01
    call $0f82
    ld de, $5424
    ld hl, $9610
    ld bc, $3e01
    call $0f82
    ld de, $6514
    ld hl, $9620
    ld c, $09
    ld b, $41
    call $0f82
    ld de, $40b0
    ld hl, $96b0
    ld b, $0f
    call $0f82
    ld a, $3e
    ld hl, $74cc
    rst $08
    ret


    ld a, [$cfce]
    and $07
    ld bc, $0030
    ld hl, $4800
    call $30fe
    ld d, h
    ld e, l
    ld hl, $9790
    ld c, $06
    ld b, $3e
    call Call_041_64c3
    ld hl, $97f0
    ld de, $5204
    ld c, $01
    ld b, $3e
    call Call_041_64c3
    ret


Call_041_64c3:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push bc
    push hl
    ld hl, $3f88
    ld a, b
    rst $08
    pop hl
    pop bc
    pop af
    ldh [rSVBK], a
    jr jr_041_64ed

    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push bc
    push hl
    ld hl, $3f9f
    ld a, b
    rst $08
    pop hl
    pop bc
    pop af
    ldh [rSVBK], a
    jr jr_041_64ed

jr_041_64ed:
    ld de, $d000
    ld b, $00
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ldh a, [rVBK]

jr_041_64fb:
    push af
    ld a, $01
    ldh [rVBK], a
    call $0f82
    pop af
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    ret


    ld de, $5234
    ld bc, $3e11
    call $0f82
    ret


    nop
    rst $38
    ld c, a
    or b
    ccf
    rst $28
    jr nc, jr_041_64fb

    ld l, b
    cp b
    ld h, h
    or b
    ld h, b
    or b
    ld h, b
    or b
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    ld a, [c]
    dec c
    db $fc
    rst $30
    inc c
    ei
    ld d, $1d
    ld h, $0d
    ld b, $0d
    ld b, $0d
    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    or b
    ld h, b

jr_041_654d:
    or b
    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    or b
    ld b, $0d
    ld b, $0d
    ld b, $0d
    ld b, $0d
    ld b, $0d
    ld b, $0d
    ld b, $0d
    ld b, $0d
    ld h, b
    or b
    ld h, b
    or b
    ld h, h
    or b
    ld l, b
    cp b
    jr nc, jr_041_654d

    ccf
    rst $28
    ld c, a
    or b
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld b, $0d
    ld b, $0d
    ld h, $0d
    ld d, $1d
    inc c
    ei
    db $fc
    rst $30
    ld a, [c]
    dec c
    nop
    rst $38
    ld de, $65ad
    ld hl, $8800
    ld bc, $4180
    call $0f82
    ld de, $6dad
    ld hl, $97f0
    ld bc, $4101
    call $0f82
    ret


    rst $38
    db $10
    rst $38
    jr z, @+$01

    jr z, @+$01

    ld b, h
    rst $38
    ld a, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add h
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add h
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    cp $ff
    add b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    add b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    sbc [hl]
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    cp $ff
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld [$08ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    rst $38
    add h
    rst $38
    add d
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $ff
    nop
    rst $38
    add d
    rst $38
    add $ff
    xor d
    rst $38
    sub d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    add d
    rst $38

Jump_041_6680:
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    adc d
    rst $38
    ld b, h
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    adc b
    rst $38
    add h
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    cp $ff
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    ld a, $ff
    nop
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    jr z, @+$01

    db $10
    rst $38
    nop
    rst $38
    add d
    rst $38
    add d
    rst $38
    sub d
    rst $38
    xor d
    rst $38
    add $ff
    add $ff
    add d
    rst $38
    nop
    rst $38
    add $ff
    ld b, h
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr z, @+$01

    ld b, h
    rst $38
    add $ff
    nop
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    cp $ff
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    cp $ff
    nop
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    jr @+$01

    jr @+$01

    ld [$10ff], sp
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    inc b
    rst $38
    inc a
    rst $38
    ld b, h
    rst $38
    ld a, $ff
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, h
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, $ff
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, $ff
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    ld b, b
    rst $38
    ld a, $ff
    nop
    rst $38
    inc c
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld a, [hl]
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, $ff
    ld [bc], a
    rst $38
    ld a, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, [hl]
    rst $38
    ld e, b
    rst $38
    ld h, b
    rst $38
    ld e, b
    rst $38
    ld b, [hl]
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $ec
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, [hl]
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, b
    rst $38
    inc a
    rst $38
    ld [bc], a
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, h
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $28ff
    rst $38
    db $10
    rst $38
    jr z, @+$01

    ld b, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    inc a
    rst $38
    inc b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld a, [hl]
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
    rst $38
    nop
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr z, @+$01

    ld b, h
    rst $38
    ld a, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    jr z, @+$01

    jr c, @+$01

    ld b, h
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    jr z, @+$01

    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    ld a, $ff
    nop
    rst $38
    jr z, @+$01

    nop
    rst $38
    jr c, @+$01

    inc b
    rst $38
    inc a
    rst $38
    ld b, h
    rst $38
    ld a, $ff
    nop
    rst $38
    jr z, @+$01

    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    jr z, @+$01

    nop
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    inc a
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
    rst $38
    nop
    rst $38
    jp nz, Jump_041_42ff

    rst $38
    add d
    rst $38
    ld a, $ff
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, $ff
    nop
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    sub [hl]
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    sub e
    rst $38
    inc d
    rst $38
    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    sbc [hl]
    rst $38
    jr nz, @+$01

    ld e, $ff
    ld bc, $3eff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld c, b
    rst $38
    cp [hl]
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$06ff], sp
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    ld [$00ff], sp
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
    rst $38
    jr @+$01

    jr @+$01

    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sub b
    rst $38
    ldh [rIE], a
    adc d
    rst $38
    adc d
    rst $38
    inc c
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld d, $ff
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    adc $ff
    jr @+$01

    nop
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    jr @+$01

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
    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    jr nc, @+$01

    ld l, b
    rst $38
    ld l, b
    rst $38
    ld [hl-], a
    rst $38
    ld e, d
    rst $38
    call z, Call_041_7aff
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    ld b, b
    rst $38
    ld a, $ff
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
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    ld a, h
    rst $38
    jr c, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld d, h
    rst $38
    sub d
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc h
    rst $38
    inc a
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr z, @+$01

    ld b, h
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
    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

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
    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr nz, @+$01

    jr c, @+$01

    ld b, h
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    db $10
    rst $38
    ld a, h
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld c, h
    rst $38
    add $ff
    add $ff
    ld h, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    add $ff
    ld c, $ff
    ld a, h
    rst $38
    ldh [rIE], a
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc c
    rst $38
    jr c, @+$01

    ld b, $ff
    add $ff
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld l, h
    rst $38
    call z, $feff
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    ld b, $ff
    add $ff
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    add $ff
    add $ff
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    add $ff
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    add $ff
    ld a, h
    rst $38
    add $ff
    add $ff
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    add $ff
    add $ff
    ld a, [hl]
    rst $38
    ld b, $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_041_7aff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
