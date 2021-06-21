; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

Call_008_4000:
Jump_008_4000:
    push hl
    dec a
    ld e, a
    ld d, $00
    ld hl, $4015
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    ret


    db $ed
    pop de
    rlca
    inc b
    xor $d1
    jr @+$0e

    rst $28
    pop de
    inc a
    rrca
    ld hl, $4047
    call $1057
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call $1d6e
    call $0fc8
    ld hl, $404c
    call $1057
    call Call_008_4051
    call $1c07
    pop bc
    ld hl, $cfcc
    ld [hl], b
    ld c, a
    ret


    ld d, $e6
    ld b, b
    ld [hl], c
    ld d, b
    ld d, $1c
    ld b, c
    ld [hl], c
    ld d, b

Call_008_4051:
    ld a, $01
    ld [$d1ea], a
    ld [$d1eb], a
    ld a, $08
    ld [$d1ec], a
    call $05a7
    call $3376
    ld [$d1ed], a
    ldh a, [$94]
    ld [$d1ee], a
    ldh a, [$96]
    ld [$d1ef], a

jr_008_4071:
    call Call_008_40ba
    jr nc, jr_008_4071

    and a
    ret nz

    call Call_008_411f
    ld hl, $40b0
    call $1057
    call $1dcf
    jr c, jr_008_40ad

    ld a, [$d1ed]
    ld [$d086], a
    ld a, [$d1ee]
    ld [$d087], a
    ld a, [$d1ef]
    ld [$d088], a
    xor a
    ld [$d089], a
    call $0677
    call Call_008_411f
    ld hl, $40b5
    call $1057
    call $0a80
    xor a
    ret


jr_008_40ad:
    ld a, $01
    ret


    ld d, $5b
    ld b, c
    ld [hl], c
    ld d, b
    ld d, $68
    ld b, c
    ld [hl], c
    ld d, b

Call_008_40ba:
jr_008_40ba:
    call $354b
    ld c, a
    push af
    call Call_008_411f
    pop af
    bit 0, a
    jr nz, jr_008_40dd

    bit 1, a
    jr nz, jr_008_40e1

    bit 6, a
    jr nz, jr_008_40e5

    bit 7, a
    jr nz, jr_008_40f6

    bit 5, a
    jr nz, jr_008_4108

    bit 4, a
    jr nz, jr_008_4112

    jr jr_008_40ba

jr_008_40dd:
    ld a, $00
    scf
    ret


jr_008_40e1:
    ld a, $01
    scf
    ret


jr_008_40e5:
    ld a, [$d1ea]
    call Call_008_4000
    ld a, [de]
    inc a
    ld [de], a
    cp b
    jr c, jr_008_411d

    ld a, $00
    ld [de], a
    jr jr_008_411d

jr_008_40f6:
    ld a, [$d1ea]
    call Call_008_4000
    ld a, [de]
    dec a
    ld [de], a
    cp $ff
    jr nz, jr_008_411d

    ld a, b
    dec a
    ld [de], a
    jr jr_008_411d

jr_008_4108:
    ld hl, $d1ea
    dec [hl]
    jr nz, jr_008_411d

    ld [hl], $03
    jr jr_008_411d

jr_008_4112:
    ld hl, $d1ea
    inc [hl]
    ld a, [hl]
    cp $04
    jr c, jr_008_411d

    ld [hl], $01

jr_008_411d:
    xor a
    ret


Call_008_411f:
    ld hl, $c504
    ld b, $05
    ld c, $12
    call $0fe8
    ld de, $c541
    ld a, [$d1ed]
    ld b, a
    ld a, $01
    ld hl, $5b05
    rst $08
    ld a, [$d1ee]
    ld b, a
    ld a, [$d1ef]
    ld c, a
    ld de, $c54b
    ld a, $77
    ld hl, $56bb
    rst $08
    ld a, [$d1eb]
    ld de, $7f7f
    call Call_008_4168
    ld a, [$d1ea]
    ld de, $61ee
    call Call_008_4168
    ld a, [$d1ea]
    ld [$d1eb], a
    ret


    ld a, [$d1ec]
    ld b, a
    call $1d05
    ret


Call_008_4168:
    push de
    call Call_008_4000
    ld a, [$d1ec]
    dec a
    ld b, a
    call $1d05
    pop de
    ld [hl], d
    ld bc, $0028
    add hl, bc
    ld [hl], e
    ret


    inc l
    ld d, b
    call z, Call_008_50de
    ld l, a
    jr nc, @+$01

    ld h, c
    nop
    rst $38
    ld h, c
    rrca
    rst $28
    db $10
    cp c
    ld b, [hl]
    rst $38
    nop
    sbc a
    ld h, b
    cp $01
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    xor d
    rst $00
    and l
    ldh [$36], a
    rst $38
    nop
    db $fc
    inc bc
    ld b, $fc
    jr jr_008_41b5

    ldh a, [rNR41]
    and b
    ld b, b
    pop bc
    ld b, b
    add [hl]
    ld b, c
    pop hl
    add a
    rra
    ldh [$d0], a
    ccf
    add sp, $18

jr_008_41b5:
    rst $00
    inc a
    db $eb
    ld e, $87
    ld a, [hl]
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    sbc $31
    ld c, c
    ccf
    and $1f
    sbc c
    ld a, a
    ld h, a
    cp $9e
    ld hl, sp+$79
    ldh a, [$d7]
    or b
    nop
    rst $38
    ld b, b
    add b
    nop
    ld c, e
    cp a
    nop
    nop
    rst $38
    add d
    add $4a
    rst $38
    nop
    xor a
    sbc a
    ld [bc], a
    xor d
    rst $38
    push de
    ld h, $ff
    inc bc
    rst $08
    ldh a, [$e0]
    rst $38
    add h
    db $fd
    ld bc, $ffff
    ld b, h
    rst $38
    cp a
    rst $00
    nop
    inc hl
    daa
    add b
    ld bc, $80ff
    add h
    sbc b
    inc bc
    cp $02
    inc bc
    ld [bc], a
    add h
    add d
    inc b
    cp $03
    cp $ff
    cp $85
    and l
    inc bc
    ld a, a
    cp a
    ld [hl], b
    cp a
    ld b, [hl]
    ld [hl], b
    cp h
    add e
    adc a
    ld bc, $fcfc
    ld b, e
    db $fd
    nop
    ld b, e
    inc bc
    nop
    ld bc, $0102
    jr nc, @+$01

    inc d
    inc a
    ld h, [hl]
    db $db
    sbc e
    and l
    and a
    sbc c
    sbc a
    jp $bd8f


    xor l
    add e
    cp c
    add a
    rst $38
    ret nz

    cp a
    and b
    sbc a
    sbc a
    ld b, a
    sbc a
    add b
    rlca
    rst $18
    ret nz

    rst $38
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld b, a
    ld sp, hl
    rlca
    ldh [rNR42], a
    ei
    rlca
    jp nz, $958f

    rst $08
    add e
    cp $47
    db $fc
    xor e
    db $fc
    ld e, l
    rst $38
    xor e
    ld a, [hl]
    push de
    ccf
    dec hl
    rst $38
    sub l
    ld a, a
    ld [$d63f], a
    ld a, a
    cp l
    ei
    reti


    ccf
    sub [hl]
    ld a, a
    rst $20
    ld hl, sp-$79
    nop
    ld l, b
    add a
    nop
    ld h, b
    adc e
    nop
    ld [hl], h
    ld [bc], a
    ld b, b
    add b
    nop
    pop de
    nop
    sub c
    xor [hl]
    sbc a
    ld [bc], a
    rst $38
    rst $38
    ldh a, [$8c]
    nop
    and e
    ld [bc], a
    cp a
    rst $38
    nop
    adc d
    nop
    or e
    ld [de], a
    cp a
    rst $38
    cp a
    add b
    sbc a
    add b
    rst $38
    rst $38
    rst $18
    cp a
    ldh [$9f], a
    ldh a, [$8f]
    rst $38
    rst $38
    ret nz

    ccf
    cp $86
    nop
    reti


    ld b, e
    ld [bc], a
    rst $38
    nop
    cp $c3
    xor c
    dec b
    ld a, a
    inc a
    rst $38
    db $fc
    ld a, a
    cp h
    ld c, b
    ld a, a
    cp a
    nop
    rst $38
    jp Jump_008_4000


    add e
    nop
    push af
    ldh [rWY], a
    db $fc
    xor e
    db $fc
    ld d, l
    db $fc
    cp $fd
    jp hl


    rst $10
    ld h, c
    cp a
    or l
    ld e, e
    ld [hl], c
    sbc a
    push af
    dec sp
    pop af
    rst $18
    jp nc, $9d3f

    ld a, [hl]
    jp hl


    sub a
    and c
    sbc a
    push bc
    cp e
    pop bc
    cp a
    push de
    xor e
    sub c
    rst $28
    ld b, d
    rst $38
    cp h
    ld a, a
    xor e
    rst $38
    ld a, [hl]
    or [hl]
    ld a, [$71ce]
    xor a
    call nc, Call_008_62bf
    cp e
    ldh [rIE], a
    sbc h
    sbc [hl]
    xor d
    rst $38
    ld a, a
    ld l, l
    ld d, [hl]
    ld a, e
    adc a
    push af
    ld a, [hl+]
    db $fd

Jump_008_4300:
    ld b, a
    db $dd
    ld b, $ff
    cp c
    ld a, c
    rst $18
    jr nc, @+$4f

    dec sp
    adc e
    nop
    ld h, h
    rrca
    ld [$91ff], sp
    cp $e0
    rst $38
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    sbc a
    ld a, a
    ld l, a
    sbc a
    add hl, de
    rst $28
    adc b
    ld bc, $0020
    adc a
    ld b, e
    sbc b
    adc b
    ld bc, $cfdf
    adc b
    ld bc, $0030
    rst $30
    ld b, e
    add hl, de
    rla
    rlca
    ei
    rst $30
    ld a, a
    ld a, a
    call z, $91cf
    sbc [hl]
    ld b, e
    and d
    cp h
    dec b
    pop bc
    cp $c0
    rst $38
    ldh [rIE], a
    xor a
    adc a
    nop
    add b
    ld b, [hl]
    add b
    sbc a
    add hl, bc
    sub b
    adc a
    sub a
    adc b
    sub h
    res 2, a
    cp b
    ld bc, $4503
    ld sp, hl
    rlca
    ld c, $09
    rst $20
    jp hl


    rlca
    dec hl
    rst $00
    db $ed
    rrca
    rst $18
    ldh a, [$d0]
    rst $38
    push de
    rst $38
    jp c, $ff48

    rst $18
    nop
    add b
    ld c, [hl]
    rst $38
    cp a
    adc a
    nop
    rrca
    ld [bc], a
    rra
    ldh a, [$d0]
    jp $02af


    ldh a, [$d9]
    or $43

Jump_008_437f:
    rst $18
    ldh a, [rSB]
    sbc $f1
    cpl
    rst $38
    ldh [rNR41], a
    pop de
    cp $70
    cp a
    or d
    ld e, h
    ld [hl], c
    sbc [hl]
    pop af
    ld a, $f1
    sbc $d1
    ld a, $91
    ld a, [hl]
    xor e
    sbc e
    call nc, $337c
    rst $38
    ld d, b
    ld hl, sp-$28
    cp b
    db $ec
    cp h
    db $e3
    xor e
    db $fc
    sbc a
    db $d3
    xor [hl]
    adc a
    adc a
    ld [bc], a
    ld d, b
    add a
    add a
    add a
    sub a

Jump_008_43b2:
    adc c
    ld bc, $0522
    rst $18
    ld b, b
    rst $38
    jr nz, @+$01

    rra
    adc c
    ld bc, $1532
    ld a, [$fd07]
    ld b, $fb
    db $fc
    reti


    rst $18
    adc $ce
    ld [c], a
    ld [c], a
    or c
    or c
    cp h
    cp h
    cp a
    cp a
    sbc a
    sbc a
    add b
    add b
    xor a
    adc a
    rlca
    sub l
    jp z, $b897

    sub h
    adc e
    sub a
    adc b
    jp $a802


    inc bc
    ld e, a
    ret nz

    ccf
    rst $38
    add e
    ld [bc], a
    cp h
    inc b
    xor c
    ld b, a
    jp hl


    rlca
    add hl, bc
    add h
    pop bc
    nop
    db $fc
    add sp, $20
    rst $38
    cp a
    cpl
    rst $38
    nop
    rst $18
    adc [hl]
    ld [bc], a
    pop af
    ldh [$2a], a
    db $eb
    sub a
    and [hl]
    sbc l
    ret


    cp d
    jp z, $d9b9

    xor h
    sbc b
    db $eb
    ld c, d
    ld hl, sp-$45
    ld a, b
    rst $38
    dec bc
    ld c, $fd
    add hl, bc
    ld a, [bc]
    ld a, [$3909]
    call z, $0bf8
    ld a, [$fb08]
    ld [$ff3f], sp
    ld l, h
    call c, $b090
    xor d
    and b
    push af
    ret nz

    rst $38
    ld b, e
    ret nz

    cp a
    nop
    ret z

    and e
    adc a
    dec b
    dec bc
    dec c
    or a
    dec b
    ld a, e
    rlca
    and l
    adc a
    ldh [$27], a
    rst $38
    ld bc, $fe02
    dec b
    dec b
    db $ed
    dec d
    cp l
    ld b, l
    xor $1c
    rst $38
    dec a
    rst $30
    ld a, l
    rst $38
    add b
    ret nz

    ld a, a
    ldh [$a0], a
    rst $38
    xor h
    di
    jp nc, $ecef

    ld l, a
    ld l, b
    xor [hl]
    xor l
    rra
    rrca
    rra
    inc bc
    inc e
    inc bc
    ld e, $01
    add a
    add e
    xor a
    adc a
    rrca
    rst $38
    rst $38
    add b
    nop
    add a
    nop
    ld [$70f0], sp
    add b
    ld d, h
    and h
    ld [hl], c
    add b
    ld a, a
    adc b
    and e
    adc a
    rla
    add c
    nop
    ld b, h
    ld a, e
    ld l, d
    dec [hl]
    xor $b1
    and d
    ld [hl], c
    ld h, [hl]
    pop hl
    rst $38
    inc bc
    inc c
    db $fc
    db $10
    db $10
    ld [$f520], a
    ld b, b
    rst $38
    ld b, b
    and e
    rst $28
    and l
    adc a
    inc bc
    or a
    inc b
    ld a, e
    ld b, $a5
    adc a
    add hl, de
    db $f4
    ld c, a
    inc sp
    rst $38
    ld e, $0f
    ld sp, hl
    ccf
    db $fc
    ld c, c
    rst $18
    add h
    sbc $83
    rst $28
    pop bc
    add b
    rst $38
    add d
    db $fd
    and d
    db $dd
    and b
    rst $18
    add b
    rst $38
    ld b, e
    add h
    ei
    nop
    add b
    ld d, b
    rst $38
    nop
    ld bc, $ff1f
    ld b, e
    ccf
    rst $18
    ld b, e
    rra
    rst $38
    ld b, e
    ld e, a
    cp a
    rlca
    rra
    rst $38
    rst $08
    sbc a
    rst $10
    xor b
    sub a
    ret z

    ld c, c
    rst $10
    adc b
    ld [bc], a
    ei
    rst $38
    rst $28
    ld c, h
    rlca
    db $eb
    add hl, bc
    and a
    sbc b
    ret z

    cp a
    sbc a
    rst $38
    and b
    rst $38
    and a
    ld hl, sp+$43
    xor b
    rst $30
    inc bc
    rst $38
    rst $38
    push hl
    dec de
    xor b
    adc a
    ld bc, $15ff
    ld [hl+], a
    rst $38
    rra
    ld l, a
    db $fc
    rst $10
    db $fd
    xor l
    rst $38
    call c, Call_008_7dff
    rst $38
    rst $18
    ld a, a
    db $fd
    ccf
    rst $28
    rra
    call $fece
    ld l, a
    rst $38
    xor [hl]
    rst $38
    adc $7d
    xor $bf
    db $ec
    ei
    db $fc
    xor $f1
    add e
    inc b
    ld l, h
    inc bc
    inc c
    di
    ld [bc], a
    db $fd
    add l
    db $fd
    ld bc, $ff54
    xor a
    adc a
    dec bc
    inc b
    rst $00
    inc hl
    jp $b14e


    ld [hl], l
    adc a
    ccf
    ret nz

    ld h, a
    sub e
    add e
    ld [bc], a
    ldh [$0b], a
    sbc $e5
    jp z, $fefd

    pop af
    call z, Call_008_76f3
    ld sp, hl
    cp d
    call $8f82
    and h
    inc bc
    ld [hl], e
    dec bc
    ld e, a
    ld h, b
    rst $08
    ld [hl], b
    and a
    ld a, e
    push af
    inc e
    db $fd
    ei

jr_008_455c:
    sbc c
    adc a
    xor d
    adc a
    rra
    ld a, b
    sbc a
    rst $38
    sub c
    rst $38
    inc hl
    cp $ec
    rst $38
    jr c, jr_008_455c

    sbc a
    inc a
    sbc a
    ld a, [c]
    ld a, e
    push hl
    dec sp
    push hl
    rst $30
    res 4, b
    rst $38
    push bc
    rst $38
    xor d
    rst $38
    db $dd
    rst $38
    db $eb
    rst $38
    db $dd
    inc h
    rst $38
    ld a, [bc]
    jr nz, @+$01

    ld b, l
    rst $38
    xor d
    rst $38

jr_008_458a:
    ld [hl], a
    rst $38
    xor d
    rst $38
    ld e, l
    inc h
    rst $38

jr_008_4591:
    ld [$ff3f], sp
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    add $00
    ld d, $ef
    rst $38
    ldh [$3f], a
    xor d
    nop
    ld b, c
    inc d
    xor b
    ld l, d
    ld d, l
    ld a, h
    add d
    cp $57
    ld a, a
    rst $28
    rst $38
    ld e, l
    ld a, a
    xor d
    jr z, jr_008_458a

    db $fc
    and d
    cp $55
    rst $38
    ld a, [$55fe]
    db $fc
    db $ec
    ld a, [hl]
    cp l

jr_008_45c1:
    ld e, b
    xor e
    inc bc
    ld e, l
    inc e
    cp [hl]
    ld l, b
    ld a, l
    jr nz, jr_008_45c1

    ld e, h
    ld e, l
    ld l, e
    ld [$d575], a
    xor e
    xor d
    add b
    ld [hl], l
    ld [hl], b
    xor d
    jr c, @+$5f

    jr z, jr_008_4591

jr_008_45db:
    ld e, h
    ld b, l
    db $fc
    xor h
    ld a, [hl]
    ld d, a
    cp $83
    cp a

jr_008_45e4:
    inc bc
    xor d
    ld b, c
    ld d, l
    nop
    and a
    add c
    rrca
    ld [bc], a
    rlca
    ld a, b
    ret z

    ld sp, hl
    xor b
    sub a
    or l
    rst $08
    ld l, d
    rst $38
    jr z, jr_008_45db

    ld [hl+], a
    ld d, b
    rst $10
    ld h, c
    dec e
    rst $30
    sbc b
    rst $38
    xor b
    rst $08
    ld l, b
    rst $18
    or b
    rst $38
    and b
    dec sp
    inc a
    ld b, e
    ld b, d
    inc a
    inc a
    db $d3
    ld h, d
    cp c
    pop hl
    adc h
    pop de
    rst $08
    ldh [$eb], a
    db $f4
    ld [hl], e
    ld a, [$fd23]
    ld h, c
    ld d, $ef
    ld [hl], b
    cp c
    or [hl]
    ld e, a
    jr nc, jr_008_45e4

    ld h, b
    ld a, l
    ld [c], a
    rla
    ret c

    add sp, $0f

jr_008_462c:
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
    ldh a, [$5f]
    adc a
    ldh [$4c], a
    xor h
    cpl
    ld b, d
    rla
    xor d
    ld b, d
    ld d, [hl]
    ld [bc], a
    and l
    inc c
    ld e, d

jr_008_4647:
    inc c
    and [hl]
    rrca
    ld d, c
    rlca
    ld a, [hl+]
    ldh [rHDMA5], a
    ret nz

    ld [$d540], a
    ld b, b
    ld l, d
    jr nc, jr_008_462c

    jr c, jr_008_46c1

    ld a, [c]
    sub l
    ldh [$c2], a
    rst $38
    or b
    rst $38
    ld l, d
    rst $38
    ld d, a
    ld a, a
    cp e
    ccf
    ld e, [hl]
    ccf
    and l
    ld e, $53
    rrca
    xor d
    cp $53
    cp $ae
    db $fc
    ld [hl], l
    db $fc
    ld a, [$75fc]
    ld hl, sp-$60
    ld a, d
    push bc
    ldh a, [rIE]
    nop
    db $10
    rst $38
    ld b, [hl]
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [bc], a
    rst $38
    ld [$ff22], sp
    inc b
    xor b
    add b
    rst $08
    and b
    rst $00
    ld b, e
    ret nz

    ldh [$e0], a
    jr z, jr_008_4647

    ld_long a, $ffad
    sub d
    rst $38
    rst $38
    and b
    ld bc, $2180
    db $10
    ld de, $1136
    dec l
    ld [hl], e
    ei
    and a
    rst $28
    ld a, l
    rst $38
    rst $38
    sub l
    ld a, [hl]
    jp z, $a53f

    ld e, a
    ld a, [c]
    rrca
    sbc c
    ld h, a
    db $fc
    inc bc
    or $09
    nop
    rst $38
    cp h
    db $f4
    ld b, e
    ei

jr_008_46c1:
    cp $09
    rst $30
    db $fc
    ccf
    call z, $fcf3
    rlca
    ld hl, sp+$00
    rst $38
    ldh a, [$6f]
    ld a, [bc]
    sub b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, $0f
    ld [bc], a
    ld [bc], a
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    ld de, $1111
    ld de, $2040
    ld hl, $4121
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld de, $1111
    ld de, $2121
    ld hl, $0221
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $1111
    ld de, $2121
    ld b, b
    jr nz, jr_008_474c

    ld [bc], a
    ld b, c

jr_008_474c:
    ld sp, $0202
    ld b, c
    ld sp, $0b0a
    dec bc
    dec bc
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $1b1a
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    dec de
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld de, $1111
    ld de, $2121
    ld hl, $0221
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $1111
    ld de, $2121
    ld hl, $0221
    ld [bc], a
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $1111
    ld de, $2111
    ld hl, $2121
    dec bc
    dec bc
    dec bc
    dec bc
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    dec l
    ld l, $02
    ld [bc], a
    dec a
    ld a, $02
    ld [bc], a
    inc a
    ld a, $02
    ld [bc], a
    ld c, l
    ld c, [hl]
    ld l, $2f
    ld [bc], a
    ld [bc], a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld bc, $022c
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld [bc], a
    jr z, jr_008_482c

    ld [bc], a
    ld [bc], a
    jr c, jr_008_4840

    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr z, jr_008_483e

    ld [bc], a
    ld [bc], a
    jr c, jr_008_4852

    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld e, l
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_482c:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_483e:
    ld [bc], a
    ld [bc], a

jr_008_4840:
    ld [bc], a
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $0202
    ld de, $1111
    ld de, $2040
    ld hl, $0221

jr_008_4852:
    ld [bc], a
    ld b, c
    ld sp, $0202
    ld b, c
    ld sp, $1111
    ld de, $2111
    ld hl, $2040
    ld de, $1111
    ld de, $2121
    ld hl, $5e21
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld bc, $0101
    ld bc, $2322
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [bc], a
    ld h, $27
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc hl
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [bc], a
    ld h, $27
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, $24
    ld d, $06
    ld d, $24
    ld d, $06
    ld d, $24
    ld d, $06
    ld d, $24
    ld d, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [$0202], sp
    rla
    jr jr_008_48c4

    ld [bc], a
    ld [bc], a

jr_008_48c4:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0209], sp
    ld [bc], a
    jr jr_008_48e8

    ld [bc], a
    ld [bc], a
    ld c, $0f
    ld [bc], a
    ld [bc], a
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    ld [bc], a

jr_008_48e8:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc hl
    ld de, $3211
    inc sp
    ld hl, $1221
    inc de
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld [bc], a
    ld [bc], a
    ld de, $2211
    inc hl
    ld hl, $3221
    inc sp
    ld [bc], a
    ld [bc], a
    ld [de], a
    inc de
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    dec h
    dec [hl]
    inc [hl]
    dec [hl]
    dec h
    dec [hl]
    inc [hl]
    dec [hl]
    dec h
    dec [hl]
    inc [hl]
    dec [hl]
    dec h
    dec [hl]
    inc [hl]
    dec [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    add hl, bc
    ld [bc], a
    ld [bc], a
    rla
    add hl, de
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc b
    dec b
    inc d
    dec d
    inc d
    dec d
    ld e, [hl]
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [$0908], sp
    rla
    jr jr_008_4968

    add hl, de
    rlca
    ld [$0908], sp
    rla
    jr jr_008_4970

    add hl, de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_4968:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_4970:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    dec de
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    dec de
    dec bc
    dec bc
    dec bc
    dec de
    dec de
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    ld b, a
    ld a, [de]
    ld [bc], a
    ld [bc], a
    ld d, a
    ld a, [de]
    dec bc
    dec bc
    dec bc
    dec de
    dec de
    dec de
    dec de
    dec de
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld de, $5a48
    ld e, e
    ld hl, $4c58
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld [bc], a
    ld [bc], a
    ld c, c
    ld de, $4342
    ld e, c
    ld hl, $5b5a
    ld [bc], a
    ld [bc], a
    ld c, h
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld c, d
    ld c, e
    ld [bc], a
    ld [bc], a
    ld e, d
    ld e, e
    ld [bc], a
    ld [bc], a
    ld c, h
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, d
    ld c, e
    ld [bc], a
    ld [bc], a
    ld e, d
    ld e, e
    ld [bc], a
    ld [bc], a
    ld c, h
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    inc b
    dec b
    inc b
    dec b
    inc d
    dec d
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc b
    dec b
    inc d
    dec d
    inc d
    dec d
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc b
    dec b
    inc d
    dec d
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, l
    ld [bc], a
    ld [bc], a
    ld d, h
    ld d, l
    ld de, $1111
    ld de, $2121
    ld hl, $5021
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec de
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    dec de
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    dec de
    dec de
    inc bc
    inc bc
    dec de
    dec de
    dec bc
    dec bc
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    dec de
    dec de
    inc bc
    inc bc
    dec de
    dec de
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld a, [de]
    dec de
    ld [bc], a
    ld [bc], a
    ld a, [de]
    dec de

Jump_008_4ac9:
    inc bc
    inc bc
    ld a, [de]
    dec de
    dec bc
    dec bc
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    ld b, a
    ld a, [de]
    ld [bc], a
    ld [bc], a
    ld d, a
    ld a, [de]
    inc bc
    inc bc
    ld a, [de]
    dec de
    dec bc
    dec bc
    dec de
    dec de
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], d
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld a, h
    nop
    rlca
    rlca
    ld h, b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    nop
    nop
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
    rlca
    rlca
    rlca
    and c
    rlca
    rlca
    and b
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    ld h, b
    ld h, b
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    ld [hl], d
    rlca
    rlca
    nop
    nop
    rlca
    and l
    rlca
    rlca
    rlca
    and e
    rlca
    rlca
    and e
    rlca
    rlca
    rlca
    and h
    rlca
    rlca
    rlca
    cpl
    rst $38
    ld l, a
    nop
    rst $38
    ld h, c
    rlca
    rst $38
    xor d
    ld d, l
    nop
    xor d
    nop
    db $dd
    nop
    ld b, h
    rst $38
    nop
    rrca
    add b
    rst $38
    cp a
    rst $38
    and a
    db $fd
    cp l
    push hl
    and l
    push hl
    cp a
    db $fd
    cp a
    rst $38
    cp a
    ret nz

    and e
    adc a
    inc bc
    db $fd
    daa
    dec h
    rst $20
    push bc
    add c
    inc b
    db $fd
    inc bc
    rst $38
    ld a, a
    add b
    ld c, h
    add b
    cp a
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld c, e
    rst $38
    nop
    xor a
    sbc a
    rlca
    ld a, a
    ld a, a
    ld c, a
    ld [hl], b
    ld h, b
    ld h, b
    jr nz, jr_008_4c54

    ld [hl+], a
    jr nz, jr_008_4c2c

jr_008_4c2c:
    dec l
    add e
    add l
    and [hl]
    adc a
    ld b, e
    ld d, h
    inc b
    add hl, bc
    ld b, h
    inc b
    ld [hl], h
    inc b
    ld b, h
    rra
    rra
    ld h, b
    ld h, b
    and b
    ld b, e
    and b
    cp a
    ld [$b8af], sp
    xor h
    cp b
    xor a
    cp b
    xor h
    ld sp, hl
    ld sp, hl
    inc hl
    ld b, $19
    cp $06
    rst $38
    or $1f

jr_008_4c54:
    or $1e
    rst $30
    rra
    ld [hl], $f8
    ld hl, sp+$07
    rlca
    inc b
    inc b
    rlca
    inc b
    rst $38
    inc b
    db $fc
    rst $30
    inc b
    cp $6e
    sub [hl]
    ld h, c
    nop
    cp $83
    pop hl
    jr jr_008_4c73

    db $fd
    inc bc
    dec b

jr_008_4c73:
    ei
    dec b
    dec bc
    push hl
    dec bc
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    db $10
    rst $38
    ldh [$3f], a
    db $e3
    ccf
    db $e4
    ccf
    jr c, @+$01

    add e
    nop
    dec l
    dec bc
    ld a, a
    ldh [rNR10], a
    rst $38
    rrca
    ld hl, sp-$71
    ld hl, sp+$4f
    ld hl, sp+$38
    rst $38
    ret z

    nop
    ld l, b
    add [hl]
    add a
    ld bc, $0055
    and h
    add c
    add a
    nop
    ld l, c
    ld bc, $00ff
    ret z

    nop
    cpl
    ld bc, $55aa
    add e
    adc [hl]
    ld bc, $ffbf
    ld b, a
    cp a
    pop bc
    nop
    rst $38
    and e
    nop
    ld c, l
    nop
    ld a, a
    or b
    adc a
    ld c, [hl]
    add b
    cp a
    ld c, a
    rst $38
    nop
    ld c, a
    db $fd
    ld bc, $6008
    cpl
    and b
    inc h
    ld h, b
    dec hl
    ldh [$60], a
    ret nz

    ld b, e
    ld a, a
    rst $38
    add hl, bc
    nop
    rst $38
    rst $38
    dec b
    ld h, h
    ld b, $34
    dec b
    sub h
    ld b, $a8
    adc a
    ld b, $bf
    xor a
    or a
    xor b
    sbc a
    cp a
    and b
    add e
    nop
    and h
    ld [bc], a
    or d
    or b
    db $ed
    ld [hl+], a
    rst $38
    dec de
    or $ee
    rla
    ld sp, hl
    rst $38
    dec c
    ld b, $05
    cp $05
    xor [hl]
    inc b
    ld e, a
    rst $38
    rst $38
    ld l, a
    sub a
    dec b
    rst $38
    ld sp, hl
    rst $38
    push bc
    ld d, a
    rst $00
    ld a, [hl]
    rst $38
    ld b, h
    jr c, jr_008_4d33

    rst $38
    ld [bc], a
    dec b
    dec bc
    and l
    ld b, e
    dec bc
    dec b
    nop
    ei
    ld b, e
    db $fd
    inc bc

jr_008_4d1e:
    nop
    ld bc, $ff22
    dec e
    db $ec
    cpl
    db $e3
    inc hl
    ldh [$30], a
    db $10
    db $fc
    ret nc

    inc sp
    db $ec
    inc e
    di
    rrca
    nop
    rst $38

jr_008_4d33:
    ld l, a
    add sp, -$71
    adc b
    rrca
    jr jr_008_4d4a

    ld a, a
    rla
    sbc b
    ld l, a
    ld [hl], b
    sbc a
    ldh [$83], a
    ld bc, $0d0b
    ld a, a
    ld a, a
    ld b, l
    ld b, b
    ld c, e

jr_008_4d4a:
    ld b, b
    ld d, a
    ld b, b
    ld l, [hl]
    ld b, b
    ld e, l
    ld b, b

Call_008_4d51:
    ld a, e
    ld b, b
    add e
    nop
    ret nc

    dec bc
    jp c, $b202

    ld [bc], a
    ld h, d
    ld [bc], a
    add $02
    adc [hl]
    ld [bc], a
    ld a, [de]
    ld [bc], a
    add a
    sbc a
    ld bc, $7f7f
    inc hl
    ld b, b
    nop
    ld h, b
    adc b
    sbc a
    and a
    adc a
    ld de, $08f7
    rst $28
    db $10

jr_008_4d75:
    rst $08
    jr nz, jr_008_4d1e

    ld d, c
    ld [hl], c
    adc d
    ei
    inc b
    rst $30
    ld [$10e7], sp
    rst $38
    rst $38
    and e
    push af
    ld b, e
    jp $017f


    cp h
    ld a, a
    add a
    ld bc, $821a
    add e
    ret


    add c
    xor b
    sbc a
    ld bc, $fc3f
    ld b, e
    rst $38
    nop
    inc b
    adc a
    ld a, a
    add a
    ld a, a
    add d
    ld b, h
    ld a, a
    add h
    inc d
    adc c
    ld a, [hl]
    adc d
    ld a, l
    sub b
    ld a, a
    sbc h
    db $e3
    jr c, jr_008_4d75

    ld [hl], b
    adc a
    ld h, c
    sbc a
    add d
    ld a, a
    inc b
    rst $38
    add hl, bc
    rst $38
    inc de
    jp Jump_008_4ac9


    add b
    rst $38
    ld bc, $ff80
    adc l
    nop
    ld h, b
    nop
    nop
    or d
    sbc a
    inc b
    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    ld b, h
    ret nz

    ld a, c
    ld b, e
    ld a, a
    ret nz

    ld [bc], a
    rst $38
    rst $38
    rst $38
    add [hl]
    ld bc, $001e
    and c
    ret z

    add c
    ld b, e
    cp $03
    ld [bc], a
    ld a, $03
    ld [hl], $44
    inc bc
    cp $03
    ld [hl], a
    ld b, c
    rst $38
    ld a, a
    adc e
    ld bc, $0314
    or e
    add d
    cp $fe
    adc e
    adc a
    nop
    ld a, a
    adc [hl]
    sbc a
    nop
    rst $38
    adc [hl]
    sbc a
    ld bc, $00ff
    add e
    call nc, $8789
    and h
    nop
    ld b, b
    inc b
    ld [$eaba], a
    xor [hl]
    xor $c2
    add a
    and [hl]
    adc a
    dec b
    sbc l
    rst $30
    push af
    sub a
    sbc l
    sbc a
    and d
    adc a
    adc b
    ld [bc], a
    pop hl
    ld bc, $ef10
    add a
    ld [bc], a
    cp b
    ld b, l
    sub h
    ld a, e
    nop
    sub b
    ld b, h
    ld a, a
    adc b
    ld [$7f84], sp
    add e
    ld a, a
    daa
    rst $38
    ld c, a
    rst $38
    ld e, c
    ld b, h
    rst $38
    and c
    ld [bc], a
    ld b, c
    rst $38
    add c
    add e
    or c
    ld b, [hl]
    rst $38
    and h
    ld [bc], a
    rst $38
    cp a
    ldh [rSCX], a
    cp a
    rst $38
    ld bc, $ffe0
    ld b, [hl]
    rst $38
    inc h
    nop
    rst $38
    add [hl]
    push af
    xor a
    sbc a
    ld [bc], a
    ld l, h
    ret nz

    ld a, a
    adc b
    ld [bc], a
    db $db
    inc b
    ld a, a
    add b
    rst $38
    rst $38
    ret nc

    adc c
    inc bc
    scf
    add h
    xor l
    nop
    add $43
    inc bc
    cp $03
    ei
    cp $ab
    xor a
    and [hl]
    sbc a
    add l
    ld [bc], a
    ld b, b
    inc bc
    cp a
    ld e, a
    ld h, b
    and b
    ld b, l
    rst $20
    jr nz, @-$79

    adc a
    inc bc
    cp $f9
    dec b
    ld b, $45
    rst $20
    inc b
    ld b, e
    add c
    rst $38
    ld a, [bc]
    sbc a
    cp $a0
    ld [$eac4], a
    rst $08
    sbc $dd
    rst $08
    rst $10
    add l
    ld [bc], a
    and c
    add hl, bc
    cp a
    ldh [$bb], a
    ldh [$b4], a
    rst $38
    cp a
    rst $38
    rst $38
    add b
    xor c
    adc a
    nop
    dec a
    and l
    adc a
    xor e
    xor a
    inc bc
    db $db
    di
    db $eb
    rst $38
    ld b, l
    or c
    jp $b302


    jp Jump_008_43b2


    jp nz, $02b3

Call_008_4ebf:
    jp $c3b0


    cpl
    rst $38
    ld c, $23
    rst $38
    ld b, l
    rst $38
    adc l
    rst $38
    add hl, de
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    add c
    or c
    xor a
    add h
    inc bc
    db $e3
    ld [$ff01], sp
    rst $38
    rlca
    rst $38
    dec e
    rst $38
    dec d
    rra
    add l
    add a
    ldh [$2e], a
    ld [hl], l
    rst $18
    rst $38
    di
    ld d, l
    pop af
    rst $38
    inc sp
    ld d, c
    rla
    rst $30
    xor e
    rst $38
    ld a, [hl]
    or [hl]
    ld a, [$71ce]
    xor a
    call nc, Call_008_62bf
    cp e
    ldh [rIE], a
    sbc h
    sbc [hl]
    xor d
    rst $38
    ld a, a
    ld l, l
    ld d, [hl]
    ld a, e
    adc a
    push af
    ld a, [hl+]
    db $fd
    ld b, a
    db $dd
    ld b, $ff
    cp c
    ld a, c
    rst $38
    ret nz

    cp a
    and b
    ld [hl+], a
    sbc a
    ld [bc], a
    add b
    sbc a
    adc a
    ld b, e
    sbc b
    adc b
    dec bc
    rst $18
    rst $08
    rst $38
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld sp, hl
    rlca
    ld sp, hl
    rst $30
    ld b, e
    add hl, de
    rla
    ld bc, $f7fb
    and e
    nop
    add $0b
    rst $38
    cpl
    cp b
    ld l, a
    ld a, a
    xor a
    rst $38
    jr z, @+$01

    ccf
    rst $20
    db $10
    and l
    adc a
    inc bc
    ld e, $f5
    db $fd
    or $a4
    adc a
    add hl, bc
    db $10
    ld a, a
    rst $38
    jr c, @+$01

    cpl
    ldh a, [rHDMA3]
    db $e3
    ld [hl-], a
    add h
    inc b
    ld l, c
    ld b, $b1
    jp $fcfb


    sub b
    db $ec
    cp b
    ld a, [hl+]
    rst $38
    xor a
    adc a
    nop
    xor $a6
    xor a
    nop
    ld c, l
    and [hl]
    xor a
    ld c, $b8
    rst $00
    or a
    rst $08
    sbc [hl]
    rst $38
    cp b

jr_008_4f75:
    db $fc
    di
    ei
    inc de
    di
    rla
    ldh a, [rIF]
    ld [hl+], a
    rst $38
    inc c
    pop af
    ldh a, [rNR10]
    ld de, $1718
    ld hl, sp-$69
    cp $91

jr_008_4f8a:
    rst $38
    rra
    rst $38
    or b

jr_008_4f8e:
    adc a
    and a
    xor a
    nop
    adc $a6
    xor a
    jr jr_008_4f8a

    dec d
    pop af
    rst $38
    di
    sub c
    rst $10
    or a
    rst $18
    cp l
    rst $10
    or l
    rst $18
    cp a
    rst $38
    rst $38
    ccf
    dec e
    ld [hl], a
    ld [hl], l
    rst $38
    rst $18
    ld [hl], c
    ld e, a
    pop af
    ld b, h
    rst $38
    ld bc, $ff12
    rst $38
    xor e
    sbc e
    call nc, $337c
    rst $38
    ld d, b
    ld hl, sp-$28
    cp b
    db $ec
    cp h
    db $e3
    xor e
    db $fc
    sbc a
    db $d3
    xor [hl]
    adc a
    add [hl]
    inc b
    ld [c], a
    ld [$9f80], sp
    add b
    ld e, a
    ret nz

    rst $38
    jr nz, jr_008_5033

    rst $38
    add [hl]
    inc b
    ld a, [c]
    rlca
    rlca
    ld sp, hl
    rlca
    ld_long a, $ff07
    inc b
    db $fd
    sub d
    nop
    rrca
    add l
    inc bc
    ld a, d
    rlca
    rst $18
    ccf
    add b
    ld b, b

jr_008_4fec:
    jr c, jr_008_4f75

    or a
    adc b
    adc c
    ld [bc], a
    cp b
    ld h, c
    ld a, [bc]
    rlca
    ld hl, sp+$7b
    db $e4
    rst $28
    jr nz, jr_008_4fec

    cpl
    rst $28
    ccf
    jr z, jr_008_5023

    rst $38
    rlca
    dec bc
    ld b, b
    jr c, jr_008_4f8e

    cp b
    add a
    rst $30
    inc c
    and [hl]

jr_008_500c:
    adc a
    ld b, $fc
    db $e3
    ld [de], a
    push af
    dec bc
    db $fd
    dec bc
    ld b, l
    rst $38
    nop
    add hl, bc
    rra
    rst $38
    ldh a, [rNR41]
    rst $28
    jr nz, jr_008_500c

    inc hl
    inc l
    ld [c], a

jr_008_5023:
    xor d
    adc a
    dec de
    inc c
    scf
    adc h
    inc [hl]
    rrca
    ld l, d
    rst $38
    or l
    rst $38
    rst $18
    rst $38
    ld b, a
    rst $38

jr_008_5033:
    ld b, b
    rst $38
    ld h, b
    rst $18
    ldh [$df], a
    or b
    rst $08
    xor e
    rst $38
    ld d, a
    rst $38
    cp e
    rst $38
    db $e3
    ld b, [hl]
    rst $38
    inc bc
    ld b, $01
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    adc d
    inc bc
    ld [c], a
    ld c, a
    add c
    ld a, a
    and e
    sbc a
    ld c, $bf
    rst $38
    sub $bf
    ld l, b
    rst $18
    ld [hl], b
    rst $08
    ldh a, [$ef]
    ldh [rIE], a
    xor d
    rst $38
    ld d, a
    xor b
    adc a
    ld b, e
    rlca
    rst $38
    rra
    ret nz

    rst $38
    ld [c], a
    db $fd
    or l
    ld [$f56a], a
    inc sp
    ldh a, [$b8]
    ld [hl], b
    or [hl]
    ld a, d
    and d
    ld [hl], h
    inc bc
    rst $38

Call_008_507d:
Jump_008_507d:
    add a

Jump_008_507e:
    ld a, a
    ld d, [hl]
    xor a
    and l
    ld e, a
    cp $0f
    dec e
    rrca
    ld l, l
    ld e, a
    ld b, l
    cpl
    add hl, hl
    rst $38
    inc b
    ld a, [$f5ff]
    rst $38
    ldh [$90], a
    dec b
    rst $38
    nop
    or [hl]
    ld b, l
    adc c
    or a
    ld [bc], a
    adc b
    cp a
    add a
    ld b, l
    cp a
    add b
    ld b, e
    ccf
    inc d
    ldh [$2b], a
    rst $38
    ld d, h
    rst $38
    db $e4
    cp a
    ld hl, sp-$41
    ld b, b
    ld a, [hl]
    add c
    ld a, l
    add e
    rst $38
    add b
    ret nz

    sbc d
    push bc
    and b
    ret nc

    adc d
    ld a, a
    add b
    cp a
    ld a, a
    rst $38
    add b
    ret nz

    nop
    db $fd
    dec bc
    dec e
    xor e
    ld e, l
    dec bc
    dec a
    adc e
    push af
    dec bc
    db $ed
    di
    db $fd
    dec bc
    dec e
    rlca
    add hl, hl
    rst $38
    inc b
    cp $ff
    push af
    rst $38
    xor d
    ld a, [hl+]
    rst $38
    dec b

Call_008_50de:
    cp a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    ld b, e
    ret nz

    cp a
    dec bc
    add b
    rst $38
    ret nz

    rst $38
    call nc, $eaff
    rst $18
    ldh [$df], a
    ldh a, [$cf]
    ld b, l
    ld bc, $a3ff
    adc a
    nop
    inc de
    ld b, h
    rst $38
    inc bc
    add d
    or a
    and h
    xor c
    nop
    push af
    add [hl]
    add e
    ld [bc], a
    ld e, a
    rst $38
    cp a
    adc h
    add e
    and e
    ld b, $8c
    ld a, [bc]
    sbc b
    rst $20
    cp l
    di
    ld l, e
    ld sp, hl
    or h
    db $ed
    sbc d
    rst $30
    adc h
    and [hl]
    adc a
    ld de, $cf3d
    ld d, [hl]
    sbc a
    dec l
    or a
    reti


    rst $28
    ld sp, $9eff
    ld [hl], a
    sub a
    ld a, l
    sbc e
    ld a, h
    adc h
    ld a, a
    add e
    ld [bc], a
    add b
    ld a, [bc]
    add e
    ld a, a
    add c
    ld a, a
    ld a, c
    rst $28
    jp hl


    cp a
    reti


    ccf
    ld sp, $0484
    adc c
    inc b
    pop bc
    rst $38
    add c
    ld a, a
    ldh [rLY], a
    rst $38
    ret nz

    nop
    ld b, b
    ld b, [hl]
    rst $38
    add b
    ld bc, $dfa0
    ld l, a
    add a
    nop
    ld e, d
    dec bc
    add b
    rst $38
    rst $38
    ld a, a
    jp Jump_008_437f


    rst $38
    sbc e
    ld h, l
    rst $20
    add hl, de
    adc e
    ld [bc], a
    ld e, [hl]
    dec b
    ret nz

    nop
    ld a, a
    add b
    add b
    sbc a
    adc c
    adc a
    dec b
    dec e
    rlca
    push af
    rrca
    dec c
    ei
    xor c
    xor a
    nop
    ret c

    ld b, e
    rst $38
    call nz, $ff4a
    ld [c], a
    inc b
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ld c, b
    rst $38
    ld bc, $0511
    ei
    ldh a, [$cf]
    ld hl, sp-$19
    ret c

jr_008_5192:
    rst $38
    rst $00
    rst $38
    db $d3
    rst $38
    ld hl, $99ff

jr_008_519a:
    ld a, a
    add a
    ld a, a
    jp nz, $849d

    dec b
    ld a, h
    inc c
    or $ff
    cp l
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
    call nz, $c306
    nop
    ld bc, $0683
    sbc a
    push bc
    ld [bc], a
    call nc, $ff01
    push de
    adc [hl]
    adc a
    and a
    ld b, $f4
    or c
    dec b
    cp $10
    nop
    rst $38
    jr c, jr_008_5192

    ld b, h
    cp e
    ld d, h
    xor e
    ld b, h
    cp e
    jr c, jr_008_519a

    nop
    rst $38
    nop
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    nop
    ld b, a
    add c
    ld a, a
    rlca
    add d
    ld a, l
    add [hl]
    ld a, c
    adc l
    ld [hl], b
    sbc c
    ld h, b
    ld b, e
    add c
    ld a, a
    ld b, $9e
    ld h, c
    cp $01
    pop hl
    nop
    ld bc, $0162
    ld bc, $4300
    add c
    ld a, a
    ld [$0ff1], sp
    cp $01
    ld c, $01
    ld bc, $0100
    add [hl]
    adc a
    ld d, $81
    ld a, a
    ld bc, $c1ff
    ccf
    pop hl
    rra
    ld [hl], c
    rrca
    add hl, sp
    rlca
    or c
    ld b, b
    sbc c
    ld h, b
    adc l
    ld [hl], b
    add [hl]
    ld a, c
    add d
    ld a, l
    add b
    add h
    sbc c
    ld b, a
    ld bc, $0600
    pop hl
    nop
    cp $01
    sbc [hl]
    ld h, c
    add b
    adc b
    adc a
    ld de, $010e
    cp $01
    pop af
    rrca
    ld bc, $1dff
    inc bc
    add hl, sp
    rlca
    ld [hl], c
    rrca
    pop hl
    rra
    add c
    ld a, a
    add l
    ld [$7faa], sp
    rrca
    ret z

    ld a, a
    call nz, $a27f
    ld a, a
    sub d
    ld a, a
    sub c
    ld a, a
    sbc d
    ld a, a
    cp l
    ld a, a
    cp [hl]
    ld a, a
    and l
    ld [bc], a
    sub b
    inc bc
    ld b, $f9
    ld bc, $c3fe
    rlca
    ld hl, sp+$00
    and b
    add h
    rlca
    rst $20
    inc de
    ld b, c
    rst $38
    ld hl, $11ff
    rst $38
    sbc c
    ld a, a
    ld c, c
    cp a
    dec b
    rst $38
    and h
    ld a, e
    call z, $c873
    ld [hl], a
    ld e, b
    rst $20
    ld b, e
    sub b
    rst $28
    add e
    rlca
    db $fc
    inc b
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec hl
    xor d
    ld [$0053], sp
    db $fd
    ld b, h
    rst $38
    ld sp, hl
    ld [bc], a
    pop af
    rst $38
    pop bc
    add h
    inc bc
    sbc e
    rlca
    pop bc
    rst $38
    or c
    ld b, b
    and c
    ld b, b
    pop hl
    nop
    ld b, e
    pop bc
    nop
    ld b, l
    add c
    nop
    dec b
    rlca
    dec b
    dec bc
    dec bc
    dec b
    inc b
    ld [hl+], a
    inc bc
    add e
    ld [bc], a
    dec sp
    ld [$0f06], sp
    ld a, [bc]
    pop bc
    ld b, b
    pop hl
    and b
    pop bc
    ld b, b
    ld b, l
    add c
    add b
    ld [$c0c1], sp
    pop hl
    and b
    dec e
    inc bc
    dec c
    inc bc
    rrca
    ld b, h
    ld bc, $4506
    inc bc
    nop
    inc b
    adc l
    ld a, a
    sub d
    ld a, a
    and h
    ld b, [hl]
    ld a, a
    ret z

    inc de
    sub b
    rst $38
    sub c
    cp $1c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc a
    jp $817e


    rst $38
    nop
    db $e3
    inc e
    pop bc
    ld a, $43
    dec b
    ei
    ld b, l
    dec c
    di
    ld bc, $e31d
    ld b, e
    ld sp, hl
    rlca
    xor a
    adc a
    xor a
    xor a
    inc b
    or c
    rst $38
    ld c, c
    rst $38
    dec h
    ld b, [hl]
    rst $38
    inc de
    and e
    rst $08
    nop
    cp a
    ld b, h
    ld a, a
    sbc a
    nop
    adc a
    add h
    rlca
    db $db
    inc bc
    add b
    ld a, a
    add e
    ld a, a
    xor a
    add hl, bc
    ldh [rTMA], a
    dec h
    rst $18
    inc sp
    rst $08
    inc de
    rst $28
    dec de
    xor b
    add hl, bc
    rst $10
    add e
    add hl, bc
    and d
    inc b
    or c
    ld a, a
    sbc b
    ld a, a
    sbc [hl]
    add [hl]
    rlca
    rst $10
    xor a
    ld [bc], a
    sub b
    add a
    add hl, bc
    ret nz

    ld [$ff21], sp
    sub c
    ld a, a
    ld d, c
    cp a
    add hl, bc
    rst $38
    add c
    rrc d
    rrca
    ld [$a100], sp
    ld b, b
    dec bc
    add hl, bc
    dec b
    inc c
    inc bc
    rlca
    ld c, c
    ld bc, $0500
    ld hl, $4120
    ld h, b
    add c
    ret nz

    ld c, c
    ld bc, $4700
    inc bc
    nop
    call nz, $380a
    ld [bc], a
    ld bc, $030d
    ld b, a
    sub c
    cp $43
    sub b
    rst $38
    dec d
    adc b
    rst $38
    ret z

    ld a, a
    ret nz

    ccf
    ret z

    ccf
    ret nc

    ccf
    ret c

    ccf
    call z, $eb3f
    rra
    ld h, [hl]
    sbc a
    ld [hl], e
    adc a
    pop af
    rrca
    push bc
    ld [$0764], sp
    dec bc
    rst $38
    push af
    rst $38
    xor l
    rst $38
    ld e, c
    rst $38
    and e
    adc a
    dec bc
    ld b, b
    rst $38
    ldh [$7f], a
    ret nc

    ld a, a
    xor a
    ld a, a
    or l
    ld a, a
    sbc d
    ld a, a
    xor a
    xor a
    xor [hl]
    rst $08
    nop
    rst $38
    add a
    ld [bc], a
    add b
    rlca
    adc b
    ld a, a
    sbc c
    ld a, [hl]
    sub d
    ld a, l
    and b
    ld a, a
    xor a
    add hl, bc
    or b
    nop
    inc de
    add h
    inc b
    ld a, a
    ld [$ff49], sp
    adc c
    rst $38
    ld e, c
    rst $38
    cp l
    rst $38
    ld a, l
    adc [hl]
    add hl, bc
    pop hl
    ld bc, $ff47
    and e
    inc bc
    sub b
    ld b, $fa
    rst $38
    ld a, l
    rst $38
    push af
    ld a, a
    add d
    add h
    ld a, [bc]
    xor c
    ld b, l
    add hl, hl
    rst $18
    nop
    add hl, bc
    ld b, h
    rst $38
    ld de, $2103
    rst $38
    pop bc
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
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    rlca
    dec b
    rlca
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc de
    inc d
    inc de
    inc d
    ld [$0809], sp
    add hl, bc
    jr jr_008_5450

    jr jr_008_5452

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec b
    ld b, $06
    ld b, $15
    ld d, $16

jr_008_5450:
    ld d, $10

jr_008_5452:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, $07
    ld c, $0f
    ld d, $17
    ld e, $1f
    ld bc, $0101
    ld bc, $1111
    ld de, $0a11
    dec bc
    inc c
    dec c
    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_008_5494

    ld [hl+], a
    inc hl
    jr nc, jr_008_54a8

    ld [hl-], a
    inc sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec h
    ld h, $26
    ld h, $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld h, $27
    db $10

jr_008_5494:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    dec h
    ld h, $26
    daa
    db $10
    db $10
    db $10

jr_008_54a8:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $1111
    ld de, $1011
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    inc h
    inc h
    ld [de], a
    ld [de], a
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    inc h
    inc h
    ld [de], a
    ld [de], a
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc [hl]
    dec l
    ld l, $2e
    inc [hl]
    dec a
    ld a, $3e
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    ld l, $2e
    cpl
    inc [hl]
    ld a, $3e
    ccf
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    dec b
    rlca
    dec b
    rlca
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    dec [hl]
    ld [hl], $35
    ld [hl], $24
    inc h
    dec b
    rlca
    inc h
    inc h
    inc de
    inc d
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld a, [hl+]
    dec hl
    dec hl
    inc l
    ld a, [hl-]
    dec sp
    dec sp
    inc a
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $1111
    ld de, $4211
    ld b, e
    ld b, h
    ld b, l
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld b, a
    ld c, c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, d
    ld c, e
    db $10
    db $10
    ld e, d
    ld e, e
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, h
    ld c, l
    db $10
    db $10
    ld e, h
    ld e, l
    db $10
    db $10
    ld c, [hl]
    ld c, a
    db $10
    db $10
    ld e, [hl]
    ld e, a
    ld c, h
    ld c, l
    db $10
    db $10
    ld e, h
    ld e, l
    db $10
    db $10
    ld c, [hl]
    ld c, a
    db $10
    db $10
    ld e, [hl]
    ld e, a
    db $10
    db $10
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    scf
    scf
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    jr nz, jr_008_5604

    jr nz, jr_008_5606

    jr nc, jr_008_5618

    jr nc, jr_008_561a

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add l
    add [hl]
    add c
    add d
    add e
    add h
    sub c
    sub d
    sub e
    sub h
    and c
    and d
    and e
    and h
    adc b
    adc c
    adc c

jr_008_5604:
    add a
    sbc b

jr_008_5606:
    sub l
    sub [hl]
    sub a
    xor b
    and l
    and [hl]
    and a
    call nz, $c6c5
    adc d
    call nz, $c6c5
    adc d
    call nc, $d6d5

jr_008_5618:
    adc d
    cp d

jr_008_561a:
    cp e
    cp h
    adc d
    jp z, $cccb

    adc d
    adc b
    adc c
    adc c
    add a
    sbc b
    adc a
    xor e
    sub a
    xor b
    sbc a
    db $dd
    and a
    adc d
    rst $00
    ret z

    ret


    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    call nc, $d6d5
    adc d
    cp d
    cp e
    cp h
    adc d
    jp z, $cccb

    adc d
    call nz, $c6c5
    adc d
    adc d
    rst $10
    ret c

    reti


    adc d
    jp c, $dcdb

    adc d
    cp l
    cp [hl]
    cp a
    adc d
    rst $00
    ret z

    ret


    adc b
    adc e
    adc h
    add a
    sbc b
    sbc e
    sbc h
    sub a
    xor b
    adc l
    adc [hl]
    and a
    adc d
    sbc l
    sbc [hl]
    adc d
    adc b
    adc c
    adc c
    add a
    sbc b
    sbc c
    sbc d
    sub a
    xor b
    xor c
    xor d
    and a
    adc d
    adc d
    adc d
    adc d
    call nc, $d6d5
    adc d
    call $cfce
    adc d
    adc d
    sbc $df
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    rst $10
    ret c

    reti


    adc d
    jr z, jr_008_56c1

    ld c, b
    adc d
    jr c, jr_008_56d5

    adc d
    adc d
    adc d
    adc d
    adc d
    or b
    or c
    or d
    or e
    ret nz

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $b4d3

    or l
    or [hl]
    or a
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor a
    xor a
    xor a
    xor a
    xor l
    xor l
    xor l
    xor l
    adc d
    adc d
    adc d
    adc d

jr_008_56c1:
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_56d5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sub c
    sub c
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sbc l
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    sub c
    sub c
    nop
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    rlca
    sbc l
    sbc l
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld b, l
    rst $28
    db $10
    inc b
    rrca
    ldh a, [$f0]
    rrca
    ldh a, [rLY]
    ld [$25f3], sp
    rst $38
    ld [bc], a
    push de
    rst $38
    xor d
    call nz, $0181
    add e
    db $fc
    dec h
    rst $38
    nop
    ld d, l
    and h
    sub c
    inc bc
    rst $38
    rst $38
    and e
    ld bc, $bf45
    ret nz

    dec b
    ret nz

    add b
    rst $38
    rst $38
    add b
    rst $38
    add e
    add a
    rlca
    add c
    ld a, a
    pop bc
    ccf
    pop hl
    rra
    dec c
    inc bc
    and e
    adc a
    add hl, bc
    ld sp, hl
    rlca
    dec b
    inc bc
    rst $38
    rst $38
    ldh [$f5], a
    cp a
    sbc a
    ld c, c
    cp a
    add c
    and e
    adc a
    ld bc, $f9ff
    ld c, c
    cp a
    add c
    add hl, bc
    or e
    sub e
    cp a
    sub e
    sbc [hl]
    or d
    sbc e
    cp [hl]
    and a
    and [hl]
    ld b, e
    cp [hl]
    and a
    inc c
    xor a
    cp a
    db $fd
    sbc l
    pop af
    sub c
    ld e, l
    ld [hl], c
    db $dd
    ld [hl], c
    pop af
    ld a, l
    ld d, c
    ld [hl+], a
    db $fd
    rlca
    sbc l
    sbc l
    ld a, a
    ld a, a
    ld b, c
    ld [hl], a
    ld b, c
    ld h, e
    ld b, h
    ld b, c
    ld a, a
    inc b
    ld h, e
    ld b, c
    ld [hl], a
    ld a, a
    ld a, a
    ld h, d
    ld bc, $ffff
    ld h, c
    ld c, b
    rst $38
    nop
    dec b
    rst $38
    rst $38
    ret nz

    add b
    call nz, $8583
    add e
    ld [bc], a
    cp a
    ret nz

    rst $38
    or b
    adc a
    rra
    and d
    ret nz

    add l
    ret nz

    res 0, b
    rst $10
    add b
    rst $28
    add b
    sbc a
    ret nz

    rst $38
    add b
    cp [hl]
    ret nz

    cp $03
    ld a, [$f203]
    inc bc
    ld [c], a
    inc bc
    add $03
    adc d
    inc bc
    ld d, $03
    ld l, $03
    cpl
    rst $38
    ld c, a
    ld h, [hl]
    ld de, $870b
    ld hl, sp-$71
    ldh a, [rIE]
    rst $38
    ld hl, sp-$80
    ldh a, [$80]
    ldh [$80], a
    add e
    nop
    ld b, [hl]
    ld b, h
    rst $38
    ld bc, $ff00
    daa
    ld bc, $ff01
    rst $38
    add a
    nop
    ld c, b
    ld bc, $ffff
    ret z

    add h
    inc b
    rst $38
    db $fd
    inc bc
    dec b
    inc bc
    add l
    add a
    ld bc, $ffff
    ld c, l
    cp a
    add c
    sub c
    adc a
    add d
    ret nz

    ld bc, $8080
    and [hl]
    sub $01
    add b
    rst $38
    or h
    adc a
    ld bc, $0000
    add $00
    pop bc
    nop

jr_008_59e3:
    nop
    rlc b
    pop bc
    add l
    nop
    or e
    ld a, [bc]
    nop
    cp h
    ret nz

    cp b
    ret nz

    or c
    ret nz

    and d
    ret nz

    sbc d
    push hl
    add h
    call nz, $ff10
    ld e, [hl]
    inc bc
    cp [hl]
    inc bc
    ld a, d
    inc bc
    ld a, [c]
    inc bc
    ld e, $e3
    cp $ff
    ld_long a, $ff07
    rst $38
    ld l, e
    add h
    ret nz

    inc b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add $87
    ld [hl+], a
    rst $38
    inc b
    adc $8e
    jp $d38f


    ld b, h
    sbc a
    rst $18
    jr jr_008_59e3

    add e
    rst $08
    adc a
    db $db
    sub l
    inc sp
    ld sp, $69cb
    rst $10
    ld [hl], l
    db $db
    ld e, e
    rst $28
    ld l, e
    rst $30
    di
    ld [hl], a
    db $fd
    ld a, a
    db $fd
    rst $38
    ld a, a
    add b
    ld c, h
    add b
    cp a
    and e
    adc a
    ld c, e
    db $fd
    inc bc
    ld c, a
    cp a
    add b
    ld c, a
    db $fd
    inc bc
    inc bc
    rst $38
    rst $28
    cp b
    sbc b
    ld c, e
    cp e
    adc b
    ld [bc], a
    rst $38
    rst $30
    rra
    ld c, h
    add hl, de
    rst $30
    ld c, a
    cp e
    adc b
    ld c, a
    rst $30
    add hl, de
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld c, h
    add b
    ret nz

    xor a
    adc a
    dec bc
    ld a, a
    ccf
    ld h, b
    jr nz, jr_008_5ad8

    inc l
    ld l, b
    inc l
    ld h, b
    jr nz, jr_008_5ae1

    cpl
    add e
    add e
    ld bc, $fdfe
    ld b, e
    ld b, $05
    ld bc, $5556
    add l
    add e
    ld bc, $f5f6
    adc h
    cp e
    ld [bc], a
    add b
    rst $38
    rst $38
    xor a
    adc a
    rra
    pop af
    or l
    di
    cp a
    ld a, [c]
    or [hl]
    db $fc
    cp [hl]
    ldh a, [$b0]
    rst $38
    cp a
    ldh a, [$af]
    rst $38
    cp a
    rst $08
    push bc
    adc a
    push bc
    rrca
    dec b
    rrca
    dec [hl]
    rrca
    dec b
    rst $38
    db $fd
    rrca
    db $fd
    ei
    ld sp, hl
    ret z

    ld [bc], a
    ld a, [hl+]
    inc bc
    rst $38
    rst $38
    ld a, a
    add b
    adc d
    ld [bc], a
    ld c, l
    and [hl]
    adc a
    ld bc, $bf03
    adc b
    ld bc, $0783
    rst $38
    ld a, a
    db $e4
    daa
    call c, $fd38
    inc bc
    xor c
    adc a
    add e
    adc a
    ld c, c
    cp e
    adc b
    dec b
    cp a
    adc a
    ld hl, sp-$18
    cp e
    sbc b
    ld c, d
    rst $30

jr_008_5ad8:
    add hl, de
    ld a, [bc]
    ld sp, hl
    rla
    rra
    rst $38
    add hl, de
    cp a
    adc a

jr_008_5ae1:
    ld hl, sp-$11
    ld hl, sp-$61
    ld c, c
    ret nz

    cp a
    dec b
    rst $30
    ld sp, hl
    rla
    rst $38
    dec de
    db $fd
    ld c, b
    ld bc, $50ff
    rst $38
    nop
    nop
    rst $38
    adc l
    ld bc, $00de
    nop
    add l
    ld [bc], a
    ret z

    inc bc
    ld h, b
    jr nz, jr_008_5b82

    ccf
    add l
    ld bc, $83a0
    ld [bc], a
    call c, $0643
    dec b
    ld bc, $fdfe
    add h
    adc a
    nop
    rst $38
    ld c, a
    ret nz

    add b
    ld [bc], a
    inc bc
    ld bc, $b203
    ld [bc], a
    and e
    inc b
    pop bc
    add b
    sbc $81
    ret nz

    add a
    ld bc, $628a
    inc bc
    inc b
    nop
    ld a, b
    inc b
    add h
    ld bc, $8cea
    rst $28
    ld b, e
    add b
    nop
    dec bc
    rst $38
    rst $38
    db $e3
    rst $38
    xor d
    rst $30
    or a
    ld [c], a
    rst $38
    cp a
    add b
    ret nz

    and l
    nop
    rst $38
    ld a, [bc]
    sbc a
    rst $38
    sub d
    rst $38
    or $92
    rst $38
    rst $38
    dec e
    inc bc
    ld bc, $0183
    ld c, [hl]
    add $01
    ld [hl], $01
    pop bc
    ccf
    ld b, e
    pop af
    rrca
    ld bc, $07f9
    ld c, a
    jr nz, @+$61

    ld c, a
    inc b
    ld a, [$ef43]
    nop
    rlca
    jp $c800


    nop
    inc de
    nop
    jp Jump_008_4300


    rst $30
    nop
    ld c, c
    ld h, [hl]
    ld de, $0187
    and b
    dec b
    and h
    and h
    cp a
    and a
    cp h
    and h

jr_008_5b82:
    ld b, e
    and a
    cp h
    dec bc
    or h
    cp a
    sbc [hl]
    sbc a
    rst $38
    rst $38
    sub c
    sub c
    db $fd
    sbc l
    push hl
    and l
    ld b, e
    cp l
    push hl
    ld c, $f5
    db $fd
    sub l
    sbc l
    cp a
    add b
    cp a
    sbc a
    or e
    sbc [hl]
    or d
    sub e
    or e
    sbc [hl]
    cp a
    jp $0087


    adc l
    and l
    adc a
    nop
    ld a, l
    xor d
    adc a
    ld b, $ff
    rst $38
    cp a
    add b
    add b
    add a
    cp e
    ld [hl+], a
    add a
    inc bc
    cp a
    ret nz

    rst $38
    ld a, a
    xor a
    adc a
    and l
    ld bc, $033b
    db $e4
    rst $38
    cp a
    db $e4
    add l
    inc b
    jr c, jr_008_5bcc

jr_008_5bcc:
    inc bc
    add h
    ld bc, $0693
    sub e
    rst $38
    ld a, [$fe97]
    cp $0d
    add e
    inc b
    ld c, e
    ld [bc], a
    nop
    rst $38
    rst $38
    ld b, e
    add b
    ld a, a
    add hl, bc
    add a
    ld a, b
    rra
    ldh [$9f], a
    ldh [$bf], a
    ld b, b
    add b
    rst $38
    push bc
    ld [bc], a
    jr nc, jr_008_5bf9

    rst $18
    add b
    or b
    ret nz

    ret nz

    rst $38
    ld a, a
    rst $38

jr_008_5bf9:
    ld bc, $0184
    xor [hl]
    adc c
    ld bc, $83f6
    inc b
    ld d, d
    ld bc, $fd03
    xor c
    sbc a
    rrca
    and b
    ret nz

    rst $38
    cp a
    and d
    cp h
    and h
    cp b
    xor b
    or b
    or c
    and b
    and b
    and d
    and l
    and b
    and e
    adc a
    ldh [rNR42], a
    dec b
    dec l
    dec e
    ld b, l
    xor l
    dec b
    dec l
    ld b, l
    dec d
    db $ed
    db $ed
    dec b
    and b
    xor e
    and [hl]
    or c
    xor c
    and b
    or [hl]
    xor c
    and [hl]
    cp c
    and b
    cp a
    xor a
    or b
    and b
    cp a
    dec l
    push bc
    rst $38
    rrca
    ld [hl], c
    sub c
    ld b, e
    ld [hl], a
    sub l
    rrca
    dec d
    db $d3
    xor a
    rrca
    ld b, l
    rlca
    and [hl]
    cp b
    and l
    cp b
    xor d
    or b
    or h
    and b
    cp a
    cp a
    and h
    dec b
    db $10
    inc bc
    ld a, a
    adc l
    dec b
    dec e
    ld b, e
    dec b
    dec l
    nop
    ld b, l
    and a
    adc a
    ld b, $bc
    ld b, e
    add b
    ld a, a
    add b
    ld b, e
    nop
    ld b, e
    ldh [$80], a
    nop
    ld a, b
    ld b, e
    add b
    ld a, a
    ldh [rNR44], a
    ld a, c
    add a
    ld bc, $01ff
    add a
    add hl, bc
    rrca
    dec d
    rla
    dec d
    ccf
    dec e
    rst $38
    ld bc, $e2ff
    rst $38
    cp a
    ld [c], a
    rst $38
    cp a
    cp a
    add b
    add a
    rst $38
    call z, $fffb
    rst $38
    ld a, a
    rst $38
    ld b, a
    rst $38
    push af
    ld c, a
    xor e
    adc a
    dec b
    rst $38
    rst $38
    rst $28
    ldh [rIE], a
    xor a
    ld b, e
    ei
    xor [hl]
    dec b
    rst $38
    xor [hl]
    ld sp, hl
    xor [hl]
    ld hl, sp-$51
    add h
    ld bc, $00ef
    rst $38
    ld b, e
    cp e
    xor $03
    rst $38
    xor $99
    ld h, [hl]
    add e
    dec b
    ld c, h
    inc de
    rst $28
    rrca
    rst $38
    jp hl


    cp a
    jp hl


    cp e
    db $ed
    ei
    db $ed
    cp e
    ld l, l
    dec sp
    db $ed
    db $fd
    cp $8a

jr_008_5ccd:
    add l
    cp d
    or l
    ld b, e
    or l
    xor d
    ld bc, $b5aa
    ld b, e
    and b
    cp a
    dec b
    ld c, a
    cp a
    add e
    ld a, l
    add e
    ld a, [hl]
    add e
    dec b
    ld b, l
    dec bc
    jr z, @+$01

    ld d, h
    rst $38
    xor d
    rst $38
    push af
    ld a, [$95aa]
    ld l, d
    ld d, l
    ld b, e
    call nc, $0aab
    jr z, jr_008_5ccd

    ld bc, $02ff
    rst $38
    ccf
    rst $38
    ld bc, $0df1
    ld b, h
    db $fd
    dec b
    dec b
    and l
    db $fd
    ld d, l
    db $fd
    xor l
    db $fd
    add l
    ld bc, $093f
    rst $38
    cp a
    ld a, [$f4bf]
    cp a
    rst $38
    cp a
    pop hl
    cp [hl]
    and a
    adc a
    ld bc, $fd0f
    call nz, $e081
    jr nz, jr_008_5d26

    or d
    or e
    sbc a
    sub e
    cp h

jr_008_5d26:
    sub h
    or a
    sbc h
    sub a
    cp h
    sbc h
    cp a
    xor h
    cp a
    add b
    add b
    pop af
    sub c
    db $fd
    sub c
    sbc l
    pop af
    cp c
    db $fd
    ret


    call $cdfd
    call $01fd
    ld bc, $038d
    ld b, b
    ld bc, $3fd8
    adc e
    inc bc
    ld d, b
    inc bc
    dec h
    and $19
    cp $84
    ld bc, $08f0
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    push af
    rst $38
    ld a, [$cbff]
    inc bc
    or d
    ld [bc], a
    ld d, l
    rst $38
    xor d
    adc a
    inc bc
    or b
    ld h, d
    ld b, l
    ei
    xor h
    ld bc, $aff8
    ld b, a
    ei
    xor h
    ld b, l
    rst $30
    ld [$0801], sp
    rst $38
    ld b, a
    rst $30
    ld [$fb45], sp
    dec l
    ld bc, $ed3b
    ld b, a
    ei
    dec l
    dec bc
    cp a

jr_008_5d84:
    cp a
    add e
    add c
    add c
    cp $8c
    di
    sbc [hl]
    db $ed
    adc h
    di
    add l
    inc b
    dec c
    add hl, bc
    add e
    add c
    ld bc, $187e
    rst $20
    inc a
    db $db
    jr jr_008_5d84

    call nz, $dd03
    dec bc
    db $fd
    add c
    add c
    ld bc, $197f
    rst $20
    dec a
    db $db
    add hl, de
    rst $20
    ld bc, $03d2
    or c
    rrca
    db $e3
    cp h
    rst $20
    cp b
    rst $38
    cp a
    db $fc
    and b
    ld hl, sp-$20
    or b
    ldh [$a0], a
    ldh [rIE], a
    rst $38
    ld b, h
    rst $38
    dec b
    inc bc
    db $fd
    rlca
    dec b
    rlca
    ld b, h
    rlca
    dec b
    ld a, [bc]
    rst $38
    rst $38
    rst $30
    ld [$7fff], sp
    ret nz

    push bc
    rst $38
    rst $38
    ret nz

    ld b, e
    push bc
    rst $38
    ld b, $7f
    ld sp, hl
    rrca
    ei
    db $fd
    ei
    dec c
    add e
    add e
    ld b, e
    dec bc
    db $fd
    ldh [rNR44], a
    ei
    db $fd
    db $eb
    dec a
    rst $38
    ccf
    rst $28
    jr nz, @+$01

    cpl
    dec sp
    xor $fb
    ld l, $ff
    ld l, $f9
    ld l, $f8
    cpl
    rst $38
    ld hl, sp-$11
    ld [$e8ff], sp
    cp b
    rst $28
    cp c
    xor $f9
    xor $b9
    ld l, [hl]
    add hl, sp
    xor $8f
    pop af
    ld b, l
    db $10
    rst $28
    and e
    nop
    ld d, $45
    ld [$d0f7], sp
    ld b, $ff
    inc b
    xor a
    rst $28
    and b
    rst $38
    cp a
    call nz, $1906
    ld [bc], a
    cp e
    and $99
    add [hl]
    ld b, $dd
    push bc
    ld b, $1a
    ld a, [bc]
    cp e
    ld h, [hl]
    sbc c
    rst $38
    rst $38
    ei
    db $ed
    db $eb
    dec c
    db $eb
    db $fd
    ld b, e
    db $eb
    cp l
    dec b
    ei
    cp l
    ld [hl], e
    adc l
    rst $38
    rst $38
    db $ec
    ccf
    add a
    ld bc, $0380
    or e
    rst $38
    or e
    call z, $0183
    adc h
    xor a
    adc a
    ld [de], a
    db $fd
    dec sp
    db $dd
    ld l, e
    rst $18
    ld h, [hl]
    ld e, a
    ldh [$df], a
    ld a, a
    ldh [$7f], a
    rst $00
    ld a, a
    rst $38
    ld a, a
    ei
    xor l
    ei
    ld b, l
    ld l, l
    cp e
    dec b
    db $ed
    ld a, e
    db $ed
    dec sp
    db $ed
    ei
    add [hl]
    rlca
    daa
    ld bc, $ef39
    ld b, a
    ei
    dec l
    ld b, l
    ld sp, hl
    xor [hl]
    ld bc, $efb8
    ld c, b
    ld sp, hl
    xor [hl]
    inc d
    xor $e9
    ld c, $e9
    cp $e8
    cp a
    jp hl


    cp [hl]
    ld sp, hl
    cp [hl]
    ld [hl], c
    adc [hl]
    ld bc, $fffe
    cpl
    rst $28
    jr nz, @+$01

    ccf
    jp $b907


    dec b
    rst $38
    dec sp
    and $19
    ldh a, [rIF]
    adc l
    ld [$8310], sp
    rlca
    ld c, h
    ld c, l
    and $80
    ld bc, $ffff
    ld c, l
    ld h, [hl]
    nop
    or c
    sbc a
    inc bc
    inc bc
    ld bc, $0103
    and e
    nop
    ld b, d
    sub c
    add a
    ld bc, $ffff
    sub c
    sub a
    ld b, a
    sbc c
    and $83
    ld b, $b4
    inc bc
    rst $08
    rst $38
    rst $38
    rst $38
    ld b, a
    sbc c
    ld h, [hl]
    rst $00
    ld [$b015], sp
    sbc a
    jp $0209


    inc bc
    add c
    rst $38
    add c
    add c
    add h
    add l
    dec b
    rst $38
    rst $38
    sbc l
    ld l, [hl]
    rst $38
    ei
    ld c, b
    rst $38
    sbc c
    ld b, $9d
    rst $38
    rst $38
    or c
    rst $38
    rst $38
    rst $18
    ld c, b
    ei
    sbc l
    ld bc, $ffbd
    jp nz, $8da8

    xor a
    ld b, l
    add c
    rst $38
    sbc c
    add a
    rst $08
    ld b, $ff
    sbc [hl]
    ld b, $00
    nop
    ld sp, hl

jr_008_5f0a:
    sub c
    ld b, $10
    adc d
    adc a
    ld [bc], a
    ld h, b
    ld b, $30
    add l
    adc a
    rlca
    ret nz

    add b
    call nz, $c080
    add b
    cp a
    add b
    add a
    ld [$080e], sp
    ld [hl], b
    jr nz, @+$73

    jr nz, @+$72

    jr nz, @-$4f

    jr nz, jr_008_5f0a

    add [hl]
    adc a
    ld b, l
    inc e
    ld [$eb02], sp
    ld [$86f7], sp
    adc a
    inc de
    rlca
    ld [bc], a
    ld b, a
    ld [bc], a
    rlca
    ld [bc], a
    ei
    ld [bc], a
    cp $ff
    adc $bb
    call nz, Call_008_4ebf
    cp a
    ld a, a
    ld a, a
    rst $30
    adc b
    ld b, e
    rst $30
    ld [$7708], sp
    adc b
    inc sp
    xor $31
    rst $28
    inc sp
    rst $28
    rst $38
    adc b
    rlca
    rla
    dec b
    adc h
    ei
    inc c
    ei
    adc h
    ei
    adc c
    adc a
    ld b, $e3
    cp [hl]
    ld b, e
    cp $e3
    cp $fe
    adc b
    adc a
    db $ec
    ccf
    adc a
    rlca
    nop
    inc b
    or $00
    ldh a, [rTMA]
    pop af
    add h
    rlca
    dec d
    ld b, e
    or $08
    add a
    add l
    inc d
    add hl, bc
    rst $38
    scf
    ld a, [bc]
    rst $10
    ld a, [bc]
    rla
    jp z, $0a36

    ret nc

    ld b, $11
    ret z

    scf
    ld [$fffe], sp
    inc bc
    ld bc, $a433
    ld a, [bc]
    ld c, c
    ldh [$29], a
    call z, $8cb3
    or e
    or d
    adc l
    xor $df
    pop af
    cp a
    adc [hl]
    rst $38
    ei
    ei
    or e
    sub l
    or b
    ld l, [hl]
    and [hl]
    ld l, c
    ld h, [hl]
    xor c
    ld a, e
    rst $30
    cp h
    rst $28
    inc hl
    rst $38
    cp $fe
    db $ec
    dec h
    ld l, a
    ld [$886b], sp
    ld [$debb], sp
    cp l
    ld l, a
    ei
    and e
    inc b
    sbc c
    dec d
    ei
    ld c, c
    scf
    jp z, $fa07

    sla [hl]
    cp $e7
    dec de
    cp $e3
    cp $bf
    cp [hl]
    ccf
    ld d, d
    ld [hl], a
    ld [$88f7], sp
    adc e
    rlca
    inc d
    ld bc, $0bf7
    ld b, e
    rst $30
    ld a, [bc]
    ld a, [bc]
    dec bc
    cp $f6
    ld a, [bc]
    rst $30
    dec bc
    or $0a
    rst $30
    ld a, [bc]
    rst $38
    adc b
    jp hl


    dec b
    rst $38
    rst $38
    ld de, $1dfd
    pop af
    ld b, l
    rst $30
    ld a, [bc]
    ld bc, $fe0b
    add l
    sbc l
    ld b, $f7
    ld a, [bc]
    add hl, de
    rst $30
    add hl, bc
    rst $38
    rlca
    rst $00
    ld b, $c9
    ld bc, $01ff
    ldh a, [rNR41]
    ld [$072f], sp
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    inc bc
    ld c, $0f
    ld [de], a
    inc de
    inc e
    dec e
    ld bc, $0101
    ld bc, $0101
    ld bc, $2c01
    dec l
    inc b
    dec b
    inc a
    dec a
    inc d
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld c, $0f
    inc e
    dec e
    inc e
    dec e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld a, [bc]
    ld de, $1716
    ld c, c
    ld c, c
    dec de
    dec de
    dec de
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0b01
    dec bc
    ld bc, $1b01
    dec de
    ld [hl+], a
    inc hl
    ld bc, $3201
    inc sp
    ld bc, $2401
    dec h
    ld bc, $3401
    dec [hl]
    ld bc, $0e01
    rrca
    ld c, $0f
    inc e
    dec e
    ld a, [hl+]
    dec hl
    ld bc, $3e01
    ccf
    ld bc, $3e01
    ccf
    ld c, $0f
    ld c, $0f
    inc e
    dec e
    inc e
    dec e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld c, $0f
    ld a, [hl+]
    dec hl
    inc e
    dec e
    jr nz, jr_008_60fc

    ld bc, $3001
    ld sp, $0101
    ld c, d
    ld c, e
    ld bc, $0801
    add hl, bc
    ld bc, $8901
    adc d
    ld bc, $a701
    xor b
    ld bc, $0101
    ld bc, $1e2e
    ld bc, $1801
    ld a, [de]
    ld bc, $0101

jr_008_60fc:
    ld bc, $0101
    ld bc, $1e01
    ld e, $1e
    ld e, $1a
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1e01
    cpl
    ld bc, $1a01
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9190
    sub c
    sub c
    sub b
    sub c
    sub c
    sub c
    sub b
    or b
    or c
    or d
    sub b
    or [hl]
    or a
    cp b
    ld a, [hl+]
    dec sp
    dec sp
    dec sp
    ld a, $3f
    ld a, [de]
    ld a, [de]
    ld a, $3f
    ld bc, $3e01
    ccf
    ld bc, $3b01
    dec sp
    dec sp
    dec sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2726
    ld bc, $3601
    scf
    ld bc, $2801
    add hl, hl
    ld bc, $3801
    add hl, sp
    ld b, b
    ld b, c
    ld b, d
    dec hl
    ld d, b
    ld d, c
    ld d, d
    ld b, l
    ld b, e
    ld b, h
    ld e, h
    ld e, l
    ld d, e
    ld d, h
    rra
    ld d, l
    inc c
    dec c
    inc c
    dec c
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    inc c
    dec c
    inc c
    dec c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    call nz, $c6c5
    rst $00
    call nc, $d6d5
    rst $10
    ret z

    ret


    jp z, $d8cb

    sub c
    sub c
    sub c
    ld c, $0f
    ld c, $0f
    inc e
    dec e
    ld a, [hl+]
    dec hl
    ld bc, $3e01
    ccf
    ld bc, $3e01
    ccf
    inc b
    dec b
    ld c, $0f
    inc d
    dec d
    inc e
    dec e
    ld bc, $0101
    ld bc, $0101
    ld bc, $2c01
    dec l
    ld [bc], a
    inc bc
    inc a
    dec a
    ld [de], a
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a01
    dec sp
    dec sp
    dec sp
    ld a, $3f
    ld a, [de]
    ld a, [de]
    ld a, $3f
    ld a, [hl-]
    ld a, [hl-]
    ld a, $3f
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    dec sp
    dec sp
    dec hl
    ld a, [de]
    ld a, [de]
    ld a, $3f
    ld a, [hl-]
    ld a, [hl-]
    ld a, $3f
    ld a, [hl-]
    ld a, [hl-]
    ld a, $3f
    ld a, $3f
    ld a, [hl-]
    ld a, [hl-]
    inc c
    dec c
    inc c
    dec c
    ld c, $0f
    ld c, $0f
    inc e
    dec e
    inc e
    dec e
    ld a, [hl-]
    ld a, [hl-]
    ld a, $3f
    inc c
    dec c
    inc c
    dec c
    ld c, $0f
    ld c, $0f
    inc e
    dec e
    inc e
    dec e
    ld bc, $0101
    ld bc, $0101
    ld b, [hl]
    ld a, [hl-]
    ld bc, $4601
    ld a, [hl-]
    ld bc, $4601
    ld a, [hl-]
    ld bc, $0101
    ld bc, $473a
    ld bc, $3a01
    ld b, a
    ld bc, $3a01
    ld b, a
    ld bc, $0101
    ld bc, $2322
    ld bc, $3201
    inc sp
    ld bc, $2401
    dec h
    ld bc, $3401
    dec [hl]
    inc c
    dec c
    inc c
    dec c
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    jr nz, jr_008_6274

    ld c, b
    ld c, b
    jr nc, @+$33

    ld c, b
    ld c, b
    ld a, $3f
    ld c, b
    ld c, b
    ld a, $3f
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld h, $27
    ld c, b
    ld c, b
    ld [hl], $37
    ld c, b
    ld c, b
    jr z, jr_008_6296

    ld c, b
    ld c, b
    jr c, @+$3b

    sub [hl]
    sub [hl]
    sub [hl]

jr_008_6274:
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0b01
    dec bc
    ld bc, $1b01
    dec de
    ld bc, $0e01
    rrca
    ld de, $1c0a

jr_008_6296:
    dec e
    ld c, c
    ld c, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $1101
    ld de, $0d0c
    ld a, [hl+]
    dec hl
    ld d, b
    ld d, c
    ld a, $3f
    ld d, b
    ld d, c
    ld a, $3f
    ld e, [hl]
    ld e, a
    ld c, b
    ld c, b
    ld h, $27
    ld c, b
    ld c, b
    ld [hl], $37
    ld c, b
    ld c, b
    jr z, jr_008_62e6

    ld c, b
    ld c, b

Call_008_62bf:
    jr c, @+$3b

    ld e, $2f
    ld c, b
    ld c, b
    ld a, [de]
    add hl, de
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    dec bc
    dec bc
    dec bc
    dec bc
    dec de
    dec de
    dec de
    dec de
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b

jr_008_62e6:
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    dec sp
    dec sp
    dec sp
    dec sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $2601
    daa
    ld bc, $3601
    scf
    ld bc, $2801
    add hl, hl
    ld bc, $3801
    add hl, sp
    ld e, $1e
    ld e, $1e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, $3f
    ld bc, $3e01
    ccf
    ld bc, $2e01
    ld e, $1e
    ld e, $18
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld c, $0f
    inc b
    dec b
    inc e
    dec e
    inc d
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $c001
    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $90d3

    sub c
    reti


    jp c, $9190

    db $db
    call c, $8181
    add c
    add c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub b
    sub c
    ld [hl+], a
    inc hl
    sub b
    sub c
    ld [hl-], a
    inc sp
    sub b
    sub c
    inc h
    dec h
    sub b
    sub c
    adc e
    adc h
    sub b
    sub c
    sub c
    sub c
    sub b
    sub c
    sub c
    sub c
    and b
    and c
    and c
    and c
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    and c
    and c
    and c
    and c
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub c
    sub c
    sbc c
    sbc d
    sub c
    sub c
    xor c
    xor d
    and c
    and c
    and c
    and d
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub c
    sub c
    sub c
    sub d
    sub c
    sub c
    sub c
    sub d
    sub c
    sub c
    sbc c
    sbc d
    sub c
    sub c
    xor c
    xor d
    add c
    add c
    add c
    add d
    sub c
    sub c
    sub c
    sub d
    sub c
    sub c
    sub c
    sub d
    sub c
    sub c
    sub c
    sub d
    xor [hl]
    xor a
    xor a
    xor a
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    add c
    add c
    add c
    add c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    add a
    adc b
    sub c
    sub c
    sub a
    sbc b
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    add e
    add h
    add l
    add [hl]
    sub e
    sub h
    sub h
    sub l
    and c
    and c
    and c
    and c
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    add c
    add c
    add c
    sbc h
    adc [hl]
    adc [hl]
    adc [hl]
    xor h
    sbc [hl]
    sbc [hl]
    sbc [hl]
    xor h
    ld bc, $0101
    xor h
    sbc e
    add c
    add c
    add c
    xor e
    adc l
    adc [hl]
    adc [hl]
    xor e
    sbc [hl]
    sbc [hl]
    sbc [hl]
    xor e
    sbc [hl]
    ld bc, $af01
    xor a
    xor a
    xor l
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub b
    or b
    or c
    or d
    sub b
    cp c
    cp d
    or e
    sub b
    cp e
    cp h
    or l
    sub b
    cp l
    cp [hl]
    cp b
    rlca
    rlca
    rlca
    rlca
    ld a, d
    rlca
    nop
    nop
    rlca
    ld a, d
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    sub b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    sub b
    nop
    rlca
    nop
    rlca
    nop
    nop
    sub b
    nop
    nop
    sub b
    sub b
    nop
    nop
    sub b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    sub b
    sub b
    sub b
    nop
    sub b
    sub b
    nop
    nop
    nop
    sub [hl]
    nop
    sub [hl]
    rlca
    rlca
    sub [hl]
    sub [hl]
    rlca
    rlca
    sub [hl]
    sub [hl]
    rlca
    rlca
    sub [hl]
    sub [hl]
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    sub b
    ld a, d
    rlca
    nop
    nop
    rlca
    ld a, d
    nop
    nop
    sub b
    sub b
    sub b
    nop
    sub b
    sub b
    nop
    sub b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    halt
    halt
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    sub b
    nop
    sub b
    nop
    nop
    sub [hl]
    nop
    sub [hl]
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    sub b
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    sub b
    sub b
    nop
    sub [hl]
    nop
    sub [hl]
    sub b
    sub b
    sub b
    nop
    sub b
    sub b
    rlca
    ld a, d
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    ld [hl], d
    ld bc, $007f
    ld c, d
    ld b, b
    nop
    ld b, l
    ld e, $01
    ld b, l
    ld [c], a
    dec e
    inc bc
    cp $01
    nop
    rst $38
    ld h, d
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld c, b
    rst $38
    nop
    inc b
    rra
    rlca
    ld a, [hl]
    ld a, h
    ld c, [hl]
    ld c, b
    ld b, h
    adc $04
    ld c, [hl]
    call nz, $ffff
    ld bc, HeaderMaskROMVersion
    db $fd
    and e
    adc a
    add hl, bc
    cp b
    add a
    or b
    adc a
    and b
    sbc a
    add b
    cp a
    add c
    cp [hl]
    call nz, $848a
    and b
    dec c
    ld b, c
    cp l
    pop hl
    dec e
    pop af
    dec c
    ld bc, $8001
    or b
    and b
    sub l
    add b
    xor l
    dec h
    add b
    rlca
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $810d
    dec l
    and e
    adc a
    nop
    push de
    and [hl]
    adc a
    add l
    nop
    db $10
    inc bc
    rra
    ld e, a
    jr nz, @+$62

    ld b, l
    jr nz, jr_008_6601

    xor a
    adc a
    ld d, b
    rst $38
    nop
    ld bc, $00ff
    sub b
    adc a
    ld [bc], a
    db $fd
    nop
    rst $38
    add [hl]
    add e
    ld h, c
    rrca
    ret nz

    ld b, b
    ld b, b
    cp $f8
    ld [hl], d
    ld l, b
    ld a, [$7eb4]
    inc [hl]
    ld a, [hl]
    ld [hl], h
    cp $e4
    cp $84
    rst $08
    ld c, d
    ld [bc], a
    ld hl, sp+$49
    rra
    ld b, b
    push bc
    nop
    ld d, $ab
    nop
    inc d
    inc bc
    nop
    cp $00
    nop
    adc [hl]
    add sp, $00
    nop
    ld c, a
    ld c, [hl]
    ld b, h
    nop
    ld c, c
    ld c, [hl]
    ld bc, $07fd
    cp a
    rra
    ld [hl], c
    ld h, b
    cp a
    cp a
    or c
    and b
    add l
    add e
    rlca
    add c
    add c
    inc sp
    inc sp
    call c, $f7cc
    rst $38
    add l
    add e
    add e
    jp nz, $1c07

    inc e
    and $e6
    cp l
    db $fd
    and l
    push hl
    add e
    add e
    and e
    sbc a
    db $10

jr_008_6601:
    rlca
    rlca
    rra
    jr jr_008_663f

    ld h, $76
    ld c, c
    ld e, c
    ld h, [hl]
    rst $08
    or b
    or b
    rst $08
    sbc a
    ldh [rNR41], a
    ld b, e
    ld h, b
    ccf
    ld b, $6f
    jr c, jr_008_6688

    jr z, jr_008_669a

    jr c, jr_008_6699

    add e
    ld bc, $aa1c
    adc a
    nop
    ld e, $83
    ld bc, $4f2c
    cp a
    add b
    ld c, a
    db $fd
    inc bc
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    add [hl]
    nop
    cpl
    add e
    adc b
    ld bc, $32ff
    ld b, e
    ld [c], a
    ld a, [c]
    ld [hl+], a
    ld [bc], a

jr_008_663f:
    rla
    cp $fe
    inc c
    db $f4
    call z, Call_008_7cf4
    db $fc
    inc bc
    inc bc
    ld a, h
    inc c
    ld [hl], b
    inc de
    ld h, e
    cpl
    ld h, l
    inc l
    ld c, [hl]
    ld e, l
    ld c, e
    ld e, a
    ld c, l
    ld e, a
    and e
    adc a
    inc c
    ld l, [hl]
    add sp, $36
    sub h
    sub $b4
    ld a, [c]
    ld a, [$3a6a]
    cp d
    ld a, d
    add b
    ld b, e
    rst $38
    cp a
    ld [bc], a
    db $e4
    and h
    db $e4
    push bc
    add c
    ld bc, $c0bf
    xor a
    adc a
    dec b
    rla
    ld e, b
    jr jr_008_66da

    rra
    ld d, a
    ld b, e
    ld e, $51
    inc bc
    ld c, $49
    rlca
    ld a, a

jr_008_6685:
    ld h, c
    inc b
    adc b

jr_008_6688:
    ld a, d
    jr jr_008_6685

    add sp, $44
    ld a, [$0108]
    db $10
    ld a, [c]
    and e
    adc a
    ld [de], a
    rst $38
    add c
    rst $38
    rst $38

jr_008_6699:
    cp a

jr_008_669a:
    rst $38
    and c
    di
    rst $38
    cp a
    cp a
    and c
    cp a
    cp a
    add b
    add b
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld h, $05
    rst $20
    ld h, $3e
    ld a, $ff
    rst $38
    add l
    sbc a
    ld b, e
    dec h
    rst $38
    nop
    rst $38
    ld [hl+], a
    dec h
    and e
    sbc a
    rla
    add b
    rst $38
    ld b, a
    ld a, b
    ld b, b
    ld a, a
    jr nz, jr_008_6705

    ld e, b
    ld a, a
    ld b, a
    ld a, a
    ld [hl], e
    ld c, a
    ld a, [hl+]
    scf
    cp a
    call c, $dcb7
    and e
    call c, $c0bf
    ld b, e
    cp a
    rst $18
    add hl, bc

jr_008_66da:
    or l
    jp c, $dbb7

    db $fd
    ei
    db $ed
    cp e
    db $fd
    ei
    and l
    adc a
    inc de
    ld e, l
    xor e
    db $dd
    db $eb
    ldh [$e0], a
    cp b
    ld e, b
    call nc, $d62c
    ld a, [hl+]
    or [hl]
    ld c, d
    dec h
    db $db
    jp hl


    rla
    sbc c
    ld h, a
    cpl
    rst $38
    rrca
    ld bc, $02ff
    add d
    dec b
    cp h
    dec bc

jr_008_6705:
    cp b
    rla
    or b
    cpl
    and b
    ld e, a
    ret nz

    cp a
    add b
    and h
    adc a
    ldh [rNR50], a
    ld a, l
    ret nc

    dec a
    add sp, $1d
    db $f4
    dec c
    ld a, [$fd07]
    inc bc
    ld e, e
    ld d, a
    ld d, [hl]
    ld e, l
    ld l, h
    cpl
    ld h, e
    cpl
    ld [hl], b
    inc de
    ld l, h
    inc e
    ld [hl], e
    rrca
    inc b
    inc bc
    ld a, [c]
    ld a, [$fab2]
    sub $b4
    and [hl]
    ld [hl], h
    ld a, [bc]
    call z, $8fa5
    nop
    add b
    ld [hl+], a
    rst $38
    dec b
    rst $28
    sbc a
    add sp, -$61
    db $eb
    sbc h
    and d
    rlc d
    rst $38
    rst $38
    rst $38
    xor a
    adc a
    ld c, c
    rra
    ld b, b
    dec b
    ld bc, $7f41
    ld a, a
    cp a
    pop hl
    add a
    ld bc, $1124
    ld a, h
    ld a, [hl]
    adc a
    add e
    dec sp
    ld a, c
    rst $00
    ld bc, $ffff
    xor b
    rst $38
    cp a
    rst $38
    rst $28
    xor b
    cp a
    cp a
    add h
    ld [bc], a
    ld l, h
    ld [hl+], a
    rst $38
    add hl, bc
    add h
    rst $38
    rst $38
    db $fc
    db $fc
    add h
    add a
    add a
    rst $38
    rst $38
    push bc
    ld bc, $06e6
    add l
    rst $38
    db $fd
    rst $38
    rst $00
    cp l
    cp l
    and l
    ld [bc], a
    ld l, e
    db $10
    rst $38
    rra
    ld e, $03
    ld a, [hl]
    ld c, $4f
    rra
    ld d, [hl]
    inc a
    ld l, a
    dec a
    ld l, [hl]
    ld a, $6f
    cpl
    ld [hl], a
    ld b, l
    or a
    db $db
    ld bc, $dab5
    ld b, h
    cp a
    rst $18
    ld [bc], a
    ret nz

    rst $38
    ld a, a
    add l
    ld [bc], a
    cp d
    ld bc, $ab5d
    and a
    adc a
    rrca
    ld sp, $facf
    ld a, $46
    cp $b2
    adc $ca
    or [hl]
    ld a, [c]
    adc [hl]
    ld b, h
    db $fc
    ld hl, sp+$78
    xor a
    ld bc, $e0f0
    ld h, e
    rst $38
    and b
    ld a, a
    ret nc

    ccf
    xor b
    rra
    or h
    rrca
    cp d
    rlca
    cp l
    inc bc
    cp [hl]
    ld bc, $fdbf
    rlca
    ld a, [$f70f]
    dec e
    ld [$d63f], a
    ld a, l
    xor d
    rst $38
    ld d, h
    db $fd
    xor b
    db $fd
    pop hl
    or l
    and c
    cp e
    xor [hl]
    or c
    pop hl
    or b
    and b
    rst $38
    xor [hl]
    cp $a0
    rst $38
    rst $38
    ld a, a
    add e
    rst $38
    rst $38
    ld a, a
    add a
    rst $38
    db $fd
    ld a, a
    ld bc, $39ff
    ei
    ld bc, $ffff
    cp $ab
    rst $38
    ld a, [hl]
    or [hl]
    ld a, [$71ce]
    xor a
    call nc, Call_008_62bf
    cp e
    ldh [rIE], a
    sbc h
    sbc [hl]
    xor d
    rst $38
    ld a, a
    ld l, l
    ld d, [hl]
    ld a, e
    adc a
    push af
    ld a, [hl+]
    db $fd
    ld b, a
    db $dd
    ld b, $ff
    cp c
    ld a, c
    rst $38
    ret nz

    cp a
    and b
    ld [hl+], a
    sbc a
    ld [bc], a
    add b
    sbc a
    adc a
    ld b, e
    sbc b
    adc b
    dec bc
    rst $18
    rst $08
    rst $38
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld sp, hl
    rlca
    ld sp, hl
    rst $30
    ld b, e
    add hl, de
    rla
    ld bc, $f7fb
    ld h, c
    dec c
    inc bc
    ld a, a
    inc c
    ld c, a
    db $10
    ld e, a
    jr nz, jr_008_68d0

    inc hl
    ld a, a
    inc h
    ld a, a
    jr c, jr_008_68d6

    ld h, c
    dec c
    add b
    cp $60
    ld [c], a
    db $10
    ld a, [c]
    ld [$88fa], sp
    ld a, [$fa48]
    jr c, @-$04

    jp Jump_008_6f03


    dec hl
    cp a
    add e
    inc bc
    ld a, d
    adc e
    ld [bc], a
    jp nc, $9faf

    inc hl
    cp a
    cp e
    adc a
    ld c, a
    rst $38
    nop
    ld b, $83
    add b
    ld h, a
    ldh [$3f], a
    ld hl, sp+$07
    rst $00
    ld bc, $0d35
    rst $38
    pop bc
    ccf
    and $1f
    db $fd
    rra
    ld [$55ff], a
    rst $38
    nop
    rst $38
    nop
    call $e300
    add h
    ld bc, $02e9
    rst $38
    cp $01
    add h
    ld [bc], a
    jr nc, jr_008_68a5

    ld d, a
    db $fd

jr_008_68a5:
    xor a
    ld b, h
    db $fd
    rlca
    db $10
    xor e
    sbc e
    call nc, $337c
    rst $38
    ld d, b
    ld hl, sp-$28
    cp b
    db $ec
    cp h
    db $e3
    xor e
    db $fc
    sbc a
    db $d3
    xor [hl]
    adc a
    add [hl]
    inc b
    ld b, d
    ld [$9f80], sp
    add b
    ld e, a
    ret nz

    cp a
    ld h, b
    rra
    rst $38
    add [hl]
    inc b
    ld d, d
    ld d, $07
    ld sp, hl

jr_008_68d0:
    rlca
    ld a, [$fd07]
    ld b, $fc

jr_008_68d6:
    rst $38
    inc l
    ld l, a
    inc hl
    ld h, e
    jr nz, jr_008_694d

    db $10
    ld e, h
    db $10
    ld d, e
    inc c
    ld c, h
    inc bc
    ld a, a
    ld h, c
    dec c
    ld l, b
    ld [$8a88], a
    ld [$101a], sp
    ld [hl], d
    db $10
    sub d
    ld h, b
    ld h, d
    add b
    cp $61
    call $8f04
    nop
    add b
    adc $04
    and b
    ld bc, $ff00
    or b
    sbc a
    ld bc, $0000
    add $04
    sub [hl]
    ld bc, $c0ff
    add e
    add l
    ld c, a
    rst $38
    add b
    or c
    adc a
    ld [bc], a
    add b
    rst $38
    rst $38
    add l
    add h
    inc b
    ret nz

    add b
    add b
    rst $38
    rst $38
    xor d
    adc a
    nop
    pop bc
    add e
    add l
    ld b, $3f
    ccf
    ld b, d
    ld h, b
    add e
    ld [c], a
    ld b, e
    ld c, b
    ld [c], a
    jp $fc05


    db $fc
    ld [bc], a
    ld [bc], a
    db $fd
    dec bc
    ld c, c
    db $fd
    inc bc
    or c
    adc a
    xor l
    xor a
    ld [bc], a
    db $fd
    ld bc, $cbfc
    nop
    db $dd
    nop
    nop
    xor a
    ld bc, $4f50
    ld [hl-], a
    ld h, d

jr_008_694d:
    rrca
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    ret nz

    ld e, a
    ret nz

    ld d, b
    call nz, $c052
    ld d, b
    jp $a954


    adc a
    dec b
    add e
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld h, e
    ld a, [bc]
    add e
    dec b
    db $e4
    dec bc
    adc a
    cp [hl]
    sub c
    or c
    cp e
    sub c
    or c
    sbc a
    cp l
    sbc a
    and e
    and e
    sub c
    nop
    ret nc

    ld bc, $0101
    ld b, e
    pop af
    dec c
    inc bc
    db $fd
    ld [hl], c
    adc l
    adc c
    and e
    and e
    ld bc, $a3b6
    ld b, l
    and e
    cp [hl]
    ld b, $9f
    cp h
    adc a
    or b
    add b
    add b
    rst $38
    call z, $839d
    dec b
    cp h
    ld b, e
    adc l
    ld sp, hl
    ld [bc], a
    db $fd
    ld [hl], c
    db $fd
    add d
    or e
    and l
    sbc a
    ld l, a
    ld c, l
    jp $02e2


    sbc $e3
    db $fd
    rlc [hl]
    rra
    ld [bc], a
    inc bc
    ld bc, $afff
    adc a
    or b
    xor a
    xor [hl]
    ld b, $41
    xor a
    nop
    ld d, b
    inc bc
    xor $e1
    ld a, $7f
    ld c, e
    ld [hl-], a
    ld h, e
    ld [bc], a
    ret nz

    ld d, b
    push bc
    ld b, l
    ld d, b
    ret nz

    dec bc
    ld e, a
    ret nz

    ld b, b
    rst $38
    ld a, a
    rst $38
    nop
    inc bc
    ld a, [bc]
    inc bc
    adc d
    inc hl
    xor d
    adc a
    add e
    inc bc
    dec hl
    add hl, bc
    inc e
    ld d, a
    jr @+$61

    rra
    ld d, c
    ld e, $52
    ld e, $7f
    push bc
    nop
    and c
    inc b
    dec a
    ld a, [c]
    db $fd
    jp nz, $83fd

    ld bc, $b329
    adc a
    rlca
    ld bc, $ffff
    dec l
    ld a, [$fa1d]
    db $fd
    and h
    xor a
    db $ec
    ld sp, $bf03
    rst $38
    ld b, d
    ldh [$8b], a
    ld b, $04
    ld [bc], a
    db $fd
    rst $38
    inc bc
    call z, $1d07
    or c
    adc a
    xor l
    xor a
    rrca
    rrca
    rrca
    rra
    db $10
    ccf
    jr c, jr_008_6a9f

    ld b, h
    ld c, a
    ld b, h
    ld c, h
    ld b, a
    db $fc
    add $c5
    rst $38
    and e
    adc a
    ld b, l
    db $f4
    inc b
    rlca
    inc b
    db $fc
    and a
    xor a
    rst $30
    db $fd
    ld a, a
    ld a, a
    adc c
    rlca
    ld d, d
    rlca
    ret nz

    cp a
    rst $38
    rst $38
    cp $fe
    inc bc
    ld bc, $fd47
    inc bc
    and h
    ld b, $cd
    ld c, e
    cp a
    nop
    add hl, bc
    add b
    nop
    rst $38
    ld d, b
    db $fd
    and b
    db $fd
    ld b, b
    db $fd
    add b
    and a
    adc a
    nop
    rst $38
    db $ec
    ld e, a
    dec b
    add e
    rst $38
    rlca
    db $fc
    adc h
    ei
    ld c, c
    sbc b
    rst $30
    rlca
    db $fd
    rst $38
    ei
    rlca
    ld bc, $3dff
    ei
    add a
    add e
    ld bc, $ffbf
    add e
    ld [$0121], sp
    db $fc
    cp e
    add a
    add e
    and e
    xor a
    nop
    ld de, $ff4a
    add hl, bc
    rra
    call nz, $c5fe
    rst $38
    call nz, $c4fe
    rst $38
    cp c
    cp a
    sub c
    sbc a
    adc a
    adc a
    add b
    add b
    and l
    xor a
    push af
    rst $38
    and l
    xor a
    dec b
    rst $38
    push bc
    rst $38

jr_008_6a9f:
    rst $00
    db $fd
    rst $38
    ld sp, hl
    ld bc, $ec01
    sbc a
    ld b, e
    sbc b
    rst $30
    nop
    ld a, a
    jp $d903


    inc bc
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    ld [hl+], a
    ld a, a
    nop
    ld bc, $02c5
    pop hl
    nop
    ld bc, HeaderCGBFlag
    rst $38
    inc bc
    dec c
    rst $38
    rst $38
    rst $38
    jp $2307


    xor e
    adc a
    ld b, e
    add hl, bc
    rst $38
    xor e
    xor a
    ld bc, $7fff
    add l
    inc b
    add d
    ld [bc], a
    or l
    cp a
    xor d
    ld b, h
    cp a
    and b
    adc a
    dec b
    db $10
    db $ed
    sbc a
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
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    rla
    jr @+$28

    daa
    daa
    jr z, jr_008_6b70

    scf
    scf
    jr c, @+$13

    ld [de], a
    ld de, $0112
    db $10
    ld a, [bc]
    dec bc
    ld de, $1a12
    dec de
    ld bc, $0a10
    dec bc
    ld de, $1a12
    dec de
    ld a, [bc]
    dec bc
    ld bc, $1a10
    dec de
    ld de, $0a12
    dec bc
    ld bc, $1a10
    dec de
    ld de, $a012
    and c
    and d
    and e
    sub b
    sub c
    sub d
    sub e
    and b
    and c
    and d
    and e
    sub b
    sub c
    sub d

jr_008_6b70:
    sub e
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    add b
    add c
    add d
    add e
    sub b
    sub c
    sub d
    sub e
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    ld c, $0e
    ld c, $0e
    ld e, $1e
    ld e, $1e
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    ld c, $0e
    sub h
    add [hl]
    ld e, $1e
    ld e, $1f
    and b
    and c
    and d
    and e
    sub b
    sub c
    sub d
    sub e
    or b
    or c
    or d
    or e
    ret nz

    pop bc
    jp nz, $01c3

    db $10
    ld bc, $1110
    ld [de], a
    ld de, $0312
    inc bc
    inc bc
    inc bc
    inc de
    inc de
    inc de
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    and [hl]
    and a
    and [hl]
    and a
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    call nz, Call_008_4d51
    ld c, l
    ld c, $0e
    ld c, $0e
    ld e, $1e
    ld e, $1e
    add a
    adc b
    ld c, l
    ld c, l
    sub a
    sbc b
    ld c, l
    ld c, l
    ld c, $0e
    ld c, $0e
    ld e, $1e
    ld e, $1e
    add hl, de
    inc l
    add hl, de
    inc l
    add hl, hl
    inc a
    add hl, hl
    inc a
    add hl, sp
    rrca
    add hl, sp
    rrca
    inc h
    dec h
    inc h
    dec h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld bc, $1410
    dec d
    ld de, $1412
    dec d
    ld bc, $1410
    dec d
    ld de, $1412
    add h
    ld c, $0e
    dec a
    ld e, $1e
    ld e, $2e
    dec c
    dec c
    cpl
    inc e
    inc c
    inc c
    dec e
    ld a, $50
    ld d, b
    ccf
    xor b
    ld c, [hl]
    ld c, a
    xor c
    inc d
    dec d
    ld bc, $1410
    dec d
    ld de, $1412
    dec d
    ld bc, $1410
    dec d
    ld de, $1412
    dec d
    ld bc, $1410
    dec d
    ld de, $1412
    add h
    ld c, $0e
    dec a
    ld e, $1e
    ld e, $01
    db $10
    ld bc, $1110
    ld [de], a
    ld de, $0e12
    ld c, $0e
    ld c, $1e
    ld e, $1e
    ld e, $0a
    dec bc
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8510
    add [hl]
    ld de, $8512
    add [hl]
    ld c, $0e
    sub h
    add [hl]
    ld e, $1e
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub l
    sub [hl]
    ld bc, $8510
    add [hl]
    ld de, $8512
    add [hl]
    ld bc, $4210
    ld b, e
    ld de, $5212
    ld d, e
    ld bc, $4410
    ld b, l
    ld de, $5412
    ld d, l
    ld b, d
    ld b, e
    ld bc, $5210
    ld d, e
    ld de, $4412
    ld b, l
    ld bc, $5410
    ld d, l
    ld de, $0112
    db $10
    ld bc, $1110
    ld [de], a
    ld de, $0112
    db $10
    ld b, [hl]
    ld b, a
    ld de, $5612
    ld d, a
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    ld e, c
    ld e, c
    ld e, c
    ld e, h
    ld c, l
    ld c, l
    ld c, l
    ld e, [hl]
    ld e, e
    ld e, e
    ld e, e
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld e, c
    ld e, c
    ld e, c
    ld e, d
    ld c, l
    ld c, l
    ld c, l
    ld e, l
    ld e, e
    ld e, e
    ld e, e
    ld e, a
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    ld c, h
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, e
    dec l
    dec l
    dec l
    ld c, e
    dec l
    dec l
    dec l
    ld c, e
    dec l
    dec l
    dec l
    ld c, e
    dec l
    dec l
    dec l
    ld c, e
    dec l
    dec l
    dec l
    ld c, e
    dec l
    dec l
    dec l
    ld c, e
    dec l
    dec l
    dec l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    ld bc, $0110
    db $10
    inc [hl]
    dec [hl]
    ld de, $4012
    ld b, c
    ld c, $0e
    ld e, $1e
    ld e, $1e
    ld [bc], a
    ld [bc], a
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [$0109], sp
    db $10
    ld bc, $1110
    ld [de], a
    ld de, $0212
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $4610
    ld b, a
    ld de, $5612
    ld d, a
    add hl, de
    inc l
    ld bc, $2910
    inc a
    ld de, $3912
    rrca
    ld bc, $2410
    dec h
    ld de, $0212
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and h
    and l
    ld bc, $b410
    or l
    ld de, $3212
    inc sp
    ld bc, $0110
    db $10
    ld de, $1112
    ld [de], a
    ld bc, $0110
    db $10
    ld l, $0d
    dec c
    cpl
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0110
    db $10
    ld l, $0d
    dec c
    cpl
    inc e
    jr nz, jr_008_6df5

    dec e
    inc e
    jr nc, jr_008_6e09

    dec e
    ld a, $50
    ld d, b
    ccf
    xor b
    ld c, [hl]
    ld c, a
    xor c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc c
    adc d
    ld a, [bc]
    dec bc
    adc h
    adc l
    ld a, [de]
    dec de
    sbc c
    sbc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_6df5:
    adc d
    adc e
    ld [bc], a
    ld [bc], a
    adc l
    adc [hl]
    ld a, [bc]
    dec bc
    sbc e
    sbc h
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_6e09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca

Jump_008_6f03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    sub b
    sub b
    nop
    nop
    sub b
    sub b
    nop
    nop
    sub b
    sub b
    nop
    nop
    sub b
    sub b
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sub b
    sub b
    rlca
    rlca
    sub b
    sub b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sub b
    nop
    sub b
    nop
    sub b
    sub b
    rlca
    rlca
    rlca
    rlca
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    sub b
    nop
    nop
    sub b
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    sub b
    rlca
    rlca
    nop
    sub b
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    sub b
    sub b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1ffa
    ld b, a
    ld [bc], a
    rst $38
    ld h, $ff
    inc b
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld b, a
    ld sp, hl
    rlca
    ldh [$32], a
    ei
    rlca
    rst $38
    rst $38
    sbc l
    sbc h
    xor a
    and d
    cp e
    and [hl]
    cp a
    cp [hl]
    and d
    cp a
    xor h
    sbc a
    or b
    adc a
    rst $38
    rst $38
    ld a, a
    add hl, sp
    rst $18
    ld b, l
    rst $30
    ld c, l
    rst $38
    ld a, l
    push bc
    ld a, a
    reti


    ccf
    pop hl
    rra
    ld [$40f7], sp
    cp a
    dec d
    ld [$5dbe], a
    db $e3
    ld [hl+], a
    db $e3
    db $e3
    ld de, $f32e
    rst $28
    nop
    ld b, h
    rst $38
    nop
    ld [de], a
    ld bc, $0fff
    rst $38
    and $f7
    adc h
    rst $08
    ld [$010f], sp
    rst $38
    inc e
    db $fc
    ld a, b
    ld hl, sp-$10
    ld hl, sp-$70
    ld b, h
    ldh a, [rNR10]
    ld bc, $f011
    add e
    sbc l
    ld [bc], a
    ccf
    rst $38
    ld b, b
    ld c, b
    ret nz

    ld a, a
    ld b, [hl]
    rst $38
    nop
    nop
    inc e
    add a
    cp a
    ld [bc], a
    add b
    rst $38
    rst $38
    ld c, h
    ld a, [hl]
    or l
    ld bc, $ffff
    ld l, e
    ld bc, $00ff
    or e
    rst $08
    xor e
    rst $28
    nop
    nop
    ld c, [hl]
    rst $38
    nop
    add [hl]
    add d
    ld [bc], a
    rst $38
    xor d
    ld d, l
    and l
    add c
    ld b, $1e
    db $e3
    ld [bc], a
    rst $38
    inc c
    rst $38
    jr c, @+$25

    rst $38
    ld bc, $80e0
    and l
    nop
    dec c
    ld [bc], a
    and b
    sbc a
    sbc a
    ld b, a
    sbc a
    add b
    ld bc, $c0df
    adc b
    or a
    nop
    rst $38
    call nz, $01f5
    rst $38
    rst $38
    ld c, e
    rst $38
    add b
    or d
    adc a
    dec b
    ld hl, sp-$04
    ldh a, [$f0]
    ldh [$e0], a
    ld [hl+], a
    ret nz

    ld c, $c1
    add [hl]
    adc a
    adc [hl]
    cp a
    adc [hl]
    rst $38
    nop
    rra
    db $10
    rra
    inc de
    rra
    rra
    ld a, a
    ld b, a
    rra
    rst $38
    nop
    scf
    ld c, b
    ldh a, [rIE]
    nop
    rst $30
    ld b, h
    ld hl, sp-$01
    ld bc, $c07f
    xor l
    nop
    ld [bc], a
    ld b, a
    di
    ld l, $07
    ld [hl-], a
    rst $28
    inc d
    rst $38
    pop hl
    ld e, $ff
    nop
    ld c, e
    or l
    ld a, [hl]
    ld [bc], a
    inc [hl]
    rst $38
    db $76
    adc $00
    ldh [rP1], a
    nop
    or b
    rst $08
    xor [hl]
    rst $28
    or b
    ld bc, $c93f
    nop
    rst $28
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    res 7, [hl]
    dec h
    rst $38
    or b
    nop
    ldh a, [$4c]
    rst $38
    add c
    ld bc, $ffff
    ld a, a
    rlca
    adc h
    rst $38
    add b
    cp $80
    ldh a, [$80]
    ret nz

    dec h
    add b
    inc bc
    add a
    add b
    rrca
    sbc a
    inc hl
    rrca
    ld a, [bc]
    rlca
    rrca
    rlca
    rlca
    dec de
    rlca
    ldh [$1f], a
    nop
    rst $38
    db $fc
    inc h
    rst $38
    ld [$fffe], sp
    db $fc
    rst $38
    ld sp, hl
    rst $38
    inc bc
    rst $38
    rlca
    ld b, [hl]
    rst $38
    ccf
    ld [$ff1f], sp
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    adc l
    pop hl
    ld bc, $ffff
    ld d, b
    rst $38
    rst $30
    xor [hl]
    xor a
    or b
    rst $08
    xor a
    rst $28
    xor a
    ld [bc], a
    ld b, b
    add l
    ld bc, $03f4
    add c
    add c
    rst $38
    add c
    add [hl]
    ld [bc], a
    ld a, [de]
    and h
    nop
    ld [hl], c
    ld bc, $0306
    ld b, [hl]
    ld a, [$0207]
    rra
    ld a, a
    ld bc, $8143

jr_008_716e:
    ld a, a
    inc bc
    ld a, a
    rst $38
    rst $30
    db $10
    ld b, e
    jr jr_008_716e

    nop
    rst $30
    jr nc, @+$01

    nop
    nop
    call z, $fc01
    inc b
    rst $38
    nop
    add c
    nop
    add c
    adc d
    ld bc, $91a1
    ld [bc], a
    rra
    dec b
    rst $38
    jr c, @-$37

    ld c, a
    pop bc
    ld c, e
    ld b, e
    ret nz

    ld c, d
    ld bc, $4fc7
    ld b, e
    ret nz

    ld c, b
    xor a
    adc a
    ld c, a
    ret nz

    ret z

    or l
    adc a
    inc bc
    rst $00
    rst $08
    pop bc
    bit 0, l
    ret nz

    ld c, d
    xor b
    adc a
    nop
    jp nc, $0345

    ld d, d
    nop
    ret z

    ld c, b
    ld a, a
    rst $08
    ld b, e
    ret z

    ld a, a
    ld bc, $7fff
    xor a
    adc a
    add h
    nop
    ld [hl], b
    ld [bc], a
    ret nz

    inc hl
    ret nz

    ld b, e
    dec l
    jp nz, $3103

    adc $3f
    ret nz

    ld c, a
    rst $38
    nop
    rra
    xor d
    nop
    ld [hl], a
    nop
    db $ed
    nop
    rst $38
    nop
    ld [hl], l
    adc d
    adc b
    ld [hl], a
    ld hl, $00de
    rst $38
    rrca
    rrca
    ccf
    jr nc, jr_008_7257

    ld c, a
    ret nc

    cp a
    ldh [$bf], a
    rst $28
    cp a
    ldh a, [$bf]
    rst $28
    or b
    xor a
    adc a
    ld b, e
    cp a
    ldh [$0b], a
    rst $38
    ret nz

    sbc a
    ldh [$c0], a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ldh a, [$f0]
    xor a
    adc a
    ld [bc], a
    rst $38
    ld a, a
    ldh [rDMA], a
    ret nz

    xor a
    inc b
    rst $28
    ret nz

    rst $28
    ret nz

    xor a
    sub b
    adc e
    dec b
    cp a
    rst $38
    rst $18
    ret nz

    add b
    cp a
    ld c, e
    add b
    rst $38
    dec b
    ld b, b
    ld a, a
    jr nz, jr_008_7263

    ld l, $3d
    add l
    add e
    ldh [rNR42], a
    ccf
    ccf
    xor e
    rst $38
    ld a, [hl]
    or [hl]
    ld a, [$71ce]
    xor a
    call nc, Call_008_62bf
    cp e
    ldh [rIE], a
    sbc h
    sbc [hl]
    xor d
    rst $38
    ld a, a
    ld l, l
    ld d, [hl]
    ld a, e
    adc a
    push af
    ld a, [hl+]
    db $fd
    ld b, a
    db $dd
    ld b, $ff
    cp c
    ld a, c
    adc b
    ld bc, $0000
    adc a
    ld b, e
    sbc b
    adc b
    ld bc, $cfdf

jr_008_7257:
    adc b
    nop
    stop
    rst $30
    ld b, e
    add hl, de
    rla
    ldh [rOBP1], a
    ei

jr_008_7262:
    rst $30

jr_008_7263:
    xor e
    inc bc
    ld e, l
    inc e
    cp [hl]
    ld l, b
    ld a, l
    jr nz, jr_008_7262

    ld e, h
    ld e, l
    ld l, e
    ld [$d575], a
    xor e
    xor d

jr_008_7274:
    add b
    ld [hl], l
    ld [hl], b
    xor d
    jr c, jr_008_72d7

    jr z, @-$48

    ld e, h
    ld b, l
    db $fc
    xor h
    ld a, [hl]
    ld d, a
    cp $ff
    ld a, a
    ld c, a
    ldh a, [$60]
    ldh [$e2], a
    jp hl


    ldh [rNR41], a
    jr z, jr_008_7274

    ld hl, $e0ea
    ldh [rIE], a
    rst $38
    di
    rrca
    rlca
    rlca
    rla
    ld b, a
    dec b
    ld d, [hl]
    inc b
    ld b, a
    inc b
    ld [hl], a
    rlca
    ld b, a
    rst $38
    rst $38
    sbc l
    adc [hl]
    or e
    cp a
    xor l
    or e
    ld b, e
    jp nc, $1ded

    db $ed
    or e
    or e
    cp a
    rst $38
    rst $38
    db $fd
    add hl, sp
    ld d, l
    call $dda5
    call $3dbd
    push hl
    push hl
    sbc c
    dec e
    push af
    cp a
    cp c
    sub c
    cp [hl]
    cp h
    set 4, [hl]
    rst $18
    xor c
    cp a
    ld b, e
    sbc e
    or [hl]
    dec b
    or a
    cp a
    push hl
    db $fd
    db $db
    rst $20

jr_008_72d7:
    ld b, e
    and l
    db $db
    ld a, [bc]
    dec de
    rst $20
    ld b, c
    cp l
    or l
    call Call_008_7dcd
    cp a
    cp a
    add b
    add h
    ld bc, $002a
    cp a
    inc h
    add b
    ld bc, $ffff
    and a
    adc a
    nop
    rst $38
    ld b, h
    ld bc, $8503
    ld bc, $13ed
    cp c
    ld b, [hl]
    rst $38
    nop
    rst $20
    jr @+$40

    pop bc
    ret


    ld [hl], $00
    rst $38
    xor d
    nop
    ld b, c
    inc d
    xor d
    ld b, c
    ld d, l
    nop
    and a
    add c
    db $10
    xor e
    sbc e
    call nc, $337c
    rst $38
    ld d, b
    ld hl, sp-$28
    cp b
    db $ec
    cp h
    db $e3
    xor e
    db $fc
    sbc a
    db $d3
    xor [hl]
    adc a
    add l
    inc b
    and d
    add hl, bc
    rst $18
    ret nz

    cp a
    and b
    ld e, a
    rst $18
    cp a
    ld h, b
    rra
    rst $38
    add l
    inc b
    or d
    ldh [$2f], a
    ei
    rlca
    db $fd
    rlca
    ld a, [$f5ff]
    ld c, $fc
    rst $38
    jp nz, $b0ff

    rst $38
    ld l, d
    rst $38
    ld d, a
    ld a, a
    cp e
    ccf
    ld e, [hl]
    ccf
    and l
    ld e, $53
    rrca
    xor d
    cp $53
    cp $ae
    db $fc
    ld [hl], l
    db $fc
    ld a, [$75fc]
    ld hl, sp-$60
    ld a, d
    push bc
    ldh a, [$60]
    cpl
    and b
    ld h, h
    and d
    ld l, c
    ld [hl+], a
    ldh [$03], a
    ld e, a
    ld a, a
    rst $38
    ld [$ff22], sp
    dec b
    ld b, l
    daa
    dec d
    daa
    dec b
    sub a
    and l
    adc a
    rlca
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld e, e
    rst $38
    nop
    sbc h
    and b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $ed
    cp a
    rst $38
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $4140
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld b, b
    ld b, c
    dec a
    dec a
    ld b, d
    ld b, e
    dec a
    dec a
    ld b, b
    ld b, c
    dec a
    dec a
    ld b, d
    ld b, e
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc sp
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld [$0808], sp
    ld [$1818], sp
    jr @+$1a

    dec [hl]
    ld [hl], $3e
    ld a, $37
    jr c, jr_008_7446

    ld a, $39
    ld a, [hl-]
    ld a, $3e
    dec sp
    inc a
    ld a, $3e
    dec [hl]
    ld [hl], $3e
    ld a, $37
    jr c, jr_008_7456

    ld a, $39
    ld a, [hl-]
    ld [$3b08], sp
    inc a
    jr @+$1a

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld c, $0e
    ld c, $0e
    ld e, $1e
    ld e, $1e
    scf
    jr c, jr_008_7464

    jr nc, jr_008_746d

    jr c, jr_008_7468

    jr nc, jr_008_7471

    jr c, jr_008_746c

    jr nc, jr_008_7475

    jr c, jr_008_7470

    jr nc, jr_008_7480

    ld a, $3e
    ld a, $3e

jr_008_7446:
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $33
    inc sp
    inc sp
    inc sp
    ld d, b
    ld d, c
    dec a
    dec a
    ld d, d

jr_008_7456:
    ld d, e
    dec a
    dec a
    ld d, d
    ld d, e
    dec a
    dec a
    ld d, h
    ld d, l
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a

jr_008_7464:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_008_7468:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_008_746c:
    inc bc

jr_008_746d:
    ld [de], a
    inc de
    ld [de], a

jr_008_7470:
    inc de

jr_008_7471:
    dec a
    dec a
    ld d, b
    ld d, c

jr_008_7475:
    dec a
    dec a
    ld d, d
    ld d, e
    dec a
    dec a
    ld d, d
    ld d, e
    dec a
    dec a
    ld d, h

jr_008_7480:
    ld d, l
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $051f
    ld b, $0a
    inc d
    dec d
    ld d, $1a
    inc h
    dec h
    ld h, $27
    jr nz, jr_008_74be

    ld l, $1f
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    add hl, de
    ld a, [de]
    rlca
    cpl
    add hl, hl
    daa
    rla
    nop
    ld l, $1f
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [hl+]
    add hl, hl
    rlca
    cpl
    rra

jr_008_74be:
    ld l, $17
    nop
    ld a, [bc]
    dec bc
    inc c
    rra
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [hl+]
    dec hl
    inc l
    dec l
    rra
    ld l, $1f
    rrca
    rra
    rra
    rra
    rra
    ld sp, $3131
    ld sp, $1111
    ld de, $1111
    ld de, $1111
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr z, jr_008_7513

    jr z, jr_008_7515

    rra
    rra
    rra
    rra
    jr nc, jr_008_7523

    jr nc, jr_008_7525

    jr nc, jr_008_7527

    jr nc, jr_008_7529

    jr nc, jr_008_752b

    jr nc, jr_008_752d

    jr nc, jr_008_752f

    jr nc, jr_008_7531

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec a
    dec a

jr_008_7513:
    dec a
    dec a

jr_008_7515:
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld d, a
    ld d, a

jr_008_7523:
    ld d, a
    ld d, a

jr_008_7525:
    ld d, a
    ld d, a

jr_008_7527:
    ld d, a
    ld d, a

jr_008_7529:
    ld d, a
    ld d, a

jr_008_752b:
    ld d, a
    ld d, a

jr_008_752d:
    ld d, a
    ld d, a

jr_008_752f:
    ld d, a
    ld d, a

jr_008_7531:
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    jr nc, jr_008_7573

    jr nc, jr_008_7575

    jr nc, jr_008_7577

    jr nc, jr_008_7579

    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, b
    ld c, c
    ld d, [hl]
    ld d, [hl]
    ld e, b
    ld e, c
    ld d, [hl]
    ld d, [hl]
    ld c, d
    ld c, e
    ld d, [hl]
    ld d, [hl]
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]

jr_008_7573:
    ld c, b
    ld c, c

jr_008_7575:
    ld d, [hl]
    ld d, [hl]

jr_008_7577:
    ld e, b
    ld e, c

jr_008_7579:
    ld d, [hl]
    ld d, [hl]
    ld c, d
    ld c, e
    ld d, [hl]
    ld d, [hl]
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, $0e
    ld c, $0e
    ld e, $1e
    ld e, $1e
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, a
    ld d, a
    ld d, d
    ld d, e
    ld d, a
    ld d, a
    ld d, d
    ld d, e
    ld d, a
    ld d, a
    ld d, h
    ld d, l
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, b
    ld d, c
    ld d, a
    ld d, a
    ld d, d
    ld d, e
    ld d, a
    ld d, a
    ld d, d
    ld d, e
    ld d, a
    ld d, a
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    jr nc, jr_008_7603

    jr nc, jr_008_7605

    jr nc, jr_008_7607

    jr nc, jr_008_7609

    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, b
    ld c, c
    ld d, [hl]
    ld d, [hl]
    ld e, b
    ld e, c
    ld d, [hl]
    ld d, [hl]
    db $10
    ld bc, $5656
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]

jr_008_7603:
    ld c, b
    ld c, c

jr_008_7605:
    ld d, [hl]
    ld d, [hl]

jr_008_7607:
    ld e, b
    ld e, c

jr_008_7609:
    ld d, [hl]
    ld d, [hl]
    db $10
    ld bc, $5656
    ld e, d
    ld e, e
    ld c, b
    ld c, c
    jr nc, jr_008_7645

    ld e, b
    ld e, c
    jr nc, jr_008_7649

    db $10
    ld bc, $5656
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    jr nc, jr_008_7653

    ld c, b
    ld c, c
    jr nc, jr_008_7657

    ld e, b
    ld e, c
    ld d, [hl]
    ld d, [hl]
    db $10
    ld bc, $5656
    ld e, d
    ld e, e
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [de], a
    inc de
    dec a
    dec a
    dec a
    dec a
    ld [bc], a
    inc bc

jr_008_7645:
    dec a
    dec a
    ld [bc], a
    inc bc

jr_008_7649:
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [de], a
    inc de
    dec a
    dec a

jr_008_7653:
    ld b, h
    add b
    dec a
    dec a

jr_008_7657:
    ld b, l
    add c
    dec a
    dec a
    ld b, h
    add b
    dec a
    dec a
    ld b, l
    add c
    dec a
    dec a
    ld b, h
    add b
    dec a
    dec a
    ld b, l
    add c
    dec a
    dec a
    ld b, [hl]
    add d
    dec a
    dec a
    ld b, a
    add e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    jr nc, jr_008_76c3

    jr nc, jr_008_76c5

    jr nc, jr_008_76c7

    jr nc, jr_008_76c9

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld c, b
    ld c, c
    dec a
    dec a
    ld e, b
    ld e, c
    dec a
    dec a
    ld c, d
    ld c, e
    dec a
    dec a
    ld e, d
    ld e, e
    dec a
    dec a
    dec a
    dec a
    ld c, b
    ld c, c
    dec a
    dec a
    ld e, b
    ld e, c
    dec a
    dec a
    ld c, d
    ld c, e
    dec a
    dec a
    ld e, d
    ld e, e
    ld d, b
    ld d, c

jr_008_76c3:
    dec a
    dec a

jr_008_76c5:
    ld d, d
    ld d, e

jr_008_76c7:
    dec a
    dec a

jr_008_76c9:
    ld d, h
    ld d, l
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

Call_008_76f3:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld hl, $0321
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec a
    dec a
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    dec a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    or d
    nop
    nop
    or d
    nop
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    inc l
    dec l
    ld l, $2f
    inc a
    dec a
    ld a, $3f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    inc l
    dec l
    ld l, $2f
    inc a
    dec a
    ld a, $3f
    dec b
    dec b
    inc de
    inc de
    dec b
    dec b
    inc de
    inc de
    dec b
    dec b
    inc de
    inc de
    dec b
    dec b
    inc de
    inc de
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec de
    inc d
    inc d
    inc d
    dec de
    inc d
    inc d
    inc d
    dec de
    inc d
    inc d
    inc d
    ld h, $27
    ld h, $27
    ld [hl], $37
    ld [hl], $37
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    ld h, $27
    ld h, $27
    ld [hl], $37
    ld [hl], $37
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec de
    inc d
    inc d
    inc d
    dec de
    inc d
    inc d
    inc d
    dec de
    inc d
    inc d
    inc d
    dec de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    add hl, de
    inc d
    inc d
    inc d
    add hl, de
    inc d
    inc d
    inc d
    add hl, de
    inc d
    inc d
    inc d
    add hl, de
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec bc
    inc d
    inc d
    inc d
    add hl, de
    inc d
    inc d
    inc d
    add hl, de
    inc d
    inc d
    inc d
    add hl, de
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    jr z, jr_008_79c4

    ld h, $27
    jr c, jr_008_79c9

    ld [hl], $37
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    ld h, $27
    ld h, $27
    ld [hl], $37
    ld [hl], $37
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, $27
    ld h, $27
    ld [hl], $37
    ld [hl], $37
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    ld h, $27
    ld h, $27
    ld [hl], $37
    ld [hl], $37
    dec b
    dec b
    dec b

jr_008_79c4:
    dec b
    dec b
    dec b
    dec b
    dec b

jr_008_79c9:
    dec b
    dec b
    ld bc, $0506
    dec b
    dec d
    ld d, $26
    daa
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, $27
    dec b
    dec b
    ld [hl], $37
    add hl, de
    dec b
    dec b
    dec b
    add hl, de
    dec b
    dec b
    dec b
    add hl, de
    dec b
    dec b
    dec b
    add hl, de
    dec b
    dec b
    dec b
    add hl, de
    dec b
    dec b
    dec b
    add hl, de
    dec b
    dec b
    dec b
    add hl, de
    dec b
    dec b
    dec b
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec b
    dec b
    dec b
    dec de
    dec b
    dec b
    dec b
    dec de
    dec b
    dec b
    dec b
    dec de
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [hl+]
    ld a, [hl+]
    dec b
    dec b
    db $10
    ld de, $1111
    jr nz, jr_008_7a88

    ld hl, $2021
    ld hl, $2121
    jr nz, jr_008_7a90

    ld hl, $1121
    ld de, $1111
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld de, $1111
    ld [de], a
    ld hl, $2121

jr_008_7a88:
    ld [hl+], a
    ld hl, $2121
    ld [hl+], a
    ld hl, $2121

jr_008_7a90:
    ld [hl+], a
    db $10
    ld [de], a
    dec b
    dec b
    jr nc, jr_008_7ac9

    dec b
    dec b
    dec d
    ld d, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    jr nz, jr_008_7ac4

    ld hl, $3021
    ld sp, $3131
    inc hl
    inc h
    inc h
    inc h
    inc hl
    inc b
    inc b
    inc h
    ld hl, $2121
    ld hl, $3131
    ld sp, $2431
    inc h
    inc h
    inc h
    inc h
    inc b
    inc b
    inc h
    ld hl, $2121

jr_008_7ac4:
    ld [hl+], a
    ld sp, $3131
    ld [hl-], a

jr_008_7ac9:
    inc h
    inc h
    inc h
    dec h
    inc h
    inc b
    inc b
    dec h
    inc hl
    inc h
    inc h
    inc h
    inc hl
    inc h
    inc h
    inc h
    inc hl
    inc h
    rlca
    ld [$3433], sp
    rla
    jr jr_008_7b05

    inc h
    inc h
    inc h
    inc hl
    inc h
    inc h
    inc h
    inc hl
    inc h
    inc h
    inc h
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    inc h
    inc h
    dec h

jr_008_7b05:
    inc h
    inc h
    inc h
    dec h
    inc h
    inc h
    inc h
    dec h
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    rlca
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    dec c
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    inc d
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    dec de
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    rra
    ld a, l
    ld d, b
    ld a, a
    ld h, $7d
    ld d, b
    ld a, a
    inc l
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld [hl-], a
    ld a, l
    ld d, b
    ld a, a
    jr c, @+$7f

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld c, b
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld c, [hl]
    ld a, l
    ld d, b
    ld a, a
    ld d, h
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld e, c
    ld a, l
    ld d, b
    ld a, a
    ld h, c
    ld a, l
    ld d, b
    ld a, a
    ld h, l
    ld a, l
    ld d, b
    ld a, a
    ld l, e
    ld a, l
    ld d, b
    ld a, a
    ld [hl], b
    ld a, l
    ld d, b
    ld a, a
    ld a, c
    ld a, l
    ld d, b
    ld a, a
    add b
    ld a, l
    ld d, b
    ld a, a
    add [hl]
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    adc h
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    sub b
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    sub l
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    sbc e
    ld a, l
    ld d, b
    ld a, a
    and c
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    and h
    ld a, l
    ld d, b
    ld a, a
    xor e
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    or b
    ld a, l
    or [hl]
    ld a, l
    ld d, b
    ld a, a
    cp h
    ld a, l
    ld d, b
    ld a, a
    jp Jump_008_507d


    ld a, a
    rst $00
    ld a, l
    ld d, b
    ld a, a
    call Call_008_507d
    ld a, a
    ld d, b
    ld a, a
    pop de
    ld a, l
    call nc, Call_008_507d
    ld a, a
    rst $10
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    db $dd
    ld a, l
    ld d, b
    ld a, a
    db $e3
    ld a, l
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    db $eb
    ld a, l
    rst $28
    ld a, l
    ld d, b
    ld a, a
    push af
    ld a, l
    ld d, b
    ld a, a
    db $fd
    ld a, l
    ld bc, $077e
    ld a, [hl]
    dec c
    ld a, [hl]
    ld d, b
    ld a, a
    inc d
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr jr_008_7c83

    inc e
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    inc hl
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld h, $7e
    ld d, b
    ld a, a
    add hl, hl
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    inc l
    ld a, [hl]
    ld d, b
    ld a, a
    ld [hl-], a
    ld a, [hl]
    ld d, b
    ld a, a
    jr c, jr_008_7cab

    inc a
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld a, $7e
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, e
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld c, d
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, c
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld e, b
    ld a, [hl]
    ld d, b
    ld a, a
    ld e, [hl]
    ld a, [hl]
    ld d, b
    ld a, a
    ld h, l
    ld a, [hl]
    ld d, b
    ld a, a
    ld l, c
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld l, a
    ld a, [hl]
    ld d, b
    ld a, a
    ld [hl], e
    ld a, [hl]
    ld a, c
    ld a, [hl]
    add b
    ld a, [hl]
    add h
    ld a, [hl]
    ld d, b
    ld a, a
    adc d
    ld a, [hl]
    ld d, b
    ld a, a
    sub b
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    sub a
    ld a, [hl]
    ld d, b
    ld a, a
    and b
    ld a, [hl]

jr_008_7c83:
    ld d, b
    ld a, a
    and d
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    xor d
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    or e
    ld a, [hl]
    or a
    ld a, [hl]
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    cp e
    ld a, [hl]
    ld d, b
    ld a, a
    jp nz, Jump_008_507e

    ld a, a
    ld d, b
    ld a, a
    push bc
    ld a, [hl]
    bit 7, [hl]
    ld d, b
    ld a, a

jr_008_7cab:
    ret nc

    ld a, [hl]
    sub $7e
    ld d, b
    ld a, a
    db $db
    ld a, [hl]
    ld d, b
    ld a, a
    db $e4
    ld a, [hl]
    ld d, b
    ld a, a
    jp hl


    ld a, [hl]
    db $eb
    ld a, [hl]
    rst $28
    ld a, [hl]
    push af
    ld a, [hl]
    ld d, b
    ld a, a
    db $fc
    ld a, [hl]
    ld d, b
    ld a, a
    cp $7e
    ld d, b
    ld a, a
    inc b
    ld a, a
    ld a, [bc]
    ld a, a
    ld d, b
    ld a, a
    db $10
    ld a, a
    ld d, $7f
    dec de
    ld a, a
    jr nz, jr_008_7d58

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr z, jr_008_7d5e

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    dec l
    ld a, a
    ld d, b
    ld a, a
    inc sp
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_008_7d6c

    ld a, [hl-]
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    ld a, a
    ld d, b

Call_008_7cf4:
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld c, d
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld [hl], c
    add d
    db $db
    dec c
    ld d, b
    rst $38
    cp e
    or $9d
    inc l
    ret z

    ei
    rst $38
    di
    ld [hl], d
    ld [hl], $5d
    pop bc
    xor a
    rst $38
    db $e4
    cp c
    pop bc
    rst $38
    ld h, a
    xor h
    sbc d
    inc l
    ld b, h
    or e
    rst $38
    cp c
    adc $b8
    ld h, d
    and c
    rst $38
    db $e4
    dec d
    or h
    ei
    ld a, [c]
    rst $38
    xor a
    db $db
    ld b, h
    push hl
    add sp, -$01
    jr nc, jr_008_7d6c

    inc h
    ld [hl], h
    call z, $fb44
    rst $38
    jr nc, jr_008_7d74

    inc h
    ld e, l
    add l
    ld b, h
    ei
    rst $38
    cp c
    ld e, a
    xor a
    or h
    ld [hl-], a
    rst $38
    ld h, d
    db $e4
    cp c
    db $10
    ld [de], a
    rst $38
    ld c, $4b
    xor a
    db $eb

jr_008_7d58:
    rst $38
    adc $67
    ld b, h
    inc a
    xor a

jr_008_7d5e:
    ld [hl], c
    db $e4
    rst $38
    ld [c], a
    ld h, a
    jp z, $b9ff

    ld h, a
    or $e4
    ei
    rst $38
    or h

jr_008_7d6c:
    call z, $855f
    rst $38
    ld a, [hl-]
    ld e, a
    inc a
    pop bc

jr_008_7d74:
    ld [hl], c
    ld hl, sp+$5e
    xor $ff
    sbc l
    pop bc
    ld h, b
    ld b, h
    or e
    ei
    rst $38
    ld [hl+], a
    db $db
    ld a, [c]
    dec h
    ld d, e
    rst $38
    ld [hl], $96
    dec a
    ld [hl], d
    xor d
    rst $38
    ld [hl], c
    db $e3
    ld [hl], b
    rst $38
    ld [hl], c
    ld h, b
    dec de
    db $e3
    rst $38
    ld c, $e3
    ld [hl], e
    db $eb
    adc l
    rst $38
    ld a, $f3
    push hl
    ld [hl], d
    db $db
    rst $38
    dec b
    sbc l
    rst $38
    xor h
    dec h
    jr jr_008_7e07

    call z, $ff62
    db $db
    cp e
    ld hl, sp+$17
    rst $38
    pop bc
    ld [hl], a
    db $10
    ld h, d
    xor a
    rst $38
    ld h, d
    jr nc, @+$74

    cp c
    xor a
    rst $38
    ld a, d
    jp $4032


    dec d
    db $e3
    rst $38
    ld [hl], d
    call nc, $ff7a
    dec a
    inc h
    ld [hl], b
    push hl
    ld h, a
    rst $38

Call_008_7dcd:
    sub l
    jp $ff72


    sbc l
    xor a
    rst $38
    ld [hl], c
    ld [hl], b
    rst $38
    ld e, e
    ld [hl], d
    add l
    xor a
    dec d
    rst $38
    db $eb
    db $ec
    ld [hl], e
    ld c, b
    or $ff
    sbc l
    or $bb
    ld h, a
    add d
    jp $ff0e


    cp e
    sbc $22
    rst $38
    ld h, a
    sub l
    inc a
    jp nz, $ffdc

    ld a, [c]
    or e
    sbc l
    dec h
    db $e4
    ld b, h
    sbc $ff
    reti


    db $76

Call_008_7dff:
    rst $10
    rst $38
    xor a
    ld e, l
    ld c, b
    ld [hl], e
    add l
    rst $38

jr_008_7e07:
    rla
    pop bc
    ld [hl], h
    db $db
    ld [hl-], a
    rst $38
    xor a
    ld a, $be
    ld [hl-], a
    sub [hl]
    ld d, d
    rst $38
    inc a
    ld [hl], d
    jr c, @+$01

    ld hl, sp+$5f

jr_008_7e1a:
    ld h, [hl]
    rst $38
    ld b, h
    db $db
    ld [c], a
    dec c
    or e
    ld [hl], c
    rst $38
    rra
    xor a
    rst $38
    ld a, $c1
    rst $38
    xor a
    call z, $3dff
    ld a, $15
    jr nc, jr_008_7ea3

    rst $38
    dec a
    ld a, $e5
    ld e, e
    xor a
    rst $38
    ld [de], a
    db $e4
    pop bc
    rst $38
    ld a, d
    rst $38
    ld [hl], c
    ld [hl], $72
    jr nc, @+$01

    ld d, $49
    ld b, h
    or $af
    ld c, $ff
    sbc d

jr_008_7e4b:
    ld h, d
    or e
    dec h
    pop bc
    ld b, d
    rst $38
    ld a, [c]
    dec h
    jr c, jr_008_7e4b

    dec c
    sbc l
    rst $38
    ld h, $e4
    and e
    ld [hl], h
    or e
    rst $38
    ld [hl], a
    jr nc, jr_008_7e1a

    ld de, $8f12
    rst $38
    inc a
    ld [hl], l
    ld [hl], c
    rst $38
    inc a
    ld [hl-], a
    ld sp, $e4e2
    rst $38
    xor a
    jr nc, jr_008_7ed9

    rst $38
    or e
    ld [hl], l
    reti


    db $e3
    inc bc
    rst $38
    reti


    db $76
    add l
    cp e
    sub [hl]
    ld h, [hl]
    rst $38
    jp $b9d9


    rst $38
    reti


    ld [hl], a
    ld b, b
    pop bc
    ld hl, sp-$01
    ld [hl], d
    ld b, c
    ld h, d
    cp c
    db $d3
    rst $38
    ld d, l
    inc h
    ld [hl+], a
    db $db
    ld h, a
    ld [hl], e
    rst $38
    ld [hl], c
    reti


    add l
    ld hl, sp-$45
    jp $c130


    rst $38
    ld a, b
    rst $38
    ld e, l

jr_008_7ea3:
    dec l
    db $e3
    ld h, $73
    add l
    ld b, $ff
    ld b, h
    ld h, a
    db $e4
    ld h, c
    or h
    dec d
    inc bc
    ei
    rst $38
    ld [de], a
    or e
    adc l
    rst $38
    ld [hl+], a
    or $db
    rst $38
    ld [de], a
    ld b, c
    ld h, d
    ld [hl], a
    ld de, $ff8f
    ld h, a
    jp nz, $24ff

    add l
    pop bc
    ld hl, sp-$05
    rst $38
    ld [hl], e
    ld a, [hl+]
    xor a
    add c
    rst $38
    ld [hl], l
    or $9d
    inc l
    ld h, e
    rst $38
    add sp, $11
    dec c

jr_008_7ed9:
    ld b, h
    rst $38
    db $76
    cp c
    ld [hl], e
    reti


    ld a, [c]
    rst $10
    ld a, d
    dec hl
    rst $38
    xor a
    ld [hl], d
    dec a
    jr nc, @+$01

    and $ff
    ld l, d
    ld [hl], l
    xor a
    rst $38
    ld b, h
    or h
    pop bc
    ld [hl], e
    inc l
    rst $38
    ld a, [c]
    inc h
    ld b, l
    ld [hl], h
    ld b, h
    add sp, -$01
    sub a
    rst $38
    inc h
    inc l
    ld [hl+], a
    sbc l
    or $ff
    sbc l
    db $db
    ld h, a
    ld [hl], $85
    rst $38
    ld a, $be
    jr nc, jr_008_7f80

    ld h, a
    rst $38
    ld a, $62
    ld hl, sp-$6a
    push hl
    rst $38
    rst $28
    jr c, jr_008_7f8b

    dec d
    rst $38
    ld b, c
    db $e4
    ld [de], a
    adc a
    rst $38
    ld d, e
    ld h, e
    db $e4
    ld b, h
    or h
    or e
    ei
    rst $38
    ld [hl], h
    ld [hl+], a
    or $37
    rst $38
    ld [hl], e
    or h
    ld [hl-], a
    ld [hl], c
    inc l
    rst $38
    push hl
    adc b
    or a
    xor d
    rst $38
    ld h, b
    rst $38
    ld [bc], a
    ld [hl], b
    dec de
    ld h, b
    xor $ff
    ld [bc], a
    dec b
    ld [hl], b
    ld h, a
    xor $ff
    reti


    or e
    ld b, l
    rst $38
    db $e4
    rla
    ret z

    ld [hl], h
    or $ff
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

jr_008_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_7f8b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
