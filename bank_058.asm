; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

    db $ec
    dec l
    add hl, bc
    ld bc, $0303
    ld b, $07
    inc b
    ld b, $0d
    ld [$440b], sp
    ld [$e009], sp
    ld [hl+], a
    dec bc
    inc b
    rrca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    dec c
    rrca
    rra
    inc de
    dec d
    dec de
    inc [hl]
    dec hl
    inc a
    daa
    ld c, [hl]
    ld a, a
    ld c, c
    ld a, c
    sub b
    ldh a, [$90]
    di
    xor a
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, a
    db $ec
    dec hl
    ld b, $78
    db $fc
    add [hl]
    cp $81
    ld b, a
    nop
    ld b, e
    add e
    nop
    ldh [rNR50], a
    rst $00
    ld bc, $03ff
    rst $38
    rlca
    cp $1e
    db $fc
    ld a, h
    ldh a, [$fc]
    db $e3
    or $cc
    ld hl, sp-$70
    ldh a, [rNR41]
    and b
    ld b, b
    ldh [rLCDC], a
    di
    add a
    add sp, -$68
    pop af
    and b
    ld [hl], b
    ret nz

    ld sp, hl
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp+$23
    rst $38
    db $ec
    cpl
    ldh [$2b], a
    inc bc
    rlca
    sbc c
    cp c
    ld a, [c]
    jp $82ff


    cp l
    ld a, [hl]
    call nc, $2e87
    rlca
    ld d, $03
    cpl
    inc bc
    rst $28
    pop af
    cp a
    inc c
    ld e, a
    inc bc
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    ret nz

    rst $30
    jr c, jr_058_4111

    inc b
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, [$f707]
    rrca
    ldh a, [$31]
    rst $18
    ld c, $38
    inc a
    jp $00cf


    add a
    ret nz

    rrca
    ldh [$1f], a
    ldh [rNR34], a
    add b
    ld c, $00
    ld b, e
    rlca
    nop
    rla
    adc a
    ret nz

    rst $38
    pop af
    rst $38
    cp a
    ld a, a
    rst $28
    sbc [hl]
    rst $38
    ld b, c
    rst $38
    ld hl, $23fe
    cp $13
    db $fd
    rla
    push af
    rra
    rst $20
    ccf
    ld c, a
    ld [hl+], a
    rst $38
    ldh a, [$33]
    nop
    cp h
    ld h, c
    ld bc, $8080
    ld b, e
    ld b, b
    ret nz

    inc bc
    ld h, $66
    add hl, sp
    add hl, sp
    ld [hl+], a
    jr nc, jr_058_40ef

    ldh [$39], a
    ldh [$7f], a
    ret nc

    rst $38
    sbc h
    di
    ld [de], a
    rst $28
    pop af
    and a
    add hl, sp
    rla
    inc e
    ccf

jr_058_40ef:
    inc e
    ld b, e
    db $d3
    or d
    dec bc
    pop hl
    ld hl, $20e0
    ldh a, [$38]
    sbc $3f
    sbc a
    rst $38
    sbc a
    rst $38
    db $ec
    add hl, sp
    rlca
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b

jr_058_4111:
    ld de, $06fa
    cp $8a
    adc $72
    cp $22
    cp $12
    cp $8a
    ld a, h
    ld c, h
    ld e, b
    ld l, b
    ld c, b
    ld a, b
    ld b, e
    ret nc

    ldh a, [rIE]
    db $ec
    inc hl
    ld [bc], a
    ld bc, $0003
    call nc, $2382
    ld bc, $021f
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld b, $06
    dec b
    rlca
    inc b
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld [$050f], sp
    rlca
    rlca
    ld b, $06
    dec b
    dec c
    dec bc
    add hl, bc
    rrca
    add hl, de
    rla
    db $10
    rra
    db $f4
    dec h

jr_058_4155:
    rst $18
    rla
    ldh [rSVBK], a
    jr c, @-$62

    ld e, [hl]
    ld c, a
    cpl
    daa
    rla

jr_058_4160:
    inc de
    inc bc
    ld de, $0f06
    dec de
    inc e
    dec l
    ld [hl-], a
    ld e, [hl]
    ld h, c
    cp a
    ret nz

    ld a, a
    add b
    ld b, a
    rst $38
    nop
    add hl, de
    ld e, $e0
    pop hl
    inc e
    cp $03
    cp a
    ld b, l
    ld e, l
    xor e
    add hl, sp
    rst $30
    ld [c], a
    sbc a
    inc hl
    rst $38
    inc h
    rst $38
    add hl, de
    cp $33
    db $fc
    ld c, a
    ldh a, [$bf]
    ret nz

    ld a, c
    add hl, de
    db $10
    jr nc, jr_058_41ba

    jr c, jr_058_41c8

    inc l
    ld a, [de]
    ld h, $1e
    inc de
    dec e
    inc de
    ld b, $19
    dec bc
    inc c
    dec c
    ld a, [bc]
    dec c
    adc d
    add [hl]
    ret


    ld a, [$fbfd]
    rlca
    ld b, l
    rst $38
    nop
    ld bc, $807f
    ld b, e
    cp a
    ld b, b
    dec de
    rst $18
    jr nz, jr_058_4155

    jr nz, jr_058_4207

    jr nz, jr_058_4160

jr_058_41ba:
    ld sp, $596e
    call $d7ba
    ld a, h
    ld d, e
    cp $22
    rst $38
    push bc
    ei
    inc bc

jr_058_41c8:
    db $fc
    ld b, l
    cp d
    and d
    ld e, l
    pop de
    ld l, $83
    add e
    db $ec
    inc h
    inc hl
    add b
    inc e
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, c
    and e
    ld h, a
    rst $30
    ccf
    ld l, a
    cp a
    ld a, a
    cp $9e
    ld a, h
    xor b
    ld e, a
    or [hl]
    ld c, h
    cp e
    ld b, [hl]
    cp [hl]
    ld b, d
    ld a, l
    add e
    ld a, a
    add c
    ld a, [hl]
    add c
    ld b, l
    rst $38
    nop
    inc bc
    pop hl
    ld e, $3f
    ret nz

    ld b, e
    rst $38
    nop
    dec bc
    sbc a
    ldh [$c5], a
    ld a, d
    and d
    ld a, l
    ld h, c
    cp [hl]

jr_058_4207:
    ret nc

    ccf
    ld [hl], b
    sbc a
    db $ec
    daa
    ldh [$27], a
    inc bc
    rlca
    ld e, $3f
    ld a, [$f1fc]
    pop af

jr_058_4217:
    pop hl
    pop bc
    add d
    rrca
    ld [bc], a
    ld [hl-], a

jr_058_421d:
    nop
    jp nz, $0c08

    db $10
    db $10
    add b
    db $10
    ld h, b
    jr nz, @+$62

    ld b, b
    ld b, b
    ldh [$e0], a
    and b
    and b
    ldh [$60], a
    ldh [$c0], a
    ld h, b
    ret nz

    ld b, b
    jr nz, jr_058_4217

    ld b, l
    and b
    ld h, b
    add hl, bc
    jr nz, jr_058_421d

    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    db $f4
    add hl, hl
    rst $18
    inc bc
    nop
    ret nz

    nop
    add b
    db $ec
    ld sp, $79ff
    dec h
    ld bc, $0249
    inc bc
    ld bc, $0101
    rst $08
    adc h
    rlca
    inc bc
    inc bc
    rlca
    inc b

jr_058_4260:
    ld c, $08
    inc c
    ld [$0423], sp
    ld bc, $0202
    pop de
    xor [hl]
    inc bc
    ld bc, $0f01
    ld c, $8c
    adc a
    ld [$0f00], sp
    ld b, $19
    rra
    ld hl, $433f
    ld h, [hl]
    ld b, e
    add e
    jp nz, Jump_058_670f

    db $e4
    ld a, a
    db $fd
    rst $38
    ld sp, hl
    ld l, a
    ld a, [$faaf]
    ld e, a
    ld a, [c]
    rra
    db $f4
    rra
    db $e4
    ld b, e
    ccf
    add sp, -$20
    ld sp, $40ff
    rst $38
    nop
    rst $38
    add b
    ld d, a
    ld b, b
    ld l, e
    ld b, b
    ld [hl], l
    ld h, b
    db $eb
    and b
    push af
    jr nz, jr_058_4260

    db $10
    dec e
    ld [$062e], sp
    ld d, a
    ld bc, $00af
    ld e, a
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    rra
    inc e
    rra
    rrca
    rra
    rla
    ld e, $1a
    ld a, $36
    inc a
    inc l
    ld a, h
    ld b, h
    ld hl, sp-$78
    ldh a, [rNR10]
    ld l, c
    rlca
    ld a, $1e
    pop bc
    pop bc
    add e
    nop
    inc bc
    ld bc, $0643
    inc bc
    rla
    dec c
    rlca
    adc l
    rlca
    ld d, l
    rlca
    or l
    rla
    ld d, [hl]
    inc de
    or [hl]
    inc bc
    cp $0b
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ff54
    nop
    ld [bc], a
    rlca
    rst $38
    ld hl, sp+$48
    rst $38
    nop
    ld b, $03
    rst $38
    db $fc
    rst $38
    add b
    ld a, a
    ld a, a
    ld [hl], l
    dec c
    ret nz

    ret nz

    ldh a, [$f0]
    inc c
    db $fc
    add d
    sbc [hl]
    add hl, bc
    rrca
    inc c
    rrca
    sbc [hl]
    sbc a
    ld b, e
    cp $ff
    inc b
    db $fc
    rst $38
    ld a, [$54ff]
    and h
    add c
    add hl, de
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ld hl, sp+$1f
    rst $38

Call_058_4324:
    ld b, a
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc b
    rst $38

jr_058_432c:
    ld [$09ff], sp
    rst $38
    ld c, $ff
    add hl, sp
    rst $38
    ret nz

    adc d
    db $db
    ld a, [bc]
    dec a
    rst $38
    jp nz, $0fff

    rst $38

Jump_058_433e:
    ld a, [hl]
    adc a
    adc l
    inc bc
    ld [bc], a
    db $dd
    nop
    dec e
    xor c
    nop
    inc e
    ld c, c
    jr nz, jr_058_432c

    ld b, e
    ld b, b
    ret nz

    ld bc, $c0c0
    rst $00
    sub d
    ld de, $c0c0
    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    call nz, $24fc
    db $fc
    inc d
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    and a
    rst $08
    ld bc, $8080
    jp Jump_058_43a8


    ldh a, [rNR10]
    ld b, e
    ld hl, sp-$78
    db $ec
    ld e, a
    rst $38
    db $ec
    and c
    ld [hl+], a
    ld bc, $3cf8
    add b
    db $10

Call_058_437f:
    inc bc
    inc bc
    ld b, $0d
    ld c, $11
    inc a
    inc hl
    ld b, b
    ld a, a
    ld b, b
    ld a, l
    add b
    rst $10
    xor b
    rst $10
    ld b, b
    ld b, h
    ld a, a
    ld b, c
    ld b, e
    inc hl
    ld a, $e0
    dec l
    inc de
    rra
    inc d
    inc e
    inc c
    inc c
    rlca
    rlca

Jump_058_43a0:
    jr jr_058_43c1

    jr nz, jr_058_43e3

    inc l
    ccf
    inc hl
    ccf

Jump_058_43a8:
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    add d
    rst $38
    ld b, [hl]
    rst $38
    add hl, hl
    ld sp, hl
    ld [$84f8], sp
    db $fc
    adc l
    db $fd
    ld c, e
    ld a, a
    inc sp
    ld a, $23
    ld a, $17
    inc e
    rrca

jr_058_43c1:
    add hl, bc
    ld b, $07
    inc b
    rlca
    ld c, d
    ld [$050f], sp
    dec bc
    nop
    rla
    db $10
    dec de
    db $10
    add l
    add e
    dec b
    rra
    db $10
    rra
    rrca
    rrca
    ld c, $22
    ld e, $11
    inc de
    ccf
    ld hl, $1e3f
    ld e, $c8

jr_058_43e3:
    ld hl, sp+$00
    db $f4
    rlca
    rst $30
    inc h
    rst $38
    cpl
    rst $38
    ld c, [hl]
    ei
    ld b, e
    ld e, a
    pop af
    ldh [$32], a
    rst $38
    pop hl
    rst $38
    add e
    ld e, l
    ld h, h
    ld a, h
    dec b
    rst $38
    ld bc, $09f7
    cp $12
    or h
    call z, $f3f3
    ldh [$f0], a
    sub $fe
    dec hl
    rst $38
    reti


    rst $38
    and h
    cp a
    ld d, d
    ld e, a
    ld [hl-], a
    ccf
    ld d, l
    ld e, a
    dec b
    rst $38
    sbc l
    rst $38
    cp $e2
    cp a
    db $e3
    dec e
    rst $30
    inc d
    rst $38
    ld [$a0ff], sp
    rst $38
    add b
    ld b, h
    rst $38
    stop
    nop
    ld b, a
    rst $38
    ld [$ff50], sp
    nop
    inc bc
    inc a
    rst $38
    rst $08
    rst $08
    inc hl
    rra
    ld bc, $0f06
    add a
    nop
    and [hl]
    inc b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_058_4467

    ldh [$08], a
    ld h, b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    nop
    and [hl]
    nop
    and l
    xor e
    nop
    and h
    inc de

jr_058_4457:
    add b
    add b
    ldh [$e0], a
    ret nc

    ldh a, [$a8]
    ld hl, sp+$54
    db $fc
    and e
    rst $38
    push af
    rst $38
    ld l, e
    ld a, a

jr_058_4467:
    ld d, $1f
    inc c
    rrca
    ld b, e
    add d
    add e
    ld bc, $c141
    ld b, l
    ld b, b
    ret nz

    ld e, c
    jr nz, jr_058_4457

    dec bc
    ld b, b
    ret nz

    add b
    add b

jr_058_447c:
    ret nz

    ret nz

    and b
    ldh [rNR10], a
    ldh a, [$e0]
    ldh [$ec], a
    dec [hl]
    add l
    ld bc, $0dc4
    jr nc, jr_058_447c

    jr c, @-$16

    ld a, h
    call nz, $96fe
    ld a, a
    ld e, c
    db $76
    ld d, [hl]
    jr nz, @+$22

    db $ec
    sub a
    rst $38
    db $ec
    daa
    inc bc
    ld bc, $0101
    ld bc, $8989
    ld bc, $0203
    ld b, e
    rlca
    inc b
    nop
    dec bc
    ld [hl+], a
    ld [$1006], sp
    db $10
    dec d
    db $10
    ld a, [hl-]
    jr nz, jr_058_44f3

    ld c, b
    jr nz, jr_058_44f8

    ld b, e
    rra
    db $10
    dec b
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    db $ec
    daa
    ld de, $0e0e
    rla
    ld de, $e0ff
    ccf
    inc b
    ld a, a
    dec hl
    rst $38
    sub a
    ld sp, hl
    xor c
    di
    sub b
    rst $30
    db $10
    ld b, h
    rst $38
    nop
    ld b, e
    db $10
    rst $38
    ld bc, $fd00
    ld [hl+], a
    jr nz, jr_058_44eb

    ld hl, $c200
    ld b, b
    ld d, l
    ld b, b
    rst $38

jr_058_44eb:
    ld b, b
    ld b, [hl]
    rst $38
    add b
    nop
    nop
    ld b, h
    rst $38

jr_058_44f3:
    ld b, b
    ld [$ff20], sp
    db $10

jr_058_44f8:
    rst $38
    db $ec
    ld a, a
    ld e, a
    ld a, a
    ld b, e
    ld a, a
    add hl, bc

Call_058_4500:
    ld b, $02
    dec bc
    ld bc, $080b
    rst $10
    ret nc

    rst $38
    cp [hl]
    and h
    cp e
    nop
    nop
    call nz, $04c3
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    ld b, e
    rst $38
    nop
    nop
    ld a, a
    add h
    add e
    ld d, [hl]
    rst $38
    nop
    inc b
    ld bc, $8fff
    rst $38
    ld a, [$23f4]
    nop
    ld b, $03
    ldh [$60], a
    rst $38
    rra
    and e
    pop de
    adc c
    rst $10
    add h

jr_058_4534:
    rst $20
    ld [bc], a
    ld h, b
    rst $38
    db $10
    ld b, h
    rst $38
    ld [$0402], sp
    rst $38
    inc b
    ld c, d
    rst $38
    ld [bc], a
    ld c, $04
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    ld c, $ff
    inc a
    rst $38
    add sp, -$01
    ld d, b
    rst $38
    and b
    ld hl, sp+$22
    nop
    ld a, e
    inc c
    ld bc, $0c1c
    pop hl
    ldh [$e7], a
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    add [hl]
    nop
    xor $00
    ld b, b

jr_058_456a:
    ld b, e
    rst $38
    jr nz, @+$4e

    rst $38
    db $10
    inc c
    jr nz, @+$01

    ld h, $ff
    ld h, a
    rst $38
    ld b, a
    rst $38
    jp $80ff


    rst $38
    inc e
    add h
    ld bc, $0350
    ld [hl], b
    rst $38
    ldh [rIE], a
    db $f4
    inc h
    nop
    dec b
    ld bc, $40c0
    and l
    nop
    ld [hl], $01
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld de, $68f8
    xor b
    jr z, jr_058_4534

    jr c, jr_058_456a

    inc d
    call c, $fe14
    ld [hl+], a
    cp $02
    db $fc
    inc e
    db $ec
    inc h
    and a
    nop
    ld d, b
    add l
    sbc a
    ld bc, $10f0
    ld b, h
    ld hl, sp+$08
    nop
    adc b
    ld b, e
    ld hl, sp+$48
    ld bc, $50f0
    rst $38
    ld [hl], e
    inc bc
    ld bc, $0100
    ld bc, $9191
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $4a
    inc b
    rlca
    ld b, e
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $23ec
    ld e, $07
    inc bc
    jr jr_058_45e9

    inc hl
    jr nz, jr_058_4623

    ccf
    jp $0f40


    nop

jr_058_45e9:
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rlca
    dec de
    jr jr_058_4627

    jr nz, jr_058_465e

    ld b, b
    sub l
    add b
    xor d
    add b
    dec d
    nop
    dec bc
    call nz, $07e1
    add b
    nop
    ld d, b
    nop
    xor b
    nop
    ld e, a
    nop
    ld d, b
    rst $38
    nop
    jr @-$7e

    ld a, a
    ld b, b
    ccf
    jr nc, jr_058_4620

jr_058_4611:
    ld c, $09
    add hl, bc
    ld sp, $4331
    ld b, e
    add l
    add a
    add h
    add a
    ld c, b
    ld c, a
    jr c, jr_058_465f

jr_058_4620:
    ld [$100f], sp

jr_058_4623:
    rra
    ld l, c
    dec bc
    ret nz

jr_058_4627:
    ret nz

jr_058_4628:
    ld [hl], b
    jr nc, jr_058_4628

    dec c
    rst $38
    rlca
    rst $38
    jp nz, $22ff

    ld b, [hl]
    rst $38
    nop
    inc b
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    ld c, c
    rst $38
    nop
    nop
    ccf
    and a
    nop
    rra
    nop
    nop
    ld e, b
    rst $38
    nop
    ld [bc], a
    ldh [rIE], a
    rra
    add l
    rst $28
    rlca
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    rst $38
    add [hl]
    nop
    ld h, h
    ld c, $07
    jr jr_058_4676

jr_058_465e:
    ld h, e

jr_058_465f:
    ld h, b
    pop bc
    add b
    di
    inc bc
    rst $38
    rlca
    db $fc

jr_058_4667:
    jr jr_058_4667

    jr nz, jr_058_4611

    xor e
    inc b
    jr @+$01

    jr nz, @+$01

    ld b, b
    xor c
    db $dd

jr_058_4674:
    and l
    nop

jr_058_4676:
    adc d
    ld [bc], a
    ld a, [hl+]
    nop
    ld d, l
    sbc c
    rst $18
    ld [bc], a
    rra
    rst $38
    pop hl
    and e
    reti


    inc b
    cp $03
    db $fc
    rlca
    ld hl, sp-$3d
    call c, $ff00

Call_058_468d:
    adc c
    nop
    jp nz, $e003

    jr nz, jr_058_4674

    ldh [$61], a
    ld de, $f0f0
    inc a
    inc c
    ld a, [hl]
    ld [bc], a
    ld e, $02
    db $fc
    db $fc
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    ld b, e
    rst $38
    ld bc, $e70c
    nop
    db $e3
    nop
    inc sp
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    or l
    nop
    sub l
    inc b
    inc b
    ld a, [$e11a]
    pop hl
    call nz, Call_058_4500
    inc b
    ld [bc], a
    inc c
    adc h
    ld [hl], b
    ldh a, [rLYC]
    ld b, b
    ret nz

    ld bc, $c040
    db $ec
    dec h
    dec h
    add b
    ld b, l
    ret nz

    ld b, b
    db $f4
    dec l
    nop
    inc [hl]
    rst $38
    ld [hl], c
    ld b, $05
    rrca
    ld a, [bc]
    rra
    dec d
    rra
    ld a, [de]
    ld b, e
    rra
    rrca
    ld b, e
    rrca
    rlca
    ld b, e
    rlca
    inc bc
    ld b, e
    inc bc
    ld bc, $0100
    db $ec
    jr nz, jr_058_471d

    ld bc, $0326
    nop
    nop
    sbc b
    xor a
    inc b
    ldh a, [$f8]
    cp [hl]
    rst $38
    ld e, a
    jr z, @+$01

    dec bc
    rst $30
    ld sp, hl
    ei
    db $fc
    db $fd
    cp $ff
    ldh a, [rIE]
    ld hl, sp-$11
    add sp, $49
    rra
    db $10
    rlca
    rlca
    ld [$080f], sp
    rlca

jr_058_471d:
    inc b
    inc bc
    ld [bc], a
    add e
    push af
    rrca
    ld h, b
    ld h, b
    ld e, b
    ld hl, sp-$54
    cp $d7
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp l
    db $fd
    ld a, b
    db $fc
    inc hl
    ld hl, sp+$05
    di
    ei
    rst $30
    rst $30
    ld sp, $bd73
    nop
    jr nc, jr_058_474d

    add c
    add e
    adc h
    sbc h
    ldh a, [$e0]
    ret nz

    add b
    and b
    nop
    push de
    nop
    xor e

jr_058_474d:
    nop
    ld d, l
    rst $38
    nop
    ldh [rNR42], a
    ld a, a
    add b
    ld l, a
    ld [hl], b
    rra
    ccf
    ld a, $5f
    ld l, a
    ld e, h
    ld [hl], a
    adc b
    cp a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$cf]
    or b
    ld a, a
    ld b, b
    rst $28
    ldh a, [$a3]
    ld e, a
    ld d, a
    xor a
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rrca
    ld a, c
    dec c
    ldh a, [$f0]
    ld a, $0e
    rra
    ld bc, $001f
    ld a, $01
    ld a, a
    ld bc, $01ff
    ld d, a
    rst $38
    nop
    add hl, bc
    di
    rrca
    rst $38
    rst $38
    ei
    db $fc
    ld a, a
    ldh a, [$bf]
    ld h, b
    ld c, c
    rst $38
    nop
    inc bc
    db $fd
    inc bc
    db $e3
    db $fc
    add e
    db $eb
    inc bc
    rst $38
    rst $38
    ld hl, sp-$04
    ld [hl], e
    ld c, $18
    inc e
    inc [hl]
    ld a, $2b
    ld a, a
    ld d, l
    ld a, a
    ld l, d
    ld a, a
    db $dd
    rst $38
    xor a
    rst $38
    rst $18
    add hl, hl
    rst $38
    ld b, $7f
    rst $38
    ld a, a
    cp $3e
    db $fc
    ld e, $43
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ld h, b
    ldh [rNR43], a
    ret nz

    ld [bc], a
    ld h, b
    ldh a, [rNR23]
    ld b, e
    ld a, h
    add h
    inc bc
    ld hl, sp+$48
    ldh a, [rSVBK]
    ld b, e
    ret nz

    ld b, b
    dec bc
    add b
    add b
    ret nz

    ldh [$f8], a
    ld a, b
    db $fc
    inc a
    ld hl, sp-$08
    ret nz

    ldh [$bd], a
    nop
    cpl
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl+], a
    ldh a, [rSB]
    ld hl, sp-$08
    and l
    nop
    add hl, de
    inc b
    ldh [$80], a
    ret nz

    nop
    add b
    db $ec
    cpl
    rst $38
    ld a, c
    ld bc, $0101
    inc hl
    ld [bc], a
    inc hl
    inc b
    nop
    ld [$0923], sp
    nop
    dec bc
    ld b, e
    ld a, [bc]
    ld c, $01
    inc b
    inc b
    db $ec
    dec h
    inc hl
    ld bc, $0205
    inc bc
    dec b
    rrca
    ld l, d
    ld a, a
    ld [hl], e
    dec b
    rlca
    rrca
    db $10
    jr nc, jr_058_4865

    ret nz

    ld h, h
    ld b, $1f
    rra
    ld a, a
    ld h, b
    ldh [$80], a
    add b
    ldh a, [rNR44]
    pop de
    add hl, bc
    nop
    ld bc, $0301
    rrca
    rrca
    jr nc, jr_058_486b

    ld b, b
    ld b, b
    add e
    xor a
    rlca
    ld a, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    or h
    xor e
    inc d
    ret nz

    jr nc, jr_058_4886

    inc b
    ld e, $00
    rra
    nop
    rrca
    nop
    rst $08
    nop
    rst $28
    ret nz

    rst $38
    jr nz, jr_058_489b

    ld de, $0b1f
    rrca
    dec h
    rlca
    ld [bc], a
    dec b
    rlca

jr_058_4865:
    ld b, $83
    add e
    dec d
    rrca
    dec c

jr_058_486b:
    rrca
    ld a, [bc]
    rrca
    dec d
    rra
    ld a, [bc]
    rra
    dec d
    ccf
    ld a, [hl+]
    ld a, a
    ld d, l
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    ld [hl+], a
    rst $38
    rrca
    ccf
    ccf
    rlca
    rrca

jr_058_4886:
    ld bc, $0017
    dec hl
    nop
    sub a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    sbc e
    nop
    dec a
    ld b, $c2
    add $3e
    cp $3c

jr_058_489b:
    cp $7c
    inc h
    db $fc
    ld bc, $fcf8
    ld b, e
    ld hl, sp-$07
    ld b, e
    ld sp, hl
    ei
    inc b
    cp e
    rst $38
    ld e, a
    rst $38
    xor a
    add [hl]
    add e
    ld b, $bf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    jr nc, @+$01

    ld [$ff7f], sp
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    sub d
    rst $18
    inc bc
    ld c, $1f
    jr nz, jr_058_492c

    add [hl]
    nop
    add h
    dec bc
    ld c, $06
    ld e, $08
    rra
    jr jr_058_4915

    db $10
    ld a, a
    jr nc, jr_058_4959

    ld [hl], c
    inc sp
    rst $38
    ld [bc], a
    cp $ff
    cp $a7
    call c, $fc03
    db $fc
    ld hl, sp-$08
    inc hl
    ldh a, [rSB]
    ldh [$f0], a
    ld a, [hl+]
    ldh [rNR43], a
    ldh a, [$b7]
    nop
    ld b, $01
    nop
    ld h, b

Call_058_48f7:
    inc h
    jr nz, jr_058_4900

    ld h, b
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b

jr_058_4900:
    add b
    and h
    nop
    xor b
    ld bc, $8080
    inc hl
    ret nz

    ld [hl+], a
    ldh [rTIMA], a
    ld hl, sp-$28
    and [hl]
    add $f2
    add d
    ld b, e
    cp $02

jr_058_4915:
    rlca
    cp h
    ld [hl], h
    add sp, $18
    ldh a, [$30]
    ret nz

    ret nz

    ld a, c
    rst $38
    db $ec
    ld c, c
    dec b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1f43], sp
    db $10

jr_058_492c:
    dec bc
    ccf
    ld hl, $263f
    ld a, [hl]
    ld c, b
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, b
    rst $38
    add a
    ld l, a
    ld [hl+], a
    ld bc, $0222
    dec d
    dec b
    inc b
    ld b, $04
    dec b
    ld [$080a], sp
    dec c
    ld [$080a], sp
    inc b
    dec b
    rlca
    dec b
    ld b, $05
    ld bc, $0203
    inc bc
    add e
    add e
    nop
    inc bc

jr_058_4959:
    ld b, l
    inc bc
    ld bc, $a4ce
    jr jr_058_497f

    rra
    db $eb
    ldh [$f5], a
    nop
    xor e
    nop
    rst $10
    nop
    xor e
    nop
    ld e, a
    inc e
    rst $28
    pop bc
    rst $10
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    ld l, d
    inc bc
    rrca
    rra
    jr nz, jr_058_49de

    xor c

jr_058_497f:
    or l
    ld de, $0082
    ld d, l
    nop
    ld [$b560], a
    ldh a, [$5a]
    ldh a, [$b5]
    ldh [rOCPS], a
    ret nz

    or l
    ret nz

    ld a, a
    ret nz

    ld b, a
    rst $38
    add b
    nop
    cp a
    ld b, h
    ret nz

    rst $38
    ld d, $df
    ldh [rIE], a
    ldh [$ef], a
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    ld a, a
    dec sp
    ld a, a
    inc a
    inc a
    inc e
    inc a
    call c, $eede
    ld a, $fe
    rra
    cp $43
    rrca
    rst $38
    dec bc
    rlca
    rst $38
    add a
    db $fd
    ld h, a
    ei
    rla
    db $fd
    rrca
    ei
    rrca
    rst $30
    jp z, $10f8

    add b
    ret nz

    jr nz, jr_058_49fa

    jr @+$0a

    inc l
    inc b
    ld d, $02
    ld a, [hl+]
    ld [bc], a
    ld d, l
    ld bc, $01ab
    ld d, a
    add h
    nop
    or a
    ld [bc], a
    xor a
    nop
    ld e, a

jr_058_49de:
    ld b, h
    ld bc, $45ff
    cp $02
    dec d
    rst $38
    inc bc
    db $fc
    ld [bc], a
    cp $01
    cp $03
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    ld bc, $06ff
    cp $38
    ld hl, sp-$40

jr_058_49fa:
    ret nz

    ld l, e
    rrca
    inc bc
    inc bc
    rrca
    adc h
    rra
    sub b
    cp a
    and b
    rst $38
    ret nz

    rst $38
    add $ff
    sbc b
    rst $38
    ld h, b
    ld a, c
    inc hl
    add b
    pop de
    add b
    and h
    nop
    ld [hl], c
    ld [bc], a
    ld b, b
    ld b, b
    ret nz

    push de
    sbc d
    inc b
    ld a, [hl]
    ld a, [hl]
    jp hl


    add c
    rst $10
    add h
    nop
    cp e
    ld b, $fb
    ld hl, sp+$57
    rlca
    xor a
    nop
    ld d, a
    db $ec
    ld d, b
    inc bc
    add b
    add b
    ldh [$60], a
    and e
    nop
    ld c, [hl]
    ld b, e
    db $fc
    inc b
    inc bc
    cp $c2
    cp $22
    rst $38
    db $ec
    dec hl
    ld [bc], a
    ld bc, $0001
    ld b, e
    ld [bc], a
    inc bc
    ldh [$2c], a
    inc b
    dec b
    ld b, $03
    inc b
    add hl, bc
    ld c, $02
    dec c
    add hl, de
    ld d, $18
    rla
    inc l
    inc hl
    inc a
    inc hl
    ld e, a
    ld hl, $635d
    ld l, d
    ld d, a
    ld d, a
    ld l, d
    ld c, a
    ld [hl], h
    sub a
    ld l, b
    adc d
    ld hl, sp-$6b
    ldh a, [$90]
    ldh [$b0], a
    ldh [$5a], a
    ld h, b
    ld l, a
    ld d, b
    push de
    xor d
    xor b
    rst $10
    ldh a, [rNR43]
    push de
    ldh [$33], a
    inc bc
    inc b
    inc b
    ld [$3318], sp
    ld h, b
    ld h, a
    add b
    ld a, a
    nop
    rst $38
    nop
    cp $01
    ld a, [$f806]
    ld [$10f5], sp
    jp c, $b520

    ld h, b
    ld e, a
    ldh [$ef], a
    ld d, b
    sub l
    ld [$fd82], a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld d, b
    xor a
    db $ec
    inc de
    rst $38
    nop
    cp h
    nop
    ld b, b
    nop
    xor e
    nop
    ld e, a
    add e
    sub d
    inc b
    nop
    ld a, [bc]
    push af
    ld bc, $f4fe
    dec h
    nop
    ld [$c043], sp
    ld b, b
    rlca
    add b
    add b
    inc bc
    adc a
    or b
    ld [hl], b
    ret nz

    add b
    ld h, c
    nop
    and a
    add d
    cp a
    ld b, a
    rst $38
    nop
    dec b
    ld a, a
    add b
    xor d
    ld d, l
    ld d, b
    xor a
    add l
    adc h
    ld b, $01
    cp $ff
    nop
    ccf
    nop
    push bc
    xor d
    sbc l
    ld bc, $ab54
    db $ec
    dec hl
    rlca
    ret nz

    ldh [rNR23], a
    inc e
    ld b, $03
    ld a, a
    nop
    ld c, e
    rst $38
    nop
    ld bc, $03fc
    rst $00
    ldh [$0a], a
    rlca
    ld hl, sp-$01
    nop
    db $fd
    nop
    jp nz, $0500

    nop
    sbc a
    jp $a600


    ld [bc], a
    ld [bc], a
    ld [c], a
    dec e
    add e
    sbc c
    db $ec
    ld sp, $8009
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    add sp, $18
    call nz, Call_058_4324
    add d
    ld b, d
    rra
    dec h
    push bc
    ld bc, $10e1
    ldh [rNR41], a
    ret nc

    ldh a, [$09]
    ld sp, hl
    ld b, $bf
    nop
    ld d, a
    nop
    xor [hl]
    ld bc, $07f8
    push de
    cpl
    xor d
    ld e, a
    ld c, l
    cp a
    ld b, $ff
    add hl, de
    cp $63
    db $fc
    db $ec
    ld b, e
    ld bc, $8080
    add l
    nop
    db $e4
    inc de
    ret nz

    ld e, h
    ld b, b
    ld [c], a
    ld h, $a2
    add $c2
    call z, $ae84
    add d
    ld e, [hl]
    ld [bc], a
    ld hl, sp+$06
    push af
    dec bc
    xor c
    ld d, a
    rst $38
    db $ec
    ccf
    rlca
    ld bc, $0201
    inc bc
    nop
    inc bc
    inc b
    rlca
    ld b, e
    ld [$430f], sp
    db $10
    rra
    ld b, l
    jr nz, jr_058_4bb0

    ld b, a
    ld b, b
    ld a, a
    ld bc, $ff80
    ld a, e
    dec bc
    ld bc, $0301
    ld [bc], a
    nop
    ld [bc], a
    ld b, $04
    rlca
    inc b
    ld bc, $cb02
    call nz, $0110
    ld bc, $0606
    jr jr_058_4ba6

    jr nz, jr_058_4bc0

    ld b, b
    ld h, b
    add b
    add sp, $00
    push af
    nop
    ld a, [$5b00]
    rst $38
    nop
    ld a, b
    dec bc
    ld h, b
    ld h, b
    ld l, b
    sbc c
    inc a
    ld b, $19
    rlca

jr_058_4ba6:
    ld e, $02
    ld a, $02
    and e
    nop
    ld c, a
    dec bc
    ld l, b
    sbc b

jr_058_4bb0:
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc c
    rrca
    ld [hl], b
    ld a, a
    add b
    add e
    add e
    db $e4
    dec bc
    nop
    ld [bc], a
    nop

jr_058_4bc0:
    ld bc, $2a00
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    ldh a, [$33]
    rst $18
    dec c
    nop
    ld bc, $c240
    db $10
    ld [hl], h
    ret z

    db $fd
    inc h
    ccf
    inc e
    rra
    add hl, de
    rra
    ld b, e
    ld hl, $043f
    ld b, d
    ld a, [hl]
    add d
    cp $03
    ld b, a
    rst $38
    nop
    dec b
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld b, e
    rst $38
    nop
    nop
    rst $38
    ldh a, [$31]
    nop
    and h
    ld [de], a
    rra
    rra
    ld h, b
    ld a, a
    add a
    cp a
    jr @+$7a

    inc hl
    db $e3
    ld b, a
    call nz, $8486
    adc h
    adc b
    inc c
    ld [$c40e], sp
    nop
    ld c, d
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    and e
    nop
    xor $04
    ld [$06f8], sp
    cp $01
    ld b, h
    rst $38
    nop
    dec b

jr_058_4c20:
    rlca
    ld hl, sp+$0f
    ldh a, [$0e]
    pop af
    ld b, h
    ld e, $e1
    ld b, e
    ldh [rNR34], a
    ld [bc], a
    pop hl
    ld c, $f1
    ld b, e
    rlca
    ld hl, sp+$03
    inc bc
    db $fc
    ld bc, $9dfe
    ld bc, $071a
    ret nz

    ret nz

jr_058_4c3e:
    jr nz, jr_058_4c20

    or b
    ldh a, [$fc]
    ld l, h
    ld b, e
    cp $02
    ld [bc], a
    ld a, a
    ld bc, $447f
    ld bc, $43ff
    cp $02
    inc bc
    db $fc
    inc c
    ldh a, [$f0]
    xor c
    nop
    adc h
    dec d
    ld b, b
    ret nz

    jr nz, jr_058_4c3e

    sub b
    ld [hl], b
    ld d, b
    or b
    ld l, b
    jr jr_058_4ccd

    ld e, b
    inc d
    inc l
    ld d, h
    ld l, h
    ld a, h
    ld h, h
    ld a, d
    ld h, [hl]
    ld a, [hl-]
    and $45
    cp $02
    dec b
    db $fc
    add h
    ld a, h
    call nz, $f838
    rst $38
    db $ec
    ld b, a
    inc c
    jr c, jr_058_4cb8

    ld l, $26
    ld [hl], l
    ld h, c
    cp d
    or b
    push de
    sub b
    xor d
    adc b
    ld d, a
    ld b, h
    ld b, b
    ld a, a
    ld b, e
    cp a
    and b
    ld bc, $505f
    db $ec
    cpl
    inc hl
    ld bc, $0300
    ld [hl+], a
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    inc b
    inc b
    dec b
    ld [hl+], a
    inc b
    inc bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld l, c
    add hl, bc
    add c
    add c
    ld b, l
    ld b, l
    db $eb
    dec hl
    jp hl


    add hl, hl
    pop af
    ld de, $f043
    db $10

jr_058_4cb8:
    ld b, e
    ld hl, sp+$08
    db $ec
    dec h
    ldh [$2d], a
    inc bc
    inc bc
    rrca
    dec c
    ld a, $32
    ld a, l
    ld h, h
    ei
    add sp, -$09
    ld d, b
    rst $30
    ld d, c

jr_058_4ccd:
    ld [$b6a2], a
    and d
    xor h
    and h
    push bc
    ld b, l
    ld c, a
    ld c, e
    call $55cf
    ld d, a
    ld d, h

jr_058_4cdc:
    ld d, a
    inc h
    daa
    ld [$080a], sp
    dec c
    ld [$100a], sp
    dec d
    sub b
    sbc d
    ld [hl], b
    ld [hl], l
    jr nz, jr_058_4d28

    ld b, l
    db $10
    rra
    ld b, l
    ld [$f00f], sp
    ld hl, $e0d9
    jr nz, jr_058_4d06

    inc c
    rst $38
    ldh a, [rIE]
    ret nz

Call_058_4cfe:
    ld a, a
    inc bc
    rst $38
    inc c
    rst $30
    jr nc, @-$1f

    ld b, b

jr_058_4d06:
    cp a
    add c
    ld a, $06
    ld a, c
    ld [$10bb], sp
    ld [hl], l
    jr nz, jr_058_4cdc

    jp $8794


    jr c, jr_058_4d35

    ld h, b
    ld a, a
    add b
    ld b, l
    rst $38
    nop
    ld [bc], a
    ld a, a
    nop
    rst $38
    jp nz, Jump_058_4f81

    rst $38
    nop
    nop
    rst $38
    ld a, a

jr_058_4d28:
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    db $fc
    inc c
    cp $72
    rst $38
    add c
    rst $38
    inc bc

jr_058_4d35:
    rst $38
    inc e
    rst $38
    ld h, b
    rst $38
    add e
    adc $05
    rlca
    ld hl, sp+$1f
    pop hl
    rst $38
    ld bc, $ff46
    inc bc
    ld b, e
    rlca
    rst $38
    ld bc, $ff06
    ld b, e
    ld b, $fe
    inc bc
    ld [bc], a
    cp $02
    rst $38
    and [hl]
    db $ed
    ld [$03ff], sp
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    db $f4
    dec hl
    nop
    ld h, [hl]
    inc bc
    ret nz

    ld b, b
    ldh [rNR41], a
    add e
    nop
    cp d
    inc b
    ldh a, [$90]
    ldh [$e0], a
    and b
    ld [hl+], a
    or b
    inc de
    sbc b
    call z, $c2d8
    xor [hl]
    ld a, [c]
    cpl
    ld sp, $110f
    rrca
    dec e
    ld a, [de]
    ld h, $1c
    inc l
    jr nc, jr_058_4db7

    jr nz, jr_058_4da9

    and h
    nop
    sub l
    ld b, $c0
    jr nz, @-$1e

    and b
    ldh [rNR10], a
    ldh a, [rSCX]
    ld [$fff8], sp
    db $ec
    ld b, b
    ld [de], a
    ld bc, $0602
    add hl, bc
    jr jr_058_4da8

    ld h, b
    inc bc
    cp a
    ccf
    add b
    ld a, a
    ld b, b

jr_058_4da8:
    ccf

jr_058_4da9:
    jr nc, jr_058_4dba

    inc c
    inc bc
    inc bc
    db $ec
    ld a, [hl-]
    dec h
    ld bc, $0222
    ld de, $0203

jr_058_4db7:
    inc b
    ld b, $08

jr_058_4dba:
    add hl, de
    daa
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    srl a
    cp a
    ret nz

    ld c, d
    rst $38
    nop
    ld a, [bc]
    ret nz

    ccf
    ld sp, $111f
    rrca
    rra
    ld [bc], a
    jr nz, jr_058_4df6

    jr nz, jr_058_4e4c

    rlca
    inc b
    inc c
    ld [bc], a
    ld [de], a
    inc de
    dec d
    rrca
    ld hl, $2743
    jr z, jr_058_4de4

jr_058_4de4:
    rlca
    ld b, h
    ld c, b
    ld b, a
    dec b
    rlca

jr_058_4dea:
    adc b
    add a
    adc b
    adc a
    add b
    ld b, e
    rrca
    db $10
    ld [bc], a
    xor a
    db $10
    ld e, a

jr_058_4df6:
    add h
    add e
    ldh [rNR51], a
    cp a
    db $10
    ld c, a
    db $10
    ld a, [hl]
    sub c
    cp l

Call_058_4e01:
    ld d, d
    ret c

    daa
    rst $00
    jr c, jr_058_4e53

    or e
    rst $10
    jr z, jr_058_4dea

    ld h, $8f
    ld [hl], c
    adc a
    ld [hl], b
    daa
    ret c

    ld d, a
    xor b
    and a
    ret c

    ld d, e
    xor h
    xor e
    ld d, h
    db $d3
    inc l
    jp hl


    sub $75
    ld a, [hl-]
    cp a
    nop
    ld [hl], c
    ld b, e
    ret nz

    ld b, b
    ld bc, $20e0
    ld b, e
    ldh a, [rNR10]
    ld bc, $08f8
    ld b, e
    db $fc
    inc b
    inc de
    cp $02
    rst $38
    ld bc, $01fe
    ld sp, hl
    ld b, $f7
    ld [$30cf], sp
    cp l
    ld b, e
    ld l, a
    sbc h
    rst $38
    ld h, b
    rst $38
    add b
    ld b, e
    rst $38
    nop
    ld c, $9f

jr_058_4e4c:
    ld h, b
    pop af
    ld c, $fe
    ld bc, $80ff

jr_058_4e53:
    rst $18
    ld h, b
    rst $38
    db $10
    rst $38
    ld [$a6fd], sp
    sub l
    nop
    rst $38
    ldh a, [$32]
    nop
    ld e, [hl]
    dec bc

jr_058_4e63:
    rra
    ld e, $ff
    ldh [$fe], a
    ld bc, $0ef7
    cp a
    ld [hl], b
    rst $38
    add b
    ld c, l
    rst $38
    nop
    inc de
    rra
    ldh [$e3], a
    dec e
    rst $38
    inc bc
    rst $38
    ld bc, $01fd
    ld a, [$fd00]
    nop
    ld a, [$fd80]
    ld h, b
    ld a, [$ec10]
    dec l
    inc c
    ld e, $1e
    ei
    push hl
    rst $20
    add hl, de
    cp c
    ld h, a
    cp $82
    cp $02
    db $fc
    ld b, e
    inc b
    ld hl, sp+$01
    ld [$43f0], sp
    db $10
    ldh [rSB], a
    jr nz, jr_058_4e63

    ld b, e
    ld b, b
    add b
    ld [bc], a
    add b
    add b
    add b
    xor e
    nop
    add a
    nop
    ret nz

    ld [hl+], a
    ld b, b
    ld bc, $20a0
    rst $38
    ld a, a
    ld [$0101], sp
    ld b, $07
    dec b
    rrca
    ld a, [bc]
    rrca
    rla
    ld [hl+], a
    rra
    add hl, bc
    ccf
    ccf
    dec a
    dec a
    ld a, c
    ld a, c
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld l, l
    dec bc
    inc bc
    rlca
    ld a, [bc]
    add hl, de
    ld hl, $6120
    ld b, b
    ld d, d
    ld h, c
    adc h
    di
    ld b, l
    add b
    rst $38
    ld b, e
    ld b, b
    ld a, a
    dec b
    jr nz, jr_058_4f23

    add hl, sp
    ccf
    ld a, a
    ld b, a
    ld a, a
    inc c
    ret nz

    ret nz

    and b
    ldh [$58], a
    ld hl, sp-$52
    cp $d5
    rst $38
    ld [$fdff], a
    dec h
    rst $38
    ld b, $fe
    ccf
    inc a
    rra
    inc e
    rra
    jr jr_058_4f46

    rrca
    ld [$1044], sp
    rra
    dec c
    sbc a
    sub b
    ld a, a
    ldh a, [$0e]
    ld sp, hl
    dec c
    db $fc
    ld [de], a
    ldh a, [rNR42]
    ldh [rNR41], a
    ldh [rSCX], a
    ld b, b
    ret nz

    dec h
    add b
    db $ec
    add hl, hl
    rrca
    pop hl
    rst $20
    ld e, b
    ld hl, sp-$20

jr_058_4f23:
    ldh [$d0], a
    ret nz

    and b
    add b
    push de
    nop
    xor d
    nop
    push de
    nop
    ld d, c
    rst $38
    nop
    inc bc
    ccf
    rst $38
    ld d, l
    nop
    and e
    add c
    ld [bc], a
    ld a, [hl+]
    nop
    dec b
    db $ec
    ld [hl-], a
    rrca
    rst $20
    rst $20
    ld a, [$750f]
    rra
    ld a, e

jr_058_4f46:
    rra
    rst $30
    rra
    ld a, a
    rrca
    rst $38
    rrca
    rst $30
    rrca
    ld b, h
    rst $38
    rlca
    ld [bc], a
    inc bc
    rst $38
    ld bc, $ff49
    nop
    dec c
    ld a, $c1
    ld [hl], a
    add hl, sp
    xor [hl]
    rlca
    ld d, [hl]
    inc bc
    xor d
    inc bc

jr_058_4f64:
    ld d, d
    inc bc
    ld [bc], a
    inc bc
    db $f4
    daa
    nop
    cp b
    ld [bc], a
    ld bc, $0201
    and e
    nop
    add c
    dec b
    ccf
    rla
    rst $38
    xor a
    rst $38
    ld e, a
    inc l
    rst $38
    dec b
    di
    ei
    ldh a, [$f0]

Jump_058_4f81:
    ld hl, sp-$38

Jump_058_4f83:
    ld b, e
    db $e4
    inc e
    dec b
    rst $38
    rra
    or b
    ld l, a
    ret z

    add a
    ld b, e
    add h
    inc bc
    inc bc
    ld c, b
    add a
    jr nc, jr_058_4f64

    add $ee
    ld [$05fe], sp
    db $fc
    add h
    db $fc
    ld h, [hl]
    ld a, h
    rra
    ld e, $9f
    nop
    ld h, d
    inc b
    or b
    ldh a, [$78]
    ld hl, sp-$08
    inc h
    db $fc
    inc hl
    cp $09
    cp [hl]
    cp $4f
    rst $08
    rst $00
    rst $00
    add e
    add e
    add c
    add c
    adc l
    and l
    ld bc, $e020
    xor b
    nop
    sbc e
    ld c, $f8
    ld [$88f8], sp
    ld hl, sp-$30
    ld [hl], b
    ldh a, [$30]
    ldh [rNR41], a
    ld [hl], b
    db $10
    jr c, @+$0a

    rst $38
    db $ec
    scf
    ld [bc], a
    rlca
    rrca
    ld bc, $1022
    nop
    nop
    ld h, $20
    inc hl
    db $10
    ld bc, $1011
    ld b, e
    add hl, bc
    ld [$0509], sp
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    dec h
    inc b
    db $ec
    dec h
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ld b, e
    ld b, $04
    ld bc, $0407
    ld b, a
    rrca
    ld [$8f05], sp
    adc c
    add a
    add l
    rst $00
    ld b, [hl]
    ld b, a
    jp $0542


    pop bc
    ld b, c
    add c
    add c
    add b
    add b
    inc hl
    add c
    dec c
    add e
    add d
    jp $e7c3


    and h
    ld a, a
    jr c, @+$81

    rla
    ld a, a
    jr jr_058_5064

    inc c
    sub a
    rst $08
    ld bc, $0202
    ld b, e
    inc b
    rlca
    ld [$0f0f], sp
    ccf
    jr nc, jr_058_50a4

    ld b, b
    ret nz

    add b
    add b
    add e
    sub e
    add hl, de
    nop
    ld b, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $28
    jp $0097


    cpl
    nop
    rla
    nop
    cpl
    nop
    ld e, $00
    ld a, [hl]
    add e
    sub c

jr_058_5057:
    ld d, $3e
    rst $38
    ld b, c
    sbc a
    add b
    xor [hl]
    nop
    db $dd
    nop
    db $fd
    ld hl, sp-$02

jr_058_5064:
    ld b, $ff
    ld bc, $00f3
    db $ed
    ret nz

    db $fd

jr_058_506c:
    jr nc, jr_058_506c

    inc c
    cp b
    rst $18
    ld de, $40c0
    ret nz

    jr nz, jr_058_5057

    db $10
    ldh a, [$fd]
    dec c

jr_058_507b:
    rst $38
    inc bc
    ld a, a
    nop
    ld a, a
    ld bc, $02fe
    db $fc
    ld b, h
    dec b
    db $fd
    ld bc, $05fc
    ld b, e
    cp $02
    ldh [rNR42], a
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$41

    jr jr_058_507b

    rlca
    reti


    ld bc, $0139
    or $06
    ld sp, hl

jr_058_50a4:
    adc c
    jp hl


    ld c, c
    ld l, c
    add hl, hl
    or [hl]
    ld d, $b4
    inc d
    ld c, b
    ld [$0ccc], sp
    inc hl
    sub d
    inc bc
    call nc, Call_058_7854
    ld a, b
    sbc d
    nop
    ld e, $11
    rlca
    jr @+$1e

    ld h, b
    ld [hl], e
    add b
    rst $08
    ld bc, $8eff
    cp $f0
    ld [hl], b
    ld h, b
    ld h, b
    or b
    or b
    sub b
    inc hl
    ret nc

    ld [$d8d8], sp
    ret z

    ld e, b
    ret c

    jr c, jr_058_5100

    ldh a, [$d0]
    jp $07fa


    ldh a, [$50]
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ret nz

    db $ec
    dec [hl]
    ld [hl+], a
    add b
    jp nz, $ec80

    dec a
    rst $38
    db $ec
    ld h, c
    dec d
    ld bc, $0601
    rlca
    ld [$140f], sp
    rra
    ld l, $33
    daa
    dec [hl]
    ld b, h
    ld h, l
    ld e, [hl]

jr_058_5100:
    ld a, a
    add b
    rst $38
    add a
    cp $b8
    ldh a, [rNR43]
    ret nz

    inc h
    add b
    inc hl
    ld b, b
    ld b, e
    ld hl, $0420
    ld de, $0910
    ld [$f806], sp
    ld [hl+], a
    xor b
    rra
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $20
    ld bc, $47cf
    sbc $5e
    ld hl, sp+$2c
    db $f4
    rrca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    inc bc
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld c, b
    rst $38

jr_058_513c:
    nop

jr_058_513d:
    ld b, $3e
    rst $38
    ld b, c
    rst $38
    ld bc, $beff
    ld hl, sp+$21
    xor [hl]
    rlca
    ret nz

    ret nz

    jr nc, jr_058_513d

    adc b
    ld hl, sp-$7c
    ld a, h
    ld b, e
    ld [bc], a
    ld a, $0b
    add c
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld hl, sp+$3f
    cp $07
    add h
    adc d

jr_058_5163:
    jp $0081


    ld bc, $fe43
    ld [bc], a
    inc bc
    db $fc
    inc b
    ld hl, sp+$08
    jp $eca6


    ld sp, $8026
    ld hl, sp+$28
    add b
    inc de
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_058_51a0

    ld e, b
    daa
    ld c, h
    inc hl
    adc b
    ld b, e
    cp h
    ld b, e
    ld bc, $0cfe
    ldh a, [$a3]
    nop
    adc l
    add l
    cp d
    ld b, e
    add b
    nop
    ld b, e
    ld b, b
    nop
    inc bc
    jr nz, jr_058_519b

jr_058_519b:
    stop
    jp $14a7


jr_058_51a0:
    cp $00
    ld bc, $00fe
    rst $08
    ld bc, $869e
    jr c, jr_058_5163

    ld b, b
    ld c, b
    and b
    rra
    ldh [rP1], a
    rst $38
    ldh a, [rIF]
    rlca
    ld [hl], d
    ld [bc], a
    ld b, h
    jr c, jr_058_513c

    ld h, c
    ld [bc], a
    ld [bc], a
    ld bc, $837c
    pop bc
    dec b
    ld h, b
    add b
    db $10
    ldh [$08], a
    ldh a, [rSCX]
    inc b
    ld a, b
    ld b, e
    ld [bc], a
    db $fc
    ld [$fe01], sp
    add c
    ld a, [hl]
    ld [hl], c
    ld c, $0d
    ld [bc], a
    inc bc
    xor d
    db $db
    and e
    db $dd
    ld bc, $0010
    jp nz, $02a7

    nop
    nop
    nop
    add a
    nop
    ld h, d
    dec b
    ld [hl+], a
    ccf
    ld hl, $503f
    ld a, a

jr_058_51ef:
    add l
    nop
    or b
    add hl, bc
    nop
    rst $08
    ld b, b
    rst $18
    ld b, b
    rst $38
    inc hl
    rst $38
    inc c
    rst $38
    ret


    ld bc, $0531
    ld b, d
    cp $82
    cp $01
    rst $38
    rst $38
    db $ec
    ld b, l
    ld b, $30
    jr nc, jr_058_5256

    ld e, b
    ld e, b
    ld a, b
    sbc b
    ld c, b
    ld hl, sp-$48
    add hl, bc
    jr c, jr_058_5290

    ld e, e
    ld a, a
    ld e, $3c
    ld l, $3c
    rla
    jr c, @-$12

    ld c, c
    ld bc, $0101
    inc hl
    ld [bc], a
    rlca
    inc b
    inc b
    ld [$1008], sp
    jr nc, jr_058_51ef

    ret nz

    ld h, l
    nop
    ld b, c
    ld h, h
    dec b
    ld bc, $0301
    inc bc
    inc b
    ld b, $c7
    sbc b
    call $25a6
    ld bc, $0000
    jr z, jr_058_5247

    nop
    nop

jr_058_5247:
    inc h
    inc b
    nop
    nop
    inc h
    ld [$85a3], sp
    dec b
    nop
    jr nz, @+$23

    jr nz, jr_058_5296

    ld b, b

jr_058_5256:
    ld b, e
    add e
    add b
    ld b, e
    rlca
    nop
    ld de, $000f
    dec e
    ld c, $12
    rla
    inc sp
    rra
    inc hl
    rra
    ld h, a
    ccf
    ld h, a

Call_058_526a:
    ld a, $cf
    ld a, [hl]
    sbc a
    db $fc
    jp $0be6


    ld h, b
    ldh [$f8], a
    ld hl, sp+$18
    inc e
    ld [bc], a
    inc bc
    jr c, jr_058_527c

jr_058_527c:
    ccf
    nop
    ld b, e
    rra
    nop
    ld b, e
    adc a
    add b
    ld c, $4f
    ld b, b
    ld b, a
    ld b, b
    rst $20
    and b
    rst $28
    and b
    rst $10
    jr nz, @-$53

jr_058_5290:
    nop
    rla
    nop
    dec hl
    add [hl]
    add e

jr_058_5296:
    ld [$002f], sp
    ld d, a
    nop
    cpl
    nop
    ld e, a
    nop
    cp a
    add h
    add e
    ld bc, $007f
    ld b, l
    rst $38
    nop
    ld [bc], a
    cp $01
    cp $43
    ld [bc], a
    db $fc
    ld bc, $fc04
    ld b, e
    inc b
    ld hl, sp+$04
    ld [$08f8], sp
    ldh a, [$08]
    ld b, a
    ldh a, [rNR10]
    ld bc, $10e0
    ld h, c
    ld [bc], a
    ld [bc], a
    ld b, $05
    ld b, h
    rlca
    inc b

jr_058_52c9:
    dec bc
    nop
    rlca
    add d
    jp $2322


    ld a, [c]
    inc de
    cp $0f
    rst $38
    rlca
    ld b, e
    db $fd
    inc bc
    ld b, e
    rst $38
    ld bc, $fe01
    ld bc, $ff50
    nop
    add h
    sub c
    dec c
    db $fd
    ld b, $ef
    jr jr_058_52c9

    jr nc, @+$01

    jr nz, jr_058_52c9

    ld e, b
    add a
    add a
    nop
    add b
    db $ec
    inc hl
    ld bc, $8080
    ld b, e
    ld b, b
    ret nz

    nop
    ret nz

    dec h
    ldh [rNR51], a

Call_058_5300:
    ldh a, [rNR50]
    ld hl, sp+$11
    db $fc
    db $fc
    ld l, h
    db $ec
    add sp, $6a
    ld [c], a
    ld a, [hl+]
    and $2a
    db $fc
    add hl, de
    db $fd
    add hl, bc
    db $fd
    pop bc
    rst $30
    reti


    ld b, e
    rst $38
    db $fd
    ld bc, $f2b2
    dec h
    add b
    ld hl, sp+$21
    or d
    rst $38
    db $ec
    rst $28
    rla
    inc bc
    rlca
    ld [$0408], sp
    ld b, $18
    jr jr_058_534e

    jr nz, @+$12

    db $10
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    rlca
    ld b, $03
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    ld [hl+], a
    ld [$0b16], sp
    db $10
    db $10
    ld [de], a
    inc e
    nop
    ccf
    jr nz, @+$41

    inc h
    inc hl
    jr nz, jr_058_536e

    inc b

jr_058_534e:
    ld a, c
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    ld b, b
    ld b, b
    nop
    add b
    ld b, h
    add b
    rst $38
    ld bc, $8080
    add [hl]
    add a
    inc b
    rst $38
    rst $38
    ld b, b
    ld a, a
    ld b, h
    ld b, [hl]
    ld a, a
    ld b, d
    rlca
    ld a, [hl]
    ld a, a
    dec h
    dec a
    dec a

jr_058_536e:
    dec h
    ld a, l
    ld b, l
    ld b, [hl]
    ld a, a
    ld b, [hl]
    inc b
    ld a, a
    inc a

jr_058_5377:
    ccf
    rlca
    rlca
    ld h, a
    ldh [$4c], a
    ld bc, $0e01
    ld e, $20
    ld h, b
    add b
    adc a
    ld e, $21
    ld a, $41
    rra
    jr nz, jr_058_539b

    db $10
    rlca
    ld [$300f], sp
    sbc c
    xor b
    or [hl]
    ld c, [hl]
    or l
    ld c, l
    ld hl, sp+$07
    ld a, a
    add b

jr_058_539b:
    ld a, c
    add [hl]
    rst $30
    ret z

    inc a
    cp e
    rra
    ld a, h
    rrca
    daa
    ld a, [bc]
    jp nz, $8108

    add hl, bc
    ld bc, $0105
    ld [bc], a
    nop
    db $10
    add b
    sub e
    add e
    ld e, [hl]
    ld c, h
    ccf
    jr c, jr_058_53bf

    db $fc
    daa
    add $07
    rlca
    inc h
    inc e

jr_058_53bf:
    inc d
    db $fc
    ld [hl], h
    sub h
    ld a, h
    ld a, h
    adc h
    db $f4
    inc d
    db $ec
    inc c
    add [hl]
    add e
    ld bc, $f808
    ld [hl+], a
    ldh a, [rSB]
    db $10
    add b
    ld b, h
    jr nz, jr_058_5377

    rlca
    ldh a, [$30]
    ret z

    ld hl, sp+$28
    ld hl, sp-$10
    ldh a, [$a6]
    db $ed
    db $10
    ret nz

    ld d, b
    ld e, b
    ld b, b
    ld h, h

jr_058_53e8:
    ld [$1008], sp
    sub b
    db $10
    jr nc, @+$2a

    ld e, b
    ld a, h
    adc h
    ld a, [$430a]
    db $ec
    inc b
    ld de, $04fc
    ld a, h
    inc b
    add sp, -$78
    ldh [$30], a
    or b
    jr nc, @-$0e

    db $10
    ldh [$60], a
    jr nz, jr_058_53e8

    ret nz

    ret nz

    ld l, c
    inc hl
    add b
    ld de, $3030

jr_058_5410:
    db $fc
    call z, Call_058_526a
    cp e
    scf
    cp $0c
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add hl, sp
    ld b, $07
    ld e, l
    ld [bc], a
    inc bc
    ld bc, $0f0f
    db $ec
    ld b, h
    inc bc
    add b
    ld b, b
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_058_5410

    ld [bc], a
    and b
    ld b, b
    ret nz

    inc a
    add b
    ld hl, sp+$45
    and a
    db $ec
    ld l, $ff
    db $ec
    push hl
    nop
    rlca
    ld b, h
    rlca
    inc b
    dec c
    dec b
    rlca
    rrca
    rrca
    ld d, $1e
    inc c
    inc c
    ld b, $06
    rlca
    dec b
    inc bc
    inc bc
    inc hl
    ld [bc], a
    inc bc
    ld bc, $0102
    ld bc, $0661
    ld bc, $0001
    ld b, $0a
    ld [$4402], sp
    db $10
    ld de, $270b
    daa
    dec l
    dec hl
    ld a, $32
    jr jr_058_548a

    rra
    jr jr_058_5480

    ld [$b2c3], sp
    ld bc, $0404
    inc hl
    ld [$0d01], sp
    rrca
    ld b, l
    dec b
    rlca
    ld [bc], a

jr_058_5480:
    ld b, $07
    nop
    ld b, h
    rlca
    inc b
    ld c, c
    ld [bc], a
    inc bc
    inc b

jr_058_548a:
    ld b, $07
    inc b
    rlca
    inc bc
    add e
    and l
    ld [bc], a
    rrca
    ld [$c508], sp
    db $e4
    rrca
    dec h
    daa
    ld sp, hl
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $10
    rst $38
    ld a, a
    ld h, a
    ld a, a
    ld b, d
    ld b, e
    rst $38
    nop
    ldh [$2d], a
    db $eb
    rla
    ld l, a
    sbc b
    ld [hl], a
    ld c, $ff
    nop
    rst $38
    add b
    cp a
    ld [hl], c
    ld a, [$f5c6]
    cp a
    inc l
    ld [hl-], a
    jr jr_058_54dd

    nop
    stop
    jr nz, jr_058_54e2

    inc a
    ld h, d
    db $e3
    adc a
    add c
    dec sp
    ld b, $ff
    ld [$30ef], sp
    rst $38
    ld [hl], b
    adc a
    ld sp, hl
    ld b, $9f
    nop
    pop hl
    nop
    rra
    ld h, d

jr_058_54dc:
    dec b

jr_058_54dd:
    add b
    jr nc, jr_058_54dc

    db $10
    rst $38

jr_058_54e2:
    db $10
    ld c, d
    rst $38
    jr jr_058_54ed

    inc d
    rst $30
    sub l
    rst $30
    ld c, h
    rst $38

jr_058_54ed:
    ld c, d
    ld b, h
    ei
    ld a, [bc]
    add hl, bc
    dec hl
    ei
    ld l, d
    ei
    ld [hl], c
    or c
    ld h, c
    ld h, c
    add b
    add b
    ld h, a
    ld [bc], a
    ld [hl], b
    ldh a, [$30]
    ld [hl+], a
    ldh a, [rSC]
    ld hl, sp-$08
    db $fc
    call nz, $0780
    ldh [$f0], a
    and b
    ldh a, [$f0]
    sub b
    ld [hl], b
    sub b
    and e
    nop
    or $c5
    sbc [hl]
    rla
    ld h, b
    ld h, b

jr_058_551a:
    db $10
    db $10
    ld h, b
    ld [$8808], sp
    inc b
    add h
    inc b
    inc b
    ret z

    ret z

    add sp, $28
    ld hl, sp+$18
    ldh a, [$30]
    ret nc

    ld d, b
    sub b
    sub b
    dec h
    jr nz, jr_058_5558

    db $10
    and a
    ld bc, $0128
    jr nz, jr_058_551a

    ld b, l
    db $10
    ldh a, [rNR13]
    sub b
    ldh a, [$50]
    ldh a, [rP1]
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$30
    ld hl, sp-$38
    ret z

    add h
    ld a, h
    add h
    add h
    ld a, b
    ld a, b
    db $ec
    pop hl
    rst $38
    db $ec
    ld e, e
    inc bc

jr_058_5558:
    ld [bc], a
    ld bc, $0703
    ld b, h
    rlca
    rrca
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $2403
    ld bc, $0303
    rlca
    inc bc
    inc bc
    ld c, b
    rlca
    rrca
    nop
    inc bc
    jp $029c


    inc bc
    nop
    ld bc, $0068
    inc bc
    ld b, l
    inc bc
    rlca
    ld bc, $0300
    ld [hl], e
    rrca
    ld e, $7f
    ei
    rst $30
    rst $38
    rst $38
    sbc [hl]
    pop hl
    nop
    add b
    nop
    add b
    sbc [hl]
    ret nz

    sbc [hl]
    rst $38
    add e
    adc l
    ldh [rNR42], a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    rrca
    ccf
    ld a, $ff
    ld hl, sp-$02
    ldh [$f8], a
    ld [hl+], a
    ldh [$08], a
    ld hl, sp-$08
    cp $3e
    rst $38
    rrca
    ccf
    inc bc
    rrca
    adc [hl]
    rst $10
    ld c, $80
    ret nc

    ldh [$f0], a
    ld hl, sp+$78
    db $fc
    jr c, jr_058_564c

    jr c, @+$7a

    ld [hl], b
    ldh a, [$60]
    ldh a, [rNR50]
    ldh [rTMA], a
    ldh a, [$78]
    ldh a, [$f0]
    ld a, b
    inc a
    ld a, b
    ld b, e
    ld a, h
    jr c, jr_058_55f0

    inc a
    ld a, b
    ldh a, [$78]
    ld a, b
    ldh a, [$e0]
    ldh a, [$c0]
    ldh [$80], a
    ret nz

jr_058_55f0:
    add b
    xor l
    nop
    ld a, a
    ld h, c
    ld bc, $8080
    and h
    nop
    ld e, a
    ld bc, $e000
    db $ec
    ld e, l
    inc c
    ld [bc], a
    ld bc, $070b
    rra
    rrca
    ld c, $1f
    rrca
    rrca
    inc bc
    rlca
    ld [bc], a
    add e
    nop
    ld l, e
    adc d
    nop
    db $ed
    add hl, bc
    ld e, $00
    cp a
    ld a, a
    ei
    rst $30
    di
    rst $38
    and c
    ret nz

    ld h, c
    ld [bc], a
    ld e, $80
    sbc $86
    nop
    cp c
    ld l, e
    and e
    cp l
    ld a, [bc]
    db $f4
    ld hl, sp+$7e
    db $fc
    inc e
    ld a, $3c
    ld a, h
    ldh a, [$f8]
    ret nc

    add h
    ld bc, $0b0b
    and c
    ret nz

    ret nz

    adc h
    inc b
    sub [hl]
    adc h
    ld e, $80
    inc c
    nop
    add b
    add e
    nop
    call z, $008d
    or b

jr_058_564c:
    ld c, $e1
    rst $38
    sbc $ff
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
    call nz, $8d8b
    nop
    jp nc, $f802

    ldh a, [rSVBK]
    ld c, b
    ld hl, sp-$44
    inc bc
    ld [hl], b
    ld hl, sp-$08
    ldh a, [rIE]
    ld [hl], a
    ld a, [bc]
    ld bc, $0301
    ld [bc], a
    inc bc
    inc b
    ld b, $04
    rrca
    ld [$430f], sp
    db $10
    rra
    ld b, l
    jr nz, jr_058_56c0

    ld c, [hl]
    ld b, b
    ld a, a
    ld b, e
    ccf
    jr nz, jr_058_5691

    cpl
    jr nc, @+$17

    ld a, [de]
    ld [de], a
    dec e
    add hl, bc
    ld c, $08

jr_058_5691:
    rrca
    ld b, e
    inc b
    rlca
    db $db
    or d
    add e
    call nc, $0207
    ld b, $08
    jr jr_058_56bf

    jr nz, jr_058_56e1

    ld b, b
    and e
    and l
    rlca
    ld [bc], a
    nop
    ld b, l
    nop
    xor d
    nop
    ld d, a
    nop
    ld e, a
    rst $38
    nop
    add hl, bc
    ld a, a
    add b
    cp a
    ld b, b
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec b
    ld a, [$9085]
    rlca
    add b

jr_058_56bf:
    rst $38

jr_058_56c0:
    ld b, b
    ld a, a
    jr nz, jr_058_5703

    jr jr_058_56e5

    adc d
    db $ed
    ld b, $01
    ld b, $06
    jr jr_058_56e6

    ld h, b
    ld h, b
    and a
    ei
    add hl, bc
    dec b
    nop
    ld a, [bc]
    nop
    ld d, l
    nop
    xor a
    nop
    ld e, a
    nop
    add sp, $25
    rst $38
    nop

jr_058_56e1:
    rlca
    cp $01
    ld d, l

jr_058_56e5:
    xor d

jr_058_56e6:
    xor d
    ld d, l
    ld d, b
    xor a
    adc e
    sub h
    ld [bc], a
    ld a, [bc]
    rst $38
    ld d, l
    and h
    add c
    ld h, c
    inc bc
    ld e, $3f
    ret nz

    ret nz

    ld h, c
    add hl, bc
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a

jr_058_5703:
    nop
    add sp, $2d
    rst $38
    nop
    inc bc
    cp $01
    push af
    ld a, [bc]
    adc a
    db $db
    add l
    nop
    xor [hl]
    ld [bc], a
    ld d, b
    rst $38
    xor b
    add h
    rst $18
    ld h, c
    rla
    ret nz

    ldh [$78], a

jr_058_571d:
    jr jr_058_571d

    ld b, $ff
    ld bc, $10ef

jr_058_5724:
    rst $38
    db $10
    rst $30
    jr jr_058_5724

    inc c
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $21f0
    db $db
    dec b
    ld hl, sp+$07
    and b
    ld e, a
    ld b, b
    cp a
    sub c
    sbc d
    add hl, bc
    inc bc
    rst $38
    ld c, $fe
    inc a
    db $f4
    call c, $18e4
    add sp, -$55
    nop
    ld h, d
    add hl, de
    ret nz

    ld b, b
    ldh a, [$30]
    ld hl, sp+$68
    inc e
    call nc, $da1e
    ld a, [hl+]
    xor $09
    rst $38
    ld bc, $8fff
    rst $38
    ld a, [c]
    ld a, [hl]
    jp nz, $e47e

    inc a
    ld hl, sp+$18
    ld b, e
    ld hl, sp+$08
    ld b, l
    db $fc
    inc b
    dec b
    cp $02
    and $1a
    jp nz, Jump_058_433e

    add d
    ld a, [hl]
    ld bc, $fe02
    res 1, d
    inc bc
    ld [$10f8], sp
    ldh a, [$b3]
    nop
    ld c, b
    rst $38
    db $ec
    ld sp, $0123
    ld b, e
    ld [bc], a
    inc bc
    ld b, l
    inc b
    rlca
    ld b, l
    ld [$470f], sp
    db $10
    rra
    ld c, c
    jr nz, jr_058_57d7

    ld b, a
    ld b, b
    ld a, a
    db $ec
    ld hl, $020e
    inc bc
    dec b
    ld b, $0a
    dec c
    ld de, $221e
    dec a
    ld b, c
    ld a, [hl]
    nop
    ld a, a
    add b
    add sp, $2f
    rst $38
    nop
    sbc d
    nop
    jr jr_058_57ba

    rlca
    ld c, $1f
    jr nc, @+$01

jr_058_57ba:
    ret nz

    ld b, e
    ld a, a
    add b
    ld a, [bc]
    cp a
    ld b, b
    ld d, a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    nop
    ldh a, [$35]
    rst $18
    ld d, $01
    inc bc
    inc bc
    rlca
    rlca
    ld c, $0f
    ld e, $1e

jr_058_57d7:
    inc e
    inc e
    inc a
    inc a
    jr c, jr_058_5815

    ld e, b
    ld a, b
    ld l, b
    ld a, b
    ret c

    ld hl, sp-$01
    ld [hl], a
    and e
    nop
    adc a
    and l
    db $dd
    ld bc, $ab54
    jp $8be0


    cp c
    inc bc
    ld bc, $03ff
    cp $43
    ld b, $fc
    ld [bc], a
    rlca
    db $fc
    inc bc
    and h
    nop
    adc a
    ld b, e
    ld bc, $04ff
    dec de
    cp $07
    cp $01
    sub b
    rst $18
    dec d
    ld a, $7f
    rst $38
    rst $38
    pop bc
    pop af
    nop
    add b
    rlca

jr_058_5815:
    rrca
    dec c
    rra
    jr jr_058_5833

    jr jr_058_5834

    inc c
    inc e
    rrca
    rrca
    inc bc
    rlca
    ld h, e
    add hl, bc
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$02
    cp $01
    rst $38
    inc d
    rst $30
    ld b, e
    ld l, $ef
    dec e
    dec l

jr_058_5833:
    db $ed

jr_058_5834:
    dec b
    db $ed
    rla
    rst $30
    inc de
    rst $30
    add hl, bc
    ei
    inc b
    db $fd
    db $e3
    rst $38
    ldh a, [$1f]
    jr c, @+$11

    dec e
    rlca
    rra
    ld b, $3f
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    ldh [$c6], a
    jp nc, $0608

    ld hl, sp+$18
    ldh [$e0], a
    ld b, b
    pop bc
    ld b, c
    jp nz, $2343

    ld [c], a
    ld bc, $fc1f
    ld h, l
    and e
    ld bc, $0328
    ld h, b
    ld [hl], b
    jr nc, jr_058_589b

    inc hl
    or b
    ld bc, $7060
    jp $af8a


    nop
    inc h
    ld bc, $c040
    and l
    nop
    ld a, $43
    adc b
    ld hl, sp+$02
    sub h

jr_058_5880:
    db $fc
    add h
    ld b, h
    db $fc
    inc b
    dec b
    jr c, jr_058_5880

    ld hl, sp-$38
    ld hl, sp+$08
    push bc
    sub d
    call $099c
    add b
    add b
    add $4e
    rst $38
    ld sp, $01ff
    push af
    dec bc

jr_058_589b:
    rst $38
    ld l, b
    ld bc, $1060
    ld [hl+], a
    sub b
    rlca
    add a
    adc a
    ld b, b
    ld b, b
    db $10
    jr nc, jr_058_58b1

    rrca
    ld [hl], l
    ld a, [hl+]
    ld bc, $024b
    inc bc

jr_058_58b1:
    ld c, e
    inc b
    rlca
    ld c, b
    ld [$450f], sp
    rra
    db $10
    ld bc, $203f
    ld h, a
    dec d
    inc c
    inc e
    ld [hl+], a
    ld h, e
    nop
    add b
    jr jr_058_58e3

    ld h, d
    ld h, d
    add c
    add c
    ld bc, $0301
    inc bc
    rlca
    inc b
    ld c, $08
    jr jr_058_58e5

    ld b, e
    jr nc, @+$22

    ld b, e
    ld [hl], b
    ld b, b
    add hl, bc
    add sp, -$80
    push af
    add b
    ld [$f580], a

jr_058_58e3:
    nop
    ei

jr_058_58e5:
    nop
    add sp, $2f
    rst $38
    nop
    ld l, e
    rrca
    adc b
    sbc b
    ld e, h
    ld d, h
    cp $22
    rst $28
    ld hl, $c0ef

jr_058_58f6:
    call z, $f333
    inc c
    ld a, a
    nop
    ld b, e
    ccf
    nop
    ld b, $1f
    nop
    ccf
    nop
    ld e, a
    nop
    cp a
    add h
    add e
    ld [bc], a
    ld a, a
    nop
    rst $38
    ldh a, [$3a]
    rst $18
    rrca
    ld bc, $0403
    inc c
    nop
    db $10
    inc bc
    inc hl
    inc h
    inc h
    sbc b
    ret z

    ld hl, sp-$38
    ldh a, [$38]
    and e
    nop
    ld e, h
    ld b, e
    cp $02
    ld b, e
    rst $38
    ld bc, $fe01
    ld bc, $ff53
    nop
    dec bc
    rst $18
    jr nz, @-$1f

    inc hl
    rst $38
    inc h

jr_058_5937:
    rst $38
    ld hl, $26fe
    ld hl, sp+$38
    ld b, l
    ldh [rNR41], a
    and a
    nop
    ld d, d
    dec b
    ld sp, hl
    add hl, bc
    rst $38
    ld e, $ff
    ldh [$8d], a
    rst $18
    dec c
    ret nz

    ret nz

    jr nz, jr_058_5981

    inc c
    inc c
    jp nz, $11c2

    ld sp, $0808
    ld b, $06
    call $2d00
    inc c
    add b
    add b
    ret nz

    ld b, b
    and b
    jr nz, jr_058_58f6

    db $10
    ret nc

    db $10
    ret z

    ld [$44e8], sp
    ld [$43f8], sp
    ldh a, [rNR10]
    ld [hl+], a
    ldh [$0a], a
    jr nz, jr_058_5937

    ld b, b
    add b
    add b
    inc bc
    ld bc, $0004
    add hl, bc
    nop
    ld b, e

jr_058_5981:
    add hl, bc
    ld [$150c], sp
    db $10
    dec e
    db $10
    cpl
    jr nz, jr_058_59ea

    ld b, b
    rst $38
    add b
    db $fd
    nop
    cp $a3
    nop
    push hl
    ld l, [hl]
    rlca
    ld [$2418], sp
    ld h, h
    add h
    add h
    jr @+$1a

    and e
    rst $18
    db $ec
    add hl, hl
    dec b
    add b
    add b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    adc l
    ld bc, $a568
    nop
    ld e, d
    ld bc, $04fc
    rst $38
    ld a, l
    inc b
    ld bc, $0201
    ld [bc], a
    nop
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [bc], a
    ld [$080d], sp
    ld a, [bc]
    ld [$1005], sp
    ld a, [de]
    db $10
    dec e
    ld b, h
    db $10
    rra
    ld b, e
    rrca
    ld [$0745], sp
    inc b
    ld b, h
    inc bc
    ld [bc], a
    ld b, e
    ld b, $07
    inc d
    add hl, bc
    rrca
    add hl, bc
    rra
    ld de, $213f
    ccf
    ld b, c
    ld a, a
    ld h, d
    ld a, a
    ld d, l
    ccf
    ld a, [hl+]
    rra
    dec d
    rrca

jr_058_59ea:
    ld c, $03
    inc bc
    sub [hl]
    push de
    ld a, [de]
    inc bc
    rlca
    inc c
    inc de
    jr nc, @+$43

    ld b, b
    ld bc, $0380
    nop
    dec b
    nop
    dec bc
    nop
    rla
    nop
    xor e
    nop
    ld d, a

jr_058_5a04:
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, d
    rst $38
    nop
    inc d
    ld bc, $02ff
    cp $04
    db $fd
    adc e

jr_058_5a16:
    db $fd
    sub b
    ld a, [$fc90]
    and b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    call c, Call_058_437f
    ld [hl], c
    inc bc
    ld a, $7e
    rst $38
    add c
    add sp, $21
    rst $38
    nop
    ldh [$27], a
    rst $30
    jr jr_058_5a04

    jr nz, jr_058_5a16

    ld b, b
    jp $6240


    add a
    jp hl


    sbc b
    jp nz, $e5a0

    and b
    bit 0, b
    sub a
    add b
    cpl
    nop
    ld a, a
    di
    cp a
    ccf
    ld b, h
    ld a, a
    rst $38
    adc c
    db $ed
    sbc e
    adc c
    rst $38
    call nz, $ff7f
    ccf
    rst $38
    ldh [$73], a
    rlca
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    ld b, h
    cp $02
    ld b, e
    ld bc, $00ff
    ld bc, $00da
    xor h
    ld e, $01
    ld a, a
    add c
    cp a
    ld b, c
    rst $38
    ld bc, $2af6
    cp $2a
    adc $fb
    ld e, $f6
    db $fc
    ld hl, sp-$68
    ldh a, [$fd]
    jr nz, jr_058_5abe

    ldh [$3d], a
    ldh [$9f], a
    ldh a, [rIE]
    db $fc
    ei
    dec bc
    db $ec
    jr z, jr_058_5ac4

    add b
    ld bc, $8000
    ld h, c
    dec e
    ld [bc], a
    ld b, $01
    add hl, bc
    add hl, bc
    ld [$1013], sp
    rra
    add hl, sp
    rst $00
    rst $00
    inc bc
    ld bc, $0007
    cpl
    nop
    ld a, a
    inc a
    cp a
    ld l, $79
    add hl, de
    cp $06
    rst $38
    ld bc, $c1ff
    db $ec
    ld b, l
    rst $00
    ld sp, hl
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ld b, e

jr_058_5abe:
    ldh [rNR41], a
    ld b, h
    ldh a, [rNR10]
    ld [bc], a

jr_058_5ac4:
    sub b
    ld h, b
    ld h, b
    ld h, c
    rst $38
    db $ec
    ld b, l
    ld bc, $0101
    ld hl, sp+$27
    add b
    inc de
    ld bc, $0701
    ld b, $0f
    ld [$101f], sp
    rra
    add hl, de
    ld l, $2e
    jr c, jr_058_5b18

    ld a, a
    ld c, b
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, c
    ld b, l
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_058_5afa

    rra
    db $10
    rra
    jr @+$69

    ld a, [hl]
    sbc e
    rst $38
    ld h, c
    ld a, a
    sbc [hl]
    cp [hl]
    ld h, b

jr_058_5afa:
    ld h, b
    db $ec
    ld hl, $7f15
    ld a, a
    add d

Call_058_5b01:
    add b
    dec b
    nop
    adc d
    nop
    rst $38
    nop
    rst $38
    db $e3
    ld e, $16
    rrca
    dec bc
    rst $38
    ld [$30ff], sp
    rst $38
    ret nz

    ld d, b
    rst $38
    nop
    inc b

jr_058_5b18:
    add b
    ld a, a
    ld a, a
    ld [bc], a
    inc bc
    sbc a
    nop
    ld c, b
    dec d
    ld bc, $0c03
    inc c
    jr nc, jr_058_5b66

    pop bc
    rst $38
    db $76
    ld a, $f8
    ld [$e4fc], sp
    db $fc
    db $fc
    xor $ea
    cp $fa
    rst $38
    pop hl
    ld b, h
    rst $38
    ld bc, $1f18
    rst $20
    daa
    rst $00
    ld b, a
    call z, $9e4f
    sbc a
    or e
    cp a
    ld hl, sp-$01
    rst $08
    ld a, a
    db $e3
    rst $38
    inc e
    db $fc
    ld c, b
    ld hl, sp+$24
    or h
    ret c

    ret c

    cp l
    nop
    ld d, h
    ld bc, $c040
    or a
    push af
    inc hl
    add b
    ld [bc], a
    ret nz

    ret nz

    ld b, b
    inc hl
    ret nz

    cp b
    nop

jr_058_5b66:
    jp hl


    add hl, bc
    inc bc
    inc bc
    inc c
    inc c
    ld [$0708], sp
    inc b
    inc bc
    inc bc
    sub e
    nop
    ld h, h
    add hl, bc
    ld a, a
    ld [hl], c
    sbc a
    sub e
    rrca
    add hl, bc
    rra
    ld [$10ff], sp
    add e
    nop
    ret nc

    adc c
    nop
    add [hl]
    add [hl]
    nop
    ret nz

    dec b
    ld [hl], b
    rst $38
    db $fc
    ld [hl], a
    db $76
    rst $38
    jp nz, Jump_058_4f83

    rst $38
    nop
    add hl, bc
    ret nz

    ldh [$7f], a
    ccf
    ld hl, sp+$0f
    cp $07
    db $fd
    dec b
    ld b, e
    cp $02
    ld bc, $01ff
    add e
    ld bc, $0774
    ld h, b
    ld hl, sp+$00
    db $e4
    call nz, $3cfc
    inc a
    adc h
    rst $18
    ld b, $70
    sbc a
    sub e
    rrca
    ld [$081f], sp
    adc b
    nop
    ret nz

    ld b, $f8
    ld [hl], a
    db $76
    rst $38
    ld hl, sp-$01
    nop
    adc b
    adc a
    ld [bc], a
    nop
    rst $38
    db $fc
    ld b, e
    rst $38
    nop
    add [hl]
    ld bc, $0810
    inc b
    db $fc
    db $f4
    xor $ea
    cp $f2
    rst $38
    ld bc, $ecff
    dec [hl]
    ldh [$29], a
    inc bc
    inc bc
    inc e
    rra
    jr nc, @+$31

    dec hl
    scf
    inc e
    rra
    ld h, b
    ld a, a
    and b
    rst $18
    ret nc

    xor a
    ld l, h
    ld e, a
    ld [hl], c
    ld a, a
    daa
    ccf
    ld a, $3f
    ld d, a
    ld a, [hl]
    inc l
    ld a, a
    push de
    cp $aa
    db $fd
    reti


    cp $fa
    db $fd
    ld a, c
    ld a, [hl]
    ld [hl], d
    ld a, l
    ld sp, $733e
    add hl, bc
    ld bc, $0703
    inc b
    ld b, $09
    inc b
    dec bc
    jr jr_058_5c2f

    ld b, e
    db $10
    rra
    dec b
    ld a, [bc]
    rrca
    inc c
    rrca
    inc b
    rlca
    ld b, l
    ld [$470f], sp
    db $10
    rra

jr_058_5c28:
    dec de
    ldh [rIE], a
    jr nz, @+$01

    ldh [rIE], a

jr_058_5c2f:
    jr z, jr_058_5c28

    inc d
    db $eb
    ld l, b
    rst $10
    ld d, h
    db $eb
    xor b
    rst $10
    ret nc

    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    xor d
    ld d, l
    add l
    add e
    add e
    adc e
    add e
    sub e
    ld [hl], c
    nop
    ldh [$a4], a
    rrc e
    add hl, bc
    ei
    ld c, $ff
    scf
    ld hl, sp+$5f
    ldh [$2f], a
    ret nc

    ld d, a
    xor b
    and l
    or c
    ld [bc], a
    dec b
    ld a, [$e800]
    inc sp
    rst $38
    nop
    ld [hl], h
    dec c
    ld bc, $f301
    ld a, [c]
    rrca
    db $fc
    pop bc
    ld a, $e0
    rra
    add sp, $17
    ret nc

    cpl
    add e
    nop
    cp h
    db $f4
    ld hl, $00dd
    ld bc, $898a
    ld [$ff01], sp
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $df94
    dec bc
    jr nz, jr_058_5cf0

    ld a, b
    sbc b
    db $e4
    inc e
    jp nz, $813e

    ld a, a
    ld bc, $43ff
    ld [bc], a
    cp $06
    inc b
    db $fc
    ld [$14f8], sp
    db $fc
    inc d
    ld b, h
    db $fc
    inc b
    ld b, e
    ld b, $fa
    ld b, e
    ld c, $f2
    ld [bc], a
    inc c
    db $f4
    inc bc
    ld c, d
    rst $38
    nop
    add hl, de
    db $10
    rst $38
    inc c
    rst $38
    ld b, $ff
    add a
    ei
    ld c, e
    push af
    push hl
    ei
    or $ff
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ret nz

jr_058_5ccf:
    rst $38
    db $ec
    dec sp
    dec d
    ldh [$e0], a
    jr jr_058_5ccf

    inc b
    db $fc
    add [hl]
    ld a, [$f66a]
    inc d
    db $fc
    ld e, b
    xor b
    xor h
    ld d, h
    ld d, h
    xor h
    sbc b
    ld hl, sp-$18
    ld hl, sp+$43
    inc b
    db $fc
    ld b, l
    ld [bc], a
    cp $43

jr_058_5cf0:
    ld bc, $ffff
    db $ec
    ld [$0123], a
    ld b, h
    ld [bc], a
    inc bc
    ld bc, $0302
    ld b, e
    rlca
    dec b
    inc bc
    ld b, $05
    ld [bc], a
    inc bc
    push bc
    adc a
    inc b
    inc bc
    inc bc
    dec b
    rlca
    ld a, [bc]
    inc h
    rrca
    ld [hl+], a
    rra
    inc de
    ld e, $3f
    inc a
    ld l, e
    ld a, a
    ld d, l
    ld a, [hl]
    xor a
    db $fc
    rst $10
    db $fc
    rst $38
    cp $fd
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    ld a, a
    ld a, e
    ld b, e
    ld a, a
    ld a, [hl-]
    inc b
    ccf
    ld c, $0f
    ld [bc], a
    inc bc
    ld c, c
    inc b
    rlca
    ld b, a
    ld [$230f], sp
    rrca
    add hl, bc
    rlca
    rlca
    add hl, bc
    rrca
    db $10
    db $10
    ld de, $0e15
    ld c, $65
    rla
    rrca
    rra
    jr nz, jr_058_5dc7

    add b
    rst $38
    jp $9f3c


    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    db $db
    and l
    db $db
    ld h, [hl]
    rst $38
    rst $20
    rst $38
    nop
    ld b, e
    rst $28
    db $10
    rlca
    rst $38
    nop
    rst $38
    cp h
    db $dd
    ld [c], a
    ld l, a
    pop af
    ld [hl+], a
    rst $38
    ld [bc], a
    di
    rst $38
    rst $30
    ld [hl+], a
    rst $38
    add hl, de
    ld a, a
    rst $38
    rst $38
    ld a, h
    add e
    rst $38
    rlca
    rst $38
    jr @+$01

    jr nz, @+$01

    ld [hl], b
    rst $38
    db $fc
    rst $20
    rst $38
    ld a, e
    add hl, sp
    rst $18
    ld c, c
    cp $cf
    jr nc, @+$01

    ld bc, $ff43
    nop
    ld c, b
    rst $38
    ld bc, $0202
    rst $38
    ld [bc], a
    ld b, [hl]
    rst $38
    inc b
    nop
    db $f4
    inc h
    rst $38
    inc bc
    cpl
    ccf
    pop bc
    pop bc
    ld l, c
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_058_5df1

    add sp, $18
    ld a, [de]
    xor h
    call c, $12ee
    xor $92
    cp $02
    db $ec
    inc d
    ld hl, sp+$18
    ldh a, [rNR10]

jr_058_5dbd:
    ldh [rNR41], a
    ldh a, [rSVBK]
    db $fc
    db $fc
    or $fe
    xor $fe

jr_058_5dc7:
    rst $18
    rst $38
    rst $18
    ld b, [hl]
    rst $38
    cp a
    inc b
    dec d
    rst $38
    db $eb
    rst $38
    db $fd
    ld b, l
    ld a, a
    rst $38
    dec b
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld b, e
    rst $38
    cp [hl]
    ld bc, $fefe
    ld b, e
    cp $9e
    ld b, [hl]
    cp $1e
    ld c, c
    rra
    rst $38
    nop
    ccf
    inc h
    rst $38
    dec b

jr_058_5df1:
    adc [hl]
    adc [hl]
    ld b, $46
    ld hl, sp-$08
    db $ec
    ld [hl-], a
    daa
    add b
    jr z, jr_058_5dbd

    dec b
    add b
    ret nz

    add b
    add b
    nop
    add b
    db $ec
    sub a
    rst $38
    ld l, h
    ld bc, $0101
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld b, $05
    ld b, a
    inc b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $0101
    db $ec
    daa
    ld [bc], a
    ld bc, $0001
    add e
    cp a
    ld b, l
    inc b
    rlca
    ret nc

    push bc
    inc bc
    ld a, h
    ld a, h
    rst $38
    add e
    ld b, e
    rst $38
    nop
    dec bc
    adc a
    ld [hl], b
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    db $fc
    ld b, e
    rrca
    ld hl, sp+$05
    sbc a
    ldh a, [$7f]
    ld [hl], b
    rra
    db $10
    ld b, a
    ccf
    jr nz, jr_058_5e90

    rra
    db $10
    ld b, e
    rrca
    ld [$0745], sp
    inc b
    inc de
    rrca
    ld [$101f], sp
    rrca
    db $10
    ccf
    inc h
    ccf
    inc a
    ld l, a
    jp $0057


    xor e
    nop

jr_058_5e64:
    ld d, a
    nop
    xor a
    nop
    ld c, c
    rst $38
    nop
    nop
    rst $38
    or b
    nop
    inc a
    dec c
    jp $fa47


    jr c, jr_058_5ebb

    ret nz

    adc d
    nop
    ld d, l
    nop
    xor d
    nop
    rst $10
    nop
    add sp, $2e
    rst $38
    nop
    inc b
    add b
    rst $38
    ld b, b
    cp a
    ld b, b
    ld b, e
    rst $38
    nop
    ld [$08f7], sp
    xor d

jr_058_5e90:
    ld d, l
    push de
    ld a, [hl+]
    jp nz, $807d

    add l
    ldh [rDIV], a
    ld bc, $0603
    rlca
    ld [$1f43], sp
    db $10
    dec bc
    ccf
    jr nz, jr_058_5e64

    ldh [rIE], a
    jr nz, jr_058_5f28

    jr nz, @+$01

    db $10
    ld l, a
    db $10
    add sp, $3d
    rst $38
    nop
    rlca
    cp $01
    ld [hl], l
    adc d
    xor d
    ld d, l
    ld d, b
    xor a

jr_058_5ebb:
    ld h, e
    dec c
    ldh a, [$f0]
    db $fc
    inc c
    cp $02
    rst $38
    ld bc, $00ff
    ldh a, [rIF]
    ret nz

    ccf
    ld c, c
    add b
    ld a, a
    rlca
    pop bc
    ccf
    and $1e
    ld a, [$f21e]
    ld c, $4a
    rst $38
    ld bc, $0344
    cp $07
    db $fc
    rlca
    db $fd
    ld b, $ff
    ld [$30df], sp
    adc $01
    ld c, $04
    ld bc, $02fe
    db $f4
    inc c

jr_058_5eef:
    ld b, a
    db $fc
    inc b
    ld bc, $58a8
    ld b, e
    ld [$01f8], sp
    db $10
    ldh a, [$ad]
    nop
    ld b, b
    ld bc, $8080
    ld b, a
    ld b, b
    ret nz

    ld bc, $8080
    or l
    nop
    ld [hl+], a
    add e
    and c
    inc bc
    jr nz, jr_058_5eef

    ldh [rNR41], a
    ld c, c
    ldh a, [rNR10]
    ld bc, $20e0
    reti


    adc [hl]
    ld h, c
    rst $38
    db $ec
    daa
    rlca
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$1f43], sp

jr_058_5f28:
    db $10
    ld b, h
    ccf
    jr nz, jr_058_5f3b

    ld hl, $121e
    inc e
    inc d
    ld [$1008], sp
    db $10
    ld de, $2210
    jr nz, @+$23

jr_058_5f3b:
    jr nz, jr_058_5f80

    ld b, e
    ld b, b
    dec bc
    ld b, a
    ld b, b
    add a
    nop
    add a
    add b
    adc a
    add b
    rst $08
    add b
    rst $18
    sbc b
    ld b, l
    rst $38
    and b
    ld bc, $507f
    sbc a
    push de
    dec bc
    ld c, $0e
    inc a
    inc [hl]
    ld a, l
    ld c, b
    ld a, [$fd88]
    db $10
    rst $38
    db $10
    ld b, h
    rst $38
    jr nz, jr_058_5f67

    ld b, b
    rst $38

jr_058_5f67:
    ld b, b
    ld b, h
    rst $38
    add b
    dec b
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    add [hl]
    add e
    ld bc, $007f
    ld d, l
    rst $38
    nop
    nop
    rst $38
    ld a, b
    dec b
    rlca
    rlca

jr_058_5f80:
    jr c, jr_058_5fba

    ret nz

    ret nz

    ld h, c
    ld b, $07
    nop
    cpl
    nop
    ld e, a
    nop
    cp a
    add h
    pop bc
    inc bc
    db $fd
    ld [$08fa], sp
    add h
    add e
    ld [bc], a
    inc b
    cp $04
    add e
    add e
    ld [bc], a
    rst $38
    ld [bc], a
    cp $a6
    db $ed
    nop
    rst $38
    ldh a, [$30]
    rst $18
    inc b
    ldh a, [$f0]
    cp $0e
    ld a, a
    add l
    or a
    nop
    inc bc
    pop de
    nop
    or [hl]
    push bc
    db $eb
    dec d
    ld a, a
    nop
    cp a

jr_058_5fba:
    inc c
    ld d, e
    ld e, $a1
    ccf
    ld h, c
    ccf
    sub b
    sbc a
    ret nc

    sbc a
    add sp, $4f
    ld hl, sp+$2b
    ld sp, hl
    rra
    rst $38
    ld b, $cd
    and c
    cp l
    nop
    ld h, d
    ld bc, $60e0
    and e
    nop
    ld l, $0b
    db $fc
    call nz, $24fc
    cp $12
    cp $0a
    rst $38
    add hl, bc
    rst $38
    dec b
    xor d
    nop
    adc [hl]
    ld b, $01
    rst $38
    inc c
    di
    ld e, $e3
    ld a, $43
    pop hl
    ccf
    dec bc
    pop af
    sbc a
    di
    sub [hl]
    sub a
    sbc h
    rst $38
    sbc [hl]
    db $fd
    push hl
    db $fc
    inc b

Jump_058_6000:
    ld b, [hl]
    ld hl, sp+$08
    ld b, $48
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [rNR10]
    db $ec
    cpl
    dec h
    add b
    inc de
    ret nz

    ld b, b
    ldh [$60], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$88]
    ld hl, sp-$7c
    db $fc
    ld b, $fe
    adc a
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    ld bc, $fe43
    ld [bc], a
    inc bc
    db $fc
    add h
    ld a, b
    ld a, b
    ld l, l
    rst $38
    db $ec
    ld h, l
    inc b
    ld [bc], a
    ld bc, $0703
    rlca
    ld b, [hl]
    rrca
    ld b, $07
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0366
    ld bc, $0103
    ld bc, $0348
    rlca
    dec b

jr_058_604c:
    ld bc, $0303
    ld bc, $0100
    ld a, a
    rlca
    add b
    ld a, a
    and $f1
    rst $38
    rst $38
    add b
    ret nz

    and [hl]
    xor b
    dec b
    add b
    add b
    ret nz

    ret nc

    ldh [$f0], a
    ld b, e
    rst $38
    ld a, a
    dec e
    ccf
    ld a, a
    rst $38
    or $f9
    ret nc

    ldh [$e0], a
    ret nz

    add b
    add $c2
    adc e
    add $8f
    add b
    add $e0
    ret nz

    ret nc

    ldh [$f6], a
    ld sp, hl
    ld a, a
    rst $38
    ccf
    ld a, a
    cpl
    rra
    rrca
    ld a, b
    ld a, [bc]
    jr nz, jr_058_604c

    db $e3
    rst $30
    rst $38
    rst $38
    ccf
    ld a, a
    ld l, $1f
    inc c
    ld b, e
    ld e, $1c
    inc d
    inc a
    jr c, @+$7e

    ld [hl], b
    ld hl, sp-$20
    ldh a, [$c0]
    ldh [$a0], a
    ret nz

    ldh [$f0], a
    ldh a, [$f8]
    cp h
    ld a, b
    ld a, b
    inc a
    ld e, $3c
    ld b, e
    ld a, $1c
    and e
    add a
    ld [bc], a
    cp h
    ld a, b
    ldh a, [$84]
    sbc e
    nop
    ld b, b
    cp c
    nop
    sub e
    nop
    ldh [rSCX], a
    ldh [$f0], a
    inc bc
    ret nz

    ldh [rP1], a
    add b
    db $ec
    add hl, sp
    add l
    nop
    ld h, [hl]
    ld [bc], a
    rlca
    rrca
    ld b, $87
    nop
    ld_long $ff00, a
    add e
    nop
    or [hl]
    ld bc, $8040
    and l
    nop
    ret nz

    ld [hl+], a
    inc bc
    ld [$fff7], sp
    rst $38
    cp $ff
    ld e, [hl]
    ccf
    inc c
    ld e, $83
    nop
    jp nz, $8002

    ret nz

    nop
    or b
    nop
    sub c
    inc bc
    ld bc, $0303
    rlca
    adc d
    cp a
    ld a, [bc]
    nop
    add b
    ldh [$e0], a
    rst $38
    ld [hl], a
    pop af
    ld e, a
    ccf
    ld de, $8d0e
    nop
    jp nz, $0001

    ld b, $45
    ld b, $0f
    ld d, $3e
    rst $38
    cp $fe
    call c, Call_058_4cfe
    sbc [hl]
    ldh a, [rIE]
    rst $28
    rst $38
    db $d3
    rst $38
    xor c
    rst $30
    and c
    rst $38
    or e
    rst $38
    cp a
    rst $38
    rst $18
    jp $008b


    rst $38
    adc e
    nop
    db $e4
    inc b
    ldh a, [$f8]
    ld a, h
    ld hl, sp-$48
    ld c, b
    db $fc
    sbc $03
    cp b
    db $fc
    ld a, h
    ld hl, sp-$73
    ld bc, $ff32
    db $ec
    ld l, e
    dec bc
    ld bc, $0703
    inc b
    ld c, $08
    ld e, $10
    rra
    jr nz, jr_058_618e

    jr nz, jr_058_6195

    ld a, a
    ld b, b
    ld b, h
    add b
    rst $38
    ldh [rNR42], a
    cp a
    ret nz

    ld e, a
    ld h, b
    ld b, e
    ld a, h
    jr nz, jr_058_619f

    jr @+$21

    ld c, $0f
    db $10
    rra
    jr c, jr_058_618f

    ld a, $21
    rra
    db $10
    rra
    jr jr_058_61ae

    ld h, $3c
    ld hl, $101a
    dec c
    ld [$0f0e], sp
    ld [$430f], sp
    rrca
    ld [$070a], sp
    ld [$0406], sp
    dec b
    inc b
    ld b, $04
    ld bc, $0204
    ld b, e
    ld [bc], a
    ld bc, $0101

jr_058_618e:
    nop

jr_058_618f:
    adc $cc
    inc b
    rrca
    rra
    ld a, a

jr_058_6195:
    ldh [$c0], a
    ld l, b
    ld bc, $00c0
    ld c, a
    rst $38
    nop
    add l

jr_058_619f:
    add [hl]
    nop
    rst $38
    ld b, h
    rst $38
    nop
    add hl, bc
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    rst $38
    rst $38

jr_058_61ae:
    ret nz

    ccf
    add l
    sub h
    inc bc
    nop
    rst $38
    ret nz

    ccf
    ld b, e
    ldh [$1f], a
    inc de
    ld h, b
    rra
    ldh [$1f], a
    ld [hl], b
    rrca
    or b
    rrca
    ld [hl], b

jr_058_61c4:
    rrca
    cp b
    rlca
    ld a, b
    rlca
    cp b
    add a
    ld a, h
    ld b, e
    inc a
    inc hl
    adc b
    pop de
    dec bc
    ret nz

    ldh a, [$30]
    db $fc
    inc c
    ld a, $02
    rra
    ld bc, $001f
    ccf
    adc [hl]
    db $db
    ldh [$3b], a
    cp $01
    ret nz

    ccf
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, [$55ff]
    rst $38
    xor d
    ld a, a
    ld b, b
    cp a
    and e
    ld e, a
    ld a, h
    rst $38
    add b
    rst $38
    ld d, b
    xor a
    and e
    ld e, a
    ld a, $ff
    jp nz, $01ff

    rst $38
    dec bc
    push af
    dec d
    db $eb
    dec bc
    push af
    rla
    db $eb
    dec hl
    rst $10
    dec d
    rst $28
    dec l
    rst $10
    ld a, [de]
    rst $28
    ld [de], a
    rst $38
    ld d, $fd
    ccf
    ld hl, sp+$23
    db $fd
    ld b, a
    cp $71
    and e
    nop
    or [hl]
    ld [bc], a
    ret nz

    ld b, b
    add b
    ld [hl+], a
    and b
    dec c
    ldh [$f0], a
    ld [hl], b
    ldh a, [$f0]
    ld [hl], b
    and b
    ld [hl], b
    nop
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    inc hl
    add b
    ld [bc], a
    ret nz

    ret nz

    jr nz, jr_058_61c4

    adc e
    ld bc, $c040
    add l
    sub c
    ld bc, $8080
    ld d, c
    ld b, b
    ret nz

    add $92
    ld b, e
    ret nz

    ld b, b
    nop
    ret nz

    db $ec
    ld e, a
    rst $38
    ld a, l
    jr @+$03

    ld bc, $0203
    ld b, $04
    inc c
    ld [$1008], sp
    jr jr_058_6272

    db $10
    jr nz, jr_058_628d

    jr nz, jr_058_6297

    ld b, b
    ld a, d
    ld b, b
    ld [hl], l
    ld b, b
    ld a, [hl]
    ld b, b
    ld a, a
    ld c, d
    add b
    rst $38

jr_058_6272:
    ld de, $c0bf
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld a, [hl+]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    db $10
    rra
    ld [$020f], sp
    rlca
    ld bc, $ec01
    jr nz, jr_058_6290

    ld bc, $0607
    ld e, $18

jr_058_628d:
    jr c, jr_058_62ef

    and b

jr_058_6290:
    ret nz

    xor a
    xor d
    rlca
    ld bc, $0a00

jr_058_6297:
    nop
    ld d, l
    nop
    cp a
    nop
    ld d, c
    rst $38
    nop
    dec b
    cp $01
    ld d, l
    xor d
    xor d
    ld d, l
    add e
    adc d
    inc bc
    add b
    rst $38
    ld a, $7f
    add e
    jp hl


    ld bc, $0b0c
    ld b, e
    ld b, $05
    ld [hl], c
    inc b
    rrca
    rra
    rst $38
    ldh [$e0], a
    adc [hl]
    db $d3
    ld [$0015], sp
    cpl
    nop
    rla
    nop
    xor a
    nop
    ld a, a
    sub b
    db $db
    add hl, bc
    cp $01
    push af
    ld a, [bc]
    ld [$d415], a
    dec hl
    and b
    ld e, a
    add e
    adc [hl]
    inc b
    inc b
    rst $38
    jr @+$01

    ldh [rWX], a
    rst $38
    nop
    nop
    rst $38
    cp e
    rst $18
    ld [bc], a
    ld [bc], a
    nop
    dec d
    add e
    db $d3
    nop
    nop
    ld e, e
    rst $38
    nop

jr_058_62ef:
    and e
    db $dd
    nop
    ld bc, $a2ad
    sbc [hl]
    rst $18
    call nz, $8100
    ld [$3060], sp
    jr @+$0a

    inc b
    and d
    ld [bc], a
    push de
    ld bc, $0088
    ld hl, sp+$00
    rlca
    and h
    nop
    xor a
    nop
    ld [bc], a
    add l
    nop
    db $fc
    inc bc
    db $fd
    ld [bc], a

jr_058_6314:
    rst $38
    ld [bc], a
    xor e
    nop
    or $03
    xor e
    ld d, h
    ld d, l
    xor d
    push bc
    ld bc, $8b03
    db $eb
    inc bc
    ld bc, $00fe
    rst $38
    db $f4
    jr nz, jr_058_632b

jr_058_632b:
    ld d, l
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_058_6314

    ld c, $10
    ldh a, [$d0]
    ldh a, [$08]
    ld hl, sp+$08
    ldh a, [$0c]
    db $ec
    inc d
    db $fc
    sub h
    db $fc
    ld h, d
    ld b, e
    cp $02
    nop
    db $fc
    ld c, [hl]
    inc bc
    db $fd
    inc de
    ld a, h
    add e
    cp $02
    ld a, [hl]
    add d
    cp [hl]
    ld b, d
    ld a, h
    add d
    cp h
    ld b, h
    ld a, h
    add h
    cp b
    ld b, h
    ld a, b
    adc b
    ldh a, [$08]
    rst $38
    db $ec
    ld [hl], $22
    ld bc, $0101
    ld bc, $3bec
    dec bc
    inc bc
    inc bc
    inc b
    inc b
    dec [hl]
    inc [hl]
    ld c, a
    ld c, [hl]
    ld b, a
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    inc hl
    jr nz, jr_058_63bf

    rla
    db $10
    inc c
    rlca
    ld [$1817], sp
    rra
    inc de
    inc l
    inc l
    add sp, -$18
    ld h, b
    jr nz, jr_058_63cc

    ld b, e
    ld b, b
    ret nz

    ld b, $c0
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    inc hl
    jr z, jr_058_63a5

    jr jr_058_63b4

    ld [$0819], sp
    add hl, bc
    ld [bc], a
    ld b, $0f
    rrca
    ccf

jr_058_63a5:
    dec a
    ld b, e
    ld a, a
    ld a, b
    dec b
    ld a, $3d
    rrca
    rra
    ld bc, $bd03
    pop hl
    dec de
    and a

jr_058_63b4:
    scf
    ld hl, sp+$18
    db $e3
    ld h, b
    rst $38
    add c
    cp $c2
    db $fc
    inc [hl]

jr_058_63bf:
    add sp, $18
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $96
    ld b, b

jr_058_63cc:
    ld h, b
    jr nz, jr_058_63ef

    ld l, h
    inc de
    jr jr_058_63d3

jr_058_63d3:
    ld a, h
    nop
    call z, $8c00
    nop
    adc b
    nop
    ret c

    ld [bc], a
    ld [hl], b
    push af
    add b
    rst $38
    ld [hl], b
    rst $38
    rra
    ld a, a
    inc h
    rst $38
    ld bc, $3f1f
    ld [hl], a
    dec bc
    ld h, b
    ld h, b
    sbc h

jr_058_63ef:
    sbc h
    or $32
    and $e2
    adc a
    add c
    rrca
    ld bc, $1f43
    nop
    ld b, e
    ccf
    nop
    ld bc, $007f
    ld b, h
    rst $38
    nop
    ld [bc], a
    adc h
    ld [hl], e
    ld d, e
    adc e
    rst $18
    jr jr_058_6424

    jr @+$3e

    inc a
    daa
    ld h, $66
    ld h, [hl]
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    ld a, a
    ld a, $bf
    jr jr_058_6473

    inc bc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    ldh a, [$fc]

jr_058_6424:
    inc h
    rst $38
    ld a, e
    dec bc
    jr jr_058_6442

    ld h, h
    ld h, h
    sbc h
    add h
    ld a, h
    add h
    ld hl, sp-$78
    ld hl, sp+$48
    ld b, e
    ldh a, [rNR10]
    dec de
    ldh [rNR41], a
    ldh a, [$30]
    ret c

    ld c, b
    ld hl, sp-$78
    cp a
    rlca

jr_058_6442:
    ld e, a
    inc b
    cp a
    inc b
    ld e, a
    dec b

jr_058_6448:
    cp [hl]
    ld b, $5c
    inc b
    cp h
    inc b
    ld a, h
    inc b
    cp b
    ld [$0878], sp
    add l
    sbc a
    rlca
    ret nz

    ld b, b
    add b
    add b
    ldh a, [rSVBK]
    db $fc
    inc e
    ld b, e
    cp $0e

jr_058_6462:
    dec b
    db $fc
    inc e
    ldh [$f0], a
    nop
    add b
    db $f4
    add hl, sp
    nop
    ld bc, $25ec
    rst $38
    db $ec
    ld [hl], $0e

jr_058_6473:
    ld h, b
    jr c, jr_058_64ce

    inc e
    inc h
    rrca
    inc de
    rrca
    ld [$0407], sp
    rlca
    dec b
    inc bc
    inc bc
    ld b, h
    inc bc
    ld [bc], a
    inc b
    inc b
    inc bc
    inc b
    rlca
    inc b
    rst $00
    add c
    rlca
    rlca
    ld b, $0f
    add hl, bc
    ccf
    ld sp, $c2fe
    db $ec
    jr nc, @+$26

    ld bc, $0343
    ld [bc], a
    dec bc
    rrca
    inc b
    ccf
    db $10
    rst $38
    ret nz

    rst $08
    add b
    adc a
    nop
    sbc a
    nop
    ld d, [hl]
    rst $38
    nop
    ld [bc], a
    ret nz

    ccf
    jr nc, jr_058_6448

    jp $0201


    inc bc
    rst $00
    add c
    inc bc
    ld b, b
    nop
    ld h, b
    jr nz, @+$24

    ld h, b
    ld b, e
    jr nz, jr_058_6462

    inc bc
    and b
    and b
    ldh a, [$91]
    ld b, h
    pop af
    ld de, $1202
    di
    ld [de], a

jr_058_64ce:
    ld b, h
    rst $38
    inc c
    ld a, [bc]
    add hl, bc
    cp $12
    cp $62
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    jr jr_058_6522

    rst $38
    jr c, @+$14

    db $10
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld [$05ff], sp
    cp $02
    cp $1a
    ld l, l
    db $10
    jr jr_058_6510

    dec a
    ld h, l
    ld a, e
    adc d
    cp a
    call nz, Call_058_48f7
    rst $18
    jr nz, @+$01

    nop
    rst $38
    add b
    ccf
    ld b, [hl]
    ld b, b
    ld a, a
    ld [bc], a
    ccf
    ld b, b
    ld a, a
    ld b, l
    add b

jr_058_6510:
    rst $38
    and h
    nop
    cp e
    and e
    nop
    ld a, $a3
    rst $38
    xor l
    nop
    add a
    ld b, [hl]
    ret nz

    ld b, b
    ld [$f0c0], sp

jr_058_6522:
    jr nc, @+$01

    rrca
    rst $38
    ret nz

    cp a
    or b
    and l
    and l
    adc b
    nop
    call $0305
    inc c
    inc c
    ld hl, $5f30
    add d
    rst $00
    ld c, [hl]
    rst $38
    nop
    ld [bc], a
    ld bc, $02fe
    ld b, e
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    ld bc, $10f0
    and l
    nop
    ld a, $01
    ld b, b
    ld b, b
    ld a, e
    and a
    pop hl
    dec b
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    ld h, e

jr_058_6558:
    rlca
    rlca
    rrca
    inc sp
    ld [hl], c
    add [hl]
    add d
    ld a, $02
    add a
    push bc
    and h
    nop
    ld c, [hl]
    ld [bc], a
    ld b, b
    ret nz

    ld b, b
    jp Jump_058_6901


    db $ec
    inc sp
    dec bc
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp-$38
    db $fc
    db $f4
    cp $fe
    rst $38
    ld a, [hl]
    ld [$0201], sp
    ld [bc], a
    ld b, $04
    rrca
    ld [$0807], sp
    ld b, e
    rra
    db $10
    inc bc
    ld d, $1b
    rrca
    inc c
    ld b, e
    rrca
    ld [$1e01], sp
    ld de, $1d43
    ld [de], a
    ld bc, $101f
    ld b, e
    rrca
    ld [$0707], sp
    inc b
    inc bc
    inc bc
    add hl, de
    add hl, de
    daa
    daa
    ld b, e
    ld b, e
    ld b, d
    ld b, e
    inc hl
    ld [hl+], a
    ld bc, $5457
    ld b, l
    add a
    add h
    inc bc
    ld l, a
    ld l, b
    rra
    jr jr_058_65fd

    cpl
    jr z, jr_058_6558

    db $db
    rlca
    add hl, sp
    ld a, [hl]
    adc a
    add [hl]
    ccf
    ld bc, $007f
    ld c, c
    rst $38
    nop
    inc de
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$906f], sp
    cp a
    ld d, b
    cp a
    ld h, b
    cp a
    ld b, b
    rst $38
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    ld e, l
    rst $38
    nop
    ld a, c
    dec d
    ld [hl], b
    ldh a, [$fc]
    inc c
    cp $02
    ld a, l
    add e
    db $fc
    inc bc
    ld hl, sp+$07
    or $0e
    ld hl, sp+$18
    ldh [rNR41], a
    push de
    ld b, b
    ld [$5100], a
    rst $38
    nop

jr_058_65fd:
    ldh a, [$37]
    rst $18
    ld h, l
    dec b
    inc bc
    inc bc
    add a
    add h
    ld a, e
    db $fc
    ld b, e
    rrca
    nop
    ld [bc], a
    sbc a
    nop
    ld a, a
    sub b
    cp l
    ld b, e
    cp $01
    ld bc, $01fe
    ldh a, [$37]
    rst $18
    ld b, $1c
    inc a
    ld c, a
    jp $001f


jr_058_6621:
    ccf
    adc [hl]
    or c
    inc bc
    rst $20
    jr jr_058_6621

    ld b, $a3
    nop
    and b
    dec b
    sbc a
    ld h, b
    ld l, a
    sub b
    rst $28
    db $10
    and h
    push hl
    ld a, [bc]

jr_058_6636:
    add c
    cp $47
    rst $38
    jr c, @+$01

    ld bc, $07ff
    ld sp, hl
    add hl, bc
    ld b, l
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld bc, $04fc
    and e
    nop
    ld a, [hl-]
    db $f4
    ld hl, $2001
    ld bc, $20e0
    add a
    xor a
    ld bc, $04fc
    ld b, e
    cp $02
    add hl, de
    or $0a
    xor d
    ld d, [hl]
    ld d, l
    xor a
    add l
    rst $38
    adc c
    rst $38
    pop bc
    ld a, a
    jp nz, $827e

    cp $84
    db $fc
    ld [$50f8], sp
    ldh a, [$e0]
    ldh [rNR41], a
    jr nz, jr_058_669b

    db $10
    inc bc
    sub b
    sub b
    adc b
    adc b
    inc hl
    ld c, b
    inc bc
    ld [$1c08], sp
    inc h
    ld b, e
    ld a, $42
    rst $38
    db $ec
    ld c, d
    ld [bc], a
    rlca
    inc d
    jr jr_058_66d3

    jr z, jr_058_66c2

    inc bc
    ld c, h
    ld [hl], b
    ld b, a
    ld a, b
    ld b, e
    ld b, b
    ld a, a
    dec b

jr_058_669b:
    dec h
    ld a, [hl-]
    ld a, [hl+]
    dec [hl]
    dec e
    ld a, [de]
    db $ec
    ld c, d
    ld [bc], a
    add b
    ldh [$60], a
    ld b, e
    ld d, b
    jr nc, jr_058_66ae

    ret z

    jr c, jr_058_6636

jr_058_66ae:
    ld a, b
    ld b, e
    ld [$05f8], sp
    db $10
    ldh a, [$90]
    ld [hl], b
    ld h, b
    ldh [$63], a
    add hl, bc
    rlca
    rlca
    ld [$0c0d], sp
    ld c, $0e

jr_058_66c2:
    inc c
    rrca
    inc c
    ld b, e
    rlca
    dec b
    inc hl
    inc bc
    inc h
    ld bc, $0246
    inc bc
    dec b
    ld bc, $0102

jr_058_66d3:
    ld bc, $0100
    ld a, d
    inc h
    ld bc, $0001
    inc bc
    ld [hl+], a
    ld [bc], a
    add hl, bc
    ld b, $04
    rlca
    inc b
    rrca
    ld [$100c], sp
    jr jr_058_66f9

    ld b, e
    ccf
    ld hl, $6004
    ld b, c
    ld b, b
    add e
    add b
    and l
    and b
    rrca
    ld hl, sp-$08
    ld a, [hl]
    rra

jr_058_66f9:
    jr jr_058_6777

    nop
    or b
    nop
    ldh [$a0], a
    ret nz

    ldh a, [$80]
    ld a, a
    add b
    ld d, d
    rst $38
    nop
    nop
    add b
    jp $0093


    ld e, a
    ld c, d

Jump_058_670f:
    ld b, b
    ld c, a
    ld [bc], a
    rrca
    add b
    adc a
    ld b, h
    add b
    sbc a
    dec e
    rra
    nop
    rrca
    ldh a, [$3b]
    db $fc
    ld a, $ff
    scf
    rrca
    ld a, l
    inc bc
    ld [hl], $f9
    ld a, l
    rst $38
    rst $38
    rra
    rst $38
    rlca
    db $ed
    di
    ei
    db $fd
    cp l
    ld a, a
    rst $30
    rrca
    rst $38
    inc bc
    ld h, h
    rrca
    rra
    ldh a, [$f9]
    rst $38
    rlca
    ld a, $0f
    inc e
    ld d, $30
    dec h
    jr nz, jr_058_6769

    ldh [$03], a
    rst $38
    and a
    rst $18
    nop
    inc bc
    ld d, h
    rst $38
    nop
    inc b
    inc e
    db $e3
    inc hl
    ldh [rNR41], a
    and l
    nop
    call c, $8029
    or d
    nop
    db $e4
    jp nz, $c58f

    ld bc, $1925
    inc e
    ld a, $e3
    rst $30
    add a

jr_058_6769:
    cpl
    rrca
    ccf
    ld c, $1f
    ld [hl], $0e
    ld a, h
    add [hl]
    call c, $f8e4
    ld hl, sp+$78

jr_058_6777:
    db $fc
    db $fc
    inc [hl]
    db $fc
    ld h, h
    ld a, [$4482]
    cp $06
    ld b, e
    ld [bc], a
    cp $48
    ld bc, $07ff
    cp $02
    db $fc
    ld [bc], a
    ld hl, sp-$74
    ld h, b
    ld [hl], b
    db $ec
    daa
    rst $38
    ld [hl], l
    ld bc, $0101
    rst $08
    add b
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ld b, h
    ld b, $04
    ld b, h
    ld [$450f], sp
    rra
    db $10
    add hl, bc
    scf
    jr c, jr_058_6823

    ld c, b
    rst $20
    sbc b
    adc a
    ld hl, sp+$7f
    ld a, b
    ld b, e
    rlca
    inc b
    ld b, e
    inc bc
    ld [bc], a
    sub $b8
    ld bc, $0201
    call nz, $179b
    ccf
    inc a
    ld c, a
    ld b, h
    sbc a
    add d
    ld a, a
    add d
    cp $01
    rst $38
    nop
    rst $38
    add b
    cp $81
    ld a, a
    ld h, [hl]
    rra
    jr jr_058_6815

    jr nz, jr_058_6857

    ld b, b
    and e
    adc a
    ld bc, $008f
    ld b, e
    rlca
    nop
    ld b, e
    rrca
    nop
    ld bc, $001f
    ld d, e
    rst $38
    nop
    ld bc, $708f
    add l
    adc b
    rlca
    add b
    rst $38
    ld b, b
    ld a, a
    jr nc, @+$41

    dec bc
    rrca
    ld b, e
    rlca
    inc b
    ld bc, $0506
    ld h, e
    rlca
    jr c, jr_058_687a

    add [hl]
    add [hl]
    ld e, $01
    rst $38
    ld bc, $ff47
    nop
    nop
    cp $86
    adc c
    ld bc, $c03f
    add sp, $2d
    rst $38

jr_058_6815:
    nop
    ld bc, $01fe
    adc c
    adc h
    rlca
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ccf

jr_058_6823:
    rst $38
    ld l, c
    rlca
    jr jr_058_6864

    add $c2
    sbc a
    add c
    rst $38
    add c
    and [hl]
    db $dd
    ld [$fe01], sp
    ld bc, $3eda
    cp $06
    rst $38
    ld bc, $25f0
    reti


    ld [bc], a
    db $fd
    ld [bc], a
    ldh [$86], a
    nop
    sub h
    dec c
    inc e
    rst $38
    ld a, $e3
    ccf
    pop hl
    ccf
    ldh [rNR23], a
    rst $30
    ld [hl], b
    rst $38
    adc h
    adc a
    or [hl]
    nop
    inc b
    nop

jr_058_6857:
    add b
    xor e
    nop
    jr nz, @+$09

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$04

jr_058_6864:
    and h
    nop
    add d
    dec b
    ld [bc], a
    rst $38
    ld bc, $01ff
    cp $8a
    push af
    add hl, bc
    db $eb
    inc d
    push de
    dec hl
    xor e
    ld d, l
    ld d, [hl]
    xor d
    and d

jr_058_687a:
    ld e, [hl]
    ld b, e
    inc b
    db $fc
    ld bc, $f808
    rst $00
    xor d
    ld bc, $40c0
    ld b, e
    ld b, b
    ret nz

    db $ec
    ld [hl], $22
    add b
    ld a, [bc]
    ld [hl], b
    ld hl, sp+$74
    add h
    ld a, h
    add h
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    sbc d
    push bc
    rst $38
    ld l, e
    dec h
    ld bc, $034f
    ld [bc], a
    push bc
    sub b
    ld a, e
    adc d
    or a
    ld a, [bc]
    inc bc
    rrca
    inc c
    jr @+$12

    jr nc, jr_058_68cf

    ld [hl], b
    ld b, b
    ld a, b
    ld b, b
    ld b, l
    rst $38
    add b
    ld h, c
    ld b, $03
    inc bc
    inc c
    inc b
    jr nc, @+$12

    ld a, e
    add d
    adc a
    ld e, h
    rst $38
    nop
    ld b, h
    add b
    rst $38
    rlca
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    ccf
    jr z, jr_058_68ee

jr_058_68cf:
    db $10
    ld b, e
    ccf
    jr nz, jr_058_68d8

    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_058_68d8:
    rst $38
    rst $08
    sub c
    rlca
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    ld a, a
    ld [$437f], sp
    inc b
    rst $38
    db $10
    ld [bc], a
    rst $38
    ld [bc], a
    cp $02
    db $fc

jr_058_68ee:
    ld a, b
    inc e
    inc b
    ld a, $02
    cp $0a
    db $fc
    inc d
    ld hl, sp+$18
    ld c, l
    ldh [rNR41], a
    ld c, c
    ldh a, [rNR10]
    ld c, $f8

Jump_058_6901:
    ld [$0bfb], sp
    db $fc
    nop
    ldh a, [rNR41]
    ldh [$80], a
    ld [$f500], a
    nop
    cp $9b
    nop
    ld l, l
    ld [bc], a
    nop
    db $fc
    nop
    ld b, l
    ld hl, sp+$00
    ld b, $fc
    nop
    xor a
    nop
    ld d, a
    nop
    dec hl
    adc b
    nop
    dec a
    inc bc
    inc bc
    ld [bc], a
    rlca
    nop
    xor c
    db $d3
    ld c, l
    rra
    db $10
    ld c, $ff
    ld [hl], b
    sbc a
    db $10
    rra
    db $10
    ccf
    db $10
    ld e, a
    db $10
    cp a
    ld [$085f], sp
    cp a
    sbc h
    rst $18
    ld bc, $007f
    ld b, l
    ccf
    nop
    inc bc
    ld [hl], c
    nop
    ldh [rP1], a
    ld b, e
    ret nz

    nop
    ld [$070f], sp
    jr nc, jr_058_6983

    jp nz, $9540

    nop
    ld [$00be], a
    ld l, a
    and e
    nop
    adc d
    ld b, l
    cp $02
    ld b, e
    rst $38
    inc bc
    ld b, l
    rst $38
    ld [bc], a
    adc [hl]
    and l
    add a
    adc c
    ld b, e
    ld b, b
    rst $38
    inc b
    jr nz, @+$01

    jr nz, jr_058_69f2

    jr nz, jr_058_69b8

    rra
    db $10
    ld b, $80
    add b
    ld h, b
    ld h, b
    ldh a, [rNR10]
    ld a, b
    ld b, h
    ld [$01f8], sp

jr_058_6983:
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    xor c
    nop
    inc e
    cp c
    nop
    ld [hl+], a
    xor e
    nop
    ld c, $46
    ldh [rNR41], a
    inc b
    and b
    ldh [$60], a
    ldh a, [$30]
    add e
    nop
    ld [c], a
    xor e
    nop
    sbc b
    ld bc, $02fe
    rst $38
    ld a, c
    inc hl
    ld bc, $0243
    inc bc
    ld b, l
    inc b
    rlca
    ld c, e
    ld [$450f], sp
    inc b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    push de
    and d

jr_058_69b8:
    dec bc
    inc bc
    inc bc
    jr jr_058_69dc

    ld hl, $463f
    ld a, a
    adc b
    rst $38
    sub b
    rst $38
    ld l, a
    db $10
    rlca
    rlca
    add hl, de
    rra
    ld h, $3e
    ld c, b
    ld a, b
    sbc b
    ldh a, [rNR32]
    ldh a, [$1f]
    ldh a, [rIF]
    db $fc
    inc bc
    ld e, [hl]
    rst $38
    nop
    dec b

jr_058_69dc:
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_058_6a21

    ld b, e
    db $10
    rra
    ld b, a
    ld [$0d0f], sp
    jr nc, @+$41

    adc a
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$79
    db $fc

jr_058_69f2:
    inc bc
    ld a, [hl-]
    push bc
    ld d, h
    xor e
    adc c
    di
    ld de, $0c0c
    ld e, $10
    rst $28
    ld hl, sp+$07
    rst $38
    ldh [rIE], a
    jr @+$21

    inc b
    rlca
    inc c
    rlca
    inc a
    rlca
    and h
    rst $18
    add sp, $34
    rst $38
    nop
    add hl, bc
    ret nz

    rst $38
    rrca
    rst $38
    scf
    ld hl, sp+$43
    db $fc
    add c
    cp $a8
    rst $18
    ld c, $80

jr_058_6a21:
    jr nc, jr_058_6a43

    ld [$dc08], sp
    inc b
    db $e3
    rst $38
    ld b, $f9
    rra
    ldh [$3f], a
    ret nz

    ld b, l
    ld a, a
    add b
    ld b, e
    ccf
    ret nz

    dec bc
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld bc, $02fe
    db $fd
    ld bc, $f0fe

jr_058_6a43:
    inc hl
    db $db
    add l
    and l
    rlca
    add b
    rst $38
    ldh [$7f], a
    ret nc

    ccf
    adc b
    ld a, a
    or d
    nop
    ld [$c00b], sp
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    sbc b
    inc b
    adc h
    inc b
    call z, $0243
    cp $44
    ld bc, $07ff
    ld a, h
    add e
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    and l
    cp e
    ld [bc], a
    ld bc, $02ff
    or b
    nop
    sub l
    and l
    nop
    and h
    rrca
    xor b
    ld e, b
    ld d, h
    xor h
    and h
    ld e, h
    ld d, h
    xor h
    ld a, [$fe06]
    ld [bc], a
    ld a, a
    add c
    ld a, a
    add b
    db $ec
    daa
    daa
    add b
    add hl, bc
    ret nz

    ret nz

    or b
    ld hl, sp+$1c
    db $e4
    ld c, $f2
    ld a, [bc]
    or $43
    ld [bc], a
    cp $05
    inc b
    db $fc
    jr @-$06

    ld h, b
    ldh [$d9], a
    sbc d
    ld bc, $8080
    rst $38
    db $ec
    ld e, a
    inc d
    ld [bc], a
    ld bc, $0703
    rlca
    rrca
    rrca
    rra
    rra
    ld a, $7e
    inc a
    ld a, h
    ld a, $1e
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    ld c, b
    rlca
    rrca
    nop
    inc bc
    jp $029a


    inc bc
    nop
    ld bc, $017e
    inc c
    inc b
    ld b, e
    ld [de], a
    inc c
    ldh [$2f], a
    ld e, $0c
    ld a, $7c
    cp $fc
    cp $f0
    db $fc
    ret nz

    ldh [rP1], a
    add b
    ld e, $00
    ld e, [hl]
    ccf
    ld a, e
    rst $30
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

Call_058_6b00:
    rst $38
    rst $38
    ld [hl], a
    ei
    ld e, [hl]
    ccf
    ld e, $c4
    pop de
    ld bc, $0f03
    ld b, e
    rrca
    rra
    ld bc, $1f0c
    push bc
    cp e
    nop
    nop
    jp c, $00c9

    add b
    jp $08c4


    ldh [$e0], a
    ldh a, [$78]
    ldh a, [$f0]
    ld a, b
    inc a
    ld a, b
    ld b, e
    ld a, h
    jr c, jr_058_6b43

    inc a
    ld a, b
    ldh a, [$78]
    ld a, b
    db $fc
    db $fc
    cp $de
    rst $38
    adc a
    rst $18
    sbc a
    rrca
    ld a, $1f
    inc a
    ld a, [hl]
    ld hl, sp-$04
    ldh a, [$f8]
    ret nc

    ldh [$80], a

jr_058_6b43:
    ret nz

    db $ec
    ccf
    call c, $02e9
    nop
    ld bc, $8303
    nop
    ld h, h
    dec b
    ld e, $3f
    inc a
    ld a, $1e
    ccf
    sub b
    nop
    sbc d
    ld bc, $6c3e
    ld b, h
    cp $fc
    ld bc, $dc82
    add l
    nop
    cp d
    adc c
    nop
    ret nc

    ld bc, $0e10
    ld b, e
    rrca
    rra
    nop
    dec c
    ld b, e
    rra
    inc c
    ld bc, $0812
    adc b
    nop
    db $ed
    add a
    ld bc, $0720
    sbc [hl]
    ccf
    ld a, h
    cp $f8
    db $fc
    ldh [$f0], a
    adc a
    ld bc, $0e34
    pop hl
    rst $38
    sbc $ff
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
    jp $008b


    rst $38
    adc e
    nop
    call nc, $e004
    ldh a, [$f8]
    ldh a, [rSVBK]
    ld c, b
    ld hl, sp-$44
    ld [bc], a
    ld [hl], b
    ld hl, sp-$08
    adc [hl]
    ld bc, $ff21
    db $ec
    ld a, d
    ld bc, $0101
    ret z

    add c
    rla
    inc bc
    inc bc
    ld e, $1f
    ccf
    ld hl, $5c63
    ld a, h
    ld b, e
    ld a, a
    ld b, b
    ld b, a
    ld a, b
    ld a, c
    ld b, [hl]
    ld a, $21
    rra
    jr jr_058_6bdc

    rrca
    db $10
    rra
    ld b, e
    jr nz, jr_058_6c12

    rlca
    ld b, b
    ld h, a
    ld b, b
    ld b, a
    add b
    rst $00
    add b
    rst $08

jr_058_6bdc:
    ld b, l
    add b
    rst $38
    ld b, e
    ld b, b
    ld a, a
    rlca
    jr nz, jr_058_6c24

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    ld [hl], c
    ldh [$2c], a
    ld [$0418], sp
    inc l
    ld [hl+], a
    ld a, $11
    rra
    ld [$640f], sp
    rst $20
    inc e
    ld a, $00
    cp $c8
    rst $38
    jr z, jr_058_6c41

    jr jr_058_6c23

    ld [hl], b
    ld a, a
    sub b
    rst $38
    db $10
    rst $38
    or b
    rst $38
    ret z

    ld c, a
    add sp, $2f
    ld l, b
    xor a

jr_058_6c12:
    or b
    ld e, a
    ret nc

    ccf
    ld [hl], b
    sbc a
    and b
    ld e, a
    ret nz

    ld b, [hl]
    rst $38
    nop
    ld b, e
    ld bc, $01fe
    ld [bc], a

jr_058_6c23:
    db $fd

jr_058_6c24:
    ld b, h
    inc bc
    db $fc
    ld bc, $01fd
    ld c, d
    rst $38
    nop
    inc bc
    rlca
    rst $38
    ld hl, sp-$08
    ld [hl], b

jr_058_6c33:
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    dec b
    ld e, $1f
    ld [c], a
    rst $38
    ld [bc], a
    rra
    ld b, e
    ld [bc], a

jr_058_6c41:
    rrca
    ld c, $04
    rra
    nop
    rst $38
    inc a
    rst $38
    ld b, b
    rst $08
    ld b, b
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    ld b, $c6
    add c
    dec c
    ld c, [hl]
    rst $38

jr_058_6c57:
    jr nc, @+$01

    nop
    rst $38
    ccf
    rst $38
    ld [hl], b
    sub b
    ldh a, [rNR10]
    jr nc, jr_058_6c33

    ld b, e

jr_058_6c64:
    ldh [rNR41], a
    jp $0782


    ret nc

    ld [hl], b
    adc b
    ld hl, sp+$08
    ld hl, sp-$38
    ld hl, sp+$43
    db $10
    ldh a, [rSB]
    jr nz, jr_058_6c57

    or e
    nop
    cp d
    ld h, c
    ld bc, $8080
    ld b, l
    ld b, b

jr_058_6c80:
    ret nz

    dec c
    jr nz, jr_058_6c64

    jr nc, @-$0e

    jr z, jr_058_6c80

    inc h
    db $fc
    inc b
    db $fc
    ld c, $fe
    ld a, [bc]
    ld a, [$1645]
    or $04
    dec d
    rst $30
    dec b
    rst $30
    ld [$ff44], sp
    nop
    rlca
    ld [$10ff], sp
    rst $38
    db $ec
    rst $38
    inc bc
    inc bc
    db $ec
    ld d, c
    ld bc, $c0c0
    ld b, a
    jr nz, @-$1e

    inc bc
    ld b, b
    ret nz

    add b
    add b
    db $ec
    inc hl
    rst $38
    db $ec
    ld hl, $060b
    rrca
    ld e, $11
    rrca
    ld hl, $213f
    dec a
    ld [hl+], a
    ccf
    ld [hl+], a
    ld b, l
    rra
    ld [de], a
    inc bc
    dec c
    ld a, [bc]
    ld c, $09
    ld b, e
    rlca
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $7f01
    jp Jump_058_43a0


    inc b
    rlca
    nop
    rlca
    ld h, $0f
    nop
    ld b, $c3
    add a
    jr @+$08

    ld [$1008], sp
    db $10
    ld hl, $4220
    ld b, b
    ld b, l
    ld b, b
    adc d
    add b
    add l
    add b
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
    ld c, [hl]
    rst $38
    nop
    ld [bc], a
    add b
    rst $38
    add b
    ld b, e
    ld a, a
    ld b, b
    dec b

jr_058_6d07:
    ccf
    jr nz, jr_058_6d21

    add hl, de
    add hl, de
    ld d, $43
    inc e
    inc de
    rlca
    rrca
    ld [$0b05], sp
    inc bc
    rlca
    ld bc, $4301
    inc bc
    ld [bc], a
    ld bc, $0202
    ld b, e
    inc b

jr_058_6d21:
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_058_6d07

    ld h, b
    ldh [$c1], a
    pop bc
    ld [hl+], a
    add c
    dec c
    add e
    inc bc
    inc bc
    rrca
    rra
    rst $28
    db $e3
    dec b
    add e
    cpl
    nop
    ld d, a
    nop
    xor a
    add h
    add e

jr_058_6d3e:
    ld bc, $005f
    add sp, $27
    rst $38
    nop
    ld bc, $f78b
    ld b, l
    add a
    cp $05
    ld b, $ff
    dec b
    db $fd
    inc c
    ld [hl], h
    ld b, e
    ld a, $02
    inc de
    ld a, l
    inc bc
    ld a, c
    rlca
    nop
    rst $38
    jr jr_058_6d76

jr_058_6d5e:
    ld h, h
    ld a, h
    add h
    db $fc
    inc c
    db $fc
    jr c, jr_058_6d5e

    ldh a, [$f0]
    ldh [$e0], a
    inc hl
    ret nz

    inc bc
    ld h, b
    and b
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld b, e
    db $fc

jr_058_6d76:
    inc b
    dec b
    cp $02
    or $0a
    ld sp, hl
    rlca
    ld e, b
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    inc bc
    ld b, e
    db $fc
    inc b
    dec b
    ld hl, sp+$08
    ret nc

    jr nc, jr_058_6d3e

    ld d, b
    ld b, e
    ld hl, sp+$08
    ld b, e
    xor b
    ld e, b
    inc bc
    ld d, b
    or b
    ldh [$e0], a
    and a
    nop
    ld e, b
    db $f4
    ld hl, $3e00
    ld h, c
    dec b
    ldh a, [$f0]
    ld [$c408], sp
    inc b
    add l
    rst $00
    ld b, e
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    and e
    nop
    inc a
    db $ec
    add c
    rst $38
    db $ec
    ld h, l
    inc bc
    ld bc, $0300
    inc bc
    ld [hl+], a
    rlca
    dec bc
    rrca
    rrca
    rra
    ld a, $1f
    inc e
    ld a, $7e
    inc a
    jr c, @+$7e

    ld a, h
    ld c, h
    ld a, b
    ldh a, [rSB]
    ld a, h
    ld a, b
    and [hl]
    sub l
    inc b
    rra
    rrca
    rra
    rlca
    rrca
    jp $d9a8


    or c
    ldh [$34], a
    rla
    rrca
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    add sp, -$10
    and b
    ret nz

    nop
    add b
    dec bc
    rlca
    rrca
    rra
    rra
    ccf
    dec a
    ld a, [hl]
    db $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af
    ldh a, [$e2]
    pop af
    db $e3
    ldh [$f1], a
    ld a, b
    ldh a, [$f4]
    ld a, b
    dec a
    ld a, [hl]
    rra
    ccf
    rrca
    rra
    dec bc
    rlca
    ld bc, $a183
    jp $f3ed


    ld sp, hl
    ld [hl+], a
    rst $38
    inc bc
    ccf
    ld a, a
    rla
    rrca
    db $f4
    cpl
    rst $08
    ld bc, $c78f
    or e
    rst $08
    nop
    sub a
    cp h
    rst $08
    ld h, e
    db $f4
    add hl, sp
    nop
    ld h, [hl]
    ld [bc], a
    rlca
    inc bc
    rlca
    ld [hl+], a
    rrca
    rlca
    ld c, $1f
    inc e
    rra
    ld a, [de]
    dec a
    inc a
    dec sp
    ld b, e
    ld sp, $0d3f
    dec sp
    ccf
    dec de
    ccf
    dec e
    rra
    ld c, $1f
    rlca
    rrca
    inc bc
    rlca
    ld bc, $a403
    sbc a
    rlca
    ld hl, sp+$70
    ld hl, sp+$38
    db $fc
    ld e, b
    db $fc
    call c, $fc43
    db $ec
    xor h
    sbc a
    ld bc, $c0c0
    and e
    ld a, [$00c4]
    sbc b
    nop
    rlca
    ld c, b
    rlca
    rrca
    ld bc, $0307
    call nz, Call_058_468d
    inc bc
    ld bc, $8102
    and e
    pop bc
    adc h
    nop
    db $e4
    nop
    add b
    and e
    xor l
    ld [bc], a
    ld h, b
    ldh [$e0], a
    ld b, h
    ldh a, [$b0]
    inc hl
    ldh a, [rTAC]
    or b
    ldh a, [$e0]
    ldh a, [$60]
    ldh [$c0], a
    ldh [rLYC], a
    add b
    ret nz

    add l
    nop
    ret nz

    inc de
    inc a
    ld a, a
    ei
    ld a, a
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ei
    ld a, a
    inc a
    ld a, a
    add l
    nop
    jp c, $9fa9

    nop
    xor $44
    rst $38
    ld [hl], a
    nop
    rst $30
    xor [hl]
    sbc a
    rst $38
    db $ec
    ld h, a
    ld bc, $0304
    ld b, e
    rrca
    rlca
    ld bc, $0304
    ld [hl], b
    inc bc
    ld bc, $0103
    ld bc, $0348
    rlca
    dec b
    ld bc, $0303
    ld bc, $0100
    db $ec
    inc h
    ld b, $ff
    ei
    ld sp, hl
    rst $38
    rst $38
    ld b, $ff
    ld c, c
    ld b, $0f
    ldh [rNR41], a
    ld d, $0f
    ld e, a
    ccf
    ld a, a
    rst $38
    or $f9
    ret nc

    ldh [$e0], a
    ret nz

    add b
    add $c2
    adc e
    add $8f
    add b
    add $e0
    ret nz

    ret nc

    ldh [$f6], a
    ld sp, hl
    ld a, a
    rst $38
    ccf
    ld a, a
    cpl
    rra
    rrca
    ld a, h
    ld bc, $fc02
    ld b, e
    rst $38
    cp $01
    ld [bc], a
    db $fc
    xor d
    nop
    ld [hl], a
    inc c
    nop
    and b
    ret nz

    ldh [$f0], a
    ldh a, [$f8]
    cp h
    ld a, b
    ld a, b
    inc a
    ld e, $3c
    ld b, e
    ld a, $1c
    and e
    add a
    add hl, bc
    cp h
    ld a, b
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ldh [rLCDC], a
    add b
    db $ec
    ld h, e
    nop
    dec b
    sbc b
    nop
    ld l, c
    dec bc
    ld bc, $0b0f
    add hl, sp
    ccf
    rst $38
    cp $ff
    add $ff
    ld b, $cf
    sub d
    nop
    call nz, $c308
    pop bc
    add l
    jp $8087


    jp $c0e0


    ld h, c
    dec bc
    ld [bc], a
    inc c
    rrca
    ld a, $7f
    cp $f2
    db $fc
    ret nz

    ldh a, [rP1]
    ret nz

    ld h, c
    adc b
    ld bc, $0220
    sbc h
    ld a, $9c
    add e
    ld bc, $612c
    sub d
    nop
    ld l, b
    ld a, [bc]
    ret nz

    ldh [$f8], a
    ld hl, sp-$01
    dec a
    ld sp, hl
    rrca
    ccf
    rlca
    rrca
    add [hl]
    rst $08
    ld b, $cc
    call nz, $cc96
    sbc [hl]
    add b
    call z, $97cc
    ld a, [bc]
    ret nz

    ret nz

    ldh a, [$fa]
    db $fc
    ccf
    cp $0f
    ld a, $02
    inc c
    adc d
    ld bc, $0d16
    rst $38
    rst $28
    rst $38
    db $d3
    rst $38
    xor c
    rst $30
    and c
    rst $38
    or e
    rst $38
    cp a
    rst $38
    rst $18
    jp $008b


    rst $38
    adc e
    nop
    db $e4
    inc b
    ldh a, [$f8]
    ld a, h
    ld hl, sp-$48
    ld c, b
    db $fc
    sbc $03
    cp b
    db $fc
    ld a, h
    ld hl, sp-$73
    ld bc, $ff32
    ld h, a
    dec bc
    jr nc, jr_058_6ff5

    ld c, b
    ld c, b
    ld b, h
    ld b, h
    ld c, [hl]
    ld b, d
    ld e, a
    ld b, c
    ld e, a
    ld b, b
    ld b, l
    ccf
    jr nz, jr_058_7016

    rra
    db $10
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $6301
    dec h
    ld bc, $0349
    ld [bc], a
    ld c, a
    rlca
    inc b
    ld b, a
    rrca
    ld [$1f45], sp
    db $10
    ld b, e
    ccf
    jr nz, jr_058_7064

    and e
    cp a

jr_058_6ff5:
    and l
    xor c
    dec c
    ld hl, sp+$08
    ld sp, hl
    add hl, bc
    rst $38
    ld b, $fe
    ld [$00f8], sp
    ldh a, [rNR41]
    ldh a, [rLCDC]
    ld b, h
    ldh [$80], a
    inc b
    nop
    ldh [rP1], a
    di
    nop
    add sp, $2b
    rst $38
    nop
    ld l, e
    rlca
    inc bc

jr_058_7016:
    ld bc, $040c
    jr jr_058_702b

    jr jr_058_702d

    add [hl]
    nop
    inc d
    ld [$7f17], sp
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rra
    nop
    ld b, l

jr_058_702b:
    rrca
    nop

jr_058_702d:
    ld [$001f], sp
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $f4
    add hl, sp
    rst $18
    ld d, $c0
    ld [hl], b
    jr nc, jr_058_70b7

    ld [$04fc], sp
    cp $02
    cp $42
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld [hl], c
    rst $38
    dec c
    rst $38
    ld [bc], a
    rst $38
    inc c
    ld c, c
    rst $38
    nop
    nop
    rst $38
    ldh a, [$3c]
    rst $18
    ld a, [bc]
    ld bc, $0200
    ld [bc], a
    inc b
    inc b
    ld [$0800], sp

jr_058_7064:
    ld [$a413], sp
    push hl
    ld bc, $80ff
    ld c, d
    rst $38
    nop
    dec bc
    ld bc, $01ff
    cp $06
    cp $3a
    cp $02
    rst $38
    ld bc, $c2ff
    adc c
    ld d, [hl]
    rst $38
    nop
    nop
    inc bc
    call z, Call_058_4e01
    nop
    inc bc
    add l
    rst $18
    rlca
    jr jr_058_7094

    inc h
    inc h
    ld b, h
    ld b, h
    add d
    add d
    add e
    db $dd

jr_058_7094:
    dec b
    inc e
    inc b
    ld a, h
    inc b
    ld hl, sp+$08
    xor c
    nop
    ld a, [de]
    ld b, e
    ret nz

    ld b, b
    ld bc, $8080
    pop de
    nop
    ld [hl], e
    ld bc, $8080
    and l
    nop
    ld l, $ae
    nop
    ld [hl], $10
    and b
    ld hl, sp+$78
    cp $06
    di

jr_058_70b7:
    ld bc, $01c3
    rst $08
    ld bc, $02fe
    db $fc
    adc h
    ldh a, [rSVBK]
    rst $38
    db $ec
    ld d, b
    ld c, $01
    ld [bc], a
    ld b, $08
    jr jr_058_70ce

    jr nz, jr_058_70e3

jr_058_70ce:
    ld b, b
    ld l, e
    ld b, b
    rst $18
    add c
    cp [hl]
    add e

jr_058_70d5:
    ld a, b
    ld [de], a
    ld bc, $0e06
    inc de
    jr nc, jr_058_7139

    jp Jump_058_7f3e


    inc bc
    inc bc
    add hl, bc

jr_058_70e3:
    inc c
    ld d, $11
    rrca
    rrca
    nop
    ld bc, $0322
    nop
    rlca
    ld a, a
    rrca
    ld hl, sp-$08
    dec de
    rlca
    ld a, h
    rrca
    ldh a, [$3f]
    pop bc
    ld a, a
    xor d
    sub $54
    xor h
    xor c
    ld e, b
    ld [hl], e
    ld [de], a
    inc bc
    rlca

jr_058_7104:
    add hl, de
    jr c, jr_058_70d5

    pop bc
    ld [hl], e
    rrca
    adc h
    ld a, h
    ld sp, $cff0
    ret nz

    inc a
    inc bc
    ret nz

    ccf
    rra
    ld [hl+], a
    rst $38
    dec b
    xor e
    rst $38
    ld d, c
    ld sp, hl
    add c
    pop bc
    ld a, l
    inc h
    ld bc, $020b
    jp $23c2


    db $e4
    sbc a
    sbc b
    rrca
    ld [$062f], sp
    ld e, l
    ret nc

    jp z, $0c17

    inc e
    ld h, [hl]
    ld [c], a
    add hl, sp
    rlca
    adc $3f

jr_058_7139:
    ld h, c
    ldh [rTAC], a
    nop
    ccf
    nop
    db $fc
    inc bc
    jp $1f3f


    db $fd
    rst $28
    pop af
    rst $38
    add b
    ld b, a
    rst $38
    nop
    inc b
    rst $08
    add b
    add a
    add b
    rlca
    ld b, e
    add b
    inc bc
    ld c, b
    ld b, b
    ld b, e
    dec c

jr_058_7159:
    ld b, a
    ld b, b
    ld c, e
    ld b, b
    ld d, a
    ld b, b
    cpl
    add b
    rst $10
    add b
    xor a
    add b
    rst $18
    nop
    ld c, [hl]
    rst $38
    nop
    nop
    ret nz

    or l
    nop
    ld a, [$6f13]
    rst $38
    ld hl, sp-$10
    db $fc
    jr c, jr_058_7104

    ld a, [hl]
    cp $ff
    sub [hl]
    sub a
    rra
    dec e
    ld a, [bc]

jr_058_717f:
    dec c
    adc a
    adc b
    rst $38
    ld h, b
    add sp, $29
    rst $38
    nop
    ld b, l
    cp $01
    ld bc, $02fc
    ld b, e
    ld hl, sp+$04
    ld [hl], e
    dec bc
    ld [hl], b
    ld hl, sp+$0c
    inc b
    ld a, [hl-]
    ld b, $ec
    ld e, $90
    ld [hl], b
    jr nz, jr_058_717f

    ld b, e
    ld b, b
    ret nz

    inc hl
    add b
    dec bc
    ret nz

    ret nz

    jr nc, @-$0e

    xor b
    ld c, b
    sbc b
    ld l, b
    ret nc

    ld [hl], b
    ldh [$60], a
    dec l
    add b
    ld c, e
    ret nz

    ld b, b
    ld b, e
    jr nz, jr_058_7159

    ld bc, $9000
    inc hl
    stop
    nop
    ld h, $08
    rst $38
    db $ec
    inc hl
    ld [hl+], a
    ld bc, $0244
    inc bc
    nop
    ld bc, $85c3
    ld [bc], a
    ld bc, $0100
    sub l
    and d
    ld b, h
    inc bc
    ld [bc], a
    ld b, h
    inc b
    rlca
    dec bc
    inc b
    rlca
    ld [bc], a
    rlca
    rrca
    rra
    ccf
    ccf
    rrca
    rra
    ld bc, $ec03
    ld hl, $600b
    ldh [$38], a
    jr jr_058_7255

    ld e, $e1
    rra
    ldh a, [rIF]
    ld sp, hl
    ld b, $46
    rst $38
    nop
    dec b
    add b
    db $fc
    add b
    ld a, b
    add b
    ld [hl], b
    ld b, h
    ld b, b
    ld h, b
    ld a, [bc]
    ld b, b
    ld b, b
    ld b, c
    add b
    and d
    add b
    push de
    nop
    xor d
    nop
    rst $10
    add l
    sbc e
    ld [bc], a
    nop
    add e
    ld a, h
    add e
    add [hl]
    nop
    add a
    ld h, $ff
    db $ec
    inc hl
    rlca
    ld b, $0e
    inc de
    ld sp, $c7e1
    ld a, h
    add e
    rst $00
    cp e
    ld [bc], a
    dec bc

jr_058_722a:
    nop
    rla
    add h
    add e
    dec bc
    cpl
    nop
    ld d, a
    nop
    cpl

jr_058_7234:
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld c, c
    rst $38
    nop
    ld [$01fe], sp
    ldh a, [rIF]
    nop
    rst $38
    add b
    rst $38
    ldh a, [$f0]
    jr z, jr_058_722a

    ld h, c
    ld b, $03
    rlca
    add hl, bc
    jr jr_058_7234

    pop hl
    adc h
    ld b, h

jr_058_7255:
    inc bc
    db $fc
    ld bc, $01fe
    ld c, e
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld b, e
    ldh a, [rIF]
    ld b, l
    ldh [$1f], a
    ld [bc], a
    ret nz

    ccf
    add b
    add [hl]
    ld [$0205], a
    db $fd
    dec d
    ld [$d52a], a
    ldh a, [$27]
    rst $18
    ld bc, $0000
    and [hl]
    nop
    dec h
    ld [$20c0], sp
    ldh [$60], a
    and b
    db $fc
    inc e
    di
    rrca
    ld b, e
    db $e3
    inc e
    ld bc, $3ec1
    add e
    call $0101
    rst $38
    ld b, e
    ld [bc], a
    cp $43
    inc b
    db $fc
    nop
    ld [bc], a
    add [hl]
    ld a, [$280b]
    rst $10
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor e
    rst $38
    ld a, a
    cp $ff
    db $ec
    scf
    and l
    nop
    ld c, b
    rst $08
    add d
    add e
    ld bc, $0ba8
    ld h, b
    and b
    and b
    ld h, b
    ld h, b
    and b
    ldh [$60], a
    ldh a, [$f0]
    ret nz

    ldh [$61], a
    rst $38
    db $ec
    ld b, [hl]
    inc h
    ld bc, $0000
    ld h, $02
    nop
    nop
    inc h
    inc b
    dec b
    inc bc
    inc bc
    rlca
    ld b, $0c
    ld [$227d], sp
    ld bc, $0243
    inc bc
    ld b, e
    inc b
    rlca
    ld bc, $0708
    ld b, a
    ld [$ca0f], sp
    adc c
    and a
    and [hl]
    inc hl
    ld b, b
    daa
    jr nz, jr_058_7331

    jr nc, @+$12

    ld [bc], a
    ld [hl], b
    db $10
    ld h, b
    and h
    rst $18
    nop
    ldh a, [$b5]
    rst $18
    rrca
    inc bc
    inc b
    inc c
    db $10
    jr nc, jr_058_7341

    ld b, b
    add b
    add b
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor d
    and h
    add c
    ld bc, $00d5
    ld d, d
    rst $38
    nop
    ldh [rNR41], a
    add b
    ld a, a
    ld b, b
    scf
    jr c, jr_058_733a

    ld e, $1f
    ld de, $2013
    ld bc, $2120
    jr nz, jr_058_7338

    db $10
    rra
    db $10
    ccf
    jr c, @+$41

    ld b, [hl]
    ld c, [hl]
    ld b, c
    rlca
    add b
    add a

jr_058_7331:
    add b
    rst $08
    add b
    ld a, a
    ld b, b
    sub c
    nop

jr_058_7338:
    ld l, l
    rlca

jr_058_733a:
    ld [bc], a
    ld b, $f8
    ld hl, sp+$1e
    ld b, $0f

jr_058_7341:
    ld bc, $0745
    nop
    add hl, bc
    rrca
    nop
    rla
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld d, a
    rst $38
    nop
    add hl, bc
    db $fd
    inc bc
    rst $38
    rrca
    push af
    ei
    xor d
    ld d, l
    push de
    dec hl
    ld b, e
    cp $03
    rrca
    ld a, [$f303]
    inc bc
    call z, $f80c
    ld hl, sp+$54
    xor h
    xor [hl]
    ld d, [hl]
    reti


    dec l
    ld sp, hl
    rrca
    call z, Call_058_6b00
    ld [de], a
    inc e
    inc l
    ld h, h
    add h
    add h
    jr jr_058_7385

    jr z, jr_058_7387

    ld l, b
    ld [$90d0], sp
    ret nc

    ld d, b

jr_058_7385:
    ldh a, [$30]

jr_058_7387:
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    dec bc
    call c, $ec34
    inc h
    rst $38
    inc sp
    cp $33
    sbc $32
    cp $02
    ld b, e
    cp $03
    ld b, e
    db $fc
    rlca
    inc bc
    ld sp, hl
    rrca
    cp $0e
    and e
    nop
    sub d
    and a
    nop
    sbc d
    inc hl
    add b
    ld bc, $4040
    ld b, e
    ld b, b
    ret nz

    ld bc, $8080
    db $ec
    dec [hl]
    nop
    add b

jr_058_73b9:
    and [hl]
    nop
    ld a, [hl]
    ld bc, $c040
    ld hl, sp+$2b
    add [hl]
    rst $38
    ld a, [hl]
    inc hl
    ld bc, $0322
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld c, h
    rlca
    rrca
    ld bc, $0703
    call nz, $0491
    inc bc
    ld bc, $0001
    ld bc, $22ec
    jr jr_058_73e4

    ld c, $1f
    ld e, $3f
    ld a, $7f

jr_058_73e4:
    ld a, b
    cp $f0
    ld hl, sp-$20
    ldh a, [$c0]
    pop hl
    pop hl
    jp $c783


    rst $08
    add a
    rlca
    adc a
    ld c, $ff
    ld b, e
    rst $38
    cp $1b
    ld c, $ff
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
    db $fc
    inc a
    ld a, a
    rra
    ccf
    rrca
    rra
    rlca
    ld c, $01
    inc bc
    sub d
    call c, $0307
    inc bc
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    nop
    add $87
    ld bc, $7ebd
    inc hl
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    inc c
    jr jr_058_743a

    inc l
    jr jr_058_7471

    nop
    jr jr_058_73b9

    nop
    ld b, d

jr_058_743a:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    ld bc, $7ebd
    or l
    or l
    xor d
    nop
    dec d
    inc c
    nop
    add b
    ret nz

    ldh [rSVBK], a
    ldh a, [$f8]
    ld hl, sp-$04
    inc a
    cp $1e
    ccf
    db $f4
    inc h
    nop
    ld l, [hl]
    ld [$7c7f], sp
    cp $78
    db $fc
    ld [hl], b
    ld hl, sp+$00
    ld h, b
    ld h, e
    db $f4
    add hl, hl
    nop
    nop
    ld a, [hl+]
    ldh [$ba], a
    nop
    dec [hl]
    adc d
    nop
    ret nz

    inc b

jr_058_7471:
    ld h, b
    jr nz, @-$4e

    ld h, b
    ldh a, [$83]
    push hl
    adc e
    nop
    call nc, $9f88
    ld b, $8d
    add l
    ld d, $0c
    ld e, $00
    inc c
    ld h, c
    sub [hl]
    sbc a
    nop
    add c
    call nz, $0695
    ld b, $02
    dec bc
    ld b, $0f
    add c
    ld b, $98
    sbc a
    ld h, c
    ld b, $30
    db $10
    ld e, b
    or c
    ld a, b
    ld b, d
    or c
    add a
    sbc a
    adc l
    nop
    ld [hl], b
    ld b, e
    cp $ff
    adc l
    nop
    add d
    add l
    cp a
    ld a, [bc]
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    jp $c48c


    adc e
    db $f4
    dec h
    cp a
    rst $38
    db $ec
    dec h
    dec b
    ld bc, $0301
    ld b, $0f
    ld [$1045], sp
    rra
    ld b, e
    ld [$010f], sp
    add hl, bc
    ld c, $43
    dec b
    ld b, $4d
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rlca
    inc b
    push bc
    add c
    dec b
    ld bc, $0001
    ld bc, $0703
    ldh a, [rNR41]
    rst $10
    ld a, [bc]
    ld [bc], a
    ld c, $0c
    dec a
    ld [hl], b
    ld a, [de]
    ldh [$bd], a
    ld b, b
    ccf
    ret nz

    ld b, e
    ld a, a
    add b
    ld d, c
    rst $38
    nop
    inc de
    db $fd
    nop
    ld a, [$dd00]
    jr c, @+$50

    add $17
    ld bc, $00af
    ld e, a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei
    inc b
    ld b, h
    rst $38
    nop
    inc b
    ld bc, $c6ff
    ei
    db $fc
    ld a, b
    ld b, $03
    inc c
    inc e
    jr nz, @+$62

    add b
    add b
    ld h, c
    rlca
    add e
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    ld d, a
    rst $38
    nop
    ld [bc], a
    ld a, a
    nop
    cp a
    add $81
    add a
    db $fd
    nop
    ld a, a
    ld b, h
    add b
    rst $38
    dec b
    cp a
    ret nz

    rst $38
    inc a
    rst $38
    ld a, a
    cp b
    sbc $08
    ret nz

    ldh a, [$30]
    ld a, b
    ld [$3c44], sp
    rst $38
    inc bc
    xor h
    bit 0, e
    ld bc, $00fe
    ld bc, $00a3
    adc h
    add sp, $25
    rst $38
    nop
    ld bc, $c0bf
    db $ec
    ld hl, $c00d
    ret nz

    ldh [$38], a
    jp $873f


    ld a, b
    ld c, $f1
    dec e
    ld [c], a
    ld a, [bc]
    push af
    add l
    cp b
    add hl, bc
    ld [bc], a
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    sub l
    ld a, a
    db $eb
    rra
    ld b, l
    cp $02
    ld bc, $03fd
    push bc
    nop
    cp h

jr_058_758d:
    dec b
    ei
    dec b

jr_058_7590:
    ld a, [$fc06]
    inc b
    ld b, e
    ld hl, sp+$08
    rlca
    ldh [rNR10], a
    ldh a, [rNR10]
    or b
    ld a, b
    db $fc
    ld a, [hl]
    db $ec
    daa
    inc bc
    add b
    ret nz

    and b
    ld h, b
    ld b, l
    db $10
    ldh a, [rSCX]
    jr nz, jr_058_758d

    dec b
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    xor a
    nop
    ld [hl], b
    nop
    add b
    jp nc, $ffa4

    db $ec
    inc l
    inc hl
    ld bc, $0202
    inc bc
    ld [bc], a
    ld b, h
    rlca
    inc b
    ld b, l
    ld [$0f0f], sp
    db $10
    rrca
    db $10
    dec de
    db $10
    dec d
    db $10
    ld a, [de]
    db $10
    dec d
    jr nz, jr_058_75e1

    jr nz, @+$37

    jr nz, jr_058_7605

    add e
    add e
    rlca
    ld b, b
    dec d
    ld b, b

jr_058_75e1:
    dec hl
    ld b, b
    ld d, l
    ld b, b
    ld l, e
    ld b, h
    ld b, b
    ld a, a
    ld [hl], a
    inc de
    rra
    ccf
    jr z, jr_058_7646

    ld d, c
    ld l, a
    ld [hl+], a
    inc a
    inc d
    jr jr_058_7610

    db $10
    dec a
    jr nz, jr_058_7634

    ld b, b
    db $fd
    add b
    ld a, a
    add b
    ld e, e
    rst $38
    nop
    nop
    ld a, a
    add e

jr_058_7605:
    add e
    pop de
    add c
    db $76
    dec b
    rlca
    rlca
    rrca
    jr c, jr_058_7590

    ret nz

jr_058_7610:
    adc b
    nop
    dec h
    ld b, $00
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    add sp, $2f
    rst $38
    nop
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    or [hl]
    nop
    ld e, a
    ld a, [bc]
    ret nz

    ldh [$fc], a
    ld e, $ff
    ld bc, $037f
    ld a, $0c
    ccf
    adc b
    nop

jr_058_7634:
    xor a
    inc bc
    cp $01
    cp $01
    add sp, $31
    rst $38
    nop
    ld [hl], a
    add hl, bc
    ld c, $1f
    pop hl
    ldh [$03], a
    nop

jr_058_7646:
    rlca
    nop
    rra
    nop
    ld b, l
    rst $38
    ld bc, $1f0d
    ld [c], a
    rrca
    db $fc
    ccf
    ldh a, [$3e]
    pop bc
    rst $38
    ld b, $f1
    add hl, bc
    ld hl, sp+$04
    sub b
    jp hl


    ld c, $01
    rst $38
    ld bc, $0af6
    db $fc
    inc b
    cp $02
    rst $18
    ld hl, $10ef
    rst $38
    ld [$ff44], sp
    inc b
    inc b
    ld [bc], a
    cp $03
    rst $38
    ld [bc], a
    cp e
    nop
    inc de
    ld bc, $40c0
    inc hl
    add b
    add h
    adc c
    nop
    ld h, b
    and e
    nop
    inc a
    ld de, $08f8
    ld a, b
    add h
    cp h
    ld b, h
    cp b
    add $e6
    jp c, $c2fe

    cp $02
    cp l
    ld b, e
    db $e3
    ld e, l
    ld b, h
    rst $38
    ld b, c
    ld [bc], a
    add c
    pop af
    adc a
    ld b, e
    cp $02
    dec b
    db $fc
    add d
    ld a, h
    ld h, h
    jr @+$1a

    add l
    or a
    and e
    nop
    ld [hl-], a
    dec b
    ld h, b
    and b
    or b
    ld d, b
    ld d, b
    or b
    rst $38
    db $ec
    inc sp
    inc b
    ld de, $2a00
    nop
    dec d
    add h
    add e
    ldh [rNR42], a
    inc bc
    nop
    dec b
    nop
    inc bc
    nop
    rlca
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    dec hl
    nop
    ld d, a
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor a
    nop
    ld d, a
    nop
    xor l
    ld [bc], a
    ld a, d
    dec b
    cp a
    ld [bc], a
    db $ec
    cpl
    inc c
    ld d, b
    nop
    jr z, jr_058_76ec

jr_058_76ec:
    ld d, h
    nop
    cp d
    nop
    db $fd
    nop
    cp $00
    rst $38
    add d
    add e
    ld b, l
    rst $38
    nop
    nop
    cp $a4
    adc c
    inc de
    ld e, a
    ld bc, $0ab7
    db $fd
    rla
    xor $3f
    db $dd
    ld a, a
    ld a, [hl]
    cp a
    db $fc
    ld a, a
    cp h
    rst $38
    db $fc
    ld a, a
    cp [hl]
    rst $38
    db $ec
    cpl
    nop
    dec b
    call nz, Call_058_5300
    ld [$00af], sp
    ld e, a
    nop
    xor [hl]
    nop
    dec b
    nop
    xor d
    add h
    adc e
    inc c
    ld a, e
    inc b
    push de
    ld a, [hl+]
    pop hl
    rra
    ld l, d
    cp a
    rst $30
    ld e, a
    cp a
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    dec bc
    rrca
    rst $38
    rlca
    sbc a
    rlca
    rra
    rlca
    ccf
    rrca
    rst $38
    ccf
    rst $38
    db $ec
    ld sp, $8004
    nop
    ld d, h
    nop
    adc d
    and h
    nop
    ld d, c
    add d
    rst $18
    and h
    pop hl
    rlca
    db $fd
    nop
    ld d, [hl]
    xor b
    ei
    ld d, h
    xor c
    cp $a2
    db $db
    ld bc, $feff
    dec l
    rst $38
    nop
    rst $38
    db $ec
    scf
    ld b, $05
    nop
    adc d
    nop
    rla
    nop
    adc a
    add h
    nop
    rst $38
    nop
    ld d, a
    add h
    nop
    sub l
    ld [de], a
    ld e, d
    and b
    dec a
    ret nz

    ld c, a
    ldh a, [$b7]
    ld_long a, $ffdd
    xor d
    rst $38
    ld b, [hl]
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    ldh a, [$3a]
    rst $18
    and l
    nop
    ld b, [hl]
    inc b
    ldh [rP1], a
    ret nc

    nop
    and b
    add h
    add e
    nop
    ld b, h
    call nz, Call_058_5b01
    ld de, $00aa
    push de
    nop
    xor $00
    rst $18
    add b
    xor $40
    push af
    add b
    ld a, d
    ret nz

    or h
    ldh [$ea], a
    ret nc

    rst $38
    db $ec
    dec h
    ld [bc], a
    ld bc, $0201
    jp nc, $0f80

    ld bc, $0200
    ld [bc], a
    inc b
    inc b
    add hl, bc
    ld [$0012], sp
    dec d
    db $10
    ld a, [hl+]
    jr nz, jr_058_77fe

    jr nz, jr_058_7812

    ld a, a
    ld b, b
    ld c, c
    rst $38
    add b
    ld bc, $80ff
    sub c
    jp z, $0226

    ld [de], a
    inc bc
    ld bc, $5121
    ld d, c
    ld c, c
    ld c, c
    add hl, hl
    add hl, sp
    inc h
    inc a
    ld [de], a
    ld e, $08
    adc a
    ld l, b
    rst $28
    inc e
    ld a, a
    jp $1bb6


    jr nz, jr_058_782f

    db $10
    rra
    ld de, $271f
    ld a, $3f
    jr c, jr_058_7878

    ld h, b
    rst $38
    add b
    ld a, a
    nop

jr_058_77fe:
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$08
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld b, l
    ret nz

    ld b, b
    daa
    add b

jr_058_7812:
    or c
    nop
    ld a, [hl+]
    ld [bc], a
    nop
    inc b
    ld [$8a22], sp
    ld b, e
    ld c, d
    adc $43
    add hl, hl
    rst $28
    ld [bc], a
    add hl, de
    rst $38
    jr jr_058_7869

    rst $38
    sbc b
    ld c, b
    rst $38
    nop
    dec b
    inc bc
    rst $38
    rra

jr_058_782f:
    db $fd
    ld a, a
    pop hl
    ld c, [hl]
    rst $38
    nop
    ld b, $70
    rst $38
    ldh [$1f], a
    jr jr_058_7843

    rlca
    db $ec
    ld l, $01
    jr nz, jr_058_7882

    inc hl

jr_058_7843:
    ld d, b
    nop
    ld [hl], b
    ld b, e
    ret nc

    ldh a, [$e0]
    dec h
    ret z

    add sp, $48
    ret c

    ld [$08e8], sp
    ret c

    inc b

Call_058_7854:
    db $ec
    add [hl]
    sub $35
    ld a, a
    jr jr_058_787a

    sub h
    sub a
    adc d
    rst $08
    xor $73
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    inc bc

jr_058_7869:
    cp $06
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    db $ec
    ld b, c
    add hl, de
    inc bc
    inc bc

jr_058_7876:
    inc e
    rra

jr_058_7878:
    ldh [rIE], a

jr_058_787a:
    nop
    rst $38
    rra
    rst $38
    ld h, b
    ldh [$80], a
    add b

jr_058_7882:
    ret nz

    ret nz

    jr nc, jr_058_7876

    inc c
    db $fc
    add d
    cp $71
    ld a, a
    inc c
    rrca
    ld hl, sp+$43
    sbc b
    ld h, c
    dec bc
    ldh [$f0], a

jr_058_7895:
    inc c
    ld c, $01
    pop af
    ld b, $ff
    jr jr_058_7895

    ldh [$e0], a
    xor d
    nop
    ld h, [hl]
    ld [bc], a
    add b
    ld b, b
    ld b, b
    sbc c
    ld bc, $ff68
    ld a, a
    inc hl
    ld bc, $80d3
    dec bc
    inc bc
    inc bc
    rrca
    inc c
    jr jr_058_78c6

    jr nc, jr_058_78d8

    ld [hl], b
    ld b, b
    ld a, b
    ld b, b
    ld b, l
    rst $38
    add b
    ld b, e
    ld a, a
    ld b, b
    ld de, $203f
    rra

jr_058_78c6:
    db $10
    rrca
    inc c
    rra
    rra
    jr c, @+$3a

    inc e
    inc a
    rlca
    rrca
    inc bc
    inc bc
    rlca
    rlca
    ld [hl], c
    ld b, $07

jr_058_78d8:
    inc bc
    add hl, de
    ld [$2023], sp
    ld c, a
    add [hl]
    or l
    ld c, b
    rst $38
    nop
    ld [$ff80], sp
    add d
    rst $38
    add h
    ld a, a
    ld c, b
    ld a, a
    ld d, b
    ld b, e
    ccf
    jr nz, jr_058_78f1

jr_058_78f1:
    ld a, a
    add e
    sbc l
    ld [$ff60], sp
    db $10
    ld a, a
    ld [$047f], sp
    rst $38
    inc b
    ld b, [hl]
    rst $38
    ld [bc], a
    ld b, e
    inc b
    rst $38
    ld bc, $ff08
    jp $0093


    ret nz

    add h
    jp hl


    inc b
    sub b
    adc a
    adc h
    inc bc
    inc bc
    or e
    nop
    ld c, $03
    ldh [$60], a
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld b, l
    db $fc
    inc b
    dec b
    rst $38
    inc bc
    rst $38
    nop
    ld hl, sp+$20
    jp $0793


    ld a, [bc]
    nop
    ld d, l
    nop

jr_058_792f:
    xor d
    nop
    rst $30
    nop
    add sp, $26
    rst $38
    nop
    inc b
    jr @+$01

    inc a
    rst $38
    ld a, h
    sub [hl]
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    rrca
    nop
    rrca
    ld [$70ff], sp
    ld b, e
    rst $38
    db $10
    dec bc
    ld a, a
    db $10
    ccf
    db $10
    ld e, a
    ld [$08bf], sp
    ld e, a
    nop
    cp a
    nop
    add sp, $2d
    rst $38
    nop
    call nc, $03cc
    inc a
    adc a
    add e
    ccf
    sbc l
    or a
    ld bc, $ff01
    sbc a
    sbc a
    nop
    ld bc, $00a4
    or [hl]
    nop
    jr jr_058_792f

    nop
    ld [$c001], sp
    ld b, b
    ld b, e
    ldh [rNR41], a
    ld c, e
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    ld [bc], a
    add b
    add b
    add b
    and [hl]
    nop
    rra
    ld b, a
    ret nz

    ld b, b
    inc bc

jr_058_7992:
    ldh a, [$30]
    cp $0e
    ld b, h
    rst $38
    ld b, c
    inc b
    add c
    cp $c2
    cp h
    cp h
    xor e
    nop
    ld h, $ff
    db $ec
    ld d, a
    rlca
    ld bc, $0c03
    inc c
    jr nc, @+$41

    ld b, b
    ld a, a
    ld l, b
    inc hl
    ld bc, $0101
    ld bc, $96ce
    add d
    sub c
    ld hl, sp+$34
    xor b
    add hl, bc
    rrca
    ccf
    add b
    jp nz, $0500

    nop
    ld a, [bc]
    nop
    rst $10
    xor c
    ret


    rra
    jr nz, jr_058_7a2b

    adc b
    jr jr_058_7992

    inc b
    ld h, b
    add d
    pop hl
    add c
    jr nc, jr_058_7a15

    ld [hl], b
    ld b, b
    ld sp, $2a21
    inc hl
    sub $c3
    ld l, $03
    db $fc
    rlca
    db $fc
    add a
    ld [hl], h
    ld b, a
    ld b, h
    ld b, a
    inc a
    daa
    ld b, h
    ld a, $23
    ld [bc], a
    daa
    ld a, [de]
    dec de
    ldh a, [rNR44]
    di
    add hl, bc
    ldh [$f0], a
    rrca
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    adc a
    nop
    ld h, d
    ld [de], a
    rlca
    rlca
    jr jr_058_7a25

    ldh [$e7], a
    add b
    jp $8300


    nop
    ld b, l
    ld bc, $03ab
    ld d, [hl]
    inc bc
    cp $01

jr_058_7a15:
    ld d, d
    rst $38
    nop
    ld b, l
    add b
    rst $38
    ld b, l
    ld b, b
    ld a, a
    ld b, a
    jr nz, jr_058_7a60

    ld b, a
    db $10
    rra
    ld b, e

jr_058_7a25:
    jr nz, jr_058_7a66

    nop
    ld b, b
    xor c
    or l

jr_058_7a2b:
    add h
    nop
    push bc
    dec b
    ld b, b
    ld b, b
    jr nz, @+$22

    db $10
    db $10
    ld [hl+], a
    ld [$8814], sp
    add h
    add h
    sub d
    add d
    xor b
    add d
    rst $10
    add c
    xor [hl]
    add c
    cp a
    add b
    add a
    nop
    ret nz

    nop
    ld hl, sp+$00

jr_058_7a4b:
    rst $38
    add c

jr_058_7a4d:
    ld b, e
    ld a, a
    pop bc
    rrca
    ld a, [hl]
    jp $c356


    xor h
    add a
    ret c

    adc a
    sub b
    sbc a
    ld h, c
    cp $01
    cp $03

jr_058_7a60:
    rst $38
    and e
    rst $08
    ld bc, $e818

jr_058_7a66:
    ld b, l
    inc e
    db $e4
    ld b, l
    ld c, $f2
    ld b, h
    rlca
    ld sp, hl
    nop
    ld hl, sp+$4b
    inc bc
    db $fc
    ld b, e
    rlca
    ld sp, hl
    ld a, c
    inc hl
    add b
    dec bc
    ret nz

    ret nz

    and b
    ldh [$30], a
    ret nc

    jr c, jr_058_7a4b

    jr z, jr_058_7a4d

    inc l
    call nz, Call_058_7c43
    add h
    ld b, e
    ld hl, sp+$08
    dec b
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    sbc c
    or e
    ld [hl+], a
    add b
    xor d
    nop
    ld l, c
    rst $38
    db $ec
    inc h
    dec b
    ld bc, $0200
    nop
    inc b
    nop
    ld [hl+], a
    ld [$83a4], sp
    inc h
    jr nz, jr_058_7aac

jr_058_7aac:
    ld b, b
    ld h, c
    ld a, [hl+]
    ld b, b
    add hl, bc
    ld [hl], b
    ld [hl], b
    ld c, a
    ld a, a
    daa
    jr c, jr_058_7ae1

    jr nc, jr_058_7ae2

    jr nc, jr_058_7aff

    inc d
    jr jr_058_7ac7

    ld c, $08
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc

jr_058_7ac7:
    ld bc, $b7db
    ld a, [bc]
    ld bc, $0602
    ld [$0018], sp
    jr nz, jr_058_7ad3

jr_058_7ad3:
    ld b, b
    nop
    add b
    sub c
    xor $45
    ld bc, $4900
    inc bc
    nop
    dec b
    ccf
    ccf

jr_058_7ae1:
    ret nz

jr_058_7ae2:
    rst $38
    nop
    rst $38
    ld b, e
    add b
    ld a, a
    nop
    ret nz

    ld b, h
    ccf
    ld b, b
    inc b
    ret nz

    ccf
    add b
    ld a, a
    nop
    add e
    sub c
    nop
    rst $38
    ld [hl], l
    inc bc
    rlca
    ccf
    ret nz

    ret nz

    adc c
    nop

jr_058_7aff:
    rra
    add hl, bc
    dec d
    nop
    ld a, [hl+]
    nop
    dec [hl]
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld d, [hl]
    rst $38
    nop
    ld bc, $e01f
    ld e, c
    rst $38
    nop
    ld [hl], h
    inc b
    ld hl, sp-$08
    rlca
    rlca
    rra
    add h
    rst $08
    nop
    ld a, [hl]
    add e
    add e
    nop
    nop
    ld e, d
    rst $38
    nop
    dec b
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    ldh a, [$2e]
    rst $18
    push bc
    nop
    db $dd
    ld d, $b0
    jr nc, jr_058_7aff

    ld [$04a4], sp
    ld d, d
    ld [bc], a
    xor c
    ld bc, $0054
    xor d
    nop
    ld d, l
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    adc b
    add e
    inc b
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    ld e, d
    rst $38
    nop
    inc bc
    ld bc, $02ff
    cp $ec
    dec h
    dec e
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    and b
    jr nz, jr_058_7b77

    db $10
    sub b
    db $10
    ld c, b
    ld [$08a8], sp

jr_058_7b6e:
    ld c, b
    ld [$1cb4], sp
    ld h, h
    ld a, h
    adc h
    db $fc
    inc [hl]

jr_058_7b77:
    db $f4
    ld b, h
    call nz, $c404
    ld b, e
    inc h
    db $e4
    ld bc, $e420
    ld b, e
    jr z, @-$16

    ld bc, $e820
    ld b, e
    db $10
    ldh a, [rSCX]
    jr nz, jr_058_7b6e

    and a
    nop
    ld e, d
    rst $38
    db $ec
    ld e, h
    dec c
    ld bc, $0202
    ld h, b
    ld h, b
    adc b
    sbc b
    inc e
    add h
    ld e, $42
    ld c, a
    ld b, c
    rrca
    ld b, h
    jr nz, @+$29

    nop
    rlca
    ld b, [hl]
    db $10
    inc de
    nop
    inc bc
    ld b, [hl]
    ld [$0709], sp
    inc bc
    jr jr_058_7bb9

    jr z, @+$0d

    ld b, b
    ld d, a
    ld b, b

jr_058_7bb9:
    ld b, h
    rst $38
    add b
    dec b
    add e
    ld a, a
    ld a, h
    ld bc, $0102
    jp c, $23b5

    ld bc, $020c
    inc bc
    ld b, $06
    ld [$2118], sp
    jr nz, jr_058_7c11

    ld b, b
    add l
    add b
    ld a, [bc]
    xor h
    sbc e
    ld b, e
    ret nz

    ld b, b
    ld bc, $20e0
    ld b, e
    ldh a, [rNR10]
    dec b
    cp $0e
    ld hl, sp+$01
    cp $00
    ld c, d
    rst $38
    nop
    ld b, $07
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    ld b, e
    rst $38
    nop
    inc b
    ld a, a
    add b
    ld e, a
    ld h, b
    rla
    ld b, h
    db $10
    inc de
    ldh [rNR44], a
    rra
    jr c, jr_058_7c32

    ld h, $2f
    dec h
    cpl
    ld c, d
    ld a, a
    ld b, l
    ld a, a
    ld [hl], e
    ccf
    adc l
    cp a
    sub a
    rst $38

jr_058_7c11:
    bit 7, a
    dec e
    rst $38
    cpl
    rst $38
    rla
    rst $38
    xor e
    cp a
    dec [hl]
    ld a, a
    dec bc
    cp a
    inc c
    ld a, a

jr_058_7c21:
    jr nc, jr_058_7c21

    ld b, b
    ld [hl], a
    ld b, $f0
    ldh a, [rTMA]
    ld c, $80
    ld bc, $83fc
    db $db
    ld a, [bc]
    ld b, $d9

jr_058_7c32:
    ld sp, hl
    db $fc
    inc c
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    inc bc
    add l
    db $eb
    inc bc
    ld hl, sp+$18
    ldh [rNR41], a
    ld b, e

Call_058_7c43:
    ret nz

    ld b, b
    add hl, hl
    add b
    nop
    nop
    xor h
    nop
    sub e
    ld a, [bc]
    rlca
    rrca
    ld h, b
    ld [hl], b
    add c
    nop
    add d
    nop
    ld d, l
    nop
    xor d
    ld a, h
    dec d
    add b
    add b
    jr nz, jr_058_7cbe

    ldh [rNR10], a
    ld hl, sp+$08
    db $fc
    add h
    ld hl, sp-$3c
    ld a, [hl]
    jp nz, $a2fe

    cp $36
    ld hl, sp+$78
    add b
    add b
    db $ec
    ld hl, $800a
    add b
    cp b
    ld a, b
    ld e, e
    rlca
    cp a
    nop
    ld a, a
    nop
    rst $38

jr_058_7c7e:
    db $ec
    ld e, d
    dec b
    ld b, b
    ret nz

    ret nc

    jr nc, jr_058_7c7e

    ld [$ecff], sp
    dec l
    ld de, $0101
    rlca
    ld b, $03
    ld [$0801], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $41ec
    add hl, de
    ld bc, $0201
    inc bc
    ld b, $0d
    inc e
    inc de
    jr c, jr_058_7cd1

    ld [hl], b
    rst $08
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, l
    push hl
    ld a, [de]
    cp $41
    ld b, h
    rst $38
    ld b, b
    ld [bc], a

jr_058_7cbe:
    ret nz

    ld a, a
    ld b, b
    ld b, a
    ccf
    jr nz, @+$47

    ld e, $10
    ld bc, $080f
    ld b, e
    dec bc
    inc c
    dec b
    dec b
    ld b, $04

jr_058_7cd1:
    rlca
    ld [bc], a
    inc bc
    sub c
    rst $38
    add hl, de
    ld bc, $0003
    inc b
    add hl, bc
    ld [$080f], sp
    ld a, [de]
    dec d
    dec d
    ld a, [de]
    ld [hl+], a
    dec a
    ld b, c
    ld a, [hl]
    ld a, [$87fd]
    ld a, [hl]
    ld bc, $03ff

jr_058_7cee:
    db $fc
    dec b
    ld a, [$8383]
    dec bc
    dec bc
    db $f4
    rla
    add sp, $2b
    call nc, $a857
    xor a
    ld d, b
    ld e, a
    and b
    ld b, e
    rst $38
    nop
    ld bc, $03fc
    ld b, e
    ld hl, sp+$07
    ld bc, $07f9
    ld b, e
    db $fc
    inc bc

jr_058_7d0f:
    dec d
    ld e, [hl]
    ld bc, $022d
    ld d, $01
    cpl
    nop
    inc de
    nop
    ld c, $01
    add d
    ld [bc], a
    add c
    inc b
    jp nz, Jump_058_6000

    add b
    jr c, jr_058_7cee

    or e
    nop
    inc e
    ld b, h
    ret nz

    ld b, b
    ld b, l

jr_058_7d2d:
    jr nz, jr_058_7d0f

    ld b, e
    db $10
    ldh a, [$0e]
    jr nc, jr_058_7d2d

    ld c, b
    db $f4
    adc h
    db $ec
    sbc h
    sbc h
    db $fc
    sbc b
    sbc h
    ret nz

    ld b, h
    ld hl, sp+$38
    ld b, e
    ld hl, sp+$08

jr_058_7d45:
    ld b, l
    db $fc
    inc b
    ld b, $84
    ld a, h
    jr jr_058_7d45

    ld h, b
    ldh [$c0], a
    ld b, [hl]
    ret nz

    ld b, b
    dec d
    ret nz

    ld b, b
    ld h, b
    and b
    and b
    ld h, b
    ldh a, [rNR10]
    ld hl, sp+$78
    cp $86
    rst $38
    ld bc, $067f

jr_058_7d64:
    rst $28
    jr jr_058_7de6

    jr nz, jr_058_7db0

    ld b, b
    db $ec
    ld d, l
    add hl, bc
    add b
    add b
    ldh [rSVBK], a
    rst $38
    rrca
    ld hl, sp+$10
    pop de
    jr nz, jr_058_7d64

    ld e, d
    add h
    ld bc, $ff33
    ld [hl], a
    ld a, [bc]
    ld bc, $0200
    nop
    dec b
    nop
    inc b
    inc b
    dec b
    inc b
    inc b
    ld b, l
    inc b
    dec b
    nop
    nop
    ld b, l
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc hl
    inc b
    ld bc, $0008
    inc hl
    ld [$0d06], sp
    ld [$080a], sp
    dec c
    ld [$4406], sp
    inc b
    rlca
    push bc
    sbc e
    ld bc, $0101
    db $ec
    dec h

jr_058_7db0:
    inc d
    ldh [$e0], a
    cp [hl]
    ld e, $5f
    ld bc, $00bf
    ld a, a
    inc bc
    cp $04
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    add h
    rst $30
    ld bc, $0007
    ld b, e
    rrca
    nop
    ld b, e
    rra
    nop
    rlca
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld c, [hl]
    rst $38
    nop
    inc c
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_058_7e05

jr_058_7de6:
    db $10
    rrca
    inc c
    inc bc
    ld [bc], a
    sub l
    nop
    inc b
    inc d
    ld b, $02
    ld [$1308], sp
    db $10
    push af
    ret nz

    jp z, $1580

    nop
    ld a, [bc]
    nop
    dec d
    nop
    dec hl
    nop
    ld d, a
    nop
    ccf
    add d

jr_058_7e05:
    ret


    add sp, $31
    rst $38
    nop
    sub l
    nop
    ld h, h
    add hl, bc
    ld a, h
    inc e
    cp $02
    rst $38

jr_058_7e13:
    inc bc
    ld a, h
    inc c
    db $fc
    nop
    add sp, $3f
    rst $38
    nop
    or h
    rst $18
    ld a, [bc]
    inc bc
    add hl, sp
    jr c, jr_058_7de6

    ret nz

    rlca
    nop
    rra
    ld bc, $017f
    ld b, l
    rst $38
    inc bc
    ld c, b
    rst $38
    rlca
    ld [bc], a
    inc bc
    rst $38
    ld bc, $20e8
    rst $38
    nop
    and [hl]

jr_058_7e39:
    nop
    or e
    dec b
    cp $0e
    rst $38
    ld sp, $c0ff
    or [hl]
    nop
    ld [bc], a
    ld [hl+], a
    add b
    ld b, l
    ret nz

    ld b, b
    ld bc, $20e0
    ld c, d
    ldh [$a0], a
    ld [bc], a
    jr nz, jr_058_7e13

    ld b, b
    adc b
    sub l
    ld [bc], a
    jr nz, jr_058_7e39

    jr nz, jr_058_7ea0

    ldh a, [rNR10]
    inc b
    ld hl, sp+$18
    db $e4
    inc b
    ld a, [c]
    ld b, e
    ld [hl+], a
    cp $04
    ld [bc], a
    db $fc
    ld b, h
    ld hl, sp+$78
    xor e
    nop
    ld d, b
    add e
    jp $ecff


    dec hl
    dec b
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    db $ec
    ld c, c
    ld [$1f07], sp
    nop
    jr nz, @+$21

    jr jr_058_7e8a

    inc b
    inc bc
    ld [hl+], a
    ld [bc], a
    dec c

jr_058_7e8a:
    dec a
    dec a
    rst $00
    jp HeaderManufacturerCode


    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    ld c, $0d
    ldh a, [$38]
    push hl
    jr jr_058_7e9e

    ld [bc], a

jr_058_7e9e:
    ld b, $00

jr_058_7ea0:
    ld [$1001], sp
    rra
    jr nz, @+$41

    ld b, e
    ld a, [hl]
    ld a, l
    dec b
    ld b, $c6
    push bc
    rst $30
    inc [hl]
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    ld b, h
    rst $38
    ld bc, $0010
    rst $38
    add b
    rst $38
    add c
    ld a, a
    pop bc
    rst $38
    ld b, c
    ccf
    pop hl
    rst $18
    ldh a, [$2f]
    inc a
    dec de
    rra
    ld b, e
    jr nz, jr_058_7f0c

    ld b, e
    ld b, b
    ld a, a
    ld b, e
    add b
    rst $38
    ld [de], a
    ret nc

    rst $38
    ld l, d
    rst $38
    ld [hl], l
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    rlca
    rrca
    rlca
    rlca

jr_058_7ee2:
    inc a
    ld a, [hl]
    jr jr_058_7ee2

    sbc b
    ld [hl+], a
    ld hl, sp+$6d
    rla
    ldh [$e0], a
    db $10
    db $10
    ld a, b
    ld [$08f8], sp
    db $ec
    ld [hl], h
    call nc, $aaac
    ld d, [hl]
    ld d, [hl]
    xor d
    xor e
    ld d, a
    sub $2e
    ei
    ld [$10ff], sp
    and e
    pop hl
    xor d
    db $e3
    jp $02eb


    add h
    rst $38

jr_058_7f0c:
    sbc a
    inc hl
    rst $38
    inc b
    ccf
    rst $38
    rlca
    rst $38
    dec bc
    add h
    add e
    inc b
    rla
    rst $38
    xor a
    rst $38
    ld e, a
    ld h, $ff
    add hl, bc
    db $fc
    cp $1c
    inc a
    inc e
    ld e, $1e
    ld a, $3f
    ccf
    ld a, e
    dec b
    ld a, $3e

jr_058_7f2e:
    jp Jump_058_7fc1


    inc bc
    ld b, e
    db $fc
    inc b
    dec b
    cp $0e
    db $fd
    ld de, $20ff
    and [hl]
    nop

Jump_058_7f3e:
    db $e4
    inc b
    inc bc
    db $fc
    inc b
    ld hl, sp+$18
    call nz, $2f01
    inc hl
    add b
    inc hl
    ret nz

    jr z, jr_058_7f2e

    rlca
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    nop
    add b
    db $ec
    ld sp, $0183
    ld l, $04
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    ldh a, [$2e]
    cp e
    rst $38
    db $ec
    ld [hl], $01
    ld bc, $2800
    ld bc, $0000
    jp nz, $ec89

    dec a
    ld de, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    ld e, $3f
    inc a
    ld a, [hl]
    ld a, b
    ld a, h
    ld [hl], b
    ld hl, sp-$10
    ld hl, sp+$43
    ldh [$f0], a
    ld b, a
    pop bc
    ldh [rSCX], a
    ldh [$f0], a
    add hl, bc
    ldh a, [$f8]
    ld [hl], b
    ld hl, sp+$78
    ld a, h
    inc a
    ld a, [hl]
    ld e, $3f
    and e
    sbc e
    inc bc
    inc bc

jr_058_7f9e:
    rlca
    ld bc, $ec03
    daa
    ld [bc], a
    inc c
    ccf
    ld a, a
    ld [hl+], a
    rst $38
    jr jr_058_7f9e

    rst $38
    pop bc
    di
    ld bc, $01c3
    inc bc
    dec bc
    rlca
    rrca
    rra
    rra
    ccf
    jr nc, @+$81

    and $79
    ld l, a
    ldh a, [$ef]
    ldh a, [$e6]

Jump_058_7fc1:
    ld sp, hl
    ldh a, [$c3]
    sbc c
    jp $069e


    ld a, a
    rra
    ccf
    rrca
    rra
    dec bc
    rlca
    ld h, d
    ld [bc], a
    ret nz

    ret nz

    ldh a, [$83]
    sub l
    dec b
    ld a, c
    rst $38
    rrca
    ccf
    nop
    rlca
    db $f4
    inc hl
    nop
    ld h, c
    ld c, e
    add b
    ret nz

    and l
    rst $18
    inc b
    db $fc
    cp $7f
    cp $7e
    ld b, h
    rst $38
    ld a, a
    nop
    rst $38
    or c
    rst $18
    adc d
    or e
    db $f4
    ccf
    nop
    ld b, h
    db $ec
    add e
    rst $38
    nop
    nop
    nop
    nop
