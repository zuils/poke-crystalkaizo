; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

    ld h, e
    inc de
    rst $38
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [hl], c
    ld a, a
    ld a, [hl-]
    ld a, a
    dec a
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    nop
    ld b, $67
    inc hl
    ld bc, $0343
    ld [bc], a

jr_057_401c:
    ld bc, $0201
    ld c, e
    rlca
    inc b
    call nz, $128d
    ld b, $1d
    ld a, [hl-]
    ccf
    ld b, c
    ld c, a
    ld b, c
    ccf
    ld a, $37
    jr nc, jr_057_4094

    ld b, e
    inc a
    ld b, h
    rra
    inc a
    inc bc
    rlca
    ld [hl], l
    ld [bc], a
    add b
    add b
    ld b, b
    ld [hl+], a
    ret nz

    add e
    add e
    inc de
    ld h, b
    ldh [$b2], a
    ei
    cp $fc
    ld [hl], b
    ld hl, sp+$30
    ld [hl], b
    jr z, @+$22

    ld [hl], h
    ld b, b
    ld [$f580], a
    add b
    cp $00
    ld e, e
    rst $38
    nop
    dec d
    rst $00
    jr c, jr_057_401c

    ret nz

    rst $28
    jr nc, @+$01

    pop bc
    ld a, a
    ld bc, $0202
    jp nz, $ff02

    add d
    rra
    ld a, a
    ld bc, $0201
    ld [bc], a
    rst $00
    nop
    ld hl, $0102
    ld bc, $8c06
    pop af
    ld bc, $1f0f
    xor e
    adc a
    rlca
    ld bc, $8a00
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    rst $38
    nop
    ld bc, $90ef
    ld b, e
    rst $38
    ld [$0700], sp
    ld b, e
    inc b

jr_057_4094:
    ccf
    ld [de], a
    ld hl, sp-$7e
    cp b
    inc b
    nop
    inc l
    inc b
    sbc [hl]
    sbc d
    ld a, a
    ld [hl], c
    ld hl, $632e
    ld [hl], b
    or b
    rst $28
    rrca
    ldh [$8d], a
    nop
    ld e, b
    ld de, $78b8
    ld l, $06
    ld d, $01
    rrca
    nop
    rla
    nop
    cpl
    nop
    ld d, a
    nop
    cp a
    nop
    ld a, a
    nop
    add sp, $21
    rst $38
    nop
    dec e
    cp $01
    push af
    ld a, [bc]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor e
    ld d, l
    ld d, [hl]
    ld l, $18
    ret c

    db $10
    db $10
    ld d, b
    ld d, b
    and b
    ldh [rLCDC], a
    ret nz

    ret nz

    ld b, b
    ld h, b
    ldh [$b8], a
    ld e, b
    cp $06
    ld h, c
    add hl, de
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    ld a, [de]
    rra
    dec d
    rra
    dec de
    rra
    rla
    rra
    ld l, a
    ld a, a
    sbc a
    rst $38
    cp h
    cp $f8
    ld a, b
    ldh a, [$30]
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld b, a
    db $fc
    inc b
    ld c, e
    cp $02
    ld b, e
    db $fc
    inc b
    ld de, $0cf4
    rst $38
    inc bc
    rst $38
    nop
    ccf
    nop
    sbc a
    add b
    rst $00
    ld b, b
    ld [hl], b
    or b
    adc $4e
    add c
    add c
    ld [hl], l
    ld a, [bc]
    ld a, $3e
    adc $fe
    inc e
    cp $3c
    db $fc
    ld a, b
    db $fc

jr_057_4129:
    ld hl, sp+$43
    ld hl, sp-$10
    inc b
    ldh a, [$e0]
    ldh a, [$c0]
    ldh [$ec], a
    daa
    inc bc
    ret nz

    ldh [$f8], a
    jr jr_057_4180

    db $fc
    inc b
    ld [bc], a
    jr jr_057_4158

    ldh [$96], a
    or l
    rst $38
    ld l, d
    ld [hl+], a
    ld bc, $0000
    ld [hl+], a
    ld [bc], a
    nop
    nop
    jr z, jr_057_4153

    ld [bc], a
    ld b, $04
    inc bc

jr_057_4153:
    ld [hl+], a
    ld [bc], a
    ld bc, $0101

jr_057_4158:
    adc e
    and c
    dec h
    ld bc, $0001
    ld bc, $0d79
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$1117], sp
    rra
    ld h, c
    inc c
    ld [$1408], sp
    inc d
    inc [hl]
    dec [hl]
    and [hl]
    and [hl]
    ld b, b
    ld b, h
    nop
    ld b, b
    ld b, b
    adc b
    and h

jr_057_4180:
    dec de
    rlca
    ld b, $0f
    ld [$101e], sp
    ccf
    jr nz, jr_057_4129

    jr nz, jr_057_420b

    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $28
    add b
    db $dd
    nop
    ld [$f700], a
    nop
    xor $00
    ld b, h
    rst $38
    nop
    nop
    add b
    add e
    sub e
    inc e
    ld a, a
    ld b, b
    ld l, a
    ld d, b
    ccf
    jr nz, @+$21

    db $10
    dec de
    inc d
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec e
    ld [de], a
    ld a, [hl-]
    dec a
    ld d, l
    xor $a2
    ld e, a
    ld b, c
    cp a
    adc a
    ld a, a
    jr nc, @+$01

    ld b, b

Jump_057_41c2:
    call nz, $ada0
    nop
    inc h
    inc hl
    ld b, b
    ld de, $4f43
    ld a, a
    ld [hl], b
    rst $38
    add b
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    ld c, e
    rst $38
    nop
    rlca
    rst $10
    nop
    cp d
    nop
    ld e, l
    nop
    cp a
    nop
    ld c, a
    rst $38
    nop
    inc bc
    ld a, a
    add b
    xor d
    ld d, l
    xor e
    add c
    rlca
    push de
    xor d
    xor e
    push de
    rst $10
    xor d
    xor [hl]
    push de
    ld [hl], c
    dec b
    ldh [$f0], a
    ld hl, sp+$0c
    db $fc
    inc bc
    ld d, l
    rst $38
    nop
    and e
    nop
    adc h
    ld [bc], a
    xor e

jr_057_420b:
    nop
    rst $30
    sub b
    sub a
    inc bc
    ld a, [$d505]
    ld a, [hl+]
    add a
    db $db
    dec c
    xor a
    ld d, a
    ld e, b
    cp a
    ld [$d475], a
    xor e
    ldh a, [$7f]
    ld c, h
    cp a
    add e
    ld a, a
    ld h, d
    ld bc, $0204

jr_057_4229:
    ld [hl+], a
    ld a, [bc]
    inc b
    db $10
    ld d, c
    ld de, $20b1
    inc l
    add b
    ld de, $40c0
    ret nz

    jr nz, jr_057_4229

    db $10
    ld hl, sp+$08
    ld a, [$fd08]
    inc b
    cp $04
    db $fd
    inc b
    rst $38
    dec b
    ld c, l
    cp $02
    ld b, l
    db $fc
    inc b
    dec b
    ld hl, sp+$08
    xor b
    ld e, b
    ld e, b
    xor b
    and e
    nop
    xor b
    inc c
    or b
    ld d, b
    ld e, b
    xor b
    xor b
    ld e, b
    ld d, h
    xor h
    db $ec
    call nc, $fc34
    ld a, [bc]
    ld b, h
    cp $06
    ld b, e
    ld [bc], a
    cp $6a
    dec b
    ld b, b
    add b
    and b
    jr nz, @-$5e

    add b
    ld h, $10
    nop
    nop
    and l
    add l
    ld a, [bc]
    ld [$1050], sp
    and b
    db $10
    ld h, b
    jr nz, @-$3e

    ld b, b
    add b
    add b
    db $ec
    dec [hl]
    rst $38
    db $ec
    jr nc, @+$04

    ld bc, $0101
    db $ec
    ld e, l
    ld b, $07
    rlca
    ld [$080b], sp
    rrca
    ld [$84c3], sp
    db $10
    jr jr_057_42a0

    call nc, $343c
    ld a, a

jr_057_42a0:
    sub a
    ld e, c
    ld h, l
    inc [hl]
    ld a, [hl+]
    dec [hl]
    ld a, [hl+]
    rra
    db $10
    dec c
    ld c, $f0
    ld a, [hl-]
    ei
    inc h
    ld bc, $0205
    inc bc
    inc bc
    ld [bc], a
    ld bc, $2303
    ld [bc], a
    add d
    ret


    call nz, $0380
    inc b
    inc b
    inc bc
    inc bc
    ld [hl+], a
    add b
    ld [bc], a
    add b
    add b
    add b
    adc c
    and [hl]
    rrca
    add e
    add e
    jp $b543


    rst $30
    cp l
    ld c, a
    ld a, $c3
    rst $38
    add e
    ld a, a
    ld h, a
    rra
    rra
    dec h
    inc bc
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $0300
    daa
    ld bc, $0001
    ld bc, $d88c
    ld [bc], a
    ld bc, $0202
    add e
    reti


    ld h, c
    ldh [$34], a
    jr @+$7a

    rlca
    ld b, a
    ld b, b
    ld h, d
    add b
    add b
    ld sp, $9231
    di
    ld d, h
    or a
    xor b
    ld e, a
    ld b, b
    cp a
    add a
    ld a, b
    ld a, [hl]
    jp $31bf


    cp a
    and b
    rst $18
    add b
    adc a
    ret nc

    ld l, l
    ld c, [hl]
    cpl
    jr nc, jr_057_4330

    ld e, l
    sub h
    rst $10
    ld l, h
    ld l, e
    scf
    add hl, sp
    ld a, e
    ld [hl], a
    ei
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    call nz, $0281
    ld a, a
    rst $38
    cp a
    ld [hl+], a
    rst $38

jr_057_4330:
    inc b
    cp a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    inc h
    rst $38

Call_057_4338:
    nop
    ld a, b
    ld b, [hl]
    rst $38
    ld [$0445], sp
    rst $38
    ld [bc], a
    dec b
    rst $38
    add h
    ld b, h
    rst $38
    sub d
    dec c
    add d
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    sbc c
    sbc a
    ccf
    rlca
    ld sp, hl
    dec e
    pop hl
    pop hl
    and l
    ld bc, $073d
    ld b, b
    ld h, b
    jr jr_057_4376

    db $e4
    db $e4
    inc d
    db $fc
    ld b, l
    ld [bc], a
    cp $15
    db $ec
    cp $22
    ld b, d
    ld [hl-], a
    ld e, d
    ld hl, sp+$14
    ld [$fa16], a
    ld a, [de]
    jp nc, Jump_057_6132

    pop hl

jr_057_4376:
    add c
    xor c
    add l
    sbc l
    ld [hl], d
    ei
    inc hl
    db $fc
    inc b

Jump_057_437f:
    db $f4
    cp $ee
    cp $d6
    ld b, h
    rst $38
    rst $08

jr_057_4387:
    ld b, e
    rst $28
    rst $38
    inc de
    call c, $cfdf
    ret nc

    di
    ldh a, [$e3]
    pop af
    daa
    pop hl

jr_057_4395:
    ld l, [hl]
    jp nz, $c4fc

    ld a, b

jr_057_439a:
    ret z

    jr nc, jr_057_4395

    jr jr_057_4387

    ld b, e
    jr jr_057_439a

    ld b, l
    jr c, @-$16

    inc b
    inc l
    db $f4
    xor h
    db $f4
    adc h
    ld b, h
    db $f4
    ld c, h
    nop
    ld b, [hl]
    ld b, h
    ld a, [$0706]
    adc [hl]
    adc d
    ld c, $06
    db $fc
    inc b
    ld hl, sp-$08
    db $f4
    ld a, [hl-]
    nop
    or e

Call_057_43c0:
    ld bc, $8080
    db $f4
    ld h, b
    nop
    ld sp, $41ec
    rst $38
    ld h, e
    rra
    ld [bc], a
    ld b, $00
    add hl, bc
    inc b
    inc b
    ld [$0408], sp
    ld b, $0e
    rrca
    ld [bc], a
    ld [de], a
    ld [$0409], sp
    ld b, $0a
    dec bc
    ld d, $16
    ld [de], a
    dec de
    add hl, bc
    dec c
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $ec01
    dec [hl]
    dec b
    inc bc
    inc bc
    inc a
    ccf
    ret nz

    rst $38
    ld h, h
    db $10
    ld [$9480], sp
    ld d, h
    ld d, h

Call_057_43fc:
    inc h
    inc h
    nop
    add d
    ld [bc], a
    ld d, d
    ld bc, $00ad
    cp $00
    rst $38
    and d
    add e
    ld c, b
    rst $38
    nop
    dec b
    add b
    rst $38
    ld h, b
    ld a, a
    jr jr_057_4433

    add l
    jp hl


    ld bc, $0101
    ld b, l
    ld [bc], a
    inc bc
    ld c, e
    inc b
    rlca
    nop
    nop
    ld b, h
    inc bc
    ld [bc], a
    nop
    nop
    jr z, jr_057_4429

    dec c

jr_057_4429:
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $05
    ld a, h
    ld a, d
    add b
    push de

jr_057_4433:
    nop
    xor d
    nop
    db $fd
    jp $2600


    inc b
    nop
    ld [bc], a
    nop
    inc b
    ld bc, $eec3
    ld c, $40
    add b
    and b
    and b
    pop hl
    and b
    ld [c], a
    db $10
    pop de
    db $10
    ret nc

    db $10
    ldh a, [rSB]
    pop af
    ld b, e
    ld [$0cf8], sp
    inc b
    db $fc
    inc bc
    rst $38
    inc b
    rst $38
    db $10
    ld a, [$e100]
    add b
    ret nz

    nop
    ld b, e
    add b
    nop
    dec b
    push de
    nop
    ld [$fd00], a
    nop
    add sp, $23
    rst $38
    nop
    inc e
    ld a, a
    nop
    xor a
    nop
    dec d
    nop
    db $10
    and b
    xor b
    ld h, h
    ld [hl], h
    inc hl
    xor e
    db $10

jr_057_4480:
    ld d, [hl]
    sub b
    cp l
    adc b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    ld h, b
    dec a
    add b
    cp $40
    ld a, a
    add l
    nop
    ld a, [hl]
    dec d
    ld b, b
    ld a, a
    db $10
    ccf
    add sp, -$01
    jr @+$01

    db $10
    rst $38
    ld [$087f], sp
    cp a
    nop
    ld a, a
    nop

jr_057_44a4:
    cp a
    nop
    ld a, a
    nop
    rst $38
    db $dd
    or a
    dec c
    ld bc, $0aff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, b
    cp $00
    ld hl, sp+$00
    push af
    and e
    nop
    ld h, d
    nop
    nop
    ld [hl+], a
    jr z, jr_057_44d3

    ret z

    ret c

    ld c, b
    ld l, b
    jr nz, jr_057_4480

    inc h
    db $fc
    inc b
    db $fc
    ld b, $7a
    ld [bc], a
    cp [hl]
    ld [bc], a
    cp $03

jr_057_44d3:
    db $fd
    ld c, e
    ld bc, $00ff
    nop
    ld b, h
    cp $02
    rlca
    inc b
    db $fc
    ld [$18f8], sp
    ld hl, sp+$38
    add sp, $43
    inc c
    db $f4
    ld bc, $fc04
    ld b, e
    ld b, $fa
    nop
    ld [bc], a
    add h
    sub a
    ld b, a
    inc b
    db $fc
    ld bc, $fa16
    ld b, e

Jump_057_44f9:
    ld [hl+], a

jr_057_44fa:
    cp $0d
    ld h, d
    cp $74
    db $fc
    jr c, jr_057_44fa

    jr nz, jr_057_44a4

    jr nz, jr_057_4566

    db $10
    or b
    ld [$ec58], sp
    ld e, a
    rst $38
    db $ec
    ld hl, $0106
    ld bc, $0200
    nop
    inc b
    nop
    ld b, e
    ld [$2200], sp
    db $10
    ld [bc], a
    ld a, [de]
    inc d
    ld e, $44
    rra
    rrca
    rrca
    dec bc
    rra
    dec d
    rra
    dec de
    rra
    dec d
    rra
    ld [hl+], a
    ccf
    ld hl, $203f
    ccf
    ld hl, $493f
    ld b, b
    ld a, a
    ld bc, $7f41
    ld b, e
    ld hl, $073f
    inc hl
    ld a, $13
    ld e, $10
    rra
    ld [$980f], sp
    push de
    ld [$0100], sp
    rlca
    ld [$2018], sp
    ld h, b
    add b
    add b
    ld h, c
    add hl, bc
    stop
    jr z, jr_057_4558

jr_057_4558:
    ld d, a
    nop
    cpl
    nop
    ld e, a
    nop
    ld b, l
    ccf
    nop
    ld [bc], a
    rra
    nop
    rra
    ld b, e

jr_057_4566:
    add b
    sbc a
    ld b, h
    ret nz

    rst $18
    ld a, [bc]
    rst $38
    ret nz

    cp $c1
    rst $38

jr_057_4571:
    pop bc
    ld a, a
    pop bc
    rst $38
    pop bc
    db $fd
    ld b, h
    add e
    rst $38
    rrca
    cp $83
    cp $03
    db $fc

Jump_057_4580:
    inc bc
    rst $38
    ld bc, $55ab
    ld d, l
    xor d
    ld a, [hl+]
    push de
    nop
    rst $38
    ld [hl], l
    add hl, bc
    db $10
    rrca
    jr nz, jr_057_4571

    rlca
    nop
    ld a, $00
    ld a, a
    nop
    push bc
    ret


    ld c, e
    rst $38
    nop
    ld a, [de]
    ei
    rlca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    push af
    rst $38
    ld [$f0ff], a
    rst $38
    add sp, -$01
    ret nc

    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    add e
    add e
    ld c, b
    rst $38
    nop
    add e
    adc l
    sub a
    rst $18
    rlca
    ldh a, [$f0]
    ld a, [hl]
    ld c, $0f

Call_057_45c7:
    ld bc, $001f
    ld d, c
    rst $38
    nop
    ld bc, $fc7b
    inc hl
    rst $38
    ld b, $fd
    rst $38
    ld [$55ff], a
    rst $38
    and b
    ld e, d
    rst $38
    nop
    rlca
    ld [bc], a
    db $fd
    dec d
    ld [$d52a], a
    dec d
    ld [$1079], a
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    rlca
    ei
    rlca
    rst $38
    inc bc
    cp $a6
    ld bc, $0a10
    ld a, a
    add b
    rst $18
    ldh [rPCM12], a
    ld sp, hl
    cp b
    rst $38
    ld c, h
    rst $38
    ld b, $43
    rst $38
    inc bc
    ld c, b
    rst $38
    ld bc, $0343
    rst $38
    ld de, $ff02
    ld b, $ff
    inc b
    rst $38
    ld [$11ff], sp
    rst $38
    add d
    ld a, [hl]
    ld b, h
    cp h
    xor [hl]
    ld e, d
    ld e, [hl]
    or d
    ld h, c
    db $f4
    dec h
    nop
    nop
    inc hl
    ret nz

    ld b, e
    ldh [rNR41], a
    ld b, e
    ret nc

    jr nc, jr_057_4633

    sub b

jr_057_4633:
    ld [hl], b
    ld c, e
    ld [$43f8], sp

jr_057_4638:
    adc b
    ld hl, sp+$43
    sub b
    ldh a, [rTIMA]
    jr jr_057_4638

    inc a
    db $e4
    ld a, $e2
    ld b, e
    ld a, [hl]
    jp nz, $fc05

    add h
    ld hl, sp+$18
    ldh [$e0], a
    ld h, l
    rst $38
    ld a, a
    inc hl
    ld bc, $020e
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$1414], sp
    dec d
    inc d
    dec l
    inc h
    dec [hl]
    ld b, [hl]
    inc h
    dec a
    ld b, l
    dec e
    inc d
    inc hl
    inc c
    ld bc, $0004
    inc h
    ld [bc], a
    ld bc, $0100
    jp $eca9


    inc h
    ldh [rOBP1], a
    ld bc, $0f01
    rrca
    ld a, $36
    ld c, a
    ld c, b
    sbc a
    sub b
    ld a, [hl-]
    jr nz, jr_057_46fb

    jr nz, jr_057_46f2

    ld b, b
    push de
    ld b, b
    db $eb
    ld b, c
    rst $10
    ld b, c
    rst $28
    add e
    cp $82
    rst $38
    add e
    cp $03
    db $fc
    add a
    db $fc
    rlca
    ld hl, sp-$71
    ld hl, sp+$0f
    ldh a, [$9f]
    pop hl
    cp a
    jp $c7ff


    cp $cf
    ld a, [hl]
    rst $08
    ld a, h
    ld h, a
    ld a, h
    ld e, a
    ld e, h
    ld h, d
    ld [hl+], a
    ld hl, $3121
    ld de, $90f0
    ld hl, sp-$78
    ld a, e
    ld c, e
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    ccf
    ld sp, $c8ff
    ld [hl], e
    ldh [$2b], a
    rra
    rra
    db $e3
    ldh [rIF], a
    nop
    ccf
    rlca
    rst $38
    jr @+$01

    jr nc, @+$01

    ld l, b
    ld a, a
    ld d, h
    rst $38
    xor d
    rst $38
    push de
    rst $38
    cp a
    rst $00
    rst $00
    jr jr_057_46ff

    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    cp $3f
    ld hl, sp-$01
    ldh [rIE], a
    add b

jr_057_46f2:
    ld c, c
    rst $38
    nop
    ld [bc], a
    ld d, a
    nop
    xor e
    add h
    add e

jr_057_46fb:
    dec c
    push de
    add b
    xor e

jr_057_46ff:
    add b
    push de
    ret nz

    ld [$d540], a
    ld b, b
    ld [$f520], a

jr_057_4709:
    and b
    ld [hl], e
    rlca
    ret nz

    ret nz

    or b
    jr nc, jr_057_4709

    ld hl, sp-$02
    ld b, $aa
    cp l
    ld [bc], a
    rra
    ldh [$fe], a
    adc b
    adc d
    ld [hl+], a
    rst $38
    ld bc, $e3dd
    call nz, $028a
    nop
    cp $00
    ld b, a
    db $fc
    nop
    nop
    cp $c2
    adc c
    adc b
    and d
    add hl, bc
    nop
    ld e, a
    rlca
    cp a

jr_057_4735:
    jr jr_057_47b6

    jr nz, jr_057_4735

    ld b, b
    ldh [$ba], a
    nop
    ld d, b
    ld b, $01
    nop
    add $c2
    ld hl, sp+$38
    jp $0083


    ld a, [c]
    ld [$fe01], sp
    add d
    ld a, h
    ld h, h
    jr @+$1a

    ld [$43c8], sp
    inc b
    db $ec
    ld bc, $fcc4
    ld b, e
    and h
    cp h
    inc bc
    sbc b
    sbc b
    sub b
    sub b
    inc hl
    ld d, b
    ld bc, $2068
    dec h
    ld [$0401], sp
    nop
    inc hl
    inc b
    ld de, $0002
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a
    ld sp, hl
    ld sp, hl
    rst $38
    rlca
    ldh [$60], a
    jr jr_057_4794

    rrca
    inc b
    ld a, a
    ld [bc], a
    cp h
    nop
    ld b, $a4
    nop
    ld c, h
    db $ec
    dec [hl]
    rlca
    ret nz

    add b
    jr nc, @+$22

    adc b
    ld [$04fc], sp
    rst $38
    db $ec
    inc h

jr_057_4794:
    ld h, $01
    nop
    nop
    call nz, $0787
    rra
    ccf
    ld e, $41
    dec sp
    dec a
    inc bc
    inc bc
    dec h
    ld bc, $0307
    inc bc
    add hl, de
    inc a
    rra
    ld b, c
    ld a, $3e
    ld h, e
    inc de
    ld [$2418], sp
    ld h, $03
    ld b, c

jr_057_47b6:
    ld c, a
    ld b, b
    ld l, a
    ld h, b
    ld b, a
    ld e, b
    ld c, a
    ld b, b
    cpl
    jr nz, jr_057_47e8

    jr c, jr_057_47e2

    ld de, $0579
    inc a

Call_057_47c7:
    inc a
    ld b, e
    ld b, e
    ld c, [hl]
    ld b, c
    ld b, e
    sbc a
    add b
    ld bc, $001f
    ld b, a
    ccf
    nop
    ld a, [bc]
    cp $81
    db $fd
    add d
    di
    adc h
    rst $08
    or b
    ld a, a
    nop
    ld a, a
    add [hl]

jr_057_47e2:
    sub c
    nop
    cp a
    ld b, e
    add b
    rst $38

jr_057_47e8:
    ld c, $c0
    ccf
    jr nz, jr_057_480c

    db $10
    rrca
    inc c
    inc bc
    inc bc
    ld b, $0f
    ldh a, [$f0]
    ld bc, $4400
    rst $38
    nop
    inc b
    rrca
    ldh a, [rSVBK]
    add c
    add c
    sub $00
    ld h, $01
    ld [$4300], sp
    inc d
    inc e
    jr @+$17

jr_057_480c:
    inc e
    ld d, $9d
    sub h
    ld e, l
    call nc, Call_057_54d9
    cp e
    ld h, a
    rst $28
    inc e
    and b
    ld b, b
    add b
    ld b, b
    ld b, b
    add b
    and b
    nop
    call nc, $eb00
    nop
    ld d, a
    rst $38
    nop
    inc bc
    ld a, a
    add b
    rst $18
    ldh [$c6], a
    add e
    ld b, h
    add b
    rst $38
    ld [bc], a
    ld a, a
    nop
    ld a, a
    ld [hl], a
    ld [de], a
    inc b
    nop
    ld a, [bc]
    ld l, [hl]
    ld [$1a1e], a
    cp $0a
    rst $38
    dec bc
    or $1a
    db $e4
    db $fc
    db $ec
    inc e
    ld a, b
    inc c
    ld b, e
    scf
    ld [$7b07], sp
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    ld e, b
    rst $38
    nop
    dec b
    ld bc, $1efc
    cp $06
    rst $38
    add h
    sbc a
    dec b
    rst $18
    jr nz, @+$01

    db $10
    rst $38
    dec bc
    ld a, e
    ld a, [bc]
    jr nc, jr_057_48a5

    ld c, b
    call z, $061c
    ld e, $02
    ld a, $03
    ld a, a
    ld c, c
    ld bc, $84ff
    push bc
    rlca
    ccf
    rst $00
    rst $08
    jr c, @+$01

    db $10
    or $19
    ld b, e
    ldh [$3f], a
    inc bc
    and $3f
    pop hl
    ccf
    ld b, e
    ldh a, [$1f]
    dec b
    db $fc
    rrca
    db $e3
    inc sp
    add b
    ret nz

    rst $00
    nop
    jp $c307


    ld b, d
    rst $28
    inc l
    rst $38
    ld [hl], b
    cp a
    add b
    db $ec
    jr z, jr_057_48a5

jr_057_48a5:
    add b
    and a
    nop
    inc h
    add hl, bc
    ldh [$e0], a
    db $fc
    ld e, $fd
    pop bc
    cp [hl]
    ld a, [hl]
    adc b
    ld a, b
    ld b, e
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $00
    add c
    ld b, [hl]
    rst $38
    ld b, c
    rlca
    pop bc
    rst $38
    ld b, c
    ld a, a
    jp nz, $e2be

    sbc [hl]
    ld b, e
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ldh [rNR41], a
    rst $38
    db $ec
    ld c, e
    rlca
    rrca
    rrca
    jr nc, jr_057_494b

    nop
    adc a
    add b
    cp a
    ld b, [hl]
    ld b, b
    ld a, a
    inc b
    ld a, e
    ld b, b
    ld d, l
    jr nz, jr_057_4912

    ld l, b
    ld [hl+], a
    ld bc, $0306
    inc bc
    ld [bc], a
    ld b, $0a
    ld a, [bc]
    ld bc, $1122
    ld [bc], a
    db $10
    ld de, $2202
    ld [hl+], a
    inc hl
    inc h
    ld bc, $1818
    db $ec
    ld a, [hl+]
    rlca
    add b
    ld [hl], b
    ld a, b
    dec b
    add a
    ld bc, $00f9
    ld c, d
    rst $38
    nop
    ld [$0703], sp
    inc c

jr_057_4912:
    inc e
    jr nc, jr_057_4985

    ld b, b
    ret nz

    add b
    ret z

    sbc e
    db $10
    inc bc
    ld bc, $0404
    ld [$0800], sp
    ld [$1011], sp
    ld a, [de]
    db $10
    dec [hl]
    nop
    ld a, [hl+]
    jr nz, @+$37

    ld c, b
    jr nz, jr_057_496e

    ld b, l
    rra
    db $10
    inc b
    dec de
    db $10
    dec d
    db $10
    ld [de], a
    add h
    add e
    rra
    dec h
    nop
    ld [hl+], a
    jr nz, jr_057_4965

    jr nz, jr_057_4965

    jr nz, @+$47

    nop
    ld b, e
    ld b, b
    ld b, a
    ld b, b
    ld b, e
    ld b, b

jr_057_494b:
    add a
    nop
    add a
    add b
    rrca
    nop
    adc a
    add b
    ld e, a
    ld b, b
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$43
    rlca
    db $fc
    ld b, $c0
    ldh [$38], a
    inc a
    ld b, $07

jr_057_4965:
    ld bc, $0084
    ld l, c
    db $10
    inc b
    inc b
    ccf
    ccf

jr_057_496e:
    rst $08
    call z, $181f
    cpl
    jr z, jr_057_497c

    ld b, h
    rst $00
    ld b, h
    ld b, a
    ld b, h
    rrca
    ld b, h

jr_057_497c:
    adc b
    adc a
    inc bc
    sbc a
    sub b
    rst $38
    ld h, b
    add sp, $2e

jr_057_4985:
    rst $38
    nop
    ld a, [bc]
    ld bc, $06fe
    ld hl, sp+$19
    ldh [$27], a
    ret nz

    ld e, a
    add b
    cp a
    ld h, c
    ldh [rNR52], a
    rrca
    rrca
    jr nc, jr_057_49d2

    ld h, b
    ldh [$c0], a
    ret nz

    ld h, b
    ld h, b
    jr nz, jr_057_49c2

    and b
    and b
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $03
    rst $38
    dec c
    di
    ld a, [bc]
    di
    inc bc
    ld a, [c]
    ld [bc], a
    pop af
    dec bc
    pop af
    add hl, bc
    ld hl, sp+$01
    ld hl, sp+$04
    db $fc
    push bc
    nop
    ret nz

    inc b
    inc b

jr_057_49c2:
    rst $38
    inc bc
    rst $38
    nop
    ret z

    add l
    ld b, h
    ld [$4ff8], sp
    ldh a, [rNR10]
    dec b
    rst $38
    ccf
    ret nz

jr_057_49d2:
    ret nz

    nop
    dec a
    adc b
    db $ec
    push bc
    nop
    rlc d
    ld b, b
    ld b, b
    ld h, b
    dec h
    jr nz, jr_057_49e6

    ld b, b
    ld h, b
    ld b, b
    ld b, b
    add b

jr_057_49e6:
    ret nz

    and [hl]
    nop
    ld h, h
    dec b
    nop
    add b
    ld b, b
    ret nz

    add b
    ret nz

    ld b, h
    and b
    ldh [rDMA], a
    ldh a, [rNR10]
    rlca
    ret nc

    ldh [$60], a
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    call nc, $ad00
    dec c
    inc b
    inc b
    ld a, [de]
    ld a, [de]
    ld [c], a
    ld [c], a
    ld [bc], a
    ld d, [hl]
    ld bc, $01ab
    ld d, l
    ld bc, $45ef
    ld bc, $ffff
    db $ec
    or l
    ld [$0301], sp
    rlca
    inc b
    rrca
    ld [$0707], sp
    ld bc, $88da
    ld bc, $0101
    adc l
    sbc l
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    ld b, e
    ld [$450e], sp
    db $10
    rra
    dec b
    add hl, bc
    rrca
    rrca
    rra
    dec c
    rra
    ld b, h
    rra
    add hl, de
    ld b, $1c
    rra
    rra
    rrca
    rra
    nop
    ld bc, $9f83
    ldh [rNR42], a
    inc b
    rlca
    ld [$090f], sp
    rra
    ld de, $1117
    inc de
    ld de, $2939
    dec h
    ld a, [hl+]
    ld h, $1c
    ld b, h
    ld e, l
    ld b, l
    add hl, sp
    adc c
    cp d
    adc e
    ld a, [c]
    inc de
    db $f4
    inc d
    inc [hl]
    call nc, $23e2
    pop bc
    pop bc
    add h
    push de
    inc h
    ld [bc], a
    dec d
    rlca
    inc b
    add hl, bc
    ld a, [bc]
    db $10
    ld de, $2000
    ld hl, $4221
    ld b, d
    call nz, $fce4
    db $fc
    cp b
    ld hl, sp-$38
    add sp, $70
    ldh a, [$65]

jr_057_4a88:
    rlca
    dec a
    dec a
    jp $07ff


    db $fc
    inc bc
    ld a, $43
    inc bc
    sbc $04
    ld bc, $1f3f
    rst $38
    ld h, b
    inc hl
    rst $38
    ld [bc], a
    adc [hl]
    adc [hl]
    dec h
    ld b, e
    cpl
    ld hl, $3d0e
    ld [bc], a
    ccf
    ld c, $9b
    adc h
    ld l, l
    di
    cp [hl]
    rst $38
    sbc h
    rst $30
    cp [hl]
    rst $38
    jp hl


    ld b, h
    rst $38
    jr z, jr_057_4ac3

    add sp, -$01
    ld [$77ff], sp
    rst $38
    adc c
    reti


    adc [hl]
    rst $38
    adc h
    adc a

jr_057_4ac3:
    ld [hl], h
    ld b, l
    rst $38
    ld [bc], a
    ld b, $7f
    inc bc
    rra

jr_057_4acb:
    add $c6
    inc e
    ccf
    ld b, e
    ccf
    inc c
    ld b, e
    ld [hl], a
    inc d
    add hl, bc
    rst $30
    inc d
    rst $20
    inc h
    jp $482c


    res 1, b
    adc b
    dec h
    ld [$0b07], sp
    dec bc
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    and a
    nop
    call nc, $c013
    ld b, b
    ret nz

    ret nz

    add b
    jr nz, @-$5e

    jr nc, jr_057_4a88

    db $10
    db $ec
    inc c
    ld a, [c]
    inc bc
    ld hl, sp-$40
    inc a
    ldh a, [$fe]
    ld hl, sp+$43
    ld e, a
    inc a
    rla
    ld a, a
    jr c, @+$01

    jr nc, jr_057_4acb

    ld h, b
    ld c, a
    pop de
    sbc [hl]
    jp nc, $de16

    adc [hl]
    xor $82
    ld [c], a
    add h
    db $f4
    adc b
    ld hl, sp+$58
    ld hl, sp+$20
    ldh [$c3], a
    xor [hl]
    dec b
    ld b, b
    ret nz

    and b
    ldh [$60], a
    ldh [rSCX], a
    db $10
    ldh a, [rTAC]
    ld [$08f8], sp

jr_057_4b2f:
    ret z

    jr jr_057_4b4a

    jr nz, jr_057_4b94

    ld c, c
    ldh [rNR41], a
    ld bc, $20c0
    ld b, e
    ret nz

    ld b, b
    dec hl
    add b
    inc bc
    ret nz

    ret nz

    ld b, b
    ld b, b
    or a
    nop
    cp [hl]
    jp $0496


jr_057_4b4a:
    nop
    jr nz, jr_057_4b6d

    jr nz, jr_057_4b2f

    add e
    or l
    ld [bc], a
    ld b, b
    add b
    add b
    db $ec
    cp c
    rst $38
    db $ec
    inc hl
    db $10
    ld bc, $0301
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    ld [$080d], sp
    dec bc
    db $10
    dec d
    db $10
    dec de
    db $10
    rra
    ld c, d

jr_057_4b6d:
    jr nz, jr_057_4bae

    ld b, a
    rra
    db $10
    ld b, h
    rrca
    add hl, bc
    rlca
    ld a, [bc]
    rrca
    ld a, [bc]
    rlca
    inc b
    inc c
    ld [$2218], sp
    db $10
    rlca
    ld a, [hl+]
    jr nz, jr_057_4bb9

    jr nz, jr_057_4bf0

    ld b, b
    ld [hl], l
    ld b, b
    ld a, a
    add hl, bc

jr_057_4b8b:
    inc e
    inc e
    ld h, d
    ld h, d
    ld a, [c]
    adc d
    db $fc
    inc b
    push af

jr_057_4b94:
    dec c
    ld b, e
    db $e3
    ld [de], a
    inc bc
    rst $20
    inc d
    rst $30
    inc c
    ld b, h
    rst $38
    ld [$1002], sp
    rst $38
    db $10
    ld b, h
    rst $38
    jr nz, jr_057_4baa

    ld b, b
    rst $38

jr_057_4baa:
    ld b, b
    ld b, l
    rst $38
    add b

jr_057_4bae:
    ld c, e
    rst $38
    nop
    inc b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    push bc
    add e

jr_057_4bb9:
    sbc l
    nop
    rlca
    ld [$0703], sp
    inc c
    ld e, $10
    ccf
    jr nz, jr_057_4c44

    ld b, b
    adc d
    cp a
    ld c, $01
    rst $38
    ld bc, $02fe
    rst $38
    ld [bc], a
    cp $04
    db $fd
    inc b
    cp $04
    rst $38
    inc b
    ld c, c
    rst $38
    ld [$f701], sp
    ld [$85a6], sp
    nop
    jr nz, jr_057_4b8b

    rst $20
    ld bc, $fd01
    cp d
    nop
    ld e, a
    ld [$7f1f], sp
    rst $00
    add b
    inc bc

jr_057_4bf0:
    nop
    rlca
    nop
    rra
    add l
    xor l
    ld b, $0f
    ld hl, sp+$34
    db $fc
    ld b, d
    cp $81
    add e
    nop
    cp b
    ld [bc], a
    cp a
    nop
    ld e, a
    push bc
    add c
    ld [bc], a
    nop
    cp $01
    ld b, l
    db $fc
    inc bc
    ld b, l
    ld hl, sp+$07
    ld b, a
    ldh a, [rIF]
    inc bc
    add sp, $17
    ret nc

    cpl
    add e
    add e
    inc bc
    xor b
    ld d, a
    ld d, b
    xor a
    cp e
    nop
    pop bc
    inc bc
    ldh [rSVBK], a
    db $fc
    inc c
    xor d
    nop
    db $e4
    inc b
    ret nz

    ccf
    ld hl, $111f
    ld b, e
    rra
    sub b
    ld bc, $a03f
    ld b, e
    cp a
    ld h, b
    ld [bc], a
    rst $08
    ld [hl], b
    ret nz

    and e
    nop
    db $f4
    dec bc
    rst $38
    ld b, a

jr_057_4c44:
    rst $38
    ld e, b
    ld hl, sp+$3c
    db $fc
    inc sp
    rst $38
    jr z, @+$01

    inc h
    ld b, h
    rst $38
    ld [hl+], a
    dec c

jr_057_4c52:
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld l, l
    rst $28
    ld l, d
    rst $28
    ld [hl], l
    rst $10
    or $97
    db $fd
    adc a
    db $f4
    daa
    nop
    nop
    dec c
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$a0], a
    jr nc, jr_057_4cbd

    ldh a, [$d0]
    ld hl, sp-$38
    cp h
    call nz, $00a3
    ld [c], a
    rlca
    cp $0a
    cp $02
    inc b
    db $fc
    ld a, b
    ld hl, sp-$39
    sbc h
    dec d
    ret nz

    ret nz

    ldh [rNR41], a
    ld [hl], b
    sub b
    jr c, jr_057_4c52

    inc e
    db $e4
    inc c
    db $f4
    ld c, $f2
    add [hl]
    ld a, [$f987]
    add e
    db $fd
    ld bc, $ffff
    db $ec
    ld l, e
    ldh [rNR42], a
    ld bc, $1301
    ld [hl-], a
    ld c, a
    ld c, [hl]
    ld b, a
    ld b, e
    ld b, a
    ld b, b
    daa
    jr nz, jr_057_4cd9

    ld hl, $111f
    rra
    db $10
    ccf
    inc l
    inc sp
    ld [hl-], a
    ld hl, $4421
    ld c, h
    ld b, e
    ld d, e
    ld d, d
    ld d, d
    ld e, a
    ld d, c

jr_057_4cbd:
    cpl
    add hl, hl
    ld [hl+], a
    rla
    inc b
    ld de, $0b0b
    ld b, $06
    inc hl
    inc bc
    dec b
    inc b
    inc b
    rrca
    ld a, [bc]
    rlca
    rlca
    ld [hl], a
    dec de
    jr jr_057_4cec

    inc h
    inc h
    add $c2
    rst $08

jr_057_4cd9:
    ld b, c
    adc a
    add b
    sbc a
    nop
    cp e
    nop
    rst $38
    ld b, h
    rst $38
    ld b, l
    ld a, l
    sub e
    rst $38
    nop
    rst $38
    ld c, b
    or a
    or l

jr_057_4cec:
    ld [bc], a
    ld [bc], a
    ld h, d
    jr @+$08

    add b
    adc a
    add b
    adc l
    sub b
    ld [$1980], sp
    add b
    sbc e
    ret nz

    adc $6a
    ld h, b
    ld [hl], l
    ld h, b
    rst $38
    ret nz

    rst $38
    ccf
    di
    ld [de], a
    pop hl
    pop hl
    ld a, e
    add hl, bc
    jr nc, @+$32

    ei
    set 7, h
    sbc h
    rst $38
    ld [hl], b
    rst $38
    nop
    ld b, e
    rst $38
    ld bc, $25e0
    cp $02
    cp $07
    ld sp, hl
    ret


    ld hl, $0131
    nop
    ld bc, $2918
    inc h
    ld c, a
    call nz, $c55f
    ld a, a
    ret


    ld a, $b2
    ld l, $02
    ld a, h
    inc [hl]
    db $fc
    ld c, h
    ld a, b
    ld a, b
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$48
    ldh a, [$f0]
    ld a, a
    ld [hl+], a
    add b
    jp nz, $8d80

    sub c
    ld hl, sp+$25
    adc [hl]
    dec b
    add hl, de
    add hl, de
    daa
    ld h, $27
    inc hl
    ld b, e
    daa
    jr nz, jr_057_4d56

    rra

jr_057_4d56:
    ld de, $0085
    ld a, d
    db $10
    ld [hl], e
    ld [hl], d
    sub c
    sub c
    adc b
    adc b
    sbc e
    adc e
    ld [hl], d
    ld c, d
    ld h, c
    ld [hl], c
    jr nz, jr_057_4d89

    db $10
    db $10
    ld de, $0088
    sub c
    add hl, bc
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $03
    inc bc
    add a
    nop
    or h
    rlca
    ld b, [hl]
    ld b, d
    rst $08
    pop bc
    adc a
    add b
    sbc e
    nop
    ld b, h
    rst $38
    ld b, h

jr_057_4d89:
    nop
    ld de, $0091
    jp z, $1002

    ld [$8c00], sp
    nop
    rst $18
    ld b, e
    db $e3
    ld [hl+], a
    inc bc
    pop bc
    ld b, c
    pop bc
    pop bc
    ld l, c
    dec b
    and $e6
    ld sp, hl
    sbc c
    rst $38
    ld [hl], c
    add [hl]
    ld bc, $8416
    ld bc, $0f1b
    ld h, $36
    ld [$1309], sp
    ld de, $111f
    rrca
    sub e
    rra
    call $c10f
    ld d, $82
    adc c
    ld bc, $0530
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$50]
    and e
    nop
    sbc h
    sbc a
    ld bc, $8366
    nop
    ret nz

    dec b
    rst $38
    nop
    ld a, l
    add $ff
    ld bc, $0185
    and $ff
    db $ec
    and c
    inc bc
    ld bc, $0701
    ld b, $45
    rrca
    ld [$0701], sp
    rlca
    ld a, a
    rrca
    inc c

jr_057_4dea:
    ld e, $21
    cpl
    nop
    ld a, a
    ld c, l
    ld a, a
    ld d, h
    ld d, [hl]
    jr jr_057_4e4d

    ld hl, $0f21
    rra
    db $ec
    ld hl, $0123
    dec e
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    rlca
    dec b
    dec c
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    ld a, l
    ld h, d
    rst $38
    add e
    db $fc
    inc b

jr_057_4e10:
    ld hl, sp+$0c
    ldh a, [$32]
    sub b
    ld [hl], d
    jr nc, jr_057_4dea

    db $e3
    db $e3
    inc a
    inc a
    sub a
    or a
    inc de
    ld b, $07
    ld [$100f], sp
    rra
    ld de, $1a1f
    sbc a
    adc a
    adc a
    add a
    add a
    nop
    add b
    ldh [$e0], a
    ret nz

    ret nz

    ld [hl], a
    ldh [$2f], a
    inc e
    ld e, $3f
    ccf
    ld a, a
    ld a, a
    sbc $df
    rst $38
    ld hl, sp+$7f
    jr nc, jr_057_4e81

    pop de
    cp $29
    rst $38
    jr c, jr_057_4e10

    ld b, l
    rst $00
    ld b, a
    add b

jr_057_4e4d:
    adc a
    db $fd
    ld [hl], d
    ld c, l
    jp nz, $c0af

    rla
    cpl
    rrca
    db $10
    rrca
    jr jr_057_4e62

    rla
    ld bc, $81a2
    and d
    ld b, b
    ld a, l

jr_057_4e62:
    ld b, b
    ld b, d
    jr nz, jr_057_4e88

    ld [hl+], a
    inc hl
    rla
    inc h
    dec de
    jr jr_057_4e88

    db $10
    dec bc
    inc b
    dec bc
    inc c
    dec c
    ld c, $1f
    ld e, $29
    ccf
    ret z

    rst $38
    ld [$1dff], sp
    rst $38
    cp l
    rst $38
    ld e, [hl]

jr_057_4e81:
    ld [hl+], a
    rst $38
    dec b
    db $fc
    db $fc
    pop hl
    pop hl

jr_057_4e88:
    ccf
    ccf
    ld a, e
    ld de, $e040
    ldh [$f0], a
    ldh a, [$f8]
    add sp, -$18
    cp b
    cp h
    db $fc
    ld a, h
    db $fc
    ld a, $7e
    sbc [hl]
    or $fe
    ld [hl+], a
    ld c, $0f
    rrca
    rrca
    sbc a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    sbc a
    rst $18
    ccf
    and [hl]
    ld [hl], a
    pop bc
    pop de
    nop
    ld b, e
    adc b
    nop
    ld a, [bc]
    cp b
    nop

jr_057_4eb7:
    jp nz, $0400

    nop
    ld [$0504], sp
    cp $ff
    ld b, l
    rst $38
    nop
    ld a, [bc]
    cp a
    ld a, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ei
    rst $38
    ld a, l
    rst $38
    db $fd
    ld b, h
    rst $38
    cp $0b
    ld a, a
    rst $38
    cp a
    rst $38
    call c, $a0ff
    or b
    ld b, b
    ld b, c
    ccf
    ccf
    db $ec
    dec a
    and e
    ld bc, $0102
    ld b, b
    ret nz

    inc h
    jr nz, @+$08

    ldh [rNR10], a
    db $10
    ret nc

    ret nc

    ldh a, [$30]
    and h
    nop
    xor b
    inc bc
    jr nz, jr_057_4eb7

    ret nz

    nop
    jr z, @-$7e

    rrca
    ld b, $8f
    db $10
    dec de
    nop
    ccf
    xor h
    cp a
    xor d
    xor e
    add [hl]
    and [hl]
    db $10
    db $10
    rlca
    rrca
    db $ec
    ld h, c
    jp nz, Jump_057_44f9

    ret nz

    ld b, b
    ld bc, $4000
    jp $da01


    ld h, c
    rst $38
    ld a, a
    dec bc
    rra
    rra
    ld b, b
    ld a, a
    jr nc, @+$41

    rrca
    rrca
    inc bc
    inc bc
    nop
    ld bc, $0969
    ld bc, $0f03
    rra
    ccf
    ld a, a
    rra
    ccf
    inc bc
    inc bc
    ld h, e
    ld bc, $0703
    add e
    adc l
    inc bc
    rrca
    rra
    ld bc, $8803
    sbc a
    nop
    ld bc, $8585
    ld bc, $0302
    db $ec
    jr nz, jr_057_4f51

    add b
    ld a, a
    rst $38
    db $fc
    rst $38

jr_057_4f51:
    ld hl, sp+$22
    rst $38
    add hl, bc
    di
    rst $38
    ld a, b
    rst $38
    inc a
    ld a, a
    ld a, $3f
    ld a, a
    ld a, a
    daa
    rst $38
    ld [$fffe], sp
    db $fd
    rst $38
    ld [hl], e
    ld a, a
    rst $28
    rst $38
    ld hl, sp+$28
    rst $38
    ld de, $1f0f
    ccf
    ccf
    ld a, e
    ld a, a
    ld [hl], l
    rst $38
    db $e3
    rst $38
    ld c, e
    ld a, a
    sub a
    rst $38
    dec hl
    rst $38
    ld d, a
    rst $38
    xor d
    nop
    dec l
    rlca
    ldh [$b0], a
    ldh a, [$58]
    ld a, h
    ld c, [hl]
    ld a, [hl]
    cpl
    ld b, h
    ccf
    daa
    ld c, $13
    rra
    ld de, $081f
    rrca
    jr c, jr_057_4fd7

    call nz, $04ff
    rst $38
    dec b
    rst $38
    ccf
    and [hl]
    rst $08
    ld c, $0f
    rst $38
    ld bc, $02ff
    rst $38
    add c
    rst $38
    jp $e7ff


    rst $38
    adc a
    rst $38
    ccf
    jr z, @+$01

    inc bc
    ccf
    rst $38
    rst $18
    rst $38
    adc c
    push af
    inc bc
    db $fc
    rst $38
    db $fd
    ei
    ld b, e
    ld hl, sp-$09
    inc bc
    rst $30
    rst $28
    pop hl
    rst $18
    sub e
    nop
    ld l, [hl]
    nop
    ret nz

    and l
    nop
    ld b, h
    rlca
    cp $ff
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38

jr_057_4fd7:
    cp a
    jp $cad5


    or e
    add l
    adc a
    dec bc
    rst $38
    db $fd
    ei
    db $fd
    cp $f9
    rst $38
    ld hl, sp-$05
    db $fc
    rst $38
    db $fc
    set 1, [hl]
    rrca
    sbc a
    ld h, a
    inc bc
    db $fd
    nop
    rst $38
    db $e3
    rst $38
    scf
    rst $38
    rra
    rst $38
    dec e
    db $fd
    db $fc
    db $fc
    sbc h
    nop
    ld h, l
    ld [de], a
    add b
    ldh [$e0], a
    sbc b
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $81
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    or d
    rst $30
    pop af
    pop af
    inc h
    ldh a, [rNR51]
    ld hl, sp+$13
    db $fc
    db $fc
    cp $ff
    rst $38
    ld a, a
    rst $18
    db $fd
    ld c, a
    rst $38
    add hl, bc
    cp $00
    db $fc
    ld [bc], a
    ld hl, sp-$5c
    add sp, -$0c
    or $22
    cp $a3
    nop
    ld a, [hl-]
    rlca
    ld a, b
    ld hl, sp+$60
    ldh a, [$80]
    ret nz

    add b
    add b
    db $ec
    add hl, hl
    and e
    nop
    ld e, h
    inc h
    ldh [rSCX], a
    ldh a, [rSVBK]
    ld [hl+], a
    ld [hl], b
    dec b
    ld d, b
    ld e, b
    jr jr_057_5065

    jr c, jr_057_50c7

    jp $04e7


    ldh [$f0], a
    ldh [$e0], a
    ret nz

    cp b
    nop
    ld e, a
    rst $38
    db $ec
    scf
    add hl, de
    ld bc, $0201
    inc bc
    inc b
    dec b
    nop

jr_057_5065:
    dec bc
    nop
    inc de
    nop
    daa
    jr nz, jr_057_509b

    nop
    ld c, a
    ld b, b
    ld e, a
    jr nz, jr_057_50b1

    db $10
    rra
    add hl, bc
    rrca
    ld b, $06
    ldh a, [$39]
    rst $08
    dec bc
    dec b
    rlca
    ld a, [bc]
    rrca
    ld de, $201f
    ccf
    ld b, b
    ld a, a
    add c
    rst $38
    ld b, e
    ld [bc], a
    cp $a3
    pop de
    add hl, bc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rNR41], a
    pop hl
    ld b, c
    pop bc
    inc hl
    add c
    inc bc

jr_057_509b:
    ld bc, $0101
    ld bc, $20f0
    rst $00
    inc c
    ld [bc], a
    rlca
    inc b
    ld c, $08
    rrca
    ld [$101f], sp
    rra
    inc d
    rra
    ld e, $43

jr_057_50b1:
    ccf
    ld a, $01
    ld a, a
    ld a, h
    ld b, e
    rst $38
    ld hl, sp+$1c
    rst $28
    add sp, $67
    db $e4
    jp Jump_057_41c2


    pop bc
    add e
    add e
    add a
    add a
    rrca

jr_057_50c7:
    rrca
    rra
    rra
    scf
    dec a
    ld h, l
    ld h, l
    ld c, c
    ld b, c
    add hl, bc
    adc c
    adc c
    adc b
    sub b
    add b
    db $10
    ld b, [hl]
    db $10
    ld de, $3343
    jr nz, jr_057_50eb

    or e
    and b
    or a
    and b
    cp e
    and b
    ld [hl], a
    ld h, b
    dec sp
    jr nz, jr_057_5120

    jr nz, @+$3d

jr_057_50eb:
    jr nz, jr_057_5158

    ld de, $3f3f
    jp $07c0


    nop
    dec bc
    nop
    ld d, l
    nop
    xor e
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    inc b
    ld b, [hl]
    rst $38
    ld c, $44
    rrca
    rst $38
    inc b
    db $fd
    rrca
    cp $07
    db $fd
    ld b, e
    rlca
    db $fc
    nop
    rst $00
    ld c, b
    db $fc
    rst $38
    add hl, bc
    rst $30
    cp $f3
    cp $e3
    cp $c3
    cp $02
    cp $46

jr_057_5120:
    ld [bc], a
    db $fc
    ld b, e
    rst $38
    ld bc, $ff4b

jr_057_5127:
    nop
    nop
    rst $38
    xor [hl]
    nop
    jp $e005


    ld h, b
    ldh a, [rNR10]
    ei
    rrca
    push bc
    nop
    sbc l
    ld c, l
    rst $38
    ld bc, $c384
    inc c
    add h
    ld hl, sp-$78
    ldh a, [$90]

jr_057_5142:
    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$7c
    db $fc
    ld a, $fe
    ld b, e
    ccf
    rst $38
    ld bc, $f919
    ld b, e
    db $10
    ldh a, [rDMA]
    ld [$0af8], sp
    ld a, c

jr_057_5158:
    db $10
    ld [hl], c
    db $10
    ld [hl], d
    jr nz, jr_057_5142

    ret nz

    call nz, Call_057_43c0
    jp $a500


    inc b
    cp $0e
    rst $38
    ld bc, $90ff
    nop
    or c
    inc bc
    ld h, b
    ldh [rNR10], a
    db $10
    dec h
    ld [$3803], sp
    jr c, jr_057_51b9

    ld b, b
    db $f4
    ld hl, $b000
    and e
    nop
    ret nc

    ld bc, $4040
    ld b, h
    jr nz, jr_057_5127

jr_057_5187:
    ld [bc], a
    jr nz, jr_057_519a

    jr nc, jr_057_51cf

    db $10
    ld d, b
    ld bc, $8808
    add e
    cp e
    ld [bc], a
    ld l, b
    ld a, b
    ld c, b
    ld b, h
    ld a, b
    ld e, b

jr_057_519a:
    rst $38
    db $ec
    rst $20
    ld [hl+], a
    ld bc, $0243
    inc bc
    inc b
    inc b
    rlca
    inc b
    ld b, $05
    ld b, e
    inc b
    rlca
    dec bc
    rlca
    rlca
    dec b
    dec c
    ld a, [de]
    jr jr_057_51cb

    ld a, [hl-]
    dec c
    dec c
    rlca
    rlca
    ld h, c

jr_057_51b9:
    ldh [$30], a
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld b, $06
    add hl, bc
    rrca
    inc b
    rla
    inc d
    rla
    inc b
    daa

jr_057_51cb:
    jr nz, jr_057_51f0

    ld [bc], a
    ld b, e

jr_057_51cf:
    ld b, d
    ld b, e
    ld [hl], d
    ld [hl], e
    ld a, $2f
    ld a, $23
    ld [hl], $27
    ld h, [hl]
    ld b, [hl]
    ld h, l
    ld b, a
    ld [hl], c
    ld a, c
    ld c, l
    ld a, l
    ld [hl], e
    ld a, a
    ld b, a
    ld a, e
    dec b
    dec [hl]
    add hl, de
    add hl, de
    ld bc, $0001
    ld c, b
    inc bc
    ld [bc], a
    inc hl

jr_057_51f0:
    ld bc, $030b

jr_057_51f3:
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    inc b
    ld b, $07
    inc b
    inc bc
    inc bc
    ld h, e
    ld a, [bc]
    inc e
    ld a, $e1
    rst $18
    ret nz

    jr nz, jr_057_5187

    ld b, b
    nop
    ret nz

    nop
    ld b, e
    add b
    ld bc, $9e1f
    nop
    pop hl
    ld b, b
    add b
    ldh a, [$c0]
    ccf
    ldh a, [rBGP]
    ld e, a
    ld e, b
    ld b, a
    dec [hl]
    ld [bc], a
    ccf
    nop
    sbc e
    adc h
    ld a, l
    ld h, e
    cpl
    ld a, $5f
    ld b, h
    ld e, a
    ld b, d
    ccf
    daa
    cp $ff
    ld a, $43
    rst $38
    ccf
    ld c, d
    rst $38
    rra
    dec c
    inc e
    rst $38
    inc bc
    inc de
    ld [c], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc b

Jump_057_5243:
    rst $38
    ld b, e
    ld a, [bc]
    ei
    rla
    xor d
    ld e, e
    ld e, d
    xor e
    or b
    ld d, e
    ld d, c
    or c
    or c
    ld d, c
    ld de, $21f1
    pop hl
    ldh [$e0], a
    jr nz, jr_057_527a

    ld d, c
    pop af
    sub c
    pop af
    ld sp, $a771
    rst $28
    ld h, c
    add hl, bc
    add b
    ret nz

    and b
    ld [hl], b
    adc b
    jr jr_057_51f3

    ld [$0c84], sp
    inc hl
    inc b
    dec bc
    ld [$08c8], sp
    jr c, jr_057_527e

    ld [$0404], sp
    db $fc

jr_057_527a:
    inc b
    ld hl, sp-$08
    ld b, e

jr_057_527e:
    ldh [rNR41], a
    and e
    ld bc, $e03e
    ld h, $c0

jr_057_5286:
    ld h, b
    ldh a, [$58]
    db $fc

jr_057_528a:
    call nz, $e23e
    dec sp
    pop hl
    dec d
    pop af
    ld a, [de]
    ld a, [c]
    inc d
    db $fc
    ld [$0cfc], sp
    db $fc
    adc [hl]
    ld hl, sp-$71
    ld hl, sp-$7b
    rst $28
    sub [hl]
    sbc [hl]

jr_057_52a1:
    db $ec
    db $fc
    inc h
    db $fc
    inc l
    db $f4
    jr c, jr_057_52a1

    jr nc, @-$0e

    nop
    ld b, h
    ldh a, [rNR10]
    rlca
    or b
    ld d, b
    ld d, b
    or b
    jr nz, jr_057_5286

    ld e, b
    xor b
    ld b, l
    ld [$00f8], sp
    sub b
    ld [hl+], a
    ldh a, [$09]
    jr jr_057_528a

    ld e, h
    db $fc
    ld [hl+], a
    ld a, [c]
    sbc $e2
    inc a
    inc a
    db $ec
    inc [hl]
    inc bc
    ret nz

    ld b, b
    ld b, b
    nop
    ld [hl+], a
    jr nz, jr_057_52d7

    ld b, b
    ld b, b
    add b

jr_057_52d7:
    add b
    db $ec
    sbc a
    rst $38
    db $ec
    dec h
    rrca
    jr nc, jr_057_5310

    ld a, h
    ld c, h
    ld h, [hl]
    ld b, d
    jp $f181


    add b
    ld sp, hl
    add b
    db $fc
    add b
    cp $80
    ld b, l
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_057_5338

    rra
    db $10
    ld a, [bc]
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    ld [hl+], a
    inc b
    inc bc
    nop
    ld [$1d18], sp
    ld b, e
    jr z, jr_057_533c

    dec b
    ld c, h
    ld b, a

jr_057_5310:
    ld e, h
    ld b, a
    ld a, [hl]
    ld b, e
    ld [hl], c
    jp $02a6


    ld [bc], a
    inc bc
    nop
    ld c, b
    rlca
    inc b
    ld b, e
    ld [bc], a
    inc bc
    rst $00
    sub d
    inc hl
    add b
    ld bc, $40c0
    ld b, e
    ldh [rNR41], a
    inc c
    ld [hl], b
    db $10
    or b
    db $10
    ret c

    ld [$08b8], sp
    ret c

    add hl, bc
    xor $06

jr_057_5338:
    call c, $0444
    db $fc

jr_057_533c:
    ld c, $fe
    ld [bc], a
    cp $83
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ld a, $e1
    ld a, $e3
    inc a
    rst $20
    jr jr_057_5392

    rst $38
    nop
    nop
    rst $38
    adc d
    rst $10
    ld de, $0c03
    inc e
    ld h, b
    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    add c
    nop
    rst $00
    nop

jr_057_5362:
    xor e
    nop
    rst $10
    nop
    ld c, d
    rst $38
    nop
    dec b
    add b
    rst $38
    ld h, b
    ld a, a
    db $10
    rra
    ld b, e
    ld [$470f], sp
    inc b
    rlca
    ld b, e
    ld [$0c0f], sp
    db $10
    ccf
    ret nz

    push bc
    nop
    ld [bc], a
    nop
    dec b
    nop
    rrca
    nop
    ccf
    nop
    ld d, l
    rst $38
    nop
    ld l, b
    ld a, [bc]
    ldh a, [$f0]
    rrca
    rrca

jr_057_5390:
    nop
    rlca

jr_057_5392:
    nop
    ld e, $00
    ld a, h
    nop
    ld b, l
    db $fc
    nop
    ld [bc], a
    cp $00
    cp $b1
    pop hl
    ld bc, $f808
    ld c, c
    db $10
    ldh a, [rSCX]
    ld [$03f8], sp
    inc b
    db $fc
    ld [bc], a
    cp $c4
    sbc c
    ld d, $fc
    nop
    add sp, $00
    call nc, $ea00
    nop
    push de
    ld bc, $07eb
    cp $0e
    ld hl, sp+$1e
    ldh a, [$3f]
    ldh [$3e], a
    ldh [$78], a
    ret nz

    ld l, e
    add hl, bc
    inc bc
    ld bc, $fcfc
    nop
    ld h, b
    nop
    jr nc, jr_057_5362

    or b
    ld b, e
    rst $00
    ret c

    dec b
    ld b, a
    ld e, b
    rlca
    dec de
    inc c
    inc [hl]
    add l
    pop de
    ld bc, $e020
    and e
    nop
    add h
    ld a, c
    and h
    nop
    ld [hl], d
    ld [$2040], sp
    ld h, b
    jr nz, jr_057_5390

    ld a, h
    ld a, b
    jp $8482


    nop
    add $05
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    ld l, h
    dec b
    ldh [$e0], a
    ld e, $1e
    rlca
    ld bc, $01c4
    ld h, l
    inc b
    inc c
    ldh a, [$30]
    ret nz

    ret nz

    db $ec
    scf
    add e
    nop
    sub b
    add l
    nop
    sub d
    ld bc, $20e0
    rst $38
    db $ec
    pop hl
    dec c
    ld [$1d08], sp
    dec d
    ld a, [de]
    rla
    ld [de], a
    rra
    ld [$110f], sp
    rra
    dec bc
    rrca
    inc hl
    inc b
    nop
    inc bc
    ld c, [hl]
    inc bc
    ld [bc], a
    nop
    nop
    ld h, $01
    ld h, e
    ret


    add c
    ld bc, $0101
    add l
    adc d
    nop
    nop
    ld [hl+], a
    ld [bc], a
    nop
    nop
    inc h
    inc b
    nop
    nop
    ld [hl+], a
    ld [$0903], sp
    ld [$0f06], sp
    add [hl]
    sbc l
    ld bc, $0002
    inc h
    ld [bc], a
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0302
    add l
    adc b
    add a
    jp $44e0


    add a
    adc a
    cp [hl]
    or c
    db $fc
    jp $bfcf


    ccf
    ldh [$9f], a
    add b
    cp a
    add b
    sbc [hl]
    pop hl
    rst $28
    sub b
    sbc $21
    ccf
    and c
    or a
    and c
    add a
    add b
    add a
    ret nz

    ld e, a
    db $e4
    ld [hl], $f9
    rrca
    cp $3f
    db $fd
    ld a, [hl]
    jp nc, $a4f8

    db $fc
    and h
    db $ec
    and d
    add $4e
    rst $18
    ld c, d
    dec de
    adc c
    add hl, hl
    sbc a
    pop af
    inc de
    ldh a, [$92]
    ld h, b
    ld [hl], d
    ld b, b
    ld [de], a

jr_057_549f:
    jr nz, jr_057_54b7

    ld d, b
    ld [$002a], sp
    ld d, h
    nop
    xor d
    and [hl]
    add c
    ld a, [bc]
    ld a, [hl+]
    add b
    inc e
    rst $38
    ld [hl], h
    rla
    ld [hl], d
    inc de
    ld [hl], b
    inc de
    ld h, c
    ld b, h

jr_057_54b7:
    ld hl, $43e1
    ldh [rNR41], a
    add hl, bc
    jr nz, jr_057_549f

    pop hl
    ld hl, $f111
    db $10
    db $10
    ldh [$e0], a
    ld h, e
    dec bc
    dec b
    dec b
    adc [hl]
    adc e
    ld l, [hl]
    ei
    jr @+$01

    ld [$c6ff], sp
    rst $38
    ld b, e
    jp hl


    add hl, sp
    dec de

Call_057_54d9:
    ld h, $de
    pop af
    rra
    ld a, c
    rrca
    dec a
    ld d, a
    dec l
    ld d, a
    db $fd
    rla
    ret c

    ccf
    and h
    ld a, a
    call nc, $94ff
    rst $38
    ld a, [c]
    rst $38
    ld d, d
    ld a, a
    ld l, d
    ccf
    ld [$433f], a
    ld sp, hl
    ld c, a
    ld b, e
    db $fd
    daa
    ld [de], a
    db $ed
    rla
    db $ec
    rla
    ld hl, sp-$71
    ld [hl], c
    sbc a
    add hl, hl
    ld a, a
    ld a, [de]
    ld e, $14
    inc d
    db $10
    db $10
    ld [$8808], sp
    ld [hl+], a
    ld [$8400], sp
    ld [hl+], a
    inc b
    ld [bc], a
    sbc b
    jr @+$62

    ld b, h
    ldh [rNR41], a
    ld bc, $9060
    ld b, l
    ldh a, [rNR10]
    dec bc
    ld [hl], b
    sub b
    adc b
    ld hl, sp-$18
    sbc b
    ld [$08f8], sp
    jr @-$0e

    ldh a, [$61]
    inc bc
    ld b, b
    ld b, b
    ldh [$a0], a
    add e
    rst $38
    ld b, e
    ld b, b
    ret nz

    ld bc, $e0a0
    and e
    ld bc, $654c
    xor a
    ld bc, $010c
    add b
    add b
    ld c, c
    ld b, b
    ret nz

    add hl, bc
    jr nz, @-$1e

    db $10
    ldh a, [rOBP0]
    ld hl, sp+$30
    ldh a, [rNR41]
    ldh [$c5], a
    cp b
    db $ec
    sbc e
    rst $38
    db $ec
    cpl
    dec b
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    ld b, e
    jr nz, jr_057_55a5

    add hl, bc
    ld e, h
    ld a, a
    ld l, e
    ld a, a
    dec [hl]
    ccf
    ld a, $3f
    rlca
    rlca
    add [hl]
    sbc c
    inc c
    rlca
    rrca
    jr @+$41

    jr nz, jr_057_55f4

    ld b, l
    ld [hl], l
    ld l, d
    cp d
    db $fd
    sub $ff
    add e
    sbc e
    inc bc
    rrca
    rrca
    ld bc, $ec01
    ld [hl+], a
    ldh [rNR52], a
    ld bc, $0e07
    inc de
    jr nc, jr_057_560a

    ld b, a
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    cp b
    cp a
    ld a, h
    rst $38
    rra
    pop af
    rra
    ldh a, [$3d]
    ld [c], a
    ld a, [hl+]
    push af

jr_057_55a5:
    ld e, $ff
    rst $18
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, a
    ld c, $7f
    cp a
    xor a
    ld e, a
    ld b, b
    cp a
    add c
    ld a, a
    rlca
    rst $38
    sbc e
    rst $38
    db $fd
    rst $38
    ei
    ld [hl+], a
    rst $38
    ldh a, [rNR42]
    db $dd
    inc bc
    pop bc
    pop bc
    pop af
    ld [hl-], a
    ld b, e
    dec bc
    ld a, [$0745]
    db $fc

jr_057_55d6:
    ld b, e
    add hl, bc
    cp $0a
    ret c

    rst $38
    db $fc
    ccf
    ld e, a
    and e
    add c
    ld a, a
    inc bc
    rst $38
    db $e3
    ld l, $ff
    ld a, [bc]
    push af
    rst $38
    db $eb
    rst $38
    push de
    rst $38
    jp z, $81ff

    rst $38
    add b
    ld b, h

jr_057_55f4:
    rst $38
    nop
    nop
    add b
    sbc a
    rst $18
    nop
    add b
    ld [hl+], a
    ld b, b
    inc c
    ld b, c
    ld [hl+], a
    ld h, [hl]
    and a
    ld l, b
    xor a
    ld l, b
    sbc [hl]
    ld [hl], c
    dec e
    ld a, [c]

jr_057_560a:
    ld a, [de]
    push af
    ld b, e
    ld [$0aff], sp
    dec c
    rst $38
    rra
    db $fc
    ld a, b
    rst $20
    ret nz

    rst $38
    ldh [rIE], a
    db $e3
    ld [hl-], a
    rst $38
    inc b
    ld a, a
    rst $38
    xor c
    rst $38
    ld d, h
    ld b, a
    rst $38
    nop
    nop
    rst $38
    db $f4
    inc hl
    nop
    ld c, $13
    ld a, b
    jr c, jr_057_55d6

    ld e, [hl]
    ld d, c
    xor a
    and e
    ld e, a
    ld b, a
    cp a
    rrca
    rst $38
    ld c, $fe
    rra
    rst $38
    db $fc
    rst $00
    add h
    ld a, a
    ld b, e
    ld [bc], a
    rst $38
    inc b
    inc a
    rst $38
    db $fd
    rst $38
    cp $84
    nop
    cp c
    ld [bc], a
    cp $fe
    rst $38
    add h
    adc c
    ld de, $ffea
    push af
    rst $38
    xor b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_057_5665:
    rst $38
    db $ec
    cpl
    dec b
    ldh [$e0], a
    jr jr_057_5665

    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $08
    dec e
    rst $38
    ld l, e
    rst $38
    rst $10
    rst $38
    cp [hl]
    cp $70
    and h
    nop
    ld e, l
    rla
    add b
    add b
    ldh a, [$f0]
    ld c, h
    db $fc
    add d
    cp $01
    rst $38
    inc bc
    rst $38
    ld c, $ff
    dec [hl]
    rst $38
    db $eb
    rst $38
    sub $fe
    ld hl, sp-$08
    ret nz

    ret nz

    rst $38
    db $ec
    inc a
    ld [hl+], a
    ld bc, $0101
    ld bc, $27f0
    xor b
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, e
    rlca
    dec b
    ld b, e
    inc c
    dec bc
    ld bc, $0706
    sub b
    cp c
    db $10
    ret nz

    ld h, c
    ld hl, $1fbe
    ld a, [de]
    add l
    ld b, b
    adc c
    cp a
    ret z

    ld c, b
    ld a, a
    inc d
    ccf
    rlca
    rrca
    ld l, c
    ldh [rNR50], a
    inc b
    inc c
    ld [de], a
    ld [de], a
    rlca
    ld hl, $212f
    ld c, $41
    ld e, h
    ld b, e
    inc e
    add e
    cp l
    add e
    ld a, $03
    dec a
    dec b
    cp l
    adc l
    cp $52
    rst $18
    ld hl, $519e
    ld e, a
    ret z

    sbc a
    add h
    sbc a
    add d
    sbc a
    jp nz, Jump_057_437f

    call nz, $04ff
    xor b
    rst $38
    sub b
    ld a, a
    ld d, b
    ld b, l
    ld a, a
    ld c, b
    ld de, $d1ae
    cp [hl]
    ld d, c
    inc a
    inc hl
    ld a, b
    rra
    db $e3
    rra
    add h
    rst $38
    ld l, c

jr_057_5709:
    rst $38
    ld e, $ff
    ldh a, [$f8]
    or l
    nop
    ld d, h
    nop
    ld b, b
    ld [hl+], a
    ret nz

    ld d, $e0
    jr nz, jr_057_5709

    sub b
    sbc b
    ld hl, sp+$26
    ld a, $c7
    ld sp, hl
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add c
    ld a, a
    add [hl]
    ld a, [hl]
    adc d
    ld b, [hl]
    ld a, [hl]
    add d
    inc de
    nop
    cp $00
    db $fc
    inc b
    db $fc
    nop
    db $fc

jr_057_5739:
    ld [$00f8], sp
    ld hl, sp+$30
    ldh a, [$e0]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    db $ec
    daa
    add e
    db $db
    ld bc, $20e0
    add e
    or c
    ldh a, [$35]
    nop
    add hl, bc
    add a
    nop
    ld [hl], b
    nop
    inc b
    or d
    push af
    inc bc
    pop hl
    pop hl
    cp a
    ld e, $87
    nop
    or b
    ld bc, $073e
    sub c
    nop
    cp d
    inc bc
    ld a, a
    call nz, $a8ff
    add a
    nop
    adc $01
    rst $38
    adc b
    add l
    nop
    jp c, $0188

    nop
    inc b
    db $10
    sbc b
    ld hl, sp+$66
    ld a, [hl]
    adc e
    ld bc, $020e
    add d
    ld a, [hl]
    add [hl]
    ld c, b
    ld a, [hl]
    add d
    adc c
    ld bc, $8f26
    nop
    ld a, $8d
    ld bc, $01a0
    ld bc, $8b01
    nop
    ld e, [hl]
    dec b
    rlca
    ld b, $f8
    cp $16
    adc c
    adc l
    nop
    sub d
    add a
    ld bc, $05c0
    inc a
    rlca
    cp h
    adc a
    cp $53
    adc e
    ld bc, $44ce
    rst $38
    ld b, h
    nop
    jr z, jr_057_5739

    ld bc, $09de
    rst $28
    sub b
    rst $28
    db $10
    ld l, [hl]
    sub c
    cp h
    ld d, e

jr_057_57bf:
    ld h, b
    ccf
    adc c
    ld bc, $03f0
    jr jr_057_57bf

    ld h, $fe
    adc c
    ld bc, $01fe
    add b
    ld a, a
    add e
    ld [bc], a
    ld [$8201], sp
    ld a, [hl]
    rst $38
    ld l, e
    dec e
    ld bc, $0600
    ld [bc], a
    rrca
    rrca
    db $10
    db $10
    jr nz, jr_057_57e2

jr_057_57e2:
    jr nz, jr_057_5804

    ld e, h
    inc e
    ld h, b
    ld h, b
    pop bc
    ld b, b
    add d
    add b
    adc a
    add b
    sbc a
    add b
    cp a
    add b
    ld a, a
    ld b, e
    inc a
    inc a
    ld [hl], a
    rlca
    ld bc, $0100
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    and e
    or l
    inc bc
    inc b

jr_057_5804:
    inc b
    ld [$2500], sp
    ld [$87a7], sp
    ld l, e
    dec d
    ld hl, sp-$08
    ld b, $06
    dec b
    ld bc, $00c3
    dec b
    nop
    dec bc
    nop
    rla
    nop
    dec hl
    nop
    ld d, a
    nop
    xor a
    nop
    ld a, a
    nop
    ld b, h
    rst $38
    nop
    ld [bc], a
    ldh [$1f], a
    db $10
    ld c, c
    rrca
    ld [$1f43], sp
    db $10
    add hl, bc
    dec e
    db $10
    ld a, [hl-]
    jr nz, jr_057_586b

    jr nz, jr_057_5882

    ld b, b
    add c
    add b
    ld a, c
    inc bc
    ld bc, $0200
    nop
    adc a
    nop
    nop
    dec b
    adc b
    adc b
    ret nc

    ld d, b
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    inc hl
    add b
    ld h, c
    dec bc
    adc d
    add b
    sub l
    nop
    rst $28
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$08
    xor e
    rst $18
    ld b, e
    db $fc
    inc b
    inc b
    ld a, [hl]
    ld [bc], a
    rst $38
    ld bc, $c27f
    db $fd

jr_057_586b:
    ld b, a
    ld a, a
    nop
    ld b, e
    ccf
    nop
    ld [bc], a
    rra
    nop
    cpl
    add h
    add e
    nop
    ld d, a
    add h
    nop
    ld a, c
    nop
    xor e
    ld l, b
    dec b
    rlca
    inc bc

jr_057_5882:
    jr c, @+$1a

    ret nz

    ret nz

    ld h, c
    ld bc, $0303
    push bc
    rst $28
    ld [$0005], sp
    rrca
    ld c, $15
    ld bc, $000a
    push af
    add l
    nop
    add c
    ld [bc], a
    pop hl
    ld e, $1e
    ld [hl], e
    dec c
    rlca
    inc bc
    sbc b
    sbc b
    ldh [$60], a
    ldh [rNR41], a
    db $fc
    ld [$06fe], sp
    rst $38
    ld bc, $ff53
    nop
    xor b
    nop
    call nz, $8018
    ld h, b
    ld h, b
    jr @+$1a

    inc e
    inc b
    cp $c2
    ld a, $32
    ld e, [hl]
    ld a, [bc]
    cp h
    inc b
    ld a, h
    inc b
    db $fc
    inc b
    ld hl, sp-$78
    ld hl, sp+$48
    ldh a, [$30]
    add e
    nop
    call nc, $8000
    adc [hl]
    nop
    and c
    inc c
    ld b, $02
    add hl, bc
    ld bc, $1111
    inc hl
    ld hl, $c1e7
    rra
    add hl, bc
    inc bc
    call nz, $cd00
    ld b, $01
    nop
    inc bc
    nop
    sub l
    add b
    db $eb
    add a
    rst $10
    nop
    ld [$ff44], sp
    inc b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    db $ec
    ld b, c
    dec b
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    add a
    nop
    ldh a, [$85]
    nop
    or $05
    ld a, [$f20a]
    ld [de], a
    pop af
    ld de, $e143
    ld hl, $ecff
    inc sp
    rrca
    inc bc
    inc bc
    rrca
    inc c
    dec e
    ld [de], a
    inc de
    inc h
    inc sp
    inc h
    ld h, e
    ld c, b
    ld h, a
    ld c, b
    ccf
    ld b, b
    ld c, e
    rst $28
    sub b
    ld bc, $403f
    ld b, l
    ld [hl], a
    ld c, b
    rlca
    ccf
    jr nz, jr_057_596e

    inc h
    dec de
    inc d
    dec d
    ld a, [de]
    db $ec
    inc hl
    inc hl
    ld bc, $0343
    ld [bc], a
    push bc
    add d
    dec b
    ld [bc], a
    inc bc
    push bc
    rst $00
    rst $28
    dec hl
    ld b, e
    ei
    rra
    nop
    rst $38
    ld b, h
    rrca
    db $fd
    ld b, e
    ei
    rrca
    ld c, d
    rst $38
    rra
    ld b, l
    rrca
    rst $38
    ld b, e
    rlca
    rst $38
    inc bc
    inc bc
    rst $38
    ld bc, $90ff
    ret


    ld d, $03
    ld [bc], a
    rlca
    inc b
    rlca
    ld [$101f], sp
    rrca
    db $10

jr_057_596e:
    ccf
    jr nz, jr_057_5990

    jr nz, @+$81

    ld [hl], b
    ld c, a
    ld a, h
    cp h
    rst $38
    db $fc
    ld a, a
    ld a, b
    xor b
    cp b
    nop
    ld h, b
    and e
    cp d
    ld c, h
    rst $38
    ret nz

    ld c, e
    add b
    rst $38
    nop
    nop
    ld b, e
    rst $38
    nop
    jp z, $0181

    ret nz

jr_057_5990:
    ld a, a
    ld l, b
    ld a, [bc]
    rlca
    rra
    jr c, @+$7a

    ret nz

    ldh [rP1], a
    ret nz

    nop
    pop hl
    nop
    ld c, l
    rst $38
    nop
    rlca
    ld a, a
    add b
    cpl
    ret nc

    ld d, c
    xor [hl]
    xor d
    ld d, l
    and e
    add c
    ld bc, $eb14
    add l
    sub h
    dec bc
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $83fe
    xor d
    adc e
    sub l
    ld b, e
    ccf
    ret nz

    add hl, bc
    rra
    ldh [$57], a
    xor b
    dec hl
    call nc, $ea15
    add hl, bc
    or $a8
    sbc $08
    ldh a, [$f4]
    ld c, $7e
    ld bc, $003f
    ld a, a
    nop
    ld d, a
    rst $38
    nop
    ld bc, $807f
    ld b, l
    ccf
    ret nz

    nop

jr_057_59e6:
    ld a, a
    add a
    ld bc, $020c
    ld bc, $01fe
    and l
    adc e
    ld bc, $807f
    ld b, e
    ld a, [hl]
    add c
    nop
    cp $aa
    ld bc, $020c
    db $fd
    nop
    ld a, [$8385]
    or d
    nop
    pop bc
    inc b
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$43
    inc b
    db $fc
    ld [$fe02], sp
    ld a, [bc]
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld bc, $df43
    ld hl, $ee05
    dec e
    cp $02
    db $fc
    ld [bc], a
    call nz, $0295
    jr nc, jr_057_59e6

    ld b, b
    inc hl
    add b
    ld h, c
    ld a, [de]
    ret nz

jr_057_5a2c:
    ldh [$f8], a
    jr jr_057_5a2c

    inc b
    ld a, [c]
    ld c, $fd
    inc bc
    push hl
    add hl, de
    db $e3
    dec b
    pop af
    inc bc
    ld a, [hl]
    ld [c], a
    sbc h
    sbc h
    add b
    add b
    nop
    add b
    add b
    ld b, b
    ld b, b
    and e
    nop
    adc c
    ld b, e
    ld b, b
    add b
    nop
    add b
    rst $38
    db $ec
    sub c
    ld [bc], a
    ld bc, $0201
    ld b, e
    ld [bc], a
    inc bc
    ld a, [bc]
    inc bc
    dec b
    inc b
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld hl, sp+$47
    sub b
    nop
    ld bc, $da82
    push bc
    call $0301
    inc bc
    add l
    push de
    rra
    ld bc, $0303
    inc b
    add e
    add e
    ld h, c
    ld h, c
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    adc b
    db $10
    sub b
    ldh [$e1], a
    and e
    ld h, e
    ld [hl], a
    or h
    di
    inc c
    db $fd
    add d
    ld a, l
    ld b, e
    ld a, $32
    inc c
    inc c
    ld h, e
    inc hl
    ld bc, $0000
    push bc
    or l
    ld b, [hl]
    ld bc, $0000
    ld bc, $838e
    add hl, bc
    ld [bc], a
    inc bc
    dec b
    inc c
    ld [$121f], sp
    ld de, $0f0f
    ld h, a
    ldh [rBGP], a
    dec c
    dec e
    ccf
    ld h, [hl]
    ld [$d49d], a
    dec hl
    add b
    ld a, a
    add b
    ld d, a
    ld hl, $23ff
    rst $38
    ld [hl], a
    db $dd
    sbc $e9
    cp l
    inc hl
    cp a
    and c
    adc [hl]
    and c
    rrca
    add b
    pop bc
    jp z, $e43b

    call $3fcf
    add hl, sp
    ld d, b
    ld d, a
    ld hl, $41bc
    ld a, b
    add b
    cp c
    add b
    ldh a, [$80]
    ld [hl], b
    ret nz

    ldh a, [rLCDC]
    ld [hl], b
    ld b, e
    ld [hl], e
    inc a
    ld a, h
    db $e4
    call nz, $a485
    inc bc
    ld [hl+], a
    ld bc, $2021
    nop
    ld bc, $1c16
    ret z

    call z, Call_057_4338
    ld hl, sp+$08
    dec d
    db $fd
    ld [$0cfb], sp
    cp a
    call z, $f777
    or e
    di
    ld [hl], c
    di
    or c
    pop af
    ld [hl], b
    pop af
    ldh [$f0], a
    ldh [$e0], a
    ld h, b
    ldh [rSCX], a
    db $10
    ldh a, [rSB]
    ldh [$e0], a
    ld h, a
    rlca
    add b
    add b
    ld h, b
    ldh [$b0], a
    ld d, b
    ld c, b
    cp b
    ld b, e
    inc b
    db $fc
    ld b, e
    ld [hl+], a
    cp $e0
    inc sp
    ld b, d
    cp $f4
    cp h
    inc a
    ld l, h
    inc a
    ld b, h
    ld a, a
    rlca
    ret c

    cpl
    di
    ccf
    ld b, c
    rst $38
    ld e, $1e
    ldh [$e0], a
    sbc b
    sbc b
    ld [$0408], sp
    inc e
    ld c, $32
    add $e1
    ld h, e
    ld h, b
    ld e, e
    ld e, b
    cp a
    or b
    rst $38
    pop bc
    cp $06
    ld hl, sp+$18
    ldh [$e0], a
    ret nz

    ld b, b
    and b
    and b
    jr nz, jr_057_5b7b

    ld b, b
    ret nz

    ld c, e
    ret nz

    ld b, b
    jp $0092


    ldh [rNR44], a
    ldh a, [rNR50]
    ld hl, sp+$0b
    ld a, b
    ld hl, sp+$44
    ld a, h
    ld c, h
    ld b, h
    add d
    cp $8a
    add $7c
    ld a, h
    ld a, l
    dec b
    add b
    ret nz

    ldh [rNR41], a

jr_057_5b7b:
    ret nz

    ret nz

    adc [hl]
    sub e
    nop
    add b
    ld b, e
    ret nz

    ld b, b
    db $f4
    ld b, a
    nop
    and h
    db $ec
    ld e, a
    rst $38
    db $ec
    ld c, e
    dec b
    inc bc
    rlca
    ld [$0708], sp
    rlca
    ld l, c
    inc bc

jr_057_5b96:
    rlca
    rlca
    rra
    jr @+$79

    dec bc
    inc c
    ld e, $11
    ld de, $0801
    ld a, [bc]
    ld [$0405], sp
    rlca
    inc b
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101
    ld [hl], c
    rrca
    ld b, $06
    add hl, bc
    add hl, bc
    inc b
    inc b
    ld a, $3e
    ld b, b
    ld b, b
    jr nc, jr_057_5bec

    inc c
    inc c
    jr nc, jr_057_5c30

    and l
    and e
    inc c
    ldh [$f8], a
    db $10
    db $10
    jr nz, @+$22

    ld b, a
    ld c, a
    rst $38
    pop hl
    cp $02
    rst $38
    db $db
    ld a, [c]
    jr @-$7e

    ld b, b
    ld h, b
    cp b
    jr @+$80

    ld b, $ff
    ld bc, $07f8
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_057_5c29

    inc c
    rrca

jr_057_5bec:
    ld [hl+], a
    inc bc
    ld [de], a
    ld [bc], a
    ld b, $04
    ld e, $18
    ccf
    jr nz, jr_057_5b96

    sbc b
    ld l, a
    ld l, h
    inc de
    inc d
    ld h, a
    ld h, l
    ld b, $06
    ld [$6808], sp
    ld [hl+], a
    ld b, b
    add hl, bc
    add b
    add b
    ld [$5700], sp
    ld [bc], a
    xor [hl]
    inc c
    ld a, a
    ld [hl-], a
    db $ec
    ld hl, $8019
    add b
    ld b, b
    ret nz

    ld [hl+], a
    and $37
    push af
    ld a, a
    call z, $e63d
    rra
    ld a, [c]
    dec l
    ld a, [c]
    ccf
    ret nz

    rst $38
    add b
    cpl
    nop

jr_057_5c29:
    ld d, a
    nop
    xor a
    nop
    ld b, l
    rst $38
    nop

jr_057_5c30:
    dec bc
    rst $18
    ld h, b
    cp a
    and b
    rrca
    db $10
    cpl
    jr c, jr_057_5c6c

    scf
    ld b, h
    ld b, l
    add a
    nop
    adc b
    ld [$0040], sp
    and b
    nop
    ld b, b
    nop
    xor d
    nop
    ld d, h
    or b
    call z, RST_00
    inc h
    ld [bc], a
    dec bc
    inc b
    inc b
    dec b
    inc b
    dec bc
    ld [$1005], sp
    dec de
    db $10
    ld d, $11
    ld b, e
    ccf
    ld hl, $3d11
    inc hl
    ld a, e
    ld b, a
    di
    rst $08
    di
    ld c, a
    db $e3
    ld e, a
    db $e3

jr_057_5c6c:
    ccf
    jp nz, $f03f

    rrca
    pop af
    rrca
    ld c, a
    rst $38
    nop
    ld d, $c3
    inc a
    nop
    rst $38
    ld h, b
    rst $38
    sub c
    sbc a
    ld [hl+], a
    ld a, $14
    inc e
    inc l
    inc a
    db $10
    ld [de], a
    xor d
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    xor e
    ld bc, $8f54
    ld bc, $0135
    ld b, b
    ld b, b
    ld b, h
    ld b, b
    ret nz

    nop
    ld b, b
    inc hl
    ret nz

    ld l, $e0
    ld bc, $e0c0
    dec h
    ret nz

    inc bc
    add b
    ret nz

    add b
    add b
    ld b, e
    ret nz

    ld b, b
    add hl, bc
    and b
    ldh [$a0], a
    and b
    ldh [$e0], a
    ldh a, [rSVBK]
    ldh a, [$50]
    ld b, e
    ld hl, sp+$08
    dec b
    ldh [rNR10], a
    ldh a, [rNR10]
    ld h, b
    ldh [$af], a
    nop
    adc b
    ld bc, $8080
    rst $38
    ld a, l
    inc bc
    ld bc, $0101
    ld bc, $47ec
    dec bc
    inc bc
    inc bc
    rst $08
    call Call_057_723e
    inc e
    db $fd
    pop bc
    rst $38
    ld h, e
    ld a, a
    ld b, e
    rst $30
    call c, $ff1d
    call c, $237f
    ld l, a
    ld b, b
    ld e, a
    ld e, [hl]
    cpl
    ld hl, $213f

jr_057_5ceb:
    ld e, $1e
    rlca
    rlca
    dec c
    add hl, bc
    rrca
    add hl, bc
    rlca
    ld b, $01
    ld bc, $0303
    dec b
    inc b
    rlca
    inc b
    ld hl, sp+$21
    xor h
    dec bc
    ld hl, sp-$08
    cp $86
    ld a, a
    pop bc
    ld a, a
    call c, $a2e3
    db $dd
    dec c
    ld b, e
    db $dd
    ld e, l
    db $10
    db $e3
    ld [hl+], a
    rst $38
    inc e
    rst $38
    add c
    rst $38
    ld b, [hl]
    cp $78
    cp $f8
    rst $38
    sbc h
    rst $38
    adc a
    rla
    ld b, e
    ld [de], a
    rra
    inc c
    inc b
    rst $38
    add hl, bc
    rra
    ld e, $ad
    and h
    db $fc
    and h
    ld a, e
    ld a, e
    inc a
    inc e
    ld hl, sp+$23
    nop
    ld l, e
    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    ld b, e
    ldh [$60], a
    dec c
    ldh a, [$d0]
    ldh a, [$90]
    ldh a, [rNR10]
    ld h, b
    jr nz, jr_057_5ceb

    ld hl, $40c2
    add d
    add d
    ld b, h
    jp nz, $1042

    ld b, b
    pop hl
    and c
    db $e3
    ld [hl+], a
    rst $20
    inc h
    rst $30
    ld d, h
    rst $38
    adc e
    ld a, [hl]
    ld [de], a
    ld a, $26
    ret c

    ret c

    db $ec
    inc sp
    inc bc
    add b
    add b
    ld b, b
    nop
    inc hl
    ld b, b
    inc bc
    ret nz

    ld b, b
    ret nz

    nop
    inc hl
    add b
    or l
    nop
    ld e, $13
    ld h, c
    ld h, c
    sub a
    sub [hl]
    adc a
    cp c
    ld h, [hl]
    ld a, [hl]
    db $10
    rra
    add hl, de
    rrca
    dec sp
    ld l, $33
    ld l, $7f
    ld c, a
    ld h, a
    ld h, b
    add l
    nop
    add b
    dec b
    rra
    ld e, $0f
    rlca
    inc bc
    inc bc
    add a
    nop
    adc b
    ld h, a
    dec c
    ldh a, [$f0]
    cp [hl]
    xor [hl]
    rra
    ld sp, $f03f
    rst $38
    rst $00
    ld hl, sp+$08
    rst $30
    inc de
    ld b, e
    rst $30
    rla
    add hl, bc
    ld hl, sp-$78
    rst $38
    ld b, a
    rst $38
    jr nz, @+$01

    ld hl, $46fe
    adc e
    nop
    call nc, $018e
    inc b
    ld b, $c0
    ret nz

    ld b, b
    ldh [$a0], a
    ld h, b
    jr nz, jr_057_5e09

    ld [hl], b
    ld d, b
    dec b
    ldh a, [$90]
    ldh a, [$30]
    ldh a, [$50]
    sub e
    nop
    jr @+$0d

    ret nz

    ret nz

    jr nz, jr_057_5e37

    ld hl, $97e1
    or $4f
    ld a, c
    ld h, $3f
    ld h, l
    dec bc
    ld [hl], b
    ld [hl], b
    adc b
    sbc b
    adc [hl]
    cp [hl]
    rrca
    ld a, c
    ccf
    ldh a, [rIE]
    add a
    adc l
    rst $28
    ld a, [bc]
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $41ff
    rst $38
    add h
    nop
    set 7, a
    ld a, a
    dec c
    rlca

jr_057_5e02:
    rlca
    ld a, a
    jr c, jr_057_5e85

    ld b, e
    ld a, a
    ld b, b

jr_057_5e09:
    ld a, $20
    ccf
    ld h, $1a
    ld a, [de]
    inc hl
    ld bc, $096b
    ld bc, $0003
    inc b
    inc b
    dec b
    ld [bc], a
    inc bc
    ld bc, $ec01
    scf
    dec d
    add b
    add b
    db $fc
    ld l, h
    xor [hl]
    ld [bc], a
    rst $10
    pop bc
    cp a
    jr c, jr_057_5e8a

    rlca
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_057_5e02

    ret


    ld b, $06
    ld h, c

jr_057_5e37:
    dec bc
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    rst $28
    nop
    ccf
    nop
    ld d, a
    ld bc, $43af
    ld [bc], a
    cp $17
    call nz, $34fc
    inc a
    dec bc
    rrca
    inc e
    rra
    jr nz, jr_057_5e91

    inc hl
    ccf
    inc e
    rra
    db $10
    rra
    rla
    rra
    ld [$0009], sp
    inc de
    db $10
    rla
    db $ec
    inc hl
    ldh [$34], a
    ret nz

    ret nz

    ldh [rNR41], a
    db $ec
    inc l
    rst $38
    inc de
    rst $38
    jp nz, $18ff

    rst $38
    ld h, [hl]
    rst $38
    add c
    ld a, a
    ld a, l
    inc e
    rra
    ldh [rIE], a
    nop
    push af
    nop
    rlc b
    add a
    nop
    dec bc
    nop
    rla
    nop

jr_057_5e85:
    cpl
    nop
    ld e, a
    nop
    cp a

jr_057_5e8a:
    nop
    ld e, a
    add b
    rst $38
    ld h, b
    rst $38
    db $10

jr_057_5e91:
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    jr nz, @+$01

    nop
    ld b, h
    rst $38
    add b
    ld bc, $ff40
    cp c
    nop
    ld l, b
    and l
    rst $10
    inc bc
    rlca
    inc b
    rrca
    dec c
    ld b, h
    rra
    ld [de], a
    dec c
    inc d
    ccf
    inc a
    cp a
    xor b
    cp a
    xor d
    rst $38
    ld d, c
    rst $38
    ld d, e
    rst $38
    ld l, e
    call nc, $ff5c
    nop
    dec b
    jr c, @+$01

    ld b, h
    rst $08
    ld b, h
    rst $18
    ld b, e
    add d
    rst $38
    ld bc, $ff82
    adc a
    nop
    ld [de], a
    ld b, e
    rrca
    ld [$7f11], sp
    ld [hl], b
    xor a
    add e
    ld e, a
    inc b
    xor a
    adc c
    rst $30
    inc sp
    db $eb
    ld b, c
    rst $30
    add c
    ei
    ld sp, $1efe
    ld b, e
    ld hl, sp+$08
    ld bc, $70f0
    ld b, e
    ret nz

    ld b, b
    ld [bc], a
    cp a
    cp a
    ret nz

    ld b, e
    rst $38
    nop
    ld [bc], a
    ld a, [$e500]
    add l
    rlc d
    ld bc, $06ff
    ld b, h
    cp $0a
    ld [bc], a
    ld bc, $01ff
    ld c, b
    rst $38
    nop
    and h
    ld bc, $061a
    cp $02
    cp $04
    db $fc
    jr @-$06

    adc a
    nop
    sub $07
    ld hl, sp+$38
    db $fc
    inc b
    ld hl, sp-$38
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    push de
    nop
    push hl
    rlca
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    or b
    jr nz, jr_057_5f8e

    or c
    nop
    ld b, d
    inc hl
    add b
    xor a
    nop
    ld l, $ff
    db $ec
    sub e
    inc hl
    ld bc, $0243
    inc bc
    ld b, e
    inc b
    rlca
    ld b, e
    ld [$030f], sp
    inc b
    rlca
    inc bc
    inc bc
    db $ec
    dec sp
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ldh [$2d], a
    ld [bc], a
    inc bc
    inc [hl]
    scf
    inc l
    ccf
    inc h
    ccf
    ld [de], a
    rra
    dec e
    dec e
    dec d
    dec d
    ld de, $2715
    inc hl
    ld a, a
    ld a, e
    ld b, h
    ld b, [hl]
    add [hl]
    sub [hl]
    adc a
    adc c
    sbc [hl]
    adc [hl]
    ld [hl], c
    pop af
    ld [hl], b
    ldh a, [$2e]
    xor $33
    db $fd
    ld b, c
    cp $60
    rst $38
    ld b, b
    rst $38
    cp b
    rst $38
    call nz, Call_057_45c7
    inc b
    rlca
    ld b, l
    ld [bc], a
    inc bc
    ld bc, $0303
    inc hl
    ld [bc], a
    nop
    inc bc

jr_057_5f8e:
    add h
    adc c
    ld [bc], a
    ld bc, $0303
    push bc
    add e
    ld bc, $0607
    inc h
    rlca
    nop
    inc b
    ld [hl+], a
    rlca
    ld [bc], a
    dec bc
    rrca
    inc c
    inc h
    rrca
    inc bc
    add hl, bc
    ld c, $07
    rlca
    ld h, c
    ld a, [bc]
    db $10
    db $10
    jr c, jr_057_5fd8

    xor b
    cp b
    set 7, e
    sbc h
    rst $38
    sub b
    ld b, [hl]
    rst $38
    nop
    ld e, $48
    rst $38
    ld l, c
    rst $38
    xor h
    rst $38
    ld a, [$d77f]
    ld e, c
    ld e, [hl]
    ld b, d
    ld a, [hl]
    ld [bc], a
    dec sp
    inc b
    ccf
    jr nz, @+$20

    add hl, de
    sbc d
    add $58
    ld a, b
    cp a
    adc a
    cp $c3
    ld e, a

jr_057_5fd8:
    cp $22
    ld b, h
    rst $38
    ld [de], a
    ld b, e
    ld a, [bc]
    rst $38
    inc d
    ld b, $ff
    dec c
    ld sp, hl
    rrca
    ld sp, hl
    add $ff
    jr nz, @+$41

    ld de, $10de
    rst $18
    ld hl, $c23e
    db $fd
    ei
    rst $38
    ei
    ld b, h
    rst $38
    rst $30
    ld c, $b5
    rst $38
    ld c, $ff
    xor l
    rst $28
    ld l, a
    rst $28
    add sp, -$11
    ld l, a
    rst $28
    ret z

    rst $08
    ld c, a
    ld [hl+], a
    rst $08
    rlca
    call nz, Call_057_47c7
    rst $00
    ret nz

    ld b, b
    add b
    add b
    ld h, l
    rra
    ld a, b
    ld a, b
    sbc h
    db $e4
    ld [$30f8], sp
    ldh a, [$60]
    ldh [rNR23], a
    ld hl, sp+$06
    cp $03
    db $fd
    rra
    rst $38
    adc b
    ld hl, sp-$28
    add sp, -$04
    db $e4
    db $fc
    db $f4
    call z, $c04c
    ld b, b
    add b
    ret nz

    add a
    and a
    ld a, [bc]
    ret nz

    ret nz

    ld h, b
    and b
    and b
    ld h, b
    and b
    ldh [$80], a
    ldh a, [$90]
    ld b, h
    ldh a, [$50]
    nop
    ld b, b
    ld b, h
    ld hl, sp+$48
    ld de, $78a8
    ld h, h
    cp h
    and h
    ld a, h
    ld h, h
    cp h
    cp b
    ld a, b
    ld hl, sp-$38
    add sp, -$38
    ldh a, [$f0]
    ret nz

    ret nz

    xor b
    ld bc, $861e
    add e
    and e
    ld bc, $0342
    jr c, @-$36

    ldh a, [$f0]
    db $ec
    pop hl
    rst $38
    db $ec
    dec h
    dec b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld b, e
    ccf
    jr nz, jr_057_60bf

    ld a, a
    ld b, b
    ld bc, $80ff
    ld b, h
    rst $38
    add c
    dec b
    add e
    db $fd
    adc a
    ld a, d
    ld a, a
    dec c
    jp nz, $ec98

    dec sp
    db $10
    ld bc, $0403
    inc b
    ld a, [hl]
    ld a, b
    db $fd
    sub b
    cp $20
    rst $18
    jr nz, @-$3f

    ld b, b
    rst $38
    ld b, b
    ld a, a
    ld b, e
    add b
    rst $38
    nop
    add b
    ld c, b
    rst $38
    nop
    ld b, h
    add b
    rst $38
    rlca
    ld a, h
    ld b, e
    ld a, b
    ld b, a
    jr c, jr_057_60da

    inc e
    inc de
    jp $2900


    dec bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc

jr_057_60bf:
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $05
    ld b, e
    rrca
    ld [$009a], sp
    inc c
    ld c, $07
    dec de
    jr c, jr_057_6111

    ret nz

    ld bc, $0300
    nop
    rlca
    nop
    ld e, a
    nop
    cp a

jr_057_60da:
    nop
    ld d, a
    rst $38
    nop
    add a
    adc b
    nop
    rra
    ld [hl+], a
    rst $38
    ld b, $bf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    ld [hl+], a
    rst $38
    nop
    ld a, h
    ld b, h
    rst $38
    nop
    ld bc, $3fc0
    sub [hl]

jr_057_60f7:
    nop
    ld l, e
    ld b, $06

jr_057_60fb:
    inc c
    ld [$f0fe], sp
    rst $18
    jr nz, jr_057_6147

    rst $38
    nop
    dec b

jr_057_6105:
    rst $18
    jr nz, jr_057_60f7

    jr jr_057_6105

    rlca
    ld d, a
    rst $38
    nop
    inc b
    ld a, a
    add b

jr_057_6111:
    inc bc
    db $fc
    ld bc, $0084
    sbc h
    ld bc, $fcfc
    inc hl
    ld hl, sp+$03
    db $fc
    db $fc
    cp $ff
    and e
    xor h
    dec b
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$0a71]
    rra
    ccf
    rst $38
    ret nz

    add c
    nop

Jump_057_6132:
    ld [bc], a
    nop
    ld d, l
    nop
    xor e
    xor b
    nop
    sbc e
    ld b, e
    cp $03
    inc bc
    rst $38
    db $e4
    rst $38
    jr jr_057_60fb

    db $e3
    jr @-$7b

    ld a, b

jr_057_6147:
    rst $38
    ld bc, $8eff
    cp $70
    ld [hl], b
    ld h, b
    ld h, b
    ldh a, [$f0]
    ld [$18f8], sp
    add sp, $2d
    push de
    ld d, l
    xor l
    xor a
    ld d, e
    ld e, a
    and e
    ld [hl], e
    dec c
    ldh a, [$f0]
    db $fc
    inc c
    cp $32
    rst $10
    ld a, c
    xor e
    db $fd
    jp nc, $a2fe

    cp $43
    inc b
    db $fc
    ld b, $18
    ld hl, sp+$60
    ldh [$80], a
    add h
    add d
    ld [hl+], a
    adc d
    nop
    jp c, Jump_057_5243

    sbc $01
    ld h, d
    cp $43
    ld [hl+], a
    db $fc
    db $10
    inc h
    call c, $f824
    ld b, h
    ld hl, sp+$48
    sub b
    ld l, b
    sub b
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld h, a
    dec bc
    inc a
    ld a, h
    ld a, [$fa86]
    ld b, $71
    adc a
    ld bc, $c2ff
    cp $ff
    db $ec
    sub l
    inc bc
    ld bc, $0201
    inc bc
    ld b, e
    inc b
    rlca
    inc bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld hl, sp+$4b
    adc d
    dec b
    rlca
    rlca
    rrca
    add hl, bc
    ld c, $0b
    ld b, a
    rra
    db $10
    rlca
    ccf
    add hl, sp
    ld [hl], c
    ld [hl], c
    ld e, e
    ld a, e
    adc l
    rst $38
    ld b, e
    jp nz, $08fe

    rst $00
    rst $38
    add h
    rst $38
    adc b
    rst $38
    jr @+$01

    ld a, b
    ld [hl+], a
    rst $38
    add h
    pop af
    ld a, [hl+]
    ld bc, $0001
    ld bc, $024f
    inc bc
    push bc
    sub l
    adc l
    nop
    and d
    add a
    adc a
    inc bc
    rrca
    rrca
    ld h, b
    ld a, a
    ld b, e
    add b
    rst $38
    inc bc
    add c
    rst $38
    add b
    adc a
    ld h, d
    rra
    ldh [$c1], a
    rst $38
    ldh [$3f], a
    ld a, a
    rst $38
    sub b
    ld e, a

jr_057_6204:
    rst $18
    sub b
    ld [hl], a
    add h
    ld [hl], d
    rst $08
    ldh [$d0], a
    ld h, $26
    rra
    add hl, de
    rst $38
    db $fd
    ld d, [hl]
    or $14
    db $f4
    sub l
    push af
    ld e, $ff
    sbc h
    ld b, h
    rst $38
    sbc b
    nop
    sub b
    ld b, [hl]
    rst $38
    jr nz, jr_057_6204

    cpl
    nop
    rst $38
    ld hl, $01ff
    rst $38
    jr z, @+$01

    ld h, $ff
    inc sp
    rst $38
    ld [hl], c
    rst $38
    ld l, b
    rst $38
    ld c, b
    rst $38
    db $e4
    rst $38
    or $ff
    sub e
    rst $38
    ld [de], a
    cp $12
    rst $38
    ld [de], a
    cp $0a
    cp $8a
    cp $da
    cp $aa
    cp $da
    cp $a9
    rst $38
    db $fc
    rst $38
    dec a
    ld a, a
    ei
    ei
    and l
    rst $30
    dec b
    ld h, b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$83]
    add e
    ldh [$2a], a
    ld e, $1e
    add hl, sp
    ccf
    rst $00
    rst $38
    ld a, $fe
    db $fc
    db $fc
    add h
    or h
    xor d
    sbc d
    xor $16
    db $ec
    inc h
    ld [hl], b
    cp b
    ld b, b
    ld b, b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
    or b
    ldh a, [$58]
    ld hl, sp-$5c
    db $fc
    inc b
    db $fc
    ld b, d
    cp $86
    cp $8e
    cp $ce
    ld b, h
    cp $5a
    nop
    ld l, d
    ld b, h
    cp $e2
    dec d
    jp nz, $41fe

    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ld sp, hl
    pop bc
    ld a, a
    pop hl
    ld e, [hl]
    db $d3
    db $fd
    rst $38
    nop
    add b
    ccf
    ld e, b
    ccf
    ret c

    ld b, e
    ccf
    ld e, b
    ld a, [bc]
    daa
    ld e, b
    inc b
    ld h, a
    rra
    ld a, h
    ccf
    ld e, b
    rst $38
    rst $38
    ld [$f822], sp
    inc bc
    jr nc, @+$72

    ldh [$e0], a
    db $ec
    ld c, [hl]
    ld [hl+], a
    add b
    inc bc
    ret nz

    ldh [rP1], a
    db $10
    ld b, a
    ldh a, [$30]
    rlca
    ret nz

    jr nc, jr_057_62d2

jr_057_62d2:
    ret z

    or b
    ld a, b
    ldh a, [$30]
    ldh a, [$50]
    rst $20
    db $ec
    jr z, @+$01

    db $ec
    sbc l
    dec h
    ld bc, $0245
    inc bc
    ld hl, sp+$37
    adc b
    ldh [rNR51], a
    inc bc
    inc bc
    inc b
    rlca
    ld [$090d], sp
    rrca
    dec c
    ld e, $1f
    ld a, [de]
    rra
    jr @+$21

    ld a, [de]
    dec a
    dec hl
    inc a
    ld a, [hl+]
    jr jr_057_6324

    inc e
    inc d
    ld a, [bc]
    ld c, $02
    inc bc
    dec c
    rrca
    ld sp, $413f
    ld a, a
    ld h, c
    ld a, a
    ld d, b
    ld a, a
    ld b, e
    sub b
    rst $38
    nop
    sub b
    ld b, [hl]
    rst $38
    ld [$e811], sp
    rst $38
    sbc b
    rst $38
    ld c, $ff
    scf
    rst $38
    ld b, a
    rst $38
    adc d
    rst $38

jr_057_6324:
    ld c, c
    ld a, a
    ld d, b
    ld a, a
    jr nc, jr_057_6369

    ld b, e
    db $10
    rra
    ld c, e
    ld [$060f], sp
    inc c
    rrca
    inc b
    rrca
    ld b, $07
    ld b, $44
    rlca
    dec b
    ld [bc], a
    inc b
    rlca
    ld [bc], a
    ld b, e
    rlca
    inc bc
    ldh [$27], a
    inc bc
    ld b, $07
    inc b
    rlca
    inc bc
    inc bc
    ld hl, sp-$08
    ld b, $fe
    ld bc, $00ff
    rst $38
    inc b
    ld e, a
    xor l
    ei
    xor a
    ld a, [$50ff]
    xor a
    ld d, d
    db $fd
    ld b, $b9
    jp c, $8d72

    ccf
    ld bc, $231f
    ld a, [bc]
    db $76

jr_057_6369:
    db $fd
    adc a
    call c, $ff44
    db $fc
    ld [de], a
    ld hl, sp-$01
    ld a, [$f5fe]
    db $fd
    ld [hl], h
    db $fc
    ld h, l
    db $fd
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld b, b
    rst $38

jr_057_6380:
    jr nz, @+$01

    ld hl, $ff24
    ld a, [bc]
    ld a, b
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    ld h, $ff
    jr z, @+$01

    ld h, b
    ld b, h
    rst $38
    jr nc, jr_057_6397

    db $10
    rst $38

jr_057_6397:
    db $10
    ld b, [hl]
    rst $38
    jr jr_057_63aa

    inc e
    rst $38
    dec bc
    rst $28
    dec c
    rst $28

jr_057_63a2:
    ld d, $ff
    dec d
    rst $30
    sub [hl]
    rst $30
    sub l
    rst $30

jr_057_63aa:
    sub a
    ld [hl+], a
    rst $30
    dec b
    ld [hl], e
    di
    jr nz, jr_057_63a2

    ret nz

    ret nz

    ld h, l
    inc h
    add b
    ld h, $c0
    ld b, e
    ldh [$a0], a
    inc bc
    ret nz

    jr nz, jr_057_6380

    ld b, b
    and e
    nop
    xor h
    ldh [$2d], a
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$28]
    ld hl, sp+$48
    ld hl, sp-$3c
    db $fc
    ld b, h
    ld a, h
    call nz, $42fc

jr_057_63d7:
    ld a, [hl]
    jp nz, Jump_057_65fe

    rst $38
    ld a, c
    rst $38
    ld h, c
    rst $38
    sub b
    sbc a
    sub c
    sbc a
    ld e, [hl]
    rst $18
    ld d, b
    rst $18
    ld e, b
    rst $18
    ld c, a
    rst $08
    ld e, a
    ret nc

    ld d, a
    ret c

    ld c, a
    ret


    ld b, $c6
    ld c, e
    jr nz, jr_057_63d7

    ld [bc], a
    ld h, b
    ldh [$a0], a
    add [hl]
    add e
    ld [bc], a
    ret nz

    ret nz

    ld b, b
    call nz, $01d5
    add b
    add b
    db $ec
    dec sp
    add hl, hl
    add b
    ld bc, $0000
    ld hl, sp+$3f
    adc b
    db $ec
    ld e, e

jr_057_6412:
    rst $38
    db $ec
    dec sp
    dec d
    rrca
    rlca
    ld sp, $4710
    nop
    ld e, a
    ld b, b
    ccf
    jr nz, jr_057_6440

    jr jr_057_6442

    inc c
    cpl
    inc bc
    cpl
    jr nz, @+$21

    jr jr_057_6432

    rlca
    db $ec
    ld c, e
    add hl, de
    jp $e4c3


jr_057_6432:
    inc h
    ei
    jr @+$01

    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ldh [rIE], a

jr_057_6440:
    inc e
    rst $38

jr_057_6442:
    add d
    ld a, a
    ld a, l
    ld [bc], a
    inc bc
    ld bc, $ec01
    inc hl
    dec d
    rra
    rrca
    ld sp, $1f10
    db $10
    rrca
    ld [$1017], sp
    rrca
    ld [$0607], sp
    ld bc, $0701
    ld b, $0b
    ld [$0707], sp
    add d
    cp e
    call nz, $0980
    ld a, [de]
    ld a, [de]
    dec [hl]
    dec [hl]
    rst $28
    db $eb
    ld a, a
    ld a, a
    rst $38
    ccf
    ld b, e
    rst $38
    rra
    rla
    db $fc
    ld c, $f8
    adc l
    ldh a, [$7a]
    pop hl
    inc [hl]
    ld [c], a
    ld a, [hl+]
    cp h
    ld e, c
    ret c

    adc d
    jr z, jr_057_6412

    rst $00
    add a
    ld h, b
    ld h, b
    inc e
    inc e
    inc bc
    inc bc
    ld [hl], e
    dec de
    ld [hl], b
    jr nc, jr_057_64de

    ld c, h
    dec sp
    inc hl
    ld e, $10
    rra
    db $10
    rst $28
    add sp, -$01
    add hl, de
    cp $06
    ld sp, hl
    add hl, bc
    di
    ld [de], a
    push hl
    dec h
    db $eb
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld l, a
    ld [hl+], a
    rst $38
    nop
    ld a, a
    ld [hl+], a
    rst $38
    inc b
    cp a
    ld a, a
    ld e, a
    rst $38
    cp a
    add e
    adc c
    inc c
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    ld a, a
    nop
    rst $38
    db $10
    ld a, a
    ld h, b
    add e
    adc c
    inc c
    cp a
    ld bc, $0e5f
    cp a
    jr nc, jr_057_6548

    add b
    dec hl
    add e
    rst $10
    ld a, h
    ld a, h
    or l
    rst $18
    ld de, $0505
    dec bc
    ld a, [bc]

jr_057_64de:
    rrca
    ld [$909f], sp
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    ld sp, hl

jr_057_64e8:
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    ld [hl+], a
    rst $38
    nop
    ld a, b
    ld b, e
    rst $38
    db $fc
    ld c, b
    rst $38
    cp $26
    rst $38
    inc bc
    add e
    rst $38
    nop
    add e
    ld h, h
    ld [$00d0], sp
    add sp, $00
    push de
    nop
    ld_long $ff00, a
    jp $0bdf


    ld bc, $07ff
    rst $38
    ld a, [hl-]
    ld a, [$c4c4]
    jr jr_057_6531

    db $fc
    db $ec
    db $d3
    adc $00
    ld b, b
    ld b, h
    ld b, b
    ret nz

    dec h
    add b
    add hl, bc
    ldh [$60], a
    and b
    jr nz, @-$1e

    jr nz, jr_057_64e8

    ld b, b
    ret nz

    ret nz

    ld b, l
    ldh [rNR41], a
    add hl, bc
    ret nz

    ld b, b

jr_057_6531:
    ldh [$60], a
    sub b
    ret nc

    sub b
    ldh a, [$50]
    ldh a, [$c6]
    sbc b
    ld b, h
    ret nz

    ld b, b
    ld b, [hl]
    jr nz, @+$62

    ld [bc], a
    ldh [rLCDC], a
    ret nz

    xor a
    nop
    or h

jr_057_6548:
    rst $38
    ld l, e
    rlca

jr_057_654b:
    ld bc, $0301
    ld [bc], a
    inc b
    rlca
    nop
    rlca
    ld b, e
    ld [$010f], sp
    inc b
    rlca
    jp $ec8a


    ld c, c
    add hl, de
    rra
    rra
    ld [hl], l
    ld [$15ea], a
    ld b, b
    cp a
    ld l, a
    rst $38
    ld b, b
    cp a
    jr nz, jr_057_654b

    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    rst $38
    ld [hl], b
    ld a, a
    rrca
    rrca
    add h
    ld sp, hl
    ld [$0003], sp
    inc b
    ld bc, $0604
    inc b
    dec b
    inc b
    push bc
    or $0b
    ld c, $08
    dec e

jr_057_658a:
    db $10
    ld e, $10
    dec a
    jr nz, jr_057_65ce

    jr nz, jr_057_65d1

    jr nz, jr_057_65d7

    ld a, a
    ld b, b
    inc bc
    ld [hl], a
    ld c, b
    ld d, a
    ld l, b
    ld b, l
    ld b, a
    ld a, b
    ld b, l
    daa
    jr c, jr_057_65e5

    inc de
    inc e
    dec b
    dec bc
    inc c
    dec b
    ld b, $03
    inc bc
    ld l, c
    inc c
    ldh [$e0], a
    jr @-$06

    inc b
    db $fc
    ld [bc], a
    cp $c2
    cp $31
    rst $38
    add hl, bc
    ld b, h
    rst $38
    dec b
    inc de
    inc bc
    rst $38
    rra
    rst $38
    and $e7
    ld [bc], a
    inc bc
    dec b
    dec c
    inc bc
    inc de
    or a
    or c
    ei
    ld [hl], c

jr_057_65ce:
    or a
    ld h, b
    rst $18

jr_057_65d1:
    jr nz, jr_057_6616

    rst $38
    nop
    rrca
    ld e, a

jr_057_65d7:
    nop
    xor a
    nop
    ld a, a
    nop
    sub a
    jr z, jr_057_6606

    ld e, b
    rst $00
    jr c, jr_057_658a

    ld e, b
    ld b, a

jr_057_65e5:
    cp b
    ld c, l
    rlca
    ld hl, sp+$45
    inc bc
    db $fc
    ld b, e
    add e
    ld a, h
    inc bc
    add c
    ld a, [hl]
    pop bc
    ld a, $6d
    ldh [rNR42], a
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_057_663c

    ld b, b

Jump_057_65fe:
    ld a, a
    add a
    rst $38
    sbc b
    rst $38
    ld h, b
    rst $38
    add b

jr_057_6606:
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld c, [hl]
    rst $08
    ld hl, $30e1
    ldh a, [$7d]
    db $ed
    rst $38
    adc $ff

jr_057_6616:
    add h
    ld a, e
    add h
    ld d, l
    rst $38
    nop
    dec b
    db $db
    inc h
    sub e
    ld l, h
    add e
    ld a, h
    ld b, a
    inc bc
    db $fc
    ld b, e
    ld bc, $07fe
    add c
    ld a, [hl]
    add c
    ld a, a
    add d
    ld a, [hl]
    call z, Call_057_6b3c
    dec c
    ld a, h
    ld a, h
    sub a
    db $eb
    ld [$14f7], sp
    db $eb

jr_057_663c:
    ld [$9ef7], sp
    rst $38
    ld [$a3f7], sp
    nop
    ld [hl], h
    ld bc, $fb04
    and a
    nop
    ld a, h
    and e
    nop
    inc c
    dec bc
    ret nz

    ld b, b
    ldh [$60], a
    ld [hl], b
    sub b
    ldh a, [$90]
    ldh [$a0], a

jr_057_6659:
    and b
    ld h, b
    ld b, h
    ret nz

    ld b, b
    ld d, d
    jr nz, @-$1e

    ld b, e
    ret nz

    ld b, b
    inc bc
    add b
    ld b, b
    add b
    add b
    or l
    nop
    inc e
    ld bc, $8080
    add d
    or h
    nop
    ldh [rLYC], a
    db $10
    ldh a, [rSB]
    jr nz, jr_057_6659

    db $f4
    ld b, e
    nop
    jr @+$01

    db $ec
    ld d, d
    inc c
    ld bc, $0202
    inc b
    inc c
    db $10
    db $10
    jr nz, jr_057_66aa

    ld a, b
    ld a, b
    add h
    add h
    db $ec
    ld b, c
    ld [$0602], sp
    ld bc, $0109
    db $10
    ld [de], a
    db $10
    ld de, $8384
    rlca
    ld [hl+], a
    ld [hl], b
    and c
    and b
    ld [hl+], a
    jr nz, jr_057_66a5

    ret nz

jr_057_66a5:
    ld l, e
    dec de
    rlca
    rrca
    db $10

jr_057_66aa:
    jr nc, jr_057_66ac

jr_057_66ac:
    ld b, e
    ld b, b
    ld b, a
    add b
    xor a
    add b
    rst $18
    add c
    xor a
    add d
    cp $42
    ld a, [hl]
    ld b, h
    ld a, l
    inc [hl]
    ld a, $0c
    dec c
    inc b
    ld b, $04
    dec b
    add e
    add e
    ld [hl+], a
    ld [bc], a
    nop
    inc bc
    add l
    add e
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc h
    inc b
    ld [$0500], sp
    nop
    ld [$0908], sp
    ld [$000a], sp
    add e
    call nc, $1517
    jr nz, @+$2d

    ret nz

    push af
    add b
    db $eb
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ld a, h
    ccf
    xor e
    inc hl
    ld d, h
    db $10
    and b
    inc e
    ld d, h
    inc bc
    xor b
    nop
    ld d, b
    ld h, c
    ld bc, $0201
    add $fc
    add hl, bc
    ret nz

    ret nz

    dec sp
    rst $38
    ld h, h
    db $f4
    add h
    call z, $8808
    ld [hl+], a
    ld [$5c0b], sp
    ld [$04af], sp
    ld a, a
    inc b
    cp a
    inc bc
    ld a, a
    nop
    rst $38
    nop
    add l
    add e
    nop
    cp a
    sub d
    add e
    add l
    sbc e
    nop
    rst $38
    ld c, c
    ld bc, $47fe
    inc bc
    db $fc
    ld c, $e3
    db $fc
    rra
    inc e
    inc bc
    inc bc
    nop
    ldh [$f1], a
    db $fc
    ld [$150b], sp
    inc b
    nop
    add e
    push hl
    inc c
    ld b, $c8
    ld hl, sp+$0e
    ld e, a
    inc bc
    xor a
    nop
    ld e, a
    jr nc, @+$81

    ld [$457f], sp
    inc b
    rst $38
    inc b
    ld [$11ff], sp
    rst $38
    pop hl
    ld b, [hl]
    rst $38
    nop
    rlca
    inc b
    rst $38

jr_057_6755:
    inc c
    rst $30
    rra
    db $e3
    rra
    ldh [rSCX], a
    ccf
    ret nz

    add hl, bc
    ld a, $c0
    ld a, a
    add a
    ld a, b
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ld b, a

jr_057_676a:
    ldh [rNR41], a
    ld bc, $20c0
    ld c, [hl]
    ret nz

    ld b, b
    ld b, l
    jr nz, jr_057_6755

    ld c, $e0
    ld h, b
    jr nz, jr_057_676a

    db $10
    jr c, @-$36

    jr nz, @+$62

    sub b
    sub b
    db $10
    jr nc, jr_057_6794

    ldh a, [rSCX]
    jr nz, @-$1e

    ld [bc], a
    ld b, b
    ret nz

    ret nz

    add h
    sbc [hl]
    rra
    db $10
    ldh a, [$c8]
    add sp, -$5c

jr_057_6794:
    or h
    inc [hl]
    inc [hl]
    ld [hl+], a
    ld a, [hl+]
    ld [hl], d
    ld_long a, $ff31
    ld bc, $05ff
    rst $38
    ld bc, $c2ff
    cp $f2
    ld a, $ec
    inc c
    sub b
    db $10
    ld h, b
    ld h, b
    nop
    add b
    db $ec
    dec hl
    rst $38
    db $ec
    ld c, l
    dec b
    jr nc, jr_057_67e7

    ld e, h
    ld c, h
    ld h, e
    ld e, a
    ld b, e
    jr nz, jr_057_67fd

    rlca
    db $10
    rra
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    ld [hl], l
    dec b
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, e
    inc b
    rlca
    inc bc
    dec b
    rlca
    inc bc
    ld [bc], a
    ld b, e
    rlca
    inc b
    inc bc
    ld a, [bc]
    dec c
    add hl, bc
    ld c, $43
    ld [$c30f], sp
    adc b
    reti


    sbc d
    inc hl

jr_057_67e7:
    ld bc, $0304
    ld [bc], a
    db $e3
    ld [c], a
    rra
    ld b, a
    rst $38
    nop

jr_057_67f1:
    nop
    rst $38
    sub c
    and c
    dec de
    dec sp
    ld a, [hl-]
    db $fc
    rst $00
    db $fd
    ld b, $f8

jr_057_67fd:
    rlca
    ldh a, [rIF]
    nop
    rst $38
    ld a, h
    di
    cp $81
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    xor d
    ld d, l
    ld d, h
    xor e
    jr nz, jr_057_67f1

    add l
    or e
    ld c, $01
    rst $38
    add [hl]
    rst $38
    ld a, b
    ld a, a
    inc a
    inc hl
    ld e, $11
    dec e
    ld [de], a
    ld c, $09
    dec bc
    ld [hl+], a
    rrca
    dec c
    cpl
    ld l, a
    scf
    sbc a
    ret


    cp a
    adc c
    rst $38
    sub b
    rst $38
    pop hl
    ld a, a
    pop bc
    ccf
    ld b, e
    add b
    ld a, a
    rlca
    adc b
    rst $30
    ld a, [hl]
    pop bc
    ld b, h
    jp $c142


    ld l, e
    ld de, $3838
    or $ce
    ld sp, hl
    rlca
    db $fc
    inc bc
    xor c
    ld d, a
    ld d, d
    xor a
    and b
    ld e, a
    nop
    rst $38
    ld bc, $83fe
    add e
    nop
    nop
    ld c, d
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    ld bc, $ff4a
    nop
    and e
    sbc e
    inc e
    add [hl]
    ld a, a
    adc c
    ld sp, hl
    ld hl, sp-$07
    pop af
    cp $0f
    jr nc, jr_057_68b0

    ld b, c
    rst $38
    pop bc
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    add c
    rst $38
    ld h, d
    cp $1c
    db $fc
    ld h, b
    or d
    nop
    sub [hl]
    dec c
    jr c, jr_057_68c1

    cp $c6
    rst $38
    ld bc, $01fe
    ld a, h
    add e
    xor b
    ld d, a
    ld d, h
    xor e
    add e
    nop
    add sp, $01
    xor b
    ld d, a
    adc e
    pop hl
    inc c
    add a
    rst $38
    ld a, e
    ei
    inc de
    di
    ld a, [bc]
    ld a, [$fe04]
    inc b
    db $fc
    nop
    ld b, h
    ld hl, sp+$09
    rlca
    rlca

jr_057_68b0:
    ld hl, sp-$79
    db $fc
    rst $08
    ld a, a
    ldh a, [$f0]
    inc hl
    jr nz, jr_057_68bf

    ldh [$e0], a
    ret nz

    ld b, b
    add b

jr_057_68bf:
    add b
    xor b

jr_057_68c1:
    nop
    xor c
    nop
    add b
    cp c
    nop
    sub [hl]
    ld b, e
    ld b, b
    ret nz

    ld bc, $c0c0
    and l
    nop
    ld a, d
    ld bc, $f010
    xor a
    nop
    adc h
    ld [bc], a
    ld b, b
    ret nz

    nop
    ld [hl+], a
    jr nz, jr_057_68df

    ld h, b

jr_057_68df:
    ld h, b
    inc hl
    ret nz

    reti


    xor b
    ld h, e
    rst $38
    ld [hl], h
    ld [hl+], a
    ld bc, $0101
    ld bc, $8884
    call nz, $ec85
    scf
    inc bc
    ld bc, $0301
    ld [bc], a
    ld h, [hl]
    inc bc
    jr nz, jr_057_694b

    ld d, b
    ld [$8822], sp
    ldh [rNR44], a
    add h
    add h
    ld b, h
    ld b, h
    jp z, $26c2

    ld [hl+], a
    dec bc
    ld hl, $1107
    xor a
    add b
    rst $18
    ret nz

    ld a, a
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $20
    adc b
    ld d, e
    ld b, h
    ccf
    jr nc, @+$31

    add hl, sp
    cpl
    ld hl, $111f
    rrca
    dec c
    ld c, c
    ld [bc], a
    inc bc
    ld a, [bc]
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld b, $06
    dec b
    rlca
    inc b
    rlca
    ld b, h
    ld [$000f], sp
    ld c, $44
    ld de, $0d1e
    inc e
    inc hl
    inc a
    inc hl

jr_057_6941:
    ld a, b
    ld b, a
    ld a, b
    add a
    ldh a, [$8f]
    ldh [$1f], a
    ret nz

    ccf

jr_057_694b:
    call $2b00
    ld bc, $0101
    ld [hl+], a
    ld [bc], a
    add $80
    and e
    db $fd
    ld [de], a
    rst $20
    daa
    ei
    dec e
    rst $28
    ld sp, $40ff
    cp [hl]
    pop bc
    call c, $2aa3
    push de
    ld d, h
    xor e
    jr z, jr_057_6941

    nop
    ld c, b
    rst $38
    nop
    ld bc, $7f80
    adc c
    add e
    and h
    adc a
    inc b
    rst $38
    ld b, $fb
    ld a, [bc]
    di
    ld b, e
    inc b
    rst $30
    dec bc
    inc d
    rst $20
    dec b
    and $29
    adc $09
    adc $4c
    adc a
    dec bc
    adc e
    ld h, c
    ld de, $3030
    ld c, b
    ld c, b
    ret z

    ret z

    inc h
    inc h
    inc b
    inc h
    inc d
    inc d
    inc b
    sub h
    add d
    add d
    ld [bc], a
    ld b, d
    add l
    rst $18
    ld a, [de]
    adc e
    add c
    push de
    ret nz

    dec hl
    ld b, b
    ld d, a
    nop
    cp a
    jr jr_057_6a24

    inc h
    xor a
    and l
    sub a
    push bc
    ld l, a
    ret


    db $76
    bit 7, [hl]
    jp $c77c


    inc a

jr_057_69bb:
    rst $20
    jr @+$52

    rst $38
    nop
    ld de, $ff1f
    ld h, b
    ldh [$98], a
    ld hl, sp+$04
    call z, $8404
    ld [bc], a
    add [hl]
    ld [bc], a
    adc $e2
    ld e, $f2
    ld c, $43
    db $f4
    inc c
    inc bc
    ld hl, sp+$18
    ldh [$e0], a
    cp l
    nop
    ld b, b
    ld c, $80
    add b
    ret nz

    ret nz

    cp h
    cp h
    ld c, h
    call nz, $c858
    jr nc, jr_057_69bb

    ld h, b
    ldh [$c0], a
    ld [hl+], a

jr_057_69ef:
    ret nc

    dec bc
    ldh a, [$f0]
    add sp, -$08
    db $76
    cp $33
    db $fd
    inc bc
    db $fc
    ld bc, $a8fe
    nop
    ld a, [c]
    inc b
    rst $38
    ld b, $fe
    ld hl, sp-$08
    db $ec
    ld c, h
    ld [$c080], sp
    ld b, b
    ret nz

    jr nz, jr_057_69ef

    jr nz, jr_057_6a71

    and b
    ld b, e
    ld b, b
    ret nz

    cp e
    nop
    ld [hl+], a
    rst $38
    ld [hl], l
    inc bc
    ld bc, $0301
    ld [bc], a
    res 0, d
    dec e
    rlca
    rlca

jr_057_6a24:
    ld a, a
    ld a, b
    db $fc
    add e
    ld [hl], b
    ld a, a
    ld c, $0f
    ld bc, $0e01
    ld c, $10
    db $10
    rrca
    rrca
    ld bc, $0601
    rlca
    dec e
    ld a, [de]
    ld a, [hl]
    ld h, c
    rst $38
    add b
    ld a, [hl]
    ld a, a
    add h
    xor c
    inc b
    ld bc, $0200
    ld bc, $ec01
    jr nz, jr_057_6a6f

    ld bc, $4ae0
    nop
    ld bc, $8080
    ldh a, [rSVBK]
    db $fc
    inc c
    rst $30
    adc e
    ld l, b
    ld d, a
    inc [hl]
    dec hl
    jr jr_057_6a75

    ld a, b
    ld l, a
    ld hl, sp-$71

jr_057_6a62:
    ret nz

    ccf
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_057_6a62

    jp $1fc0


    nop
    rst $38

jr_057_6a6f:
    nop
    rst $38

jr_057_6a71:
    add b
    ld a, a
    cp $87

jr_057_6a75:
    ld a, l
    ld c, e
    cp b
    or e
    ld d, b
    ld h, a
    and b
    xor a
    ld h, b
    rst $08
    ret nz

    sbc a
    add e
    ld a, $0f
    ld [hl], d
    ld [hl], e
    add h
    add a
    ld b, $05
    dec c
    ld a, [bc]
    ld c, $09
    rrca
    db $10
    rla
    db $10
    inc bc
    jr nz, jr_057_6ab6

    jr nz, jr_057_6ad9

    ld b, b
    add l
    xor a
    pop af
    ld b, $80
    nop
    ld b, b
    jr nz, jr_057_6ac1

    jr nc, @+$12

    ld b, e
    cp b
    adc b
    dec b
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, d
    rst $38
    pop bc
    ld b, e
    ccf
    ldh [rSCX], a
    rra
    ldh a, [$09]
    ccf
    ret nz

jr_057_6ab6:
    rst $38
    ret nz

    rra
    nop
    ld a, a
    ld bc, $03fe
    ld b, a
    rst $38
    nop

jr_057_6ac1:
    ld bc, $807f
    ld c, b
    rst $38
    nop
    db $10
    ret nz

    xor a
    ldh [$2f], a
    ldh [$27], a
    ldh [rNR22], a
    ldh a, [$b7]

jr_057_6ad2:
    ld d, b
    ld d, a
    or c
    and e
    ld d, c
    db $db
    add hl, hl

jr_057_6ad9:
    ld b, e
    ld a, [$040b]
    di
    ld a, [bc]
    rst $38
    inc b
    ld a, a
    db $f4
    ld hl, $4e00
    ld d, $c0
    ret nz

    jr nz, jr_057_6ad2

    cpl
    ldh a, [rNR10]
    ei
    dec de
    ld hl, sp+$37
    ret c

    rst $18
    ret nz

    rst $00
    jp hl


jr_057_6af7:
    rst $28
    push af
    ld a, e
    cp $33
    cp $03
    ld c, c
    rst $38
    ld bc, $de01
    ld [hl+], a
    ld b, h
    cp $42
    ld [de], a
    ld h, d
    cp [hl]
    ld [c], a
    sbc [hl]
    ld a, [c]
    sbc d
    ld a, [$ea22]
    jr nz, jr_057_6af7

    and b
    ld h, b
    ld h, b
    and b
    and b
    ld h, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    cp a
    db $dd
    rrca
    inc c
    inc e
    ld h, b
    pop hl
    nop
    rrca

jr_057_6b27:
    ld bc, $023f
    cp $1c
    db $fc
    ld h, h
    db $fc
    adc b
    ld hl, sp-$3b
    or b
    inc bc
    ret nz

    ret nz

    add b
    add b
    db $ec
    dec a
    inc c
    ld [bc], a

Call_057_6b3c:
    ld b, $09
    add hl, de
    ld [hl+], a
    ld h, [hl]
    adc h
    sbc h
    db $10
    ld [hl], b
    jr nz, jr_057_6b27

    ld b, b
    ldh a, [$3a]
    call Call_057_79ff
    dec h
    ld bc, $0249
    inc bc
    push bc
    adc d
    db $ec
    dec sp
    ld [de], a
    inc bc
    inc bc
    inc c
    ld c, $10
    ld de, $2020
    ld b, c
    ld d, c
    add d
    xor d
    add h
    db $fd
    adc b
    ld a, d
    db $10
    db $fd
    db $10
    ld b, h
    rst $38
    jr nz, jr_057_6b7d

    nop
    rst $38
    ld b, c
    rst $38
    ld b, d
    cp $4c
    db $fc
    db $10
    ldh a, [rNR41]
    ldh [$a0], a
    ldh [rLCDC], a

jr_057_6b7d:
    ld b, b
    adc l
    nop
    dec c
    dec e
    nop
    ld [bc], a
    nop
    inc b
    ld [$0008], sp
    db $10
    ld bc, $2320
    daa
    add hl, hl
    jr z, @+$0d

    ld c, b
    ld c, a
    ld b, h
    ld c, [hl]
    ld b, e
    rrca
    ld b, b
    cpl
    jr nz, jr_057_6bc1

    ld hl, $1017
    rra
    jr jr_057_6c08

    ldh [rNR43], a
    rra
    rra
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    jr jr_057_6c2c

    jr nz, @+$01

    add b
    rst $18
    nop
    cpl
    ld c, $11
    jr @-$57

    jr nz, jr_057_6c18

    ld b, c
    cp a
    ld b, $ff
    add hl, de
    ld sp, hl
    ld h, b
    ld [c], a

jr_057_6bc1:
    add d
    add d
    nop
    ld [bc], a
    ld b, $28
    inc b
    inc de
    nop
    inc b
    jr jr_057_6be9

    inc hl
    inc l
    ld [hl+], a
    dec a
    ld e, $3a
    ld a, [hl]
    ld h, e
    adc a
    add c
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    ld b, e
    rst $38
    nop
    ld bc, $807f
    adc c
    add l
    jp $0381


    rst $38

jr_057_6be9:
    ld h, b
    rst $38
    rra
    xor c
    nop
    sbc b
    inc b
    ld h, b
    ldh a, [$08]
    db $fc
    ld a, [c]
    and h
    sub [hl]
    dec bc
    ld bc, $03ff
    rst $38
    rlca
    db $fc
    ccf
    ldh a, [rVBK]
    ret nz

    add a
    add b
    ld b, e
    rlca
    nop
    ld b, e

jr_057_6c08:
    rrca
    nop
    ld b, l
    rra
    nop
    ld b, e
    ccf
    nop
    nop
    ld a, a
    adc b
    call $3907
    add $3c

jr_057_6c18:
    set 7, b
    adc a
    rst $38
    ld b, $5b
    rst $38
    nop
    or c
    nop
    ld a, [bc]
    rlca
    ret nz

    ret nz

    and b
    ldh a, [$9c]
    ld a, h
    cp $63

jr_057_6c2c:
    ld b, l
    rst $38
    nop
    ld [bc], a
    ld sp, hl
    ld b, $f2

jr_057_6c33:
    ld c, b
    dec bc
    di
    ld [bc], a
    ld a, [c]
    dec bc
    ld sp, hl
    adc h
    rlc a
    rst $20
    jr jr_057_6c33

    inc l
    ld [c], a
    dec a
    cp $19
    ld b, l
    rst $38
    ld bc, $fe01
    ld bc, $01a7
    ld [de], a
    nop
    db $fd
    ld b, e
    ld [bc], a
    rst $38
    ld b, $04
    rst $38
    jr @+$01

    ld h, b
    rst $38
    and c
    cp e
    nop
    nop
    nop
    nop
    xor e
    nop
    ld e, $02
    ld b, b
    and b
    ld h, b
    ld b, e
    ldh [rNR41], a
    jp $298d


    add b
    rlca
    nop
    ret nz

    nop
    ld h, b
    ld b, b
    ret nz

    add b
    add b
    xor [hl]
    nop
    ld de, $9f89
    nop
    nop
    rst $38
    ld a, e
    rrca
    ld b, $0e
    inc de
    ld de, $2027
    ld b, a
    ld b, b
    ld d, e
    ld b, b
    inc sp
    jr nz, @+$3d

    jr nz, @+$1b

    jr nz, jr_057_6cd5

    dec e
    db $10
    rla
    ld c, $10
    ld c, $08
    rrca
    ld [$0407], sp
    ld b, $07
    dec b
    ld b, $0b
    inc c
    rra
    db $10
    cpl
    jr nz, jr_057_6cce

    ld hl, $1315
    ld c, $0f
    inc hl
    ld bc, $0269
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    nop
    nop
    ld [hl+], a
    inc b
    ld a, a
    inc hl
    add b
    dec c
    ret nz

    ld b, b
    add [hl]
    ld h, [hl]
    jp hl


    add hl, hl
    rst $30
    ld de, $11ef
    or $0a
    ld a, [$430e]
    db $fc

jr_057_6cce:
    inc b
    ld de, $0af6
    ld a, [$f506]

jr_057_6cd5:
    dec bc
    ei
    dec b
    db $fd
    ld [bc], a
    ld a, d
    add l
    cp l
    ld b, d
    cp $81
    db $fd
    ld [bc], a
    ld b, e
    cp $01
    add hl, bc
    ld sp, hl
    add [hl]
    rst $38
    adc b
    rst $38
    or b
    rst $38
    ret nz

    cp a
    add b
    ld b, e
    rra
    nop
    inc b
    cpl
    nop
    ld d, a
    nop
    xor e
    db $ec
    ld a, $23
    add b
    dec bc
    ld b, b
    ret nz

    and b
    ld h, b
    ld e, h
    cp a
    xor h
    ld d, b
    ld b, e
    add b
    sbc h
    inc bc
    ld c, a
    rst $38
    nop

jr_057_6d0d:
    nop
    rst $38
    db $f4
    dec h
    jp nz, $c6a5

    ld b, e
    ld [bc], a
    inc bc
    ld b, $04
    inc b
    rlca
    inc c
    inc c
    ld de, $4510
    daa
    jr nz, jr_057_6d26

    dec e
    inc de
    rrca

jr_057_6d26:
    ld c, $43
    rra
    db $10
    inc bc
    ccf
    jr nz, jr_057_6d0d

    ldh [$a3], a
    nop
    and [hl]
    ld b, e
    rst $38
    nop
    ld bc, $05fa
    and e
    adc c
    sbc c
    rst $18
    inc bc
    rra
    rra
    jr nc, jr_057_6d61

    ld b, h
    ld h, b
    ld b, b
    ld bc, $c380
    ld b, l
    add b
    rst $08
    ld [bc], a
    nop
    rst $18
    nop
    ld b, e
    sbc a
    nop
    ld [bc], a
    cp a
    nop
    cp a
    ld b, [hl]
    ld bc, $01ff
    ld a, a
    ld bc, $bdc3
    add hl, bc
    cp [hl]
    ld b, d
    ld e, [hl]

jr_057_6d61:
    and d
    cp $c2
    cp $02
    ld a, [$8306]
    nop
    sub [hl]
    dec c
    rst $30
    dec bc
    ld [$f616], a
    ld a, [bc]
    ld [$d615], a
    add hl, hl
    xor e
    ld d, h
    rst $10
    jr z, @-$61

    ld bc, $0114
    add b
    add b
    ld [hl+], a
    ld b, b
    ld b, [hl]
    ld b, b
    ret nz

    add hl, bc

jr_057_6d86:
    nop
    ret nz

    add b
    add b
    ldh [$e0], a
    or b
    sub b
    ldh a, [$90]
    jp $0501


    ld bc, $c040
    sub $00
    rst $38
    db $10
    ld h, b
    db $10
    sub b
    jr c, jr_057_6da7

    ld hl, sp+$08
    ldh a, [rNR10]
    ret nz

    jr nc, jr_057_6d86

    and b

jr_057_6da7:
    ret nz

    ld h, b
    and b
    ld h, b
    ld b, e
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    rst $38
    ld l, e
    dec c
    ld bc, $0301
    ld [bc], a
    ld b, $04
    inc c
    ld [$101c], sp
    ld a, $20
    ccf
    jr nz, jr_057_6e08

    ld a, a
    ld b, b
    ld b, a
    rst $38
    add b
    inc bc
    ld a, a
    ld b, e
    ld a, h
    ld c, h
    ld b, e
    ld d, b
    ld [hl], b
    nop
    ld h, b
    ld b, [hl]
    ld h, b
    jr nz, @+$25

    ld h, b
    ld [bc], a
    ld d, b
    ld [hl], b
    db $10
    ld [hl+], a
    jr nc, jr_057_6e21

    jr z, jr_057_6e18

    ld [$1818], sp
    inc e
    inc e
    inc c
    inc c
    ld b, $06
    inc bc
    jp nz, Jump_057_77c0

    ld b, $70
    ld [hl], b
    ld hl, sp-$78
    db $fc
    inc b
    ld a, h
    ld b, h
    inc b
    inc a
    ld bc, $047c
    ld b, l
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    ret nz

    ld b, b
    cp c
    or l

jr_057_6e08:
    add hl, bc
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    ld b, e
    jr nz, jr_057_6e55

    ld [bc], a
    ld b, b

jr_057_6e18:
    ld a, a
    ret nz

    ld b, h
    rst $38
    ldh [$09], a
    sbc b
    rst $38
    adc [hl]

jr_057_6e21:
    rst $38
    add e
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_057_6e67

    db $ec
    dec hl
    inc hl
    ld bc, $0243
    inc bc
    inc c
    ld bc, $0503
    rlca
    ld b, $06
    rrca
    rrca
    ld [hl], $3f
    ld b, h
    ld a, a
    adc h
    ld b, l
    rst $38
    inc c
    ld c, d
    rst $38
    jr @+$04

    ld [$08ff], sp
    ld b, h
    rst $38
    inc c
    dec b
    adc $ff
    cp $ff
    rra
    rst $38
    ld h, l
    dec b
    inc bc
    inc bc

jr_057_6e55:
    rlca
    inc b
    rrca
    ld [$1f43], sp
    db $10
    dec b
    ccf
    jr nz, @+$41

    jr nz, jr_057_6ea1

    jr nz, @+$4b

    ld a, a
    ld b, b
    rlca

jr_057_6e67:
    ccf
    jr nz, jr_057_6e99

    jr nc, jr_057_6ebb

    ld a, a
    ld d, b
    ld [hl], b
    ld b, e
    and b
    ldh [$a4], a
    db $db
    nop
    add b
    add l
    nop
    add [hl]
    nop
    rst $38
    ld b, e
    rst $38
    nop
    dec b
    jp $8000


    nop
    pop hl
    nop
    ld e, d
    rst $38
    nop
    ld bc, $ff03
    ld h, c
    dec b
    ccf
    ccf
    rst $38
    ret nz

    sbc a
    nop
    ld b, e
    rrca
    nop
    nop
    sbc a
    sub c

jr_057_6e99:
    and b
    ld b, $01
    cp $06
    ld hl, sp+$38
    ret nz

jr_057_6ea1:
    ret nz

    ld l, b
    call c, $1380
    rrca
    rst $38
    ld a, $f1
    inc sp
    call z, $e738

jr_057_6eae:
    ld e, $f9
    rlca
    cp $05
    db $fd
    jr jr_057_6eae

    ld h, b
    ldh [$80], a
    add b
    and a

jr_057_6ebb:
    ld bc, $0122
    ldh [rNR41], a
    ld c, c
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld bc, $40c0
    add e
    nop
    add h
    db $f4
    ld hl, $cc00
    call $07a6
    ldh a, [$f0]
    db $fc
    inc c
    cp $02
    ld a, a
    add c
    and h
    nop
    inc h
    ld [bc], a
    add $38
    jr c, jr_057_6f44

    rst $38
    ld a, c
    ld de, $0101
    inc bc
    ld [bc], a
    dec c
    ld c, $30
    ccf
    ld l, c
    ld d, a
    sub e
    xor $a3
    sbc $47
    ld a, h
    ccf
    inc a
    ld b, e
    rrca
    ld [$1f47], sp
    db $10
    ld c, b
    ccf
    jr nz, @+$1b

    ld b, b
    ld a, a
    ld b, b
    ld a, l
    ld b, e
    ld a, b
    ld b, h
    ld [hl], b
    ld c, b
    ld a, c
    ld c, b
    ld a, a
    ld c, b
    ld [hl], a
    ld c, b
    ld a, a
    ld b, h
    rla
    inc l
    dec hl
    inc [hl]
    scf
    ld a, [hl+]
    add hl, hl
    ld [hl], $11
    call nz, $93a8
    rst $10
    ld de, $0e07
    inc e
    jr @+$62

    ld [hl], b
    ret z

    and b
    sub h
    ld b, b
    ld l, d
    add b
    push de
    nop
    ld [$fd00], a
    nop
    add sp, $20
    rst $38
    nop
    nop
    add b
    ld b, h
    rst $38
    ld b, b
    ld b, $20
    rst $38
    db $10
    rst $38
    ld [$06f9], sp

jr_057_6f44:
    ret z

    and a
    ld [bc], a
    ld [bc], a
    ld a, [$ce85]
    jp nc, $0f04

    ld a, b
    ld [hl], b
    add b
    add b
    ld h, a
    add hl, bc
    dec b
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    add sp, $35
    rst $38
    nop
    inc bc
    ld e, l
    and d
    xor d
    ld d, l
    xor [hl]
    rst $18
    ld a, [bc]
    ld hl, sp+$3e
    rlca
    dec bc
    nop
    rlca
    nop
    dec bc
    nop
    rla
    nop
    and e
    nop
    add b
    ld [bc], a
    xor a
    nop
    ld a, a
    add [hl]
    xor e
    ld b, e
    ei
    inc b
    ld b, h
    rst $38
    ld [bc], a
    ld [bc], a
    ld bc, $01ff
    add sp, $23
    rst $38
    nop
    rlca
    db $fd
    ld [bc], a
    ld [$5515], a
    xor d
    xor d
    ld d, l
    ld [hl], c
    inc bc
    ld b, b
    ret nz

    ldh [$30], a
    and e
    nop
    ld [hl], $02
    cp $03
    rst $18
    add e
    nop
    xor l
    ld a, [de]
    inc c
    rst $38
    inc bc
    rst $38
    nop
    cp h
    ld b, e
    ld hl, sp+$27
    ld hl, sp+$1f
    db $f4
    rrca
    add e
    ld a, a
    db $10
    rst $28
    ld a, [hl+]
    push de
    sub h
    db $eb
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    rrca
    ld d, l
    rst $38
    nop
    dec b
    ld a, [$d505]
    ld a, [hl+]
    xor d
    ld d, l
    and e
    add c
    add e
    rst $18
    ld a, e
    ldh [rNR51], a
    add b
    ret nz

    ldh a, [$30]
    adc h
    ld a, h
    ld [bc], a
    cp $e1
    rst $38
    dec e
    rst $38
    ld b, d
    cp [hl]
    and c
    ld e, a
    ld d, c
    xor a
    ld bc, $c6ff
    cp $38
    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [rSVBK]
    ret nc

    ldh a, [$88]
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    ld a, [bc]
    ld b, e
    cp $02
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$46
    inc b
    db $fc
    rrca
    ld hl, sp+$04
    cp b
    ld c, b
    ld e, b
    xor b
    and b
    ld e, b
    ld d, b
    or b
    or b
    ld d, b
    ld b, b
    or b
    add b
    ld h, b
    rst $38
    db $ec
    ld sp, $0313
    inc bc
    inc c
    rrca
    inc [hl]
    dec sp
    ld l, d
    ld d, l
    call nc, $a8ab
    rst $10
    ret nc

    xor a
    ld b, b
    ld a, a
    jr nc, jr_057_7068

    rrca
    rrca
    ld [hl], c
    ld [hl+], a
    ld bc, $80c2
    ld a, e
    dec c
    ld bc, $0d03
    inc c
    ld e, $10
    dec e
    jr nz, jr_057_707a

    inc hl
    dec a
    inc l
    ld a, [de]
    db $10
    ld b, e
    ccf
    jr nz, jr_057_704a

    rra
    db $10
    rrca
    inc c
    ld [hl], e
    ld a, a

jr_057_704a:
    add b
    ld b, [hl]
    rst $38
    nop
    rra
    ld a, [de]
    push af
    dec a
    ld [c], a
    ld a, $e1
    ld a, l
    jp nz, $d56a

    sbc $af
    cp a
    pop de
    cp [hl]
    pop hl
    xor h
    di
    and b
    rst $38
    ld d, b
    ld a, a
    ld a, b
    ld l, a
    ld [hl], a

jr_057_7068:
    ld c, a
    xor d
    rst $10
    add d
    rst $38
    inc bc
    rst $38
    ld b, e
    inc b
    db $fc
    ld bc, $f888
    ld [hl], e
    ldh [rNR50], a
    inc c
    inc e

jr_057_707a:
    ld a, e
    ld h, e
    push de
    add b

jr_057_707e:
    rst $28
    ret nz

    rst $38
    jr nc, jr_057_707e

    inc c
    db $fd
    inc bc
    ld a, [$fce6]
    inc e
    cp a
    inc bc
    ld e, e

jr_057_708d:
    inc c
    rst $38
    db $10
    push af
    jr nc, jr_057_708d

    ld h, b
    rst $38
    ldh [$7f], a
    ld hl, sp+$3f
    rst $38
    rrca
    rst $38
    ld bc, $ff4c
    nop
    inc b
    add b
    rst $38
    ld h, b
    rst $38
    jr jr_057_70ed

    rst $38
    nop
    ld [bc], a
    jr @+$01

    ldh [rLY], a
    rst $38
    nop
    inc bc
    ret nz

    rst $38
    ccf
    ccf
    ld [hl], a
    dec e
    rlca
    rrca
    cp a
    or b
    rst $38
    ld b, b
    cp a
    ld b, b
    ei
    add a
    rst $38
    add sp, $1f
    inc de
    rrca
    inc c
    rst $38
    ldh a, [rIE]
    db $10
    ld a, [$5d08]
    ld [$04bf], sp
    rst $38
    ld b, $ff
    rra
    inc hl
    rst $38
    nop
    ld hl, sp+$56
    rst $38
    nop
    add hl, bc
    jr c, @+$01

    ld a, h
    rst $00
    sub $ab
    and d
    rst $18
    pop de
    xor a
    ld b, e
    add c
    rst $38
    ld bc, $7f41

jr_057_70ed:
    or a
    nop
    ld h, e
    inc de
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [$f0]
    db $fc
    inc c
    cp $02
    rst $38
    pop hl
    rst $38
    add hl, de
    rst $38
    dec b
    ld a, [hl]
    ld [bc], a
    cp [hl]
    ld [bc], a
    and l
    nop
    adc d
    ld [bc], a
    call c, $83fc
    ld c, d
    rst $38
    nop
    ld [$ff40], sp
    jr nz, @+$01

    db $10
    rst $38
    inc c
    rst $38
    inc bc
    ld b, [hl]
    rst $38
    ld bc, $0243
    cp $07
    inc b
    db $fc
    ld [$30f8], sp
    ldh a, [$c0]
    ret nz

    db $ec
    add hl, sp
    and e
    nop
    ld [hl-], a
    ld de, $fc0c
    ld b, $fa
    dec bc
    push af
    ld d, a
    xor c
    xor e
    ld d, l
    dec d
    db $eb
    ld [bc], a
    cp $8c
    db $fc
    ld [hl], b
    ld [hl], b
    ld [hl], e
    rst $38
    db $ec
    ld hl, $0114
    ld bc, $0303
    rrca
    rrca
    add hl, de
    rra
    rla
    rra
    ccf
    ld l, $3f
    daa
    ld a, c
    ld c, c
    ld [hl], $36
    rrca

jr_057_7158:
    ld c, $1b
    add e
    adc l
    ld b, $2f
    dec a
    dec h
    ld a, b
    ld c, b

jr_057_7162:
    jr nc, jr_057_7194

    db $ec
    dec hl
    ldh [$2b], a
    ld bc, $c701
    add $6f
    db $eb
    cp a
    sub a
    rst $28
    jr nc, jr_057_7162

    di
    rst $00
    ld a, h
    jp z, $e97b

    ld a, c
    ld hl, sp-$08
    ld a, b
    jr z, jr_057_7158

    ld l, c
    cp [hl]
    and a
    inc l
    inc sp
    ld h, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $18
    adc h
    adc a
    inc de
    sub e
    ld d, b
    ld d, b

jr_057_7194:
    ldh a, [rNR42]
    reti


    dec de
    ld a, $7f
    rst $38
    rst $38
    ld hl, sp+$07
    ei
    add a
    pop hl
    rra
    ld hl, sp-$01
    cp $ff
    ld b, $ff
    nop
    rst $38
    ldh a, [rIE]
    adc h
    rst $38
    add d
    rst $38
    ld bc, $1dff
    rst $38
    ld b, e
    ld [hl-], a
    di
    nop
    ld a, $c4
    add l
    ld [bc], a
    ld a, [hl+]
    xor $44
    ld [hl+], a
    call nz, $0805
    ld c, b
    sub b
    sub b
    ld h, b
    ld h, b
    db $f4
    jr nz, jr_057_71cb

jr_057_71cb:
    ld c, [hl]
    add hl, de
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$cb]
    ei
    ld b, $ff
    rrca
    rst $38
    ld c, $ff
    add hl, de
    rst $38
    scf
    rst $30
    ld l, a
    jp $e17f


    cp $b6
    sbc h
    inc c
    di
    ld b, e
    sbc a
    rst $38
    ld b, $fe
    ld c, $0c
    rlca
    inc b
    inc bc
    ld [bc], a
    ld hl, sp+$2d
    nop
    ld l, a
    and e
    nop
    ld l, h
    inc de
    ld h, b
    ldh [$f0], a
    ldh a, [rBCPS]
    ret z

    cp h
    db $e4
    sbc $d2
    db $fc
    sbc h
    add sp, -$78
    ld a, h
    ld b, h
    inc a
    inc [hl]
    inc c
    inc c
    and h
    nop
    jr nz, jr_057_7234

    ld b, b
    ld b, e
    ldh [rNR41], a
    ld bc, $c0c0
    or a
    or a
    dec b
    set 1, a
    ld [hl], a
    ei
    cp a
    sub h
    adc c
    nop
    db $76
    adc l
    nop
    or d
    ld b, $00
    rst $38
    ei
    add a
    ld sp, hl
    rlca
    ldh [$8a], a
    nop
    push bc
    sub c

jr_057_7234:
    ld bc, $0202
    adc b
    ld hl, sp+$4b
    adc d
    ld bc, $0b15

Call_057_723e:
    add b
    rst $38
    ld b, b
    ld e, a
    ld c, b
    ld c, a
    daa
    daa
    db $10
    dec d
    dec c
    dec c
    add h
    db $e3
    add e
    nop
    pop hl
    inc b
    call z, $8888
    jr nc, @+$32

    add l
    ld bc, $8586
    nop
    add b
    inc b
    sbc [hl]
    rst $20
    inc c
    di
    ldh [rSCX], a
    rst $38
    nop
    add [hl]
    nop
    rst $08
    inc b
    ld bc, $00ff
    rst $38
    ld a, $c4
    add c
    rst $38
    db $ec
    adc h
    ld de, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0905
    ld [$1407], sp
    rra
    inc d
    ld a, [bc]
    rrca
    rlca
    rlca
    ld bc, $48f8
    sub c
    nop
    ld bc, $d6c3
    ld b, $03
    inc b
    rlca
    inc b
    ld b, $04
    rlca
    ld b, e
    ld [$1f0f], sp
    ld de, $321f
    ccf
    ld b, d
    rst $38
    db $e4
    ld a, a
    cp $3f
    db $e3
    daa
    pop af
    sub e
    ld a, b
    sbc e
    db $dd
    and l
    db $fd
    push hl
    ld sp, hl
    reti


    di
    di
    rst $00
    rst $00
    ld l, $7f
    inc bc
    inc bc
    ld bc, $8501
    ld sp, hl
    dec h
    ld bc, $0200
    ld [hl+], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    dec l
    ld bc, $0224
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ret z

    sub b
    nop
    inc bc
    add e
    or e
    ldh [$2e], a
    ld b, $07
    add hl, de
    ld e, $63
    ld a, h
    add c
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $06ff
    xor a
    ld [$06ff], sp
    rst $38
    inc bc
    rst $38
    add a
    db $fd
    rrca
    ld sp, hl
    rla
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$bf]
    ld hl, sp-$03
    cp $ff
    rst $38
    ld c, [hl]
    rst $38
    inc hl
    rst $38
    pop de
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ld [hl+], a
    rst $38
    rrca
    ccf
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ld e, h
    ld a, [hl]
    add e

jr_057_7316:
    add e
    add e
    adc e
    dec e
    ld e, a
    rst $38
    ccf
    ccf
    add b
    add b
    cp a
    ld a, a
    ld d, b
    or d
    and b
    ld d, d
    ld d, b
    or d
    ldh a, [rNR14]
    jr nc, jr_057_7340

    jr nz, jr_057_7352

    jr nz, @+$25

    jr nz, @+$24

    jr nz, jr_057_7316

jr_057_7334:
    jr nz, jr_057_7375

    ldh a, [$f4]
    dec h
    rst $38
    dec b

jr_057_733b:
    ld h, $ff
    db $e3
    rst $38
    rra

jr_057_7340:
    rra
    ld h, c
    ldh [$27], a
    ret nz

    ret nz

    ldh [rNR41], a
    ret nc

    jr nc, @-$02

    inc e
    ld h, d
    sbc [hl]
    or d
    sbc $11
    rst $38

jr_057_7352:
    ld hl, $f1ff
    rst $18
    pop af
    dec e
    ld sp, hl
    adc a
    ld e, d
    ld l, [hl]
    ld a, [$fe1e]
    ld a, [de]
    db $f4
    ld a, [bc]
    or h
    db $fc
    call nz, $887c
    ld hl, sp+$08
    ld hl, sp-$50
    ldh a, [$a4]
    ld bc, $2328
    and b
    ld bc, $80e0
    dec h

jr_057_7375:
    ret nc

    inc c
    ldh a, [$e8]
    add sp, $08
    ld [$e8a8], sp
    xor b
    xor b
    jr z, jr_057_73aa

    ld l, b
    ld l, b
    add e
    adc e
    dec b
    ld hl, sp-$08
    db $10
    stop
    db $10
    dec h
    jr nz, jr_057_733b

    ld bc, $633c
    inc b
    ld b, b
    ret nz

    ld h, b
    ldh [$a0], a
    jp nz, $ece8

    rst $18
    rst $38
    db $ec
    ld [hl], h
    ld d, $60
    jr nz, jr_057_7334

    ld h, b
    sub b
    ld a, b
    ldh a, [$f0]
    ld a, b

jr_057_73aa:
    inc a
    ld a, b
    ld a, h
    ld a, $1e
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld bc, $4303
    inc bc
    ld bc, $0002
    ld bc, $ec01
    daa
    dec b
    inc bc
    ld bc, $0704
    inc b
    inc b
    ld a, [hl+]
    rlca
    ldh [rNR41], a
    rla
    rrca
    ccf
    rra
    ccf
    ld a, a
    ei
    db $fc
    add sp, -$10
    ldh a, [$e0]
    ret nz

    db $e3
    pop hl
    push bc
    db $e3
    rst $00
    ret nz

    db $e3
    ldh a, [$e0]
    add sp, -$10
    ld a, e
    db $fc
    ccf
    ld a, a
    rra
    ccf
    rla
    rrca
    rlca
    ld a, a
    ld l, $80
    ld de, $c0a0
    ldh a, [$e0]
    ldh a, [$f9]
    ld a, c
    rst $38
    ld e, a
    ccf
    ccf
    rra
    rrca
    rra
    ld e, $8f
    rra
    adc [hl]
    and e
    nop
    ld a, h
    ld bc, $3c5e
    and l
    nop
    add d
    ld bc, $c0a0
    db $f4
    jr z, jr_057_7412

jr_057_7412:
    sub d
    inc c
    jr jr_057_7426

    inc h
    jr jr_057_743d

    ld a, b
    inc a
    inc a
    ld a, b
    ldh a, [$78]
    ld hl, sp-$10
    and l
    nop
    add [hl]
    nop
    nop

jr_057_7426:
    sub a
    cp h
    inc b
    ld bc, $0200
    ld bc, $4302
    inc bc
    rlca
    ld bc, $070f
    ld b, l
    rlca
    rrca
    jp $0387


    rlca
    inc bc
    inc bc

jr_057_743d:
    inc bc
    add l
    nop
    adc d
    ld bc, $8704
    ld b, h
    add a
    ld b, a
    ld bc, $c7c7
    ld [hl+], a
    add a
    dec b
    rla
    adc a
    ccf
    sbc a
    cp a
    rst $38
    adc l
    nop
    jp nc, $8008

    add [hl]
    add h
    adc c
    add [hl]
    adc c
    add a
    adc a
    adc a
    ld [hl+], a
    add a
    ld b, $a3
    rst $00

jr_057_7465:
    di
    rst $20
    rst $30
    rst $38
    ld a, a
    adc h
    ld bc, $a823
    push hl
    ld [bc], a
    add b
    ret nz

    add b
    ld b, l
    add b
    ret nz

    or [hl]

jr_057_7477:
    nop
    adc [hl]
    ld [bc], a
    ld bc, $0100
    xor d
    ld bc, $0a78
    ret nz

    ld b, b
    jr nz, jr_057_7465

    jr nc, jr_057_7477

    ld hl, sp+$78
    db $fc
    inc a
    ld a, [hl]
    adc [hl]
    nop
    add d
    ld h, l
    inc b
    inc c
    ld [$1c12], sp
    ld [hl-], a
    and l
    sbc e
    adc l
    ld bc, $1572
    ccf
    ld a, a
    ld hl, sp-$01
    rst $30
    rst $38
    jp hl


    rst $38
    call nc, $d0fb
    rst $38
    reti


    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, b
    rst $38
    adc c
    nop
    and $83
    ld bc, $0020
    cp a
    add h
    sub a
    ld bc, $ffee
    ld b, e
    rst $28
    cp $03
    call c, $befe
    db $fc

jr_057_74c7:
    adc e
    ld bc, $ff34

jr_057_74cb:
    db $ec
    inc hl
    dec b
    ld bc, $0200
    nop
    inc bc
    nop
    ld b, e
    rlca
    nop
    ld b, e
    rrca
    nop
    dec bc
    rra
    nop
    rla
    nop
    dec bc
    nop
    rla
    nop
    dec hl
    nop
    scf
    nop
    ld b, e
    ccf
    nop
    add hl, bc
    rra
    nop
    ld e, $01
    ld c, $01
    inc b
    inc bc
    ld [bc], a
    inc bc
    jp nz, Jump_057_4580

    inc b
    rlca
    ld b, [hl]
    ld [$030b], sp
    ld bc, $0408
    inc b
    sbc e
    push de
    add e
    rst $10
    ldh [$27], a
    dec d
    nop
    or a
    nop
    ld e, [hl]
    jr nz, @-$50

    ld d, b

jr_057_7510:
    ld e, h
    jr nz, jr_057_74cb

    ld b, b
    ld a, b
    add b
    or b
    ld b, b

jr_057_7518:
    ld d, b
    and b
    and b
    ld d, b
    ret c

    jr nz, jr_057_74c7

    ld d, b
    db $f4
    ld [$54a8], sp
    or h
    ld c, d
    cp d
    ld b, h
    ld d, $e8
    jr jr_057_7510

    inc d
    add sp, $38
    ret nz

    and e
    rst $18
    ld c, b
    ret nz

    ld b, b
    ld b, h
    jr nz, jr_057_7518

    dec b
    ldh a, [rNR10]
    db $fc
    inc c
    rst $38
    inc bc
    cp l
    nop
    ld [$8000], sp
    ldh a, [rNR44]
    nop
    ld bc, $0115
    nop
    ld bc, $0203
    ld b, $04
    dec c
    ld [$101a], sp
    dec d
    db $10
    dec hl
    jr nz, @+$37

    jr nz, jr_057_75c6

    ld b, b
    ld d, a
    ld b, b
    xor a
    ld b, e
    add b
    rst $38
    ld [bc], a
    sub b
    rst $38
    ldh [$9d], a
    cp c
    add e
    or a
    nop
    rlca
    ld b, e
    ld [$460f], sp
    db $10
    rra
    ld [bc], a
    rrca
    db $10
    rra
    ld c, b
    jr nz, jr_057_75b8

    rlca
    rra
    jr nz, jr_057_75fc

    ld b, b
    ccf
    ld b, b
    rst $38
    add b
    ld b, e
    rst $38
    nop
    nop
    ld a, a
    add h
    add e
    ld d, c
    rst $38
    nop
    nop
    cp $7a
    inc bc
    inc e
    ld a, [hl]
    ld b, d
    add c
    add e
    nop
    jr z, jr_057_7599

    rra

jr_057_7599:
    nop
    ld e, c
    rst $38
    nop
    rrca
    cp $01
    ld hl, sp+$07
    pop af
    rrca
    ld a, [c]
    ld c, $fe
    ld b, $e6
    ld [bc], a
    db $e3
    ld bc, $00ff
    ld b, e
    rst $18
    jr nz, jr_057_75ba

    rst $38
    db $10
    rst $28
    inc c
    add d
    rrca

jr_057_75b8:
    add c
    add hl, bc

jr_057_75ba:
    ld [$0843], sp
    nop
    nop
    db $10
    cp a
    ld bc, $0020
    ldh [$a4], a

jr_057_75c6:
    ld bc, $0541
    ld hl, sp+$28
    add sp, $28
    ret nz

    jr z, jr_057_7613

    ld hl, sp+$38
    inc bc
    db $fc
    inc [hl]
    db $fc
    inc d
    ld b, e
    db $fc
    ld [bc], a
    dec bc

jr_057_75db:
    cp $02
    ld a, [$0c3e]
    db $fc
    jr jr_057_75db

    ld h, b
    ldh [$80], a
    add b
    adc l
    xor a
    add hl, bc
    add b
    ld [hl], b
    db $10
    ldh a, [$08]
    add sp, $00
    ldh a, [$50]
    ret nc

    and e
    nop
    ld e, [hl]
    rst $38
    db $ec
    dec sp
    add hl, bc
    inc bc

jr_057_75fc:
    rlca
    ld b, $08
    ld [$060f], sp
    rlca
    ld bc, $8401
    adc l
    inc d
    inc bc
    dec c
    inc c
    inc d
    inc de
    ld de, $061f
    ld b, $0a
    add hl, bc

jr_057_7613:
    inc d
    inc de
    add hl, hl
    daa
    ld d, [hl]
    ld c, [hl]
    ld l, b
    ld e, b
    ret nc

    or b
    db $ec
    dec sp
    ldh [rNR44], a
    jp $38c7


    jr c, @+$49

    add c
    ld c, $ff
    add e
    rst $38
    ld b, [hl]
    ld a, [hl]
    adc c
    ld sp, hl
    or [hl]
    ld [hl], d
    ld l, a
    call nz, $bec5
    adc b
    ld a, a
    add hl, bc
    rst $38
    ld de, $6aff
    rst $30
    sub $ab
    db $ec
    rla
    ld [hl], b
    ccf
    ret nz

    ld a, a
    db $ec
    ld sp, $2de0
    ld b, $0f
    ld de, $0e10
    ld hl, $2739
    ld h, [hl]
    ld e, a
    ret


    cp [hl]
    add a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    xor $e1
    dec b
    inc bc
    inc c
    rrca
    jr nz, jr_057_76a4

    pop bc
    ld a, a
    add e
    cp $07
    db $fc
    rrca
    ld hl, sp+$17
    ld hl, sp+$2f
    ldh a, [$57]
    add sp, $4a
    push af
    sub l
    ld [$30ec], a
    db $10
    ld bc, $1e0e
    db $e3
    pop hl
    inc a
    rst $18
    rst $00

jr_057_7682:
    ld hl, sp+$3d
    jp $04fc


    ld a, b
    adc b
    ld [hl], c
    cp $a3
    pop hl
    add hl, de
    jr nz, @+$01

    ret nc

    rst $38
    ld e, $ff
    ld [hl], e
    pop af
    rst $20
    and b
    rst $08
    ld b, b
    sbc a
    or b
    adc a
    ld hl, sp+$45
    cp $a2
    ld a, a
    ld h, e
    cp [hl]

jr_057_76a4:
    sub c
    ld a, a
    ld de, $f0ff
    dec l
    nop
    db $10
    ldh [$31], a
    dec de
    jr c, @-$37

    rst $08
    ld [hl], b
    ccf
    sbc [hl]
    pop hl
    ld a, [$d906]
    jr c, jr_057_7682

    ret nz

    rra
    nop
    rst $38
    jr @-$0f

    inc e
    ld a, a
    add c
    db $76
    rst $08
    jr nz, @+$01

    daa
    ld hl, sp+$1f
    ldh a, [$8f]
    ld hl, sp-$31
    ld a, c
    and $3d
    ld [c], a
    ccf
    ld a, [c]
    rra
    db $f4
    rra
    xor b
    ld e, a
    ld e, h
    xor a
    xor h
    ld e, a
    ld d, [hl]
    xor a
    ld a, a
    ldh [$2f], a
    ld [$1000], sp
    inc b
    inc d
    inc d
    ld a, [hl+]
    ld b, $2a
    ld h, $52
    ld c, [hl]
    ld [hl-], a
    adc [hl]
    db $e4

jr_057_76f2:
    ld e, h
    db $e4
    inc a
    db $f4
    sbc h
    ld a, b
    jr jr_057_76f2

    inc c
    db $fc
    inc c
    db $ec
    inc e
    db $fc
    ld a, [de]
    cp $2a
    ld [$9c6e], a
    db $f4

jr_057_7707:
    inc [hl]
    call z, $1ce8
    ld hl, sp+$1c
    db $ec
    ld h, h
    call c, $5cc4
    call nz, $b843
    adc b
    dec bc
    db $fc
    add h
    cp h
    call nz, $c27e
    ld e, [hl]
    ld [c], a
    ccf
    pop hl
    rra
    pop af
    rst $38
    ld a, d
    ld bc, $0101
    inc hl
    inc bc
    ld [hl+], a
    rlca
    inc b
    rrca
    rlca
    ld b, $0f
    rrca
    inc h
    ld c, $03
    rrca
    ld c, $06
    rrca
    call nz, $068d
    rlca
    inc bc
    inc bc
    ld bc, $0003
    ld bc, $21ec
    add hl, de
    ld [bc], a

jr_057_7747:
    ld bc, $0f03
    ccf
    rra
    ld a, [hl]
    ccf
    ld a, b
    db $fc
    ldh [$f0], a
    ld [c], a
    pop hl
    ei
    rst $30
    cp a
    cp a
    ccf
    sbc a
    dec a
    ld e, $1e
    inc a
    ld a, b
    inc a
    ld b, e
    ld a, h
    jr c, jr_057_7707

    add a
    inc d
    dec a
    ld e, $0f
    sbc a
    add a
    adc a
    jp $e2c7


    pop hl
    ldh [$f0], a
    ld a, b
    db $fc
    ld a, [hl]
    ccf
    ccf
    rra
    inc bc
    rrca
    ld [bc], a
    sbc b
    reti


    add hl, bc
    db $f4
    ld hl, sp-$44
    sbc a
    rst $38
    rst $38
    sub a
    rrca
    ld bc, $8303
    adc e
    dec e
    call c, $febe
    rst $38
    ld l, a
    sbc a
    dec bc
    rlca
    rlca
    inc bc
    ld bc, $2363
    or c
    ld h, e
    pop af
    ld bc, $0763
    inc bc
    dec bc
    rlca
    ld l, a
    sbc a
    cp $ff
    db $fc
    cp $f4
    ld hl, sp+$63
    inc b
    ldh [rP1], a
    ldh [$f0], a
    ldh [rLYC], a
    ldh a, [$60]
    inc b
    sub b
    jr nz, jr_057_7747

    nop
    ld h, b
    or h
    nop
    rlca
    and e
    nop
    rra
    rrca

Jump_057_77c0:
    ldh a, [rSVBK]
    ld hl, sp+$78
    inc a
    inc a
    inc e
    inc e
    ld e, $0e
    sbc [hl]
    adc a
    adc $c6
    rst $08
    rst $00
    ld [hl+], a
    rst $38
    inc b
    db $fd
    cp $c2
    db $fc
    add b
    jp nz, $019a

    nop
    add b
    db $ec
    ld l, c
    adc c
    nop
    jr nc, @-$79

    nop
    inc a
    add l
    nop
    add b
    dec bc
    rst $00
    rst $08
    db $e3
    rst $20
    ld a, [c]
    ld sp, hl
    ld a, [hl]
    rst $38
    rra
    ccf
    rlca
    rrca
    adc l
    nop
    inc a
    adc l
    nop
    ret nc

    inc b
    ret nz

    ldh [$e0], a
    ldh a, [$e0]
    adc h
    nop
    rst $20
    add h
    nop
    ret nz

    ld a, [bc]
    ld h, a
    daa
    or e
    ld h, c
    di
    inc bc
    ld h, c
    inc bc
    ld bc, $0301
    adc b
    nop
    ret nz

    add e
    nop
    jr c, jr_057_7820

    ld h, c
    ld hl, $67b3
    di
    dec bc

jr_057_7820:
    ld h, a
    adc e
    nop
    call nc, $0083
    ld [hl], b
    ld [bc], a
    ld a, $1f
    dec e
    ld b, h
    ccf
    ld a, d
    ld b, e
    ld a, e
    ccf
    inc bc
    dec e
    ccf
    ld a, $1f
    adc e
    nop
    add h
    db $10
    cp $ff
    rrca
    rst $38
    rst $30
    rst $38
    dec sp
    rst $38
    sbc l
    ld a, a
    dec e
    rst $38
    dec a
    rst $38
    db $fd
    rst $38
    ei
    call nz, $898b
    cp a
    rst $38
    db $ec
    sub l
    dec c
    inc c
    inc c
    rra
    inc de
    inc [hl]
    inc l
    add hl, sp
    ld [hl+], a
    jr jr_057_7870

    jr jr_057_787a

    rrca
    rrca
    db $ec
    ld b, e
    rlca
    ld bc, $0301
    ld [bc], a
    ld bc, $0701
    inc b
    ret


    add h
    add e
    sub c

jr_057_7870:
    adc c
    adc e
    dec bc
    add [hl]
    add [hl]
    ld a, b
    ld a, c
    add c
    rlca
    inc bc

jr_057_787a:
    rst $38
    ld [bc], a
    cp $fc
    db $fc
    inc hl
    inc b
    ld bc, $0808
    inc hl
    add hl, bc
    nop
    ld de, $1244
    inc de
    ld bc, $0e0f
    ld b, a
    inc bc
    ld [bc], a
    ld bc, $0201
    inc hl
    ld bc, $0000
    call c, $e0cc
    ld b, l
    rrca
    rrca
    jr c, jr_057_78d7

    db $ec
    rst $18
    cp $13
    sbc [hl]
    ld sp, hl
    cp b
    ld h, a
    ld de, $1dff
    rst $38
    dec h
    rst $38
    di
    cp $5f
    ld d, b
    ld e, [hl]
    ld d, c
    rst $08
    ret nz

    and a
    ld c, b
    ccf
    and $d7
    ld hl, sp+$26
    ccf
    ld a, [c]
    rst $38
    cpl
    dec a
    ld b, e
    ld a, c
    pop hl
    sbc a
    pop bc
    cp a
    add c
    rst $38
    add d
    cp $12
    ld l, [hl]
    ld h, d
    ld c, [hl]
    add d
    adc $42
    adc [hl]
    ld [bc], a
    add [hl]
    nop

jr_057_78d7:
    ld [bc], a
    nop
    add [hl]
    ld [bc], a
    add [hl]
    add [hl]
    ld c, d
    add e
    ld c, c
    db $eb
    ld hl, $f34b
    db $10
    dec c
    rst $20
    db $10
    rst $28
    sbc b
    ld c, a
    ld a, b
    daa
    inc a
    rra
    inc e
    dec d
    ld e, $1b
    ld e, $83
    ld bc, $0924
    rlca
    inc b
    inc b
    rlca
    ld [$080f], sp
    ld [$0707], sp
    ld h, c
    ldh [rLYC], a
    ldh [$e0], a
    jr @-$06

    inc b
    db $fc
    ld [bc], a
    cp $12
    cp $89
    rst $38
    ret


    ld a, a
    ld b, l
    rst $38
    push hl
    ccf
    or $1e
    ld sp, hl
    add hl, bc
    db $fd
    ret


    rst $30
    add hl, bc
    cp $2a
    cp $5e
    jp nc, $446e

    db $fc
    inc h
    inc a
    jr z, jr_057_79a3

    inc e
    adc h
    ld [hl+], a
    inc bc
    nop
    jr nc, jr_057_7972

    inc a
    nop

jr_057_7934:
    ld a, a
    jr jr_057_79b6

    inc b

jr_057_7938:
    ld a, a
    rlca
    ld a, a
    inc b
    ld a, h
    inc b
    inc b
    nop
    ld a, b
    nop
    ld [hl], b
    ld [$0878], sp
    jr c, jr_057_7950

    ld [$f0f0], sp
    dec l
    add b
    ld b, l
    ret nz

    ld b, b

jr_057_7950:
    ld b, l
    ldh [rNR41], a
    add a
    adc c
    dec b
    jr nz, jr_057_7938

    ld b, b
    ret nz

    add b
    add b
    db $ec
    dec hl
    dec c
    pop bc
    pop hl
    ld e, $1e
    add c
    ld [bc], a
    nop
    ld sp, hl
    ld [bc], a
    ei
    add d
    rst $38
    ccf
    ld a, $f8
    ld b, l
    nop
    jp hl


    rst $18

jr_057_7972:
    db $e4
    inc bc
    ld b, b
    ret nz

    ldh [rNR41], a
    ld hl, sp+$3b
    add b
    rst $38
    db $ec
    sbc c
    dec h
    ld bc, $46f8
    add b
    inc c
    ld bc, $0201
    ld [bc], a
    inc b
    ld b, $04
    dec bc
    inc c
    rrca
    ld a, [bc]
    rrca
    dec bc
    ld b, e
    inc b
    rlca
    ld [hl+], a
    dec bc
    ldh [rNR50], a
    ld [$0606], sp
    ld [$0408], sp
    dec b
    dec b
    rlca
    add hl, de
    add hl, de

jr_057_79a3:
    ld h, c
    ld h, c
    add c
    add c
    ld bc, $0061
    db $10
    inc b
    inc c
    rlca
    dec bc
    inc c
    inc e
    nop
    jr nz, jr_057_7934

    and b
    add b

jr_057_79b6:
    and c
    add b
    add d
    ld h, a
    ld h, a
    ld e, b
    ld e, h
    ld b, h
    ld b, b
    ld b, d
    inc b
    ld h, d
    ld b, b
    ld e, b
    ld b, b
    ld c, b
    ld b, [hl]
    ld b, c
    ld c, c
    ld [$2171], sp
    ld hl, $1d1d
    ld a, [bc]
    rrca
    dec c
    rrca
    add e
    add e
    inc hl
    rlca
    inc hl
    inc bc
    rlca
    ld [bc], a
    inc bc
    nop

jr_057_79dd:
    ld [bc], a
    inc b
    inc b
    rlca
    rlca
    ld h, l
    ldh [rOBP0], a
    ld a, b
    ld a, b
    cp $86
    ccf
    ld bc, $013e
    ld a, a
    nop
    rst $38
    nop
    rst $30
    inc c
    rst $18
    jr c, jr_057_79dd

    rst $38
    rst $20
    cp l
    ld a, a
    sbc b
    cp $81
    ld b, $1f

Call_057_79ff:
    ld bc, $e2c1
    ld [hl-], a
    ei
    rrca
    sub [hl]
    cp $7a
    ld c, d
    ld [hl+], a
    ld [hl-], a
    ld c, d
    ld a, d
    call z, $fefc
    ld a, [c]
    add a
    adc c
    inc bc
    dec b
    inc bc
    rlca
    inc b
    call nz, $1c1c
    ldh [$e0], a
    cp h
    cp h
    adc a
    cp a
    db $f4
    db $fc
    sbc [hl]
    sbc [hl]
    ld [c], a
    cp $21
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    ld b, [hl]
    rst $38
    jr nz, jr_057_7a3a

    ld h, b
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    or b
    rst $38

jr_057_7a3a:
    ld [hl], c
    ld b, h
    rst $38
    ld a, [c]
    ld b, e
    db $e4
    rst $38
    add hl, bc
    ldh [rIE], a
    ld [hl], c
    rst $38
    ld a, [hl]
    ld [hl], d
    call z, $03cc
    rlca
    ld l, c
    inc hl
    add b
    ld b, l

jr_057_7a50:
    ret nz

    ld b, b
    adc c
    add a
    add l
    sub a
    and e
    nop
    db $fc
    ld b, $08
    jr jr_057_7a61

    inc h
    inc b
    ld b, h
    inc b

jr_057_7a61:
    ld [hl+], a
    add h
    dec b
    nop
    add h
    ld [$08c8], sp
    ld [$1823], sp
    add hl, de
    jr z, jr_057_7a97

    call nz, $05c4
    ld b, a
    nop
    ld b, d
    nop
    ld [hl+], a
    nop
    ld hl, $d180
    ld h, b
    pop af
    ld d, b
    ret nc

    ld c, b
    ret z

    ld b, [hl]
    add $59
    reti


    ld h, b
    ldh [rHDMA1], a
    ld b, b
    ret nz

    and h
    nop
    rst $20
    ld [bc], a
    jr nz, jr_057_7a50

    ret nz

    db $ec
    ld b, b
    ld [bc], a
    add b
    ld b, b
    ld h, b

jr_057_7a97:
    daa
    db $10
    ld bc, $2020
    jp nz, $01d0

    ld b, b
    add b
    ld hl, sp+$41
    sub c
    db $ec
    ld c, d
    rst $38
    db $ec
    ld e, [hl]
    dec b
    rlca
    inc bc
    add hl, bc
    rlca
    add hl, bc
    nop
    call $0585
    ld bc, $0301
    rlca
    inc bc
    inc bc
    ld c, b
    rlca
    rrca
    ld [bc], a
    inc bc
    rlca
    rlca
    ld b, e
    inc bc
    ld bc, $0102
    nop
    ld bc, $22ec
    ldh [$28], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, h
    inc e
    ld a, $0e
    rra
    rlca
    rrca
    cpl
    rra
    cp a
    ld a, a
    rst $38
    rst $38
    db $ed
    di
    and c
    ret nz

    ret nz

    add b
    nop
    adc h
    add h
    ld d, $8c
    ld e, $00
    adc h
    ret nz

    add b
    and c
    ret nz

    db $ed
    di
    inc hl
    rst $38
    ld bc, $fe7d
    add a
    and a
    inc bc
    inc bc
    rlca
    ld bc, $f003
    ld [hl+], a
    rst $18
    ld bc, $8080
    add e
    rst $18
    ld [$e0e0], sp
    ldh a, [$78]
    ldh a, [$f0]
    ld a, b
    inc a
    ld a, b
    ld b, e
    ld a, h
    jr c, jr_057_7b1b

    inc a
    ld a, b
    ldh a, [$78]
    ld a, b

jr_057_7b1b:
    ldh a, [$a3]
    pop bc
    ld bc, $8040
    adc d
    and a
    ld b, $f8
    ld hl, sp-$1c
    ldh a, [$e4]
    nop
    ld hl, sp-$14
    ld d, h
    inc bc
    rra
    rrca
    daa
    rra
    xor e
    db $db
    ld [$e0e0], sp
    ld hl, sp-$08
    db $fc
    inc a
    cp $0e
    ccf
    add e
    nop
    cp h
    rlca
    inc e
    ccf
    rrca
    rra
    rlca
    rrca
    ld bc, $8a07
    nop
    ld [$fe06], a
    cp $f9
    db $fc
    ld sp, hl
    nop
    cp $6c
    inc bc
    ld a, a
    ccf
    sbc a
    ld a, a
    xor e
    sub e
    ld [$f8f8], sp
    cp $fe
    rst $38
    rra
    rst $38
    cpl
    rra
    adc l
    nop
    ret nc

    dec b
    ld a, $7f
    rra
    ccf
    rlca
    rra
    adc e
    nop
    ld h, h
    adc [hl]
    ld bc, $0020
    rst $38
    ld b, e
    rst $38
    cp $01
    nop
    rst $38
    sbc d
    nop
    db $f4
    ld [bc], a
    ld b, b
    nop
    ld b, b
    xor h
    nop
    ld [$0305], a
    ld bc, $0304
    inc b
    nop
    ret z

    add l
    add e
    nop
    or b
    inc bc

jr_057_7b96:
    ldh a, [$f8]
    jr c, jr_057_7b96

    add a
    nop
    cp b
    ld h, h
    ld b, $f0
    ldh a, [$c8]
    ldh [$c8], a
    ret nz

    ldh a, [$a3]
    and l
    add e
    nop
    ret nz

    ld c, $e1
    rst $38
    sbc $ff

jr_057_7bb0:
    and a
    rst $38
    ld d, e
    rst $28
    ld b, e
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    cp a
    call nz, $878b
    nop
    ret c

    add l
    ld bc, $0210
    ld hl, sp-$10
    ld [hl], b
    ld c, b
    ld hl, sp-$44
    ld [bc], a
    ld [hl], b
    ld hl, sp-$08
    adc d
    ld bc, $ff25
    db $ec
    dec hl
    rra
    ld bc, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $04
    rlca
    inc b
    rrca
    ld [$0a0f], sp
    rla
    inc e
    inc e
    db $10
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0c0b], sp
    dec b
    rlca
    rlca
    inc b
    inc bc
    inc bc
    ldh a, [rNR52]
    call nz, $070e
    rlca
    rra
    ld l, $2f
    ld c, l
    ld e, h
    cp d
    sbc b
    ld d, l
    jr nc, jr_057_7bb0

    jr nz, jr_057_7c86

    nop
    ld b, [hl]
    rst $38
    nop
    inc b
    ld [$07ff], sp
    ccf
    nop
    ld b, e
    ld e, a
    ld b, b
    nop
    ccf
    add h
    adc a
    inc bc
    ei
    call nz, $3c3f
    ldh a, [rNR42]
    pop de
    dec d
    rra
    ccf
    db $fc
    rst $38
    rst $20
    ld hl, sp-$42
    pop bc
    cp e
    rlca

jr_057_7c2b:
    ld l, a
    rra
    db $db
    inc a
    xor a
    ld [hl], b
    ld a, a
    add b
    cp $01
    ei
    rlca
    ld b, a
    rst $38
    nop
    ld bc, $03fc
    ld b, l
    rst $38
    nop

jr_057_7c40:
    nop
    db $fd
    ld b, e
    ld [bc], a
    rst $38
    inc b
    ld hl, $b3ff
    ld c, h
    ld c, h
    db $f4
    ld hl, $5000
    add hl, bc
    ld h, b
    ldh [$f8], a
    jr jr_057_7c2b

    cp $ab
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    nop
    rlca
    call c, $fe3f
    rst $38
    db $fd
    rst $38
    adc $3f
    ld b, e
    rst $38
    nop
    dec b
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $20
    rra
    ld c, b
    rst $38
    nop
    inc b
    jr nz, @+$01

    or d
    ld c, l
    ld c, l
    db $f4
    dec hl
    nop
    ld [bc], a
    ld b, e
    ret nz

    ld b, b
    rlca
    ldh [rNR41], a
    and b
    ldh [rSVBK], a

jr_057_7c86:
    ldh a, [$b0]
    ldh a, [rSCX]
    ld hl, sp+$08
    dec b
    ret c

    add sp, -$54
    db $fc
    call nc, Call_057_43fc
    db $fc
    inc b
    rlca
    cp h
    ld b, h
    cp $42

jr_057_7c9b:
    db $fc
    inc l
    ret nc

    ret nc

    call nz, $a100
    add e
    nop
    ld sp, $0806
    rrca
    ld a, [bc]
    inc c
    inc c
    ld a, [de]
    ld [de], a
    inc hl
    ld d, $03
    db $10
    stop
    jr jr_057_7c40

    nop
    ld b, h
    add [hl]
    nop
    add b
    inc b
    ld [$0c37], sp
    sbc d
    add a
    ld b, e
    rst $08
    ret nz

    ld bc, $000f
    adc l
    nop
    sub d
    add a
    cp a
    inc bc
    dec c
    ld c, $18
    inc d
    add l
    pop bc
    inc bc
    ld [$0f10], sp
    ld [$bf91], sp
    dec b
    rst $30
    inc c
    ld a, [hl-]
    rlca
    sbc a
    add b
    ld b, e
    rst $18
    ret nz

    nop
    rra
    sub c
    cp a
    add e
    nop
    dec [hl]
    ld [bc], a
    ld [$1a17], sp
    add e
    nop
    inc a
    adc b
    nop
    add b
    ld [bc], a
    nop
    ei
    inc c
    add e
    nop
    adc h
    rst $38
    db $ec
    ld b, e
    rla
    ld bc, $0200
    ld [bc], a
    ld bc, $1d01
    dec c
    daa
    inc hl
    ld c, a
    nop
    ld e, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nc, @+$0f

    ld c, $1e
    rra
    cpl
    jr nz, jr_057_7c9b

    adc l
    db $ec
    dec a
    ld de, $0101
    ld sp, $cd31
    ld c, l
    rra
    ld [bc], a
    ld a, a
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ldh [$bf], a
    ld [hl], b
    and h
    add a
    add hl, bc
    ld b, $f8
    ld [$10f0], sp
    pop hl
    jr nz, @-$17

    jr nz, @+$01

    ldh a, [rNR43]
    rst $18
    ld [$0001], sp
    ld [bc], a
    nop
    inc b
    inc b
    ld [$1808], sp
    ld [hl+], a
    db $10
    inc b
    ld a, [hl-]
    jr nz, jr_057_7d83

    jr nz, jr_057_7dca

    ld b, h
    ld b, b
    ld a, a
    ld b, l
    rst $38
    add b
    ld c, d
    rst $38
    nop
    dec c
    add b
    rst $38
    ld c, h
    di
    inc sp
    di
    db $10
    ld sp, hl
    db $10
    db $fd
    add sp, -$04

jr_057_7d66:
    jr jr_057_7d66

    ld b, e
    inc b
    rst $38
    ld [bc], a
    inc bc
    rst $38
    ld bc, $dfa3
    inc b
    rra
    rrca
    jr nz, jr_057_7d76

jr_057_7d76:
    daa
    ld b, h
    jr nz, jr_057_7da9

    nop
    rra
    ld c, c
    db $10
    rla
    nop
    nop
    ld b, l
    dec bc

jr_057_7d83:
    ld [$1b15], sp
    jr jr_057_7deb

    ld l, b
    add a
    adc b
    rlca
    nop
    inc bc
    nop
    dec b
    nop
    dec bc
    nop
    dec d
    nop
    xor e
    nop
    ld d, a
    nop
    cp a
    nop
    ld e, b
    rst $38
    nop
    inc bc
    ld bc, $81ff
    db $fd
    ld b, e
    ld b, e
    rst $38
    ld [bc], a
    inc hl
    rst $38

jr_057_7da9:
    ld hl, $dfa4
    ld [bc], a
    jr nz, @+$01

    db $10
    and l
    nop
    sbc d
    ld bc, $8080
    ld b, l
    ret nz

    ld b, b
    ld b, l
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld [bc], a
    db $fc
    inc b
    cp $c5
    nop
    or l
    inc c

jr_057_7dca:
    nop
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    rra
    ld sp, hl
    add hl, bc
    pop af
    add hl, bc
    ldh a, [$08]
    ld b, l
    ld hl, sp+$04
    ld bc, $03fd
    ld c, a
    rst $38
    nop
    dec b
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    ret nz

    ld b, h
    rst $38
    ldh [$08], a

jr_057_7deb:
    ret nz

    cp a
    ret nz

    ld [hl], a
    adc b
    rst $38
    ld [$04ff], sp
    db $f4
    dec h
    nop
    ld a, d
    add e
    ld sp, hl
    dec b
    ld [hl], b
    sub b
    cp b
    ld c, b
    ld hl, sp-$78
    ld b, e
    ld a, h
    call nz, $be10
    and d
    cp $e2
    ld e, a
    db $e3
    rst $38
    pop bc
    rst $38
    jp $c67e


    cp $4a
    cp h
    ld b, h
    db $fc
    jp $02ef


    db $10
    ldh [rNR41], a
    adc c
    ld bc, $8788
    ld bc, $0196
    ld hl, sp+$08
    rst $38
    db $ec
    dec hl
    inc de
    jr jr_057_7e43

    inc h
    inc h
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, d
    ld hl, $2125
    dec hl
    jr nz, @+$27

    db $10
    inc de
    db $10
    rla
    db $10
    inc de
    ld b, h
    ld [$000b], sp
    add hl, bc
    ld b, h

jr_057_7e43:
    inc b
    dec b
    nop
    inc b
    dec h
    ld [bc], a
    dec h
    ld bc, $25ec
    add hl, bc
    ld bc, $0200
    ld [bc], a
    inc c
    inc c
    jr jr_057_7e66

    rra
    db $10
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    ld bc, $0203
    add l
    cp e
    inc hl
    add b
    ld b, e

jr_057_7e66:
    ld b, b
    ret nz

    inc bc
    inc hl
    db $e3
    inc l
    db $ec
    ld b, e
    db $10
    ldh a, [rSCX]
    ld [$43f8], sp
    inc b
    db $fc
    ld b, e
    inc bc
    ld a, [hl]
    inc bc
    ld bc, $017f
    ccf
    ld b, e
    add c
    cp a
    inc bc
    add e
    sbc [hl]
    ld b, a
    ld e, l
    ld [hl], l
    rlca
    inc bc
    nop
    inc c
    inc b
    jr nc, jr_057_7e9e

    ld b, b
    ld b, b
    and a
    nop
    ld d, [hl]
    inc bc
    ld bc, $e300
    nop
    ld c, b
    rst $38
    nop
    inc c
    add b
    ld a, a

jr_057_7e9e:
    ld b, b
    ccf
    jr nc, jr_057_7eb1

    inc c
    rrca
    rrca
    inc sp
    scf
    ret nz

    ret nz

    add a
    sbc a
    rlca
    inc bc
    nop
    rlca
    nop
    rrca

jr_057_7eb1:
    nop
    rra
    nop
    ld c, h
    rst $38
    nop
    ld [bc], a
    xor b
    rst $38
    ld d, h
    ld [hl], l
    ld bc, $fdff
    add l
    or l
    inc b
    rra
    nop
    ccf
    nop
    ld a, a
    ld b, e
    ld bc, $00ff
    ld bc, $ff50
    nop
    inc c
    rrca
    ldh a, [$f0]
    db $f4
    db $fc
    ld [hl], d
    adc $39
    rlca
    ld a, b
    rlca
    ld hl, sp+$07
    ld b, l
    db $fc
    inc bc
    ld b, $fa
    nop
    sub $01
    xor d
    nop
    push de
    add l
    sbc a
    ld b, $03
    db $fc
    dec c
    ldh a, [$3a]
    ret nz

    push de
    or a
    nop
    ld l, b
    rra
    ld h, b
    ld b, b
    jr c, jr_057_7f12

    db $fc
    inc b
    add $42
    add e

jr_057_7eff:
    add c
    ld bc, $0900
    add hl, bc
    ld bc, $8301
    add d
    rst $00
    ld c, h
    rst $38

jr_057_7f0b:
    jr nc, jr_057_7f0b

    ld bc, $03fc
    ei
    rlca

jr_057_7f12:
    db $fc
    inc e
    ldh [$e0], a
    adc d
    xor e
    ld [bc], a
    add b
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_057_7eff

    dec c
    db $10
    ld d, b
    db $10
    or b
    ld [$0858], sp
    xor b
    inc b
    ld d, h
    inc b
    xor h
    db $f4
    db $fc
    add e
    nop
    xor d
    inc bc
    ld [bc], a
    cp $01
    ld a, a
    db $f4
    jr nz, jr_057_7f39

jr_057_7f39:
    ld e, [hl]
    db $10
    add b
    ld b, b
    ret nz

    jr nc, jr_057_7fb0

    ld [$04b8], sp
    ld d, h
    add d
    ld l, d
    ld [bc], a
    cp $1c
    db $fc
    ldh [$e0], a
    db $ec
    dec l
    rst $38
    db $ec
    ld l, $23
    ld bc, $0322
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc l
    rlca
    ld bc, $0703
    call nz, $0391
    inc bc
    ld bc, $0001
    ld hl, sp+$2e
    and c
    ld e, $01
    nop
    ld bc, $0703
    ld c, $0f
    rra
    rra
    ccf
    inc a
    ld a, a
    ld a, b
    db $fc
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    pop hl
    pop hl
    jp $c783


    adc $87
    ld b, $8f
    ld c, $ff
    cp $22
    rst $38
    add hl, de
    rrca
    rst $38
    rlca
    adc a
    rst $08
    add a
    add e
    rst $00
    pop hl
    jp $e1c0


    ldh [$f0], a
    ldh a, [$f8]
    ld a, b
    cp $3e
    ld a, a
    ld e, $3f
    ld c, $1f
    nop
    ld b, $ec
    inc h
    rlca
    ret nz

    ret nz

    ldh [rLCDC], a
    ldh [$c0], a
    ldh [rP1], a

jr_057_7fb0:
    add $87
    ld [bc], a
    cp l
    ld a, [hl]
    rst $38
    add h
    db $d3
    ld bc, $9f67
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld bc, $7ebd
    xor a
    or l
    db $ec
    inc h
    ld [$7060], sp
    ld hl, sp+$78
    db $fc
    ld a, h
    cp $1e
    ld a, a
    xor c
    nop
    adc [hl]
    inc bc
    di
    pop hl
    ldh [$f1], a
    and d
    db $db
    or e
    nop
    sbc a
    inc bc
    ccf
    inc a
    cp $f8
    add e
    nop
    adc l
    inc b
    ld [hl], b
    add b
    ret nz

    add b
    nop
    db $f4
    add hl, sp
    nop
    nop
    ld c, c
    ldh a, [$e0]
    nop
    ldh a, [$ac]
    nop
    ld b, l
    db $ec
    ld l, l
    rst $38
    nop
