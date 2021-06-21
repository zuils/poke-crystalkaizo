; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

    rrca
    ldh [$e0], a
    ld a, b
    sbc b

Jump_04c_4005:
    ld c, h
    ld [hl], h
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld c, a
    ld a, h
    ld b, a
    ld a, [hl]

Jump_04c_400e:
    ld b, e
    ccf
    ld b, c
    ld c, l
    ccf
    jr nz, jr_04c_402c

    dec hl
    jr nz, @+$37

    jr nz, jr_04c_4045

    jr nz, @+$36

    inc hl
    ld [hl+], a
    inc l
    ld b, c
    ld d, b
    ld b, d
    ld h, b
    add c
    ret nz

    nop
    add b
    nop
    ld b, b
    jr nz, jr_04c_404c

jr_04c_402b:
    db $10

jr_04c_402c:
    ld de, $0843
    add hl, bc
    inc bc
    inc b
    dec b
    ld bc, $4304
    ld [bc], a
    inc bc
    ld bc, $0101
    ld h, d
    ret z

    add b
    ld bc, $0101
    db $ec
    daa
    ldh [$35], a

jr_04c_4045:
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_04c_402b

    sub b

jr_04c_404c:
    ldh a, [$c8]
    ld a, b
    add sp, $78
    db $e4
    inc a
    db $f4
    inc a
    ld a, [c]
    ld e, $fa
    ld e, $f9
    rrca
    jp hl


    rra
    ld a, [bc]
    cp $d4
    inc a
    sub h
    inc a
    inc [hl]
    ld e, h
    or d
    ld e, [hl]
    ld a, $4e
    db $76
    sbc [hl]
    ld a, e
    adc a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $30
    ld a, b
    add e
    add [hl]
    adc c
    rst $18
    and e
    rst $28
    dec bc
    and b
    ld h, b
    inc de
    pop af
    sbc h
    ei
    ld c, b
    ld a, a
    ld b, c
    ld a, a
    ld [hl+], a
    ld a, $47
    inc h
    inc a
    ld bc, $1818
    db $ec
    dec h
    ld a, [de]
    ld b, $06
    dec c
    dec bc
    dec c
    rrca
    inc e
    rra
    inc de
    inc e
    rra
    db $10
    rla
    jr c, jr_04c_40d1

    ld l, $23
    ld a, [hl+]
    add hl, hl
    ld a, [hl-]
    ld a, a
    ld c, h
    ccf
    ld b, b
    di
    db $fc
    db $ec
    inc hl
    rst $20
    inc bc
    rst $28
    ld c, a
    rst $38
    ld e, a
    ld b, l
    rst $38
    rst $18
    ld b, [hl]
    cp a
    rst $38
    ld de, $bff7
    rst $30
    or a
    rst $00
    rst $20
    rst $20
    rst $08
    ld [hl], a
    rst $18
    rst $28
    rst $18
    dec sp
    and a
    dec de
    inc e
    rlca
    rlca
    db $ec

jr_04c_40d1:
    cpl
    add e
    nop
    ld c, d
    ld d, $85
    add a
    ei
    ld a, a
    pop af
    rrca
    ld hl, sp+$07
    ldh a, [rIF]
    cp $3f
    ret nz

    add hl, hl
    jp z, $fc2b

    rra
    ldh [$1f], a
    jr @+$01

    db $ec
    ld b, e
    rst $20
    and $01
    rst $28
    xor $48
    rst $38
    cp $01
    db $fc
    rst $38
    ld b, l
    cp $fd
    inc de
    cp d
    db $fd

Jump_04c_40ff:
    cp [hl]
    cp c
    sbc l
    sbc e
    sub l
    db $db
    jp c, $fee6

    ld e, $fb
    db $fd
    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    daa
    ld bc, $0101
    ld bc, $23f4
    rst $28
    ld b, l
    ld b, c
    pop bc
    ld b, a
    ld b, b
    ret nz

    ld b, l
    ld hl, $0be1
    ld [hl+], a
    db $e3
    dec h
    rst $20
    dec sp
    rst $38
    ccf
    cp $3f
    ld hl, sp+$3f

jr_04c_412e:
    ldh [rSCX], a
    ld a, a
    ret nz

    inc bc
    scf
    rst $08
    ld h, b
    ldh a, [$a4]
    nop
    ld a, $00
    ret nz

    and l
    push de
    dec b
    jr nc, @+$32

    ld a, b
    ld c, b
    cp b
    ret z

    ld b, e
    sub b
    ldh a, [rSB]
    db $10
    ldh a, [rWX]
    jr nz, jr_04c_412e

    ld bc, $c0c0
    ld l, l
    ld [de], a

Jump_04c_4153:
    inc bc
    inc bc
    rlca
    inc b
    inc c
    dec bc
    dec de
    rla
    scf
    inc l
    ccf
    jr z, jr_04c_41af

    ld [hl], b
    ld e, a
    ld [hl], b
    cp a
    ldh [$bf], a
    add h
    rst $08
    ld c, $5d
    ldh [$ae], a
    ldh a, [$b5]
    add sp, -$10
    and $b8
    pop hl
    ld [hl], h
    ldh [$e9], a
    ret nc

    ld h, h
    ld b, e
    ret nc

    ldh [rP1], a
    sub b
    ld b, a
    ldh a, [$08]
    ld b, e
    ld hl, sp+$04
    rlca
    reti


    push hl
    ld de, $041d
    dec b
    ld [bc], a
    ld [bc], a
    ld hl, sp+$27
    ld bc, $0961
    add hl, de
    rra
    inc sp
    cpl
    ld h, [hl]
    ld e, [hl]
    sbc $b2
    cp [hl]
    ld h, d
    and a
    nop
    inc c
    ld bc, $04f8
    ld b, a
    ld hl, sp+$08
    ld bc, $08f0
    ld b, e
    ldh a, [rNR10]
    ld [bc], a
    or b
    db $10
    ld d, b
    add h

jr_04c_41af:
    add e
    ld b, $20
    ret z

    jr jr_04c_41dd

    ld [$0018], sp
    ld b, e
    inc c
    inc b
    ld [hl+], a
    inc b
    rlca
    nop
    inc c
    jr nc, @+$32

    ld b, b
    ld b, b
    add b
    add b
    db $ec
    scf
    nop
    ld bc, $0561
    ld [bc], a
    nop
    inc b
    nop
    ld [$6110], sp
    jr jr_04c_41e6

    dec h
    ld bc, $230a
    ld d, [hl]
    inc bc
    dec l
    ld b, a

jr_04c_41dd:
    ld d, l
    rlca
    xor d
    ld c, $5a
    adc [hl]
    inc [hl]
    sbc h
    ld [hl], l

jr_04c_41e6:
    sbc l
    ld d, l
    dec a
    inc h
    ld a, b
    jr z, jr_04c_4265

    ld b, h
    jr z, jr_04c_4228

    ld bc, $1018
    adc [hl]
    nop
    db $d3
    dec de
    ld b, $01
    ld de, $460a
    dec h
    dec c
    adc e
    dec bc
    rla
    dec d
    cpl
    dec hl
    ld e, l
    ld d, e
    cp l
    and [hl]
    ld a, c
    ld b, a
    ld hl, sp-$71
    ldh a, [$bb]
    db $fc
    ld b, [hl]
    jp $0101


    and a
    ld [bc], a
    jr c, @+$0d

    ret nc

    jr nc, @-$75

    ld hl, sp+$4e
    ld a, l
    inc h
    ccf
    jr nz, jr_04c_4260

    ld de, $471f
    ld [de], a
    ld e, $01
    inc c

jr_04c_4228:
    inc c
    add [hl]
    ld bc, $0400
    cp b
    ld l, l
    xor $a3
    xor d
    add e
    ld bc, $130c
    xor a
    rst $28
    rst $28
    adc a
    rst $08
    sbc a
    rst $18
    and a
    and [hl]
    ld sp, hl
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    add a
    rst $08
    rlc e
    dec e
    ld d, $fe
    rst $38
    cp h
    cp a
    ld a, $bd
    inc l
    inc de
    ld a, [de]
    rst $38
    push af
    rst $38
    ld [$f5ff], a
    rst $38
    db $fd
    rst $38

jr_04c_4260:
    ei
    cp $75
    cp $06

jr_04c_4265:
    add [hl]
    ld bc, $61af
    ld b, a
    ld b, b
    ret nz

    rra
    ld l, b
    ldh a, [$71]
    sub $58
    add sp, $28
    db $f4
    inc [hl]
    ld a, [$ee2a]
    ld a, [hl+]
    db $ed
    dec h
    rst $28

Jump_04c_427d:
    dec a
    cp $3a
    rst $38
    ld l, $f3
    dec a
    db $e3
    ld e, a
    pop hl
    ld a, e
    rst $00
    add hl, hl
    ret c

    ld b, b
    ldh [$87], a
    ld [bc], a
    ld [$180c], sp
    sbc b
    cp h
    and h
    ld e, h
    db $e4
    ret z

    ld a, b
    ld c, b
    ld hl, sp+$08
    ld hl, sp+$10
    ld c, d
    ldh a, [$90]
    ld bc, $6060
    ld [hl], c
    inc b
    ld b, b
    add b
    db $10
    jr nz, jr_04c_42ab

jr_04c_42ab:
    call nz, $2303
    nop
    ld bc, $e061
    ld h, $81
    ret nz

    add b
    and b
    ld b, b
    ld d, b
    ret nz

    ld l, d
    ret nz

    ld [hl], l
    and b
    xor d
    ldh [$b5], a
    ldh [$8b], a
    ldh [$d5], a
    ld [hl], b
    ld e, e
    ld [hl], b
    ld d, [hl]
    ld [hl], c
    ld e, [hl]
    ld [hl], c
    ld e, h
    ld [hl], d
    inc e
    ld [hl], d
    sbc b
    ld h, h
    or b
    add sp, -$60
    ldh a, [$c0]
    ldh [rLCDC], a
    ret nz

    xor h
    inc bc
    ld [de], a
    nop
    add b
    add e
    nop
    ld a, c
    nop
    nop
    ld b, [hl]
    ld b, b
    add b
    nop
    nop
    call nz, $878b
    nop
    ld b, b
    add a
    ld bc, $10b8
    cp $df
    call c, Call_04c_5cfe
    ld l, h
    ld c, l
    ld [hl], h
    ld d, [hl]
    ld a, c
    ld l, c
    ld a, [hl]
    sub $ff
    cpl
    rst $38
    cp $43
    rst $38
    or $07
    push af
    ld a, [c]
    push af
    ldh a, [$e3]
    push hl
    rra
    ld e, $22
    rst $38
    add l
    inc bc
    sub b
    add hl, bc
    rra
    jr nc, jr_04c_4347

    jr nc, jr_04c_4355

    inc a
    dec l
    ld a, $7f
    ld b, b
    adc c
    ld bc, $0670
    ret nz

    ccf
    cp h
    ld a, a
    ret c

    ccf
    ldh [$8e], a
    ld bc, $ff81
    db $ec
    dec sp
    ld bc, $0303
    ld b, e
    rlca
    inc b
    rra
    ld b, $05
    rrca
    add hl, bc
    rra
    ccf
    rra
    ld c, b
    adc a
    add h
    rst $08
    sbc a
    rst $00
    and c
    ld a, a
    ld c, h

jr_04c_4347:
    ld a, a
    ld e, a
    ld a, b
    ld a, a
    inc h
    ccf
    ld e, e
    ld h, a
    ld a, b
    ld b, a
    cp h
    jp $e09f


jr_04c_4355:
    add a
    ld hl, sp+$43
    ld b, b
    ld a, a
    dec b
    jr nz, jr_04c_439c

    jr jr_04c_437e

    rlca
    rlca
    db $ec
    cpl
    ldh [$3b], a
    ld [$0e18], sp
    ld h, $39
    daa
    inc e
    inc de
    ld [$040f], sp
    rlca
    ld b, $07
    inc bc
    inc bc
    ld [bc], a
    ld b, d
    jr nz, @-$5a

    cp h
    cp h
    ld a, $27
    ld a, b

jr_04c_437e:
    rra
    db $fc
    rra
    rst $38
    adc e
    rst $28
    sub c
    rst $28
    jp nc, Jump_04c_427d

    db $fd
    ld a, [c]
    rra
    db $fc
    inc de
    cp $63
    rst $38
    db $ed
    cp $f3
    db $fc
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    nop

jr_04c_439c:
    rst $38
    ld bc, $06ff
    cp $f4
    ld h, $ef
    ld a, [de]
    ld bc, $0200
    inc hl
    ld h, d
    inc sp
    sub d
    or d
    sub e
    ld [$6a9b], a
    ld e, e
    ld b, h
    ld a, a
    inc h
    ccf
    and b
    cp a
    ld h, b
    rst $38
    inc bc
    rst $38
    inc b
    db $fc

Jump_04c_43be:
    sbc $f9
    ld b, e
    jr nz, jr_04c_4402

    dec b
    db $10
    rra
    ld d, c
    ld e, a
    ld de, $a31f
    pop de
    rlca
    ld b, c
    ld a, a
    ld b, b
    ld a, [hl]
    ld [c], a
    ld a, $ff
    inc e
    ld b, h
    rst $38
    nop
    ld c, $60
    sbc a
    sub b
    ccf
    db $10
    sbc a
    ld [hl], b
    daa
    ld hl, sp+$3f
    rst $20
    ld a, b
    ld hl, sp-$80
    add b
    db $ec
    add hl, hl
    rlca
    add d
    add [hl]
    jp $cb49


    ld c, c
    ld c, l
    bit 0, l
    ld d, d
    sbc $e0
    ld hl, $fe32
    inc de
    rst $38
    ld hl, $00ff
    rst $38
    ret nz

    rst $38

jr_04c_4402:
    cp b
    ld a, a
    ld b, h
    rst $00
    add e
    add e
    add c
    add c
    ld bc, $4001
    ld b, c
    inc e
    rra
    nop
    rst $38
    add c
    rst $38
    ld c, c
    ld a, a
    ld a, l
    ld [hl], a
    rst $38
    ld [hl+], a
    ld b, l
    rst $38
    nop
    ld b, $fc
    inc bc
    di
    inc c
    rst $28
    db $10
    rst $18
    ld b, e
    jr nz, @+$01

    nop
    ld hl, sp-$6d
    nop
    ld l, d
    ld [de], a
    ld b, $0e
    rra
    ld de, $232c
    inc c
    ld b, e
    ld c, c
    ld b, a
    reti


    add a
    ld a, [$b287]
    rst $08
    call nz, $f87f
    ld b, e
    ccf
    ret nz

    ldh [rNR52], a
    cp a
    ret nz

    cp a
    db $e3
    sbc a
    ld h, a
    ld e, a
    ld c, a
    ld a, a
    ccf
    ccf
    rlca
    rlca
    dec de
    dec de
    ccf
    daa
    ld a, a
    ld b, a
    cp l
    rst $08
    inc c
    ei
    inc e
    ei
    ld a, [de]
    ld sp, hl
    ld a, [hl+]
    jp hl


    dec sp
    ldh a, [$b9]
    ldh a, [rNR33]
    ldh a, [rNR21]
    ld sp, hl
    ld d, b
    rst $38
    ld b, e
    xor b
    cp a
    dec b
    inc [hl]
    rra
    ld [hl], h
    rra
    cp $0f
    push bc
    nop
    push de
    inc b
    add a
    ld a, c
    ld a, c
    add a
    cp $83
    adc c
    ld b, $01
    cp $06
    ld hl, sp+$38
    ret nz

    ret nz

    push de
    ld bc, $1c57
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld b, $fa
    dec bc
    push af
    dec b
    ei
    inc bc
    db $fc
    dec b
    ld a, [$fd02]
    ld bc, $80fe
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rLY]
    rst $38
    ld hl, sp+$02
    db $fc
    rst $38
    db $fc
    ld b, h
    rst $38
    cp $04
    ld a, a
    rst $38
    ld a, $ff
    dec e
    ld b, h
    cp $05
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    ld b, [hl]
    rst $38
    ld bc, $0243
    rst $38
    rrca
    inc b
    rst $38
    sbc b
    rst $38
    ldh [rIE], a
    rst $38

jr_04c_44d0:
    rra
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $30
    sub h
    rst $20
    db $e4
    ld b, e
    rrca
    ld [$0e07], sp
    add hl, bc
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    cp a
    ld bc, $2542
    add b
    ld b, a
    ld b, b
    ret nz

    ld b, l
    jr nz, jr_04c_44d0

    add e
    ld [bc], a
    ld a, [hl-]
    dec b
    ld [$c4f8], sp
    db $fc
    inc b
    db $fc
    ld b, l
    jp nz, $013e

    add d
    ld a, [hl]

jr_04c_4500:
    ld b, e
    ld [bc], a
    cp $43
    ld b, $fc

jr_04c_4506:
    ld b, e
    ld c, $fa
    add hl, bc
    inc e
    db $f4
    jr jr_04c_4506

    jr nc, jr_04c_4500

    ld hl, sp-$38
    ld hl, sp-$78
    ld b, e
    ld a, b
    ld c, b
    ld b, h
    db $fc
    call nz, Call_04c_6404
    and $5e
    cp a
    pop hl
    and e
    ld [bc], a
    ld a, e
    inc bc
    db $fc
    ld h, h
    sbc h
    sbc h
    adc d
    nop
    ld [hl-], a
    inc c
    ld [bc], a
    dec b
    inc b

Call_04c_452f:
    add hl, bc
    ld [$1011], sp
    inc hl
    jr nz, @+$68

    ld h, c
    xor h
    db $e3
    ld b, e
    ld a, b
    rst $00
    ld b, e
    ld [hl], b
    rst $08
    ld b, e
    ld hl, sp-$79
    rla
    call nz, $80bb
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    and d
    rst $38
    sbc h
    rst $38
    ld h, b
    ld e, a
    pop af
    cpl
    pop af
    rra
    rst $30
    ld c, $c0
    ret nz

    ld b, $07
    ld [hl+], a
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0292
    sub l
    ld [$7838], sp
    cp $86
    pop bc
    ccf
    add c
    ld a, a
    nop
    ld b, [hl]
    rst $38
    nop
    ld bc, $fe01
    adc l
    add e
    and h
    ld [bc], a
    dec c

Jump_04c_457a:
    ld bc, $30ff
    adc d
    ld [bc], a

Call_04c_457f:
    ld d, a
    dec b
    rst $38
    ld a, a
    cp $7f
    db $fc
    ld a, a
    ld b, e
    cp h
    rst $38
    ld [bc], a
    cp a
    rst $38

jr_04c_458d:
    cp h
    ld b, h
    rst $38
    ld a, h
    ld b, e
    ld hl, sp-$01
    add hl, bc
    ldh [rIE], a
    nop
    rst $38
    add c
    ld a, a
    add $be
    ld a, b
    ld hl, sp-$77
    ld [bc], a
    or b
    rrca
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    and b
    sub b
    ld [hl], b
    ld d, b
    or b
    sub b
    ld [hl], b
    db $10
    ldh a, [$90]
    ld [hl], b
    ld c, c
    jr nz, @-$1e

    dec c
    db $10
    ldh a, [rNR10]
    ld hl, sp+$0c
    db $fc
    ld a, [bc]
    ld a, [$fd06]
    scf
    call $dda7
    ld b, e
    ld b, $fe
    nop
    inc b
    ld b, h
    db $fc
    inc c
    dec bc
    adc [hl]
    cp $5f
    pop af
    ld a, a
    ld sp, hl
    ld a, a
    rst $00
    ld a, h
    db $e4
    sbc h
    sbc h
    add a
    ld bc, $8a42
    nop
    and b
    rlca
    ld b, e
    ld [hl+], a
    and d
    or b
    or h
    cp h
    inc l
    ld a, [hl]
    add e
    nop
    or l
    ld a, [bc]
    dec bc
    rst $28
    sub c
    rst $28
    sub d
    db $fd
    jp nz, Jump_04c_427d

    rst $38
    ldh a, [$8d]
    nop
    jp nz, $0183

    jr nz, jr_04c_458d

    ld bc, $8626
    ld bc, $0733
    sub a
    ld a, b
    ccf
    rst $20
    jr c, @-$06

    ld b, b
    ret nz

    adc l
    ld bc, $8d42
    ld bc, $0080
    nop
    add h
    ld bc, $9b8f
    ld bc, $8d96
    ld bc, $0ff0
    ld d, [hl]
    ld sp, hl
    or b
    cp a
    xor b
    cp a
    jr c, @+$21

    ld [hl], h
    rra
    db $fc
    rrca
    cp $03
    rst $38
    ld bc, $028a
    db $10
    and e
    inc b
    inc l
    dec b
    jr c, @-$3e

    ret nz

    cp h
    cp a
    inc a
    adc h
    nop
    or e
    adc l
    ld bc, $0510
    ld d, b
    ld e, a
    ld de, $111f
    rst $38
    adc e
    ld bc, $8d24
    inc b
    ld h, b
    dec b
    ld b, c
    ld b, c
    nop
    rra
    nop
    rst $38
    adc e
    ld bc, $ff94
    ld l, a
    inc b
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc b
    nop
    ld b, $46
    ld [$010f], sp
    rlca
    ld [$0743], sp
    inc b
    inc bc
    inc bc
    ld [bc], a
    nop
    ld bc, $a993
    ld [bc], a
    rlca
    inc b
    ld b, $43
    add hl, bc
    rrca
    inc bc
    ld de, $121d
    inc e
    ld b, l
    ld [hl+], a
    inc a
    ld [bc], a
    ld b, d
    ld a, [hl]
    ld b, c
    ld b, l
    ld a, a
    ld b, b
    rrca
    rra
    ld [hl+], a
    ccf
    ld hl, $203f
    rrca
    db $10
    rra
    db $10
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    ld [hl], l
    dec e
    ld a, b
    ld a, b
    and $be
    pop hl
    ccf
    ld [hl], c
    rra
    ld l, $1f
    ld a, a
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ld hl, sp+$07
    or $09
    rst $28
    db $10
    rst $08
    or e
    ld a, [hl]
    ld a, h
    ld h, [hl]
    dec c
    rlca
    rrca
    jr jr_04c_46ed

    ld h, b
    ld b, l
    add b
    add e
    nop
    push bc
    nop
    xor e
    nop
    rst $10
    add h
    add e
    ld b, e
    rst $38
    add b
    ld b, e
    ld a, [hl]
    ld b, c
    rlca
    dec a
    ld [hl+], a
    ld e, a
    ld d, d
    ld e, a
    pop hl
    cp $01
    ld b, h
    rst $38
    nop
    inc b
    add b
    rst $28
    ld [hl], b
    rst $38
    rrca
    ld c, b
    rst $38
    nop
    ld [bc], a
    ret nz

    ccf
    ccf

jr_04c_46ed:
    ld [hl], a
    rlca
    add b
    add c
    jp $cc46


    ld c, b
    ret c

    db $10
    ld b, e
    ldh a, [rNR41]
    nop
    ld sp, hl
    ld b, e
    ld b, b
    rst $38
    ld bc, $ff80

jr_04c_4702:
    ld b, e
    add b
    ld a, a
    inc de
    ret nz

    ld a, [hl]
    and c
    rst $08
    sbc b
    rst $08
    adc b
    rst $10
    add sp, -$01
    jr nc, @-$0f

    jr jr_04c_4702

    rla

jr_04c_4715:
    rst $28
    ld a, [de]
    rst $30
    add hl, bc
    rst $38
    ld b, e
    add hl, bc
    cp $e0
    add hl, hl
    rlca
    db $fd
    ld b, $ff
    inc b
    ei
    inc b
    rst $30
    ld [$08ff], sp
    rst $30
    ld [$1ffe], sp
    db $e3
    db $e4
    inc bc
    inc b
    ld b, e
    call z, $78c7
    ei
    inc d
    db $fd
    sub d
    ld l, l
    sub e
    db $fd
    inc de
    ld [$e416], a
    inc e

Jump_04c_4742:
    ret c

    jr c, jr_04c_47a5

    ldh [$80], a
    add b
    nop
    db $d3
    nop
    add hl, sp
    dec c
    ld [bc], a
    inc bc
    inc bc
    db $ec
    push hl
    ld sp, hl
    dec e
    db $f4
    rrca
    ld a, a
    ld [bc], a
    ld a, l
    inc bc
    rst $38
    add l
    nop
    push bc
    inc c
    nop
    rst $28
    db $10
    rst $38
    jr nz, @-$2f

    ld d, b
    sub a
    adc b
    adc a
    sub b
    rra
    ldh [rLYC], a
    rst $38
    nop
    dec bc
    cp $81
    sbc $61
    db $fd
    inc bc
    ld a, d
    add [hl]
    adc h
    db $fc
    ldh a, [$f0]
    ld b, l
    ret nz

    ld b, b
    ld c, c
    ldh [rNR41], a
    ld b, l
    ret nz

    ld b, b
    ld [bc], a
    add b
    add b
    add b
    sub $00
    db $f4
    ld [$0304], sp
    add hl, bc
    jr jr_04c_47c2

    ld h, b
    jr nc, jr_04c_4715

    ld sp, hl
    ld b, h
    add b
    ld a, a
    ldh [$34], a
    cp a
    ld b, b
    rst $38
    add c
    rst $28
    ld [de], a
    ei
    inc e
    and $17

jr_04c_47a5:
    push hl
    dec d
    ldh a, [$08]
    ld sp, hl
    add [hl]
    ei
    add h
    push af
    ld c, d
    db $eb
    ld d, l
    push af
    dec hl
    ldh [$3f], a
    db $e3
    ld a, $7f
    cp [hl]
    inc hl
    ld [c], a
    ld h, e
    and d
    ld b, b
    pop bc
    ld b, c
    pop bc
    add b

jr_04c_47c2:
    add b
    add e
    add e
    ld b, $04
    inc c
    ld [$1018], sp
    jr jr_04c_47ed

    inc a
    ld [hl+], a
    dec sp
    ld b, l
    ld b, h
    ld a, e
    ld b, $84
    or a
    ret z

    rst $10
    xor b
    rst $20
    sbc b
    ld b, e
    ld [hl], a
    ld c, b
    rlca
    scf
    jr z, jr_04c_481d

    inc h
    dec de
    inc d
    dec c
    ld c, $93
    nop
    ld h, [hl]
    ld [de], a
    add b
    add b

jr_04c_47ed:
    and b
    ld h, b
    ldh a, [rNR10]

jr_04c_47f1:
    ld hl, sp+$08
    ldh a, [rNR23]
    call c, $f824
    inc h
    ld c, [hl]
    ld a, [c]
    or $8a
    ld a, [hl]
    ld b, e
    add d

Call_04c_4800:
    cp $0f
    ld [bc], a
    cp h
    jp nz, $0ff7

    rst $38
    jr nc, jr_04c_47f1

    ld b, b
    jp $8380


    nop
    add a
    nop
    rst $08
    add h
    ld bc, $1283
    cp h
    ld b, e
    cp e
    ld b, h

jr_04c_481a:
    rst $00
    jr c, @-$1f

jr_04c_481d:
    jr nz, jr_04c_481a

    db $fc
    rst $30
    dec bc
    ld l, a
    nop
    rla
    nop
    dec hl
    nop
    ld d, a
    and l
    ld bc, $0a83
    ret nz

    cp a
    ld h, b
    sbc a
    db $10
    bit 1, h
    jp $c744


    jr c, @-$36

    nop

jr_04c_483a:
    sub $06
    db $10
    cp $01
    ld a, [$f806]
    ld hl, sp-$14
    ld a, [hl+]
    ld bc, $e080
    add h
    ld [bc], a
    scf
    ld b, h
    db $fc
    inc b
    inc d
    ld [c], a
    ld e, $9a
    ld [de], a
    sub [hl]
    adc [hl]
    ld [hl], d
    cp $02

jr_04c_4858:
    db $fc
    inc b
    db $fc
    inc [hl]
    ld hl, sp+$08
    ldh a, [$30]
    ldh [$c0], a
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld bc, $18e8
    ld b, [hl]
    ld hl, sp+$08
    db $10
    jr jr_04c_4858

    jr c, jr_04c_483a

    ret c

    adc b
    sbc b
    sub b
    ld [hl], b
    ldh a, [rNR10]
    ret nz

    jr nz, jr_04c_48dc

    and b
    ret nz

    ld b, b
    sub c
    ld bc, $c4ac
    nop
    jr nz, @+$45

    db $10
    rra
    ld b, l
    jr nz, jr_04c_48ca

    ld c, b
    ld b, b
    ld a, a
    add l
    adc a
    ld bc, $100f
    ld c, b
    rst $38
    nop
    nop
    add e
    add l
    nop

jr_04c_489a:
    sbc d
    ld [bc], a
    push de
    nop
    xor e
    and e
    nop
    or c

jr_04c_48a2:
    nop
    nop
    ld d, a
    rst $38
    nop
    adc d
    ld bc, $c500
    add c
    ld [$3f80], sp
    ret nz

    rst $28
    jr nc, @+$01

    ld [$04ff], sp
    and l
    sub a
    ld bc, $01ff
    add e
    ld [bc], a
    jp nc, $f803

    jr jr_04c_48a2

    ld h, b
    add l
    ld [bc], a
    cp $c3
    nop
    ld h, $05

jr_04c_48ca:
    rst $28
    add sp, -$01
    jr @-$07

    inc c
    add l
    ld bc, $4c6a
    rst $38
    nop
    inc bc
    ld bc, $02fe
    rst $38
    push bc

jr_04c_48dc:
    ret


    inc bc
    ld b, c
    rst $38
    ld hl, $43fd
    ld [hl+], a
    rst $38
    nop
    ld a, $83
    ld [bc], a
    nop
    nop
    ld a, $87
    inc bc
    dec e
    nop
    add b
    and a
    pop de
    push bc
    inc bc
    jr nz, jr_04c_489a

    ld [bc], a
    ret c

    ld bc, $04f8
    ld c, c
    cp $02
    ld [bc], a
    db $fc

Jump_04c_4901:
    ld [bc], a
    rst $30
    adc b
    nop
    rst $08
    adc a
    ld [bc], a
    ld l, b
    ld b, a
    rst $38
    nop
    add l
    ld [bc], a
    ret nz

    xor l
    inc bc
    ld a, [de]
    and e
    res 1, e
    ld [bc], a
    ret c

    ld c, a
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    nop
    ret nz

    add h
    ld bc, $0ca1
    add b
    add b
    ld d, [hl]
    cp $ab
    rst $38
    db $dd
    ld a, a
    ld b, b
    ccf
    inc bc
    inc e
    cp a
    add h
    rst $08
    add l
    nop
    ld b, b
    ld [bc], a
    rra
    ld [de], a
    rra
    ld b, l
    ld [hl+], a
    ccf
    inc bc
    ld b, d
    rst $38
    db $10
    rst $38
    adc h
    nop
    jp $e703


    sbc b
    rst $38
    ret nz

    adc e
    ld bc, $4514
    rst $38
    ld [$ef03], sp
    ret nc

    rst $38
    inc a
    add l
    ld bc, $a43a
    xor e
    inc c
    ld bc, $12ef
    db $eb
    inc d
    rst $30
    jr @+$01

    db $10
    rst $38
    rrca
    cp l
    ld b, d
    adc l
    ld [bc], a
    ld h, d
    inc bc
    ei
    add h
    rst $30

jr_04c_496e:
    ld a, b
    adc e
    ld [bc], a
    add h
    adc h
    ld [bc], a
    ldh [rP1], a
    ld [$e843], sp
    jr @+$04

    ret c

    jr c, jr_04c_496e

    adc d
    ld [bc], a
    push af
    rst $38
    ld [hl], l
    ld de, $0101
    inc bc
    ld [bc], a
    inc b
    inc b
    nop
    ld [$0800], sp
    inc b
    dec d
    inc b
    ld d, $13
    db $10
    inc de
    inc d
    ld b, e
    rrca
    ld [$1f1f], sp
    db $10
    scf

jr_04c_499d:
    jr nz, @+$24

    jr nz, @+$67

    ld b, b
    ld [hl], d
    ld b, b
    ccf
    jr nz, jr_04c_49e2

    inc a
    ccf
    dec hl
    dec sp
    inc h
    ccf
    ld h, $2f
    inc hl
    ld c, a
    ld b, c
    ld e, a
    ld b, c
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc e
    add l
    cp c
    add hl, bc
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld [$0607], sp
    rst $10
    call nz, $1561
    ret nz

    ret nz

    db $e3
    inc hl
    db $76
    sub h
    inc c
    ld a, h
    jr jr_04c_499d

    jr nz, jr_04c_49df

    ld d, c
    ld bc, $0131
    ldh a, [rP1]
    ldh a, [$08]

jr_04c_49df:
    ld hl, sp+$07
    ld b, e

jr_04c_49e2:
    rst $38
    nop
    ld [bc], a
    push af
    nop
    ld a, e
    jp $0483


    nop
    rst $18
    jr c, @+$01

    call nz, $ff43
    inc b
    inc bc
    rst $30
    adc b
    ld a, a
    ld l, b
    ld b, e
    inc de
    db $10
    dec d
    rra
    db $10
    ccf
    jr z, jr_04c_4a40

    daa
    ld a, a
    ld b, b
    ei
    ldh [$74], a
    db $10
    pop hl
    db $10
    db $db
    jr nz, @+$01

    nop
    rst $38
    ld bc, $fefe
    sub a
    nop
    nop
    inc d
    and $e6
    ld hl, sp+$19
    ld a, $0e
    add hl, de
    dec bc
    inc e
    dec b
    inc e
    rlca
    inc e
    daa
    ld e, $23
    ld a, $43
    ld a, a
    add c
    rst $38
    jp $01af


    nop
    ld a, a
    and e
    add e
    ld a, [bc]
    ld bc, $61ff
    rst $38
    sub d
    or $93
    rst $30
    sub d
    rst $38
    adc l
    ld b, e
    rst $38

jr_04c_4a40:
    add b
    nop
    rst $18
    ld b, l
    ld b, b
    rst $38
    add hl, bc
    add [hl]
    ei
    add hl, bc
    or $09
    rst $38
    nop
    xor e
    nop
    ld [hl], l
    add h
    nop
    sub e
    inc bc
    rst $38
    ldh a, [rIF]
    ld c, $91
    nop
    ld e, h
    ld c, $1f
    rra
    jr nz, jr_04c_4a81

    ldh [$ea], a
    db $10
    dec [hl]
    ld [$085f], sp
    cp a
    rlca
    rst $38
    add b
    ld b, h
    rst $38
    ld b, b
    db $10
    sbc h
    rst $38
    cp $e3
    sbc d
    rst $30
    sub l
    ld a, e
    db $db
    or l
    or c

jr_04c_4a7b:
    rst $18
    ldh [$bf], a
    ldh a, [$ef]
    sub b

jr_04c_4a81:
    ld b, h
    rst $38
    ld [$a91b], sp
    ld e, a
    ld e, c
    xor a
    db $fc
    dec bc
    jp c, $e5fd

    ld a, $e7
    ld e, h
    ei
    ld c, [hl]
    ei
    dec [hl]
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    nop
    ei
    jr nc, jr_04c_4a7b

    ld c, b
    or a
    ld c, b
    ld b, h
    rst $38
    nop
    inc b
    ld bc, $1efe
    ldh [$e0], a
    add l
    nop
    ret nc

    inc bc
    dec b
    inc b
    dec bc
    ld a, [bc]
    add e
    nop
    ld a, [hl+]
    ldh [rNR44], a
    rla
    db $10
    dec de
    db $10
    reti


    ret nc

    add hl, sp
    and b
    dec sp
    add sp, $57
    jp $80af


    db $fd
    add b
    ld a, [$6f80]
    pop bc
    ld a, [hl]
    rst $00
    ld hl, sp-$31
    ldh a, [$9f]
    ld [hl], l
    ld [$cd3e], a
    rst $18
    inc sp
    ld h, e
    cp l
    pop bc
    cp $43
    add b
    rst $38
    ldh [$27], a
    pop bc
    cp [hl]
    xor d
    push de
    push af
    adc e
    ld a, a
    reti


    and $ff
    inc h
    rst $38
    ld h, h
    cp a
    and [hl]
    ld a, l
    rst $28
    inc [hl]
    rst $08
    ld a, h
    rst $38
    set 7, h
    scf
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc bc

Jump_04c_4b00:
    db $fd
    inc b
    ei
    inc b
    rst $38
    ldh a, [rIF]
    rrca
    xor b
    nop
    call z, RST_00
    dec h
    add b
    inc bc
    ret nz

    nop
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    inc bc
    ldh a, [rNR10]
    ldh [rNR41], a
    ld b, e

jr_04c_4b1d:
    ret nz

    ld b, b
    ld bc, $f0b0
    ld b, e
    jr z, jr_04c_4b1d

    ld c, $44
    db $fc
    ld h, h
    call c, $cc74
    jr c, @-$06

    adc b
    ld a, b
    call z, $fc34
    sbc h
    and $45
    ld a, [$0e86]
    cp $1e
    ld a, [$fa26]
    inc l
    db $f4
    inc e
    db $f4
    ld e, b
    xor b
    cp b
    ld c, b
    ld [hl], b
    sub b
    and e
    nop
    ld e, d
    ld b, e
    ld b, b
    ret nz

    dec bc
    add b
    add b
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    add h
    db $fc
    inc b
    ld hl, sp+$18
    add l
    ld bc, $617e
    inc de
    inc c
    inc e
    rra
    inc hl
    daa
    jr nz, jr_04c_4b6a

    ld b, c
    ld [bc], a
    ld b, d

jr_04c_4b6a:
    inc de
    ld d, d
    ld d, b
    ld d, h
    ld b, h
    ld b, h
    ld l, $28
    rra
    jr jr_04c_4bb8

    rra
    db $10
    dec bc
    ld a, [de]
    jr nz, jr_04c_4bac

    jr nz, jr_04c_4bb5

    jr nz, jr_04c_4b9c

    db $10
    rra
    inc d
    rra
    inc de
    ld b, e
    rrca
    add hl, bc
    dec bc
    rla
    ld de, $2007
    cpl
    jr nz, jr_04c_4bce

    jr nz, jr_04c_4bb0

    ld de, $0e0e
    ld h, a
    inc b
    rlca
    rrca
    ld de, $0010
    ld [hl+], a

jr_04c_4b9c:
    jr nz, @+$0d

    ret nz

    ret nz

    ld b, h
    ld b, h
    call nz, Call_04c_6044
    nop
    and b
    ld de, $0e51
    ld b, l
    rst $38

jr_04c_4bac:
    nop
    inc b
    db $fd
    nop

jr_04c_4bb0:
    cp $00
    ld e, a
    and e
    add l

jr_04c_4bb5:
    db $10
    ld c, $ff

jr_04c_4bb8:
    ccf
    db $e3
    rst $38
    pop bc
    rst $38
    add e
    cp $8c
    db $fc
    db $fc
    db $f4
    rst $38
    call nz, $b2bf
    add e
    nop
    ld d, [hl]
    ld b, e
    rra
    db $10
    inc bc

jr_04c_4bce:
    ccf
    jr nz, @+$81

    ld b, b
    and e
    nop
    ld d, $0b
    pop hl
    ld hl, $2666
    ld a, b
    add hl, de
    db $76
    ld d, $79
    adc e
    ld a, h
    add l
    ld b, e
    cp $03
    ld b, h
    rst $38
    ld bc, $0001
    ld e, a
    add l
    ld bc, $0515
    ld bc, $31ff
    rst $38
    add hl, hl
    ei
    ld b, e
    add hl, hl
    rst $38
    ld [bc], a
    daa
    rst $38
    ld de, $ff43
    db $10
    and [hl]
    ld bc, $02ce
    nop
    rst $38
    ld b, $83
    ld bc, $8a0c
    rst $18
    db $10
    rst $38
    adc a
    db $fd
    rst $38
    ld [hl], c
    rst $38
    jp nz, $b4bc

    inc c
    inc c
    rrca
    inc c
    rra
    ld [de], a
    rra
    ld de, $df83
    add l

jr_04c_4c20:
    cp a
    ld [bc], a
    rst $38
    add hl, hl
    ei
    add a
    jp $2000


    ld b, [hl]
    rst $38
    db $10
    ld [bc], a
    jr nz, @+$01

    add $83
    cp a
    add h
    ld bc, $1d82
    ld bc, $0a0f
    dec c
    ld [$0406], sp
    rrca
    inc c
    rra
    db $10
    rrca
    ld [$c9cf], sp
    cpl
    add hl, hl
    ld e, $52
    rra
    di
    inc e

jr_04c_4c4c:
    db $f4
    jr jr_04c_4c4c

    ldh [$fe], a
    nop
    rst $38
    ld h, b
    ld b, h
    rst $38
    ret nc

    add a
    ld bc, $c5a8
    ld [bc], a
    ld sp, $7009
    jr nc, @-$02

    inc b
    ld hl, sp+$08
    ld hl, sp+$48
    or b
    or b
    xor e
    nop
    jp z, Jump_04c_4005

    ld b, b
    jr nc, jr_04c_4c20

    jr z, @-$16

    adc l

Jump_04c_4c73:
    ld [bc], a
    ld [bc], a
    adc l
    ld [bc], a
    ld h, b
    sub c
    ld [bc], a
    ld l, h
    adc [hl]
    ld [bc], a
    and b
    nop
    ld [hl], h
    add e
    nop
    ld [hl], h
    rrca
    jr nz, jr_04c_4ca6

    inc e
    ld e, h
    inc de
    di
    db $10
    ld hl, sp+$10
    push af
    ldh [$fe], a
    ld bc, $2600
    nop
    ld b, e
    ld a, [hl]
    nop
    rlca
    cp h
    nop
    ld d, [hl]
    nop
    xor b
    nop
    stop
    rst $38
    ld [hl], c
    dec bc
    rrca
    rrca
    rra

jr_04c_4ca6:
    db $10
    inc sp
    jr nz, jr_04c_4cdb

    jr nz, jr_04c_4d25

    ld b, b
    ld a, a
    ld c, b
    ld b, e
    ld a, a
    ld d, b
    add hl, bc
    ld a, [hl]
    ld d, c

jr_04c_4cb5:
    jr c, @+$31

    ld h, $3f
    jr jr_04c_4cda

    rlca
    rlca
    db $ec
    ld c, l
    inc bc
    ld bc, $0301
    ld [bc], a
    ld b, e
    rlca
    inc b

Call_04c_4cc7:
    add hl, bc
    ld c, $09
    adc l
    adc e
    db $dd
    ld d, e
    db $db
    ld d, a
    cp e
    ld h, a
    ld b, e
    or l
    ld l, l
    dec bc
    ld h, l
    db $dd
    ld c, c
    ld sp, hl

jr_04c_4cda:
    adc c

jr_04c_4cdb:
    ld sp, hl
    ld de, $60f1
    ldh [$80], a
    add b
    ld [hl], h
    inc bc
    ld bc, $0200
    inc bc
    inc h
    ld [bc], a
    ld hl, sp+$25
    cp [hl]
    db $10
    ld bc, $0701
    ld b, $1f
    jr jr_04c_4d74

    ld h, c
    or $8e
    db $dd
    jr c, jr_04c_4cb5

    ld [hl], b
    ld h, l
    ldh [$ef], a
    ld b, e
    ret nz

    rst $08
    ld c, $80
    sbc [hl]
    add c
    sbc l
    add e
    ld e, [hl]
    inc bc
    cp [hl]
    inc bc
    ld e, a
    ld bc, $00bf
    rst $38
    nop
    ld b, e
    db $fd
    ld [bc], a
    ld b, e
    cp $81
    ldh [rNR42], a
    cp h
    jp Jump_04c_457a


    ld d, l
    ld l, d
    dec hl
    scf
    db $10
    jr jr_04c_4d43

jr_04c_4d25:
    rra
    ld de, $181f
    jr jr_04c_4d6a

    scf
    rst $38
    jp $046c


    db $db
    rlca
    sbc c
    ld b, h
    rst $30
    ld c, h
    sbc $cc
    ld d, d
    ld d, d
    ld hl, $ec21
    ld hl, $c005
    ret nz

    ld hl, sp+$38

jr_04c_4d43:
    adc [hl]
    ld b, $c3
    nop
    ld a, h
    rlca
    inc b
    nop
    xor d
    nop
    ld d, l
    nop
    db $eb
    nop
    ld b, e
    rst $38
    nop
    ldh [$39], a
    rst $18
    ldh [$fb], a

jr_04c_4d59:
    db $fc
    ld a, [hl]
    rst $38
    rra
    rst $38
    ld b, $ff
    adc [hl]
    ld hl, sp-$28
    ld [hl], b
    ldh a, [$30]
    pop af
    jr nz, jr_04c_4d59

    ld d, c

jr_04c_4d6a:
    ret


    ld l, c
    push hl
    add l
    rst $00
    and h
    db $eb
    adc d
    ei
    adc d

jr_04c_4d74:
    ccf
    inc b
    ld e, [hl]
    ldh [rNR32], a
    nop
    call c, Call_04c_4fe1
    ret z

    ld a, $34
    sbc $e2
    cp a
    ld [hl], c
    xor a
    ld l, b
    adc a
    ld l, b
    add $44
    add a
    add h
    ld [bc], a
    ld [bc], a
    ld bc, $2502
    ld bc, $0001
    ld bc, $00cb
    jp $0509


    inc b
    dec b
    ld b, $05
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    xor e
    nop
    sub $a3
    nop
    ld a, h
    add hl, de
    ldh a, [rNR10]
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    ld a, [$dc06]
    ld a, $ff
    jp $019e


    rra
    ld bc, $023d
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ldh [rLY], a
    rra
    jr nc, @+$06

    pop af
    db $fc
    ld [c], a
    cp $03
    ld b, e
    db $fd
    dec b
    nop
    ld a, a
    add e
    ld bc, $e061
    inc [hl]
    ret nz

    ld a, a
    add b
    ld sp, hl
    di
    adc d
    ei
    cp $ff
    or $8f
    ld [$fb7f], a
    ld b, $7f
    ld [bc], a
    cp [hl]
    inc bc
    ld a, l
    inc bc
    cp a
    ld bc, $015f
    ccf
    nop
    sbc a
    nop
    sbc a
    add b
    adc a
    add b
    rst $08
    add b
    xor a
    add b
    ld e, a
    add b
    xor $00

Call_04c_4e00:
    sbc $00
    sbc h
    ld b, d
    ld a, e
    add $db
    rst $00
    ld e, l
    ld b, l
    ld e, b
    ld e, b
    ld [hl], e
    inc bc
    ld b, $0f
    ccf
    ld a, a
    and e
    ld bc, $e06c
    dec l
    ret nz

    rst $38
    ld h, b
    cp a
    di
    rra
    db $fc
    inc c
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    ld h, h
    adc [hl]
    sub d
    dec c
    inc de
    inc c
    db $10
    rra
    inc bc
    inc a
    ld hl, $86fe
    db $fd
    dec b
    ld hl, sp+$0a
    ld hl, sp+$1a
    db $ec
    ld a, l
    adc h
    db $fd
    ld [de], a
    ld a, [c]
    ld [hl-], a
    jp nc, $a161

    ldh [rNR41], a
    ret nz

    ld b, b
    jp z, $cb01

    dec h
    add b
    ld b, e
    ld b, b
    ret nz

    inc c
    jr nz, @-$1e

    jr nz, jr_04c_4eb2

    db $10
    ld [hl], b
    db $10
    or b
    ld d, b
    ld d, b
    ld [hl], b
    ld h, b
    ld h, b
    cp c
    nop
    cp b
    ld b, $80
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    rst $08
    add h
    ld b, $80
    ld h, b
    ld [hl], b
    add b
    adc b
    ld [hl], b
    ld [hl], b
    and e
    nop
    or b
    dec bc
    add b
    and b
    ld b, b
    ld d, b
    jr nz, @+$2a

    db $10
    stop
    add b
    nop
    add b
    db $ec
    dec hl
    add l
    nop
    ldh a, [rSCX]
    sbc a
    add b
    inc c
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    ld d, l
    ld l, e
    dec hl
    ld [hl], $13
    ld e, $1e
    ld b, h
    rra
    ld de, $3917
    scf
    db $fd
    jp $036f


    call c, $9f04
    ld b, a
    ld sp, hl
    ld c, c
    sbc $ce
    ld d, e
    ld e, e
    ld hl, $0321
    inc bc
    inc b
    inc b
    inc bc
    inc bc

jr_04c_4eb2:
    ld l, e
    nop
    ld a, [$0184]
    ld h, c
    nop
    cp $8c
    add e
    dec c
    db $fd
    nop
    or [hl]
    ld a, b
    db $fc
    cp $ce
    rst $38
    add a
    rst $38
    add e
    cp $c2
    jp nz, $018d

    and b
    add l
    ld bc, $15d0
    cp h
    inc b
    ld e, d
    ld b, $2e
    ld [bc], a
    dec e
    inc bc
    dec c
    inc bc
    inc c
    inc bc
    ld d, $01
    ld c, $01
    ld d, $01
    dec l
    inc de
    rst $08

jr_04c_4ee7:
    db $e3
    add e
    ld bc, $0edc
    ei
    ei
    cp $ff
    db $dd
    ld a, [hl]
    ld b, c
    ld e, l
    sbc [hl]
    inc hl
    adc h
    sbc a
    rst $08
    add b
    add a
    inc h
    add b
    inc bc
    ld b, [hl]
    rst $08
    ccf
    rst $38
    add a
    ld [bc], a
    ld c, b
    dec b
    ld l, d
    ld a, [c]
    sbc d
    sub d
    adc l
    adc l
    add l
    ld [bc], a
    adc c
    inc bc
    nop
    ldh [$a0], a
    ld h, b
    ld l, b
    inc b
    jr nc, jr_04c_4f20

    ret z

    jr nc, jr_04c_4f4b

    and h
    inc bc
    ld b, d
    inc c
    ret nz

jr_04c_4f20:
    nop
    jr c, jr_04c_4ee7

    call nz, $3878
    ret nc

    ld d, b
    ld h, b
    ld h, b
    ret nz

    ld b, b
    ld h, c
    inc de
    jr jr_04c_4f68

    inc c
    ld b, h
    ld c, [hl]
    ld b, e
    ld a, d
    ld b, l
    inc [hl]
    dec hl
    ld de, $0e1f
    ld c, $07
    inc b
    ld b, $05
    ld c, $09
    ld b, e
    dec c
    dec bc
    ld bc, $131f
    ld b, l
    dec de
    rla

jr_04c_4f4b:
    dec bc
    inc de
    rra
    dec d
    dec e
    dec [hl]
    dec l
    inc [hl]
    inc l
    inc h
    inc a
    jr z, jr_04c_4f90

    ld b, e
    ld c, b
    ld a, b
    inc bc
    adc b
    ld hl, sp-$70
    ldh a, [$c9]
    ld bc, $29cf
    ld bc, $0965
    inc hl

jr_04c_4f68:
    ccf
    dec h
    dec a
    ld b, l
    ld a, l
    ld c, c
    ld a, c
    ld c, b
    ld a, b
    ld b, l
    sub b
    ldh a, [rIF]
    inc l
    db $ec
    ld [hl], $f2
    cpl
    pop hl
    dec hl
    push af
    dec d
    ei
    add d
    cp $8c
    db $fc
    ld [hl], b
    ld [hl], b
    add a
    ld bc, $0d70
    ldh [rSTAT], a
    bit 4, c
    push de
    add c
    rst $18

jr_04c_4f90:
    or b
    rst $38
    sbc b
    rst $38
    adc h
    dec sp
    ld b, $89
    ld bc, $8c86
    ld bc, $08e0
    ldh a, [rIE]
    ldh [rIE], a
    nop
    cp $01
    ei
    rlca
    adc c
    ld bc, $88f6
    ld [bc], a
    ld d, b
    inc c
    inc b
    cp $02
    db $ed
    inc de
    db $fc
    jr nc, @+$01

    ld h, e
    db $fc
    pop bc
    cp $06
    adc c
    ld [bc], a
    ld h, [hl]
    rst $38
    ld [hl], e
    dec c
    inc b
    inc c
    ld [bc], a
    ld [de], a
    ld de, $0811
    ld [$0404], sp
    dec b
    dec b
    add hl, bc
    add hl, bc
    inc hl
    ld a, [bc]
    dec c
    ld a, [de]
    ld a, [hl-]
    nop
    ld b, d
    ld a, c
    ld b, c
    inc e
    dec a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $6401

Call_04c_4fe1:
jr_04c_4fe1:
    ld bc, $0001
    add d
    adc c
    db $ec
    ld b, c
    ld [bc], a
    jr nc, jr_04c_501b

    ld c, b
    ld b, h
    ld c, b
    ld e, b
    add hl, bc
    ld e, a
    ld b, a
    and [hl]
    and d
    sub b
    sbc b
    ld bc, $0504
    inc b
    ld b, e
    inc bc
    ld [bc], a
    inc hl
    ld bc, $29e0
    dec e
    dec e
    inc hl
    ld l, $a3
    cp [hl]
    ld h, e
    ld a, [hl]
    rra
    inc e
    db $fd
    ret nz

    ld a, $3d
    sub $c6
    xor h
    ld [bc], a
    ld sp, hl
    inc b
    ld a, d
    call nz, $3c1b
    dec bc
    ld a, [bc]

jr_04c_501b:
    dec bc
    ld c, $05
    ld b, $08
    ld [$0809], sp
    ld [de], a
    db $10
    rla
    ld h, $29
    cpl
    add hl, hl
    dec hl
    ld b, e
    db $10
    rra
    inc bc
    inc c
    rrca
    inc bc
    inc bc
    db $ec
    add hl, hl
    ld bc, $c0c0
    ld b, e
    ld h, b
    jr nz, jr_04c_4fe1

    rst $20
    ld bc, $8080
    ld c, c
    ret nz

    ld b, b
    inc hl
    add b
    dec c
    add c
    add c
    xor $70
    rlca
    add [hl]
    ld e, $01
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld b, h
    rst $38
    nop
    ld [$7b06], sp
    ld a, [bc]
    ei
    jr jr_04c_50d1

    inc e
    rst $38
    ld bc, $fe44
    inc bc
    db $10
    ld bc, $82ff
    db $fd
    adc [hl]
    ld h, a
    db $f4
    add [hl]
    add h
    dec b
    inc b

Call_04c_5070:
    ld [$1008], sp
    db $10
    add hl, de
    add hl, de
    ld b, e
    ld h, $3e
    ld bc, $3c3c
    db $ec
    inc h
    dec bc
    ld bc, $0200
    inc b
    inc b
    rlca
    rlca
    inc c
    inc c
    dec c
    inc c
    dec e
    ld [hl+], a
    inc d
    ldh [rNR44], a
    inc l
    inc h
    ld c, c
    ld c, c
    or e
    sub d

jr_04c_5095:
    ld d, e
    inc de
    or h
    dec [hl]
    call nz, $86c7
    add a
    ld h, c
    ld bc, $98fc
    rst $38
    ld l, [hl]
    ld e, a
    ld bc, $80af
    rst $38
    ld h, b
    rst $18
    ld e, a
    add c
    add b
    inc a
    inc a
    ccf
    jp $04fc


    ld b, e
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ldh [rNR41], a
    add h
    ld bc, $f408
    ld a, [hl+]
    nop
    dec sp
    dec e
    rlca
    rrca
    jr nc, jr_04c_5137

    add c
    add b
    inc bc
    inc bc
    dec c
    inc b
    ld e, l
    inc b
    xor l
    add h

jr_04c_50d1:
    ld sp, hl
    ld hl, sp-$7f
    add c
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    add c
    ld a, a
    pop bc
    ld b, e
    ld a, [hl]
    jp nz, $fc07

    sbc h
    ld h, b
    ld h, b
    rrca
    ld b, $ff
    ld sp, hl
    ld b, h
    rst $38
    add b
    inc e
    nop
    rst $38
    nop
    ccf
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld b, c
    rrca
    ld b, c
    ld d, [hl]
    ld b, d
    adc [hl]
    add d
    sbc h
    add h
    xor h
    add h
    ld e, [hl]
    ld b, d
    ld a, a
    ld b, e
    ccf
    scf
    inc de
    rra
    ld b, $06
    ld a, l

jr_04c_510f:
    rrca
    inc de
    rrca
    ld b, b
    jr nz, jr_04c_5095

    add b
    nop

jr_04c_5117:
    ret nz

    ret nz

    jr nc, jr_04c_5117

    inc c
    cp $02
    rst $38
    add c
    ld b, e
    rst $38
    add b
    dec bc
    cp a
    add b
    add hl, de
    nop
    ld a, c
    ld a, b
    add a
    add h
    sbc a

jr_04c_512d:
    add h
    cp a
    cp b
    ld b, h
    ld a, a
    jr nz, jr_04c_514e

    ld h, b
    rst $38
    ld b, h

jr_04c_5137:
    rst $38
    add h
    ld l, a
    ld c, b
    cpl
    jr z, jr_04c_512d

    jr z, jr_04c_510f

    ret c

    ccf
    cp h
    ld [hl], a
    db $f4
    db $d3
    ld a, [c]
    xor e
    ld a, [$f959]
    xor b
    ld hl, sp+$70

jr_04c_514e:
    ld a, b
    ld [hl+], a
    ld [hl], b
    ld b, h
    ldh a, [$e0]
    ld bc, $e060
    ld hl, sp+$27
    ld bc, $01d8
    ld b, b
    ld h, b
    and e
    ld bc, $003e
    nop
    inc hl
    inc b
    ld c, $02
    xor d
    ld [bc], a
    sub $82
    ld [$f642], a
    ld [hl+], a
    db $fc

Jump_04c_5170:
    inc h
    db $fc
    inc d
    ld hl, sp+$18
    ld b, l
    ld hl, sp+$08
    ld c, l
    db $fc
    inc b
    adc h
    sub e
    inc b
    call nz, $223e
    ld a, [hl-]
    ld [hl+], a
    ld h, $11
    ld [$2313], sp
    ccf
    ld [hl+], a
    ld a, $16
    ld a, $1c
    inc e
    ld l, c
    add e
    nop
    ret nz

    dec bc
    jr nc, jr_04c_51b1

    db $10
    rra
    inc e
    rrca
    rrca
    dec bc
    inc b
    rlca
    ld bc, $8301
    ld bc, $0b2c
    rst $38
    add d
    db $fd
    add [hl]
    ei
    adc h
    or $14
    ld h, l
    db $e4
    adc b
    adc b
    ld h, a

jr_04c_51b1:
    ld de, $1818
    inc l
    inc h
    ld h, $22
    rla
    inc de
    jr nc, jr_04c_51ec

    ld c, a
    ld b, [hl]
    cp c
    sbc c
    and b
    and b
    ld b, b
    ld b, b
    jp $3300


    ldh [$33], a
    ld [bc], a
    inc bc
    ld h, c
    ld h, c
    sub b
    sub b
    ret


    ret


    daa

jr_04c_51d2:
    ld h, $37
    jr nc, jr_04c_5225

    ld b, a
    ld a, b
    ld c, b
    jr nc, jr_04c_520b

    ret nz

    ret nz

    jr nz, jr_04c_5200

    ldh a, [rNR12]
    db $f4
    sub h
    db $fc
    call z, $c879
    add hl, sp
    add sp, $3b
    add sp, $7d

jr_04c_51ec:
    ret c

    jp hl


    xor b
    xor $24
    sbc $46
    db $db
    jp z, Jump_04c_5170

    ld hl, $0021
    ld bc, $6060
    inc hl
    sub b
    ld [de], a

jr_04c_5200:
    ld c, e
    ld c, e
    ld c, h
    ld c, h
    ld hl, $1320
    inc de
    ld d, $12
    inc h

jr_04c_520b:
    inc h
    inc l
    inc h
    dec l
    dec h
    ld h, $27
    ld d, $22
    inc de
    rla
    dec bc
    add hl, bc
    ld [$3c08], sp
    ld a, h
    sbc a
    add a
    ld a, $02
    ld a, a
    ld bc, $00ef
    rst $18

jr_04c_5225:
    inc b
    db $d3
    ld [$1ae9], sp
    ei
    inc e
    ld a, a
    ld [$3f43], sp
    nop
    nop
    ld a, a
    and h
    ld bc, $0d21
    ld e, $b1
    adc c
    rst $38
    ld b, [hl]
    rst $38
    ccf
    ld a, $05
    ld b, $07
    inc b
    ld b, $04
    add e
    ld bc, $833c
    rst $08
    ld [bc], a
    or b
    sub b
    jr nz, jr_04c_51d2

    nop
    ld sp, hl
    nop
    ret nz

    push bc
    nop
    dec [hl]
    rla
    jp nz, $24c2

    db $e4
    inc d
    ld [hl], h
    add hl, de
    ld hl, sp+$33
    pop af
    rst $20

jr_04c_5262:
    ld [c], a
    rrca
    inc b
    rst $38
    db $fc
    cpl
    ld [bc], a
    ld e, a
    ld [bc], a
    cp a
    inc e
    rst $38
    ldh [rLYC], a
    rst $38
    nop
    nop
    ld a, a
    ld b, e
    add b
    rst $38
    inc c
    ld b, b
    rst $38
    ld b, b
    and a
    ld h, b
    and c
    ld h, b
    ld a, h
    call c, $c3bf
    ld a, h
    add h
    adc l
    ld bc, $69a2
    inc de
    ld h, a
    ld l, a
    or b
    sub b
    ld sp, $6310
    jr nz, jr_04c_5262

    ld b, b
    ld a, a
    ld h, b
    ld a, a
    db $10
    rst $38
    db $10
    cp $e0
    cp $00
    ld e, l
    rst $38
    nop
    add e
    ld [bc], a
    inc c
    ld bc, $02fe
    and l
    ld [bc], a
    ld b, $05
    ccf
    nop
    add hl, de
    nop
    add hl, de
    nop
    call z, $0291
    inc b
    rst $38
    inc b
    ld b, e
    rst $28
    ld [$cf03], sp
    ld [$188f], sp
    adc c
    ld [bc], a
    db $76
    rlca
    dec de
    inc a
    rrca
    ld [$0807], sp
    dec b
    inc b
    add a
    nop
    cp b
    ld b, e
    rst $38
    nop
    ld b, $f7
    nop
    db $ed
    ld [bc], a
    rst $38
    ld [bc], a
    ld l, a
    add h
    ld bc, $ff2b
    ld [hl], d
    inc h
    ld bc, $8683
    ldh [rNR51], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    dec bc
    add hl, bc
    dec bc
    ld [$1117], sp
    rra
    ld [de], a
    ld e, $15
    inc c
    dec c
    ld c, $0a
    ld a, [de]
    ld d, $25
    dec l
    jr c, @+$2a

    ld d, b
    ld d, b
    ld [hl], c
    ld d, c
    inc hl
    ld [hl+], a
    inc bc
    ld [bc], a
    rlca
    dec b
    dec b
    rlca
    nop
    inc b
    add e
    or d
    inc h
    ld bc, $b3c4
    ld a, c
    dec d
    jr jr_04c_534c

    ld h, [hl]
    ld e, [hl]
    ld b, c
    cp a
    add e
    cp $8e
    ld a, l
    inc [hl]
    ei
    ld l, e
    rst $10
    call nz, $08bc
    ld hl, sp+$55
    dec [hl]
    db $fd
    ld e, $43
    rst $38
    nop
    ldh [$2d], a
    rst $18
    ldh [$f7], a
    jr c, jr_04c_5371

    inc e
    rra
    ld e, $1e
    sbc a
    ccf
    sbc a
    cp a
    ld a, a
    rst $38
    rst $38
    and a
    rst $30
    jp Jump_04c_4153


jr_04c_5342:
    ret


    and b
    xor b
    rla
    inc sp
    ccf
    inc l
    ccf
    jr nz, jr_04c_5366

jr_04c_534c:
    dec e
    rst $20
    cp $30
    rrca
    ld a, h
    ld b, a
    rst $38
    add e
    cp $0a
    ld [hl], h
    ld [hl], h
    adc b
    adc b
    ret c

    jp z, $0308

    rst $10
    call nc, Call_04c_69ff
    ld l, d
    rst $10
    add l

jr_04c_5366:
    ld a, [hl]
    ld b, e
    dec bc
    db $fc
    rrca
    rlca
    db $fc
    inc bc
    ld a, [hl]
    add c
    rst $38

jr_04c_5371:
    adc $3e
    pop af
    jr nc, jr_04c_5342

    inc bc
    db $fc
    nop
    rst $38
    ld bc, $ff44
    nop
    dec b
    ld bc, $807f
    rst $38
    add b
    cp a
    ld b, h
    ret nz

    rst $38
    ld bc, $c0bf
    and e
    sub e
    inc bc
    cp a
    ld b, b
    ld a, a
    add b
    add e
    add e
    add hl, de
    push af
    nop
    jp z, $c580

    ret nz

    ld [hl+], a
    jr nz, jr_04c_53af

    db $10
    inc c
    inc c
    ld b, $07
    rra
    jr jr_04c_53ed

    ld h, b
    sub a
    sbc c
    and a
    and d
    ld l, h
    ld l, h
    scf
    scf

jr_04c_53af:
    ld h, a
    rlca
    ld [hl], b
    ldh a, [$ec]
    inc e
    ld [hl], d
    cp $bd
    rst $08
    ld b, e
    ld a, [$4306]
    ld sp, hl
    rlca
    ldh [$27], a
    ld a, [c]
    ld c, $ff
    rra
    ldh [$e0], a
    scf
    rrca
    sbc c
    ld a, a
    ldh a, [rIE]
    inc e
    rlca
    ld hl, sp-$01
    ldh [rIE], a
    ld e, $1f
    db $e3
    pop bc
    cp [hl]
    ld a, a
    ret nz

    ccf
    ld hl, sp+$7f
    sbc [hl]
    add a
    cp a
    and c
    ld sp, hl
    ld h, l
    db $dd
    ld b, l
    sbc a
    sbc [hl]
    rst $38
    ld h, b
    ld c, c
    rst $38
    nop
    ld [bc], a

jr_04c_53ed:
    ld a, a
    nop
    cp a
    add h
    add e
    add e
    nop
    add d

jr_04c_53f5:
    rlca
    rst $38
    rra
    ld a, h
    add h
    ld hl, sp+$08
    ldh a, [$f0]
    sub l
    nop
    or l
    nop
    nop
    call nz, $1c00
    dec b
    ldh a, [$f0]
    jr z, jr_04c_5423

    ldh a, [$f0]
    and h
    nop
    jr jr_04c_541c

    ret nz

    jr nc, @-$0e

    inc e
    db $ec
    ld a, [hl+]
    sub $15
    db $eb
    ld a, [bc]
    push af

jr_04c_541c:
    nop
    ld c, d
    rst $38
    nop
    inc bc
    add b
    ld a, a

jr_04c_5423:
    ret nz

    ccf
    ld b, e
    ldh [$1f], a
    ld de, $0ff0
    rst $30
    rrca
    ei
    inc e
    pop hl
    jr z, jr_04c_53f5

    ld c, b
    ld_long $ff59, a
    dec [hl]
    rst $38
    ld c, $f3
    ld [hl], e
    cp e
    nop
    ld c, [hl]
    and e
    nop
    ld a, [de]
    ldh [$38], a
    jr nz, jr_04c_5465

    sub b
    sub b
    ld c, b
    ld c, b
    ld e, b
    ld c, b
    inc [hl]
    inc h
    inc l
    inc h
    ld a, [de]
    ld h, $16
    ld a, [bc]

jr_04c_5453:
    ld e, $12

jr_04c_5455:
    jr jr_04c_546d

    rla
    add hl, de
    rra
    ld de, $9f91
    cp a
    and c
    ld h, [hl]
    ld sp, hl

jr_04c_5461:
    ld a, d
    add $4e
    ld a, [c]

jr_04c_5465:
    inc [hl]
    ld [$ec34], a
    inc a
    db $e4
    jr c, jr_04c_5455

jr_04c_546d:
    jr z, @-$06

    jr nc, jr_04c_5461

    jr nz, jr_04c_5453

    ld b, b
    ret nz

    ldh [$e0], a
    sub b
    db $10
    or b
    sub b
    cp b
    ld b, e
    xor b
    ld hl, sp+$04
    ld c, b
    ldh a, [rNR10]
    ldh [$e0], a
    ld h, a
    add h
    nop
    jr nz, jr_04c_549c

    db $10
    dec e
    inc de
    ld a, [de]
    rla
    ld c, $0d
    dec b
    inc b
    ld b, $06
    ld e, $1a
    ld a, a
    ld h, a
    cp b
    sbc b
    ld h, b

jr_04c_549c:
    ld h, b
    add h
    nop
    ld a, [de]
    ld [bc], a
    dec b
    ld c, $0a
    ld b, e
    rst $38
    nop
    dec de
    ccf
    ret nz

    rst $28
    ldh a, [$bf]
    ld a, b
    ld a, a
    inc a
    dec a
    ld a, $bf
    ld e, $9e
    rra
    ld a, $7f
    ld a, [hl]

jr_04c_54b9:
    rst $38
    rst $08
    sbc $a7
    adc h
    rst $38
    or b
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    adc e
    nop
    ret nc

    dec c
    add e
    rst $38
    call $f63c
    ld sp, $03dd
    ei
    inc b
    cp $01
    db $fd
    inc bc
    and h
    ld bc, $0066
    ld bc, $ff4b
    nop
    add e
    ld bc, $8500
    ld bc, $1630
    or $0e
    db $db
    jr c, jr_04c_54b9

    jp $1c6c


    or h
    ld a, h
    set 7, a
    inc a
    rst $00
    ld hl, sp+$3f
    ret nz

    rst $38
    ld a, $ff
    rst $38
    ld bc, $c3fe
    and b
    ld h, c
    ld b, $01
    ret nz

    jp nz, $21e1

    ret nz

    ret nz

    ld l, e
    add hl, de
    inc bc
    inc bc
    inc b
    inc c
    inc bc
    db $10
    rla
    ld [de], a
    cpl
    jr nz, jr_04c_5553

    inc hl
    ld [hl], $2c
    jr jr_04c_552d

    db $10
    inc d
    ld [$000a], sp
    ld a, [bc]
    ld c, $0d
    rla
    rla
    ld b, e
    dec e
    dec d
    ld bc, $2929
    ld b, e
    ld a, [hl-]
    ld a, [hl+]
    add hl, bc

jr_04c_552d:
    ld d, e
    ld d, d
    ld [hl], l
    ld d, h
    dec h
    dec h
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    sbc c
    nop
    ld b, h
    ld c, $16
    rrca
    dec c
    inc hl
    ld e, $4f
    ld a, [$1775]
    cpl
    inc e
    db $fc
    db $f4
    inc d
    db $fc
    add e
    ld [bc], a
    sbc c
    dec bc
    add b
    rst $18
    ld h, b
    ld [hl], a
    ld a, b

jr_04c_5553:
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $24
    rst $38
    dec c
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $08
    rst $08
    add a
    and a
    jp $cea7


    rst $10
    ld a, e
    ld e, h
    ld l, e
    rla
    dec hl
    ccf
    db $dd
    db $f4
    xor h
    ld [hl], e
    ld d, c
    xor a
    ld [bc], a
    rst $38
    dec b
    cp $07
    ld a, h
    inc bc
    inc a
    inc bc
    cp $81
    ld a, a
    ldh [rNR11], a
    ld hl, sp+$04
    jp $a002


    ld bc, $03fd
    and h
    ld bc, $0172
    nop
    ld a, a
    ld b, [hl]
    add b
    rst $38
    and l
    ld [bc], a

jr_04c_5596:
    sbc [hl]
    ld bc, $40bf
    ld l, c
    dec bc
    jr c, jr_04c_5596

    ld a, $06
    inc sp
    db $fd
    call z, Call_04c_7aff
    add a
    db $fd
    inc bc
    ld b, e
    cp $01
    and e
    ld bc, $14bb
    ld sp, hl
    rrca
    ld hl, sp-$01
    rlca
    rlca
    ldh a, [$f8]
    ld l, a
    ld a, a
    sbc b
    rra
    and $e7
    ei
    add hl, sp
    xor $df
    db $fc
    scf
    db $fc
    adc h
    ld bc, $0753
    add b
    add b
    ld b, b
    pop bc
    ld b, b
    jp nz, $8181

    add e
    ld bc, $84a2
    ld bc, $06d6
    add b
    ld hl, sp-$08
    inc d
    inc c
    ld hl, sp-$08
    add a
    ld bc, $85a8
    nop
    ld [hl], b
    add hl, bc
    ld l, b
    rst $10
    ret nz

    cp a
    inc bc
    rst $38
    ld c, a
    ccf
    di
    inc c
    adc c
    ld [bc], a
    add b
    dec b
    jp $01fe


    rst $38
    adc $3e
    rst $38
    ld h, e
    dec e
    jr jr_04c_561a

    ld e, $22
    inc hl
    ld hl, $5801
    ld b, b
    ld b, h
    ld b, b
    ld b, d
    ld b, b
    ld e, l
    ld b, h
    ld h, e
    ld a, [hl+]
    ld b, c
    dec h
    jr nz, jr_04c_563b

    jr nz, jr_04c_5634

    inc l
    dec b
    ld [hl+], a
    ld a, [de]
    ld de, $1104

jr_04c_561a:
    ld b, h
    dec bc
    ld [$0c0c], sp
    ld bc, $040e
    dec b
    dec b
    inc b
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc b
    ld b, e
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    inc hl

jr_04c_5634:
    inc b
    ld d, $08
    dec bc
    ld [$0a0c], sp

jr_04c_563b:
    ld [$090a], sp
    add hl, bc
    ld c, $0b
    ld [$080f], sp
    rra
    ld [de], a
    rra
    inc de
    inc a
    inc h
    inc [hl]
    inc h
    ld c, h
    ld [hl+], a
    ld b, h
    ld bc, $3838
    ld a, l
    nop
    add b
    and e
    jp nz, Jump_04c_400e

    ld b, b
    jr nz, @+$62

    jr nz, jr_04c_567e

    sub b
    ld sp, $3393
    jp z, $4a1b

    sbc d
    ld c, e
    ld b, e
    db $dd
    dec h
    ldh [$31], a
    ld e, l
    and l
    ld l, l
    sub l
    xor [hl]
    ld d, e
    xor a
    ld d, a
    db $db
    add hl, sp
    ld d, e
    or e
    or a
    ld l, [hl]
    rst $20
    ld l, $26
    db $ed

jr_04c_567e:
    sub $35
    db $fc
    dec de
    db $ec
    rra
    ld hl, sp-$75
    jr nc, @+$75

    or $56
    sbc $ba
    cp a
    xor e
    rst $28
    ld e, b
    ld d, a
    call c, Call_04c_6eff
    rst $28
    add hl, hl
    sbc c
    ld [hl], b
    ld [hl], b
    xor b
    ld a, [c]
    xor c
    ld [hl], h
    ld h, b
    ld [hl+], a
    db $10
    ld b, $18
    inc d
    ld de, $0a09
    dec c
    ld [$0743], sp
    inc b
    ld bc, $0303
    db $ec
    inc hl
    ldh [rBGP], a
    add b
    add b

jr_04c_56b4:
    add c
    add c
    add e
    add d
    ld b, [hl]
    push bc
    call z, $d94b
    ld d, a
    ld sp, $22ef
    sbc $4f
    cp a

jr_04c_56c4:
    jp $803c


    ld a, a
    rra
    rst $28
    ccf
    pop af
    jr nz, jr_04c_56b4

    ld h, [hl]
    rst $00
    ld l, [hl]
    rst $18
    ld c, a
    rst $18
    jr nz, jr_04c_56c4

jr_04c_56d6:
    ld sp, $4f71
    ld a, a
    di
    cp $c5
    ccf
    and [hl]
    ld e, l
    jp $8f3e


    ld a, h
    xor e
    ld sp, hl
    rst $30
    ld a, a
    ei
    rrca
    xor $1a
    ld e, e
    xor e
    cp a
    ld c, [hl]
    pop af
    ld de, $31d0
    jr nz, jr_04c_56d6

    ldh [rNR41], a
    ret nz

    ld b, b
    ld hl, sp+$21
    add $0d
    jr jr_04c_5718

    jr c, @+$2a

    ld [hl], b
    ld d, b
    ret nc

    or b
    and b
    ld h, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add e
    xor a
    ldh [rSCY], a
    inc e
    ld e, $e6
    ld a, [$dc2c]
    or b
    ld [hl], b

jr_04c_5718:
    pop bc
    jp $0c0f


    cp a
    or b
    db $fc
    jp Jump_04c_4c73


    ld b, b
    ld a, a
    ld e, a
    ld h, b
    cp a
    ret nz

    add c
    cp $1e
    pop hl
    db $e3
    inc e
    db $fc
    inc bc
    rst $38
    add b
    cp a
    ret nz

    rst $28
    ldh a, [$6f]
    rst $18
    rst $08
    ld [hl], b
    ld [hl], e
    ld c, h
    call z, Call_04c_77b3
    adc b
    cp d
    ld b, h
    db $dd
    ld [hl+], a
    ld e, d
    and c
    db $fd
    add b
    ld a, h
    ld h, b
    rra
    inc de
    ld c, $0a
    rrca
    add hl, bc
    dec bc
    add hl, bc

jr_04c_5752:
    dec c
    ld [hl+], a
    ld [$0903], sp
    add hl, bc
    rlca
    rlca
    db $ec
    jr z, jr_04c_576a

    ld bc, $1e0f
    ld a, [hl]
    ldh [$e0], a
    ld bc, $1e80
    ld bc, $aae0
    nop

jr_04c_576a:
    rst $30
    ld h, c
    nop
    rst $38
    ld b, l
    rst $38
    nop
    ld bc, $e01f
    add e
    rst $28
    dec b
    ccf
    pop bc
    sbc $22
    ld hl, sp+$1c
    ld [hl+], a
    ldh [rNR12], a
    jr nz, jr_04c_5752

    db $10
    sub b
    db $10
    ld c, b
    adc b
    adc b
    ld c, b
    ld [$8828], sp
    ld [$9050], sp
    jr nc, @-$0e

    ret nz

    ret nz

    add [hl]
    nop
    ld [hl], h
    ld [bc], a
    add b
    add b
    add b
    db $ec
    dec hl
    ld bc, $ffff
    call nz, $1881
    rst $38
    nop
    jr nc, @+$52

    inc c
    xor b
    inc bc
    push de
    nop
    ld l, d
    add b
    add l
    ld a, b
    ld d, b
    ld b, $a1
    ld bc, $0e4c
    ldh [$30], a
    ret nz

    ld b, b
    nop
    add b
    db $ec
    ld c, a
    dec d
    add b
    ret nz

    ldh a, [$38]
    inc [hl]
    inc c
    ld c, $02
    ld b, $c2
    ld b, $32
    ld b, d
    ld a, [bc]
    inc h
    add h
    adc b
    ld c, b
    db $10
    jr nc, jr_04c_5833

    ld h, b
    ldh a, [$39]
    rst $20
    dec hl
    ld bc, $0343
    ld [bc], a
    xor c
    ld bc, $173e
    inc c
    inc c
    ld [bc], a
    ld [de], a
    db $10
    ld de, $3d01
    jr z, jr_04c_580c

    dec [hl]
    ld [hl+], a
    ld [hl+], a
    dec a
    inc [hl]
    inc hl
    ld a, [hl-]
    ld hl, $203f
    daa
    jr c, jr_04c_5832

    dec h
    ld b, e
    ccf
    ld [hl+], a
    ldh [rNR42], a
    ld a, $23
    daa
    add hl, sp
    dec sp
    dec h
    dec e
    inc hl
    rla
    add hl, de
    ld a, [de]
    rla
    rra
    rla
    dec de

jr_04c_580c:
    add hl, de
    inc de
    inc sp
    scf
    ld l, $27
    ld l, $26
    dec l
    ld d, $35
    inc a
    dec sp
    ld c, h
    ld e, a
    adc b
    adc e
    ldh a, [$f3]
    add [hl]
    nop
    xor [hl]
    inc d
    ret c

    ld d, a
    ld e, h
    ld a, a
    ld l, [hl]
    rst $28
    add hl, hl
    add hl, sp
    ret nc

    ldh a, [$28]
    ld [hl], d
    xor c
    db $f4
    ld h, b

jr_04c_5832:
    ret nc

jr_04c_5833:
    ld d, b
    ret nc

    ld e, b
    sub h
    sub c
    add l
    nop
    jp z, $008b

    ld [hl], c
    nop
    nop
    add e
    nop
    ld a, l
    ld bc, $4040
    ld b, h
    and b
    jr nz, jr_04c_5854

    ldh [$a0], a
    pop hl
    sub c
    and e
    jp nc, $d566

    db $ec
    ld e, e

jr_04c_5854:
    ld sp, hl
    adc h
    ld bc, $8903
    ld bc, $e060
    ld b, a
    and c
    ld h, c
    jp Jump_04c_4742


    call nz, $888e
    ld e, $11
    dec e
    ld a, $e7
    ld a, [$dd2e]
    or c
    ld a, [hl]
    rst $30
    ret z

    rst $28
    db $10
    rst $18
    and b
    cp a
    ret nz

    ld [hl], b
    ld c, a
    ld c, a
    ld [hl], b
    ld a, l
    ld b, d
    adc d
    push af
    pop af

jr_04c_5880:
    adc [hl]
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    rst $10
    db $fc
    cp h
    add sp, -$68
    ld a, h
    call nz, Call_04c_62de
    ld l, d
    ld d, d
    sub e
    jp hl


    reti


    dec h
    ld l, c
    sub l
    xor l
    ld d, e
    or l
    ld c, e
    sbc $22
    sbc $a2
    db $fc
    call c, Call_04c_5070
    ld b, e
    ld a, b
    ld c, b
    ld bc, $3030
    adc d
    inc bc
    inc c
    ld c, $03
    rlca
    inc c
    inc e
    jr nc, jr_04c_5925

    jp $8f60


    adc d
    jr nc, jr_04c_58d0

    ld b, b

jr_04c_58bc:
    cpl
    add b
    ld b, e
    rst $38
    nop
    add hl, de
    ret nz

    ccf
    ccf
    ret nz

    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$d505]
    dec hl
    xor d
    ld d, [hl]

jr_04c_58d0:
    inc d
    db $ec
    adc b
    ld a, b
    ld e, b
    xor b
    or b
    ld d, b
    ld d, b
    or b
    jr nz, jr_04c_58bc

    adc a
    ld bc, $113e
    jr c, jr_04c_595a

    db $fc
    add h
    adc [hl]
    ld [bc], a
    ld b, $f2
    ld b, $0a
    ld d, $82
    adc h
    ld h, h
    ld c, h
    inc d
    db $ec
    inc b
    ld b, e
    ld hl, sp+$08
    dec b
    ldh a, [rNR10]
    db $10
    ldh a, [$e0]
    jr nz, jr_04c_5880

    ld bc, $896e
    nop
    sub b
    add hl, bc

Jump_04c_5903:
    rst $18
    add hl, sp
    ld e, c
    or a
    or e
    ld l, [hl]
    ccf
    pop af
    ld sp, $43ee
    ld h, b
    rst $18
    nop
    ld b, b
    add [hl]
    ld bc, $ff19
    db $ec
    daa
    dec b
    ld bc, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    db $d3
    add h
    ld [bc], a
    ld bc, $0003

jr_04c_5925:
    ld [hl+], a
    inc b
    ld bc, $0407
    ld [hl+], a
    inc bc
    ld c, $02
    rrca
    ld e, $06
    inc hl
    ld h, $23
    ld a, $23
    inc e
    rra
    ld [bc], a
    inc bc
    ld bc, $ec01
    cpl
    inc hl
    ld bc, $2d17
    ld l, l
    ld a, $93
    cp $83
    ld hl, sp-$79
    db $fd
    rlca
    cp $06
    db $fc
    inc b
    cp $82
    ld a, h
    ld b, d
    ccf
    ld hl, $253a
    inc d
    dec de
    ld b, e

jr_04c_595a:
    ld [$030f], sp
    inc b
    rlca
    inc bc
    inc bc
    and e
    and l
    rlca
    ret nz

    ld b, b
    ldh [$61], a
    db $d3
    ld [hl], d
    add [hl]
    rst $38
    ld b, e
    inc de
    pop af
    ld [bc], a
    rra
    pop af
    ld c, $46
    rst $38
    ld [bc], a
    ld bc, $c738
    ld b, e
    db $fd
    add e
    ld b, e
    ld a, l
    ld b, e
    inc bc
    ld a, [hl-]
    ld h, $1c
    inc e
    ld l, b
    ld b, $03
    ld b, $06
    inc c
    inc c
    add hl, bc
    add hl, de
    inc hl
    jr jr_04c_5993

    inc c
    rrca
    rlca

jr_04c_5993:
    rlca
    add l
    add sp, $13
    rrca
    ld e, $77
    ld a, b
    sbc a
    and b
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    ld d, l
    xor d
    ld l, [hl]
    push de
    nop
    rst $38
    ld a, [hl]
    rst $38
    add c
    add c
    add [hl]
    nop
    add [hl]
    inc e
    nop
    adc d
    nop
    rst $10
    add b
    ld a, a
    ret nz

    ccf
    ldh [rIF], a
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc h
    ccf
    inc d
    rra
    jp hl


    xor $db
    inc a
    rst $08
    jr c, jr_04c_59e2

    ld hl, sp+$43
    rra
    ldh a, [rSCX]
    ld e, $f1
    rrca
    ld c, $f9
    rrca
    ld hl, sp+$27
    db $fc
    ld b, e
    cp $c1
    rst $38
    and b
    cp a
    jr jr_04c_5a00

    rlca

jr_04c_59e2:
    rlca
    ld l, c
    rlca
    ldh a, [$f8]
    inc c
    ld e, $03
    rlca
    add e
    add e
    inc hl
    pop bc
    nop
    add b
    add h
    db $d3
    rra
    inc a
    inc a
    db $e3
    rst $18
    or $0f
    add sp, $18
    rst $30
    rla
    rst $18
    ccf

jr_04c_5a00:
    sbc c
    ld a, c
    ld c, c
    cp c
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    jr nc, jr_04c_5a4d

    ld a, h
    rrca
    cp a
    inc bc
    ld a, a
    nop
    ld c, b
    rst $38
    nop
    inc bc
    ld bc, $07fe
    ld hl, sp+$44
    rst $38
    nop
    ld [bc], a
    ld [hl], b
    adc a
    db $fc
    add e
    ld a, [$000c]
    sbc a
    ld h, b
    rlca
    ld hl, sp+$03
    db $fc
    ld h, e
    sbc h
    ld [hl], e
    adc h
    ld a, a
    add b
    ld b, e
    ccf
    ret nz

    dec bc
    sbc a
    ld h, b
    rst $00
    jr c, @-$1e

    rst $18

jr_04c_5a3d:
    inc a
    db $e3
    rrca
    rst $38
    ldh a, [$f0]
    or d
    nop
    ld a, l
    dec h
    ret nz

    inc h
    ldh [rTMA], a
    jr nc, jr_04c_5a3d

jr_04c_5a4d:
    adc h
    db $fc
    ld b, d
    ld a, [hl]
    and c
    ld b, [hl]
    cp a
    and b
    ld a, [bc]
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld c, h
    rst $00
    adc $44
    add e
    cp $07
    db $fc
    ld b, a
    ld sp, hl
    ccf
    rst $00
    cp $07
    ld hl, sp-$7b
    or $00
    ld c, $86
    nop
    cp e
    dec b
    adc [hl]
    ld a, a
    call c, $f43b
    ld a, e
    ld b, e
    sbc b
    adc a

jr_04c_5a7e:
    inc b
    ld hl, sp-$71
    ldh a, [$7f]
    ldh a, [$a4]
    ld bc, $0b2d
    db $fd
    ld b, $ff
    inc b
    rra
    db $e4
    di
    ld a, [hl]
    jp $3ffe


    ccf
    db $f4
    dec h
    nop
    ld l, b
    ldh [rNR42], a
    ld b, b
    ret nz

    jr nz, jr_04c_5a7e

    ld hl, $11e3
    db $f4
    rla
    db $f4
    dec bc
    ld a, [$fc0f]
    rlca
    db $fc
    rrca
    ld hl, sp+$1b
    db $f4
    dec h
    ld a, [$f5ca]
    add l
    ld a, e
    ld [bc], a
    cp $06
    cp $0a
    cp $32
    cp $45
    ld bc, $0aff
    add hl, sp
    rst $38
    call z, Call_04c_4cc7
    rst $00
    ld a, h
    rst $00
    jr c, @+$01

    db $10
    ld b, [hl]
    rst $38
    ld [$0905], sp
    rst $38
    dec b
    rst $38
    add $3e
    ld b, e
    db $e4
    inc e
    ld b, e
    add sp, $18
    inc bc
    ldh a, [rNR10]
    ldh [$e0], a
    db $ec
    ld hl, $2007
    ld h, b
    db $10
    sub b
    ld hl, sp-$78
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld b, e
    cp $02
    inc bc
    db $fc
    inc b
    ld hl, sp+$18
    rst $10
    cp $27
    add b
    reti


    add b
    ld h, e
    ld b, e
    ld [bc], a
    inc bc
    ld b, e
    inc b
    rlca
    nop
    dec b
    inc h
    rlca
    nop
    inc bc
    adc [hl]
    nop
    ld e, c
    jp Jump_04c_4b00


    add hl, bc
    adc b
    adc h
    ret z

    ld c, h
    add sp, $6f
    call nc, $8e77
    cp $43
    inc de
    pop af
    add l
    ld bc, $0000
    ld a, h
    jr z, @+$01

    rra
    ld a, [c]
    ldh a, [$e5]
    ldh [$eb], a
    ldh [rPCM34], a
    ld h, b
    ld e, a
    ld d, c
    ld c, [hl]
    ld c, [hl]
    and b
    ldh [rNR23], a
    ld hl, sp-$52
    cp $5d
    rst $38
    jr c, @+$01

    add hl, hl
    cp [hl]
    ld e, e
    db $fc
    or a
    ld hl, sp+$5f
    ldh a, [$3f]
    ldh a, [$89]
    ld bc, $0270
    ld hl, sp-$01
    cp $23
    rst $38
    ld b, $7f
    rst $38
    ccf
    rst $38
    rrca
    ld hl, sp+$38
    and l
    nop
    xor [hl]
    ld [$0101], sp
    ld e, $1f
    ld [c], a
    cp $72
    adc a
    db $fd
    adc b
    ld bc, $4397
    cp $83
    dec bc
    ld a, h
    ld b, a
    ld a, c
    ccf
    ld hl, $423f
    ld a, a
    call nz, $38ff
    ld a, a
    add l
    ld [bc], a
    nop
    add hl, bc
    sub e
    pop af
    sbc a
    or c
    ld l, [hl]
    rst $38
    inc e
    ei
    db $f4
    ld a, e
    and l
    inc bc
    ld [de], a
    ld b, e
    db $10
    ldh a, [rSCX]
    ld [$45f8], sp
    inc b
    db $fc
    ld [bc], a
    jp nz, $22fe

    ld b, [hl]
    cp $12
    nop
    ld de, $ff44
    ld hl, $4104
    rst $38
    add c
    rst $38
    cp c
    add [hl]
    ld [bc], a
    ld a, c
    ld l, l
    dec c
    ld c, $0e
    inc sp
    ld sp, $4043
    adc a
    add b
    rst $18
    add e
    ld a, h
    ld c, h
    jr nc, @+$32

    ld h, e
    rlca
    pop bc
    pop bc
    ld hl, sp+$38
    rst $38
    rlca
    rst $38
    ldh a, [$a5]
    ld bc, $01b6
    inc bc
    inc bc
    ld h, $ff
    db $10
    rra
    rst $38
    add b
    ld a, a
    ld a, b
    rst $18
    sbc $5f
    rst $18
    xor $ee
    ld d, b
    ldh a, [$2c]
    db $fc
    dec sp
    cp a
    add a
    inc bc
    ld l, b
    daa
    rst $38
    ld de, $1efe
    db $fc
    inc c
    pop af
    ld sp, $c1c1
    ld [bc], a
    inc bc
    ld b, $06
    ld a, [hl-]
    ccf
    ld sp, hl
    rst $00
    cp $01
    add l
    inc bc
    sbc d
    ld h, l
    add hl, bc
    jr jr_04c_5c10

    inc h
    inc h
    ld b, [hl]
    ld b, d
    ld c, [hl]
    ld b, d
    ld a, a
    ld b, c
    and e
    ld [bc], a
    adc $b0
    ld [bc], a
    sbc d
    add l
    nop
    push af
    inc b
    ldh [$7f], a
    ret nz

    cp [hl]
    pop bc
    adc b

jr_04c_5c10:
    ld bc, $0b60
    rra
    ldh a, [rNR24]
    ret nc

    add hl, sp
    sub b
    ld a, a
    ld c, b
    cp a
    ld [$04ff], sp
    adc d
    ld bc, $8a75
    ld bc, $01d0
    cp $21
    ld b, [hl]
    rst $38
    jr nz, jr_04c_5c2d

    ld b, b

jr_04c_5c2d:
    rst $38
    adc c
    ld bc, $ffe6
    ld l, e
    ld e, $03
    inc bc
    inc c
    inc c
    db $10
    db $10
    rla
    db $10
    cpl
    jr nz, jr_04c_5c7d

    inc hl
    add hl, sp
    daa
    ld a, [hl]
    ld b, a
    ld l, b
    ld [hl], a
    ld a, h
    ld a, a
    sbc $bf
    db $fc
    add e
    rst $38
    add a
    rst $38
    adc a
    ld hl, sp-$39
    pop af
    ld b, e
    rst $38
    db $fc
    ld [$7183], sp
    ld c, a
    ld l, [hl]
    ld e, [hl]
    ld d, b
    ld [hl], b
    jr nz, jr_04c_5c80

    ld a, e
    ld bc, $0301
    ld [hl+], a
    inc b
    inc bc
    dec b
    inc bc
    rlca
    nop
    add $88
    ldh [$35], a
    inc c
    inc c
    ld d, $12
    rra
    inc de
    rrca
    inc c
    add e
    add d
    ld h, c
    ld h, e
    ld a, [de]
    dec de

jr_04c_5c7d:
    db $fc
    dec b
    ld c, h

jr_04c_5c80:
    db $f4
    ld c, c
    db $fc
    reti


    rst $38
    and a
    rst $38
    and b
    rst $38
    ld a, h
    rst $38
    inc hl
    db $e3
    ld b, b
    ret nz

    rst $00
    rst $00
    sbc b
    sbc a
    db $fc
    rst $38
    adc $ff
    ld h, l
    rst $38
    ld l, a
    rst $38
    rst $38
    cp $0f
    inc c
    rrca
    ld [$1917], sp
    rla
    dec de
    ld b, e
    rla
    rra
    ld bc, $1c13
    ld b, e
    ld [$190f], sp
    inc b
    rlca
    dec de
    rra
    jr c, jr_04c_5cf4

    ld a, a
    ld e, a
    ld a, a
    ld b, a
    ld a, [hl]
    ld [hl], c
    ccf
    ccf
    ld a, a
    ld l, a
    cp $81
    ldh a, [$ef]
    add c
    sbc a
    ld a, $3e
    ret nz

    ret nz

    ld h, e
    ld a, [de]
    ld [bc], a
    ld b, $01
    dec b
    dec b
    rlca
    ld e, $19
    ld l, e
    rst $30
    sbc l
    sbc [hl]
    ld c, l
    db $db
    ld a, a
    ld b, e
    ld a, a
    ret z

    ld a, a
    nop
    db $fd
    ld a, [hl]
    jp Jump_04c_40ff


    ld a, a
    add b
    ld b, h
    rst $38
    nop
    ld de, $ffe0
    ld [hl], b
    rst $38
    db $10
    rst $38
    ld a, b
    add a
    rst $18
    ld h, c

jr_04c_5cf4:
    cp a
    rst $00
    rst $28
    rra
    rst $38
    ccf

jr_04c_5cfa:
    rst $38
    ld a, [hl]
    daa
    rst $38

Call_04c_5cfe:
    ld de, $9f7e
    rst $38
    inc a
    cp $39
    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $08
    rst $28
    inc hl
    add a
    dec b
    jp nz, $21c3

    pop hl
    jr nz, jr_04c_5cfa

    add l
    db $db
    ld h, c
    inc e
    inc b
    inc c
    inc c
    inc d
    inc a
    inc h
    cp b
    ret z

    ld hl, sp-$18
    ld a, e
    sbc e
    db $fc
    ld h, a
    ld e, $13
    sbc a
    pop de
    rst $08
    ld sp, $00ff
    db $fc
    inc bc
    ldh a, [rIE]
    xor [hl]
    cp a
    ld h, c
    and [hl]
    rst $18
    ld e, $3e
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $ec
    di
    db $fc
    jp $01fe


    sbc $3d
    cp $f9
    cp $e1
    ld hl, sp-$39
    push de
    xor e
    xor e
    ld d, a
    ld e, a
    xor a
    sbc h
    ld a, a
    nop
    and h
    db $dd
    add e
    ld hl, sp+$0d
    db $ec
    rst $28
    and l
    rst $20
    ld b, a
    rst $00
    inc sp
    di
    rra
    db $fc
    rst $18
    db $fc
    ccf
    inc a
    and a
    pop hl
    ldh [$2c], a
    ld [hl], b
    ld [hl], b
    cp b
    adc b
    jp hl


    sbc e
    adc h
    cp $3c
    ld sp, hl
    ld d, h
    ret c

    cp e
    and h
    rra
    jr nz, @+$81

    ld b, b
    rst $38
    ret nc

    ld c, a
    ld hl, sp+$2f
    ld sp, hl
    ld e, $f9
    rrca
    db $fc
    rla
    db $f4
    and $e5
    add e
    add e
    ld h, e
    db $e3
    ld de, $1ff1
    rst $38
    add hl, sp
    rst $38
    ld [hl-], a
    rst $38
    ld h, $22
    rst $38
    ld bc, $cf47
    ld b, e
    ld b, b
    ret nz

    dec h
    ldh [rSB], a
    and b
    ldh [rSCX], a
    ld b, b
    ret nz

    dec de
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    inc sp
    di
    db $fc
    rst $38
    call z, Call_04c_7bff
    add a
    cp $01

jr_04c_5dc4:
    inc l
    dec de
    push bc
    daa
    push hl
    and a
    ld [hl], a
    ld [hl], a
    inc c
    inc e
    and [hl]
    nop
    ld c, [hl]
    ld [$7080], sp
    ld [hl], b
    ld a, b
    jr z, jr_04c_5e44

    inc d
    db $ec
    inc d
    ld b, e
    ld hl, sp+$08
    ld [bc], a
    ret c

    jr c, jr_04c_5e5e

jr_04c_5de2:
    inc hl
    db $fc
    ldh [$35], a
    db $e4
    db $fc
    add h
    ld a, [$fe36]
    ld [c], a
    db $fd
    di
    db $fd
    jp $07ff


    rst $38
    ccf
    rst $28
    rra
    db $dd
    dec sp
    ld a, c
    add a
    ld a, d
    add [hl]
    ld [bc], a
    cp $c4
    db $fc
    jr z, @+$3a

    jr c, jr_04c_5e2d

    db $10
    db $10
    jr nc, jr_04c_5e79

    jr c, @-$76

    cp h
    cp h
    ld a, [hl]
    ld a, [hl]
    ld c, $26
    ld a, [hl+]
    ld h, $7a
    ld a, [hl]
    db $fc
    db $fc
    inc a
    db $fc
    jr @-$06

    jr nz, jr_04c_5de2

    add sp, -$5d
    nop
    ld d, l
    inc b
    jr nz, jr_04c_5dc4

    and b
    ld b, b
    ret nz

    add a
    nop
    ret nc

    inc bc
    rst $38
    rst $38

jr_04c_5e2d:
    ld a, a
    ld a, a
    inc hl
    rst $38
    ld [bc], a
    ld h, e
    rst $38
    add b
    adc h
    nop
    db $e3
    adc c
    ld bc, $0630
    cp [hl]
    cp a
    pop af
    rst $38
    ldh [rIE], a
    add b
    adc [hl]

jr_04c_5e44:
    ld bc, $6141
    jr jr_04c_5e55

    nop
    ld [de], a
    inc c
    inc h
    ld [de], a
    cpl
    inc de
    inc de
    inc c
    adc a
    add d
    ld h, c

jr_04c_5e55:
    ld h, e
    ld [hl], b
    nop
    adc b
    ld [hl], b
    inc [hl]
    adc b
    ld h, l
    sbc e

jr_04c_5e5e:
    add h
    cp $0c
    add h
    ld bc, $1e8b
    ld bc, $0601
    ld b, $08
    ld [$080b], sp
    rla
    db $10
    rra
    ld de, $131c
    ccf
    inc hl
    ld [hl], h
    ld a, e
    ld a, [hl]
    ld a, a

jr_04c_5e79:
    ld l, a
    ld e, a
    ld a, [hl]
    ld b, c
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, h
    ld h, e
    ld a, b
    ld b, e
    ld a, a
    ld a, [hl]
    ld [$3841], sp
    daa
    scf
    cpl
    jr z, @+$3a

    db $10
    db $10
    ld h, c
    adc l
    nop
    ld e, [hl]
    ldh [$29], a
    inc bc
    ld [bc], a
    ld bc, $c203
    jp $3534


jr_04c_5e9f:
    inc c
    inc c
    ld sp, hl
    inc c
    sbc c
    ld a, a
    daa
    rst $38
    ldh [rIE], a
    ld e, h
    rst $38
    ld c, e
    ei
    jr nc, jr_04c_5e9f

    inc bc
    db $e3
    inc l
    rst $28
    call c, $eedf
    rst $38
    ld h, l
    rst $38
    or a
    rst $38
    ccf
    cp $3f
    db $fc
    rst $08
    ret z

    adc c
    nop
    sub [hl]
    add l
    ld bc, $e080
    inc sp
    add sp, -$68
    adc b
    ld hl, sp+$33
    rst $30
    ld c, b
    call z, $9298
    jr z, @+$32

    ld [hl], a
    ld c, b
    cp a
    ret nz

    rst $38
    add b
    rst $38

jr_04c_5edc:
    and b
    sbc [hl]
    pop af
    ld e, a
    di
    dec a
    di
    rst $38
    ld sp, hl
    adc a
    adc b
    call $37cb
    rst $30
    ccf
    rst $38
    ld [hl], e
    ld a, [$fe63]
    ld b, a
    cp $ff
    cp $5c
    rst $18
    ld c, h
    rst $08
    ld b, [hl]
    rst $00
    pop hl
    pop hl
    add l
    ld bc, $6bba
    inc bc
    ldh [$e0], a
    ldh a, [$50]
    ld b, e
    ret c

    jr z, jr_04c_5f4d

    ldh a, [rNR10]
    ld bc, $70b0
    inc h
    ld hl, sp-$20
    jr nz, jr_04c_5edc

    ld hl, sp+$08
    db $f4
    ld l, h
    db $fc
    call nz, $e6fa
    ld a, [$fe86]
    ld c, $fe
    ld a, [hl]
    sbc $3e
    cp d
    db $76
    ld a, [c]
    ld c, $f4
    inc c
    inc b
    db $fc
    adc b
    ld hl, sp+$50
    ld [hl], b
    ld [hl], b
    ld d, b
    jr c, jr_04c_5edc

    adc e
    ld [bc], a
    add b
    inc bc
    rrca
    ld [bc], a
    ld bc, $8503
    ld [bc], a
    sub b
    add hl, bc
    ld h, h
    sbc b
    add h
    ld hl, sp+$0b
    rst $30
    ld a, b
    call z, $9298
    rst $38
    db $ec
    daa

jr_04c_5f4d:
    inc b
    ld a, b
    ld a, b
    adc a
    rst $38
    sbc a
    ld [hl+], a
    rst $38
    inc bc
    ld a, a
    ld a, a
    ld bc, $7801
    inc hl
    ld bc, $0343
    ld [bc], a
    rlca
    rlca
    dec b
    rlca
    rlca
    rrca
    ld c, $0f
    rrca
    ld b, e
    ld e, $1f
    ld c, $3e
    scf
    ld a, $35
    jr nc, jr_04c_5fad

    jr nc, jr_04c_5f8a

    jr nc, jr_04c_5f91

    db $10
    dec c
    inc c
    inc bc
    inc bc
    ld l, e
    ld bc, $0707
    ld b, e
    ld [$050f], sp
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    inc bc

jr_04c_5f8a:
    adc e
    push de
    inc c
    ld [bc], a
    inc bc
    inc b
    rlca

jr_04c_5f91:
    ld [$000f], sp
    rrca
    ret nc

    rst $38
    pop hl
    rst $38
    di
    ld [hl+], a
    rst $38
    ld e, $3f
    ccf
    add hl, de
    ld a, [hl]
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    ld [hl], a
    ld d, l
    ccf
    inc l
    ccf
    jr nz, jr_04c_602b

    ld h, b

jr_04c_5fad:
    ld l, a
    ld [hl], b
    ld e, a
    ldh a, [$9f]
    ld hl, sp-$61
    db $fc
    cp a
    cp $3e
    rst $38
    ld l, a
    ldh a, [$7f]
    ld c, c
    ret nz

    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    rlca
    ld bc, $02be
    ld d, h
    inc b
    xor b
    ld [$a270], sp
    rst $28
    xor a
    nop
    ccf
    ld bc, $c0c0
    inc hl
    ldh [rNR44], a
    ldh a, [rNR43]
    ld hl, sp-$20
    ld [hl+], a
    ld sp, hl
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    cp a
    rst $38
    dec sp
    db $fc
    ld [hl], a
    ei
    ld a, l
    push af
    rst $38
    di
    rst $28
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret z

    ld a, a
    adc b
    pop af
    ld e, $ff
    jr nz, @+$01

    ld b, b
    cp a
    ret nz

    cp a
    ld b, b
    ld b, a
    rst $38
    nop

Jump_04c_6003:
    ld c, $cf
    nop
    add e
    nop
    add c
    nop
    db $e3
    nop
    ld a, $c1
    rst $08
    scf
    pop af
    ld c, $fe
    ret


    pop hl
    inc b
    rlca
    ld hl, sp+$78
    add b
    add b
    db $ec
    ld hl, HeaderLogo

jr_04c_601f:
    ld bc, $1f06
    ld a, b
    daa
    rst $38
    inc b
    ccf
    rst $30
    rrca
    db $fd
    add e

jr_04c_602b:
    add sp, $26
    rst $38
    nop
    ld c, $80
    rst $18
    jr nc, @+$01

    ld h, b
    rra
    ldh [$e7], a
    rra
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    sbc l
    db $e3
    dec e
    inc b
    rlca

Call_04c_6044:
    add hl, bc
    rrca
    ld [de], a
    rra
    daa
    ld a, $4f
    ld a, [hl]
    sbc l
    cp $3d
    rst $38
    rst $38
    cp $ff
    db $e4
    rst $38
    push bc
    cp a
    push bc
    rst $38
    add l
    rst $38
    add d
    ld a, a
    add d
    rst $38
    ld bc, $ff4e
    nop
    ld a, [bc]
    ld [$18ef], sp
    rst $38
    ld [de], a
    rst $18
    ld [hl-], a
    db $fd
    ld h, [hl]
    ei
    inc c
    ld c, c
    rst $38
    nop
    rlca
    cp $01
    db $fc
    ld [bc], a
    ld hl, sp+$0c
    ld h, b
    ldh a, [$79]
    inc de
    inc bc
    inc bc
    inc b
    rrca

jr_04c_6081:
    dec de
    ccf
    ld a, a
    ld a, a
    cp a
    rst $38
    ld a, h
    ei
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$bf]
    ld [hl], b
    and l
    ld bc, $163c
    rst $18
    jr c, jr_04c_601f

    ld c, h
    sub e
    sub $c3
    add l
    rst $00
    xor b
    db $fd
    ld [bc], a

jr_04c_60a1:
    db $fc
    inc bc
    or [hl]
    add hl, bc

jr_04c_60a5:
    sub e
    adc h
    pop bc
    ld b, [hl]
    pop af
    inc sp
    cp $43
    ld c, $f4
    nop
    inc c
    ld b, e
    db $ec
    inc d
    ld bc, $18e8
    ld b, l
    ld hl, sp+$08
    and e
    nop
    ld a, l
    inc de
    ret nc

    jr nc, jr_04c_60a1

    jr nz, jr_04c_6081

    ld a, [hl]
    ld e, a
    pop hl
    rst $38
    ldh [$1f], a
    jr jr_04c_60d0

    ld b, $09
    add hl, bc
    ld [de], a
    ld [de], a

jr_04c_60d0:
    inc d
    inc d
    inc hl
    jr z, jr_04c_60da

    jr c, jr_04c_60fc

    daa
    ld a, $1f

jr_04c_60da:
    jr jr_04c_60a5

    nop
    ld a, l
    add hl, de
    ldh [$e0], a
    jr @-$06

    ld a, h
    db $fc
    jp z, $d6e6

    jp nz, $c2ea

    push de
    pop bc
    xor e
    ld bc, $01d5
    ld [$fe02], a
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]

jr_04c_60fc:
    ld b, e
    ldh [rNR41], a
    ld bc, $40c0
    and e
    nop
    add [hl]
    ld bc, $40c0
    ld b, e
    ld b, b

Call_04c_610a:
    ret nz

    ld [$c0c0], sp
    ldh [rNR41], a
    ld [hl], b
    sub b
    add sp, -$78
    ld [$4822], sp
    ld bc, $3030
    or h
    ld bc, $04b8
    add h
    add h
    add [hl]
    add [hl]
    adc d
    ld b, e
    ld c, $0a
    dec c
    ld e, $12
    ld a, $22
    ld a, h
    ld b, h
    db $fc
    add h
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    sub a
    nop
    ld a, [hl-]
    ld bc, $0703
    and h
    nop
    ld hl, sp+$11
    ccf
    dec sp
    ld a, h
    ld a, a
    ld a, b
    ld [hl], a
    ld hl, sp-$01
    ret nz

    xor a
    ret nz

    rst $10
    add b
    ld l, d
    ld b, b
    dec [hl]
    jr nc, jr_04c_6160

    and [hl]
    ld [bc], a
    rla
    ld bc, $e09f
    ld b, e
    rst $38
    add b
    nop
    ld a, a
    xor e
    ld bc, $03eb

jr_04c_6160:
    rlca
    cp b
    jr jr_04c_61c4

    xor b
    ld [bc], a
    sub a
    add e
    ld bc, $0b10
    ld a, e
    adc h
    db $fd
    ld e, $ff
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh [$7f], a
    ret nz

    adc [hl]
    ld bc, $0230
    inc bc
    db $fc
    ld a, h
    sub [hl]
    ld bc, $e044
    ld hl, $0101
    inc bc
    dec bc
    rrca
    rla
    rra
    inc l
    ccf
    ld e, l
    ld a, [hl]
    ccf
    db $fc
    cp e
    db $fc
    ld a, e
    db $fc
    ei
    db $fd
    rst $38
    ld [c], a
    rst $18
    db $e4
    ld b, $0f
    rra
    ccf
    ld a, $7f
    ld a, [hl]
    rst $38
    rst $20
    cp $ee
    ld b, [hl]
    ldh a, [rIE]
    inc bc
    rra
    ldh [rIE], a
    nop
    adc c
    ld [bc], a
    ld b, [hl]
    inc b
    nop
    ret nz

    nop
    jr nz, jr_04c_61b6

jr_04c_61b6:
    ld [hl+], a
    db $10
    dec c
    nop
    ld [$0888], sp
    ld c, b
    ld [$10b0], sp
    ld d, b
    db $10
    or b

jr_04c_61c4:
    db $10
    ldh [rNR41], a
    add [hl]
    ld [bc], a
    cp [hl]
    ld [bc], a
    ld b, b
    ret nz

    ld b, b
    dec h
    add b
    adc c
    ld [bc], a
    add $03
    ld bc, $0001
    inc bc
    add e
    inc bc
    ld e, $a8
    nop
    pop af
    ld [de], a
    rrca
    ld c, $1f
    add hl, de
    ld e, $1f
    jr jr_04c_61fe

    jr jr_04c_61f3

    inc e
    rlca
    inc c
    ld bc, $7f03
    ldh a, [$ef]
    ldh a, [rLYC]

jr_04c_61f3:
    rst $38
    ldh [rSB], a
    rst $18
    ldh [$ab], a
    ld bc, $1296
    ld e, [hl]
    ld [bc], a

jr_04c_61fe:
    xor h

Jump_04c_61ff:
    inc c
    ld [hl], b
    jr nc, @-$7e

    ret nz

    ld b, $07
    add hl, de
    rra
    inc hl
    ccf
    ld c, a
    ld a, a
    cp a
    rst $38
    ld a, a
    add h
    ld bc, $84db
    inc bc
    sub l
    dec bc
    inc bc
    inc b
    rrca
    inc de
    ccf
    ld l, a
    ld a, a
    sbc a
    rst $38
    inc a
    rst $38
    ld a, e
    ld b, h
    db $fc
    ei
    ld bc, $38c7

jr_04c_6228:
    adc b
    inc bc
    ret z

    ld h, c
    ld d, $60
    jr nc, jr_04c_6228

    db $fc
    db $fc
    ld a, [c]
    and $eb
    pop bc
    push de
    pop bc
    db $eb
    pop bc
    push af
    inc bc
    ld [$fa02], a
    ld b, $fc
    inc b
    db $f4
    inc c
    add e
    ld [bc], a
    cp b
    ld bc, $20e0
    adc d
    nop
    and b
    inc b
    ld b, b
    ld a, a
    ld b, l
    ccf
    inc h
    add [hl]
    ld bc, $0400
    ld hl, sp+$7f
    ldh a, [rIE]
    pop af
    add e
    inc b
    ld [hl+], a
    rst $38
    db $ec
    jr nc, jr_04c_626d

    jr jr_04c_626b

    ld h, $03
    ld b, c
    ld e, a
    ld b, b
    ld h, e

jr_04c_626b:
    ld e, h
    ld b, b

jr_04c_626d:
    ld a, a
    ld b, l
    jr nz, jr_04c_62b0

    ld b, e
    db $10
    rra
    dec b
    ld [$060f], sp
    rlca
    ld bc, $ec01

jr_04c_627c:
    ld b, c
    dec bc
    inc c
    inc e
    inc hl
    inc hl
    inc b
    ld e, l
    ld d, e
    ld [hl], e
    ld a, a
    ld c, l
    ccf
    ld hl, $3f43
    jr nz, jr_04c_62d1

    rra
    db $10
    ld b, e
    rrca
    ld [$8419], sp
    add a
    jp nz, $c143

    ld b, c
    jr nz, jr_04c_627c

    ld hl, $16e1
    or $0e
    ld sp, hl
    dec b

jr_04c_62a3:
    cp $03
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    ld a, a
    rlca
    rlca
    db $ec
    scf

jr_04c_62b0:
    ldh [$37], a
    ld bc, $0703
    inc b
    rrca
    ld [$1417], sp
    ccf
    ld a, h
    rst $18
    sbc b
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    adc b
    ld a, a
    ret nz

    rst $28
    ld [hl], b
    cp e
    ld a, h
    cp a
    ld a, a
    jr @+$01

    db $10

jr_04c_62d1:
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    db $e4
    rst $18
    inc a

jr_04c_62d9:
    dec bc
    ld a, [c]
    ld sp, $c3c4

Call_04c_62de:
    cp b
    rlca
    ldh [$1f], a
    ld bc, $06ff
    rst $38
    dec sp
    db $fc
    add l
    call z, $0c22
    ld b, $14
    ld d, $12
    ld [bc], a
    ld [hl+], a
    add hl, de
    ld hl, $3943
    jr nz, jr_04c_6305

    ld de, $0b10
    ld [$0706], sp
    add hl, bc
    rrca
    db $10
    ld de, $1010
    rrca

jr_04c_6305:
    rrca
    ld [hl], a
    inc bc
    rra
    ccf
    ld b, c
    ret nz

    ld h, e
    ld bc, $0081
    ld b, l
    rst $38
    nop
    ld bc, $c03f
    jp $05ee


    db $e3
    inc e
    rst $38
    nop
    rst $38
    jr nz, jr_04c_62a3

    nop
    or a
    inc b
    ld a, b
    rst $38
    rrca
    rst $38
    inc bc
    ld b, h
    rst $38
    ld bc, $0309
    rst $38
    ld c, $ff
    jr @+$01

    ld hl, $40fe
    ret nz

    and e
    nop
    ld c, d
    inc b
    add e
    nop
    rst $38
    nop
    ld a, a
    and a
    nop
    pop af
    stop
    ret nz

    add b
    ret z

    ld [hl], b
    ldh a, [$3f]
    adc h

jr_04c_634b:
    ld a, a
    inc bc
    rst $38
    pop hl
    rst $38
    ld c, $fe
    ld [hl], b
    ldh a, [$ba]
    nop
    ld c, d
    jr jr_04c_62d9

    ret nz

    ld h, b
    ldh a, [rNR23]
    db $fc
    inc b
    cp $02
    cp $01
    rst $38
    ld bc, $609f
    ld a, a
    add b
    rst $38
    jr nc, jr_04c_634b

    ld e, b
    rst $38
    ld a, b
    cp $31
    add e
    ld bc, HeaderLogo
    ldh [$1f], a
    add e
    ld bc, $026f
    ret nz

    rst $38
    add e
    ld b, a
    rst $38
    nop
    inc c
    rst $20
    add hl, bc
    ld b, $0a
    dec b
    dec e
    ld [bc], a
    ld a, a
    nop
    ei
    nop
    db $e3
    nop
    ld b, e
    ld bc, $1900
    inc bc
    nop
    ld b, $01
    rrca
    ld [bc], a
    daa
    inc e
    add h
    ld a, h
    ld [$09f8], sp
    ld hl, sp-$77
    ld hl, sp-$04
    ld hl, sp+$05
    rlca
    ld [bc], a

jr_04c_63a8:
    ld [bc], a
    inc b
    inc b
    ld bc, $f403
    dec h
    nop
    db $d3
    dec de
    add b
    add b
    ld b, b
    ret nz

    ld a, b
    db $fc
    ld a, a
    jp $c07f


    ccf
    ldh [$3f], a
    pop hl
    ld a, $e6
    inc a
    ld sp, hl
    jr nc, jr_04c_63a8

    ld [c], a
    jp nz, $8167

    ld a, a
    add b
    cp a
    ld b, b
    add e
    add e
    add hl, bc
    ld e, a
    and c
    xor [hl]
    ld d, a
    ld e, h
    xor a
    or h
    ld e, a
    call nc, Call_04c_452f
    cp $03
    add hl, bc
    rst $38
    ld bc, $817f
    rst $38
    nop
    ccf
    nop
    rra
    nop
    ld b, e
    adc $01
    dec bc
    adc [hl]
    ld bc, $031d
    pop af
    adc a
    ld h, d
    ld a, [hl]
    inc l
    inc e
    ldh a, [$f0]
    db $f4
    ld l, $00
    rl b
    ld h, b
    ldh a, [rNR10]
    ld hl, sp-$18
    inc e

Call_04c_6404:
    sub h
    adc h
    adc h
    ld c, h
    ld c, d
    ld e, [hl]
    ld [hl], d
    cp $92
    cp $11
    ld b, e
    rst $38
    ld hl, $cf05
    ld [hl], c
    sbc a
    pop af
    rra
    pop af
    ld b, e
    rrca
    ld sp, hl
    dec d
    add hl, de
    rst $28
    ld a, [hl+]
    sbc $1a
    xor $2c
    call c, $a858
    inc [hl]
    call c, $be52
    ld [hl-], a
    sbc $bc
    db $fc
    and b
    ldh [$c0], a
    ret nz

    adc l
    ld bc, $03ba
    rra
    inc de
    inc b
    inc c
    push bc
    nop
    ld b, a
    inc c
    daa
    jr c, jr_04c_6463

    ld a, $20
    ccf
    ld e, $0f
    dec b
    inc bc
    inc bc
    nop
    jp $0184


    cp $05
    cp $01
    dec a
    jp nz, $fd02

    rst $00
    ld [bc], a
    ld [bc], a
    inc de
    ret nz

    rst $38
    jr c, @+$41

    rlca
    rlca
    rst $38
    nop
    rst $08

jr_04c_6463:
    ldh a, [$7c]
    rst $38
    rst $18
    ccf
    jp hl


    rra
    call nc, $a42f
    ld e, a
    ld b, e
    ld [bc], a
    rst $38
    dec c
    inc h
    rst $38
    jr @+$01

    ld bc, $02ff
    rst $38
    ld b, $fc
    rra
    ld hl, sp-$01
    ldh [$87], a
    ld bc, $02f0
    add b
    rst $38
    jp $ff46


    ld b, b
    ld b, $90
    rst $20
    xor c
    add $4a
    add l
    sbc l
    add [hl]
    ld [bc], a
    add hl, bc
    ld h, c
    dec b
    inc bc
    inc bc
    inc b
    inc b
    ld [$2308], sp
    db $10
    dec h
    jr nz, jr_04c_64c7

    ld b, b
    ld b, e
    ld b, c
    ld b, b
    rlca
    add c
    add b
    add e
    add b
    jp $cf80


    add b
    and e
    ld [bc], a
    add h
    inc bc
    cp $81
    db $fc
    add e
    ld b, e
    ld a, h
    ld b, e
    dec b
    ld a, b
    ld b, a
    jr c, @+$29

    jr nc, jr_04c_64f0

    add a
    nop
    ld b, b
    ld [bc], a
    inc b
    rlca

jr_04c_64c7:
    ld [bc], a
    xor [hl]
    inc bc
    ld bc, $f017
    ldh a, [$0c]
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $010e
    inc e
    inc bc
    jr c, jr_04c_64e3

    ld [hl], c
    rrca
    ld h, c
    rra
    ld [c], a
    ld e, $c2

jr_04c_64e3:
    ld a, $43
    call nz, $0d3c
    adc b
    ld a, b
    adc h
    ld a, h
    adc e
    ld a, e
    inc d
    db $fd

jr_04c_64f0:
    inc de
    di
    rra
    db $fd
    rra
    pop af
    ld b, e
    rra
    ldh a, [rLYC]
    rrca
    ld hl, sp+$02
    rlca
    db $fc
    inc b
    jp Jump_04c_5903


    ld c, b
    rst $38
    nop
    dec b
    add b
    rst $38
    ld h, b
    ld a, a
    jr jr_04c_652c

    add l
    nop
    cp [hl]
    xor c
    sub e
    dec b
    rlca
    cp $fb
    db $fc
    dec b
    inc c
    add l
    nop
    db $f4
    add hl, de
    ld bc, $0304
    ld [$1003], sp
    rla
    db $10
    rlca
    jr nz, jr_04c_6557

    jr nz, jr_04c_6539

    ld b, b
    ld c, [hl]

jr_04c_652c:
    ld b, c
    ld a, h
    ld b, e
    inc a
    inc hl
    jr c, jr_04c_655a

    add hl, de
    rra
    ld b, $06
    add l
    nop

jr_04c_6539:
    and b
    add a
    inc bc
    cp [hl]
    dec d
    inc bc
    rlca
    ld a, $30
    ld a, a
    pop bc
    rst $38
    ld b, $ef
    db $10
    cp a
    ld b, b
    cp $01

jr_04c_654c:
    ld hl, sp+$07
    pop hl
    rra
    add [hl]
    ld a, [hl]
    jr jr_04c_654c

    and h
    sbc l
    ld [bc], a

jr_04c_6557:
    add b
    add b
    add b

jr_04c_655a:
    sub c
    nop
    db $ec
    dec b
    rra
    db $10
    ccf
    ld h, b
    rst $18
    cp b
    adc e
    ld bc, $8604
    ld bc, $83e0
    inc b
    inc h
    nop
    ld c, b
    add e
    ld bc, $ffec
    db $ec
    ccf
    add hl, bc
    ld bc, $0201
    inc bc
    nop
    inc bc
    inc b
    rlca
    nop
    rlca
    ld b, a
    ld [$000f], sp
    nop
    ld b, h
    rlca
    inc b
    ld b, e
    ld [bc], a
    inc bc
    ld hl, sp+$2f
    sbc d
    dec c
    rrca
    rra
    jr nz, jr_04c_65f3

    add b
    adc a
    or b
    rst $38
    ld b, b
    ld a, a
    inc sp
    ccf
    inc c
    inc c
    ld [hl], c
    ld c, $18
    jr c, @+$48

    adc $01
    rlca
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld [de], a
    ld b, [hl]
    rst $38
    jr nz, jr_04c_65b8

    db $10
    rst $38
    ld [$07ff], sp
    rst $38

jr_04c_65b8:
    ld bc, $ff44
    nop
    add hl, bc
    add b
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_04c_6602

    inc c
    rrca
    inc bc
    inc bc
    ldh a, [rNR44]
    db $ed
    inc bc
    ldh [$e0], a
    nop
    rlca
    add e
    or l
    rlca
    ret nz

    rst $38
    jr nc, @+$41

    add hl, bc
    rrca
    ld b, $06
    ld [hl], l
    ld bc, $8080
    ld b, e
    ld b, c
    pop bc
    ld b, e
    ld [hl+], a
    db $e3
    ld b, e
    inc h
    rst $20
    ld c, $45
    rst $00
    ld c, c
    rst $08
    adc c
    adc a
    add hl, bc
    rrca
    add a
    add a
    ld a, h

jr_04c_65f3:
    rst $38
    jr nz, @+$01

    ld de, $ff44
    db $10
    ld b, $20
    rst $38
    ld bc, $f6ff
    rst $38
    rrca

jr_04c_6602:
    push bc
    ret nc

    ld [bc], a
    ld bc, $0200
    ld c, c
    ld [bc], a
    inc bc
    ld [de], a
    nop
    dec b
    inc b
    dec b
    ld b, $07
    jr jr_04c_6633

    jr nz, @+$41

    ld b, e
    ld a, a
    db $e4
    rst $38
    dec bc
    ld a, a
    dec c
    db $fd
    inc bc
    ld b, e
    rst $38
    nop
    ld [$9cfc], sp
    rst $38
    ld h, e
    ld a, a
    db $10
    rra
    inc c
    rrca
    adc c
    nop
    ld e, d
    add e
    nop
    ld b, b
    rrca

jr_04c_6633:
    ld c, $0f
    scf
    ld a, $4f

jr_04c_6638:
    ld a, h
    sbc b
    rst $38
    scf
    ld hl, sp+$7f
    ldh [rBGP], a
    ld sp, hl
    ld a, [$43c7]
    db $fc
    add a
    inc bc
    jr jr_04c_6638

    ld l, b
    sbc a
    ld b, e
    ld hl, sp+$0f
    inc de
    db $fc
    rst $00
    inc a
    rst $30
    ld [$00ff], sp
    rst $38
    adc b
    rst $38

jr_04c_6659:
    cp b
    rst $38
    ret z

    rst $38
    rla
    rst $38
    jr c, jr_04c_6659

    ret nz

    ret nz

    and [hl]
    or a
    dec c
    pop bc
    ld b, c
    pop bc
    ld a, c
    ld sp, hl
    ld b, $ff
    ld [hl-], a
    rst $38
    ld c, h
    rst $08
    ld b, h
    rst $00
    ld [hl], b
    and h
    nop
    rrc c
    add $ff
    nop
    rst $38
    ld h, b
    rst $38
    add b
    sbc a
    add b
    adc a
    ld b, e
    ld bc, $08ff
    ld [bc], a
    xor a
    inc b
    ld e, a
    jr @-$06

    and $fe
    ld bc, $9b84
    dec b
    add c
    rst $38
    add d
    cp $c2
    cp $a3
    call c, Call_04c_610a
    cp a
    and b
    ld a, a
    ldh [$3f], a
    ret nz

    ld a, a
    ld b, b
    rst $38
    sbc b
    and h
    xor a
    rlca
    inc bc
    rst $38
    jp nz, $34ff

jr_04c_66ae:
    rst $38
    inc c
    rst $38
    add e
    rst $20
    add hl, bc
    inc b
    rst $38
    dec b
    rst $38
    ld b, $fe
    inc c
    db $fc
    jr nc, jr_04c_66ae

    xor l
    nop
    ld e, d
    ld bc, $c040
    ld [hl+], a
    jr nz, jr_04c_66cf

    ld h, b
    add hl, sp
    ld sp, hl
    ld b, $ff
    ld [hl], b
    rst $38
    ld c, a

jr_04c_66cf:
    rst $08
    inc hl
    add b
    inc c
    or b
    or b
    ret z

    add sp, $04
    db $f4
    ld [bc], a
    ld [$fc1c], a
    ldh [$e0], a
    and c
    ld b, h
    pop hl
    ld hl, $f101
    pop af
    ld [hl+], a
    add hl, bc
    ldh [rNR44], a
    jp hl


    inc de
    inc de
    and $e6
    adc h
    adc h
    rrca
    rrca
    rra
    rra
    ld a, h
    ld a, h
    ld a, [$d4f0]
    pop bc
    and b
    adc [hl]
    call nz, $8a10
    ldh [$d4], a
    add b
    ld b, b
    ld hl, sp+$50
    rst $00
    jr nc, @-$0e

    ccf
    rst $38
    daa
    rst $20
    jr nz, jr_04c_6752

    ldh [$a0], a
    and [hl]
    nop
    ld d, a
    cp c
    nop
    ld e, h
    add hl, bc
    jr nc, @+$32

jr_04c_671a:
    ld c, b
    ld a, b
    sub b
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    rst $10
    adc [hl]
    dec d
    add b
    add b
    adc [hl]
    adc [hl]
    ld [de], a
    ld e, $38
    jr c, jr_04c_675e

    jr nc, jr_04c_6780

    ld [hl], b
    ldh [$e0], a
    db $10
    stop
    db $10
    jr nz, @+$22

    nop
    ldh [rNR51], a
    ld b, b
    inc bc
    nop
    ld b, b
    nop
    jr nz, @-$7b

    cp e
    nop
    add b
    jp $0080


    ldh [rNR44], a
    jr nc, jr_04c_6770

    jr @+$03

    ld [$7908], sp

jr_04c_6752:
    ld bc, $8181
    ld b, e
    ld b, d
    jp $2443


    rst $20
    ld c, $25
    rst $20

jr_04c_675e:
    add hl, hl
    rst $28
    ld c, d
    rst $08
    ld c, e
    adc $8b
    adc [hl]
    add hl, bc
    rrca
    add a
    adc a
    ld a, b
    add h
    ld bc, $a83b
    ld [bc], a

jr_04c_6770:
    add [hl]
    ldh [rNR42], a
    ld bc, $0705
    dec de
    rra
    ld h, l
    ld a, [hl]
    adc a
    ld hl, sp+$11
    cp $2e
    pop af

jr_04c_6780:
    ld a, a
    ret nz

    rst $00
    ld sp, hl
    ld sp, hl
    add a
    rst $38
    inc bc
    cp $03
    inc e
    rst $20
    db $e4
    rra
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp-$31
    jr c, jr_04c_671a

    ld [bc], a
    inc de
    ld b, e
    ld bc, $43ff
    add d
    cp $08
    jp Jump_04c_61ff


    cp a
    pop hl
    ccf
    jr nz, @+$01

    inc d
    and h
    ld bc, $0041
    inc b
    ld b, e
    rst $38
    ld [bc], a
    or [hl]
    nop
    call $0109
    inc bc
    ld [$100c], sp
    jr jr_04c_67db

    inc sp
    jr nz, jr_04c_67fd

    ld b, e
    ld b, b
    ld a, a
    ld b, a
    add b
    rst $38
    ld b, l
    ld b, b
    ld a, a
    ld b, e
    jr nz, jr_04c_6809

    dec b
    db $10
    rra
    ld [$060f], sp
    rlca
    add a
    ld bc, $a380
    ld bc, $1262
    dec b
    ld a, l
    inc bc

jr_04c_67db:
    rst $38
    ld bc, $31ff
    rst $38
    ld c, c
    rst $38
    adc c
    rst $38
    adc e
    rst $38
    sub e
    rst $38
    ld b, l
    rst $38
    dec sp
    add h
    rst $20
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    add [hl]
    ld bc, $053f
    ld b, c
    rst $38
    and $ff
    rra
    ccf
    ld l, l
    inc c

jr_04c_67fd:
    ld c, $3f
    nop
    ld b, b
    db $10
    sbc a
    or b
    cp a
    add c
    rst $38
    ld h, [hl]
    ld a, [hl]

jr_04c_6809:
    jr jr_04c_67db

    nop
    xor h
    dec b
    ccf
    rst $38
    nop
    ld bc, $1f00
    add l
    nop
    jp z, Jump_04c_6003

    ld a, a
    add hl, de
    rra
    add a
    ld bc, $870a
    ld bc, $0760
    jp $24ff


    rst $38
    dec bc
    rst $38
    dec c
    db $fd
    add a
    ld [bc], a
    ld h, b
    rrca
    push de
    ret nz

    xor d
    add c
    sub $0e
    add b
    ldh a, [$d5]
    add b
    ld c, d
    ldh a, [rHDMA1]
    adc $3a
    pop af
    add a
    ld [bc], a
    ld a, b
    inc b
    ldh [$e0], a
    jr nz, jr_04c_68a7

    nop
    ld [hl+], a
    jr nz, @+$0e

    ld b, b
    ld d, b
    sub b
    sub b
    db $10
    db $10
    jr nz, jr_04c_6863

    ld h, b
    jr nz, @-$7e

    jr nz, jr_04c_6898

    call nz, $c201
    add l
    ld [bc], a
    ld [$2143], a
    pop hl
    dec bc
    pop bc

jr_04c_6863:
    pop bc
    ld sp, $0931
    ret


    dec bc
    dec sp
    ld d, $16
    db $ec
    db $ec
    adc e
    ld bc, $0360
    ld [$0c7f], sp
    rst $38
    adc c
    ld bc, $05d0
    nop
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    rst $38
    ld a, d
    inc bc
    ld bc, $0200
    ld [bc], a
    ld b, h
    ld [bc], a
    inc bc
    ld [hl+], a
    ld bc, $8bd2
    add hl, bc
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1817], sp
    inc de

jr_04c_6898:
    inc e
    ld b, e
    db $10
    rra
    rlca
    dec bc
    rrca
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $7c01
    inc bc

jr_04c_68a7:
    ld bc, $0e07
    jr @+$24

    db $10
    add hl, de
    ld sp, $3320
    jr nz, jr_04c_6932

    ld b, b
    db $fd
    add d
    ld a, a
    ld bc, $007f
    rst $38
    add b
    rst $30
    jr jr_04c_693d

    add c
    ld c, a
    ld a, a
    or l
    cp l
    ld bc, $170d
    rla
    ld [hl+], a
    rra
    ldh [$2e], a
    rla
    ld c, $09
    rlca

jr_04c_68d0:
    rrca
    inc a
    dec sp
    cp $c1
    ld hl, sp+$07
    jp nz, $473f

    cp $bb
    ld a, d
    jp nc, $0a33

    ei
    inc b
    push af
    dec h
    push af
    ld e, l
    db $dd
    pop de
    pop de
    ld [hl-], a
    inc sp
    dec b

Call_04c_68ec:
    ld b, $07
    inc b
    dec bc
    inc c
    ld [$080f], sp
    dec bc
    ld [de], a
    ld [de], a
    inc c
    inc c
    rlca
    rlca
    ld h, c
    dec e
    ld b, $06
    rrca
    add hl, bc
    dec b
    inc de
    dec c
    inc hl
    ld e, d
    ld b, [hl]
    ld a, [$7286]
    ld c, $71
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    cp h
    rrca
    inc d
    scf
    ld b, h
    ld b, a
    and h
    and a
    ld l, b
    rst $28
    ld b, e
    add b
    ld a, a
    inc d
    ld bc, $c1ff
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ldh [rIE], a
    ret c

    rst $38
    and b
    rst $38
    ld d, c
    ldh [$c0], a
    add b
    add b

jr_04c_6932:
    nop
    add b
    or e
    nop
    ld a, [bc]
    ld [de], a
    add b
    ld h, b
    ret nz

    or b
    ld [hl], b

jr_04c_693d:
    adc $3c
    pop bc
    ccf
    ld b, $fe
    inc b
    db $fc
    inc b
    call z, $c888
    ld [hl], b
    ld [hl], b
    or [hl]
    nop
    ld d, a
    jr z, jr_04c_68d0

    rla
    add e
    add e
    adc a
    adc h
    rla
    jr jr_04c_69b9

    ld a, [hl]
    sub b
    rst $30
    ld l, $e7
    inc e
    db $fc
    ld [$07fd], sp
    rst $38
    sbc a
    ld a, a
    inc l
    inc e
    inc d
    inc c
    ld b, e
    ld a, [bc]
    ld b, $00
    dec b
    ld b, h
    inc bc
    inc b
    ld bc, $0106
    ld b, a
    rlca
    nop
    ld b, h
    rrca
    nop
    ld [$7310], sp
    ld a, h
    adc b
    rst $38
    ld a, h
    ld a, a
    inc bc
    inc bc
    sub a
    nop
    ld c, h
    nop
    ld bc, $8283
    inc b
    ld bc, $0300
    inc b
    inc bc
    add e
    or h
    dec d
    add b
    add a
    pop hl
    ld h, [hl]
    di
    inc d
    adc e
    ld a, b
    add hl, bc
    ld a, [$f908]
    adc b
    ld hl, sp-$70
    ldh a, [rNR10]
    or b
    and b
    and b
    ld b, b
    ld b, b
    jp $2500


    ldh [rNR44], a
    dec b
    ld b, $1a
    dec e
    pop hl
    cp $68
    rst $38
    inc [hl]
    rst $38

jr_04c_69b9:
    ld a, [bc]

jr_04c_69ba:
    rst $38
    sub l
    ld a, a
    jp z, $c53f

    ccf
    and $1f
    db $e3
    rra
    ld [c], a
    ld e, $c1
    ccf
    ld bc, $03ff
    rst $38
    or c
    ld sp, hl
    ld e, [hl]
    ld c, [hl]
    ld hl, sp-$08
    ld h, e
    nop
    ld [bc], a
    ld h, c
    ldh [$28], a
    ld [bc], a
    ld b, b
    ld b, $02
    ld c, h
    db $10
    ld c, h
    jr nz, jr_04c_6a3e

    add h
    ld a, b
    nop
    ld hl, sp+$08
    ldh a, [rNR23]
    ldh [$34], a
    ret z

    jr nc, jr_04c_69ba

    ld h, b
    sbc h
    ld h, d
    sbc h
    ldh [rNR34], a
    pop af
    ld l, $d0
    ld a, a

jr_04c_69f8:
    ldh a, [$2f]
    reti


    db $76
    xor h
    ld [hl], d
    ld e, b

Call_04c_69ff:
    db $f4
    ld c, b
    ld hl, sp+$43
    ld c, b
    ld a, b
    dec bc
    ret z

    cp b
    adc b
    ld hl, sp+$48
    cp b
    adc b
    ld a, b
    ld c, b
    cp b
    sub b
    ld [hl], b
    ld b, e
    db $10
    ldh a, [rLYC]
    jr nz, jr_04c_69f8

    ld b, e
    ld b, b
    ret nz

    or e
    ld bc, $197c
    cp d
    ld a, e
    jp nc, $0833

    ld sp, hl
    dec b
    push af
    daa
    rst $30

jr_04c_6a29:
    ld e, b
    rst $18
    db $d3
    call c, $3837
    rla
    jr jr_04c_6a42

    rra
    jr z, jr_04c_6a5c

    jr z, jr_04c_6a60

    dec sp
    add hl, sp
    jp $c300


    ld h, c
    dec bc

jr_04c_6a3e:
    sub b
    ld [hl], b
    ld c, $fc

jr_04c_6a42:
    rlca
    rst $38
    jr jr_04c_6a7e

    and b
    jr nz, jr_04c_6a29

    ldh [$86], a
    ld bc, $018c
    inc bc
    nop
    ld [hl+], a
    inc b
    inc b
    rlca
    dec b
    rlca
    inc b
    ld [bc], a
    sub [hl]
    ld bc, $1f79

jr_04c_6a5c:
    ld bc, $0e03
    inc e

jr_04c_6a60:
    jr nc, jr_04c_6a82

    ld hl, $6320
    ld b, b
    ld h, [hl]
    ld b, b
    cp $80
    ei
    dec b
    rst $38
    inc bc
    cp $01
    rst $38

jr_04c_6a71:
    nop
    rst $28
    jr nc, jr_04c_6a71

    inc bc
    sbc a
    rst $38
    ld l, e
    ld l, e
    inc bc
    dec bc
    inc h
    rlca

jr_04c_6a7e:
    inc h
    rrca
    add hl, bc
    rlca

jr_04c_6a82:
    rlca
    jr jr_04c_6a88

    rlca
    nop
    ld c, b

jr_04c_6a88:
    jr nc, jr_04c_6a93

    rlca
    add $c2
    jp z, $3a00

    dec c
    inc c
    inc c

jr_04c_6a93:
    ld e, $12
    ld a, [bc]
    ld h, $1a
    ld b, [hl]
    or h

jr_04c_6a9a:
    adc h
    db $f4
    inc c
    db $e4
    inc e
    ld b, e
    ld [c], a
    ld e, $0b
    or d
    ld c, $79
    ccf
    adc c
    adc a
    add hl, bc
    rrca
    ld c, c
    ld c, a
    pop de
    rst $18
    ld b, e
    ld bc, $02ff
    nop
    rst $38
    add b
    ld b, h
    rst $38
    ldh [$1f], a
    db $e4
    rst $38
    ret z

    cp $f0
    db $fc
    ldh [$f8], a
    ret nz

    ldh [$38], a
    ret c

    ei
    rlca
    ld hl, sp+$07
    jr nc, jr_04c_6adb

    add d
    add c
    ld h, b
    ld a, a
    sbc h
    rra
    ld b, c
    add c
    ld h, b
    ret nz

    inc bc
    inc bc
    rrca
    inc c
    adc e

jr_04c_6adb:
    ld bc, $1144
    db $fc
    ei
    ld h, $e5
    rra
    ld hl, sp+$0f
    ret z

    scf
    ldh a, [$a7]
    jr nz, jr_04c_6a9a

    and b
    ld l, a
    ld h, b
    ld bc, $af01
    ld bc, $092b
    rlca
    rrca
    ld [$0509], sp
    dec b
    ld [bc], a
    inc bc
    inc b
    dec b
    jp $3b00


    adc e
    ld [bc], a

jr_04c_6b03:
    or b
    ld [de], a
    adc a
    adc a
    ld b, a
    ld b, a
    ccf
    inc a
    rst $38
    add b
    cp $01
    ld a, b
    add a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    cp $43
    rst $38
    ldh [rNR23], a
    cp $e4
    db $fd
    ret z

    ei
    ldh a, [$f7]
    ret nz

    xor $80
    db $dd
    and c
    dec de
    jp nz, $823e

jr_04c_6b2c:
    ld a, [hl]
    inc b
    db $fc
    ld [$30f8], sp
    ldh a, [$c0]
    ret nz

    add e
    ld bc, $830c
    ld bc, $1b34
    ldh [$60], a
    ldh [rNR10], a
    jr nz, jr_04c_6b03

    ld [$88ca], sp
    sbc h
    db $10
    inc a
    ld d, b
    ld a, b
    jr nz, jr_04c_6b2c

    db $10
    ret nc

    jr z, @-$66

    ld [hl], h
    inc c
    ld a, [de]
    ld b, $89
    rlca
    inc c
    inc bc
    add $01
    ld h, l
    ld bc, $0100
    call z, $1d00
    adc c
    ld bc, $86b6
    inc bc
    nop
    ld b, e
    rst $38
    ldh a, [rDIV]
    rst $28
    ldh [$df], a
    pop hl
    rra
    add l
    rst $08
    dec b
    ldh a, [rNR10]
    jr c, @-$36

    ld [$83f8], sp
    ld bc, $0aac
    ld d, b
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$74
    adc h
    sbc d
    add h
    rst $08
    rst $38
    ld [hl], e
    ld [bc], a
    ld bc, $0001
    inc h
    ld [bc], a
    inc de
    ld b, $06
    ld a, [bc]
    ld c, $08
    ld c, $09
    rrca
    inc b
    rlca
    ld bc, $0703
    inc b
    rlca
    ld [$0c0b], sp
    dec e
    ld d, $44
    ccf
    inc hl
    inc c
    inc h
    ld a, b
    ld c, b
    ld a, h
    ld c, b
    ld a, a
    ld b, h
    ld a, a
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, h
    ld b, a
    ld b, l
    inc a
    daa
    rla
    dec d
    ld a, [de]
    ld a, d
    ld [hl], a
    rst $30
    sbc d
    res 6, l
    ld d, l
    ld l, e
    ld a, [hl+]
    dec [hl]
    dec e
    ld a, [de]
    rlca
    rlca
    dec c
    ld c, $10
    inc de
    inc hl
    inc hl
    inc e
    inc e
    ld h, c
    dec d
    ld [$120c], sp
    inc de
    jr jr_04c_6bec

    ld c, $08
    rrca
    ld [$0506], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    jp $03e2


    ld [de], a
    dec e
    rra

jr_04c_6bec:
    ld b, a
    add hl, bc
    rrca
    ldh [$3f], a
    dec bc
    ld c, $13
    ld e, $91
    sbc a
    sub b
    sbc a
    ret c

    ld e, a
    db $ec
    scf
    cp d
    ld h, e
    ccf
    and e
    cp a
    and a
    ei
    ld c, a
    cp $ff
    and d
    ld a, a
    dec d
    sbc e
    ld a, [$9575]
    sbc d
    sbc e
    sub l
    ld [hl], a
    db $eb
    xor e
    ld d, [hl]
    ld d, a
    xor h
    xor e
    ld e, h
    ld a, l
    or e
    ld sp, hl
    ld b, b
    ld a, c
    ret nz

    ld [hl], e
    add b
    rst $30
    add b
    rst $20
    add b
    sbc a
    pop hl
    ld a, [$cd06]
    dec [hl]
    rlca
    set 1, h
    call z, $3030
    and a
    nop
    ld c, $09
    ld b, b
    ld h, b
    or b
    db $10
    db $fc
    dec c
    ld a, e
    add $3f
    ldh [rSCX], a
    sbc a
    ld [hl], b
    ldh [$2b], a
    cp a
    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    nop
    di
    inc c
    rst $38
    rlca
    cp $06
    ld a, [hl]
    add d
    ld l, [hl]
    pop af
    ld a, e
    db $fc
    ld [hl], l
    cp $f3
    cp $e3
    rst $38
    rst $00
    db $fc
    adc a
    ld hl, sp+$1f
    ldh a, [rNR31]
    pop af
    dec [hl]
    pop hl
    xor e
    pop hl
    ld [hl], l
    pop hl
    db $eb
    pop hl
    or $23
    ld b, h
    rst $38
    ld [hl+], a
    ld [de], a
    ld d, $ff
    inc d
    rst $28
    cp h
    xor l
    or $f6
    db $eb
    db $eb
    push de
    sub l
    ld [$55aa], a
    push de
    ld [$3f3f], a
    ld l, a
    dec b
    inc bc
    inc bc
    rst $38
    db $fc
    ldh a, [$03]
    ld b, e
    ldh [rP1], a
    inc de
    ldh a, [rP1]
    db $fc
    nop
    rst $30
    ld [$3ec1], sp
    db $e3
    inc e
    db $eb
    inc d
    rst $38
    nop
    cp $81
    ld a, a
    ld b, c
    ccf
    db $e3
    ld b, e
    db $fd
    ld [de], a
    dec d
    dec l
    db $d3
    push af
    add hl, bc
    or l
    ld c, c
    ld a, l
    pop bc
    cp a
    jp hl


    ld e, $f3
    inc c
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    cp $83
    ld d, a
    xor c
    ld b, e
    xor e
    ld d, l
    ld de, $aa57
    ld d, [hl]
    xor e
    db $fd
    rlca
    rst $38
    rrca
    db $fc
    inc [hl]
    db $fd
    push bc
    ld e, d
    xor d
    or c
    ld d, c
    ld h, b
    ldh [$c7], a
    nop
    rst $00
    ld h, c
    ldh [$59], a
    inc b
    inc c
    db $10
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    xor $c2
    ret c

    inc b
    db $fc
    inc d
    db $ec
    inc [hl]
    ld d, b
    add sp, $58
    ld l, b
    ld e, b
    add hl, hl
    sbc $2e
    ld a, [c]
    ld e, $f6
    dec e
    rst $38
    ld [$48be], sp
    sbc [hl]
    xor b
    rra
    inc h
    ccf
    ld b, h
    ld a, a
    cp b
    ld a, a
    call nz, $84ff
    ld a, a
    add b
    rst $38
    ldh a, [$df]
    ld a, h
    rst $28
    inc a
    or $1f
    rst $30
    sbc l
    xor e
    adc d
    reti


    adc c
    xor b
    adc b
    call c, $eecc
    jp z, $cd5f

    ei
    ld e, h
    ld [hl], a
    ret c

    rst $38
    ld h, b
    rst $18
    ldh [$8e], a
    pop af
    pop bc
    rst $38
    ld [hl+], a
    sbc $7f
    add c
    db $fc
    add e
    ld a, b
    ld h, h
    inc e
    inc e
    inc bc
    inc bc
    ld a, d
    inc b
    add b
    ld b, b
    ret nz

    and b
    ldh [rSCX], a
    sub b
    ldh a, [rNR33]
    db $10
    ldh a, [$e0]
    ld h, b
    ret nz

    ld b, b
    ldh a, [$30]
    ret nz

    ld c, b
    ld b, b
    add h
    db $e4
    add h
    db $fc
    add h
    ld hl, sp+$48
    ld hl, sp+$38
    call c, $b024
    jp nz, $41f8

    db $fd
    ld hl, $e2fe
    add e
    nop
    ld e, [hl]
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    nop
    ret nz

    add $00
    ret z

    dec bc
    ldh [$e0], a
    ld hl, sp+$18
    ld b, h
    and h
    ld [hl], h
    ld [hl], h
    ld c, b
    ld c, b
    add b
    add b
    adc l
    ld bc, $031e
    inc b
    inc b
    ld [$2308], sp
    db $10
    daa
    jr nz, jr_04c_6da9

    dec [hl]
    jr nz, jr_04c_6da7

    db $10
    dec [hl]
    jr nc, jr_04c_6dcb

    jr z, jr_04c_6dd2

    inc h
    ld a, a
    ld b, d
    ld a, a
    ld b, e
    ld a, l
    ld b, l
    ld a, b
    ld c, b
    ld a, c
    ld c, b
    ld a, a
    ld c, b
    ccf
    inc h
    ccf
    ld h, $3d
    daa
    rla

jr_04c_6da7:
    ld a, [de]
    ld a, e

jr_04c_6da9:
    db $76
    add e
    nop
    ld c, h
    ld b, l
    inc bc
    ld [bc], a
    ldh [rLYC], a
    dec a
    ccf
    ld b, c
    ld a, a
    pop bc
    rst $38
    ld h, c
    ccf
    ld sp, $1b1f
    ld c, $2f
    ld b, $5f
    rlca
    ld a, $03
    ld e, [hl]
    inc bc
    cp [hl]
    inc bc
    ld a, [hl]
    inc bc
    cp a

jr_04c_6dcb:
    inc bc
    ld a, a
    rlca
    rst $38
    rlca
    cp $0f

jr_04c_6dd2:
    ld a, [$fd0f]
    dec de
    cp d
    push de
    db $fd
    jp c, $3dff

    adc a
    dec bc
    sbc a
    ld de, $61ff
    rst $30
    and c
    rst $00
    ld b, e
    db $fd
    inc a
    call $d70c
    inc d
    rst $30
    db $f4
    sub e
    ld a, [c]
    ei
    adc e
    ld a, [$cb0a]

jr_04c_6df5:
    dec sp
    rrca
    rst $08
    add e
    nop
    cp h
    add e
    nop
    ldh a, [$15]
    rrca
    ld hl, sp+$1b
    pop af
    dec d
    pop af
    sbc e
    pop af
    ld [hl], l
    pop af
    set 7, b
    rst $28
    jr c, jr_04c_6df5

    inc a
    rst $30
    inc e
    rst $30
    ld e, $f7
    dec e
    add l
    ld bc, $0f0a
    rst $10
    xor c
    xor e
    push de
    db $eb
    ld d, l
    rst $10
    ld l, d
    or $2b
    db $fd
    and a
    rst $38
    ld c, a
    db $fc
    inc [hl]
    add a
    ld bc, $13b0
    ei
    adc d
    ld a, c
    ret


    ld a, b
    ret z

    inc a
    db $e4
    ld a, $e6
    ld a, a
    and l
    sbc a
    ld [hl], h
    ld e, a
    or d
    cp a
    ld l, d
    rst $18
    db $e4
    add e
    ld bc, $84cc
    cp a
    inc b
    ld e, $f7
    dec e
    rst $30
    inc e
    adc e
    cp a
    dec b
    rst $30
    ld a, [hl+]
    or $9b
    db $fd
    ld h, a
    add e
    ld bc, $0b6c
    ld a, $e6
    ld e, a
    or e
    sbc a
    ld [hl], d
    ld c, a
    cp c
    cp a
    ld h, l
    rst $18
    ld [c], a
    add e
    xor a
    rlca
    or $0f
    ld sp, hl
    rlca
    ld a, h
    add e
    ld l, a
    ldh a, [$87]
    nop
    add sp, $09
    rst $38
    nop
    ld a, a
    add b
    cp $c1
    ccf
    pop hl
    sbc $31
    add l
    ld bc, $094a
    ld e, [hl]
    add sp, -$61
    db $e4
    cp a
    call nz, $b87f
    rst $38
    ld b, h
    add l
    ld bc, $ffaa
    ld h, e
    dec b
    ld [bc], a
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld l, a
    rlca
    inc bc
    inc bc
    inc b
    ld b, $00
    ld c, $0f
    rrca
    ld h, [hl]
    nop
    ld bc, $0322
    nop
    rlca
    db $ec
    ld b, e
    rrca
    db $fc
    db $fc
    ld bc, $00e3
    pop bc
    nop
    add a
    ld b, b
    ld l, e
    jr jr_04c_6ed7

    ld b, $07
    ld bc, $6101
    ld a, [bc]
    rlca
    rlca
    jr c, @+$41

    ret nz

    rst $18
    nop
    ccf
    nop
    rra
    ld a, [hl]
    ld [hl+], a
    rst $38
    dec b
    nop
    inc bc
    rrca
    rra
    ccf
    ld a, a
    ld [hl+], a
    rst $38
    rla
    cp $85

jr_04c_6ed7:
    push bc
    ld a, [bc]
    ld a, [bc]
    db $10
    stop
    db $10
    jr nz, @+$23

    ld a, $3e
    ld [hl], $34
    dec c
    jr jr_04c_6efd

    db $10
    rrca
    ld [$0407], sp
    ld [bc], a
    adc d
    nop
    add hl, bc
    dec b
    ld bc, $0701
    rlca
    ld a, a
    ld a, c
    ld b, e
    sbc a
    add b
    inc bc
    cp h
    add b

jr_04c_6efd:
    ld a, b
    ld b, b

Call_04c_6eff:
    ld b, e
    jr c, jr_04c_6f22

    ld [bc], a
    jr jr_04c_6f15

    inc e
    add h
    and l
    res 3, b
    ldh [$5f], a
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ld [bc], a

jr_04c_6f15:
    cp $01
    rst $38
    add b
    rst $38

jr_04c_6f1a:
    ld h, b
    ld a, a
    ldh a, [rIE]
    ld a, b
    rst $38
    inc c
    rst $38

jr_04c_6f22:
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    ei
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, [$f48a]
    ld e, $f0
    sub b
    ld [hl], h
    inc h
    ld b, b
    ld b, b
    ld c, e
    ld b, a
    dec hl
    dec sp
    ld h, a
    daa
    and b
    ld hl, $1050
    or b
    db $10
    ld e, b
    ld [$04fe], sp
    cp $1f
    rst $28
    add sp, $0f
    nop
    rra
    db $10
    rra
    jr @-$1f

    sbc $3f
    inc hl
    ccf
    jr c, jr_04c_6f9a

    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld de, $017f
    ccf
    add hl, bc
    ccf
    ld a, [bc]
    ccf
    dec bc
    inc a
    inc c
    ld a, b
    jr jr_04c_6f1a

    rst $28
    add e
    nop
    and b
    ld b, e
    jr z, jr_04c_6fac

    ld a, [bc]
    nop
    jr c, jr_04c_6fbc

    ld a, h
    ld b, l
    ld a, l
    add $fe
    ld b, [hl]
    cp $4c
    ld b, h
    rst $38
    jr z, @+$21

    jr @+$01

    ld de, $93ff
    rst $38
    ld a, [c]
    rst $38
    inc c
    rrca
    ld b, $03
    rlca
    ld bc, $4147
    dec sp
    ld a, h
    ld b, e
    nop
    inc sp
    db $10

jr_04c_6f9a:
    rrca
    nop
    pop bc

jr_04c_6f9d:
    ldh [$d9], a
    call c, $f031
    ld hl, $43e0
    inc bc
    nop
    rlca
    rlca
    ld bc, $031e

jr_04c_6fac:
    db $fd
    ld c, $ff
    rst $38
    ld c, b
    rst $38
    nop
    ld [bc], a
    rst $38
    rst $38
    add b
    ld c, d
    rst $38
    ld b, b
    ld b, $80

jr_04c_6fbc:
    rst $38
    pop hl
    rra
    rra
    inc bc
    inc bc
    ld b, l
    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    add l
    nop
    ret c

    ld [bc], a
    ld b, $07
    db $10
    and a
    nop
    jp hl


    ld e, $7f
    rlca
    ld l, a
    inc c
    sbc a
    db $10
    rra
    jr nz, jr_04c_6f9d

    ld b, b
    rst $38
    add c
    rst $38
    ld b, $ff
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    adc a
    rst $38
    inc a
    db $fc
    ld [hl], b
    ldh a, [$e0]
    rst $20
    ld [c], a
    ld [$c022], a
    inc d
    ld b, b
    call nz, $c244
    ld b, e
    ldh [rLCDC], a
    push af
    ld b, b
    ld a, [$f5e0]
    ldh [rNR30], a
    ldh a, [$7f]
    adc b
    rst $38
    ld a, [hl]
    ld sp, hl
    adc c
    ld b, h
    db $fc
    inc b
    ld [bc], a
    inc c
    cp $f2
    ld b, h
    cp $02
    add hl, bc
    ld b, $ff
    dec b
    rst $38
    ld bc, $08ff
    rst $38
    db $10
    rst $38
    jp $f200


    ld c, $c1
    cp $3e
    cp $82
    rst $38
    ld a, l
    rst $38
    ld bc, $a2ff

jr_04c_7030:
    inc e
    inc d
    rst $38
    rst $38
    ld h, c
    inc c
    ld hl, sp-$08
    ld b, $fe
    ld bc, $0cff
    db $fc
    jr nc, jr_04c_7030

    ret nz

    ret nz

    cp $a4
    nop
    ei
    ld b, $00
    rst $38
    inc bc
    rst $38
    ld a, $fe
    jp $0188


    sbc b
    ld a, [de]
    db $fc
    cp $ff
    ccf
    ld a, a
    rrca
    dec h
    rra
    inc l
    inc c
    ld a, $02
    ld d, [hl]
    ld [bc], a
    rst $38
    ei
    rlca
    dec b
    rlca
    ld sp, hl
    ld d, a
    ld bc, $01af
    ld d, [hl]
    ld [bc], a
    xor [hl]
    push bc
    nop
    db $ec
    or d
    nop
    dec l
    inc hl
    add b
    call $0580
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    or d
    nop
    ld a, [bc]
    ld [bc], a
    ldh [rNR10], a
    ldh a, [$87]
    nop
    ldh [$a3], a
    ld bc, $01c6
    db $fc
    db $fc
    and l
    nop
    ld h, $00
    ldh [$f4], a
    ld b, h
    nop
    dec l
    adc d
    nop
    sub b
    ld b, $ff
    add d
    jp nz, $0606

    inc b
    inc b
    ld [hl+], a
    ld [$0c0c], sp
    rrca
    rrca
    ld c, $0e
    dec bc
    dec bc
    dec b
    inc b
    ld b, $04
    inc bc
    ld [bc], a
    xor l
    ld [bc], a
    adc [hl]
    inc b
    ldh [rIE], a
    ld sp, hl
    rst $38
    rst $38
    inc hl
    cp $1c
    call nz, $07fd
    inc a
    inc [hl]
    ld c, [hl]
    ld c, b
    rrca
    ld [$080c], sp
    dec c

jr_04c_70ca:
    dec hl
    db $ec
    add sp, $4c
    ld c, b
    adc [hl]
    add h
    ld e, [hl]
    inc b
    cp a
    ld [bc], a
    rst $38
    inc bc
    ld a, a
    add a
    ld a, a
    ld a, b
    adc c
    ld bc, $0326
    ld a, [hl]
    rst $38
    add e
    add e
    add e
    ret nz

    inc de
    ld c, b
    ld c, b
    add a
    rst $08
    ld c, b
    nop
    add [hl]
    add d
    inc bc
    nop
    ld a, h
    cp $7d
    ld a, l
    ld a, [c]
    cp $c2
    cp $7c
    ld a, h
    ld h, e
    dec b
    jp $bd00


    jp $3fff


    adc c
    ld bc, $8596
    ld bc, $1ae0
    rst $38
    ld a, a
    rst $38
    ld a, h
    ld a, h
    or b
    ld a, b
    jr nz, jr_04c_70ca

    inc hl
    add hl, sp
    dec d
    jr c, jr_04c_7127

    jr c, @-$6e

    add hl, sp

jr_04c_711a:
    ld de, $103c
    ld a, [hl]
    jr nz, jr_04c_719d

jr_04c_7120:
    jr nz, jr_04c_7120

    ld h, b
    cp l
    add e
    nop
    db $f4

jr_04c_7127:
    ld [bc], a
    adc h
    rst $38
    rlca
    add a
    ld [bc], a
    ld [$0286], sp
    ld d, b
    ld a, [bc]
    rst $38
    rst $38
    ld a, a
    ld [hl], c
    rra
    jr c, @+$0a

    inc d
    adc h
    inc c
    inc b
    ld b, e
    ld c, $02
    ld de, $3e3e
    add [hl]
    jp nz, $3e06

    ld e, [hl]
    ld [bc], a
    xor h
    inc b
    ld e, h
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    or e
    ld [bc], a
    and b
    xor l
    ld [bc], a
    jp z, $02a3

    sbc d
    dec b
    inc b
    ld b, $08
    rrca
    rrca
    rrca
    adc a
    nop
    inc h
    ld a, [bc]
    ccf
    ccf
    ret nz

    pop bc
    nop
    add c
    nop
    db $eb
    ld hl, sp-$01
    ld b, $84
    sub c
    ld bc, $f030
    add e
    ld [bc], a
    inc [hl]

jr_04c_717a:
    ld bc, $ff0f
    jp $0701


    jp Jump_04c_4901


    and a
    or e
    add hl, bc
    ret nz

    ret nz

    jr nz, jr_04c_717a

    db $10
    ld hl, sp+$08
    ld hl, sp+$38
    jr c, jr_04c_711a

    ld [bc], a
    add $ff
    db $ec
    add hl, hl
    nop
    ld bc, $8384
    nop
    ld [bc], a
    add h

jr_04c_719d:
    add e
    ld [bc], a
    dec b
    nop
    inc bc
    jp $c781


    add l
    ld bc, $0100
    db $ec
    inc a
    ldh [rLY], a
    jr z, jr_04c_71af

jr_04c_71af:
    ld d, h
    nop
    cp d
    nop
    ld a, h
    nop
    cp d
    nop
    ld e, l
    nop
    xor a
    nop
    ld d, $01
    dec l
    ld [bc], a
    ld e, e
    dec b
    cp [hl]
    inc bc
    ld a, l

jr_04c_71c4:
    rlca
    ld a, [c]
    rrca
    ld [hl], l

jr_04c_71c8:
    rrca
    db $eb
    rra
    ld sp, hl
    dec de
    ret nc

    add hl, hl
    ldh a, [rNR10]
    ret nc

    jr nz, jr_04c_71c4

    jr @-$26

    jr z, jr_04c_71c8

    inc e
    db $fc
    inc c
    ld h, [hl]
    rra
    db $fd
    rrca
    ld a, [hl]
    rlca
    cp e
    rlca
    ld e, a
    inc bc
    cp a
    ld bc, $005f
    cpl
    nop
    rla
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [$81c4], sp
    nop
    dec b
    ld a, d
    push bc
    and e
    nop
    rrca
    add h
    xor a
    db $10
    dec d
    nop
    xor d
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, [$eb05]
    rra
    rst $10
    ld a, a
    xor a
    rst $38
    ld a, a
    ld [hl+], a
    rst $38
    inc bc
    ld a, a
    rst $38
    di
    rst $38
    ld b, l
    pop hl
    di
    jp $e087


    jr z, @+$37

    ld a, a
    dec [hl]
    ccf
    ld b, [hl]
    ld e, [hl]
    ld b, $0f
    rrca
    rra
    rra
    ccf
    cp a
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    cp a
    and b
    rst $38
    ldh [rIE], a
    ld hl, sp-$41
    ld a, a
    rst $38
    rra
    ei
    rlca
    ld e, a
    nop
    xor a
    nop
    ld d, l
    nop
    xor d
    nop
    dec b
    nop
    nop
    jp c, $2f00

    and a
    nop
    ld a, [hl-]
    nop
    xor b
    add h
    xor e
    and e
    db $ed
    ld b, $ab
    ld d, h
    xor c
    cp $d4
    rst $38
    ld_long a, $ff2a
    dec c
    cp $ff
    db $fc
    cp $f8
    db $fc
    ldh [$f8], a
    ret nz

    ldh [$80], a
    ret nz

    db $10
    sub b
    and e
    jp z, $800d

    add c
    jp $ffe7


    rst $38
    db $e3
    ld [c], a
    db $e3
    ld [hl+], a
    rst $30
    rla
    rst $38
    ccf
    add e
    and d
    inc b
    rst $30
    ld hl, sp-$01
    nop
    cp $a4
    pop af
    ld [$0051], sp
    inc bc
    nop
    ld b, c
    nop
    and d
    nop
    ld d, c
    or [hl]
    nop
    call $00a3
    db $f4
    ld b, $54
    nop
    xor b
    nop
    dec d
    nop
    adc d
    call nz, $3b01
    ldh [$34], a
    rst $10
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    and b
    ld e, a
    ldh a, [$be]
    add sp, -$01
    ret nc

    xor a
    ld hl, sp+$76
    db $fd
    ld a, c
    ld a, [hl]
    inc [hl]
    ld a, a
    add hl, sp
    ld a, $3c
    ccf
    dec sp
    ld a, $3e
    dec a
    dec sp
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, e
    cp $ff
    call c, $fcdb
    cp a
    ld a, b
    or $78
    rst $28
    ldh a, [$fe]
    ldh [rIE], a
    ret nz

    ld a, a
    add b
    rst $30
    and h
    ld bc, $0a65
    xor d
    nop
    ld b, l
    nop
    xor d
    nop
    pop de
    nop
    add sp, $00
    ret nc

    jp $6501


    cp d
    nop
    ld l, l
    nop
    inc d
    add h
    di
    ld [bc], a
    ld [$fc00], a
    and h
    nop
    ld sp, hl
    nop
    cp $c4
    add c
    ld [bc], a
    db $fd
    nop
    ld [$c1a4], a
    db $10
    push de
    nop
    and d
    nop
    rst $10
    nop
    ld l, a
    add b
    rst $30
    nop
    db $eb
    nop
    push de
    nop
    ld [c], a
    nop
    call nc, $9383
    add $01
    ld l, c
    nop
    ld d, h
    add [hl]
    ld bc, $005f
    ld d, h
    call nz, $02b5
    ld a, [$f400]
    call nz, $8900
    ld bc, $00a8
    db $f4
    cpl
    nop
    nop
    add [hl]

jr_04c_7331:
    adc a
    or d
    nop
    dec hl
    nop
    add b
    ld hl, sp+$32
    sbc c
    ld [de], a
    xor a
    nop
    rla
    nop
    dec l
    ld [bc], a
    ld e, d
    dec b
    cp l
    ld [bc], a
    ld a, d
    dec b

jr_04c_7347:
    push af
    ld a, [bc]
    ld a, d
    dec b

jr_04c_734b:
    pop hl
    ld e, $e0
    add e
    nop
    and e
    ldh [$2b], a
    jr @-$2e

    jr z, jr_04c_7347

    jr jr_04c_7331

    inc l
    db $fc
    inc e
    ldh a, [rIF]
    xor d
    ld d, l
    ld d, l
    xor d
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    inc c
    di
    sub d
    ld h, c
    ld b, c
    and b
    or d
    ld b, c
    ld e, l
    and d
    jr z, jr_04c_734b

    nop
    ld a, a
    dec d
    ccf
    ld c, d
    ld e, [hl]
    dec b
    rrca
    ld a, [bc]
    rra
    sub l
    add h
    ld bc, $0925
    rra
    nop
    cp a
    and b
    rst $38
    ret nz

    rst $38
    ldh [$bf], a
    ld a, b
    adc l
    ld bc, $0132
    ld d, c
    xor [hl]
    add l
    cp a
    ld [de], a
    ld d, d
    xor a
    add hl, hl
    rst $10
    ld d, d
    xor a
    dec h
    rst $18
    ld [bc], a
    rst $38
    inc b
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add h
    ld bc, $a48b
    ld bc, $0092
    cp $84
    ld bc, $0698
    inc d
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    rra
    adc l
    ld bc, $07a2
    add hl, sp
    ld a, [hl]
    inc [hl]
    ccf
    add hl, sp
    ld a, $3c
    ld a, a
    add e
    ld bc, $e0fc
    add hl, hl
    ld l, e
    cp $f6

jr_04c_73d0:
    db $dd
    db $eb
    sbc [hl]
    rst $10
    inc a
    db $eb
    inc a
    rst $10
    ld a, b
    xor [hl]
    ld a, b
    ld e, a
    ldh a, [$be]
    ldh [$7f], a
    ret nz

    push af
    ld a, [bc]
    ld [$d111], a
    jr z, jr_04c_73d0

    db $10
    call nc, $e828
    inc d
    call nc, $ea2a
    dec e
    push af
    ld a, [bc]
    xor d
    ld d, l
    ld d, h
    xor e
    add e
    di
    dec b
    cp [hl]
    ld b, c
    ld [hl], e
    add b
    and c
    ld b, b
    add e
    adc e
    ld de, $2b14
    ld bc, $1f1f
    and b
    cp a
    ld b, b
    rra
    ldh [rIF], a
    ldh a, [$c3]
    inc a
    ldh a, [rIF]
    db $fc
    inc bc
    adc c
    inc bc
    ld h, [hl]
    ldh [rNR51], a
    ld d, d
    xor a
    and b
    ld e, [hl]
    ld b, b
    cp h
    and b
    ld e, b
    nop
    ldh a, [rP1]
    pop bc
    ld de, $0191
    inc bc
    dec bc
    adc a
    ld d, a
    rst $38
    and e
    ld a, [c]
    ld b, c
    ld [c], a
    db $e3
    inc d
    rst $30
    ld [$01fe], sp
    db $fc
    inc bc
    ldh [$1f], a
    ld bc, $0ffe
    ldh a, [$89]
    inc bc
    and [hl]
    ld b, $ed
    ld a, [$fdf6]
    ld sp, hl
    cp $fe

jr_04c_744b:
    add a
    add e
    inc de
    db $dd
    db $eb
    rra
    ei
    rra
    pop de
    cpl
    ld hl, sp+$1f
    ret c

    cpl
    db $fc
    rra
    call c, $f62f
    rra
    rst $38
    rrca
    ld h, a
    adc h
    nop
    or e
    add l
    ld bc, $0a10
    rst $38
    rst $38
    ld [hl], l
    rst $38
    dec [hl]
    rst $38
    ld d, $ff
    rrca
    rst $38
    sbc a
    and e
    ld bc, $8a7b
    ld bc, $0725
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    jp $5f03


    inc b
    add c
    rst $38
    ld [bc], a
    rst $38
    push bc
    inc h
    rst $38
    adc c
    ld bc, $ff96
    ld h, a
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101
    ld [hl], l
    ld b, $3c
    inc e
    ld b, [hl]
    ld [bc], a
    sbc a
    ld bc, $44bf
    add b
    rst $38
    ld b, e
    ld a, a
    ld b, b
    rlca
    ccf
    jr nz, jr_04c_74ce

    jr jr_04c_74b8

    ld b, $01
    ld bc, $33ec
    inc de
    rra

jr_04c_74b8:
    rrca
    ld h, e
    jr nz, jr_04c_744b

    add b
    ccf
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    cp $f7
    rra
    rla
    ld e, $13
    ld b, e
    ld c, $0b

jr_04c_74ce:
    ld b, e
    rlca
    dec b
    add a
    nop
    ld a, [bc]
    add e
    nop
    ld [$0707], sp
    inc b
    add a
    add h
    rst $28
    ld l, b
    rst $38
    jr @+$45

    rst $38
    db $10
    ld b, l
    rst $38
    jr nz, jr_04c_74e8

    ld sp, hl

jr_04c_74e8:
    and b
    ld b, e
    ld [hl], b
    ld b, b
    nop
    ld a, c
    ld b, h
    ld b, b
    ld a, [hl]
    ld bc, $4071
    dec h
    jr nz, jr_04c_74fd

    ld de, $1510
    nop
    ld a, [de]
    db $10

jr_04c_74fd:
    inc c
    ld [hl+], a
    ld [$0402], sp
    inc b
    ld [bc], a
    add h
    cp e
    ld [$0f0f], sp
    rra
    nop
    daa
    jr nz, jr_04c_754d

    jr nz, @+$21

    ret z

    add sp, $11
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp-$38
    ld hl, sp-$18
    ld a, h
    db $e4
    sbc h
    db $f4
    inc e
    db $f4
    ld e, $f2
    ld b, l
    ld c, $fa
    ld [de], a
    rrca
    rst $38
    adc h
    ld hl, sp-$02
    ldh [rIE], a
    ld b, b
    rst $18
    sbc b
    rst $38
    jr c, @+$01

    ld sp, $00ff
    rst $38
    inc c
    rst $38
    ld b, e
    rlca
    cp $00
    inc bc
    ld c, l
    rst $38
    nop
    inc bc
    ccf
    nop
    rra
    nop
    push bc
    add c
    ld c, $bf

jr_04c_754d:
    nop
    ld e, a
    nop
    cp [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    ld h, h
    dec bc
    ldh [$c0], a
    ldh a, [$30]
    cp $0e

jr_04c_7563:
    db $fd
    dec b
    ld hl, sp+$18
    ldh [$e0], a
    rlc b
    ld b, a
    nop
    ld bc, $80c2
    adc l
    adc a
    inc bc
    ld sp, hl
    ld sp, hl
    rra
    inc bc
    add $c9
    rrca
    inc bc
    db $fd
    dec b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    jr c, jr_04c_7563

    ldh a, [$1f]
    ldh a, [$3f]
    ldh [rIE], a
    xor h
    pop af
    inc bc
    rst $20
    nop
    jp $c700


    add c
    inc b
    rra
    nop
    rrca
    nop
    inc c
    and l
    pop bc
    inc bc
    nop
    ld b, b
    nop
    add b
    and [hl]
    add l
    inc bc
    rlca
    rlca
    ei
    ld a, [$0087]
    inc c
    dec b
    ld e, $1e
    ld l, a
    ld h, c
    rst $38
    add b
    ld b, [hl]
    rst $38
    nop
    ld [$7dc3], sp
    ld a, a
    ld a, [$e5bf]
    cp a
    jp nz, $45bf

    ret nz

    ld a, a
    ld b, e
    pop bc
    ccf
    add hl, bc
    db $e3
    ld a, $f7
    inc e
    rst $38
    ld bc, $82fe
    rst $38
    add c
    ld b, h
    rst $38
    nop
    inc b
    ld bc, $06ff
    rst $38
    jr @+$49

    rst $38
    nop
    inc bc
    sbc a
    nop
    rrca
    ld bc, $81c3
    inc bc
    db $e3
    nop
    pop bc
    nop
    ld b, e
    add c
    nop
    ld [bc], a
    add e
    nop
    rst $00
    add h
    ld bc, $191f
    rrca
    nop
    rlca
    nop
    ld [bc], a
    nop
    dec b
    nop
    dec bc
    ld bc, $0357
    xor a
    rlca
    ld a, e
    dec sp
    db $fc
    call z, $02fe
    sbc a
    ld bc, $81ff
    ld a, [hl]
    ld a, [hl]
    and l
    ld bc, $0162
    ldh [$60], a
    ld b, e
    ldh a, [rNR10]
    ld bc, $68f8
    ld b, l
    ld hl, sp-$38
    ld bc, $c878
    ld b, h
    ldh a, [$d0]
    inc b
    sub b
    ldh [$a0], a
    ldh [rNR41], a
    and a
    nop
    adc [hl]
    add hl, bc
    inc bc
    inc bc
    inc c
    nop
    or c
    sub b
    rst $00
    ret nz

    sbc a
    add b
    rlc c
    ld e, $03
    db $fc
    inc e
    ldh [$e0], a
    ld b, a
    ldh [rNR41], a
    inc bc
    pop hl
    ld hl, $22e3
    ld b, e
    rst $20
    inc h
    ld b, e
    rst $00
    ld b, h
    inc bc
    jp $c142


    ld b, c
    and l
    ld bc, $0958
    jr @+$1a

    cp h
    cp h
    or $f6
    db $e3
    db $e3
    inc bc
    inc bc
    ldh a, [$2d]
    nop
    inc a

jr_04c_7662:
    adc b
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld [$08f8], sp
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    ret nz

    ret nz

    ld l, e
    add hl, bc
    ldh a, [$f0]
    sbc b
    ld [$040c], sp
    ld c, $02
    sbc [hl]
    ld [bc], a
    and [hl]
    nop
    ld [hl-], a
    ld c, $08
    ldh a, [$f0]
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, jr_04c_76ba

    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    or c
    db $ed
    inc c
    ld bc, $0600
    ld [bc], a
    add hl, de
    ld [$0022], sp
    ld b, c
    nop
    add a
    nop
    sbc a
    add e
    nop
    cpl

jr_04c_76a3:
    ld b, $00
    ld a, a
    ld b, b
    ccf
    inc sp
    rrca
    dec c
    adc b
    pop de
    ld b, $e0
    cp h
    ld [$007a], sp
    cp l
    ld bc, $00a4
    inc l
    ld a, [bc]
    ld [bc], a

jr_04c_76ba:
    rst $38
    dec b
    rst $38
    add hl, de
    rst $28
    ld a, c
    adc a
    rst $38
    inc c
    ld hl, sp-$77
    cp a
    dec b
    ld [bc], a
    nop
    inc b
    nop
    dec b
    nop
    ld b, e
    rlca
    inc b
    ld bc, $0203
    adc c
    ld bc, $6566
    inc bc
    ld a, b
    jr nc, jr_04c_7662

    add [hl]
    add l
    ld bc, $02a4
    pop af

jr_04c_76e1:
    nop
    cp $c7
    ld bc, $048b
    ld [hl], b
    rst $28
    ld a, $e1
    ccf
    rlc d
    db $e3
    rlca
    ld h, b
    jr nz, jr_04c_76a3

    db $10
    ld e, b
    ld [$00bc], sp
    ld b, e
    db $fc
    inc b
    add h
    ld [bc], a
    adc $02
    jr nc, jr_04c_76e1

    ldh [$8b], a
    nop
    sub b
    and h
    nop
    and $0d
    db $10
    cpl
    jr z, @+$51

    ld c, b
    ld b, a

jr_04c_770f:
    ld b, h
    adc a
    add e
    adc a
    add b
    sbc a
    add b
    ld e, a
    ld b, e
    ld b, b
    ld a, a
    inc b
    ld h, b
    ld a, a
    ld e, b

jr_04c_771e:
    ld a, a
    ld b, a
    add a
    nop
    cp b
    ld bc, $03fe
    xor b
    ld bc, $00c4
    add b
    ld b, a
    rst $38
    ld b, b
    ld bc, $809f
    adc c
    ld bc, $8626
    ld bc, $0782

jr_04c_7738:
    ld bc, $06fe
    ld sp, hl
    jr @-$17

    jr nz, jr_04c_770f

    ld b, h
    ld b, b
    rst $18
    dec b
    rst $38
    ld b, b
    rst $38
    jr nc, jr_04c_7738

    rrca
    add l
    ld bc, $8a9a
    ld bc, $86e0
    rst $00
    call z, $08c1
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc c
    di
    jr nc, jr_04c_771e

    ret nz

    add a
    ld [bc], a
    ld [$00a3], sp
    inc c
    call z, $0f03
    nop
    ld b, b
    and l
    inc bc
    cp b
    ld bc, $20e0
    ld c, l
    ldh a, [rNR10]
    add a
    ld [bc], a
    ld a, b
    ld bc, $e0fe
    add h
    call Call_04c_4800
    add a
    ld bc, $c808
    ld bc, $0022
    inc b
    add l
    ld bc, $867a
    rst $38
    nop
    ld [bc], a
    add a
    ld bc, $ffe8
    db $ec
    jr z, jr_04c_77a1

    ld bc, $0203
    ld b, $04
    nop
    ld [$0809], sp
    ld [bc], a
    ld de, $1112
    ld d, $11

jr_04c_77a1:
    inc b
    ld b, h
    inc hl
    inc l
    ld b, e
    jr c, jr_04c_77cf

    add hl, bc
    add hl, de
    daa
    dec e
    inc de
    ld c, $12
    ld c, $0a
    inc b
    inc b

Call_04c_77b3:
    db $ec
    ld b, h
    ld [hl+], a
    ld bc, $001e
    inc bc
    ld a, [hl-]
    ld a, e
    or $8f
    inc hl
    rra
    ld b, c
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $1bff
    rst $38
    ld [hl], $ff
    ld e, [hl]

jr_04c_77cf:
    rst $18
    ld b, a
    rst $08
    add a
    adc a
    ld b, $0e
    ld b, $43
    ld b, $02
    nop
    ld [bc], a
    adc l
    nop
    inc e
    ld [hl+], a
    ld bc, $0201
    inc bc
    inc hl
    ld [bc], a
    ld b, h
    inc b
    rlca
    ld b, e
    ld b, $05
    inc bc
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    sbc e
    nop
    rrca
    rlca
    rlca
    inc c
    ld e, $30
    ld a, b
    ld b, b
    ldh a, [$80]
    ld b, e
    ldh [rP1], a
    nop
    ld [hl], b
    call nz, $17e2
    ld e, a
    add b
    daa
    ret nz

    sub c
    ldh [$88], a
    ldh a, [$c4]
    ld hl, sp-$1d
    db $fc
    jr nc, @+$01

    ld l, h
    rst $08
    ld h, a
    rst $00
    cp c
    and a
    inc c
    rrca
    inc bc
    inc bc
    ld h, c
    push bc
    add b
    dec e
    inc e
    db $10
    jr nc, jr_04c_7845

    ld h, b
    ld b, b
    ld b, e
    add b
    add h
    add e
    adc b
    rlca
    sub b
    rrca
    jr nz, jr_04c_7850

    ld b, c
    ccf
    ld b, $7e
    adc b
    ld a, b
    db $10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    sub c
    nop
    ld a, [de]
    dec bc
    rlca
    inc b

jr_04c_7845:
    rrca
    ld [$101f], sp
    ccf
    jr nz, @+$81

    ld b, b
    rst $38
    add b
    ld b, e

jr_04c_7850:
    rst $38
    nop
    ld bc, $003f
    ld b, l
    rra
    nop
    ld bc, $003f
    add h
    nop
    sbc a
    ld bc, $f100
    jp $01f7


    nop
    pop af
    call nz, $138b
    rst $28
    nop
    ccf
    ret nz

    dec b
    ld_long a, $ffc0
    or b
    ccf
    sbc [hl]
    rrca
    ld a, a
    sbc a
    rst $38
    rst $38
    add hl, sp
    ld sp, hl
    push bc
    dec a
    ld b, e
    ld [hl], d
    rrca
    ld bc, $3fc1
    ld b, l
    ld bc, $0bff
    ld [bc], a
    cp $64
    db $fc
    db $e4
    db $fc
    ld l, b
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    ld l, [hl]
    add hl, bc
    rrca
    rrca
    jr nc, jr_04c_78d8

    ret nz

    rst $00
    nop
    add e
    nop
    inc bc
    and h
    call $ff47
    nop
    add e
    sub c
    ld bc, $0001
    push bc
    add c
    inc bc
    cp $01
    db $fd
    ld [bc], a
    add e
    add e
    ld bc, $05fa
    add e

jr_04c_78b6:
    add e
    ld [de], a
    push af
    ld a, [bc]
    ld a, [$f405]
    dec bc
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    dec d
    ld_long $ff00, a
    ret nz

    rst $38
    cp $22
    rst $38
    ld [$ff9f], sp
    reti


    add hl, sp
    sub b
    ld [hl], b
    jr nz, jr_04c_78b6

    ld h, b
    add h

jr_04c_78d8:
    ld bc, $bb43
    nop
    ld c, $13
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    inc b
    ld a, [$f506]
    dec bc
    ld sp, hl
    rlca
    db $f4
    dec bc
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    add e
    add e
    ld bc, $3fc0
    add e
    adc e
    dec b
    and c
    ld e, [hl]
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    add e
    adc a
    inc bc
    nop
    rst $38
    inc e
    db $e3
    ld b, e
    ld a, $c1
    inc b
    inc a
    jp $e718


    nop
    ld c, h
    rst $38
    nop
    nop
    inc bc
    ld [hl+], a
    rst $38
    dec bc
    rst $08
    rst $38
    call nc, Call_04c_68ec
    db $76
    ld l, $32
    ld h, $3a
    ld d, $19
    ld b, e
    inc de

jr_04c_7926:
    dec e
    dec bc
    dec bc
    dec c
    add hl, bc
    rrca
    ld de, $221f
    ld a, $2c
    inc a
    jr nc, jr_04c_7964

    db $db
    db $e4
    ld [bc], a
    add b
    add b
    nop
    ld c, b
    ret nz

    ld b, b
    ld bc, $e000
    ld c, c
    ldh [rNR41], a
    ld b, e
    jr nz, jr_04c_7926

    nop
    nop
    ld b, h
    ldh a, [rNR10]
    ld b, e
    ld [$00f8], sp
    nop
    ld b, h
    db $fc
    inc b
    dec c
    nop
    db $fc
    ld [$10f8], sp

jr_04c_7959:
    ldh a, [$60]
    ldh [$f0], a
    ldh a, [$b8]
    ret z

    ret c

    add sp, $43
    inc l

jr_04c_7964:
    inc [hl]
    ld bc, $141c
    ld b, e
    inc d
    inc e
    ld b, e
    jr z, jr_04c_79a6

    ld bc, $3030
    ldh a, [rDMA]
    nop
    ld c, $03
    ld bc, $7939
    db $f4
    adc h
    nop
    sbc c
    dec d
    ld a, [de]
    rst $38
    inc [hl]
    rst $38
    ld e, d
    db $db
    ld b, c
    jp $8783


    add a
    adc a
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0090
    cp b
    nop
    ld bc, $81c5
    adc c
    ld bc, $0200
    rst $18
    add b
    and a
    add [hl]
    ld bc, $000d

jr_04c_79a6:
    ld h, e
    adc b
    ld bc, $e015
    ld hl, $0f0f
    rlca
    inc b
    inc c
    ld [$1018], sp
    db $10
    jr nz, jr_04c_79d8

    jr nz, jr_04c_79db

    ld b, c
    ld h, h
    ld b, e
    ld c, b
    add a
    ret nc

    adc a
    and c
    sbc a
    ld [c], a
    ld e, $c4
    inc a
    ret z

    jr c, jr_04c_7959

    ld [hl], b
    and b
    ld h, b
    ret nz

    ret nz

    adc c
    ld bc, $0580
    dec [hl]
    ld_long a, $ffce
    pop af
    rrca

jr_04c_79d8:
    ld b, e
    inc e
    inc bc

jr_04c_79db:
    inc bc
    jr nc, jr_04c_79ed

    ret nz

    ccf
    add l
    ld [bc], a
    ld l, [hl]
    ld b, $19
    rst $38
    ld a, c
    rst $38
    sbc d
    cp [hl]
    inc a
    adc d
    ld [bc], a

jr_04c_79ed:
    sub c
    ld b, e
    add b
    rst $38
    inc de
    ld a, [hl]
    rst $38
    ld a, a
    rst $18
    ld e, a
    rst $28
    ld c, c
    ld sp, hl
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    jr z, @+$3a

    ld c, b
    ld a, b
    ld d, b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, a
    add a
    rst $38
    dec de
    ld l, l
    rst $08
    ld h, a
    add $be
    and h
    inc c
    ld [$1008], sp
    add hl, de
    db $10
    dec de
    jr nz, @+$38

    ld hl, $2334
    inc a
    ld b, e
    ld a, b
    ld b, a
    ld a, c
    ld b, a
    ld [hl], d
    ld c, [hl]
    ld [hl], h
    ld c, h
    jp $87b0


    pop de
    add e
    rst $38
    dec c
    dec de
    inc a
    ld h, a
    cp $f8
    add a
    adc [hl]
    ld bc, $010e
    jr c, jr_04c_7a40

    ldh [$1f], a
    add l
    inc bc
    ld c, d
    add hl, bc
    inc c

jr_04c_7a40:
    rst $38
    inc a
    rst $38
    call $1edf
    ld e, $18
    jr jr_04c_7ab7

    add a
    ld bc, $17f0
    add sp, -$69
    ld d, b
    rst $28
    ld l, b
    rst $10
    dec [hl]
    ld_long $ff20, a
    jr nc, @+$01

    ld e, [hl]
    rst $38
    ld a, a
    rst $18
    rst $20
    rst $18
    xor c
    reti


    adc b
    ld hl, sp+$70
    ld [hl], b
    adc c
    ld [bc], a
    add b
    dec b
    ld sp, $463f
    ld a, [hl]
    ld a, b
    ld a, b
    adc l
    ld bc, $0110
    rrca
    rrca
    adc b
    adc a
    ld [bc], a
    rst $18
    ld h, a
    rst $18
    add e
    ld bc, $8e1c
    ld bc, $0280
    ld a, a
    sbc [hl]
    ld l, a
    adc l
    ld bc, $ff92
    ld a, e
    ld de, $3131
    ld c, l
    ld c, l
    ld c, a
    ld h, e
    cpl
    inc sp
    rra
    add hl, de
    ld h, a
    ld h, h
    sbc h
    add b
    sbc b
    ldh a, [rBCPS]
    ld l, b
    inc hl
    ld [$0c05], sp
    ld [$0407], sp
    inc bc
    inc bc
    ld [hl], e
    ld bc, $0101
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0003
    jp z, $1388

    rlca
    rlca

jr_04c_7ab7:
    ld a, [bc]
    rrca
    dec d
    rra
    ld a, $3f
    ld [hl], a
    ld a, a
    ld h, e
    ld h, e
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $07
    inc b
    ld b, e
    rlca
    ld b, $e0
    ld a, [hl-]
    dec bc
    ld [$1003], sp
    rst $10
    ret nc

    ccf
    jr nc, jr_04c_7b12

    sub h
    cpl
    sbc e
    and a
    inc h
    and e
    and e
    cp l
    inc a
    ld h, $35
    ld b, h
    ld d, a
    call $1f57
    ld b, $3b
    ld a, [bc]
    rst $30
    inc [hl]
    rst $38
    call Call_04c_457f
    ld a, $22
    rra
    inc de
    ld a, $3f
    ld e, a
    ld c, a
    sbc a
    add b
    sbc a
    sub b
    rst $38
    adc a
    ld e, [hl]

Call_04c_7aff:
    ld h, e
    ccf
    jr nc, jr_04c_7b12

    ld [$9c9f], sp
    ld a, a
    rst $38
    ccf
    ld [hl+], a
    rst $38
    ld bc, $3f3f
    ld h, a
    dec d
    ret nz

    ret nz

jr_04c_7b12:
    or b
    ldh a, [$58]
    ld hl, sp-$01
    rst $38
    db $e3
    pop af
    add e
    jp $0307


    rra
    inc bc
    ccf
    ld bc, $01ff
    rst $08
    nop
    ld b, e
    rst $18
    db $10
    ld [de], a
    rst $08
    nop
    rst $38
    inc b
    cp $09
    db $fc
    inc de
    db $fc
    di
    db $fc
    inc de
    cp $09
    rst $38
    ldh [$3f], a
    rst $38
    ld b, c
    and e
    nop
    ld c, a
    ld e, $80
    cp b
    cp b
    cp $c6
    reti


    add a
    sub c
    adc a
    and b
    sbc a
    ret nz

    cp a
    add b
    rst $38
    ld b, c
    rst $38
    and c
    rst $38
    sbc $7e
    rst $38
    ld hl, sp+$07
    rlca
    add b
    add b
    ldh [$60], a
    ld [hl], b
    ldh a, [rNR44]
    ld hl, sp+$03
    ldh a, [$f0]
    add b
    add b
    rlc b
    ld b, c
    inc b
    inc a
    ccf
    di
    rst $38
    rst $08
    dec hl
    rst $38
    nop
    ld a, [hl]
    ld b, a
    rst $38
    nop
    ld de, $817f
    ld a, $c3
    dec a
    add $3e
    call nz, $8c7a
    ld sp, hl
    ld e, $f8
    rst $28
    ld hl, sp+$0f
    ld a, b
    rrca
    ld b, e
    inc b
    rlca
    and e
    push hl
    ldh [rNR43], a
    ld bc, $8000
    add b
    add c
    add b
    add e
    add e
    dec b
    ld b, $58
    dec c
    or l
    dec de
    ld hl, sp+$1e
    ld a, [$27f6]
    daa
    ld b, [hl]
    ld b, d
    ld l, a
    ld b, c
    scf
    jr c, jr_04c_7bb3

    inc b
    ld [de], a
    inc de
    cpl
    ccf
    rlca
    ld a, a

jr_04c_7bb3:
    ld e, a
    ld [hl+], a
    ld a, a
    rlca
    ld a, $3f
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    dec h
    rst $38
    inc bc
    pop hl
    di
    ret nz

    pop hl
    ld [hl+], a
    ret nz

    nop
    ld b, b
    ld b, a
    ldh [rNR41], a
    dec b

jr_04c_7bce:
    db $fc
    ld a, h
    add e
    rst $38
    ldh [$1f], a
    ld b, e
    db $10
    rrca
    rra
    jr nz, jr_04c_7bf9

    ret nz

    ccf
    nop
    rst $38
    ld c, $ff
    inc de
    pop af
    ld de, $18f1
    ldh a, [$0e]
    cp $89
    ld sp, hl
    ldh a, [rPCM12]
    ldh a, [rNR21]
    ld sp, hl
    add hl, bc
    ld sp, hl
    ret


    ccf
    jp hl


    ld e, a
    ldh a, [$3f]
    jr nz, jr_04c_7c3c

jr_04c_7bf9:
    rrca
    ret nz

    dec c
    ccf
    jr nc, jr_04c_7bce

Call_04c_7bff:
    call z, $0303
    add b
    ret nz

    ldh a, [$30]
    db $fc
    ld a, h
    db $fc
    db $fc
    add e
    ld bc, $ab12
    nop
    ld [hl], $23
    add b
    dec bc
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, jr_04c_7c89

    db $10
    jr nc, @+$0a

    jr jr_04c_7c1e

jr_04c_7c1e:
    ld [$00ad], sp
    ld b, h
    ld c, e
    jr nz, @-$1e

    add hl, bc
    ret nz

    ret nz

    ld h, b
    jr nz, @-$0e

    ret nc

    ld hl, sp-$28
    db $e4
    and h
    ld b, e
    jp nz, $0f5a

    add h

jr_04c_7c35:
    add h
    ret c

    jr jr_04c_7c35

    inc e
    ld [c], a
    ld [hl+], a

jr_04c_7c3c:
    pop bc
    dec c
    pop hl
    dec l
    jp nc, $8c52

    adc h
    sub l
    nop
    jr c, jr_04c_7c54

    nop
    ld [bc], a
    inc b
    ld b, $02
    ld a, [bc]
    ld bc, $0309
    ld b, $02
    ld [bc], a

jr_04c_7c54:
    nop
    call z, Call_04c_4e00
    adc e
    nop
    ld [hl], b
    ldh [rNR42], a
    rla
    db $10
    rra
    db $10
    dec de
    inc d
    cpl
    ld l, e
    rla
    sub h
    dec sp
    sbc e
    db $ed
    and h
    adc $45
    sbc h
    sub a
    call $0667
    ld b, $0b
    add hl, bc
    ld sp, $4b34
    ld c, b
    ld b, a
    ld h, [hl]
    scf
    ld [hl-], a
    inc c
    nop
    add [hl]
    nop
    ld l, $02
    ld b, $01
    ld bc, $0087
    ld c, b

jr_04c_7c89:
    inc bc
    dec de
    inc d
    rrca
    dec bc
    add e
    nop
    inc [hl]
    rra
    dec b
    inc b
    ld b, $05
    ld [$690f], sp
    ld l, a
    sub a
    sub [hl]
    inc de
    ld d, d
    or e
    sub d
    rst $30
    sub h
    rst $38
    add hl, de
    cpl
    dec h
    ld b, a
    ld d, a
    add $47
    rrca
    rrca
    ccf
    db $10
    rst $38
    jr nc, @+$01

    rst $08
    add a
    nop
    xor b
    rrca
    db $fc
    inc de
    cp $f7
    ld sp, hl
    add hl, de
    ldh a, [rNR21]
    ldh a, [$f6]
    add hl, sp
    ld sp, hl
    ld b, a
    add $40
    ret nz

    add l
    ld bc, $1c30
    rst $08
    ld c, b
    add a
    or h
    add a
    or l
    adc $4a
    ld c, [hl]
    jp z, $cc7c

    cp $80
    rst $38
    nop
    ld a, a
    ld bc, $007e
    rst $38
    add c
    cp $63
    ld a, l
    dec e
    ld e, $10
    rrca
    add h
    nop
    inc sp
    adc e
    ld bc, $0758
    or h
    dec de
    ld hl, sp+$1f
    cp $f1
    daa
    ld hl, $0183
    ld l, h
    adc b
    ld bc, $0e90
    ldh [rNR41], a
    jr nz, jr_04c_7d1d

    call c, $df13
    jr nz, @+$41

    ret nc

    rst $08
    ldh a, [$ef]
    db $10
    rra
    ld b, e
    ld [$176f], sp
    sbc [hl]
    sbc a
    ld [hl], e
    pop af
    and a
    pop hl
    ld a, a
    ld b, e
    db $fc
    rlca
    ei
    rra
    db $fc

jr_04c_7d1d:
    db $fc
    ldh a, [rNR10]

jr_04c_7d20:
    ld hl, sp+$08
    ld hl, sp-$38
    jr c, @-$16

    jr jr_04c_7d20

    ld b, e
    db $10
    ldh a, [rSB]
    ld h, b
    ldh [$85], a
    ld bc, $a316
    ld bc, $8b52
    ld bc, $8316

jr_04c_7d38:
    nop
    ret nc

    ld b, h
    rst $38
    nop
    ld [bc], a
    ld [$30ff], sp
    add e
    nop
    call c, $0185
    and b
    dec bc
    jr c, jr_04c_7d69

    push hl
    daa
    inc hl
    db $e3
    inc sp
    ld [c], a
    ld a, $f2
    ld e, a
    adc $43
    adc a
    add l
    add hl, bc
    db $dd
    ret


    rst $38
    ld a, $ff
    jr @+$01

    inc c
    ei
    res 0, l
    ld [bc], a
    nop
    and e
    ld [bc], a
    and [hl]
    dec c

jr_04c_7d69:
    jr nz, jr_04c_7d8b

    jr nc, @+$32

    ld l, b
    jr z, jr_04c_7d38

    ld c, b
    adc b
    adc b
    sbc b
    ld [$30f0], sp
    rst $00
    ld bc, $ffed
    db $ec
    ld hl, $0413
    inc c
    ld [de], a
    ld [de], a
    inc h
    inc h
    ld b, d
    db $76
    ld [bc], a
    sbc [hl]
    add l
    adc a
    push bc

jr_04c_7d8b:
    sbc $f8
    cp a
    jp nc, $d38f

    adc a
    ld b, e
    and d
    sbc [hl]
    add hl, bc
    ld h, d
    sbc [hl]
    ld h, e
    ld e, a
    ld b, h
    ld a, a
    jr c, jr_04c_7ddd

    rra
    rra
    cp [hl]
    cp a
    ld [de], a
    jr nz, jr_04c_7df5

    ld d, b
    ld [hl], b
    ld d, b
    ld e, b
    ld l, b
    ld c, l
    ld [hl], l
    ld [hl+], a
    ccf
    jr nz, jr_04c_7ded

    ld h, b
    ld e, l
    ld l, [hl]
    ld e, l
    inc sp
    ld [hl-], a
    ld b, h
    inc bc
    ld [bc], a
    ldh [$28], a
    ld h, d
    ld sp, $f191
    sub c
    ld sp, hl
    jp hl


    rra
    rla
    inc c
    dec bc
    ld b, $05
    inc b
    rlca
    ld [$090e], sp
    adc l
    ld c, c
    ld c, l
    ld c, h
    jp z, $8986

    rrca
    ld [$1c07], sp
    ccf
    ld h, h
    di
    adc [hl]
    rlca

jr_04c_7ddd:
    db $fd
    add a
    db $fc
    rst $30
    db $fc
    rrca
    ld c, $43
    inc bc
    ld [bc], a
    ldh [rNR44], a
    daa
    dec h
    ld a, a
    ld e, c

jr_04c_7ded:
    ld c, a
    ld [hl], b
    ld d, e
    ld [hl], b
    ld [hl-], a
    ld hl, $332c

jr_04c_7df5:
    inc de
    rra
    inc c
    rrca
    inc sp

jr_04c_7dfa:
    ccf
    ld [$9f47], sp
    adc a
    ld [hl], b
    ld [hl], b
    ld [bc], a
    ld b, $0f
    add hl, bc
    dec b
    inc de
    add hl, hl
    daa
    ld [hl], d
    ld c, [hl]
    jp nz, Jump_04c_43be

    ld [bc], a
    cp $05
    ld bc, $79ff
    rst $38
    ld b, [hl]
    add $43
    jr nz, jr_04c_7dfa

    dec bc
    sub c
    ld [hl], a
    sub c
    ld a, b
    adc [hl]
    ld a, c
    adc b
    ld a, a
    call nz, $c03f
    cp a
    ld b, e
    ldh [$9f], a
    ld a, [de]
    ld b, b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_04c_7eb0

    nop
    ld a, a
    ldh [$9f], a
    ld h, a
    sbc a
    cp b
    ld a, a
    db $fc
    inc bc
    cp $01
    ei
    add a
    rst $38
    ld hl, sp-$01
    add b
    ld a, a
    add b
    cp a
    add e
    sbc d
    ld [de], a
    ret nz

    ccf
    ldh [$bf], a
    ldh [$9f], a
    ldh a, [$5b]
    db $fc
    dec l
    ei
    rra
    db $fc
    rst $20
    rst $38
    ld [hl], b
    ret nc

    ldh [$e0], a
    ld [hl], a
    dec d
    ld [$0c18], sp
    inc h
    inc b
    inc a
    ret z

    ret c

    inc a
    db $ec
    ld [hl], d
    sbc $71
    rst $18
    ld d, b
    cp a
    jr nz, @+$01

    ld h, b
    rst $38
    add b
    adc a
    ld b, e
    ld h, b
    ld l, a
    inc b
    db $10
    rra
    ret nz

    rst $38
    add b
    ld b, h
    rst $38
    nop
    ld [de], a
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    ret nc

    ccf
    ldh a, [$1f]
    db $ed
    ld a, [de]
    ld a, [$fd0d]
    ld a, [bc]
    rst $38
    dec b
    db $fd
    ld b, e
    rlca
    cp $0a
    inc bc
    rst $30
    rrca

jr_04c_7e9b:
    rst $38
    di
    ldh a, [rIF]
    ld bc, $feff
    cp $7c
    ld [de], a
    ld bc, $0e02
    ld [bc], a
    ld [de], a

jr_04c_7eaa:
    inc bc
    inc hl
    inc a
    cpl
    jr jr_04c_7ecf

jr_04c_7eb0:
    add a
    add a
    add d
    add e
    ld b, e
    jp nz, $c141

    ld b, e
    jr nz, jr_04c_7e9b

    dec b
    inc a
    db $fc
    ld b, a
    rst $38
    cp b
    rst $00
    ld b, e
    rst $08
    add b
    ldh [$27], a
    cp b
    rst $00
    add b
    rst $38
    ld b, e
    rst $38
    inc a
    db $fc

jr_04c_7ecf:
    ld [$04f8], sp
    db $fc
    ld [hl], h
    db $fc
    db $fc
    adc h
    cp a
    rlca
    add hl, de
    ld b, $1c
    inc bc
    sbc h
    inc bc
    ld l, l
    add e
    jr nc, jr_04c_7eaa

    add b
    rst $38
    jp $2cff


    ccf
    ld de, $0c1f
    inc c
    inc bc
    inc bc
    or [hl]
    sbc $e0
    ld [hl+], a
    add b
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ret nc

    ld [hl], b
    sub b
    ldh a, [$2c]
    cp $25
    ld sp, hl
    jp nz, $84fe

    ld a, h
    call nz, $e23a
    sbc [hl]
    ld [hl], d
    ld c, [hl]
    ld [hl], c
    ld c, a
    add hl, sp
    daa
    ld a, [$cef6]
    ld a, [hl]
    ld b, d
    cp $3c
    db $fc
    xor l
    cp e
    dec b
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    ret nz

    daa
    add b
    jp $0598


    ld h, b
    jr nz, jr_04c_7f97

    db $10
    ldh a, [$f0]
    ld h, e
    rrca
    ld b, $06
    add hl, bc
    add hl, bc
    ld a, [de]
    ld a, [de]
    ld h, h
    ld h, [hl]
    sbc h
    adc h
    or d
    sbc [hl]
    sub l
    cp a
    push hl
    cp $8b
    nop
    jr nc, jr_04c_7f4a

    ld h, d
    ld e, [hl]
    ld b, l
    ld a, a
    jr c, jr_04c_7f85

    inc c
    rrca
    inc bc
    inc bc

jr_04c_7f4a:
    ld bc, $01c4
    sub a
    rlca
    ld sp, hl
    jp hl


    rra
    scf
    ld c, h
    res 0, [hl]
    add l
    add h
    nop
    adc b
    ld d, $0d
    add hl, bc
    dec c
    inc c
    ld a, [bc]
    or $f9
    ld a, a
    ret z

    rst $10
    adc h
    ld a, a
    add h
    inc sp
    adc $87
    db $fd
    ld h, a
    ld a, h
    rra
    inc e
    inc bc
    ld b, $8b
    nop
    and h
    adc d
    ld bc, $108d
    inc bc
    add hl, de
    inc a
    dec bc
    ld c, c
    ld a, [de]
    adc e
    or h
    cp a
    ld c, b
    ld c, a
    rlca

jr_04c_7f85:
    rlca
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    add l
    pop de
    inc hl
    add b
    ld b, e
    ld b, b
    ret nz

    rlca
    ld hl, $27e1
    and $39

jr_04c_7f97:
    rst $38
    ld e, b
    rst $20
    ld b, e
    and h
    jp $bc09


    jp $e799


    add c
    rst $38
    ld b, [hl]
    cp $38
    db $fc
    adc l
    ld [bc], a
    ld e, $04
    and b
    ldh [rNR10], a
    ldh a, [rNR10]
    sub d
    ld bc, $0fff
    ld a, [hl-]
    ld [hl], $4e
    ld a, [hl]
    call nz, $88bc
    ld a, b
    db $10
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    add b
    add b
    rst $08
    ld bc, $09f7
    jr c, @+$3a

    ld b, h
    ld h, h
    ld a, [hl+]
    sub d
    db $d3
    adc e
    push bc
    sbc $8c
    nop
    add b
    ld [bc], a
    adc h
    ld c, c
    ld c, h
    adc d
    ld bc, $0340
    rrca
    ld h, b
    rrca
    db $10
    adc e
    nop
    ld b, e
    ld a, [bc]
    dec c
    ld [bc], a
    ld [de], a
    ld d, $12
    dec d
    inc de
    sbc d
    sub a
    adc a
    adc a
    adc b
    ld bc, $00a6
    db $fc
    rlc c
    dec h
    inc bc
    ld d, b
    ld [hl], b
    ret nc

    ld [hl], b
    rst $38
    nop
