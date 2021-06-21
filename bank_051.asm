; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

    ld l, l
    inc d
    jr nc, jr_051_4034

    ld e, b
    ld l, b
    ld l, [hl]
    db $76
    cp a
    pop bc
    ld l, a
    ld [hl], b
    inc de
    inc e
    ld de, $081e
    rrca
    jr z, @+$31

    ld d, h
    ld a, a
    ld b, e
    ld b, h
    ld a, a
    ld b, b
    dec b
    jr nz, jr_051_405c

    jr jr_051_403e

    rlca
    ld b, $23
    ld bc, $31ec
    inc de
    jr nz, jr_051_4048

    ld [hl], b
    ld d, b
    cp b
    ret z

    ld e, a
    ld h, a
    ld b, a
    ld a, b
    jr nz, jr_051_4071

    db $10
    rra

jr_051_4034:
    dec c
    rrca
    add a
    add [hl]
    rst $38
    ld a, b
    ld b, e
    rst $38
    nop
    inc bc

jr_051_403e:
    ld [hl], c
    adc [hl]
    nop
    rst $38
    call nz, Call_051_4684
    rst $38
    nop
    dec bc

jr_051_4048:
    add b
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $81
    cp a
    ret nz

    ld e, a
    ld h, b
    add e
    xor e
    add hl, bc
    inc e
    rra
    inc bc
    inc bc
    inc c

jr_051_405c:
    inc c
    inc de
    rra
    add hl, sp
    ccf
    add e
    rst $38
    ld de, $1f1c
    ld [$300f], sp
    ccf
    ld b, b
    ld a, a
    jr nc, jr_051_40ad

    inc c
    rrca
    ld [bc], a

jr_051_4071:
    inc bc
    ld bc, $0201
    inc bc
    adc c
    nop
    jr nc, jr_051_4095

    ld e, $1e
    rst $28
    pop af
    rlca
    ld hl, sp+$3f
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    ret nz

    rst $38
    ld [c], a
    ccf
    rst $38
    dec c
    rst $38
    dec d
    rst $38
    ld de, $719f
    ld e, a
    or b
    dec c

jr_051_4095:
    ld a, [$0c43]
    ei
    ld [$f90e], sp
    ld b, $fd
    dec b
    cp $02
    rst $38
    ld bc, $e788
    inc de
    db $fc
    inc bc
    rst $38
    nop
    add hl, de
    and $e4

jr_051_40ad:
    ei
    ret nc

    rst $18
    db $ec
    cpl
    rst $38
    ccf
    rst $18
    rst $38
    rlca
    rst $38
    ld h, b
    rst $38
    ld b, e
    ldh a, [$9f]
    dec bc
    ld l, h
    rst $38
    rra
    di
    rra
    ld a, [c]
    rrca
    cp $1d
    db $fd
    ld h, b
    ldh [$ab], a
    nop
    jr nc, @+$07

    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    rra
    ld hl, sp+$08
    ld e, c
    xor c
    dec bc
    ei
    dec c
    rst $38
    sub h
    rst $30
    call nc, $cc77
    ld a, a
    db $e3
    ccf
    ldh [$3f], a
    ldh a, [$1f]
    ld a, b
    adc a
    ld a, [hl]
    add a
    ccf
    pop bc
    rra
    ldh [$87], a
    ld hl, sp+$43
    db $fc
    add l
    nop
    add [hl]
    dec b
    rra
    rst $38
    rra
    ld hl, sp-$71
    ld a, d
    ld b, e
    rrca
    ld a, [$0704]
    db $fc
    inc bc
    rst $38
    ret nz

    add h
    sub c
    rrca
    ld a, $fe
    inc e
    db $fc
    db $ec
    db $ec
    cp $12
    sbc [hl]
    ld a, [bc]
    sbc h
    inc c
    ldh a, [rNR10]
    ldh [$e0], a
    ld [hl], l
    add e
    jp hl


    add e
    db $eb
    ld a, [de]
    ldh [rNR41], a
    ld [hl], b
    sub b
    ccf
    rst $08
    rlca
    ld hl, sp-$7f
    cp $70
    rst $38
    inc e
    rst $38
    ld b, $ff
    add e
    rst $38
    jp $c17f


    ld a, a
    pop hl
    ccf
    ld d, b
    cp a
    nop
    call nz, $13cb
    ldh a, [rIE]
    jr c, @+$41

    jr nc, jr_051_4187

    jr nz, jr_051_4189

    ld b, b
    ld a, a
    sub b
    rst $38
    rra
    rst $38
    rrca
    rst $38
    db $fc
    cp $e0
    ldh a, [$ec]
    ld sp, $01c3
    dec e
    ldh [rNR50], a
    ld hl, sp+$18
    inc a
    call nz, $e41c
    ld c, $f2
    adc [hl]
    ld a, [c]
    sbc [hl]
    ld [c], a
    ld e, $e2
    inc a
    call nz, $ec1c
    inc b
    db $fc
    inc c
    db $fc
    jr @-$06

    ld [hl], b
    ldh a, [$e0]
    and b
    ret nz

    sub b
    ld h, b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    or [hl]
    nop
    ld sp, $0189

jr_051_4187:
    ld d, b
    inc bc

jr_051_4189:
    add hl, de
    ld hl, sp-$77
    ld a, b
    ld b, e
    add hl, bc
    ld hl, sp+$00
    inc b
    adc h
    ld bc, $8a63
    ld bc, $09b0
    ld a, a
    ld hl, sp-$41
    ldh a, [$bf]
    ldh [$bf], a
    ret nz

    ld a, a
    and b
    ld b, e
    rst $38
    ccf
    inc b
    pop hl
    inc e
    ld a, [c]
    db $ec
    db $fc
    ld h, c
    adc l
    rst $28
    ld [bc], a
    or b
    sub b
    and b
    adc b
    rst $28
    adc a
    rst $18
    inc bc
    dec de
    ld hl, sp-$75
    ld a, c
    ld b, e
    dec bc
    ld sp, hl
    nop
    rlca
    sub a
    rst $18
    inc bc
    rst $38
    cp b
    ccf
    or b
    add e
    ld bc, $9abf
    rst $18
    inc bc
    ldh a, [$a0]
    and b
    or b
    sub a
    rst $18
    inc bc
    jr @+$01

    adc b
    ld a, a
    ld b, e
    ld [$01ff], sp
    inc b
    rst $38
    sub a
    rst $18
    rlca
    jr c, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    adc c
    ld bc, $8fc4
    rst $18
    inc bc
    and b
    ldh [$80], a
    ldh a, [$8d]
    rst $18
    rst $38
    ld l, a
    ld [bc], a
    ld bc, $0201
    ld b, h
    inc bc
    ld bc, $0202
    ld [bc], a
    nop
    inc h
    inc b
    ld de, $0909
    ld [$0708], sp
    rlca
    db $10
    add hl, de
    cpl
    jr c, jr_051_4250

    inc a
    rra
    db $10
    rrca
    ld [$0707], sp
    inc hl
    ld bc, $0243
    inc bc
    pop de
    xor b
    dec bc
    inc bc
    inc bc
    dec b
    inc b
    dec bc
    ld [$0c0b], sp
    rlca
    ld b, $01
    ld bc, $2375
    add b
    ldh [$2c], a
    ret c

    ret c

    ld [c], a
    and $87
    add c
    inc bc
    nop
    ccf
    inc e
    ccf
    inc a
    ld a, $39
    dec a
    inc bc
    ld [hl], a
    rrca
    call c, $e53c
    db $e4
    or e
    ld [hl], c
    rst $28
    rra
    cp $01
    cp a
    ld [hl], b
    ld a, a

jr_051_4250:
    ld a, h
    rst $00
    db $fc
    adc [hl]
    ld sp, hl
    adc a
    ld sp, hl
    rst $18
    db $d3
    rst $38
    rrca
    push af
    rst $30
    ld c, $22
    rrca
    dec d
    dec de
    rra
    rla
    rra
    dec hl
    ccf
    ld [hl], a
    ld a, a
    adc a
    adc a
    rst $08
    add e
    rst $38
    ld h, c
    rst $38
    inc de
    ld a, l
    sub l
    ld a, e
    sbc d
    db $e3
    ld [c], a
    sub a
    pop hl
    ld [$0808], sp
    ld d, $1e
    ld h, d
    ld a, [hl]
    adc h
    db $fc
    cp h
    inc h
    db $fc
    ld bc, $fcf8
    inc hl
    ld hl, sp+$01
    ei
    rst $38
    inc hl
    db $fc
    ld [bc], a
    cp $fe
    rst $38
    ld b, e
    rst $38
    ld a, a
    ld h, $ff
    ldh [rNR44], a
    rst $30
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    sbc l
    rst $38
    ld a, [$d5ff]
    rst $38
    sbc e
    rst $18
    inc sp
    cp a
    ld l, a
    ld l, a
    add e
    add e
    add a
    ret nz

    rst $28
    ldh a, [$3f]
    inc c
    rst $38
    ld [bc], a
    ld a, a
    add e
    xor $92
    ld a, h
    ld a, h
    db $ec
    daa
    rlca
    ld b, $0e
    pop bc
    pop de
    jr c, jr_051_42ff

    inc e
    inc e
    inc hl
    ld c, $01
    adc [hl]
    add a
    ld b, e
    rst $38
    rst $00
    inc bc
    cp a
    rst $08
    rst $38
    sbc a
    daa
    rst $38
    dec c
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ret z

    rst $08
    add $c7
    add c
    pop bc
    add c
    add c
    add b
    add b
    ld b, e
    pop bc
    ld b, c
    ld bc, $8080
    db $ec
    dec hl
    inc hl
    ld bc, $820b
    add e
    ld h, d
    ld h, e
    inc [hl]
    scf
    jr nc, @+$41

    add hl, sp
    rra
    ccf
    rra
    ld b, h

jr_051_42ff:
    rst $38
    ccf
    nop
    rst $38
    push bc

Call_051_4304:
    nop
    db $ed
    add hl, de
    db $ec
    db $fc
    sub $fe
    xor [hl]
    cp $86
    cp $4f
    db $fd
    cp a
    cp c
    adc a
    add c
    jp nz, $8342

    cp l
    rlca
    ld bc, $4a8e
    cp [hl]
    jp z, Jump_051_7c7c

    db $f4
    cpl
    pop hl
    ld bc, $8000
    dec h
    ret nz

    ld bc, $c080
    ld hl, sp+$2f
    adc d
    add h
    ld bc, $00a1
    ld bc, $0223
    dec bc
    ld bc, $0401
    ld b, $0b
    ld c, $0f
    rrca
    rlca
    inc b
    inc bc
    ld [bc], a

Jump_051_4343:
    xor l
    push bc
    dec c
    ld b, b
    ld b, b
    and b
    ldh [$b6], a
    or $78
    ld sp, hl
    ld h, c
    ldh [$80], a
    add b
    rrca
    rlca
    jp $a100


    rla
    ld c, a
    ld b, b
    dec e
    inc bc
    rst $30
    rst $08
    add hl, sp
    ld a, c
    db $ec
    inc e
    ei
    rlca
    rst $38
    nop
    rst $28
    inc e
    db $d3
    sbc $2f
    ldh a, [$df]
    db $e3
    ccf
    ccf
    xor c
    xor a
    dec d
    jr jr_051_4394

    and e
    cp a
    rst $28
    ld a, a
    rst $38
    ccf
    cp $3f
    db $fd
    ccf
    cp h
    ld a, [hl]
    ld a, [hl]
    cp $fe
    rst $38
    ccf
    ccf
    ld a, a
    ccf
    add e
    nop
    rst $28
    ld bc, $7fbf
    ld b, e
    rst $18
    ccf
    nop
    cp a

jr_051_4394:
    add h
    nop
    ldh a, [$8c]
    ld bc, $66fc
    dec bc
    jr jr_051_43da

    add e
    jp $3030


    inc e
    jr jr_051_43b3

    inc c
    ld c, $0e
    add h
    call z, $030d
    dec b
    rlca
    add l
    rst $00
    jp hl


    ld l, a
    ld [hl], e

jr_051_43b3:
    ccf
    ld a, e
    rra
    ld a, l
    rra
    db $fd
    jp $83c5


    ld bc, $83b9
    ld bc, $00bb
    db $fc
    xor l
    ld [bc], a
    ld a, [hl-]
    dec b
    add b
    add b
    rlca
    rlca
    inc b
    rlca
    rlc b
    ld c, l
    rrca
    ld c, a
    ld a, b
    cp [hl]
    pop bc
    ld [hl], a
    adc a
    rst $28
    rst $38
    rlca

jr_051_43da:
    rrca
    rlca
    rlca
    dec b
    rlca
    ld c, $0f
    add h

jr_051_43e2:
    nop
    add b
    inc b
    ccf
    ldh [rIE], a
    or c
    ld a, a
    add l
    nop
    adc d
    rst $38
    ld h, e
    dec e
    ld b, $0f
    rra

Call_051_43f3:
    db $10
    rlca
    jr c, jr_051_441c

    ccf
    add hl, hl
    ccf
    dec e
    rra
    dec bc
    rrca
    db $10
    rra
    dec de
    dec d
    dec d
    dec hl
    ccf
    ld hl, $203f
    rra
    db $10
    rrca

jr_051_440b:
    inc c
    inc bc
    inc bc
    ld h, c
    dec de
    inc bc
    rlca
    nop
    ld [$0a0d], sp
    ld a, [bc]
    dec d
    inc d
    dec de
    add hl, de
    ccf

jr_051_441c:
    dec a
    daa
    dec sp
    ld b, a

jr_051_4420:
    ld [hl], c
    ld c, a
    ld hl, $183f
    rra
    inc b
    rlca
    inc bc

jr_051_4429:
    ld [bc], a
    ld bc, $7501
    ldh [$3b], a
    add b
    ret nz

    ret nz

    jr nz, jr_051_4420

    ld l, $29
    jp hl


    inc l
    db $ec
    sub $d6
    sub d
    sub a
    db $10
    inc d
    db $10
    jr jr_051_43e2

    or b
    add sp, $78
    add $26
    pop bc
    add hl, hl
    and d
    ld c, d
    xor c
    rst $00
    ld h, d
    ld b, d
    ld [c], a
    jp $2123


    rl b
    rst $30
    add sp, -$09
    jr jr_051_4429

    jr c, jr_051_440b

    ld e, b
    rla
    ld hl, sp+$27
    db $e4
    ld b, e
    jp Jump_051_61a0


    ld d, b
    or b
    sub b
    ld [hl], b
    ldh [$e0], a
    ld a, d
    ld b, $04
    xor d
    xor d
    ld d, e
    db $d3
    nop
    ld [de], a
    and [hl]
    db $e3
    db $10
    add hl, bc
    ld [bc], a
    ld [de], a
    inc b
    inc d
    db $ec
    db $ec
    inc a
    dec de
    add a
    ld a, h
    and a
    db $fc
    rrca
    ld hl, sp-$01
    ldh a, [rOBP1]
    rst $38
    nop
    dec bc
    cp $01
    rst $28
    ld de, $7ba7
    ld c, b
    call z, $0101
    ld [bc], a
    rlca
    ld b, e
    ld [$010f], sp
    inc b
    rlca
    add a
    nop
    ld a, $1b
    inc c
    inc e
    ccf
    inc hl
    ccf
    ld b, b
    ld e, e
    ld h, [hl]
    ld b, c
    ld a, a
    ld hl, $333f
    ccf
    rst $18
    rst $08
    dec de
    ld a, [hl+]
    dec sp
    ld l, d
    ld a, d
    ld l, e
    ld a, c
    add hl, bc
    inc [hl]
    inc c
    db $fc
    add h
    ld b, e
    ld a, $42
    dec b
    ld a, [hl]
    add c
    ei
    rlca
    rst $30
    add hl, bc
    ld b, e
    rst $28
    db $10
    inc bc
    rst $38
    ld b, $ff
    ld bc, $fe43
    ld [bc], a
    add hl, bc
    sbc h
    ld h, h
    ld l, a
    sbc a
    call nc, $ac2f
    ld d, a
    rst $10
    xor a
    and l

Call_051_44df:
    nop
    ld [hl], $0d
    ld a, h
    db $fc
    rlca
    ei
    ld [hl], e
    cp h
    dec sp
    call z, $cbbb
    ld c, b
    ld a, b
    jr nc, jr_051_4520

    add h
    nop
    ld d, d
    ld [bc], a
    add b
    ld b, b
    ret nz

    ld b, e
    jr nz, @-$1e

    inc de
    ldh a, [$f0]
    inc c
    db $fc
    ld [c], a
    ld e, $fd
    ld c, e
    ld a, l
    set 1, c

jr_051_4506:
    rst $38
    db $76
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld [hl+], a
    ld a, $36
    ld a, [hl+]
    jp $0980


    cp $c2
    cp $02
    db $fc
    inc b
    db $fc
    inc e
    db $fc
    db $e4
    ld b, e
    ld a, b
    ld c, b
    rlca

jr_051_4520:
    or b
    ret nc

    ld d, b
    or b
    jr nz, jr_051_4506

    ret nz

    ret nz

    adc h
    nop
    ld c, d
    nop
    add b
    and a
    nop
    add sp, $0b
    and c
    ld c, e
    xor d
    add $65
    ld b, l
    rst $20
    call nz, $2322
    rl c
    add e
    nop
    ld a, h
    dec bc
    db $ec
    db $ec
    sbc h
    inc sp
    rst $08

jr_051_4546:
    ld a, b
    rrca
    ld hl, sp+$37
    ld hl, sp-$21
    ldh [rSCX], a
    rst $38
    nop
    ld bc, $0303
    xor a
    nop
    ld c, b
    ld [bc], a
    inc b
    inc b
    ld bc, $0844
    dec bc
    dec d
    ld c, $09
    dec b
    ld b, $02
    inc bc
    ld bc, $0701
    inc c
    ccf
    ld [hl], b
    or $89
    sbc b
    rst $30
    ld [hl], c
    ld l, a
    ld [hl+], a
    ld a, $1c
    inc e
    add l
    nop
    ld [hl], b
    dec e
    ld h, d
    ld b, e
    ld h, e
    ld b, c
    ld l, e
    ld b, b
    ld d, a
    ld h, b
    cp e
    ret nz

    rst $28
    db $10
    rst $18
    jr nz, jr_051_4546

    ld d, b
    ld l, a
    ld hl, sp-$79
    adc h
    add e
    add e
    ld h, b
    ldh [$b0], a
    ld [hl], b
    adc b
    ld hl, sp+$08
    ld hl, sp-$5d
    nop
    db $e4
    ld bc, $c040
    add l
    ld bc, $1588
    jp c, $7c3e

    add $f3
    rrca
    and $3d
    call z, $5c7b
    db $eb
    cp c
    rst $00
    ldh [$9f], a
    pop bc
    cp a
    ld b, [hl]
    ld a, [hl]
    jr c, jr_051_45ee

    ld l, c
    add e
    ld bc, $0370
    ret nc

    or b
    ldh [$e0], a
    ld b, e
    sub b
    ldh a, [$03]
    db $10
    ldh a, [$60]
    ldh [$83], a
    nop
    ld h, b
    nop
    ld [de], a
    add h
    nop
    ld h, l
    dec b
    ret nc

    ld h, b
    pop hl
    nop
    ret nc

    ld hl, $0089
    or b
    dec b
    stop
    jr nz, jr_051_45de

jr_051_45de:
    ld [bc], a
    ld hl, $7eff
    inc hl
    ld bc, $81d5
    db $10
    ld b, $05
    add hl, bc
    rrca
    ld [$3d1f], sp

jr_051_45ee:
    ld h, [hl]
    ld b, [hl]
    ld a, e
    ld b, d
    ccf
    jr nz, jr_051_4614

    ld de, $0e0e
    adc b
    or d
    ld [$0403], sp
    inc c
    inc de
    inc de
    inc l
    inc l
    jr @+$5a

    inc hl
    ld d, b
    add hl, bc
    add hl, sp
    dec hl
    ccf
    inc h
    jr jr_051_463d

    jr nz, jr_051_466f

    ld h, b
    ld b, b
    inc hl
    ret nz

    dec de

jr_051_4614:
    ld b, b
    ret nz

    nop
    add b
    nop
    ld bc, $0383
    add [hl]
    add [hl]
    and $a6
    ld [hl], e
    ld b, e
    jr c, jr_051_4655

    rrca
    inc c
    jr jr_051_4638

    jr nz, jr_051_464c

    ld b, d
    ld c, l
    ld b, a
    ld a, c
    cp a
    pop bc
    ld b, h
    rst $38
    add b
    ld [$ffc0], sp
    nop
    rst $38

jr_051_4638:
    ldh [$9f], a
    sbc b
    add a
    add a

jr_051_463d:
    ld l, c
    add hl, bc
    ret nz

    ret nz

    jr nc, jr_051_46b3

    ret z

    ld hl, sp+$34
    inc a
    inc c
    inc c
    add e
    nop

jr_051_464b:
    dec e

jr_051_464c:
    inc c
    add [hl]
    add $f9
    add hl, sp
    rla
    rla
    inc d
    inc d

jr_051_4655:
    jr c, jr_051_467f

    ld e, $28
    jr jr_051_46bf

    ldh [rNR44], a
    ldh [$f0], a
    jr c, jr_051_46d9

    ld e, b
    call c, $f91b

jr_051_4665:
    inc [hl]
    ld a, [hl-]
    rst $20
    db $f4
    rst $38
    rra
    ld [hl], b
    ld h, b
    jr nz, jr_051_46ab

jr_051_466f:
    db $10
    inc de
    adc b
    ld [$8446], sp
    jp nz, $a183

    pop bc
    ldh a, [$c0]
    ld hl, sp+$60
    rst $18
    ld e, b

jr_051_467f:
    add a
    add a
    ld [hl], a
    ldh [rNR50], a

Call_051_4684:
    ldh [$e0], a
    inc e
    inc e
    ld [c], a
    cp $1c
    sbc h
    add b
    ret nz

    ld h, b
    ld h, b
    jr c, jr_051_46aa

    ld c, $07
    rla
    ld b, b
    dec l
    jr @+$19

    add e
    dec hl
    ld b, b
    scf
    jr nc, jr_051_464b

    rrca
    rst $18
    jp $3cfc


    ret nz

    ret nz

    nop
    ld b, b
    nop
    and e

jr_051_46aa:
    nop

jr_051_46ab:
    dec h
    db $10
    ret nz

    nop
    jr nz, jr_051_46b1

jr_051_46b1:
    ret nz

    add b

jr_051_46b3:
    add b
    ldh a, [$78]
    db $fc
    inc c
    db $fc
    inc [hl]
    ld hl, sp-$68
    ld [hl], b
    ld [hl], b
    db $ec

jr_051_46bf:
    inc hl
    rrca
    ld [bc], a
    rlca
    rst $30
    ld sp, hl
    cp $02
    call c, $f8e4
    ld [$30f0], sp
    ld b, b
    ldh [$80], a
    add b
    db $ec
    daa
    rlca
    inc bc
    inc bc
    inc c
    inc c
    inc de

jr_051_46d9:
    inc de
    inc b
    inc h
    inc hl
    jr z, jr_051_4665

    nop

Jump_051_46e0:
    ld a, [$3c04]
    ld [c], a
    cp $1c
    inc e
    ld h, e
    add hl, bc
    add c
    pop bc
    cp $3e
    add hl, bc
    add hl, bc
    ld [de], a
    ld [de], a
    inc [hl]
    inc h
    add l
    nop
    cp d
    dec bc
    ld [hl], a
    ld h, b
    jr nz, jr_051_4733

    db $10
    db $10
    adc c
    ld c, $44
    add h
    jp nz, $8482

    nop
    call c, $24e0
    ld hl, sp+$06
    ld a, $f9
    rst $38
    add [hl]
    add $60
    ld h, b
    jr nc, jr_051_4723

    ld [$1408], sp
    ld b, h
    ld l, $12
    rra
    adc c
    cpl
    ld b, h
    ld [hl], $33
    xor e
    inc c
    sbc $c7

jr_051_4723:
    rst $38
    ld sp, $fefe
    nop
    ldh [rP1], a
    stop
    ld h, b
    and a
    nop
    add hl, de
    ld bc, $78f0

jr_051_4733:
    add l
    add a
    rlca
    ret nz

    ld h, b
    ret nc

    jr nc, jr_051_4733

    ld [$f0f0], sp
    ld h, c
    ld [$6070], sp
    inc h
    jr nz, jr_051_4755

    ld [de], a
    adc b
    add hl, bc
    ld b, h
    add l
    nop
    reti


    ret


    nop
    and d
    ld [bc], a
    add b
    nop
    ld b, b
    add a
    xor a

jr_051_4755:
    dec b
    rlca
    rlca
    jr jr_051_4772

    daa
    daa
    add l
    nop
    ld e, d
    add [hl]
    nop
    ld [hl], b
    nop
    add a
    add a
    nop
    ld a, b
    add a
    nop
    sbc h
    dec b
    inc a
    db $fc
    jp nz, $3cfe

    inc a
    ld h, c

jr_051_4772:
    dec b
    add a
    rst $00
    ld hl, sp+$38
    inc de
    inc de
    adc [hl]
    nop
    or [hl]
    inc bc
    jr c, jr_051_4797

    inc e
    ei
    add [hl]
    nop
    ret


    ld h, c
    dec de
    db $fc
    db $fc
    ld [bc], a
    ld a, $fc
    db $fc
    inc bc
    inc bc
    ld hl, $0b00
    ld bc, $4017
    cpl
    ld e, $17

jr_051_4797:
    add b
    dec hl
    ld b, b
    scf
    ld sp, $0eae
    ret nc

    ret nc

    ldh [$e0], a
    ret


    di
    dec c
    add b
    ret nz

    ldh [$30], a
    ld hl, sp-$74
    cp $62
    cp $11
    rst $38
    adc a
    ldh a, [rSVBK]
    adc c
    ld bc, $896a
    ld bc, $05d0
    jr c, @+$1a

    rrca
    rlca
    rla
    ld b, b
    adc h
    nop
    dec l
    ld [bc], a
    rlca
    rst $38
    ld sp, hl
    add e
    rst $38
    adc l
    nop
    or h
    add l
    rst $28
    add a
    xor a
    rst $38
    ld a, l
    db $10
    jr jr_051_47d5

jr_051_47d5:
    inc a
    nop
    ld a, [hl-]
    nop
    ccf
    nop
    rla
    nop
    rra
    nop
    ld c, $00
    rlca
    nop
    inc bc
    ld a, h
    dec b
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $31ec
    dec bc
    inc bc
    inc bc
    dec b
    inc b
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    dec b
    ld b, $07
    inc b
    ld b, e
    rrca
    add hl, bc
    ld bc, $0506
    jp $1786


    dec c
    ld a, [bc]
    rrca
    ld [$08cf], sp
    rra
    db $10
    ld e, $11
    ld [$040f], sp
    rla
    ld b, $17
    rlca
    rla
    inc de
    inc de
    ld [de], a
    ld [de], a
    db $10
    db $10
    ld [hl+], a
    ld [$0910], sp
    ld a, [bc]
    ld c, $09
    add hl, de
    daa
    ld h, a
    dec bc
    sbc a
    ld [hl], l
    ld a, a
    xor e
    rst $38
    ld d, [hl]
    ld a, [hl]
    add hl, sp
    add hl, sp
    add a
    rst $38
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101
    db $dd
    nop
    ld c, l
    ldh [$35], a
    ld h, b
    ld h, b
    or b
    sub b
    db $f4
    call nc, Call_051_4afa
    or [hl]
    ld c, d
    db $ec
    inc d
    db $fc
    call nz, $28b8
    or b
    ld de, $92f2
    db $e4
    inc h
    push bc
    ld b, [hl]
    add [hl]
    add l
    add [hl]
    add h
    adc b
    adc d
    adc d
    adc b
    ld d, d
    pop de
    or a
    or c
    adc l
    adc d
    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    rlca
    rlca
    dec de
    rra
    ld h, a
    ld a, a
    sbc a
    rst $38
    ld a, a
    ld a, a
    inc hl
    cp $11
    ld a, [$c9fa]
    ret


    add hl, bc
    adc c
    db $10
    db $10
    inc hl
    inc hl
    call $31cf
    ld a, $c6
    ld sp, hl
    adc b
    ld [hl], a
    ld b, l
    db $10
    rst $28
    rlca
    sub b
    ld l, a
    adc b
    rst $30
    ld [hl], l
    ld a, e
    rrca
    rrca
    pop de
    nop
    ld h, c
    ld [bc], a
    ld bc, $0100
    call z, $e081
    ld a, $0c
    ld e, $61
    ld h, c
    add b
    adc [hl]
    nop
    ld sp, $22d0
    cp h
    ld b, d
    ld a, $c1
    sbc c
    and [hl]
    rla
    jr z, jr_051_48e3

    ld c, $f8
    nop
    ld sp, hl
    ld bc, $e4b8
    inc e
    sub e
    rla
    sbc b
    dec de
    inc d
    dec sp
    inc h
    rst $30
    jp hl


    rst $18
    rst $38
    ld e, c
    ld a, a
    ld e, d
    ld a, a
    ld d, d
    ld a, a
    ld [hl], d
    ld a, a
    db $fd
    rst $08
    db $fd
    ld h, a
    rst $38
    rlca
    sbc l
    ld [c], a
    rst $38
    ret nz

    rst $28
    inc de
    call c, $f8e7
    sbc a
    ld h, h

jr_051_48de:
    ld b, h
    rst $38
    ld [$1001], sp

jr_051_48e3:
    rst $38
    ld b, e
    jr jr_051_48de

    dec b
    db $fc
    ei
    db $fc
    rst $38
    inc bc
    ld [bc], a
    add l
    nop
    call nc, Call_051_780a
    nop
    db $fc
    nop
    db $f4
    nop
    cp h
    nop
    db $ec
    nop

Call_051_48fc:
    ld hl, sp-$5d
    nop
    dec hl
    xor b
    pop af
    ldh [$35], a
    jr jr_051_4942

    ld [bc], a
    ld b, d
    pop bc
    call Call_051_7030
    ld [$0489], sp
    inc c
    ld [bc], a
    ld [de], a
    add d
    inc hl
    add b
    ld b, l
    pop hl
    dec b
    pop af
    add hl, bc
    ld de, $31e9
    ld b, c
    jr nz, jr_051_4962

    ld h, d
    sbc d
    db $fc
    inc b
    cp h
    ld b, h
    ld hl, sp+$4c
    cp [hl]
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $08
    adc a
    adc a
    add a
    add a
    add h
    add h
    ld [bc], a
    ld [de], a
    add b
    ld [c], a
    pop bc
    ld b, c
    ld b, h
    ret nz

    jr nz, jr_051_4981

    ldh [rLCDC], a
    ld [bc], a
    ret nz

jr_051_4942:
    ld b, b
    ret nz

    ld b, e
    ld h, b
    and b
    dec c
    sub c
    ld a, c
    adc [hl]
    ld a, a
    ld b, b

jr_051_494d:
    cp a
    ld b, c
    cp a
    ld [hl-], a
    adc $19
    ld sp, hl
    ldh [$e0], a
    ld hl, sp+$22
    nop
    ld [hl], e
    inc bc

jr_051_495b:
    add b
    add e
    add b
    add d
    ld b, e
    add b
    rlca

jr_051_4962:
    rlca
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    db $10
    xor a
    sbc a
    rla
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$3a
    ld a, [hl]
    ld [$040f], sp
    rlca
    nop
    dec b
    ld [bc], a
    add e
    add d
    add d

jr_051_4981:
    add b
    add d
    ld bc, $4141
    ld b, e
    ld b, c
    ld b, b
    inc c
    ld b, b
    add b
    add b
    ld h, b
    ld h, b
    add b
    sub b
    adc b
    adc b
    ld [$10c8], sp
    db $10
    ldh a, [rNR44]
    db $ed
    ld h, c
    nop
    ldh [$a4], a
    push hl
    ld [bc], a
    ret c

    nop
    ld a, b
    jp $be85


    nop
    ld d, b
    inc de
    add b
    ret nz

    jr nz, jr_051_494d

    db $10
    ret nc

    db $10
    ldh a, [$08]
    add sp, $04
    ld [hl], h
    ld [$1078], sp
    ld [hl], b
    jr nz, jr_051_495b

    ret nz

    ret nz

    adc l
    or d
    rst $38
    ld l, d
    ld [$0301], sp
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ld h, c
    ld b, $07
    rlca
    ld [$130f], sp
    rra
    rla
    ld [hl+], a
    rra
    add e
    sub d
    ld bc, $0803
    jp $0d8c


    inc bc
    inc bc
    ld b, $07
    dec bc
    inc e
    rlca
    jr nz, jr_051_4a26

    inc hl
    rra
    rra
    nop
    ld bc, $0061
    ld bc, $af83
    ld [bc], a
    ld [bc], a
    ld bc, $7501
    ld [$7c3c], sp
    di
    adc a
    ldh a, [rIF]
    ld hl, sp+$3f
    cp $22
    rst $38
    dec c
    ld a, a
    rst $38
    cp b
    ld hl, sp+$73
    di
    rst $30
    rst $30
    db $f4
    rst $38
    ret nz

    rst $38
    ld bc, $44ff
    rst $38
    rlca
    ldh [rNR41], a
    ld a, a
    xor a
    rst $38
    push de
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    sbc h
    ld a, a
    ld hl, sp-$01
    di
    db $fc
    rst $38

jr_051_4a26:
    ldh [$bf], a
    pop hl
    rra
    rst $38
    ccf
    rst $38
    or $7f
    and d
    cp a
    inc h
    ccf
    inc e
    rra
    ld [bc], a
    inc bc
    adc h
    rst $10
    add hl, de
    ld [$1414], sp
    inc e
    inc d
    ld a, [hl+]
    ld [hl], $a2
    cp [hl]
    ld e, l
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    sbc h
    rst $38
    ld b, c
    ld a, a
    ld [hl+], a
    ld a, $be
    rst $38
    nop
    rst $38
    ld b, c
    ld b, l
    rst $38
    add b
    ld b, $7f
    ld [hl+], a
    pop bc
    ld a, a
    nop
    rst $38
    nop
    add d
    jp hl


    ld b, h
    rst $38
    nop
    nop
    db $dd
    ld b, e
    ld a, $ff
    ld [hl+], a
    rst $38
    nop
    add b
    ld b, h
    rst $38
    nop
    jp $05af


    ld b, c
    rst $38
    and d
    cp [hl]
    inc e
    inc e
    ld l, e
    ld [$1f1e], sp
    ld [hl], a
    ld l, b
    xor a
    ret nc

    ld e, a
    xor [hl]
    ccf
    call nz, Call_051_6500
    ld b, $0e
    rrca
    ld h, a
    ld h, a
    rst $30
    rst $30
    rla
    call nz, Call_051_7100
    nop
    rst $38
    ld b, e
    ldh a, [$7f]
    ld [de], a

jr_051_4a98:
    rst $38
    ld a, [$d57f]
    ld a, a
    xor b
    rst $38
    ld d, b
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    rst $20
    rra
    rst $38
    inc bc
    cp $c3
    and e
    xor c
    dec bc
    scf
    rst $38
    ld [hl+], a
    cp $12
    cp $1c
    db $fc
    jr nz, jr_051_4a98

    ret nz

    ret nz

    ld l, a
    ld [de], a
    add b
    ret nz

    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$90]
    ldh [$e0], a
    nop

jr_051_4ac7:
    add b
    ldh a, [$f0]
    ld [$e4f8], sp
    db $fc
    db $f4
    ld [hl+], a
    db $fc
    inc bc
    jr nz, @-$1e

    sub b
    ld [hl], b
    ld b, e
    ld hl, sp+$08
    add hl, de
    ldh a, [$f0]
    ldh [$e0], a
    or b
    ldh a, [$6c]
    sbc h
    cp $02
    cp $e2
    db $fc
    db $fc
    add b
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ld h, b
    and b
    ldh [rNR41], a
    ret nz

    ret nz

    ld [hl], a
    add h
    nop
    ld a, [hl-]
    inc b
    inc b

Call_051_4afa:
    ld [bc], a
    inc bc
    dec b
    ld b, $8b
    nop
    inc h
    add $00
    pop af
    ld [$723c], sp
    adc $f1
    rrca
    ret c

    ccf
    cp h
    ld a, a
    add l
    nop
    or b
    inc b
    pop bc
    rst $38
    db $e3
    rst $38
    ld a, $86
    nop

jr_051_4b19:
    cp e
    nop
    ld b, c
    add l
    nop
    call c, $ff24
    ld bc, $ff55

jr_051_4b24:
    add [hl]
    xor a
    ld [$331e], sp
    dec l
    ld l, e
    ld d, h
    db $dd
    xor [hl]
    ld a, $df
    xor e
    nop
    ld [bc], a
    add e
    ld bc, $054c
    jr nz, jr_051_4b19

    ret nc

    jr nc, jr_051_4b24

    jr jr_051_4ac7

    ld bc, $8366
    nop
    db $10
    inc c
    inc c
    rrca
    db $10
    rra
    inc hl
    ccf
    daa
    ccf
    dec e
    dec e
    inc bc
    inc bc
    cp $24
    rst $38
    add hl, de
    ld hl, sp-$08
    di
    di
    or $f7
    db $e3
    db $fc
    sbc h
    db $e3
    ld a, a
    add e
    rst $38
    rrca
    rst $38
    ccf
    db $fd
    rst $38
    db $eb
    rst $38
    push de
    rst $38
    add d
    rst $38
    dec b
    rst $38
    add l
    ld bc, $1100
    adc a
    adc a
    rst $20
    rst $20
    scf
    rst $30
    ld h, e
    sbc a
    inc e
    db $e3
    rst $38
    ldh [$7f], a
    ld hl, sp-$01
    ld a, [hl]
    rst $18
    ld a, a
    add e

Jump_051_4b85:
    sbc a
    inc bc
    and b
    rst $38

jr_051_4b89:
    ld d, b
    rst $38
    add e
    ld bc, $0b50
    jr jr_051_4b89

    add h
    db $fc
    ld [c], a
    cp $f2
    cp $dc
    call c, $e0e0
    add l
    nop
    ld h, b
    nop
    cp a
    add h
    or l
    ld [bc], a
    db $f4
    rst $38
    ret nz

    add [hl]
    cp a
    add l
    push hl
    add e
    ld bc, $ff0c
    ld h, e
    rra
    rrca
    rrca
    inc e
    inc sp
    ld e, $41
    ld a, b
    ld b, a
    ldh [$9f], a
    sbc h
    rst $38
    xor [hl]
    rst $28
    ld b, a
    ld b, a
    inc de
    inc de
    dec hl
    dec hl
    dec sp
    dec hl
    daa
    ccf
    ld de, $101f
    rra
    ld [$060f], sp
    rlca
    ld [hl+], a
    dec bc
    inc b
    add hl, bc
    inc bc
    inc b
    ld b, $07
    ld b, e
    rlca
    inc b
    ld a, [bc]

jr_051_4bdc:
    ld a, [bc]
    dec c
    inc c
    dec bc
    rlca
    ld b, $03
    inc bc
    ld [bc], a
    inc bc
    ld b, $45
    dec b
    rlca
    ld a, [bc]
    inc b
    rrca
    ld [$393f], sp
    ld a, a
    ld b, l
    ld a, a
    ld d, e
    inc l
    inc l
    ld l, c
    inc bc
    ld b, b
    ret nz

    jr nz, jr_051_4bdc

    ld b, e
    db $10
    ldh a, [rSCX]
    ld [$49f8], sp
    inc b
    db $fc
    ld bc, $fc84
    ld b, e
    adc b
    ld hl, sp+$01
    ld d, b
    ldh a, [rNR43]
    pop hl
    ldh [rNR50], a
    ld hl, $23e2
    ld b, h
    rst $00
    sbc b
    sbc a
    and h
    and a
    ld b, d
    ld b, e
    jp nc, $c2d3

    ld b, e
    inc h
    and a
    and b
    cp a
    ld h, b
    ccf
    ld a, b
    rra
    ccf
    rlca
    ldh a, [$80]
    rst $18
    ldh [$67], a
    cp b
    cp c
    db $76
    adc $cd
    inc bc
    inc bc
    ld h, a
    ld [hl+], a
    ld bc, $0202
    rlca
    inc b
    ld b, e
    inc b
    rlca
    ld bc, $0303
    add [hl]
    adc a
    ld [hl+], a
    ld bc, $31e0
    ld hl, $3061
    sub e
    jp nc, $d3b2

    or d
    sub e
    ld a, [c]
    inc de
    ld a, [c]

jr_051_4c56:
    rrca
    db $fc
    rra
    ld hl, sp+$6e
    pop af
    adc $3f
    ld de, $20f1
    ldh [rDIV], a
    call nz, $c040
    ld b, l
    push bc
    ld a, [de]
    ei
    ld c, $fb
    ccf
    pop af
    rst $08
    ret nc

    ld a, a
    nop
    ld hl, sp+$07

Call_051_4c74:
    rst $20
    jr jr_051_4c56

    jr nz, jr_051_4cb8

    ldh [$df], a
    rst $18
    ld h, l
    ld a, [de]
    ld [hl], b
    ld a, b
    and $82
    jp $0731


    ld hl, sp+$03
    db $fc
    pop hl
    cp $70
    ld a, a
    jr c, jr_051_4ccd

    sbc b
    sbc a
    ld e, b
    ld e, a
    ret c

    ld e, a
    jr c, @+$01

    jr @+$01

    adc h
    ld b, h
    rst $38
    add h
    ldh [$29], a
    jp nz, Jump_051_62ff

    rst $38
    ld e, c
    rst $18
    cpl
    rst $28
    rrca
    ei
    rrca
    ld hl, sp+$05
    cp $82
    rst $38
    add d
    cp $81
    rst $38
    ld bc, $37ff
    adc $5f
    cp b

jr_051_4cb8:
    xor a
    pop de
    or [hl]
    ld c, a
    db $fd
    dec sp
    ld a, c
    adc a

jr_051_4cc0:
    cp a
    ld b, c
    sbc $26
    ld hl, sp+$78
    add b
    add b
    ld l, e
    inc bc
    add b
    add b
    ld b, b

jr_051_4ccd:
    ret nz

    ld b, e
    and b
    ld h, b
    ld bc, $f010
    add e
    nop
    ld e, d
    ld c, c
    ld [$45f8], sp
    db $10
    ldh a, [rSB]
    jr nz, jr_051_4cc0

    ld b, e
    ldh [$a0], a
    ldh [rNR44], a
    add b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ldh a, [$30]
    add sp, $38
    ld hl, sp+$28
    add sp, -$08
    ret c

    ld l, b
    db $ec
    or h
    db $f4
    inc l
    db $ec
    inc [hl]
    db $f4
    inc e
    ld a, [$f296]
    cp [hl]
    cp a
    db $db
    rst $38
    add l
    ld a, [hl]
    db $76
    ld [$8308], sp
    nop
    db $10
    dec h
    inc bc
    dec c
    inc hl
    inc hl
    ld d, e
    ld d, e
    ld l, c
    ld e, e
    ld b, a
    ld a, a
    jr nz, jr_051_4d58

    db $10
    rra
    rrca
    rrca
    add a
    nop
    jr z, jr_051_4d26

    xor [hl]
    rst $28
    ld b, l
    ld b, a
    dec b

jr_051_4d26:
    rlca
    ld b, l
    add hl, bc
    rrca
    and e
    rst $10
    ld bc, $0704
    adc l
    nop
    ld [hl+], a
    xor b
    nop
    ld c, [hl]
    inc b
    ld [bc], a
    dec h
    ld h, l
    ld [hl], $95
    ld b, e
    call nc, $03b7
    sub d
    di
    inc de
    di
    adc c
    nop
    add $01
    jr c, @+$41

    ld c, c
    jr jr_051_4d6b

    inc b
    sbc h
    sbc a
    ld l, h
    rst $38
    inc e
    ld b, h
    rst $38
    ld [bc], a
    inc bc
    pop hl
    rst $38

jr_051_4d58:
    rra
    rst $38
    add l
    ld bc, $691a
    dec bc
    jr nz, jr_051_4dc2

jr_051_4d61:
    ld sp, $d292
    or d
    jr c, jr_051_4da6

    ld e, b
    ld a, a
    ld c, b
    ld a, a

jr_051_4d6b:
    ld b, e
    adc b
    rst $38
    ld c, $c8
    rst $38
    ld b, h
    rst $38
    db $e4
    ld a, a
    ld h, h
    rst $38
    ld d, d
    rst $18
    ld c, d
    rst $08
    ld b, l
    rst $00
    daa
    add [hl]
    ld bc, $0719
    ld a, d
    ld b, a
    ld [c], a
    rst $18
    jp nz, $2c7f

    cp a
    add a
    nop
    adc b
    rlca
    inc a
    db $e3
    jr nc, jr_051_4d61

    ld h, b
    rst $18
    ld b, l
    rst $38
    add a
    nop
    ret c

    rst $38
    ld a, e
    inc b
    jr @+$20

    inc bc
    inc hl
    nop

jr_051_4da1:
    ld c, b
    jr nz, jr_051_4da4

jr_051_4da4:
    nop
    db $10

jr_051_4da6:
    ld h, c
    ld b, h
    stop
    and a
    add a
    ld bc, $0004
    and [hl]
    sbc c
    ld b, h
    ld [bc], a
    nop
    nop
    ld bc, $4361
    ld bc, $0000
    ld bc, $3dec
    add hl, bc
    ret nz

    ldh [$38], a

jr_051_4dc2:
    db $fc
    ld b, $37
    ld bc, $000d
    inc bc
    ld hl, sp+$20
    xor c
    rst $00
    pop af
    inc c
    add h
    nop
    add h
    add b
    ld [$8800], sp
    nop
    ld c, b
    nop
    ld c, b
    ld bc, $2431
    ld bc, $30f0
    nop
    ld c, a
    rrca
    add b
    ret nz

    ld h, b
    ld [hl], b
    jr c, jr_051_4da1

    inc l
    ld l, [hl]
    inc bc
    inc de
    ld bc, $010d
    inc bc
    nop
    ld bc, $bcc7
    ld bc, $0202
    inc hl
    inc b
    dec b
    ld [bc], a
    inc bc
    ld bc, $00e1
    db $10
    add e
    nop
    inc [hl]
    add [hl]
    nop
    inc a
    and h
    adc e
    rrca
    ld a, b
    ld a, b
    add h
    call c, $fe02
    ld h, d
    cp $5a
    ld e, [hl]
    ld [hl-], a
    ld [hl-], a
    add h
    add h
    ld a, b
    ld a, b
    db $ec
    inc sp
    rra
    add b
    add b
    ret nz

    ldh [rSVBK], a
    ld [hl], b
    dec l
    cp l
    ld [bc], a
    ld c, [hl]
    call z, $33fe
    scf
    ld [c], a
    ld [$2b22], a
    ld hl, $1369
    sub a
    rrca
    cpl
    adc a
    set 7, [hl]
    ld a, [c]
    ld a, h
    ld b, h
    add hl, sp
    add hl, sp
    ret z

    ld bc, $841b
    ld bc, $c91b
    ld bc, $0121
    ld bc, $4301
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc bc
    adc b
    nop
    sub a
    ldh [$37], a
    inc bc
    inc bc
    inc c
    rrca
    rra
    rra
    jr nz, jr_051_4e88

    jr nz, jr_051_4e93

    ld b, b
    ld l, h
    ld b, b
    ld d, a
    ld b, a
    ld l, a
    ld e, a
    ld e, b
    ld d, a
    ld a, b
    dec sp
    inc l
    daa
    jr nz, jr_051_4e9d

    jr z, jr_051_4e73

    ld c, h
    ld b, a
    ld b, b

jr_051_4e73:
    rrca
    cpl
    rra
    jr nc, @+$11

    jr jr_051_4e81

    ld b, $09
    add hl, bc
    add hl, sp
    add hl, sp
    set 7, e

jr_051_4e81:
    inc hl
    ld a, [hl-]
    ld b, c
    ld a, l
    ld hl, $19fd

jr_051_4e88:
    dec e
    rlca
    rlca
    nop
    add h
    ld b, e
    ld bc, $e002
    add hl, hl
    add a

jr_051_4e93:
    add a
    rst $08
    rst $08
    cp a
    rst $38
    ret z

    rst $38

jr_051_4e9a:
    inc l
    db $fc
    cpl

jr_051_4e9d:
    rst $38
    jr z, jr_051_4e9a

    ldh a, [$f2]
    ret nz

    jp nz, Boot

    dec b
    nop
    dec bc
    nop
    rla
    inc bc
    ld a, $06
    inc a
    inc b
    db $fc
    inc a
    inc h
    db $fc
    call nz, $88fc
    ld a, b
    ld [$70f8], sp
    ld [hl], b
    and a
    nop
    jp nc, $f80a

    ld hl, sp+$06
    cp $01
    rst $38
    ldh a, [rIE]
    ld c, $ff
    ld bc, $3f43
    nop
    inc c
    rst $38
    ldh a, [rIE]

jr_051_4ed2:
    xor $1f
    or l
    ld a, e
    rrca
    add c
    add $49
    rst $00
    ld a, c
    ld b, e
    rst $38
    nop
    add hl, de
    rst $30
    ret z

    rst $30
    jr z, @+$01

    inc bc
    db $fc
    inc b
    jr jr_051_4ed2

    ld hl, sp+$08
    pop af
    scf
    call nz, $884c
    cp b
    adc a
    cp b
    sub b
    or b
    sbc h
    db $fc
    ld e, $02
    ld b, e
    rst $38
    ld bc, $7e11
    add d
    rst $38
    rst $38
    ret nz

    rst $18
    ld b, e
    rst $18
    ld b, h
    ld e, a
    call nz, Call_051_44df
    ld e, a
    inc h
    ccf
    rra
    rra
    add e
    nop
    adc e

jr_051_4f13:
    inc d
    pop bc
    ret nz

    ld b, b
    ld b, b
    ld b, c
    ld h, b
    nop
    jr nz, @+$23

    jr nz, @+$31

    daa
    add hl, de
    rra
    add hl, bc
    rrca
    ld c, $0f
    dec c
    dec bc
    ld b, $8a
    ld bc, $0dbb
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_051_4f13

    and b
    ldh [$50], a
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rSCX]
    ld [$05f8], sp
    ret z

    ld hl, sp-$18
    cp b
    ret nc

    jr nc, jr_051_4f89

    or b
    ld d, b
    nop
    ldh [$a2], a
    and a
    and l
    ld bc, $0aa2
    ld b, b
    ld b, b
    ret nz

jr_051_4f53:
    ret nz

    jr nz, jr_051_4fb6

    db $10
    jr nc, jr_051_4f69

    db $10
    adc b
    ld b, h
    ld [$0548], sp
    ld a, b
    jr jr_051_4fca

    jr c, @-$36

jr_051_4f64:
    ld hl, sp+$43
    db $10
    ldh a, [rP1]

jr_051_4f69:
    ldh a, [rOBP0]
    ldh a, [rNR10]
    ld b, $e0
    ldh [rNR41], a
    jr nz, jr_051_4f53

    jr nz, jr_051_4fd5

    ld c, c
    jr nz, @-$1e

    nop
    and b
    ld b, l
    ld b, b
    ret nz

    add e
    sub a
    ld bc, $c0c0
    rst $38
    ld l, [hl]
    dec bc
    ld bc, $0e0f
    inc de

jr_051_4f89:
    db $10
    rla
    db $10
    rrca
    jr jr_051_4f9a

    inc c
    dec c
    ld b, e
    rrca
    rlca
    dec b
    rlca
    inc bc
    ld b, $02
    ld [bc], a

jr_051_4f9a:
    inc bc
    ld [hl+], a
    ld [bc], a
    ld bc, $0200
    inc hl
    ld bc, $0001
    ld bc, $27ec
    ldh [$35], a
    ld bc, $0601
    ld b, $0c
    ld [$f0f8], sp
    ret nc

    jr nz, jr_051_4f64

    ld b, b
    and c

jr_051_4fb6:
    ld b, b
    ld [c], a
    and b
    push hl
    and b
    jp $d540


    ld b, b
    db $eb
    ld b, b
    ld e, a
    ld b, b
    cp a
    jr nz, jr_051_5045

    jr nz, @-$3f

    db $10
    ld a, a

jr_051_4fca:
    jr c, jr_051_504b

    ld a, [hl]
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, [hl]
    jp nz, $a4fe

    cp h

jr_051_4fd5:
    ld a, c
    ld a, c
    ld l, l
    ld l, [hl]
    cp a
    sub b
    ei
    adc b
    ld a, [hl]
    ld a, [hl]
    add e
    rst $18
    add hl, bc
    inc bc
    inc bc
    inc b
    inc b
    inc c
    ld [$080f], sp
    rlca
    rlca
    ld l, c
    ld a, [bc]
    rra
    rra
    rst $38
    ldh [$3f], a

jr_051_4ff3:
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    add e
    add e
    nop
    ld [$ff44], sp
    db $10
    ld b, $18
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $18
    inc hl
    ld b, e
    cp $02
    rlca
    rst $38
    rlca
    rst $38
    dec bc
    cp $12
    rst $18
    pop hl
    ld b, e
    rst $38
    add b
    dec b
    ld a, a
    add b
    rst $38
    inc c

jr_051_501c:
    rst $38
    inc b
    ld b, l
    rst $38
    nop
    dec c
    rst $18
    ldh [rVBK], a

jr_051_5025:
    ld a, a
    cp $82
    ld a, [hl]
    ld b, $fc
    inc c
    ldh a, [$30]
    ret nz

    ret nz

    ret


    ret z

    ld [$1819], sp
    db $e3
    ldh [$e7], a
    nop
    rst $38
    nop
    cp $43
    ld bc, $00ff
    ld bc, $ff4a
    nop
    rrca

jr_051_5045:
    ld hl, sp-$09
    db $f4
    ld l, e
    ld a, d
    ld c, e

jr_051_504b:
    ld a, d
    adc e
    ld a, [$f213]
    pop hl
    ld [c], a
    rlca
    inc b
    ld [hl], a
    call $088f
    ld b, $f7
    jr c, jr_051_4ff3

    ret c

    rrca

jr_051_505e:
    ld [$0407], sp
    xor c
    bit 4, c
    ld [$e0c0], sp
    ldh [rNR41], a
    ret nz

    jr nc, jr_051_501c

    ld d, b
    ld [hl], b
    ld c, e
    ret nc

    ldh a, [rSB]
    db $10
    ldh a, [rLYC]
    ld [$47f8], sp
    inc b
    db $fc
    inc bc
    inc e
    xor $06
    jp $00a3


    rst $08
    ld [bc], a
    ld b, d
    db $fc
    inc a
    and h
    cp a
    ld [bc], a
    ld b, b
    add b
    add b
    and e
    nop
    ld d, [hl]
    ld b, $c0
    ld b, b
    ld h, b
    jr nz, jr_051_5025

    db $10
    sub b
    xor h
    nop
    sub a
    and e
    sub l
    ld bc, $0203
    rst $00
    add h
    nop
    ld a, [c]
    add h
    nop
    add c
    dec c
    db $ed
    ld l, [hl]
    cp a
    sub b
    ld a, e
    ld a, b
    ld b, $06
    nop
    ld bc, $98ef
    ld a, e
    sbc h
    ld b, e
    rst $38
    inc c
    ld bc, $04fb
    add l
    nop
    jp c, $fc43

    inc b
    rrca
    cp $1e
    ei
    ld hl, $01e7
    rst $18
    inc bc
    cp $06
    ld hl, sp+$18
    ldh a, [rNR10]
    ret nz

    jr nc, jr_051_505e

    rst $18
    add a
    nop
    ld [hl], b
    ld bc, $88ff
    adc b
    nop
    ld a, d
    inc b
    cp l
    ld a, a
    ld h, b
    ld [hl], e
    ld h, b
    add e
    nop
    adc b
    rlca
    ld a, a
    ld a, h
    ld bc, $df03
    ld [hl+], a
    rst $38
    inc bc
    add h
    nop
    call nz, $0f00
    adc b
    nop
    jp z, $8404

    rst $38
    inc l
    rst $38
    ld [de], a
    ld b, a

Call_051_50fe:
    rst $38
    nop
    inc bc
    rst $18
    ldh [$df], a
    cp a
    adc e
    nop
    db $e4
    adc d
    ld bc, $0400
    db $10
    rst $38
    jr nz, @+$01

    ld a, b
    add l
    ld bc, $0b10

jr_051_5115:
    adc d
    ei
    inc de
    db $f4
    db $e4
    add sp, $09
    db $10
    ld a, a
    ldh [rIE], a
    nop
    adc l
    ld bc, $0320
    or a
    ld a, b
    rrca
    adc b
    adc e
    ld bc, HeaderTitle
    db $fc
    inc a
    add h
    ld bc, $04ce
    jr nz, jr_051_5115

    ld h, b
    ld b, b
    ret nz

    adc a
    ld bc, $07dc
    ld b, c
    ld b, c
    ld c, a
    ld c, a
    ret nc

    ldh a, [$a0]
    and c
    add a
    ld bc, $83f4
    nop
    adc h
    add l
    ld [bc], a
    nop
    ld bc, $06fe
    sub l
    ld [bc], a
    ld [$df0d], sp
    ldh [$87], a
    add h
    inc bc
    ld [bc], a
    ccf
    ld a, $c2
    jp $0403


    inc b
    ld [$ff83], sp
    adc e
    ld bc, $83f0
    cp a
    rst $38
    ld a, b
    ld [hl+], a
    ld bc, $81c8
    dec b
    ld bc, $0602
    ld [$0008], sp
    ld [hl+], a
    db $10
    dec de
    nop
    jr nz, jr_051_51a7

    jr nz, jr_051_51b4

    jr nz, @+$41

    inc a
    ccf
    ld b, d
    ld h, a
    ld b, c
    ld b, e
    ld b, c
    dec b
    jp $86ca


    call nc, $d88c
    adc b
    xor b
    ret c

    ld [hl], b
    ld d, b
    jr nc, jr_051_51c5

    ld [hl], e
    ldh [$37], a
    ld b, $0e
    inc de
    ld sp, $4021
    ld [hl], e
    ld b, b
    cp [hl]
    pop bc
    inc e
    inc hl
    nop
    ccf
    nop

jr_051_51a7:
    rst $38
    add b
    rst $08
    ld h, e
    ld l, a
    inc e
    inc e
    add $c7
    add hl, hl
    cpl
    ld a, $1a

jr_051_51b4:
    jr c, jr_051_51c2

jr_051_51b6:
    ld e, c
    dec c
    cp h
    dec c
    ld l, [hl]
    ld e, $d5
    ccf
    jp c, $af3f

    ld a, a

jr_051_51c2:
    inc l
    db $fc
    ret z

jr_051_51c5:
    ld hl, sp+$48
    ld a, b
    inc [hl]

jr_051_51c9:
    inc l
    ld a, [de]
    ld d, $0e
    ld a, [bc]
    inc b
    ld b, $7b
    inc b
    ret nz

    ret nz

    jr nz, jr_051_51b6

    nop
    ld b, e
    sub b
    db $10
    ldh [rNR50], a
    ldh a, [$27]
    rst $28
    ld [hl], e
    ldh a, [$7f]
    ld c, a
    ld sp, $7bf0
    add a
    ret nc

    ldh a, [rNR42]
    jr z, jr_051_51c9

    jp nc, $d0db

    cp e
    call nc, $207f
    rst $28
    rst $18
    ld a, c
    sub b
    rla
    ld hl, sp-$39
    rst $20
    cpl
    cpl
    ld [bc], a
    ld [de], a
    rlca
    rrca
    ld a, l
    ld b, $03
    inc bc
    rlca
    inc c
    ld b, $30
    ld b, $43
    ld b, b
    ld b, a
    ldh [rNR52], a
    ld c, b
    jr nz, jr_051_5251

    and b
    cp a
    ldh a, [$79]
    xor $8f
    rst $20
    ld [hl], a
    call nc, Call_051_5c3c
    db $fc
    ld [hl+], a
    and d
    call Call_051_5d4d
    ld e, l
    ld c, e
    db $dd
    rst $20
    inc hl
    rst $38
    sbc [hl]
    di
    ld c, [hl]
    ld b, a
    cp $2b
    ld a, [hl-]
    or d
    or e
    ld b, c
    ld b, c
    add c
    add c
    adc c
    nop
    rrca
    db $d3
    nop
    ld a, [de]
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_051_52a4

    inc bc
    sub b
    ld [hl], b
    db $10
    ldh a, [rSCX]
    ld [$e098], sp
    dec l
    db $10
    ldh a, [$60]

jr_051_5251:
    ldh [$80], a
    add b
    jr nc, @+$32

    ld c, b
    ld c, b
    cp h
    add h
    ld a, h
    inc d

jr_051_525c:
    cp $72
    sub [hl]
    sbc d
    sbc [hl]
    ld a, [bc]
    inc c
    inc b
    ld d, $02
    ld c, $02
    ld d, $02
    adc d
    ld b, $72
    adc [hl]
    inc b
    db $fc
    add h
    db $fc
    sbc b
    add sp, $68
    ld a, b
    sub b
    ldh a, [$b0]
    ret nc

    jr nz, jr_051_525c

    rlc b
    or e
    rra
    ld [bc], a
    rlca
    rrca
    jr jr_051_5296

    jr nz, jr_051_52aa

    ld b, b
    ld b, l
    ld b, b
    ld c, e
    ld b, b
    ld b, a
    add b
    db $eb
    add b
    cp [hl]
    pop bc
    xor l
    sbc $5e
    ld [hl], e

jr_051_5296:
    ld [hl], a
    ld h, c
    ld h, l
    ld b, e
    ld c, c
    ld h, a
    dec [hl]
    dec hl
    add hl, hl
    scf
    ld b, e
    ld [de], a
    ld e, $03

jr_051_52a4:
    ld a, [bc]
    ld c, $04
    inc b
    adc c
    nop

jr_051_52aa:
    ld h, b
    ldh [$33], a
    add b
    cp a
    ret nz

    ld a, a
    ldh [$2f], a
    db $d3
    ccf
    call c, $9e3c
    ld a, a
    ld e, c
    cp a

jr_051_52bb:
    cp [hl]
    ld a, d
    jr z, jr_051_52bb

    ld a, c
    db $fd
    ld e, h
    db $fd
    cp [hl]
    cp $ad
    cp a
    ld a, d
    ld a, a
    ld c, a
    ld a, a
    ld c, h
    ld a, h
    ld c, b
    ld a, b
    ld l, b
    ld e, b
    inc [hl]
    inc l
    ld a, a
    cpl
    ld sp, hl
    ret nc

    ld b, [hl]
    adc c
    rra
    rst $18
    sbc a
    rst $18

jr_051_52dd:
    ld h, [hl]
    ld l, a
    add hl, sp
    add hl, sp
    ld h, c
    add e
    ld bc, $1710
    push de
    dec a
    ld e, a
    cp $23
    and d
    bit 1, h
    ld e, a
    ld e, h
    ld c, a
    call c, Call_051_66a5
    db $fd
    sbc $32
    cpl
    and [hl]
    cp a
    xor c
    cp c
    ld [hl], b
    ld [hl], b
    add e
    ld bc, $e08c
    inc hl
    ld [hl], b
    ldh a, [$f8]
    adc b
    sbc h
    inc b
    inc c
    ld [bc], a
    ld c, $02
    ld b, $01
    adc a
    ld bc, $0157
    xor a
    ld bc, $03fd
    db $f4
    ld a, e
    cp d
    adc $cc
    add [hl]
    call z, $ac84
    call nz, Call_051_4c74
    ld a, b
    ld c, b
    ld l, b
    ld e, b
    and e
    ld bc, $67bc
    add a
    nop
    ld [hl], b
    rlca
    ccf
    ld a, [de]
    ld a, $0c
    ld e, [hl]
    inc c
    cp l
    ld c, $87
    nop
    ret nz

    rlca
    pop hl
    jr z, jr_051_539b

    ld [hl-], a
    db $db
    jr nc, jr_051_52dd

    ld [hl], h
    add a
    ld bc, $0710
    ld a, $a2
    push hl
    ld b, e
    ld l, l
    ld b, e
    ld e, c
    rst $20
    rst $38
    db $ec
    add hl, hl
    ld de, $6020
    sub b
    sbc b
    adc h
    add [hl]
    ld h, a
    ld b, c
    ld a, c
    ld b, b
    ld a, $20
    cpl
    jr nc, jr_051_5375

    inc e
    ld de, $431e
    ld [$430f], sp
    inc b
    rlca
    inc bc
    ld b, $07
    inc b
    rlca
    ld b, e
    add hl, bc
    rrca
    add hl, bc
    ld a, a

jr_051_5375:
    cp $ff
    add b
    sbc a
    ldh [rBGP], a
    ld a, b
    jr nz, jr_051_53bd

    ld b, e
    ld d, b
    ld a, a
    ld b, l
    add b
    rst $38
    ld l, d
    inc bc
    ld bc, $0200
    ld bc, $83c4
    ldh [$29], a
    ld bc, $0103
    rlca
    ld b, $05
    dec b
    ld a, [bc]
    ld a, [bc]
    dec c
    inc d
    dec de
    ld a, [hl-]

jr_051_539b:
    dec d
    ld [hl], b
    ld l, a
    sbc b
    sbc a
    adc a
    add a
    ld d, e
    ld h, c
    ld c, h
    ld [hl], b
    inc hl
    inc a
    ld hl, $103e
    sbc a
    or b
    ld a, a
    ld a, c
    ld b, $9a
    dec b
    db $dd
    ld [bc], a
    cp $01
    rst $38
    nop
    ld b, e
    ld a, a
    add b
    rlca
    ccf

jr_051_53bd:
    ret nz

    ld a, $c1
    ld a, h
    add e
    db $fc
    inc bc
    ld b, e
    ld hl, sp+$07
    db $10
    ldh a, [rIF]
    xor e
    ld d, a
    ld d, h
    xor h
    xor h
    ld d, h
    inc d
    db $ec
    inc b
    db $fc
    ld a, [hl+]
    cp $55
    rst $38
    ld a, [hl+]
    adc d
    rst $18
    ldh [rHDMA5], a
    ret nz

    ret nz

    jr nc, jr_051_5419

    ld b, h
    inc b
    xor h
    add d
    sbc a
    pop bc
    jr c, jr_051_5410

    db $10
    rra
    and h
    rst $08
    sub d
    db $e3
    ld c, c
    ldh a, [rLY]
    ld hl, sp+$42
    db $fc
    ld h, e
    db $fc
    and c
    cp $51
    cp $b1
    cp $e2
    ld a, l
    push af
    ld a, [hl+]
    ld [$f415], a
    dec bc
    ei
    ld b, $78
    sbc b
    or b
    ld h, b
    ld [hl], b
    ret nz

    ld hl, sp+$40
    cp a

jr_051_5410:
    ret nz

    sbc a
    rst $38
    cp a
    ldh a, [$bf]
    ldh [$5e], a
    rst $28

jr_051_5419:
    ld d, a
    ld hl, sp+$68
    ldh a, [$50]
    ldh [rSVBK], a
    ret nz

    xor b
    ret nz

    or h
    ret nz

    cp d
    ret nz

    ld e, a
    ld h, b
    ccf
    jr nc, jr_051_5439

    ld c, $03
    inc bc
    rlca
    nop
    rst $08
    ret nz

    ld h, c
    adc l
    nop
    ld h, b
    ldh [rNR51], a

jr_051_5439:
    ld [bc], a
    ld [bc], a
    add b
    add h
    ld b, l
    call nz, $e827
    cpl
    add sp, $1e
    pop af
    adc e
    push af
    push af
    ld l, e
    ld a, e
    dec b
    ld [hl], b
    rrca
    pop af
    ld c, $cd
    ld [hl-], a
    rst $18
    ld h, b
    sbc a
    ldh [$bf], a
    pop bc
    cp a
    ld b, [hl]
    rst $38
    ldh a, [$fe]
    dec c
    ld [hl], d
    rrca
    ld b, e
    add hl, sp
    rlca
    ldh [rNR51], a
    ld a, b
    rlca
    ldh a, [rIF]
    ld h, b
    sbc a
    add b
    rst $38
    ret nz

    ld a, a
    pop hl
    ld a, a
    di
    rst $38
    ld a, $0f
    ccf
    ld bc, $001f
    rrca
    nop
    inc bc
    nop
    add b
    nop
    ld d, c
    nop
    xor d
    nop
    push af
    nop
    ld a, a
    add b
    adc a
    ldh a, [$80]
    rst $38
    call nz, Call_051_7100
    ld de, $0402
    inc b
    nop
    ld [$0809], sp
    dec d
    db $10
    adc e
    and b
    or a
    and b
    rst $28
    ld b, b
    rst $10
    ld b, b
    xor a
    jp $5c00


    nop
    add b
    ld b, e
    rst $38
    nop
    add e
    nop
    xor b
    dec b
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    call nz, $9f00
    inc d
    rst $38
    ld b, a
    cp $3f
    ld hl, sp+$2b
    call nc, $a857
    adc a
    ldh a, [rIE]
    ld a, [c]
    db $dd
    db $ed
    cp c
    jp hl


    xor c
    ld sp, hl
    and l
    db $fd
    ld b, e
    jr nz, @+$01

    dec bc
    ld b, b
    rst $38
    rst $08
    rst $38
    ldh a, [rSVBK]
    ld hl, sp+$18
    cp $06
    rst $38
    ld bc, $ff45
    nop
    dec b
    cp $39
    add [hl]
    ld b, l
    dec b
    add a
    add e
    nop
    ret z

    ld bc, $2060
    ld b, e
    ret nz

    ld b, b
    daa
    add b
    ld b, l
    ld b, b
    ret nz

    dec c
    ld [hl+], a
    and $a9
    ld a, c
    or e
    ld [hl], c
    ld h, $e2
    ld a, $e2
    inc a
    db $e4
    ld b, h
    db $fc
    ld b, e
    ld c, b
    ld hl, sp+$03
    ret nc

    ldh a, [$f0]
    or b
    ld b, h
    ldh a, [rNR10]
    ld b, h
    ld [$13e8], sp
    ldh [rDIV], a
    ldh a, [rDIV]
    db $f4
    inc b
    db $fc
    call nz, $acb4
    jr z, jr_051_5555

    ret nc

    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$80], a
    add b
    xor b
    ld bc, $0a25
    add b
    ret nz

    ld b, b
    ldh [$e0], a
    db $10
    db $10
    ld [$8808], sp
    ret z

    rst $38
    db $ec
    cpl
    ld [hl+], a
    ld bc, $80c6
    ld [$1e1c], sp
    rra
    rra
    inc c
    ld c, $06
    ld b, $02
    ld [hl+], a
    inc bc
    dec h
    ld [bc], a
    rlca
    ld bc, $3103
    ld sp, $4d4d
    ld b, e
    ld b, e
    ld b, e
    add a
    add h

jr_051_5555:
    dec bc
    ld h, e
    ld h, d
    add hl, de
    add hl, de
    dec bc
    dec bc
    ld [de], a
    ld [de], a
    ld de, $0e17
    rrca
    ld hl, sp+$31
    or d
    add hl, de
    jr c, jr_051_55a0

    ld b, h
    ld e, h
    sbc d
    cp $ab
    rst $28
    or e
    or d
    rst $00
    ld b, h
    cp e
    db $fc
    db $fd

Jump_051_5575:
    ld [bc], a
    db $fd
    jp nz, $3c3f

    inc bc
    ld [bc], a
    adc a
    sbc a

jr_051_557e:
    ld h, b
    ld h, b
    ld h, c
    inc hl
    ld b, d
    add hl, de
    db $10
    db $10
    ld a, h
    ld a, h
    ld a, l
    add e
    ld a, l
    ld c, h
    ld a, l
    ld b, h
    rst $38
    nop
    rst $38
    sub b
    rst $38
    pop bc
    cp $3f
    ldh [rIF], a
    ldh [rTAC], a
    ret nz

    rst $30
    add b
    or $23
    add b

jr_051_55a0:
    rlca
    ret nz

    ret nz

    ld [hl], e
    ld [hl], e
    adc h
    db $fc
    ldh a, [$f0]
    ldh a, [rNR51]
    nop
    inc d
    adc e
    sub d
    dec bc
    add c
    add e
    add [hl]
    add a
    add l
    add a
    ld [$fd6f], a
    rra
    rst $38
    rrca
    ld b, e
    rst $38
    inc bc
    add hl, bc
    ei
    add a
    ld a, a
    ld h, a
    ccf
    ccf
    daa
    daa
    rla
    rla
    inc hl
    inc de
    dec c
    sub a
    sub a
    xor a
    add hl, hl
    cp [hl]
    ld sp, $43fe
    rst $38
    add a
    ld sp, hl
    adc c
    ld [hl], c
    pop de
    ld b, e
    jr nz, jr_051_557e

    inc hl
    db $10
    add hl, bc
    jr nz, jr_051_5603

    ld [hl], b
    ld [hl], b
    add sp, -$08
    adc c
    ld sp, hl
    ld [hl], c
    ld [hl], c
    adc b
    ret z

    add hl, bc
    inc bc
    ld c, $0f
    dec e
    inc de
    inc sp
    jr nz, jr_051_5619

    jr nz, @+$69

    ld b, e
    ld b, b
    ld a, a
    ldh [rNR43], a
    ld e, b
    ld a, a
    ld b, h
    rst $38
    ret z

    cp a

jr_051_5603:
    ld d, h
    cp a
    ld b, b
    cp a
    ld b, h
    rst $38
    ret nz

    ld e, b
    ld l, b
    jr c, @+$26

    rra
    db $10
    rrca
    inc e
    ld a, $7f
    ei
    db $fc
    rst $38
    rst $38
    ld a, a

jr_051_5619:
    rst $38
    sbc a
    sbc a
    adc a
    adc a
    add a
    rst $00
    dec h
    ret nz

    dec b
    ld hl, sp-$28
    xor b
    xor b
    cp b
    or b
    ld h, c
    rlca
    inc d
    call nc, $db09
    add b
    add b
    ldh [$f0], a
    add d
    sbc a
    ld b, h
    rst $38
    ld b, h
    inc b
    ld c, [hl]
    rst $38
    inc bc
    rst $38
    ld bc, $ff46
    add c
    ld a, [bc]
    sub c
    rst $38
    ld c, c
    ld a, a
    ld h, c
    ld a, a
    ld a, [$1efe]
    ld a, [hl]
    db $fc
    adc b
    nop
    reti


    ld a, [bc]

jr_051_5651:
    ldh [$f0], a
    jr c, jr_051_5651

    xor $de
    rst $38
    rlca
    rst $38
    inc bc
    db $fd
    add e
    xor b
    ld d, $39
    cp a
    pop bc
    rst $38
    ld sp, $4aff
    cp $03
    cp $01
    sbc l
    ld h, d
    dec [hl]
    dec hl
    ld [hl], $2a
    db $fc
    inc c
    cp $37
    ld [hl], a
    rst $08
    and e
    rst $28
    ldh [rNR50], a
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$04
    ldh a, [$f0]
    ld bc, $0161
    ld bc, $0707
    ld [hl], a
    scf
    ld d, e
    ld d, e
    ld [hl], e
    ld h, e
    inc bc
    inc bc
    add a
    or a
    rlca
    scf
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    db $e4
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $ff44
    ld de, $0003
    rst $38
    add b
    rst $38
    ld b, e
    ld b, b
    ld a, a
    ld bc, $7f48
    ld b, e
    inc h
    ccf
    add hl, bc
    db $10
    rra
    rrca
    rra
    ld de, $1f17
    rra
    ld c, $0f
    or b
    nop
    db $ec
    inc h
    ret nz

    nop
    add b
    and e
    nop
    ld b, h
    nop
    ret nz

    ld b, e
    ret nz

    ld b, b
    and a
    nop
    db $fc
    inc bc
    add b
    ret nz

    ret nz

    ldh [rNR43], a
    pop hl
    ld a, [bc]
    pop af
    ld [hl], c
    ld [hl], c
    ld [hl], e
    ld a, d
    ei
    cp $ff
    db $fc
    rst $38
    ldh a, [$a4]
    ld bc, $08cc
    add c
    rst $38
    add c
    cp $c6
    ld hl, sp-$08
    ldh [$e0], a
    dec h
    ret nz

    jp nz, $01ae

    ret nz

    ret nz

    ld c, b
    ret nz

    ld b, b
    cpl
    add b
    nop
    nop
    db $f4
    ld a, [hl+]
    nop
    ld h, l
    inc de
    ld [hl], b
    ld [hl], b
    adc b
    cp b
    inc [hl]
    db $fc
    ld d, h
    call c, Call_051_6464
    adc [hl]
    adc d
    ld a, [$7676]
    adc d
    ld a, h
    add h
    ld hl, sp+$78
    db $f4
    ld sp, $6400
    ld h, c
    rst $38
    db $ec
    dec [hl]
    rrca
    ld bc, $0201
    inc bc
    ld b, $06
    inc b
    inc b
    dec bc
    dec bc
    inc c
    inc c
    db $10
    db $10
    jr nz, jr_051_5751

    ld b, e
    jr nz, jr_051_5764

    inc bc
    inc hl
    dec hl
    ld e, $1e
    db $ec
    ld c, c
    ldh [rNR51], a
    ld bc, $0601
    rlca
    jr jr_051_575e

    jr nz, jr_051_5780

    ld c, h
    ld a, a
    ld [hl], c
    ld a, a
    add b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    ld a, [hl]
    inc b
    inc e
    inc c
    inc c

jr_051_5751:
    adc b
    ret z

    ret nc

    ret nc

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    and b
    and b
    jr nz, jr_051_577d

    ret nz

jr_051_575e:
    ret nz

    ld h, e
    dec de
    inc bc
    inc bc
    inc c

jr_051_5764:
    rrca
    inc de
    inc a
    dec bc
    ld d, b
    inc d
    and e
    xor b
    push bc
    sub b
    jp z, $cda0

    sub b
    jp z, Jump_051_6540

    ld b, b
    ld h, b
    jr nz, jr_051_57a9

    jr jr_051_579a

    rlca
    rlca

jr_051_577d:
    adc e
    nop
    inc l

jr_051_5780:
    ldh [$31], a
    ld b, $07
    ld [$100e], sp
    inc e
    db $10
    rra
    jr nz, jr_051_57c8

    jr z, jr_051_57cc

    daa
    ccf
    jr nz, jr_051_57d1

    jr @+$21

    rla
    rla
    db $10
    dec de
    jr nc, jr_051_57d1

jr_051_579a:
    ld c, c
    ld a, e
    add a
    cp $e4
    rst $38
    add e
    cp $61
    rst $38
    jr nc, @+$01

    ld c, b
    rst $38
    add h

jr_051_57a9:
    rst $38
    inc b
    rst $38
    jr c, @+$01

    jp nz, $02c3

    inc bc
    ld bc, $cf01
    nop
    sbc c
    ld c, $01
    ld bc, $0f0f
    ld [hl], c
    ld a, a
    adc a
    ldh a, [$7e]
    add c
    ldh a, [rIF]
    add b
    ld a, a
    nop
    ld b, h

jr_051_57c8:
    rst $38
    nop
    add hl, bc
    inc bc

jr_051_57cc:
    ld a, h
    rra
    ldh [$0c], a
    add e

jr_051_57d1:
    inc bc
    rra
    inc e

Jump_051_57d4:
    ld a, h
    xor c
    db $ed
    inc b
    rra
    rra
    ld h, b
    ld a, a
    add b
    ld b, e
    rst $38
    nop
    add hl, bc
    ccf
    nop
    sbc a
    nop
    rst $38
    nop
    sbc a
    rlca
    ccf
    ld hl, sp-$7d
    xor c
    ld [hl+], a
    rst $38
    ld [de], a
    rlca
    sbc a
    add a
    sbc a
    rst $00
    ld e, a
    ei
    dec a
    rst $38
    ld bc, $8b06
    db $fc
    add a
    ld [hl], d
    rst $38

Jump_051_5800:
    ld b, a
    rst $38
    add hl, sp
    ld c, b
    rst $38
    nop
    ldh [$2b], a
    ld bc, $067f
    ccf
    cp c
    cp a
    ld e, a
    ld b, a
    rst $38
    or e
    rst $28
    rst $28
    or c
    or d
    ld b, a
    ld b, [hl]
    dec sp
    ld a, $cd
    db $fc
    inc e
    call c, $a4a4
    jp nz, $c5ee

    db $fd
    ld e, h
    db $ec
    ld h, h
    db $f4
    inc h
    db $f4
    ld [hl-], a
    cp $7f
    sbc a
    or $1e
    sbc b
    ld a, b
    ld h, b
    ldh [$b1], a
    ld bc, $001c
    nop

jr_051_5839:
    ld b, h
    ret nz

    ld b, b
    dec de
    daa
    rst $20
    jr c, @+$01

    ld h, c
    rst $38
    and [hl]
    rst $38
    jr z, @+$01

    ld [hl], b
    rst $38
    rst $30
    rst $38
    ld hl, sp-$08
    call c, $bcbc
    call c, Call_051_58b8
    ldh a, [$30]
    ldh [$e0], a
    jr nz, jr_051_5839

    ld b, e
    db $10
    ldh a, [rNR22]
    ld [$88f8], sp
    ld hl, sp-$74
    db $fc
    and e
    rst $38
    ld h, c
    rst $38
    ld d, a
    rst $38
    sbc a
    rst $38
    ld [hl], a
    or $ff
    db $fc
    rst $38
    ldh a, [$e1]
    add $00
    add e
    add l
    ld bc, $131c
    add b

jr_051_587a:
    nop
    ldh [rP1], a
    jr c, jr_051_587f

jr_051_587f:
    rrca
    nop
    ld bc, $e000
    ldh [rNR23], a
    sbc b
    ld b, $46
    ld a, c
    ld a, e
    add a
    add [hl]
    rst $10
    nop
    sbc c
    ld de, $0702
    ld [$f008], sp
    ldh a, [$08]
    adc b
    call nz, $84c4
    db $e4
    inc b
    db $e4
    ld b, $e6
    ld sp, hl
    ld sp, hl
    cp h
    nop
    ld a, [de]
    ld b, $81
    adc [hl]
    adc [hl]
    jr nc, @+$41

    db $e3
    db $e3
    ld b, e
    add b
    ld b, b
    dec bc
    nop
    add b
    nop
    add b
    ret nz

    ret nz

Call_051_58b8:
    scf
    jr c, jr_051_58bf

    inc b
    ld [bc], a
    ld [bc], a
    add l

jr_051_58bf:
    ld bc, $0d18
    pop bc
    ld bc, $0262
    ld [hl-], a
    ld [bc], a
    inc d
    inc b
    sbc b
    adc b
    or b
    ld [hl], b
    ret nz

    ret nz

    ld [hl], l
    jp $bd00


    inc h
    db $10
    rlca
    ld [hl], b
    jr nz, jr_051_587a

    ld b, b
    ret nz

    ld b, b
    ld b, b
    add b
    call c, $04d2
    ret nz

    ret nz

    jr nz, jr_051_5946

    db $10
    ld [hl+], a
    ldh a, [$03]
    jr jr_051_5904

    inc b
    inc b
    dec h
    ld [bc], a
    add hl, bc
    add h
    inc b
    db $e4
    inc b
    jr z, jr_051_58ff

    jr z, @-$36

    jr nc, jr_051_592b

    db $dd
    sbc d
    rst $38
    ld l, c

jr_051_58ff:
    dec bc
    ld bc, $0001
    ld [bc], a

jr_051_5904:
    inc b
    inc b
    ld [$0508], sp
    db $10
    ld a, [de]
    db $10
    ld b, l
    ccf
    jr nz, jr_051_591d

    cpl
    jr nc, @+$15

    inc e
    ld de, $091f
    rrca
    ld a, [bc]
    ld c, $06
    ld b, $02

jr_051_591d:
    ld [bc], a
    inc hl
    dec b
    ld [bc], a
    inc b
    inc b
    nop
    inc h
    ld [$0a03], sp
    ld [$0805], sp

jr_051_592b:
    ld b, e
    rlca
    inc b
    ld bc, $0203
    jp $09b4


    ld bc, $0201
    ld b, $08
    ld [$0c0c], sp
    inc bc
    inc bc
    ld h, l
    dec de
    jr jr_051_595a

    dec h
    ld l, a
    rlca
    cp h

jr_051_5946:
    adc a
    ld hl, sp-$68
    ld a, a
    sub b
    ld a, b
    ldh [$30], a
    ld h, d
    ld [hl-], a
    ldh a, [$28]
    ei
    daa
    db $fc
    inc l
    ld a, [c]
    ld [de], a
    and b
    ld h, b

jr_051_595a:
    add b
    add b
    ld l, l
    dec bc
    add c
    add b
    ccf
    ld [hl], b
    cp a
    rrca
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld c, b
    rst $38
    nop
    inc c
    ret nz

    jr nc, jr_051_59b0

    rrca
    rrca
    rlca
    nop
    sbc a

Call_051_5976:
    jp $1c7c


    ldh [$e0], a
    ld h, c
    ldh [$31], a
    rrca
    ccf
    ld b, e
    ret nz

    dec b
    nop
    dec bc
    nop
    rst $10
    nop
    rst $28
    nop
    ccf
    add b
    ld a, $41
    inc a
    ld b, d
    ld hl, sp-$1c
    jr jr_051_59a8

    inc e
    ld a, [bc]
    ld a, $05
    ccf
    inc hl
    ld [hl], a
    nop
    ld l, e
    nop
    ld d, a
    nop
    cpl
    nop
    rla
    ld bc, $010f
    rra
    ld [bc], a

jr_051_59a8:
    ld a, $03
    rst $38
    inc b
    rst $38
    jr c, @+$01

    ret nz

jr_051_59b0:
    ld c, e
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    add e
    adc b
    ldh [$3f], a
    rst $38
    rst $38
    add h
    add h
    inc b
    inc b
    inc bc
    inc bc
    ld sp, $b331
    or e
    rst $30
    ld [hl], a
    cp $0e
    db $fd
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rra
    ld [c], a
    rrca
    ld [de], a
    rlca
    add hl, bc
    add a
    adc c
    rrca
    ld de, $e21d
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add h
    rst $20
    sbc b
    adc $f1
    dec d
    ld [$d52a], a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, c
    xor a
    add sp, $17
    db $f4
    dec bc
    add sp, $17
    ldh a, [rIF]
    ld b, e
    ldh [$1f], a
    ld bc, $3fc1
    jp $0db0


    ld b, $ff
    inc e
    db $fc
    cp $e2
    rst $38
    ld bc, $003f
    add a
    add [hl]
    ld a, c
    ld a, c
    inc hl
    add b
    ld h, c
    nop
    ld h, b
    ld [hl+], a
    ldh [$08], a
    ret nz

jr_051_5a1c:
    ret nz

    ldh a, [$90]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_051_5a1c

    and h
    nop
    dec d
    ld c, c
    cp $02
    inc bc
    call z, $8434
    ld a, h
    ld b, e
    ld [$11f8], sp
    db $10
    ldh a, [$60]
    ldh [$8c], a
    adc h
    cp [hl]
    or d
    ld [$96d6], a
    ld [$f4cc], a
    xor b
    ld hl, sp-$30
    ldh a, [$83]
    or e
    add a
    nop
    ld l, [hl]
    inc bc
    add b
    add b
    ret nz

    ld b, b
    and e
    nop
    ld a, $8b
    nop
    ld d, b
    dec bc
    sub a

jr_051_5a57:
    ld a, b
    adc a
    ld [hl], b
    rst $28
    jr nc, jr_051_5ad4

    jr z, jr_051_5a57

    daa
    rst $38
    inc hl
    add a
    nop
    ld l, b
    ld [$00ff], sp
    ld a, a
    add b
    ei
    db $e4
    dec de
    inc d
    dec e
    add [hl]
    nop
    cp c
    ld b, h
    rst $38
    ld [bc], a
    inc bc
    ld bc, $09f7
    rst $28
    add [hl]
    ld bc, $6c09
    jr jr_051_5a81

    ld [bc], a

jr_051_5a81:
    ld [bc], a
    inc b
    inc b
    ld bc, $0b08
    ld [$1005], sp
    dec de
    db $10
    rra
    db $10
    dec d
    ld a, [de]
    ld a, [bc]
    dec c
    dec c
    dec bc
    dec bc

jr_051_5a95:
    rrca
    ld b, $06
    adc d
    nop
    ld h, $85
    xor b

jr_051_5a9d:
    ld b, $03
    rlca
    inc c
    cpl
    ld a, b
    ret c

    or a
    add e
    nop
    ld e, [hl]
    dec c
    ld [c], a
    ld [hl-], a
    ldh a, [$28]
    cp e
    ld h, a
    cp h
    ld l, h
    sub d
    ld [hl], d
    jr nz, jr_051_5a95

    add b
    add b

jr_051_5ab7:
    adc h
    nop
    ldh a, [rNR12]
    inc bc
    rst $38
    inc b
    rra
    add sp, $0f
    jr jr_051_5aca

    inc c
    add a
    adc h
    dec c
    ld [de], a
    rra
    ld [c], a

jr_051_5aca:
    rst $38
    ld [bc], a
    db $fd
    add [hl]
    adc e
    ld bc, $0540
    ret nz

    ld b, b

jr_051_5ad4:
    ret nz

    jr nz, jr_051_5ab7

    jr nz, jr_051_5a9d

    ld bc, $436b
    inc b
    db $fc
    ld b, h
    ld [bc], a
    cp $ff
    ld l, c
    ld [bc], a
    ld bc, $0201
    ld [hl+], a
    inc bc
    dec b
    inc b
    rlca
    ld b, $06
    ld [bc], a
    ld b, $22
    inc bc
    nop
    rlca
    ld b, e
    inc b
    ld b, $11
    inc bc
    inc bc
    add hl, bc
    add hl, bc
    rla
    rla
    jr nz, jr_051_5b3f

    nop
    rla
    jr nz, jr_051_5b43

    jr jr_051_5b25

    ld b, $07
    ld bc, $ec01
    inc hl
    dec c
    rra
    rra
    ld h, b
    ld a, a
    add b
    rst $08
    nop
    rlca
    ld [bc], a
    rrca
    inc b
    sbc a
    ld bc, $43ff
    ld bc, $0efd
    inc bc
    cp $23
    rst $38

jr_051_5b23:
    nop
    ld a, a

jr_051_5b25:
    ldh a, [rIE]
    rst $38
    rst $20
    ld a, [hl]
    pop bc
    sbc [hl]
    rst $38
    ld h, b
    ld b, e
    rst $38
    rra
    jr jr_051_5b23

    ccf
    ldh [$3f], a
    pop af
    rst $18
    adc $5f
    ld b, h
    ld c, a
    ld b, h
    ld b, a
    ld b, h

jr_051_5b3f:
    daa
    ld [hl+], a
    ccf
    cpl

jr_051_5b43:
    rra
    ld de, $382f
    daa
    inc a
    inc hl
    ccf
    ld b, e
    db $10
    rra
    dec b
    ld [$100f], sp
    dec d
    rrca
    rrca
    ld l, c
    and e
    nop
    ld c, $01
    db $10
    ldh a, [rSCX]
    ld [$44f8], sp
    add h
    db $fc
    ld b, e
    ld a, h
    add h
    dec c
    db $fc
    inc b
    db $fc
    ld c, e
    ei
    adc e
    ld a, [$fb1b]
    inc e
    rst $38
    ld h, b
    rst $38
    ret nz

    ld b, e
    ccf
    ldh [$08], a
    ld a, a
    pop hl
    cp a
    di
    rra
    cp $0e
    cp $0a
    ld b, h
    rst $38
    ld de, $e114
    cp $12
    db $fc
    inc c
    db $fc
    add h
    ld hl, sp+$6d
    ld hl, sp-$01
    jr z, @+$01

    jr c, @+$01

    ld b, h
    rst $00
    add h
    add l
    inc bc
    inc bc
    ld a, a
    rlca
    ret nz

    ret nz

    or b

jr_051_5b9f:
    or b
    ld [$10e8], sp
    ld [hl], b
    ld b, e
    jr jr_051_5b9f

    dec d
    ld a, b
    add sp, -$04
    add h
    db $fc
    sbc h
    db $fc
    db $e4
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    add hl, sp
    add hl, hl
    sbc d
    sbc e
    ld d, h
    ld d, l
    jr z, jr_051_5c25

    add hl, hl
    rst $28
    ld b, l
    ld de, $07ff
    jr nz, @+$01

    jr c, @+$01

    ld h, a
    rst $20
    add b
    add b
    db $ec
    scf
    ld b, $c0
    ldh [rNR10], a
    ld [hl], b
    nop
    ld hl, sp-$38
    ld b, [hl]
    ld hl, sp+$28
    rlca
    nop
    ld hl, sp-$70
    ldh a, [$60]
    ldh [$80], a
    ret nz

    add e
    nop
    ld b, $2b
    ld bc, $0707
    rlca
    ld [$100b], sp
    ld e, $10
    dec de
    ld b, e
    ld [$030f], sp
    inc b
    rlca
    ld [bc], a
    inc bc
    add a
    nop
    ld l, $e0
    daa
    rlca
    rlca
    jr jr_051_5c1e

    jr nz, @+$35

    ld b, b
    ld b, c
    add b
    jp $8f80


    nop
    sbc a
    ld bc, $03bf

jr_051_5c0c:
    rst $38
    inc bc
    db $fd
    inc bc
    db $fc
    ld bc, $80ff
    rst $38
    add a
    rst $38
    ret z

    ei
    ld [hl], b
    rst $38
    jr nz, jr_051_5c0c

    db $10

jr_051_5c1e:
    ei
    jr @+$01

    ld a, $e7
    add e
    nop

jr_051_5c25:
    ld a, h
    add l
    ld bc, $090a
    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    add d
    cp $42
    cp $83
    and l
    ldh [rNR42], a
    ld bc, $027f
    ld a, a

Call_051_5c3c:
    add d
    cp $8b
    rst $38
    ld bc, $1bff
    cp $ff
    xor $1b
    ld a, [$fa0b]
    inc bc
    ld sp, hl
    ld bc, $05fd
    db $fd
    adc l
    db $fd
    db $fd
    ld [hl], l
    ldh [rNR41], a
    ldh a, [$30]
    ldh a, [$d0]
    ld b, l
    ld hl, sp+$08
    ld bc, $04fc
    add e
    ld bc, $171e

jr_051_5c64:
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    jr c, @+$2d

    sbc c
    sbc e

jr_051_5c6c:
    ld d, d
    ld d, a
    ld a, [hl+]
    ld l, a
    ld a, [hl+]
    rst $28
    ld [de], a
    rst $38
    ld de, $10ff
    rst $38
    cpl
    rst $38
    jr nc, jr_051_5c6c

    and a
    nop
    inc l
    ld b, $80
    ret nz

    jr nz, jr_051_5c64

    nop
    ldh a, [$90]
    ld b, [hl]
    ldh a, [$50]
    ld b, $00
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    adc b
    ld bc, $433d
    inc b
    rlca
    inc b
    inc bc
    rlca
    nop
    inc bc
    nop
    add [hl]
    nop
    add hl, de
    ld [$ff00], sp
    nop
    rst $38
    ld bc, $83ff
    cp $20
    add [hl]
    nop
    ld l, c
    dec b
    ld a, a
    ret nz

    cp a
    pop bc
    ld a, [hl]
    db $e3
    adc c
    nop
    db $76
    ld b, e
    inc b
    db $fc
    inc b
    call nz, $84fc
    ld a, h
    inc b
    add [hl]
    nop
    cp c
    rst $38
    ld l, e
    rla
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld [$181f], sp
    rra
    db $10
    rra
    inc de
    dec e
    ld [de], a
    inc de
    inc e
    rra
    db $10
    ld b, e
    rrca
    ld [$9783], sp
    ld b, $04
    rlca
    dec b
    ld b, $0d
    ld a, [bc]
    dec bc
    ld b, h
    inc d
    dec de
    nop
    rla
    ld b, h
    jr z, jr_051_5d2b

    nop
    cpl
    ld b, h
    ld d, b
    ld l, a
    nop
    ld a, a
    ld b, h
    add b
    rst $38
    inc bc
    ld hl, sp-$79
    ldh [$9f], a
    ld b, e
    ld b, b
    ld a, a
    ld [$3f20], sp
    db $10
    rra
    inc c
    rrca
    dec bc
    rrca
    ld de, $1f44
    ld [de], a
    ldh [rLY], a
    ld b, $07
    jr @+$1a

    ld [hl], $38
    ld b, a
    ld b, h
    db $e3
    add d
    rst $38
    add d
    ld sp, hl
    rst $20
    pop af
    rra
    ld a, [$e50e]
    rra
    add $fd

jr_051_5d2b:
    db $ed
    ld a, [hl-]
    cp d
    ld [hl], l
    dec d
    ld a, [$f52a]
    rst $00
    ld hl, sp-$11
    db $10
    rst $30
    ld [$09f7], sp
    ld a, [c]
    ld c, $f6
    ld c, $ea
    ld e, $fa
    ld [hl-], a
    jr c, @-$2d

    jp hl


    ld de, $01e9
    pop de
    dec b
    add sp, $04

Call_051_5d4d:
    ret nc

    inc b
    ld [$d404], a
    ld [bc], a
    xor c
    ld [bc], a
    push de
    ld [bc], a
    cp a
    ld bc, $43df

jr_051_5d5b:
    ld bc, $05ff
    ld [bc], a
    ld a, [de]
    rst $20
    inc b
    rst $38
    ld [$ff44], sp
    nop
    ld b, e
    ld bc, $07ff
    pop af
    rst $38
    and d
    ld e, a
    ld d, a
    xor d
    xor d
    ld d, a
    ld h, c
    ld [bc], a
    add b
    ret nz

    nop
    ld b, h
    jr nz, jr_051_5d5b

    rlca
    ret nz

    ld b, b
    sbc b
    sbc b
    inc [hl]
    inc h
    ld [hl], d
    ld b, d
    ld b, e
    cp $82

jr_051_5d87:
    add hl, bc
    ld a, h
    add h
    cp c
    ld e, c
    ld [hl+], a
    ld [c], a
    rst $00
    ld b, h
    rst $00
    ld b, l
    ld b, e
    adc a
    adc d
    ld e, $0f
    inc c
    rrca
    dec c
    rrca
    ld c, $0e
    inc c
    dec c
    ld [$1012], sp
    dec d
    db $10
    db $eb
    ldh [$78], a
    sbc a
    db $fd
    add [hl]
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    and c
    rst $28
    sub b
    rst $38

jr_051_5db3:
    sub b
    rst $30
    ld b, [hl]
    ld [$15ff], sp
    rst $28
    rra
    rrca
    ei
    inc a
    ldh a, [$78]
    ret nz

    db $fc
    add b
    cp $00
    cp [hl]
    ld b, c
    ld e, c
    and [hl]
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld l, a
    dec c
    inc bc
    inc bc
    inc c
    inc c
    jr nc, jr_051_5e07

    rst $08
    rst $08
    jr nc, @+$32

    ld b, b
    ld b, b
    add b
    add b
    ld h, c
    dec b
    adc a
    rrca
    rst $38
    jr nc, @+$01

    ret nz

jr_051_5de7:
    ld b, [hl]
    rst $38
    nop
    rlca
    inc bc
    ei
    inc b
    or a
    ld c, b
    ld a, [hl]
    sub b
    cp $45
    db $10
    rst $38
    jp $e0d5


    jr nz, jr_051_5d87

    rst $28
    sub h
    rst $10
    ld l, d
    db $eb
    ld d, [hl]
    push de
    dec hl
    pop hl
    rra
    ldh a, [$cf]

jr_051_5e07:
    cp b
    daa
    call c, $7e93
    ld d, c
    ld e, a
    ld [hl], b
    ccf
    and b
    ccf
    jr nz, jr_051_5db3

    db $10
    sbc a
    jr nc, jr_051_5de7

    jr z, @+$11

    ret z

    ld l, a
    dec bc
    ldh a, [$f0]
    ld c, $0e
    ld bc, $e001
    ldh [rNR23], a
    jr jr_051_5e2e

    ld b, $c4
    nop
    dec c
    inc d
    add b

jr_051_5e2e:
    ldh [$60], a
    ld hl, sp+$18
    cp $06
    rst $38
    inc bc
    ld hl, sp+$04
    ld hl, sp-$7c
    ret c

    ld h, h
    inc c
    ld [de], a
    rrca
    rrca
    nop

jr_051_5e41:
    inc bc
    ld h, c
    ldh [$27], a
    ldh a, [$60]
    or $18
    cp $1f
    rst $30
    rra
    di
    rra
    pop af
    rra
    add sp, $1f
    ld hl, sp+$0f
    rst $30
    rrca
    ld sp, hl
    add [hl]
    ld a, h
    ret nz

    ld a, a
    and e
    ld a, h
    sbc h
    ld [hl], h
    add h
    db $f4
    inc b
    call nz, $e204
    ld [bc], a
    jp nc, $aa02

    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld [hl], e
    jp $3d01


    ld bc, $2020
    ld [hl+], a
    db $10
    inc bc
    sub b
    ld [$0848], sp
    ld [hl+], a
    jr z, jr_051_5e7e

jr_051_5e7e:
    inc b
    inc h
    inc d
    dec bc
    adc b
    sbc b
    ld e, b
    ld a, b
    ld a, b
    ld l, b
    ld e, b
    ld c, b
    cp h
    and h
    ld a, d
    ld a, [$0123]
    inc de
    ld [bc], a
    ld [bc], a
    jp nz, $fc02

    call nz, $2838
    db $10
    db $10
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_051_5e41

    jr nz, jr_051_5ec3

    ret nz

    ret nz

    ld [hl], c
    rst $38
    db $ec
    ld [hl], h
    inc bc
    ld bc, $0203
    ld [bc], a
    ld [hl+], a
    inc bc
    ldh [$2b], a
    ld [bc], a
    inc bc
    dec b
    ld b, $0a
    dec c
    dec c
    ld a, [bc]
    rrca
    db $10
    rra
    jr jr_051_5efe

    jr nz, jr_051_5f00

    ld b, b
    ld h, a

jr_051_5ec3:
    ld e, b
    ld b, e
    ld a, h
    inc sp
    inc a

jr_051_5ec8:
    cpl
    jr c, jr_051_5ee0

    ld a, [hl+]
    dec hl
    inc [hl]
    dec [hl]
    dec hl
    dec de
    dec d
    rra
    db $10
    rrca
    ld [$0c0f], sp
    dec bc
    inc c
    dec b
    rlca
    inc bc
    inc bc
    db $ec
    add hl, hl

jr_051_5ee0:
    ldh [$39], a
    jr nz, jr_051_5f44

    di
    sub a
    ld [$c0ff], sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld c, a
    cp a
    or b
    ld [hl], c
    ld [bc], a
    jp Jump_051_57d4


    ret nz

    ld b, a
    and b
    ld l, a
    add c
    ld a, a
    add b
    ld a, a

jr_051_5efe:
    and b
    ld e, a

jr_051_5f00:
    ld d, b
    xor a
    and b
    ld e, a
    ret nc

    cpl
    and b
    rst $18
    ret nz

    ccf
    jp nz, $943d

    ei
    ld [$d575], a
    ld a, [hl+]
    ld [$d415], a
    dec hl
    add sp, -$69
    ld [hl], e
    ld c, a
    jr c, jr_051_5f54

    db $ec
    dec h
    ldh [$3b], a
    ld h, b
    ldh [$d0], a
    jr c, jr_051_5ec8

    ld h, a
    ld [hl-], a
    rst $30
    nop
    rst $28
    inc bc
    rst $38
    ld b, $ff
    dec bc
    db $fc
    rla
    ld sp, hl
    ld l, $f3
    ld e, h
    rst $10
    ld e, b
    sbc $b0
    db $fc
    dec b
    ld hl, sp+$00
    ld sp, hl
    inc b
    ld hl, sp+$02
    db $fc
    nop
    rst $38

jr_051_5f44:
    inc bc
    ldh a, [rNR10]
    ldh [rSC], a
    pop af
    nop
    rst $38
    nop
    rst $38
    inc d
    ld [$57a8], a
    ld d, h
    xor e

jr_051_5f54:
    ld hl, $66df
    cp $88
    ld hl, sp+$70
    ld [hl], b
    db $ec
    daa
    ld bc, $8080
    ld b, e
    ld b, b
    ret nz

    nop
    add b
    ld [hl+], a
    and b
    ldh [$27], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    jr jr_051_5fb3

    inc l
    add h
    ld l, h
    inc h
    call z, $8454
    inc b
    inc d
    ld b, h
    inc [hl]
    ld [$0ae6], sp
    ld b, $0a
    ld c, $08
    sbc [hl]
    inc d
    cp h
    jr jr_051_5fc2

    jr nz, jr_051_5fec

    jr nz, @-$1e

    ld b, b
    ret nz

    add b
    add b
    db $ec
    ld a, d
    adc b
    nop
    ld [hl], l
    inc c
    inc b
    rlca
    dec b
    ld b, $20
    ld h, b
    ld hl, sp-$68
    rlca
    rst $38
    add b
    rst $38
    nop
    add [hl]
    nop
    reti


    ld [$73b2], sp
    inc d
    rst $10

jr_051_5fad:
    ret z

    ld b, a
    jp $a24f


    add [hl]

jr_051_5fb3:
    nop
    jp hl


    adc b
    ld bc, $0400
    adc a
    ld [hl], h
    ld c, h
    jr c, @+$3a

    add a
    ld bc, $032e

jr_051_5fc2:
    or e
    ld [hl], a
    add hl, hl
    rst $20
    add e
    ld bc, $0c3a
    inc b
    rst $38
    inc de
    db $fc
    ld h, a
    ld hl, sp-$51
    or c
    ld e, $a3
    inc e
    xor $f0
    add h
    ld bc, $0f4b
    nop
    ld d, $42
    ld [hl], $06
    ld [c], a
    ld [bc], a
    ld [bc], a
    dec bc
    dec b
    rlca
    sbc l
    ld a, [bc]
    cp [hl]
    inc e
    inc a
    ld h, c

jr_051_5fec:
    dec bc
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $106f
    rla
    jr z, jr_051_605f

    ld [$0039], sp
    ld a, e
    inc b
    ld [hl], l
    ld a, [bc]
    dec hl
    inc d
    ld e, $64
    add hl, bc
    ldh [rP1], a
    ldh a, [rP1]
    ret nc

    jr nz, jr_051_5fad

    ld d, b
    ld b, b
    and b
    ld b, e
    add b
    nop
    dec c
    stop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [$08]
    add sp, $10
    ret nc

    jr z, jr_051_6041

    ld d, b
    ld h, a
    inc de
    inc e
    nop
    ld a, $00
    inc a
    ld [bc], a
    ld a, [$3404]
    ld a, [bc]
    ld a, $00
    ld a, [hl]
    nop
    ld l, d
    inc d
    ld d, h
    jr z, jr_051_605f

    db $10
    ld h, l
    inc d
    stop
    inc b
    nop
    ld a, [hl+]
    nop
    ld d, l

jr_051_6041:
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    xor d
    nop
    stop
    ld b, b
    nop
    stop
    and d
    add $89
    and d
    sbc e
    and h
    sbc l
    nop
    xor c
    and h
    sbc l
    nop
    ld b, d
    rst $00
    xor c
    inc bc
    nop

jr_051_605f:
    ld hl, $5000
    add h
    adc a
    inc bc
    xor b
    nop
    stop
    add l
    ld [bc], a
    sub b
    ld bc, $b30e
    add a
    ld [bc], a
    sbc b
    ld a, [bc]
    stop
    ld [bc], a
    nop
    ld c, b
    nop
    dec d
    nop
    ld a, [bc]
    nop
    inc d
    add h
    add e
    and d
    cp l
    and h
    add l
    nop
    add hl, hl
    and [hl]
    cp a
    rst $38
    ld h, e
    inc b
    rlca
    rrca
    db $10
    stop
    ld [hl+], a
    jr nz, jr_051_6096

    ld [$0318], sp

jr_051_6096:
    rlca
    ld h, l
    ldh [rNR50], a
    ld bc, $0301
    ld [bc], a
    ld b, $07
    nop
    rrca
    inc d
    rra
    ld [$0b0f], sp
    rrca
    ld d, $1f
    ld a, [hl+]
    ld a, $24
    ld a, $5c
    ld a, [hl]
    ld a, a
    ld a, h
    rra
    inc e
    dec e
    ld e, $17
    ld e, $1b
    rra
    dec b
    rrca
    dec bc
    rrca
    dec c
    jp $0081


    dec b
    ld [hl], l
    ldh [rNR44], a
    add b
    ret nz

    ld [hl+], a
    ld [hl+], a
    dec d
    rla
    dec c
    rrca
    ld b, $07
    add d
    jp Jump_051_6342


    sub c
    pop af
    adc c
    ld a, c
    ld b, a
    cp h
    add e
    ld a, [hl]
    ld bc, $38ff
    rst $38
    call nz, $7aff
    add a
    rla
    dec hl
    ld e, $03
    rla
    xor e
    add e
    add e
    rra
    ei
    rlca
    ld d, h
    xor a
    ld hl, sp+$0c
    ld d, b
    cp b
    ei
    db $fc
    sub c
    sbc c
    add hl, bc
    dec c
    rlca
    rlca
    sub a
    sub a
    adc a
    rst $18
    rst $38
    rst $38
    ld a, a
    ld a, a
    cpl
    ld e, a
    ld e, a
    ld b, c
    dec sp
    inc h
    rra
    rra
    ld h, a
    ldh [$35], a
    ld [$1408], sp
    inc e
    dec d
    dec e
    and [hl]
    cp [hl]
    xor h
    cp [hl]
    call z, Call_051_48fc
    db $fd
    add hl, de
    ei
    scf
    ei
    db $db
    rst $30
    cp a
    rst $30
    ld e, l
    rst $38
    dec hl
    rst $38
    dec d
    cp $2c
    ld hl, sp+$50
    ld a, [$f0b8]
    ld d, b
    ld a, [$f0f8]
    db $fc
    ld a, [c]
    rst $30
    ld hl, sp+$1d
    ld a, [$1e2d]
    ld a, a
    rrca
    rst $18
    ccf
    ld c, [hl]
    rst $08
    adc $de
    and e
    ret


    inc hl
    rst $38
    inc bc
    ldh a, [$f8]
    ret nz

    ldh [rNR43], a
    ret nz

    nop
    call nz, $d185
    rrca
    inc b
    inc c
    db $10
    ld [hl-], a
    ld b, b
    ld b, c
    add c
    add c
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    jr c, jr_051_619c

    ld a, h

jr_051_6165:
    cp $2b
    rst $38
    dec e
    ccf
    rst $38
    rst $28
    rra
    ld a, a
    rlca
    rla
    xor e
    dec a
    inc bc
    rla
    xor c
    ld a, a
    ld bc, $a957
    db $fd
    inc bc
    ld d, a
    xor e
    ei
    rlca
    ld l, a
    sbc a
    rst $38
    rst $38
    rra
    ccf
    rrca
    rra
    ld [hl+], a
    rrca
    ld [bc], a
    ld e, a
    sbc a
    rst $18
    inc hl
    rst $38
    ld [$3d38], sp
    jr nc, jr_051_61a4

    ldh a, [rNR10]
    ldh [$60], a
    add b
    db $d3
    nop
    ld d, [hl]

jr_051_619c:
    inc b
    add b
    add b
    ret nz

Jump_051_61a0:
    ldh [$f0], a
    add h
    add l

jr_051_61a4:
    ld bc, $e0e0
    inc hl
    ldh a, [$08]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    ldh [$fc], a
    add d
    adc e
    dec h
    ld hl, sp+$04
    db $fc
    call c, $e4fc
    db $ec
    add a
    sbc l
    inc b
    jr nc, @-$06

    add b
    add b
    nop
    adc b
    rst $00
    rlca
    db $ec
    rst $00
    ld [bc], a
    add a
    xor e
    inc bc
    ld [bc], a
    inc bc
    add l
    add e
    rlca
    inc bc
    rlca
    and h
    rrca
    ld [$b00c], sp
    jr jr_051_6165

    nop
    add [hl]
    ld [$fc16], sp
    jr z, @-$06

    ld e, d
    ldh a, [$b0]
    ldh a, [$5a]
    and e
    ld bc, $0b2c
    ldh a, [$f0]
    ld hl, sp-$51
    rra
    rlca
    rlca
    xor e
    inc bc
    ld bc, $a903
    ld [hl+], a
    ld bc, $a902
    ld bc, $8401
    or e
    ld bc, $1faf
    adc c
    ld bc, $0426
    ld bc, $0403
    inc b
    nop
    ld [hl+], a
    ld [$0c00], sp
    and [hl]
    ld bc, $173b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_051_623a

    db $10
    db $10
    ld a, [bc]
    ld a, [bc]
    dec b
    rlca
    add l
    add a
    ld h, [hl]
    ld b, e
    ld [hl], d
    ld h, e
    jp c, $8df3

    ld sp, hl
    add a
    ld a, l
    add a
    nop
    ld l, b
    add a
    nop
    add b
    inc bc
    sbc b
    sbc h
    inc c
    ld c, $83
    rst $28
    ld h, l

jr_051_623a:
    ld bc, $0909
    ld b, e
    ld d, $1e
    ld [$bea4], sp
    xor h
    cp h
    ret


    db $fc
    ld c, d

jr_051_6248:
    ld sp, hl
    dec e
    adc d
    nop
    or l
    add a
    nop
    ret nc

    inc bc
    ld c, $9f
    sbc [hl]
    cp [hl]
    add e
    nop
    call c, $180f
    jr c, @+$46

    ld b, h
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld b, $02
    inc e
    inc c
    ld [hl], b
    jr nc, jr_051_6248

    ld h, b
    rst $38
    ld [hl], l
    dec bc
    rlca
    rlca
    jr @+$21

    jr nz, @+$41

    ld b, b
    ld a, a
    inc a
    ld a, a
    inc bc
    inc bc
    ld h, c
    ld de, $0101
    ld b, $07
    ld [$001f], sp
    cpl
    nop
    ld c, a
    ld b, a
    ld e, a
    dec e
    db $fd
    ld [hl-], a
    di
    ld h, h
    ld h, a
    ld b, e
    ld [$120f], sp
    nop
    inc de
    db $10
    dec d
    jr nz, jr_051_62c0

    jr nz, @+$3f

    ld bc, $417f
    ld a, a
    inc bc
    ld a, a
    ld [bc], a
    cp $82
    cp $85
    ld b, e
    db $fd
    add h
    ld [bc], a
    db $fc
    ld b, h
    ld a, h
    ld b, e
    ld c, b
    ld a, b
    ld b, e
    jr z, jr_051_62e8

    ld bc, $1010
    ld l, a
    inc hl
    ld bc, $4de0
    nop
    inc bc
    ld [bc], a
    inc bc
    add d
    add e
    ld [hl], d
    di

jr_051_62c0:
    ld c, $ff
    ld [bc], a
    rst $38
    dec b
    rst $38
    adc e
    rst $38
    ld d, l
    ld a, a
    ld [$1dff], a
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    inc sp
    rst $38
    call $91ff
    rst $38
    ld hl, $03ff
    rst $38
    rlca
    rst $38
    rrca
    ld sp, hl
    rra
    ldh a, [$7f]
    ldh [$df], a
    ret nz

    sub e
    sub b

jr_051_62e8:
    ld sp, $0151
    ld bc, $4000
    jr nz, jr_051_6320

    rra
    rra
    rlca
    rrca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ld b, b
    ld hl, $0f20
    jr jr_051_6306

Jump_051_62ff:
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld b, $04

jr_051_6306:
    jp $2300


    ld [de], a
    ld [$210f], sp
    ccf
    ld b, d
    ld a, [hl]
    add h
    db $fc
    add h
    xor h
    add hl, bc
    ld e, c
    ld a, [bc]
    ld [$f714], a
    jr @+$01

    jr jr_051_6364

    rst $38
    db $10

jr_051_6320:
    ld [$ff3a], sp
    ld d, l
    rst $38
    xor e
    rst $38
    rst $30
    rst $38
    xor $22
    rst $38
    ld b, $f8
    rst $38
    sbc $ff
    ld c, a
    rst $38
    ld c, [hl]
    ld b, h
    rst $38
    inc h
    nop
    ld [bc], a
    ld b, h
    rst $38
    add e
    dec c
    add c
    cp e
    add c
    rst $38
    ret nz

Jump_051_6342:
    ld l, e
    ld b, b
    ld d, a
    ld b, b
    ld a, a
    ldh [$3f], a
    jr nz, jr_051_638a

    ld b, e
    or b
    sbc a
    ld b, e
    ld a, b
    rrca
    ld [bc], a
    db $fc
    rlca
    cp $83
    nop
    adc d
    dec b
    pop bc
    rst $38
    ld [hl], b
    ld [hl], a
    rrca
    cp a
    ld h, d
    ld bc, $f0f0
    and e

jr_051_6364:
    nop
    jr nz, jr_051_6383

    rrca
    rrca
    jr nc, jr_051_63aa

    ret nz

    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    ld bc, $06af
    cp $1c
    db $fc
    ld a, a
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    ld a, $ff

jr_051_6383:
    pop bc
    ld c, b
    rst $38
    nop
    inc bc
    ldh [rIE], a

jr_051_638a:
    inc a
    rst $38
    call nz, $9800
    ld bc, $81fe
    and h
    nop
    sub e
    rrca
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld c, d
    push af
    inc [hl]
    db $eb
    ld a, [hl+]
    push af
    ld b, e
    ccf
    ldh [rLYC], a

jr_051_63aa:
    rra
    ldh a, [rTMA]
    adc a
    ld hl, sp-$31
    ld a, e
    rst $38
    db $fc
    rst $38
    add l
    nop
    ld de, $0f02
    ld [hl], b
    rst $30
    jp $09d7


    ld bc, $06ff
    cp $18
    ld hl, sp+$60
    ldh [$80], a
    add b
    ld h, c
    inc bc
    rst $38
    rst $38
    nop
    rst $28
    and l
    add c

jr_051_63d0:
    ldh [rNR42], a
    ccf
    rst $38
    ldh [$e0], a
    jr c, jr_051_63d0

    ld b, $ae
    ld bc, $00df
    rst $28
    nop
    ld e, a
    nop
    cp a
    ret nz

    rst $38
    ldh a, [$3f]
    cp $0f
    pop hl
    ld bc, $80c0
    ld b, b
    ret nz

    ld b, b
    jp nz, $e323

    ld [hl+], a
    ld [c], a
    ld b, e
    ld [de], a
    ld a, [c]
    rla
    sub c
    pop af
    ld d, c
    pop af
    ld a, [$fc2a]
    inc c
    ld hl, sp+$08
    db $fc
    inc b
    db $ec
    inc c
    db $f4
    inc d
    ld a, [c]
    ld h, d
    ld [$d582], a

jr_051_640d:
    ld bc, $01eb
    and l
    nop

jr_051_6412:
    ld l, d
    rlca
    ld [hl], b
    ld hl, sp+$00
    db $e4
    jr c, jr_051_6412

    ret nz

    ret nz

    ld l, c
    inc b
    ret nz

    ret nz

    jr nc, jr_051_6412

    inc c
    and h
    nop
    dec de
    adc c
    sub l
    ld b, $c0
    ret nz

    jr nz, jr_051_640d

    db $10
    ldh a, [$08]
    and h
    nop
    add hl, de
    dec bc
    add d
    cp $e1
    rst $38
    add hl, sp
    ccf
    dec h
    daa
    inc hl
    inc hl
    ret nz

    ret nz

    ld a, e
    rst $38
    ld h, l
    inc c
    ld bc, $0603
    rlca
    inc b
    inc c
    inc e
    inc a
    ld a, [hl]
    ld b, d
    ld c, a
    add c
    rst $08
    ld b, h
    add c
    rst $38
    inc bc
    ld a, [hl]
    ld b, d
    inc a
    inc a
    add h
    sbc c
    ld c, $01
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$080c], sp

Call_051_6464:
    ld [$1c10], sp
    jr @+$19

    inc a
    inc hl
    ld b, e
    ccf
    jr nz, jr_051_647a

    inc sp
    jr nz, jr_051_64a3

    jr nz, jr_051_648d

    db $10
    rra
    jr jr_051_647f

    rrca
    ld [bc], a

jr_051_647a:
    inc bc
    push bc
    sbc [hl]
    inc b
    nop

jr_051_647f:
    ld bc, $0606
    nop
    ld [hl+], a
    ld [$0403], sp
    inc b
    inc bc
    inc bc
    ld [hl], c
    dec b
    ld a, h

jr_051_648d:
    db $fc
    db $e3
    rst $38
    inc e
    rra
    ld b, e
    ld [bc], a
    inc bc
    add hl, hl
    ld bc, $0617
    rlca
    jr jr_051_64bb

    ld h, b
    ld a, a
    add b
    cp a
    nop
    ld a, a
    nop

jr_051_64a3:
    cpl
    nop
    ld e, a
    nop
    xor a
    inc bc
    ld e, h
    rlca
    ld hl, sp+$0f
    ldh a, [$3e]
    pop bc
    ld b, e
    rst $38
    ld bc, $ff46

jr_051_64b5:
    nop
    inc d
    rrca
    ldh a, [rIE]
    nop

jr_051_64bb:
    rst $38
    add b
    rst $38
    ld [hl], b
    ld a, a
    inc a
    ccf
    jp nz, $01c7

    add hl, de
    inc bc
    inc sp
    inc c
    inc c
    jr nc, @+$32

    or e
    rst $18
    inc c
    ld bc, $0303
    inc b
    sbc a
    sbc [hl]
    ld [hl], a
    db $f4
    ld h, e
    db $e3
    jr nz, jr_051_64bb

    jr nc, jr_051_6521

    ldh a, [rNR10]
    ld [bc], a
    ld c, $fe
    ld bc, $ff4a
    nop
    ld d, $38
    rst $00
    cp $01
    rst $28
    jr nc, jr_051_64b5

    ld c, b
    and a
    and b
    db $e3
    db $e4
    and e
    db $e4
    and a
    add sp, -$32
    pop af
    ld hl, sp+$07
    ldh [$9f], a
    nop
    ld c, [hl]
    rst $38

Call_051_6500:
    nop
    inc c
    add b
    cp a
    add b
    rst $10
    ld b, b
    ld l, e
    jr nz, jr_051_653f

    jr jr_051_6526

    ld b, $07
    ld bc, $d2cc
    ld bc, $8080
    ld b, l
    ret nz

    ld b, b
    ld bc, $8080
    call z, $03f2
    ldh a, [$0c]
    db $fc
    ld [bc], a

jr_051_6521:
    adc h
    rst $20
    ld b, e
    add b
    ld a, a

jr_051_6526:
    adc l
    db $d3
    ld c, $10
    rst $38
    inc c
    rst $28
    inc bc
    db $d3
    ld b, b
    call z, $e720
    db $10
    ldh a, [$08]
    ld hl, sp+$06
    add [hl]
    xor l
    inc bc
    rlca
    rst $38
    ld hl, sp-$08

jr_051_653f:
    db $ec

Jump_051_6540:
    add hl, hl
    jp $07f4


    ld h, b
    pop hl
    ld hl, $11e1
    pop af
    ld a, [bc]
    ei
    ld b, e
    ld b, $ff
    ld [bc], a
    ld [bc], a
    rst $38
    ld bc, $ff4c
    nop
    dec b
    pop hl
    rst $38
    dec c
    rra
    ld [bc], a
    ld [bc], a
    dec h
    ld bc, $c205
    jp nz, $fc3c

    ret nz

    ret nz

    ld a, a
    inc c
    inc c
    inc c
    ld [de], a
    ld e, $22
    ld l, $22
    ld a, $42
    ld e, [hl]
    ld b, d
    ld a, [hl]
    inc b
    ld b, e
    cp h
    add h
    nop

jr_051_6579:
    db $fc
    ld b, e
    inc b
    ld a, h
    ld b, a
    ld [$13f8], sp
    ld a, [bc]
    ei
    adc a
    db $fd
    rrca
    ld sp, hl
    rrca
    pop af
    ld c, $f2
    ld c, [hl]
    or $9f
    pop hl
    rst $38
    add c
    cp $c2
    inc a
    inc h
    ld b, e
    inc e
    inc d
    nop
    ld [$b6d4], sp
    adc c
    nop
    sub b
    ld bc, $0ff7
    ld b, e
    db $fc
    rst $38
    inc bc
    jr c, @+$01

    ret nz

    rst $38
    adc e
    nop
    and h
    adc c
    nop
    ldh [$0b], a
    rst $30
    ld c, b
    rst $38
    add b
    rst $38
    inc c
    rst $38
    jr jr_051_6579

    ld [hl], b
    cp $c1
    adc b
    nop
    or $00
    rst $38
    xor a

jr_051_65c3:
    ld bc, $1294
    ld bc, $8101
    add c
    ld b, c
    pop bc
    ld h, d
    db $e3
    ld [hl+], a
    db $e3
    ld [de], a
    di
    inc c
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc bc
    ld c, l
    rst $38
    nop
    ld h, d
    inc bc
    jr nz, @+$22

    ld d, b
    ld d, b
    ld b, h
    sub b
    or b
    nop
    ldh a, [rSCX]
    db $10
    ld [hl], b
    ld c, e
    db $10
    ldh a, [rP1]
    nop
    ld b, h
    ldh [rNR41], a
    add hl, bc
    inc l
    db $ec
    inc a
    db $f4
    inc a
    db $e4
    jr c, jr_051_65c3

    cp b
    ret c

    ld b, e
    cp h
    call nz, $f807
    ld [$90f0], sp
    ld [hl], b
    ld d, b
    jr nc, jr_051_6639

    xor a
    ld bc, $c396
    nop
    ld c, a
    sub e
    nop
    inc c
    adc c
    sbc a
    ld bc, $0c0c
    sub c
    and c
    rst $38
    db $ec
    dec l
    dec d
    ld bc, $0201
    rlca
    rrca
    ld [$101f], sp
    add hl, de
    ld h, $2f
    inc [hl]
    ccf
    jr z, jr_051_66ab

    ld c, c
    ld a, [hl]
    ld b, [hl]
    inc a
    inc h
    jr jr_051_664b

    sub c
    and [hl]
    dec d
    dec b
    dec c
    ld [de], a

jr_051_6639:
    ld [de], a
    rlca
    ld hl, $203f
    rra
    db $10
    rrca
    ld [$180f], sp
    rla
    inc d
    rlca
    inc h
    inc hl
    inc h
    ld h, a

jr_051_664b:
    ld h, b
    ld b, e
    ld d, a
    ld [hl], b
    rra
    ld [hl], e
    ld [hl], b
    inc hl
    jr nz, @+$20

    rla
    rrca
    inc c
    rlca
    rlca
    rra
    jr @-$1f

    ldh [rIF], a
    sub a
    ld [$1058], sp
    or b
    and b
    ld h, b
    ldh a, [rNR10]
    ld a, c
    adc c
    ld a, [$32cb]
    inc sp
    ld [bc], a
    inc bc
    ld [hl+], a
    ld bc, $021e
    ld [bc], a
    inc bc
    rrca
    ld c, $31
    ccf
    ld c, b
    ld h, a
    ld b, b
    ld a, a
    ccf
    ccf
    jr jr_051_66ba

    ld c, h
    call nz, $043c
    db $fd
    dec b
    ei
    add a
    rst $38
    add b
    cp [hl]
    ret nz

    rst $38
    nop
    cp $00
    ld b, l
    rst $38
    nop
    inc b
    db $eb
    inc e
    db $e3
    inc h
    di
    ld b, h
    ld [hl], h
    db $d3
    ld d, $e7
    jr nc, @+$01

    nop
    ld a, a
    add b

Call_051_66a5:
    ld a, [c]
    dec c
    rst $38
    ldh a, [rIE]
    nop

jr_051_66ab:
    sbc a
    ldh [rLCDC], a
    ld c, a
    ld b, a
    ld h, b
    ld b, b
    ld e, a
    or d
    pop af
    ld [$ff44], sp
    inc b
    rrca

jr_051_66ba:
    jp $e4ff


    inc a
    ld hl, sp+$18
    ld h, b
    and b
    ret nz

    ld b, b
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ld h, l
    ldh [$33], a
    ld h, b
    ldh [$f0], a
    db $10
    ld [hl], b
    sub b
    and b
    ld [hl], b
    sub b
    db $10
    ld b, b
    ld [$08a8], sp
    ld d, b
    inc b
    db $ec
    inc e
    cp $22
    rst $38
    ld b, c
    ld a, a

jr_051_66e4:
    add c
    rst $38
    add c
    cp $82
    db $fc
    ld b, h
    ld hl, sp+$38
    ldh a, [rNR10]
    ld h, b
    ldh [$e0], a
    jr nz, jr_051_66e4

    jr @+$01

    ld b, a
    ld a, [hl]
    pop bc
    or a
    ld a, b
    daa
    and [hl]
    sub c
    ld [hl], c
    ld [$43f8], sp
    ld b, h
    db $fc
    dec c
    add h
    db $fc
    ld c, $fa
    cp $e1
    add hl, de
    rla
    rrca
    add hl, de
    ld h, $3f
    jr nz, jr_051_6752

    jp Jump_051_7b00


    ld a, c
    dec c
    ld b, $06
    rrca

jr_051_671b:
    add hl, bc
    ld l, a
    ld l, c
    ei
    sbc l
    db $fd
    sub e
    rst $38
    sub c
    ld e, a
    ld h, a
    ld b, e
    ld a, a
    ld c, c
    rlca
    sbc d
    and [hl]
    inc b
    sbc h
    ld [$3048], sp
    or b
    and e
    nop
    adc [hl]
    ld l, a
    dec b
    ret nz

    ret nz

    jr nz, jr_051_671b

    ld h, b
    ldh [$83], a
    sub a
    add e
    nop
    ld [hl], b
    ld b, $1f
    rla
    inc c
    rrca
    ld b, $07
    inc bc
    and e
    sub h
    inc c
    dec b
    ld b, $0a
    inc c
    dec d

jr_051_6752:
    jr jr_051_6769

    inc e
    ld [de], a
    rrca
    ld de, $0f06
    ld b, e
    ld [bc], a
    inc bc
    add l
    nop
    ret nz

    ld [de], a
    rst $38
    add b
    jp c, $8fbd

    call nz, $821f

jr_051_6769:
    cp a
    add c
    ld a, a
    add c
    ccf
    ld b, d
    inc e
    ccf
    ld h, d
    pop af
    adc b
    add [hl]
    nop
    reti


    ld l, e
    ld [bc], a
    inc h
    ld l, h
    ld a, [hl]

Jump_051_677c:
    ld b, e
    sub d
    cp $08
    sbc [hl]
    ld a, a
    ld [hl], c
    cp a
    pop de
    cp [hl]
    adc $9e
    and d
    add e
    rst $38
    ld h, c
    inc de
    rlca
    rrca
    rrca
    db $10
    ld d, $2f
    ccf
    ld hl, $273b
    rra
    ld de, $1f0e
    ld [$040e], sp
    dec b
    inc bc
    inc bc
    ld l, c
    add e
    rst $38
    rla
    sbc a
    sub a
    adc h
    adc a
    add $c7
    ld b, e
    jp $c4c7


    cpl
    ld l, b
    ccf
    or c
    ld a, $42
    ld a, h
    adc h
    ldh a, [$f0]
    ld bc, $0201
    inc bc
    adc e
    rst $38
    ld bc, $8df2
    add l
    nop
    jp z, $040f

    inc c
    ld e, $3a
    ld a, [hl]
    ld b, l
    ld e, a
    cp l
    db $fd
    add a
    ld [$7f9f], a
    ld b, [hl]
    ld e, $3d
    adc c
    ld bc, $0590
    add e
    add e
    ld b, a
    call nz, Call_051_682f
    adc c
    nop
    ld h, b
    rlca
    daa
    jr nz, jr_051_67ee

    ld b, b
    ld h, a
    ld d, b
    cp $00
    ld c, l
    rst $38

jr_051_67ee:
    nop
    rst $38
    db $ec
    add hl, hl
    inc de
    inc bc
    inc bc
    inc b
    dec c
    db $10
    ld e, $20
    ccf
    nop
    ld a, a
    ld d, b
    ld l, a
    ld l, d
    ld d, l
    dec a
    ld [hl+], a
    ld c, $19
    inc bc
    rlca
    db $ec
    inc sp
    ldh [rNR41], a
    rrca
    rrca
    add hl, bc
    db $10
    inc sp
    jr nz, jr_051_6851

    ld b, b
    ld l, [hl]
    ld e, a
    inc sp
    jr nc, @+$1b

    db $10

jr_051_6819:
    rrca
    ld c, $01
    inc bc
    ld c, $0f
    jr nc, jr_051_6860

    add b
    rst $18
    nop
    xor a
    ld [$105f], sp
    cp a
    jr nz, @+$01

    jr nz, jr_051_6873

    rst $38
    ld b, b

Call_051_682f:
    ld bc, $ffc0
    ld b, e
    ld b, b
    ld a, a
    ld b, e
    inc h
    ccf
    dec b
    inc de
    rra
    ld [$060f], sp
    rlca
    ld b, l
    ld [bc], a
    inc bc
    ld bc, $0101
    ld a, e
    jr jr_051_6880

    jr c, jr_051_6819

    rst $00
    ld a, l
    add d
    db $fd
    ld h, d
    ld hl, sp+$17

jr_051_6851:
    ldh a, [$08]
    ldh [rNR10], a
    rst $00
    rst $30
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    and b
    ld a, a
    db $fd
    nop

jr_051_6860:
    ld b, l
    rst $38
    nop
    ld b, e
    ccf
    nop
    dec b
    rst $38
    add b
    rst $38
    ld h, c
    rst $38
    ld e, $48
    rst $38
    nop
    ld b, e
    ld b, b
    rst $38

jr_051_6873:
    nop
    add b
    ld b, h
    rst $38
    nop
    ld [$ffc0], sp
    ccf
    rst $38
    ld [$10f8], sp

jr_051_6880:
    ldh a, [$e0]
    cp d
    nop
    dec a
    rrca
    ld [hl], b
    ld [hl], b
    sbc h
    adc h
    rst $38
    inc bc
    db $fd
    ld c, $5f
    or b

jr_051_6890:
    ccf
    ld b, b
    rra
    inc hl
    sbc a
    cp h
    call nz, $01db
    inc de
    ld hl, sp+$47
    rst $38
    nop
    ld b, e
    rst $08
    nop
    inc bc
    rst $38
    jr nz, @+$01

    ret nz

    ld c, d
    rst $38
    nop
    ld b, e
    ld [hl+], a
    rst $38
    nop
    inc e
    db $f4
    jr z, jr_051_6890

    ld h, e
    inc bc
    add b
    ret nz

    ldh [rNR41], a
    jp $1101


    db $10
    cp b
    ret z

    ldh a, [$30]
    ldh [rNR41], a

jr_051_68c1:
    add b
    ret nz

    nop
    add b
    ldh [$e0], a
    jr jr_051_68c1

    ld b, $fe
    ld bc, $01ca

jr_051_68ce:
    add hl, bc
    add hl, bc
    jr nz, @+$01

    ld de, $0afe
    db $fd
    rlca
    rst $38
    ld [bc], a
    cp $43
    inc b
    db $fc
    nop
    ld [$00a4], sp
    and l
    nop
    ret nz

    and [hl]
    nop
    xor e
    db $ec
    add hl, sp
    inc de
    ret nz

    ret nz

    jr nz, jr_051_68ce

jr_051_68ee:
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld a, [hl+]
    sub $52
    xor [hl]
    xor h
    ld d, h
    ld hl, sp+$08
    jr nc, jr_051_68ee

    db $ec
    ld hl, $0101
    ld bc, $008b
    add h
    ld h, c
    inc d
    inc bc
    rlca
    add hl, bc
    ld a, [de]
    daa
    cpl
    add hl, de
    ld c, b
    ld a, a
    ld c, b
    ccf
    inc h
    dec sp
    inc h
    rra
    ld c, b
    ld c, c
    ld d, b
    ld sp, $9390
    ld b, h
    and b
    rst $38
    ld b, e
    ld a, a

jr_051_6922:
    ld d, b
    dec b
    ccf
    jr z, jr_051_6922

    db $fc
    rra
    rst $38
    adc d
    nop
    and $83
    ld bc, $1090
    ld h, b
    ld d, b
    sub b
    ldh a, [rOBP0]
    ld hl, sp+$48
    ldh a, [$90]

jr_051_693a:
    ld a, b
    adc b
    ld hl, sp+$48
    call c, $fc24
    inc h
    ld b, e
    cp $12
    nop
    xor $a5
    cp a
    inc bc
    ld c, b
    ld a, a
    rst $38
    ldh [$8b], a
    ld bc, $0245
    nop
    nop
    nop
    adc e
    ld bc, $00a4
    nop
    ld [hl+], a
    rst $38
    inc b
    ld a, a
    rst $38
    ccf
    rst $38
    ld c, $ca
    ld bc, $025d
    ret nz

    rst $38
    add b
    ld c, b
    rst $38
    nop
    ld bc, $0101
    inc hl
    ld [bc], a
    nop
    dec b
    ld b, h
    inc b
    rlca
    ld bc, $0203
    adc e
    nop
    or b

jr_051_697c:
    ld c, $03
    inc bc
    inc [hl]
    inc [hl]
    rra
    ld c, b
    cp a
    adc a
    ld a, b
    ld e, b
    pop hl
    jr nz, jr_051_697c

    ld b, b
    db $fd
    rst $00
    nop
    sub [hl]
    inc bc
    ret nc

    rst $30
    ld hl, sp+$0f
    adc l
    ld [bc], a
    ld [hl], l
    ld l, b
    jr jr_051_693a

    or b
    ret z

    ld c, b
    db $fc
    or h
    ld a, d
    ld l, d
    ld [hl], a
    ld de, $09fe
    rst $38
    ld [$09fe], sp
    rst $38
    ld de, $12fe
    ld hl, sp+$2c
    ld a, a
    rst $38
    ret nz

    adc d
    ld [bc], a
    and l
    adc h
    nop
    ldh [rSC], a
    rst $38
    ldh [$1f], a
    adc h
    ld bc, $0240
    rst $38
    ld [hl], b
    adc a
    rst $38
    ld [hl], a
    ldh [$2d], a
    ld bc, $0601
    ld b, $0c
    ld [$101e], sp
    rra
    ld de, $223e
    ld a, $2e
    ld a, $3c
    ld b, a
    ld h, h
    ld h, a
    ld l, h
    ccf
    ld l, [hl]
    dec l
    ccf
    jr c, jr_051_6a20

    ld a, [hl+]
    dec hl
    ld c, [hl]
    ld c, a
    ld b, h
    ld b, a
    ld h, h
    ld b, a
    ld l, b
    ld b, a
    ld [hl], $23
    ld a, $23
    rra
    ld de, $0c0f
    rlca
    rlca
    ld b, l
    ld [bc], a
    inc bc
    call nc, $e0b2
    dec h
    ld bc, $0602
    ld [$1808], sp
    db $10
    db $fc
    ldh [$3f], a
    jr nz, jr_051_6a1f

    nop
    ld a, a
    ld a, b
    add a
    add [hl]
    dec c
    ld bc, $0013
    dec a
    jr c, jr_051_6a63

    ld b, h
    cp a
    ld [bc], a
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp-$01
    nop
    rst $38

jr_051_6a1f:
    ld [bc], a

jr_051_6a20:
    ei
    ld b, $46
    rst $38
    nop
    rrca
    inc hl
    rst $38
    rrca
    db $fc
    cp $f1
    rst $38
    add c
    cp $e6
    ld a, b
    ld hl, sp-$20
    ldh [$c0], a
    ret nz

    ld [hl], c
    rrca
    ldh [$f0], a
    jr jr_051_6a48

    ld c, $03
    dec b
    ld [bc], a
    xor c
    nop
    ld d, a
    nop
    rst $38
    nop
    cp $00

jr_051_6a48:
    ld b, h
    db $fc
    nop
    ld [de], a
    add b
    cp $60
    rst $38
    ld a, b
    sub l
    or $82
    db $e3
    pop af
    rst $20
    cp $e7
    ld a, l
    or $7f
    ld hl, sp+$3f
    ldh [rSCX], a
    ld a, a
    ret nz

    db $10

jr_051_6a63:
    rst $38
    add b
    ld sp, hl
    nop
    ldh a, [rP1]
    pop hl
    nop
    ldh [rP1], a
    rst $30
    add b
    ld a, a
    ld h, e
    inc e
    rra
    ld b, $a3
    pop de
    dec b
    ld bc, $0201
    ld [bc], a
    inc b
    ld [bc], a
    ld b, h
    inc b
    rlca
    nop
    inc bc
    jp $0e89


    nop
    ld h, b
    ld [hl], b
    ld [$828c], sp
    ld [bc], a
    jp $ff01


    ld bc, $009e
    ld b, $00
    ld b, l
    inc bc
    nop
    dec b
    rlca
    nop
    dec bc
    nop
    rst $10
    nop
    ld c, e
    rst $38
    nop
    dec c
    ld sp, hl
    nop
    ldh a, [rSB]
    ld a, [$7f01]
    ld bc, $23df
    ld a, l
    dec l
    ldh a, [$30]
    daa
    ret nz

    ldh [$37], a
    add b
    add b
    ldh [$e0], a
    ldh a, [rNR10]
    ld a, b
    ld [$6818], sp
    jr @-$16

    cp b
    ld c, b
    ld hl, sp+$18
    ld hl, sp-$04
    inc e
    inc e
    ld c, $1e
    ld c, $0a
    dec bc
    add hl, bc
    adc e
    adc c
    ld d, a
    ld e, c
    inc hl
    ccf
    and a
    ccf
    ld d, a
    rra
    cp [hl]
    rla
    db $fc
    ld [de], a
    ld hl, sp+$26
    cp h
    ld d, h
    ld hl, sp+$18
    ret c

    jr c, @-$3e

    db $10
    adc b
    ld [$0848], sp
    xor b
    ld [$f043], sp
    db $10
    ld bc, $20e0

jr_051_6af2:
    dec h
    ldh [$8d], a
    nop
    sbc d
    dec b
    jr c, jr_051_6b39

    ld c, d
    ld c, e
    ld c, [hl]
    ld c, a
    ld b, e
    add h
    add a
    dec c
    ret z

    add a
    sub $83
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ccf
    jr nz, jr_051_6b2c

    db $10
    rrca
    rrca
    add l
    nop
    ld c, b
    sub a
    nop
    ld d, b
    add hl, bc
    inc e
    db $10
    rst $38
    ldh [rNR22], a
    nop
    rlca
    nop
    ld a, a
    ld a, b
    sub d
    nop
    and d
    inc bc
    ld [bc], a
    ld b, $01
    xor e
    add h
    nop
    cp c

jr_051_6b2c:
    ld [bc], a
    rst $38
    nop
    cp $86
    nop
    rst $18
    add hl, bc
    ld h, b
    add b
    di
    add b
    ld a, a

jr_051_6b39:
    ld h, c
    inc e
    rra
    inc bc
    inc bc
    add l
    ld bc, $0100
    add e
    inc bc
    add a
    ld bc, $0508
    rst $38
    inc bc
    ld e, l
    dec l
    ld [hl], b
    jr nc, jr_051_6af2

    nop
    ld a, [$0185]
    ld a, [hl-]
    add l
    ld bc, $e050
    ld hl, $c98b
    dec hl
    ld l, c
    rla
    add hl, de
    inc de

jr_051_6b60:
    rra
    rst $08
    rrca
    cpl
    rrca
    sbc $0f
    db $fc
    ld a, [bc]
    ld hl, sp+$16
    call c, $f824
    jr jr_051_6b60

    db $10
    ret z

    ld [$04c4], sp
    ld b, h
    inc b
    and h
    inc b
    call nc, Call_051_4304
    ld hl, sp+$08
    ld [$90f0], sp
    ldh [$e0], a
    jr c, jr_051_6bc4

    ld l, $2f
    ld c, b
    adc d
    nop
    dec [hl]
    add e
    nop
    add b
    nop
    ld b, $48
    rst $38
    nop
    ld bc, $ff23
    rst $38
    ld a, [hl]
    db $10
    inc bc
    rlca
    inc c
    inc c
    inc de
    ld [$2924], sp
    jr z, jr_051_6c12

    ld l, c
    or $af
    di
    sbc a
    ld l, h
    ld l, h
    db $ec
    ld e, a
    inc d
    ret nz

    ret nz

    ldh [rNR41], a
    ld [hl], b
    sbc b
    and $67
    ldh a, [$90]
    db $fc
    sub b
    rst $38
    ldh [$7f], a
    ld h, b
    rra
    db $10
    rrca
    inc c
    inc bc
    db $dd
    nop

jr_051_6bc4:
    rra
    ld [hl+], a
    ld bc, $0223
    inc hl
    inc b
    nop
    nop
    ld b, e
    ld a, [bc]
    ld [$080c], sp
    db $10
    ld de, $3d38
    ld a, a
    ld b, e
    sbc c
    add b
    rst $18
    and h
    ld a, a
    ld a, a
    ld a, a
    dec bc
    inc bc
    inc bc
    dec c
    inc c
    db $10
    db $10
    jr nz, jr_051_6c48

    ld hl, sp-$40
    ccf
    ld b, b
    ld b, e
    rst $18
    jr nz, @-$1e

    ld hl, $03fe
    cp a
    ld a, h
    rst $00
    call nz, $0405
    ld b, $04
    dec b
    inc b
    ld [bc], a
    ld [$080d], sp
    ld b, $16
    ld bc, $0e11
    ld c, $0b
    rrca
    ld d, $17
    ld bc, $2025
    inc hl
    ld b, b
    ld b, b
    add b

jr_051_6c12:
    add b
    ld l, b
    ld [de], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    add hl, bc
    inc bc
    add hl, bc
    dec b
    ld de, $120a
    ld b, [hl]
    ld [de], a
    xor h
    inc d
    ret c

    sbc b
    ldh [$e0], a
    add l
    nop
    dec de
    ld [$1f0f], sp
    add hl, sp
    ccf
    ld b, l
    ld h, a
    ld b, a
    ld b, e
    add a
    ld b, e
    add b
    adc a
    jr @-$3e

    ld l, [hl]
    ld h, b
    ld e, l
    ld d, d
    ld e, a
    add hl, de
    ld e, [hl]
    ld sp, $4047
    ld h, a
    ld [hl], b
    ld [hl], a
    ld a, c

jr_051_6c48:
    cp a
    xor [hl]
    db $fd
    ld [hl], a
    ld h, e
    dec de
    ld a, e
    rlca
    cp $01
    ld b, a
    rst $38
    nop
    ld b, e
    ld a, a
    add b
    rlca
    cp a
    ld b, b
    ld a, [$7505]
    ld a, [bc]
    cp $01
    call nz, $148b
    ret nz

    ccf
    ld a, $c7
    pop bc
    ld a, a
    rst $38
    adc $fd
    ld a, [hl-]
    ccf
    add hl, bc
    rst $08
    add hl, bc
    ccf
    add hl, bc
    rrca
    add hl, de
    rra
    add hl, hl
    cpl
    ld b, e
    ld c, c
    ld c, a
    ld b, e
    adc c
    adc a
    ld b, e
    add hl, bc
    rrca
    ld bc, $0e0e
    xor l
    nop
    inc de
    dec bc
    ld hl, sp-$04
    cp $ff
    rst $18
    rst $28
    ld a, a
    add a
    rst $38
    rlca
    ei
    rlca
    ld b, h
    rst $38
    inc bc
    inc b
    ld h, e
    sbc e
    and a
    sbc l
    and l
    ld b, e
    rst $38
    dec b
    inc de
    cp [hl]
    jp z, Jump_051_7cfc

    db $fc
    inc a
    rst $30
    ccf
    ret nz

    ld a, a
    dec b
    cp $c4
    ccf
    rst $38
    ld [bc], a
    cp $03
    rst $38
    ld [bc], a
    jp $0a81


    db $fc
    ld [bc], a
    xor h
    ld d, h
    ld d, h
    xor h
    cp h
    ld b, h
    db $fc
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $0a
    and $ba
    ld a, [de]
    rst $00
    db $fd
    inc a
    ei
    ld h, b
    call z, $f0c0
    ld b, a
    ld b, b
    ret nz

    inc de
    ld h, b
    ldh a, [$58]
    ret c

    add [hl]
    add h
    dec c
    ld a, [bc]
    ld [$150f], sp
    ld a, [de]

jr_051_6ce3:
    ld [de], a
    dec d
    dec e
    ld [de], a
    rrca
    ld [$0707], sp
    adc e
    nop
    and h
    ld bc, $c080
    and e
    adc a
    rrca
    add b
    add e
    ret nz

    call nz, $8988
    adc h
    adc d
    rlca
    add h
    dec bc
    ld c, $0f
    add hl, bc
    ld b, $07
    and a
    nop
    cp l
    rrca
    pop hl
    ld [hl], c
    ld a, [hl]
    adc a
    cp $01
    ld a, [hl]
    add c
    ld [$d515], a
    ld a, [hl+]
    db $eb
    push de
    ld a, $3e
    or l
    nop
    db $ec
    dec b
    jr nz, jr_051_6d3e

    db $10
    db $10
    ld [$c508], sp
    nop
    rl l
    inc bc
    ld bc, $0305
    dec de
    dec b
    ld d, [hl]
    xor d
    xor d
    ld d, [hl]
    ld d, h
    xor h
    xor d
    ld d, [hl]
    ld e, $fa
    db $e4
    db $fc
    cp h
    ld b, h
    ld hl, sp-$08
    or c
    nop

jr_051_6d3e:
    or e
    ldh [rNR44], a
    ret nz

    ld b, b
    ld [hl], b
    jr nc, @+$3a

    ld c, b
    jr @-$76

    jr z, jr_051_6ce3

jr_051_6d4b:
    ld c, h
    and h
    call nc, $fcec
    db $f4
    ld b, h
    ld a, h
    add b
    db $fc
    ret nz

    cp h
    inc a
    inc b
    ld a, h
    inc b
    cp h
    inc b
    ld a, h
    inc b
    db $fc
    add h
    jr jr_051_6d4b

    ldh a, [$f0]
    db $ec
    dec sp
    rst $38
    ld l, h
    inc hl
    ld bc, $0246
    inc bc
    ld [hl+], a
    ld a, a
    ld a, [bc]
    ld b, b
    ld l, $3f
    rla
    rra
    dec bc
    rrca
    inc b
    rlca
    inc bc
    inc bc
    ld [hl], d
    ld h, $01
    ret nc

    add c
    ld [$0201], sp
    ld b, $08
    jr jr_051_6da8

    jr nz, jr_051_6dca

    ld b, b
    and e
    sub [hl]
    dec b
    ld b, c
    nop
    xor d
    nop
    push af
    nop
    ld b, e
    rst $38
    nop
    ldh [$2f], a
    ld a, a
    add b
    rst $28
    ld [hl], b
    ld a, [hl]
    adc l
    rst $18
    db $e3
    or $f9
    ei
    db $fc
    dec [hl]
    cp $c1

jr_051_6da8:
    rst $38
    ccf
    ccf
    dec a

jr_051_6dac:
    inc hl
    add hl, sp
    ld b, l
    ld [hl], b
    ld c, b
    ld h, c
    sub e
    ldh a, [$94]
    ld hl, sp-$68
    pop af

jr_051_6db8:
    sub b
    ld l, d
    sbc b
    ld a, h
    ret


    rla
    db $ed
    inc bc
    cp $9d

jr_051_6dc2:
    ld a, l
    add sp, $19
    and h
    inc c
    db $fc
    db $fc
    ld h, a

jr_051_6dca:
    dec b
    ret nz

    ret nz

    nop

jr_051_6dce:
    jr nz, jr_051_6dd0

jr_051_6dd0:
    ld b, b
    and e
    db $ed

jr_051_6dd3:
    ldh [rSTAT], a
    nop
    ld b, b
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_051_6dac

    jr nc, jr_051_6dce

    jr jr_051_6db8

    jr z, jr_051_6dc2

    inc e
    cp d
    ld l, [hl]
    ld d, [hl]
    push de
    ld [hl], l
    jp z, $c03f

    rst $38
    ret nz

    sbc a
    ldh [$ef], a
    db $10
    rst $38
    jr nz, jr_051_6dd3

    ld d, b
    rst $38
    ld [hl], b
    or a
    ld a, b
    cp $bb
    rst $10
    cp b
    db $fd
    add e
    ld e, $e1
    ld a, b
    ld d, a
    inc c
    add a
    dec sp
    rlca
    ld [hl], $78
    or d
    call z, $86fd
    ei
    add a
    ld a, [$7086]
    ld c, [hl]
    inc d
    ld b, h
    jr jr_051_6e4f

    adc a
    nop
    dec hl
    ldh [$3d], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    ld b, $05
    ld c, $09
    dec c
    dec bc
    dec e
    inc de
    dec de
    rla
    ld [$f9f7], a
    rlca
    add h
    ld a, a
    ld h, d
    sbc [hl]
    ld h, d
    cp [hl]
    ret nc

    ld e, a
    pop af
    ld a, a
    cp c
    ld a, a
    ld hl, sp+$3f
    ret nc

    ccf
    ldh a, [rIF]
    ld h, c
    rst $18
    add c
    rst $38
    inc bc
    cp $0f
    db $fc
    inc a
    ld a, [c]
    cp [hl]
    pop bc
    ld d, $01
    rrca

jr_051_6e4f:
    ld bc, $0214
    rlca
    inc bc
    ld c, $87
    ld c, l
    ld d, l
    add hl, hl
    add hl, hl
    ld h, a
    dec c
    inc c
    inc c
    inc e
    inc [hl]
    ld d, h
    ld l, h
    inc h
    sbc h
    ld d, h
    inc a
    or h
    ld a, h
    ld [hl], h
    db $fc
    ld b, l
    add sp, -$08
    ld b, e
    ret nc

    ldh a, [$03]
    and b
    ldh [rLCDC], a
    ret nz

    xor e
    nop
    ld b, h
    dec bc
    add b
    add b
    ldh [$e0], a
    ldh a, [$90]
    ldh a, [rNR10]
    ret c

    ld [$08a8], sp
    add e
    add e
    add hl, bc
    ld d, b
    db $10
    sub b
    db $10
    jr nz, jr_051_6ec6

    ret c

    add sp, $38
    ret z

    ld b, e
    ld a, h
    add h
    dec b
    inc a
    add $8a
    ld [c], a
    ld a, h
    ld a, h
    ld h, c
    dec b
    sbc [hl]
    ld a, h
    db $eb
    ld a, [de]
    and l
    dec c
    adc c
    nop
    sub [hl]
    add e
    nop
    ret nc

    add hl, de
    ld a, $c1
    ld e, b
    ld h, a

jr_051_6eaf:
    jr @-$3f

    rra
    rlca
    inc e
    nop
    jr c, jr_051_6ebb

    ld a, $04
    ei
    rra

jr_051_6ebb:
    ld [c], a
    cp $fa
    add [hl]
    ldh a, [$8e]
    and h
    adc h
    ld a, b
    ld a, b
    ld h, c

jr_051_6ec6:
    inc b
    sbc a
    ld a, a
    add sp, $19
    and h
    adc d
    xor a
    dec bc
    ld d, [hl]
    inc c
    cp a
    ld c, $7b
    rra
    ld [c], a
    cp $f0
    adc [hl]
    and [hl]
    adc [hl]
    add e
    rst $08
    add e
    nop
    db $10
    dec b
    rra
    ld a, $2f
    ld sp, $1f16
    or c
    ld bc, $6258
    add [hl]
    nop
    ld e, a
    inc de
    cp a
    ret nz

    rst $28
    jr nc, jr_051_6eaf

    call z, $e3de
    push af
    ei
    ld a, d
    db $fd
    sbc a
    cp $67
    ld a, [hl]
    add hl, de
    rra
    rra
    rla
    add l
    nop
    ld a, d
    add l
    nop
    ld hl, sp+$01
    ld [bc], a
    inc bc
    ld b, e
    rlca
    dec b
    nop
    dec c
    ld b, [hl]

jr_051_6f12:
    dec bc
    rrca
    nop
    dec de
    ld b, h
    rla
    rra
    inc c
    xor $f7
    cp $07
    add l
    ld a, a
    ld hl, $c1ff
    rst $38
    jp $4ffe


    adc b
    ld bc, $a527
    xor l
    ld c, e
    and b
    ldh [rSB], a
    jr nz, jr_051_6f12

    ld b, l
    ld b, b
    ret nz

    and l
    nop
    ld b, d
    rst $38
    ld h, e
    ld [$0101], sp
    inc bc
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rrca
    ld b, e
    rrca
    rra
    ld a, [bc]
    rra
    ccf
    ld e, $3f
    ld a, $3f
    ccf
    inc a
    inc a
    ld a, h
    inc a
    dec h
    ld a, b
    dec b
    ld a, a
    ld a, a
    db $fc
    ld a, h
    ld hl, sp-$08
    dec h
    ldh a, [rSB]
    ld hl, sp-$08
    inc hl
    rst $38
    ld bc, $fcfc
    ld [hl+], a
    ld hl, sp+$22
    ld a, b
    ld [hl+], a
    ld a, h
    nop
    inc a
    inc h
    ccf
    ld bc, $1f1f
    and l
    and b
    ld bc, $0707
    inc hl
    inc bc
    nop
    ld bc, $d183
    add e
    db $d3
    ld b, e
    inc bc
    ld [bc], a
    ld h, c
    dec bc
    ld hl, sp+$70
    cp $fc
    rst $38
    cp $f1
    pop hl
    ret nz

    ret nz

    add b
    add b
    ld h, a
    inc bc
    ldh [$e0], a
    dec e
    dec e
    push bc
    and a
    rlca
    ld a, [hl]
    ld a, [hl]
    add a
    add [hl]
    ld b, $06
    rlca
    ld b, $84
    cp b
    inc b
    ld bc, $1e1f
    ldh [$e0], a
    and e
    and h
    add hl, bc
    ld bc, $0100
    ld bc, $0606
    inc c
    ld [$3030], sp
    add l
    or l
    rlca
    ld bc, $8601
    add h
    db $fd
    ret z

    cp $f8
    ld b, h
    rst $38
    ldh a, [rTMA]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, a
    rst $38
    rra
    ld b, h
    rst $38
    rlca
    nop
    inc bc
    ret


    jp z, Jump_051_46e0

    ld b, b
    ld b, b
    jr nz, jr_051_6ffa

    db $10
    db $10
    ld [$1408], sp
    inc b
    ld a, [hl+]
    ld [bc], a
    ld d, $02
    db $eb
    pop bc
    push af
    pop af
    cp $fc
    rst $18
    ld c, $af
    inc bc
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    rst $10
    nop
    rst $28
    add b

jr_051_6ffa:
    ld [hl], a
    ld h, b
    cp a
    jr @+$59

    rlca
    cp e
    jr @+$77

    ld h, c
    xor e
    add c
    ld d, a
    ld [bc], a
    xor [hl]
    inc b
    ld e, l
    ld [$103a], sp
    ld d, l
    ld b, b
    xor d
    add b
    ld d, l
    nop
    xor e
    ld bc, $0155
    xor d
    ld [bc], a
    rst $30
    ld [bc], a
    cp $43
    inc b
    rst $38
    ld a, [bc]
    ld [$10ff], sp
    rst $38
    db $e3
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    add c
    ld l, a
    jp Jump_051_5800


Call_051_7030:
    ld [hl+], a
    ld [bc], a
    inc de
    nop
    inc b
    nop
    inc b
    inc b
    sbc a
    sbc a
    ld a, a
    ld [hl], c
    rst $38
    ld h, b
    rst $38
    or e
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    and l
    nop
    xor l
    ld b, e
    rlca
    rst $38
    ld [bc], a
    rst $00
    rst $38
    scf
    ld b, e
    rst $38
    cpl
    ld [$2bbf], sp
    ld a, a
    ld c, e
    rst $38
    ld c, c
    ld a, a
    ld c, c
    cp a
    ld b, e
    adc c
    rst $38
    add hl, bc
    inc de
    ld a, a
    inc de
    rst $38
    inc de
    ld a, a
    inc hl
    cp a
    inc hl
    ld a, a
    ld b, e
    ld h, a
    rst $38
    ld d, $a7
    rst $38
    ld e, a
    db $fd
    ld b, h
    ld hl, sp-$78
    ld hl, sp+$08
    rrca
    inc bc
    rra
    rrca
    cpl
    rlca
    daa
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    add b
    nop
    add l
    nop
    and d
    dec d
    ld b, $06
    jr jr_051_70a7

    jr nc, @+$22

    ld b, b
    ld b, b
    ret nz

    add b
    ldh a, [$e0]
    ld hl, sp-$08
    call nz, $82fc
    cp $82
    and $81
    rst $20
    ld b, e
    pop bc
    rst $38
    inc b
    pop hl
    rst $38

jr_051_70a7:
    db $e3
    rst $38
    cp $a5
    db $eb
    ld d, $fc
    db $fd
    db $fd
    cp $fe
    ld hl, sp-$08
    cp $fc
    rst $38
    rst $38
    rst $30
    db $e3
    rst $38
    pop bc
    rst $38
    push bc
    rst $38
    jp $cbff


    rst $38
    rst $20
    ld h, $ff
    ld b, $fe
    rst $38
    db $fc
    rst $28
    add sp, $0f
    ld [$00a3], sp
    sub b
    ld bc, $80c0
    adc d
    nop
    ld l, e
    inc b
    nop
    ld a, h

jr_051_70da:
    jr nc, jr_051_70da

    cp $43
    ccf
    rra
    inc bc
    rra
    rrca
    rrca
    inc bc
    ld [hl], e
    add e
    nop
    ret z

    ld [bc], a
    ld b, b
    ld b, b
    ret nz

    call z, $0b84
    add b
    add b
    sbc b
    sbc b
    db $fc
    db $e4
    call z, $ccc4
    add h
    db $fc
    add h
    add e
    ld bc, $437c

Call_051_7100:
    ldh a, [rNR10]
    ld bc, $20e0
    add l
    and e
    rst $38
    ld h, c
    rlca
    inc bc
    inc bc
    rlca
    inc b
    dec b
    rlca
    dec b
    ld b, $43
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $c373
    sub [hl]
    dec b
    inc c
    rrca
    inc de
    ccf
    ld h, $3d
    ld b, e
    cpl
    jr c, jr_051_7128

jr_051_7128:
    rlca
    ld b, h
    inc e
    rla
    ld b, e

jr_051_712d:
    dec bc
    ld c, $05
    dec b
    rlca
    nop

jr_051_7133:
    inc bc
    ld [bc], a
    inc bc
    call $159c
    add b
    ret nz

    jr nc, jr_051_712d

    adc h
    db $fc
    ld h, d
    cp $f1
    ccf
    ld sp, hl
    rra
    ld a, h
    adc a
    cp a
    call z, $e85f
    inc sp
    ld a, a
    rla
    rra
    ld b, e
    dec bc
    dec de
    rrca
    rla
    rra
    scf
    ccf
    ld e, c
    ld a, l
    ld e, c
    ld a, a
    or [hl]
    rst $38
    daa
    rst $38
    ld [hl], h
    call z, $8cf4
    ld b, e
    ld hl, sp+$08
    dec e
    ld a, b
    adc b
    jr c, jr_051_7133

    cp b
    ld c, b
    call c, $ec24
    inc d
    ld a, [$fe06]
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp-$78
    ld a, b
    ret z

    cp b
    add sp, $48
    ld a, b
    inc [hl]
    inc a
    inc c
    inc c
    ld h, l
    inc de
    inc bc
    inc bc
    ld b, $05
    dec b
    rlca
    dec bc
    rrca
    adc e
    adc a
    di
    rst $38
    add c
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld b, e
    or $f7
    inc hl
    rst $38
    rrca
    ld a, [$f8fb]
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    call c, Call_051_7fe3
    ld a, a
    dec sp
    dec sp
    ld a, [hl+]
    dec sp
    ld b, l
    add hl, hl
    add hl, sp
    nop
    nop
    ld b, h
    jr nc, @+$12

    ld bc, $2020
    ld [hl], c
    dec bc
    ld a, $3f
    pop bc
    rst $38
    add hl, sp
    rst $38
    sbc $e2
    cp [hl]
    jp nz, $867a

jr_051_71ca:
    ld b, e
    db $f4
    inc c
    dec de
    ret z

    jr c, @+$32

    ldh a, [$c0]
    ret nz

jr_051_71d4:
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nc, jr_051_71ca

    jr c, jr_051_71d4

    ld c, h
    db $f4
    ld c, [hl]
    ld a, [c]
    push hl
    ei
    ld [c], a
    db $fd
    ld h, b
    rst $38
    ret nc

    rst $18

jr_051_71e8:
    sub b
    sbc a
    ld b, e
    adc b
    adc a
    rrca
    ld [$53cf], sp
    rst $18
    ld d, b
    rst $18
    adc b
    rst $08
    add h
    rst $00
    add d
    jp $4141


    ld bc, $ec01
    inc sp
    ld bc, $8080
    add l
    pop hl
    ld b, e
    jr nz, jr_051_71e8

    nop
    ret nc

    ld b, h
    ldh a, [rNR10]
    ld b, l
    ld [$43f8], sp
    inc b
    db $fc
    ld bc, $fc84
    ld b, e
    ld b, h
    ld a, h
    ld b, e
    inc h
    inc a
    ld b, e
    inc d
    inc e
    ld bc, $0c0c
    add l
    nop
    db $10
    rlca
    rlca
    rlca
    ld [$1b0f], sp
    rra
    dec d
    ld e, $43
    dec l
    ld a, [hl-]
    ld b, e
    ld e, [hl]
    ld [hl], c
    ld a, [bc]
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], e
    inc e
    ld [hl], h
    jr z, jr_051_7275

    jr nz, jr_051_7277

    nop
    ld b, e
    jr jr_051_7243

jr_051_7243:
    ld [bc], a
    ld [$0800], sp
    ld h, a
    add a
    nop
    ld h, b
    ld de, $fbeb
    dec hl
    ei
    rst $30
    rst $38
    rst $30
    ld a, a
    ei
    ccf
    ei
    ld a, a
    ret


    ld c, l
    add l
    add a
    add d
    add e
    ld h, l
    ld [$ffff], sp
    cp $ff
    ld a, [$f9fb]
    rst $38
    ld b, $22
    rst $38
    add e
    nop
    call z, $c80a
    jr c, jr_051_72a3

    pop af
    add $c7

jr_051_7275:
    ld e, c
    rst $18

jr_051_7277:
    daa
    cp $3f
    ld b, e
    ldh a, [$7f]
    ld b, $fc
    ld h, e
    ld [c], a
    ld h, c
    pop hl
    ret nz

    ret nz

    add hl, hl
    add b
    nop
    nop
    ld b, e
    ret nz

    ld b, b
    ld b, [hl]
    ret nz

    add b
    ld bc, $4040
    ld h, c
    dec bc
    ld [hl], b
    ld [hl], b
    cp b
    ret z

    ld c, b
    ld hl, sp-$1c
    cp h
    call nc, $da3c
    ld l, $43
    cp d
    ld c, [hl]

jr_051_72a3:
    ld [$27f9], sp
    reti


    ld d, a
    sbc c
    sub a
    add hl, bc
    rrca
    nop
    ld b, e
    ld b, $00
    ld [bc], a
    inc b
    nop
    inc b
    ld b, e
    ld e, e
    ld a, a
    dec b
    cp c
    db $fd
    dec h
    rst $38
    db $76
    rst $08
    add l
    nop
    ld a, d
    rlca
    ld sp, hl
    dec a
    ld sp, hl
    ld a, a
    add $47
    add c
    add c
    and a
    ld bc, $052e
    ld h, e
    ld [c], a
    pop hl
    pop hl
    ldh [$e0], a
    adc c
    pop hl
    rst $38
    db $ec
    ld l, a
    ld b, $01
    ld bc, $0702
    ld c, $0f
    rrca
    inc hl
    rra
    inc h
    ccf
    add hl, bc
    ld a, $3f
    inc e
    rra
    inc c
    inc e
    ld c, $0e
    rlca
    rlca
    ld b, e
    ld a, [bc]
    rrca
    inc hl
    rlca
    ld bc, $0303
    ret


    and d
    inc hl
    ld bc, $0a61
    inc bc
    inc bc
    inc e
    rra
    ld h, $7f
    ld h, e
    ld a, a
    ld a, e
    rst $38
    rst $38
    ld b, h
    rst $38
    ei
    ld [$7f7f], sp
    ld [hl], a
    ld a, a
    ld [hl], $3f
    ld d, $1f
    ld b, $4a
    rrca
    ld c, $01
    inc c
    rrca
    ld c, e
    inc c
    rra
    ld bc, $0703
    ld h, a
    ldh [$5d], a
    add e
    jp $fc28


    db $10
    ldh a, [rNR41]
    pop hl
    rst $00
    rst $08
    sbc a
    sbc a
    cp a
    cp a
    db $fd
    db $fd
    ld [hl], a
    ld [hl], a
    ccf
    rst $38
    ccf
    ccf
    ld a, a
    ld a, h
    cp $f9
    rst $30
    ldh a, [$f6]
    sub c
    scf
    ld b, c
    rla
    ld hl, $80b3
    di
    ldh a, [$7b]
    ld [hl], b
    rra
    jr jr_051_738f

    add hl, sp
    rst $08
    ret


    inc [hl]
    rst $30
    add hl, bc
    ld sp, hl
    and d
    cp $99
    rst $38
    add [hl]
    rst $38
    add e
    rst $38
    rlca
    db $fd
    rrca
    ld sp, hl
    ld a, [bc]
    db $fd
    dec b
    ld a, [$fd02]
    nop
    rst $38
    ld [$88ff], sp
    rst $38
    jp z, $f8fc

    ld hl, sp-$1c
    db $fc
    db $e4
    rst $38
    sub $dc
    call z, $c4cc
    call nz, $ccc6
    call z, $cccf
    call z, $d443
    call c, $d303
    sbc $12
    rra
    ld b, e
    ld hl, HeaderManufacturerCode

jr_051_738f:
    rra
    ld e, $c3
    nop
    and l
    rlca
    nop
    ret nz

    db $10
    jr nc, jr_051_739a

jr_051_739a:
    ld [$fefc], sp
    inc hl
    rst $38
    ld bc, $dbdb
    dec h
    rst $38
    ldh [$30], a
    ei
    rlca
    rst $38
    ld bc, $817f
    ld a, [$fe07]
    add d
    ld a, [hl]
    ld b, $7c
    inc b
    ld hl, sp+$04
    db $ec
    inc d
    ld a, b
    ret z

    ld h, b
    and b
    ret nz

    ret nz

    ldh a, [$f8]
    call nc, Call_051_50fe
    ld a, a
    sbc $ff
    ld [hl], c
    ld [hl], c
    push hl
    pop hl
    adc e
    add d
    ld d, a
    ld [bc], a
    cp a
    ld [bc], a
    ei
    ld b, $57
    xor e
    ld a, [hl+]
    rst $10
    ld [bc], a
    ld b, h
    rst $38
    ld bc, $26e0
    ld b, c

jr_051_73dd:
    ccf
    ld de, $090f
    rlca
    ld bc, $45c7
    inc hl
    ld bc, $1023
    ld [hl+], a
    ld a, [bc]
    ld [hl], e
    add d
    ld e, $02
    rrca
    ld [de], a
    ld c, $62
    rra
    inc b
    cp $18
    cp $e1
    push af
    add c
    ei
    rst $38
    ld a, a
    sbc $0e
    ldh a, [$f0]
    nop
    xor c
    nop
    sub [hl]
    ld [hl+], a
    ret nz

    inc bc
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl+], a
    ldh a, [rNR43]
    ret nc

jr_051_7411:
    rlca
    and b
    and b
    ret nc

    ret nc

    ldh a, [$50]
    and b
    and b
    ld l, a
    ldh [$2d], a
    add a
    rst $08
    jr nc, jr_051_7411

    sub l
    ret nz

    ld l, e
    ld b, b
    ccf
    jr nz, jr_051_73dd

    ld l, d
    add sp, $37
    ld b, h
    ld hl, sp-$70
    ldh [$80], a
    ldh [$8c], a
    di
    inc h
    ret c

    nop
    ret z

    nop
    ret z

    inc b
    ret z

    xor b
    rst $00
    rst $00
    ldh [$d0], a
    ldh [$a8], a
    ldh a, [$60]
    rst $38
    ld e, h
    ld e, a
    ld d, e
    di
    ld d, b
    ld d, b
    ld [hl+], a
    and b
    nop
    ldh [rNR44], a
    ret nz

    nop
    ld b, b
    jp nz, $ecdb

    dec h
    ldh [rNR52], a
    inc e
    inc e
    ld [hl+], a
    ld a, [hl-]
    ld c, l
    ld a, a
    ld [hl], a
    ld [hl], a
    ld e, c
    ld e, c
    daa
    daa
    inc e
    inc e
    ld a, d
    ld a, [c]
    rra
    db $10
    cp [hl]
    ld hl, $267a

jr_051_746f:
    ld hl, sp+$38

jr_051_7471:
    cp b
    ld a, b
    ld a, b
    cp b
    jr z, jr_051_746f

    xor b
    ld a, b
    jr z, @+$3a

    nop
    db $10
    db $10
    sub b
    sub b
    ld b, h
    ld d, b
    db $10
    add hl, bc
    or b
    ld d, b
    db $10
    or b
    jr nz, jr_051_748a

jr_051_748a:
    jr nz, jr_051_74ac

    and b
    ld h, b
    ld b, e
    jr nz, jr_051_7471

    ld bc, $c0c0
    db $ec
    inc a
    add hl, bc
    add b
    ld b, b
    ld b, b
    and b
    and b
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    ld hl, sp+$3c
    adc c
    rst $38
    ld a, l
    add hl, de
    ld bc, $0201
    inc bc
    dec b

jr_051_74ac:
    ld b, $04
    rlca
    dec bc
    dec c
    ccf
    jr nc, @+$45

    ld c, h
    adc l
    add d
    adc l
    add e
    ld b, a
    ld b, c
    ld h, a
    ld b, c
    scf
    jr nz, jr_051_74fb

    jr nz, jr_051_7505

    rra
    db $10
    dec d
    rrca
    add hl, bc
    ld c, $0f
    dec bc
    inc c
    rla
    jr jr_051_74ed

    db $10
    ld l, $31
    inc l
    inc sp
    jr nz, jr_051_7514

    ld b, c
    ld a, a
    ld b, d
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, e
    ld b, a
    ld a, h
    ld b, e
    cpl
    jr c, jr_051_74e7

    dec de
    inc e
    add hl, bc
    ld c, $08

jr_051_74e7:
    rrca
    ld l, e
    ld a, [de]
    jr nc, jr_051_7524

    ld b, [hl]

jr_051_74ed:
    ld b, [hl]
    ld h, c
    ld b, c
    jr c, jr_051_7512

    inc e
    db $10
    rrca
    ld [$0407], sp
    dec bc
    ld c, $71

jr_051_74fb:
    ld a, a
    adc a
    ldh a, [$7f]
    add b
    db $fc
    inc bc
    ld h, b
    sbc a
    nop

jr_051_7505:
    ld b, h
    rst $38
    add b
    stop
    rst $38
    add c
    rst $38
    ld b, [hl]
    ld a, [hl]
    jr c, jr_051_7549

    add b

jr_051_7512:
    add b
    ret nz

jr_051_7514:
    ld b, b
    ldh a, [$30]
    ld hl, sp+$78
    add a
    jp $108f


    ld a, a
    add c
    ld a, a
    ld c, $ff
    db $10
    rst $38

jr_051_7524:
    ld h, b
    rst $38
    add b
    rst $38
    ld bc, $06ff
    rst $38
    add b
    ld a, a
    ld b, e
    ret nz

    ccf
    dec b
    add b

jr_051_7533:
    ld a, a
    ld d, b
    xor a
    and b
    ld e, a
    add e
    add e
    add a
    nop
    jr jr_051_753e

jr_051_753e:
    ld bc, $80c4
    dec bc
    ld bc, $8601
    rst $00
    add hl, hl
    ld a, $3f

jr_051_7549:
    inc c
    ld e, $03
    rst $08
    ld bc, $ff44
    nop
    inc b
    add b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld b, e
    ccf
    ldh [rSCX], a
    rra
    ldh a, [rDIV]
    ld a, a
    ldh a, [$9f]
    sub b
    rla
    ld b, h
    db $10
    inc de
    ld bc, $1011
    ld b, e
    ld hl, $0820
    inc hl
    jr nz, jr_051_7533

    ret nz

    ld l, a
    ret nz

    rst $10
    ret nz

    ld l, a
    ld b, e
    ret nz

    ld a, a
    inc bc
    ldh [$df], a
    rst $38
    add b
    ld c, b
    rst $38
    nop
    add hl, bc
    rlca
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    and h
    db $dd
    ld a, [de]
    ret nz

    and b
    jr nz, @-$67

    rla
    rst $08
    ld [$85c3], sp
    rst $20
    add [hl]
    rst $30
    add d
    rst $38
    add d
    ld a, l
    jp $c57b


    push de
    ld [$55ea], a
    push hl
    ld a, [hl-]
    ld a, [c]
    dec c
    ld c, e
    rst $38
    nop
    inc bc
    cp $01
    cp $01
    ld e, b
    rst $38
    nop
    ld d, $3e
    rst $38
    rst $38
    ld a, a
    cp $1d
    cp $0e
    db $fc
    dec c
    db $fc
    and $fc
    dec e
    ld hl, sp+$1a
    ld hl, sp+$3d
    add sp, $3f
    ldh [$7f], a
    ret nz

    add [hl]
    nop
    ld h, [hl]
    ldh [$27], a
    jr nc, @+$4b

    ld c, e
    ld e, h
    add h
    db $fc
    ld [$10fc], sp
    cp $10
    rst $38
    ld [$0ff7], sp
    rst $30
    add hl, bc
    ei
    add h
    rst $38
    add b
    ld a, a
    jp $ccfc


    ldh a, [$30]
    adc b
    inc c
    jp nz, $e002

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    cp $85
    nop
    add [hl]
    ld a, [bc]
    ld b, b

jr_051_75ff:
    rst $38
    inc a
    di
    inc de
    ldh [rNR10], a
    ldh a, [$0c]
    db $fc
    inc bc
    ld b, e
    rst $38
    nop
    ld bc, $30ef
    jp $158f


    ei
    inc c
    rst $38
    jr nc, @-$0f

    jr z, jr_051_75ff

    dec h
    ld b, a
    ld b, h
    jp Jump_051_4343


    ld b, d
    add $45
    push hl
    ld h, $ea
    dec l
    db $ed
    ld a, [hl+]

jr_051_7628:
    ld h, l
    inc bc
    ld a, b
    ld hl, sp+$06
    ld b, $25
    ld bc, $0207
    ld [bc], a
    add h
    inc b
    ld hl, sp+$18
    ldh [$e0], a
    and e
    nop

jr_051_763b:
    ret z

    xor l
    nop
    ld [de], a
    nop
    nop
    ld [hl+], a
    ld b, b
    nop
    jr nz, jr_051_7689

    jr nz, jr_051_7628

    ld b, a
    db $10
    ldh a, [$0a]
    sub b
    or b
    ret nc

    jr c, jr_051_7699

    jr c, jr_051_763b

    ld hl, sp+$28
    ret c

    jr z, jr_051_769b

    db $ec
    inc d
    rrca
    db $fc
    inc b
    cp $02
    cp $12
    cp $c2
    db $fc
    inc h
    ret c

    ret c

    ld b, b
    ret nz

    ret nz

    ld b, b
    jp $9700


    ld bc, $8080
    rst $38
    ld l, c
    add hl, bc
    jr jr_051_768e

    inc [hl]
    inc l
    ld l, d
    ld d, [hl]
    ld d, d
    ld l, [hl]
    ld b, c
    ld a, a
    ld b, e
    add c
    rst $38
    dec e
    sbc d
    rst $38
    cp h
    rst $20
    cp b
    rst $08
    or e

jr_051_7689:
    call z, Call_051_5976
    ld d, h
    ld a, d

jr_051_768e:
    ld e, c
    ld [hl], l
    add hl, sp
    dec [hl]
    inc l
    ld a, [hl-]
    ld d, $19
    dec bc
    inc c
    rrca

jr_051_7699:
    inc c
    dec de

jr_051_769b:
    rla
    ld [de], a
    ld e, $13
    rra
    ld b, e
    ld [$030f], sp
    ld b, $07
    ld bc, $6101
    dec c
    inc e
    inc e
    cpl
    inc sp
    ld a, $23
    ld a, $21
    inc e
    inc de
    rra
    inc de
    inc c
    inc c
    ld l, d
    ldh [rDMA], a
    inc b
    ld c, $0a
    ld a, [bc]
    ld c, $35
    dec sp
    ld a, c
    ld d, a
    ld d, l
    ld a, e
    ret nz

    rst $38
    and b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld h, c
    sbc [hl]
    ccf
    ld b, b
    sbc a
    and b
    sbc [hl]
    and c
    ld a, $41
    ld a, $c1
    nop
    cp [hl]
    add b
    ld d, l
    pop bc
    ld a, $ff
    ret nz

    inc sp
    ccf
    ret c

    rst $38
    scf
    rst $28
    jr nz, @+$01

    or b
    rst $18
    ld a, h
    ld c, a
    rst $38
    jp $e13f


    rrca
    ld a, [c]
    inc bc
    cp $c7
    db $fc
    ccf
    inc a
    rlca
    inc b
    inc bc
    inc bc
    ld l, a
    ldh [rNR51], a
    add b
    add b
    ld b, b
    ret nz

    ld [hl], b

jr_051_770a:
    ldh a, [$0c]
    db $fc
    ld [bc], a

jr_051_770e:
    cp $01
    rst $38
    nop
    rst $38
    ld bc, $e1ff
    rra
    sbc d
    ld h, a
    ld c, $93
    ld h, a
    ld l, e
    ld h, l
    ld l, e
    dec c
    sub d

jr_051_7721:
    jr jr_051_770a

    ld a, [c]
    rrca
    push bc
    dec a
    jr c, jr_051_7721

    ret nz

    ret nz

    ld b, h
    jr nz, jr_051_770e

    ld [de], a
    ldh a, [rNR10]
    ldh a, [$d6]
    or $19
    rst $38
    ret nc

    rst $38
    ld h, h
    cp a
    xor $3f
    ld a, [c]
    ld [hl], e
    pop bc
    ld b, c
    add b
    add b
    ld [hl], l
    ld [$0e0e], sp
    dec [hl]
    dec sp
    ld l, e
    ld d, l
    sub b
    rst $28
    add b
    ld b, h
    rst $38

jr_051_774f:
    nop
    inc bc
    ld h, c
    rst $38
    pop af
    sbc a
    ld b, e
    di
    ld c, $08
    rst $20
    ld e, $c9
    add hl, sp
    jr nc, jr_051_774f

    pop hl
    pop hl
    inc bc
    ld [hl+], a
    ld [bc], a
    ld b, $05
    inc b
    ld b, $04
    dec b
    inc b
    ld [bc], a
    ld b, e
    inc b
    inc bc
    inc c
    ld [bc], a
    add e
    add d
    add l
    add a
    ld a, b
    rst $38
    ld bc, $86ff
    cp $78
    ld a, b
    ld a, e
    daa
    add b
    ld h, c
    dec d
    ret nz

    ldh [$30], a
    db $10
    jr c, jr_051_7790

    db $fc
    inc b
    db $fc
    add h
    cp $ce
    cp c
    ld d, c

jr_051_7790:
    ld sp, hl
    ld de, $21fd
    ld a, a
    ld bc, $06fe
    ld b, e
    ld hl, sp+$08
    inc bc
    db $f4
    inc c
    xor $12
    ld b, e
    reti


    ld hl, $fe03
    ld [c], a
    inc e
    inc e
    ld h, l
    adc c
    nop
    ld [hl], b
    inc c
    inc e
    db $e3
    ld h, e
    rst $38
    ld a, a
    rst $38
    cp $3f
    pop hl
    sbc $39
    scf
    sbc $88
    nop
    add a
    adc l
    nop
    ret nz

    ld bc, $8f72
    add l
    ld bc, $4310
    ld a, [c]
    ld c, $e0
    dec h
    db $e4
    inc e
    ret z

    jr c, jr_051_7800

    pop af
    ldh [$e2], a
    ld [$040c], sp
    inc d
    rlca
    inc h
    cpl
    ld [hl+], a
    ld a, $21
    dec e
    ld [de], a
    dec bc
    inc e
    ld c, $08
    add l
    add h
    adc d
    adc [hl]
    ld [hl], c
    rst $38
    inc bc

jr_051_77ea:
    rst $38
    adc h
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    nop
    adc l
    nop
    db $ec
    add hl, de
    ret nz

    ret nz

    ld h, b
    jr nz, jr_051_77ea

    db $10
    db $ec
    inc e
    add $22
    add [hl]

jr_051_7800:
    ld b, d
    ld c, a
    pop bc
    rst $38
    ld hl, $1a66
    cp [hl]
    ld [bc], a
    ld a, h

Call_051_780a:
    inc b
    ld hl, sp+$18
    ldh [$e0], a
    ld h, a
    ld a, [bc]
    db $76
    ld e, c
    ld d, l
    ld a, d
    ld e, e
    ld [hl], h
    dec sp
    inc [hl]
    cpl
    ld a, [hl-]
    rla
    add h
    nop
    dec hl
    ld a, [bc]
    ld h, c
    sbc [hl]
    cp a
    ld b, b
    rst $18
    jr nz, @-$20

    ld hl, $41fe
    cp [hl]
    add h
    nop
    ld a, e
    add e
    ld bc, $0bb0
    ld l, [hl]
    sub e
    rst $30
    dec bc
    push af
    dec bc
    db $fd
    sub d
    ld a, b
    rst $20
    ld a, [c]
    rrca
    rst $38
    ld l, l
    rrca
    ld bc, $0403
    rrca
    db $10
    inc e
    ld de, $1718
    jr jr_051_784c

jr_051_784c:
    rra
    ld [$040f], sp
    rlca
    ld [hl+], a
    inc bc
    inc b
    ld [bc], a
    rlca
    rlca
    ld [$430c], sp
    rrca
    ld [$070b], sp
    dec b
    jp $a2c3


    and d
    db $d3
    sub d
    di
    sbc [hl]

jr_051_7867:
    ld [hl], a
    ld c, h
    ld b, l
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_051_787b

    rra
    db $10
    ld [$0e0f], sp
    add hl, bc
    rrca
    add hl, bc
    ld d, $12
    inc e

jr_051_787b:
    inc e
    ld h, e
    ldh [rSTAT], a
    jr nz, jr_051_78f1

    ld [hl], b
    ld c, b
    ld a, h
    ld d, h
    ld h, a
    ld e, e
    ld l, a
    ld c, b
    inc l
    jr z, @+$32

    jr z, jr_051_7867

    ldh [$bf], a
    ret nz

    rst $38
    add b
    rst $28
    sub b
    rst $38
    adc b
    ld a, a
    call nz, $e639
    cpl
    ld a, [c]
    rst $38
    ldh a, [$f7]
    ld a, b
    cp $0d
    inc bc
    ld [bc], a
    db $e3
    ld bc, $01f7
    cp $83
    ld a, a
    ld h, d
    rst $18
    ld a, [hl]
    db $eb
    ld e, a
    rst $38
    ld c, c
    ei
    ld e, l
    cp e
    ld e, l
    rst $38
    inc e
    rst $20
    ccf
    ldh [rNR42], a
    ret nz

    ld b, b
    ld b, b
    ret nz

    inc hl
    add b
    ld l, l
    rlca
    ld [hl], b
    ld hl, sp-$04
    ld b, $ff
    ld bc, $013e
    ld c, l
    rst $38
    nop
    ldh [rNR42], a
    ei
    rlca
    ei
    inc c
    rst $38
    db $10
    rst $38
    nop
    db $fd
    inc bc
    rst $18
    ccf
    cp a
    rst $00
    add a
    ld bc, $00e1
    ld a, h
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, l
    ld a, a
    and d
    ld a, $ff
    ld [hl+], a
    db $fd

jr_051_78f1:
    sub h
    di
    adc h
    ld b, e
    rst $38
    add b
    nop
    ld a, [hl]
    ld b, h
    ld b, c
    ld a, a
    rlca
    ld e, l
    ld h, e
    ld [hl-], a
    ld a, $2a
    ld h, $3c
    inc h
    and l
    nop
    ld c, d
    ld h, c
    ldh [$39], a
    inc a
    ld e, $9e
    ld [c], a
    cp $1a
    xor h
    ld h, h
    call c, $b844
    ld c, b
    add sp, $18
    db $f4
    ld e, $f9
    rrca
    ld hl, sp+$09
    ld a, c
    adc b
    cp $09
    ldh a, [$1f]
    ret nc

    ccf
    ldh [rIE], a
    pop bc
    rst $38
    cp $be
    add sp, -$68
    ldh a, [$50]
    ld hl, sp+$3c
    rst $38
    inc sp
    jp hl


    ldh a, [$78]
    ld h, b
    rst $28
    ld [hl], b
    push de

jr_051_793c:
    ld l, d
    set 6, h
    ld sp, hl
    cp $83
    add a
    add c
    add c
    add h
    nop
    ld a, [bc]
    ld [$0301], sp
    ld [bc], a
    rlca
    inc c
    rra
    ld de, $1e0c
    ld a, b
    inc b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    ld b, l
    jr nz, jr_051_793c

    ld bc, $c040
    adc d
    nop
    sub h
    ld c, $80
    ret nz

    ld h, b
    ld [hl], b
    db $10
    sbc b
    ld [$04f8], sp
    call nz, $823c
    ld a, [hl]
    sbc d
    ld h, [hl]
    ld b, e
    cp [hl]
    jp nz, $f801

    add [hl]
    and e
    nop
    ld a, $03
    ldh [$30], a
    add b
    ret nz

    ld h, e
    adc d
    nop
    jr nz, @+$0c

    inc b
    dec sp
    dec sp
    dec h
    dec h
    dec de
    ld [de], a
    ld e, $13
    ld c, $09
    ld b, l
    rrca
    ld [$0743], sp
    inc b
    ld bc, $0203
    add hl, hl
    ld bc, $8a63
    nop
    ld [hl], b
    inc c
    inc de
    xor a
    ld [$4edf], a
    rst $38
    ld c, a
    ld a, e
    set 7, l
    adc c
    rst $38
    add hl, bc
    ld b, l

jr_051_79ae:
    rst $30
    inc c
    dec c
    rst $20
    inc e
    db $eb
    ld a, [de]
    inc de
    ld a, [c]
    db $d3
    ld [hl-], a
    ld [c], a
    inc hl
    ld b, c
    ld b, c
    add c
    add c

jr_051_79bf:
    add e
    or c

jr_051_79c1:
    dec bc
    rst $38
    inc b
    db $eb
    ld a, [$f313]
    rst $38
    inc de
    db $ed
    and a
    sbc l
    ld h, a
    ld b, e
    ld a, [$0106]
    db $f4
    inc c
    ld b, e
    ld hl, sp+$08
    ld c, $e8
    jr @-$6e

    ldh a, [$50]
    jr nc, jr_051_79bf

    jr nz, jr_051_79c1

    ldh [$e9], a
    ld [hl], b
    cp b
    ldh [$af], a
    add h
    ld bc, $0325
    add hl, sp
    ld a, $03
    rlca
    add e
    or c
    rlca
    ld bc, $0d03
    ld e, $17
    jr @+$0a

    rrca
    and l
    ld bc, $088a
    cp [hl]
    jp nz, $8678

    db $fc
    inc b
    add sp, $18
    jr nz, jr_051_79ae

    adc a
    rst $38
    ld h, e
    ldh [$27], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    add hl, bc
    add hl, bc
    jr jr_051_7a2e

    ld hl, $4631
    ld a, a
    ld b, e
    ld a, a
    add a
    db $fc
    adc [hl]
    ld sp, hl
    adc l
    ld a, [$fe85]
    ld b, e
    ld a, [hl]
    ld b, c
    ld a, a
    jr nz, @+$41

    add hl, hl
    cpl
    ld c, a
    ld c, a
    ld c, b

jr_051_7a2e:
    ld c, b
    ld d, c
    ld d, c
    ld b, [hl]
    ld d, a
    jr z, @+$31

    ld b, e
    db $10
    rra
    ld b, e
    jr nz, jr_051_7a7a

    ldh [rNR51], a
    daa
    ccf
    cpl
    jr c, @+$21

    db $10
    inc e

jr_051_7a44:
    db $10
    add hl, sp
    jr nz, jr_051_7a6b

    ld hl, $2727
    inc e
    inc e
    ld bc, $0701
    ld b, $0f
    add hl, bc
    ccf
    jr nc, @+$6f

    ld e, [hl]
    rst $38
    add b
    sbc a
    add b
    ld b, a
    ld b, b
    inc de
    jr nc, jr_051_7a67

    ld c, $01
    ld bc, $036f
    ret nz

    ret nz

jr_051_7a67:
    jr nz, @-$1e

    ld b, e
    db $10

jr_051_7a6b:
    ldh a, [rNR24]
    adc b
    ld hl, sp+$48
    ld hl, sp-$08
    jr c, @-$06

    jr jr_051_7a44

    ld [hl], $bf
    ld b, c
    cp [hl]

jr_051_7a7a:
    jp Jump_051_677c


    inc a
    scf
    xor c
    xor a
    db $eb
    xor $1f
    db $fc
    rlca
    db $fc
    ld b, e
    inc bc
    cp $45
    ld bc, $18ff
    adc l
    di
    sbc $62
    call c, $9c62
    db $e4
    sub b
    ld hl, sp-$1f
    pop hl
    inc bc
    ld [bc], a
    rst $28
    db $ec
    db $fc
    db $10
    ld a, b
    and b
    or b
    ld b, b
    ldh a, [rLCDC]
    ld a, c
    ld b, [hl]
    add b
    rst $38
    dec b
    ld a, a
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    jp $3100


    ld [hl], a
    dec c
    rlca
    rrca
    ld a, $71
    db $fc
    add e
    ldh a, [rIF]
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [$9f]
    ld b, e
    ld hl, sp+$0f
    inc b
    ldh a, [$1f]
    ld [c], a
    ld a, a
    cp b
    ld b, h
    rst $38
    nop
    jr jr_051_7ad3

    rst $38

jr_051_7ad3:
    ld [bc], a
    rst $38
    add l
    cp $66
    ld a, l
    dec a
    ld [hl], $6e
    ld d, e
    rst $10
    xor c
    xor a
    ld d, b
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    cp a
    jp nz, Jump_051_4b85

    rst $38
    nop
    ld [bc], a
    cp $01
    rst $38
    ld a, b
    inc c
    add b
    add b
    ld [hl], b
    ldh a, [$0c]
    db $fc
    rlca
    rst $38
    inc bc
    cp $01

Jump_051_7b00:
    rst $38
    ld bc, $ff48
    nop
    ld b, e
    ld bc, $15ff
    ld [bc], a
    cp $c4
    db $fc
    xor b
    ld a, b
    ld d, b
    cp b
    sbc b
    ld a, b
    ld a, a
    add a
    cp $01
    cp $81
    cp $71
    rst $38
    rrca
    cp $01
    ld c, l
    rst $38
    nop
    add hl, bc
    ei
    rlca
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr c, @+$01

    rlca
    and [hl]
    call z, $0101
    ld bc, $0222
    ldh [$31], a
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr jr_051_7b60

    inc a
    jr nz, jr_051_7b7f

    ld b, e
    ld a, a
    ld c, a
    ld a, h
    ld e, a
    ld [hl], b
    ld a, e
    ld a, h
    ld sp, hl
    add $fb
    ld [hl+], a
    di
    inc de
    sub $13
    db $ec
    sbc a
    ldh a, [rIE]
    sbc h
    sbc a
    sub c
    sub b
    ld de, $0911
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, $0e

jr_051_7b60:
    rra
    ld de, $181f
    ccf
    jr nz, @+$01

    ret nz

    ld b, e
    ccf
    ld b, b

jr_051_7b6b:
    dec e
    ld a, a
    ld b, b
    cp a
    and c
    sbc [hl]
    sbc [hl]
    ldh [$60], a
    cp b
    ld e, b
    rst $38
    rlca
    rst $38
    nop
    ld a, a
    ldh [rIE], a
    inc e
    rst $38

jr_051_7b7f:
    inc bc
    rst $38
    nop
    cp $e0

jr_051_7b84:
    db $fc
    jr jr_051_7b84

    dec b
    cp $1e
    add e
    ld bc, $0336
    ld b, b
    ld b, b
    nop
    ld b, b
    inc hl
    jr nz, @+$03

    ldh [$e0], a
    and l
    rst $18
    ld b, e
    ld [bc], a
    cp $01
    add c
    rst $38
    ld b, e
    pop bc
    ld a, a
    ld [bc], a
    ld bc, $81ff
    add h
    ld bc, $094f
    ld [bc], a
    cp $04
    db $fc
    ld a, [de]
    ld a, [c]
    ld [c], a
    ld [c], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [de], a
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc b
    inc b
    inc hl
    add b
    ld b, e
    ret nz

    ld b, b
    ld bc, $8080
    xor e
    nop
    ld e, b
    add h
    sub e
    ld b, e
    jr nz, jr_051_7b6b

    nop
    and b
    add e
    db $d3
    ld bc, $8000
    ld h, c
    rst $38
    ld h, a
    inc c
    jr nc, jr_051_7c10

    inc c
    ld b, h
    ld b, [hl]
    ld b, d
    inc sp
    ld hl, $2019
    inc e
    db $10
    ld c, $43
    ld [$0107], sp
    inc b
    inc bc
    ld b, e
    ld [bc], a
    ld bc, $0100
    ld [hl], c
    ld [bc], a
    ld b, $0e
    inc bc
    ld [hl+], a
    inc de
    ldh [rNR41], a
    rrca
    daa
    scf
    daa
    daa
    cpl
    ccf
    ld c, a
    ld l, a
    ld e, a
    ld a, a
    sbc a
    rst $38
    sbc a
    ld a, a
    ld c, a
    scf
    cpl
    ccf
    daa
    scf
    cpl
    ld a, $2f
    ccf

jr_051_7c10:
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld a, [hl]
    ld c, a
    ld a, a
    ld c, a
    rst $28
    ld b, [hl]
    sbc a
    rst $38
    ld l, a
    jr @-$3e

    ret nz

    ldh [rNR41], a
    ld [hl], b
    db $10
    inc a
    inc c
    adc [hl]
    ld [bc], a
    reti


    rra
    push hl
    ccf
    ld h, a
    cp b
    adc d
    push af
    ld [hl], l
    ld a, d
    ld a, [bc]
    dec c
    dec bc
    rrca
    inc bc
    ld b, e
    inc b
    rlca
    ld de, $0a08
    dec c
    ld de, $031f
    ccf
    ld a, e
    cp $37
    cpl
    ld a, [hl+]
    dec [hl]
    ld d, l
    sbc d
    cp d
    sub l
    sbc b
    ld b, h
    rst $08
    ld hl, sp+$09
    ldh a, [$cf]
    or d
    rst $18
    push hl
    sbc a
    ld h, d
    cp a
    ret nz

    ccf
    ld b, e
    ret nz

    ld a, a
    dec c
    jp nz, $d57d

    ld a, [hl+]
    ld [$f535], a
    ld a, [hl+]
    ld l, d
    sub l
    ldh a, [$9f]
    ldh a, [$9f]
    ld a, c
    ldh [rNR51], a
    ld bc, $0201
    ld [bc], a
    add a
    add h
    rst $08
    ld c, b
    ccf
    pop af
    ei
    rst $00
    rst $38

Jump_051_7c7c:
    ld c, $dc
    inc a
    cp b
    ld a, b
    pop af
    ldh [$eb], a
    ret nz

    rst $10
    add b
    xor a
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    add [hl]
    db $eb
    sbc c
    ld [hl], b

jr_051_7c92:
    ldh [$71], a
    ret nz

    ld b, e
    ccf
    ldh [rNR31], a
    scf
    add sp, -$56
    push af
    ld b, l
    ld a, [$fd82]
    add b
    rst $38
    ld b, d
    db $fd
    ld b, c
    cp $81
    ld a, a
    inc hl
    cp $af
    ld a, h
    ld a, [hl+]
    push af
    dec d
    ld a, [$fd52]
    or b
    rst $38
    ld [hl], e
    add hl, de
    inc c
    inc e
    ld h, $62
    adc a
    add c
    scf
    rrca
    rst $18
    ccf
    rst $38
    ld a, [hl]
    ld [hl], a
    ld hl, sp-$0d
    ldh [$c7], a
    add b
    ccf
    ld bc, $065a
    cp h
    nop
    ld a, a
    nop
    ld b, e
    cp $01
    dec bc
    db $fd
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    sbc $3d
    rst $38
    jp nz, $007f

    ld b, l
    rst $38
    nop
    dec de
    rst $30
    ld [$54ab], sp
    ld d, l
    cp d
    jp z, Jump_051_5575

    xor d
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    rst $10
    db $f4
    ld l, e
    db $fc
    rra
    or b
    ld c, a
    ld b, b

Jump_051_7cfc:
    cp a
    add b
    ld a, a
    inc bc
    rst $38
    ld [hl], l
    dec c
    dec c
    dec e
    daa
    ld [hl+], a
    rst $08
    call nz, $08fd
    db $d3
    jr nc, jr_051_7c92

    ld b, e
    ret nz

    ld c, a
    ld b, e
    ldh [$9f], a
    ldh [$2c], a
    ld c, d
    ld [hl], l
    and l
    ld a, e
    dec de
    or $2f
    db $fc
    inc hl
    db $fc
    dec b
    ld a, [$fc03]
    ld b, l
    cp d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ei
    inc c
    db $e4
    inc bc
    jp nz, $c500

    nop
    db $eb
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    rlca
    rst $38
    dec c
    ld a, [$f51a]
    inc b
    jp $f800


    dec b
    rst $38

jr_051_7d48:
    dec b
    rst $38
    xor d
    rst $38
    ld d, l
    adc h
    rst $18
    ld de, $0602
    add hl, bc
    add hl, de
    ld sp, $2721
    ld b, c
    ld c, [hl]
    add d
    sbc [hl]
    ld [bc], a
    ld [hl], h
    inc c
    db $e4
    inc e
    ret z

    jr c, jr_051_7da6

    db $10
    ldh a, [rSCX]
    jr nz, jr_051_7d48

    dec b
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld hl, sp+$48
    ld b, e
    ret z

    ld a, b
    inc bc
    ret nc

    or b
    ld d, b
    or b
    ld b, e
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld b, h
    cp $02
    add hl, bc
    cp $b2
    ld c, $71
    rra
    pop hl
    rra
    ld de, $02ff
    ld [hl+], a
    cp $07
    xor d
    ld d, [hl]
    ld d, h
    xor h
    add h
    ld a, h
    ld [$85f8], sp
    or l
    inc bc
    sub b
    ldh a, [$50]
    ldh a, [rIE]
    ld h, c
    rrca
    ld e, $3f
    ld h, e
    rst $38
    pop bc
    rst $38

jr_051_7da6:
    di
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    inc e
    ld a, $00
    jr jr_051_7e1c

    dec hl
    ld bc, $0309
    rlca
    ccf
    jr c, jr_051_7e37

    ld b, b
    jr nc, @+$32

    rrca
    rrca
    db $ec
    ld hl, $8011
    add b
    jp $39e3


    db $fc
    adc $fe
    ld a, a
    rst $38
    ccf
    ccf
    ld l, l
    ld [hl], e
    ld b, e
    ld h, c
    ldh [$c1], a
    ld b, e
    adc h
    call $e11d
    pop bc
    pop bc
    ld h, e
    rst $28
    ld [hl], e
    rst $38
    rst $38
    rst $28
    call c, $1cfb
    rst $38
    jr jr_051_7e65

    add b
    ld a, [hl]
    add b
    ld a, b
    ld b, b
    ldh a, [$c0]
    jr nc, jr_051_7e0f

    db $10
    db $10
    ld [$0608], sp
    ld b, $cb
    ld [$0107], a
    inc bc
    nop
    inc b
    ld bc, $0305
    inc bc
    ld h, l

jr_051_7e01:
    inc de
    rra
    rra
    rst $10
    ldh [$0b], a
    nop
    ld d, a
    nop
    cp a
    rlca
    ld a, c
    sbc a
    rst $20

jr_051_7e0f:
    rst $38
    call $fcfe
    ld hl, sp-$10
    ld hl, sp+$43
    ld sp, hl
    pop af
    db $10
    sub b
    sbc b

jr_051_7e1c:
    inc e
    ld [$0e3d], sp
    rst $38
    ld l, a
    ei
    sub a
    cp a
    sub b
    rst $38
    ld h, b
    rst $38
    nop
    inc bc
    ld l, h
    ldh [$2d], a
    push de
    add b
    ld l, d

jr_051_7e31:
    ld b, b
    rst $10
    sub e
    ld l, h
    ld a, a
    inc sp

jr_051_7e37:
    jr nz, jr_051_7e9b

    ld h, c
    add e
    add b
    jr nc, jr_051_7e01

    inc e
    inc h
    inc e
    inc a
    jp $00c3


    ld bc, $0100
    ld bc, $c303
    rst $00
    rst $38

jr_051_7e4d:
    ccf
    rst $18
    rst $38
    ccf
    rst $38
    ld_long a, $fffe
    pop af
    cp a
    ld a, b
    dec sp
    inc e
    rrca
    inc e
    ld b, e
    sbc a
    adc h
    ldh [$31], a
    rrca
    ld e, $3f
    rra

jr_051_7e65:
    cp a
    ld a, e
    rst $38
    ld hl, sp-$21

jr_051_7e6a:
    db $fc
    rst $38
    call z, $c0ff
    rst $38
    nop
    db $fc
    nop
    ld a, h
    inc b
    rra
    inc bc
    dec c
    inc bc
    dec bc
    rlca
    rla
    dec c
    ccf
    ld a, [de]
    ld a, a
    ld [hl], l
    cp a
    ld a, [hl+]
    ccf
    jr c, jr_051_7e4d

    rst $00
    add b
    add b
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18

jr_051_7e8f:
    ld c, b
    xor b
    ld [hl], b
    ldh a, [$61]
    ld b, $f0
    ld hl, sp-$72
    cp $c2
    rst $38

jr_051_7e9b:
    adc $a4
    nop
    add hl, bc
    dec b
    db $fc

jr_051_7ea1:
    db $fc
    ld a, b
    db $fc
    nop
    jr @-$5b

    nop
    ld h, $46
    ret nz

    ld b, b
    ld c, d
    jr nz, jr_051_7e8f

    jr jr_051_7e31

    ld h, b
    ldh a, [$30]
    cp $0e
    ccf
    ld bc, $8187
    ld a, [hl]
    ld a, [hl]
    add b
    add b
    ldh a, [rSVBK]
    db $fc
    adc h
    cp $02
    cp $86
    ld hl, sp+$78
    ret nz

    xor l
    nop
    call z, RST_00
    add a
    nop
    ld h, b
    inc bc
    add b
    pop bc
    adc [hl]
    rst $18
    adc a
    nop
    ld l, h
    ld [$8078], sp
    ld [hl], b
    ld b, b
    ldh [$c0], a
    ld h, b
    ld b, b
    jr nz, jr_051_7e6a

    nop
    add e
    add e
    nop
    sbc h
    add a
    nop
    or b
    inc bc
    ld hl, sp-$10
    ld sp, hl
    di
    adc a
    nop
    cp h
    call z, $1e00
    ld b, $00
    ld d, l
    nop
    xor d
    nop
    rst $10
    sub e
    add a
    ld bc, $0300
    rra
    inc c
    sbc a
    call z, $0191
    inc c
    inc bc
    inc a
    inc b
    rrca
    inc bc
    ld b, h
    rlca
    ld bc, $0308
    rrca
    ld b, $1f
    dec c
    rst $38
    ld a, d
    ccf
    jr c, jr_051_7ea1

    rst $08
    ld [$fff7], sp
    ld [hl], b
    rst $38
    ld l, b
    cp a
    sub b
    ld h, e
    ld h, b
    ld h, l
    inc b
    ld c, $1f
    inc hl
    ld a, a
    ld b, c
    add e
    nop
    rlca
    ld b, $ff
    ccf
    ld a, a
    ld e, $3e
    inc b
    inc c
    adc e
    nop
    inc d
    ld h, a
    rlca
    jp $3dc3


    ldh a, [$8e]
    db $fc
    rst $38
    rst $38
    add $01
    add a
    inc bc
    pop bc
    di
    ccf
    rst $08
    inc h
    rst $38
    ld h, c
    ld b, $e0
    ldh [$88], a
    ld hl, sp-$3e
    cp $ce
    and h
    cp l
    dec b
    ld hl, sp-$04
    ldh a, [$f8]
    and b
    or b
    adc e
    ld bc, $ff54
    db $ec
    cpl
    dec c
    add hl, bc
    rlca
    rlca
    rrca
    ld b, $0f
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $4dec
    nop
    ld bc, $0361
    ld bc, $cfff
    rst $38
    ld b, e
    rst $38
    ld bc, $830a
    add e
    rst $00
    rst $10
    rst $28
    xor $ff
    ld a, h
    cp $38
    ld a, h
    db $ec
    ccf
    dec bc
    rlca
    nop
    rla
    rrca
    inc e
    add hl, sp
    ccf
    ld a, a
    ld h, c
    rst $38
    call z, Call_051_43f3
    sbc $e1
    ld [bc], a
    call z, $e1f3
    ld h, $ff
    ld c, $7f
    rst $38
    ccf
    ld a, a
    rra
    ccf
    rlca
    rrca
    inc bc
    rlca
    inc bc
    ccf
    ld a, a
    daa
    ld a, a
    ld b, e
    ccf
    inc bc
    ld c, $07
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    rra
    ccf
    cpl
    ld [hl], a
    ccf
    ld a, a
    dec de
    inc a
    db $ec
    inc hl
    inc c
    add b
    nop
    and b
    ret nz

    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    cp $fc
    db $fc
    ld c, b
    cp $ff
    inc c
    db $fc
    cp $fe

Call_051_7fe3:
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh [$f0], a
    add b
    ret nz

    nop
    ld c, h
    add b
    nop
    dec bc
    ret nz

    add b
    add b
    ret nz

    ldh [$f0], a
    or b
    ret c

    ldh a, [$f8]
    ld h, b
    ldh a, [$ec]
    pop bc
    rst $38
