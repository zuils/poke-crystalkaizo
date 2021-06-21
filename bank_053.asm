; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

    ld a, c
    add hl, de
    ld bc, $0001
    ld [bc], a
    rlca
    rlca
    ld [$201a], sp
    inc h
    nop
    ld e, b
    ld b, b
    ld [hl], l
    ld b, b
    ld l, d
    add [hl]
    rst $30
    sbc b
    ld a, [$fda0]
    ldh [rIE], a
    ret nz

    rst $38
    ld b, e
    ld b, b
    ld a, a
    dec b
    jr nz, jr_053_4061

    ld de, $0e1f
    ld c, $85
    and a
    dec de
    ld b, $06
    add hl, bc
    ld [$1416], sp
    dec l
    jr z, @+$3c

    jr nc, jr_053_4073

    jr z, @+$51

    ld c, c
    ld e, a
    ld e, c
    cp a
    sub c
    rst $18
    sub a
    rst $38
    sbc [hl]
    rst $30
    or l
    ld h, e
    ld h, d
    inc hl
    db $20, $94
    reti


    ldh [rNR52], a
    inc bc
    inc c
    inc e
    ld h, b
    xor $00
    ld d, a
    nop
    xor a
    ldh a, [rIE]
    rrca
    xor a
    nop
    add hl, de
    nop
    ccf
    nop
    ld e, a
    nop
    cp a
    nop
    ld [hl], c
    nop

jr_053_4061:
    and e
    nop
    ld a, a
    ld bc, $0eff
    cp $3c
    db $fd
    ld e, b
    jp c, $9590

    jr nc, jr_053_40ab

    ld b, e
    jr nz, jr_053_40b2

jr_053_4073:
    rra
    ld h, b
    ld a, a
    or b
    cp a
    or b
    rra
    ld e, b
    rrca
    rst $38
    ld b, a
    ld a, a
    ld b, e
    rst $38
    sub [hl]
    db $fd
    sbc b
    ld [$f720], a
    and a
    ld a, [$e5d8]
    ldh [$ca], a
    ret nz

    rst $30
    ld b, [hl]
    rst $38
    cp h
    rst $38
    ld [hl], b
    ld [hl], e
    ldh [rNR41], a
    ldh [$e0], a
    inc e
    db $fc
    ld [bc], a
    ld a, $01
    rra
    nop
    rst $38
    ld bc, $06ff
    cp $d8
    ld hl, sp+$29
    db $eb
    ld h, $e6

jr_053_40ab:
    dec h
    push hl
    db $10
    ldh a, [rNR31]
    ei
    ld [hl], b

jr_053_40b2:
    rst $38
    add b
    ld sp, hl
    nop
    di
    nop
    ld b, l
    rst $38
    nop
    ld [bc], a
    adc a
    nop
    rlca
    push bc
    add c
    ld b, e
    ld [bc], a
    rst $38
    dec b
    ld b, $ff
    add a
    rst $38
    rst $38
    ld a, h
    ld b, e
    rst $28
    ld [$df43], sp
    db $10
    ld [$107f], sp
    cp a
    jr nz, @-$3f

    inc hl
    cp a
    ld hl, $94ff
    nop
    ld e, a
    inc e
    rrca
    rra
    jr nz, jr_053_4146

    nop
    adc [hl]
    add b
    cp h
    ret nz

    rst $38
    ld h, b
    rst $38
    ret c

    rst $18
    ld b, $07
    push hl
    push af
    add hl, de
    add hl, de
    ld a, [hl+]
    dec hl
    inc b
    rlca
    add sp, -$11
    inc c
    rst $38
    inc bc
    add a
    reti


    inc bc
    add e
    nop
    rst $00
    nop
    ld c, d
    rst $38
    nop
    rla
    ld bc, $07ff
    rst $38
    rst $38
    ld a, [$71ff]
    rst $38
    add hl, de
    rst $38
    rlca
    rst $38
    jp Jump_053_73ff


    rst $38
    ld e, $ff
    dec b
    rst $38
    add $ff
    ld l, h
    or l
    nop
    ld b, $0f
    ld [hl], b
    ldh a, [$0e]
    ld a, $01
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    nop
    cp $a8
    nop
    or $1c
    di
    add b
    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    ld [hl+], a
    db $e3
    ld sp, $1cf1
    db $fc
    rra
    di

jr_053_4146:
    rra
    ldh a, [$1f]
    db $fc
    rra
    di
    ccf
    ld hl, sp+$7f
    add $f9
    pop bc
    cp $80
    ld b, h
    rst $38
    db $10
    ld b, e
    and d
    rst $38
    ld a, [bc]
    db $e4
    rst $38
    ld b, h
    rst $38
    and h
    rst $38
    ld e, h
    rst $38
    inc c
    rst $38
    rlca

jr_053_4166:
    ld a, e
    dec bc
    add b
    add b
    ldh [$e0], a
    jr jr_053_4166

    inc b
    inc e
    ld [bc], a
    ld a, $02
    cp $45
    ld bc, $04ff
    add hl, bc
    rst $38
    dec b
    rst $38
    rlca
    xor d
    nop
    inc sp
    rla
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [$b0]
    ld a, b
    ld c, b
    cp h
    inc h
    xor $02
    cp $06
    cp $42
    rst $38
    ld b, c
    ld b, h
    rst $38
    ld c, c
    nop
    adc c
    ld b, e
    cp $9a
    rst $38
    ld l, d
    ld [$0101], sp
    ld [bc], a
    inc bc
    inc l
    inc c
    inc de
    nop
    ld c, $8d
    sub e
    db $ec
    jr nz, @+$03

    ld bc, $2200
    ld [bc], a
    nop
    nop
    ld [hl+], a
    inc b
    nop
    nop
    ld [hl+], a
    ld [$0000], sp
    inc h
    stop
    nop
    ld h, $20
    nop
    ld b, b
    and [hl]
    cp l
    ld de, $1c20
    cp h
    ld b, d
    cp $01
    db $fd
    ld [bc], a
    ld a, [$5505]
    xor d
    jr z, jr_053_4230

    nop
    ccf
    ld [bc], a
    inc c
    ld h, e
    rlca
    db $10
    jr z, jr_053_425a

    add h
    cp $01
    ccf
    ret nz

    ld b, e
    rra
    jr nz, @+$05

    ld b, $19
    ld bc, $c806
    rst $00
    ld b, $01
    ld [bc], a
    ld b, $00
    ld [$1010], sp
    add e
    cp a
    ld c, $01
    add b
    inc bc
    nop
    dec b
    nop
    dec bc
    nop
    rlca
    nop
    dec bc
    nop
    rla
    nop
    cpl
    add h
    add e
    ld a, [bc]
    ld e, a
    nop
    ccf
    nop
    ld e, a
    nop
    cp a
    ld bc, $015f
    cp a
    add l
    or c
    ld b, $07
    daa
    jr jr_053_425f

    ld b, b
    ld a, a
    add b
    and e
    db $dd
    ldh [rNR51], a
    ld b, l
    cp d
    and b
    ld e, a
    ld b, b
    cp a
    nop
    ld a, a
    nop

jr_053_4230:
    rra
    nop
    rrca
    nop
    ccf
    ld sp, $6a4e
    sub l
    ret nc

    cpl
    add sp, $17
    call nc, $a82b
    ld d, a
    ld b, h
    cp b
    nop
    ldh a, [rP1]
    ld bc, $0e05
    jr nc, jr_053_42bb

    add b
    add b
    add e
    nop
    ld b, c
    inc bc
    rrca
    nop
    ccf
    nop
    ld b, h
    rst $38
    nop
    inc b
    inc bc

jr_053_425a:
    db $fc
    inc b
    ld hl, sp+$08
    ld b, e

jr_053_425f:
    ldh a, [rNR10]
    nop
    ldh [rSCX], a
    jr nz, @-$3e

    ld [bc], a
    ld b, b
    ret nz

    ld b, b
    inc h
    add b
    and a
    nop
    adc l
    inc d
    rlca
    nop
    ld c, $00
    inc e
    ld [$d0d4], sp
    ld l, $e8
    rla
    ld a, [hl-]
    push bc
    dec e
    ld [c], a
    ld a, [de]
    push hl
    dec e
    ld [c], a
    ld c, $f1
    ld b, e
    ld b, $f9
    dec bc
    inc b
    ei
    xor h
    ld d, e
    ld e, h
    and e
    xor [hl]
    ld d, c
    rra
    ldh [rTAC], a
    ld hl, sp-$3d
    nop
    ld l, l
    ld a, [bc]
    nop
    rst $38
    ld h, c
    ld e, [hl]
    and a
    sbc b
    rla
    jr nz, jr_053_42cd

    nop
    rla
    add a
    reti


    ld c, $00
    rst $38
    nop
    sub a
    add sp, $6b
    ld d, h
    scf
    jr z, jr_053_42d0

    db $10
    rlca
    inc c
    ld bc, $bf03
    nop
    inc h
    dec bc
    add b

jr_053_42bb:
    ld h, b
    ld b, b
    cp b
    adc d
    ld [hl], h

jr_053_42c0:
    dec d
    ld [$f50a], a
    dec b
    ld a, [$8383]
    add hl, bc
    nop
    rst $38
    ld [bc], a
    db $fc

jr_053_42cd:
    nop
    ld hl, sp-$60

jr_053_42d0:
    ld e, b
    ld b, b
    cp h
    add h
    nop
    jp nc, $ff04

    ldh a, [rIF]
    db $fc
    inc bc
    ld b, e
    cp $01
    ld b, h
    rst $38
    nop
    inc d
    inc b
    ei
    ld b, $f3
    ld a, [bc]
    pop af
    dec bc
    di
    dec bc
    pop af
    add hl, bc
    ld sp, hl
    dec b
    rst $38
    ld bc, $02fc
    ret nz

    cp h
    ld a, b
    ld h, h
    ld b, e
    inc e
    ld [de], a
    ld b, e
    ld c, $09
    add hl, bc
    ld b, $05
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $b801
    nop
    inc l
    add e
    ld bc, $0f19
    inc b
    ld [$1814], sp
    inc h
    db $10
    jr z, jr_053_42c0

    ld d, b
    inc d
    add sp, $28
    call nc, $ee10
    nop
    ld b, e
    cp $00
    ld bc, $00fc
    ld b, e
    ldh a, [rP1]
    nop
    ldh [rLYC], a
    ret nz

    ld b, b
    ld b, e
    add b
    ld b, b
    ld bc, $8000

Call_053_4334:
    jp z, $1e01

    ld bc, $0080
    ld h, $40
    nop
    nop
    ld b, [hl]
    and b
    jr nz, @+$01

    ld [hl], a
    ld bc, $0303
    ld b, e
    rlca
    inc b
    ldh [rNR42], a
    rrca
    add hl, bc
    rlca
    ld b, $0b
    ld [$1017], sp
    dec de
    db $10
    dec [hl]
    ld h, b
    ld a, [hl+]
    add b
    ld [hl], l
    ld h, b
    ld l, $20
    rra
    db $10
    rra
    jr jr_053_4391

    inc h
    rla
    ld b, e
    dec hl
    jr nz, jr_053_439f

    ld hl, $121f
    rrca
    inc c
    ld b, e
    rlca
    inc b
    add hl, bc
    ld bc, $0a04
    ld [$1005], sp
    ld c, $0c
    inc bc
    inc bc
    ld a, e

Jump_053_437c:
    inc c
    inc a
    ld a, h
    dec hl
    add e
    ld d, l
    add b
    ld l, e
    ld b, b
    ld d, l
    ld b, b
    ld l, e
    ld b, b
    rst $10
    ld b, l
    add b
    rst $38
    ldh [rSCY], a
    ld b, b
    rst $38

jr_053_4391:
    ldh [rIE], a
    add hl, de
    rst $38
    ld b, $fe
    dec b
    db $fd
    ld a, [bc]
    ld a, [$f00d]
    rra
    ld [hl], b

jr_053_439f:
    rra
    ldh a, [$1f]
    db $e3
    ccf
    db $e4
    ccf
    ld [c], a
    ccf
    pop hl
    cp a
    ld [c], a
    ld a, a
    push af
    sbc [hl]
    rst $30
    inc e
    ei
    inc c
    rst $38
    ld [$19f6], sp
    ld [hl], d
    dec e
    or h
    dec de
    ld [hl], d
    dec e
    cp h
    dec bc
    ld a, d
    dec e
    ld hl, sp-$11
    ld a, d
    ld c, l
    ld d, l
    ld b, [hl]
    dec l
    ld h, $34
    daa
    add hl, de
    ld e, $0a
    dec c
    add hl, bc
    ld c, $12
    dec e
    ld h, c
    dec c
    inc b
    inc b
    ld [bc], a
    ld a, [bc]
    dec b
    ld de, $606a
    push de
    add b
    ld [$f5c0], a
    jr nz, jr_053_4426

    rst $38
    ld de, $ff46
    ld a, [bc]
    ldh [rLY], a
    rrca
    ld a, [$d535]
    ld [$55aa], a
    ld d, b
    xor a
    db $e4
    ld a, a
    jp c, $8bbf

    rst $38
    ld b, d
    rst $38
    ld b, b

Jump_053_43fc:
    rst $38
    and b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    adc h
    ld a, a
    sub b
    ld a, a
    ld [hl+], a
    rst $38
    ld h, e
    rst $38
    ld d, h
    rst $38
    sub h
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ldh a, [$bf]
    ld a, a
    rst $08
    ld a, a
    ret z

    ccf
    ldh a, [$15]
    ldh a, [rNR30]

jr_053_4424:
    ld hl, sp+$0d

jr_053_4426:
    ld hl, sp+$06
    cp $85
    ld a, l
    ld b, d
    cp [hl]
    add d
    ld a, [hl]
    ld h, l
    dec bc
    add b
    add b
    ret nz

    ld b, b
    rst $28
    cpl
    push af
    jr nc, jr_053_4424

    ret nz

    push af

Jump_053_443c:
    nop
    ld c, d
    rst $38
    nop
    inc b
    ret nz

    ccf
    pop af
    rrca
    db $fd
    ld b, e
    inc bc
    cp $11
    ld h, e
    cp $93
    cp $11
    rst $38
    ld hl, $30ff
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    ld [hl], b
    rst $38
    add l
    nop
    rst $08
    rrca
    ld h, e
    cp $43
    cp $83
    cp $03
    cp $07
    cp $1f
    ld sp, hl
    ld a, a
    and $ff
    add c
    ld b, a
    rst $38
    nop
    add hl, bc
    ld a, a
    ld bc, $01ff
    cp $86
    ld a, b
    ld l, b
    db $10
    db $10
    ld l, c
    inc bc
    add b
    add b
    ld b, b
    ld b, b
    add e
    rst $20
    ld bc, $40c0
    ld b, e
    ldh [rNR41], a
    dec b
    db $fc
    inc a
    rst $38
    ld h, e
    rst $38
    add b
    ld d, b
    rst $38
    nop
    ld b, $80

Call_053_4498:
    ld a, a
    pop hl
    ccf
    cp $3f
    ld hl, sp-$7d
    res 6, b
    sbc l
    inc b
    add c
    cp $66
    db $fc
    sbc h
    ld b, e
    db $fc
    add h
    rlca
    ld hl, sp-$78
    ld hl, sp+$08
    ldh a, [$d0]
    jr nz, jr_053_44d4

    ld a, a
    dec b
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    add h
    push af
    ld a, [bc]
    ld h, b
    ldh a, [$50]
    ldh a, [$90]
    ld hl, sp+$08
    db $fc
    inc b
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    dec b
    ldh [rNR41], a
    ret nz

jr_053_44d4:
    ret nz

    add b
    add b
    add l
    ld bc, $838e
    ld bc, $b592
    nop
    ld c, h
    rst $38
    ld [hl], l
    ld a, [bc]
    rlca
    rlca
    ld [$080e], sp
    rrca
    ld b, $1f
    ld h, c
    ld h, c
    add a
    ld b, h
    add b
    rst $38
    rlca
    ld a, a
    ld c, b
    ld [hl], a
    ld c, b
    ccf
    ld sp, $0e0e
    db $ec
    ld h, $14
    ld bc, $0606
    ld [$1008], sp
    stop
    db $10
    ld a, [hl+]
    jr nz, @+$37

    jr nz, jr_053_458a

    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rra
    ld [hl], b
    ld b, e
    rrca
    ld hl, sp+$03
    sbc a
    ldh a, [rIE]
    ld h, b
    ld b, h
    rst $38
    nop
    dec bc
    rrca
    rst $38
    ld [hl], e
    sbc a
    di
    sub a
    pop af
    ld [hl], a
    ld [hl], b
    ld de, $0910
    ld [hl+], a
    ld [$0d10], sp
    ld [$0802], sp
    dec b
    inc b
    ld b, $04
    ld bc, $0304
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $c1ca
    dec b
    inc e
    inc a
    db $fd
    jp $007f


    ld b, e
    ccf
    nop
    ld bc, $007f
    ld b, [hl]
    rst $38
    nop
    inc c
    ld [bc], a
    rst $38
    ld [bc], a
    rst $18
    ld sp, $11df
    rst $38
    ld sp, $21ff
    rst $38
    ld bc, $ff46
    nop
    ld b, $90
    ccf
    ldh [$bf], a
    ldh [rIE], a
    ret nz

    ld c, e
    rst $38
    nop
    dec bc
    ccf
    ret nz

    db $dd
    ld a, $fa
    dec bc
    ld a, c
    adc c
    ld sp, $e051
    ldh [$ac], a
    nop
    ld c, c
    ld a, [bc]
    add b
    ldh [$60], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $ff52

jr_053_458a:
    nop
    ld b, $80
    rst $38
    add [hl]
    ld sp, hl
    adc a
    ldh a, [$9f]
    ld b, e
    ldh a, [$5b]
    dec b

jr_053_4597:
    ld hl, sp+$2d
    ld hl, sp+$1d
    rst $38
    rlca
    xor e
    sbc e
    ld b, e
    cp $02
    dec b
    sbc [hl]
    ld h, d
    adc h
    sub h
    ld a, b
    ld a, b
    or [hl]
    nop
    ccf
    nop
    add b
    ld b, h
    ret nz

    ld b, b
    ld b, $20
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$30]
    ld b, e
    ret z

    ld a, b
    rrca
    call nz, $e47c
    inc a
    db $e4
    inc [hl]
    ld hl, sp-$68
    ld hl, sp-$78
    ld a, h
    call nc, $e47c
    db $fc
    add h
    ld b, e
    cp $02
    ld b, e
    ld a, [$0706]
    or $0a
    xor $32
    cp $c2
    sbc [hl]
    ld [c], a
    sbc c
    rrc e
    inc c
    ld e, $21
    ld hl, $4444
    ld c, d
    ld c, b
    ld d, a
    ld b, b
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, @+$0b

    rra
    db $10
    rrca
    ld [$0607], sp
    inc bc
    inc bc
    ld bc, $8301
    nop
    sub d
    ld bc, $0302
    add e
    nop
    sub [hl]
    dec c
    push af
    ldh [$9f], a
    sub b
    adc a
    add sp, -$39
    ld a, b
    rst $00
    ld a, h
    rst $20
    inc a
    rst $38
    jr jr_053_4597

    ld bc, $030e
    ld l, l
    sbc $3f
    rst $20
    ld b, e
    ccf
    db $e3
    inc bc
    rst $10
    pop de
    rla
    ld de, $0087
    or b
    rlca
    rst $38
    ld bc, $31ef
    rst $38
    ld de, $01ff
    adc c
    nop
    ret nz

    ld bc, $e07f
    add h
    nop
    jp z, $e002

    rst $38
    ret nz

    adc e
    nop
    call nc, $ff0f
    nop
    rst $38
    add c
    cp $83
    db $fc
    ld b, e
    cp $62
    cp $23
    rst $38
    ld de, $0cff
    xor l
    nop
    adc $05
    rst $38
    ld bc, $8000
    add b
    add b
    add a
    ld bc, $1354
    call z, $e23c
    ld a, $f2
    ld e, $fe
    adc [hl]
    ld a, $e2
    inc e
    db $f4
    inc c
    db $fc
    ld [$1c78], sp
    or h
    cp h
    db $e4
    add e
    ld bc, $27b0
    ld bc, $8c62
    ld bc, $03cf
    sub a
    pop af
    ld [hl], a
    ld [hl], c
    rst $38
    db $ec
    inc hl
    ldh [$33], a
    ld [$3e18], sp
    ld h, $3f
    ld b, c
    ccf
    jr nz, jr_053_46ab

    db $10
    rrca
    ld [$787f], sp
    rst $38
    add c
    cp a
    pop bc
    ld l, a
    ld [hl], c
    inc de
    ld e, $0b
    ld c, $1f
    ld [de], a
    ld a, [hl-]
    daa
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    inc h
    ccf
    jr jr_053_46c6

    inc b
    rlca
    ld e, $1f

jr_053_46ab:
    ld a, a
    ld h, b
    rst $38
    add b
    cp [hl]
    pop bc
    ld e, [hl]
    ld h, c
    ld b, l
    ld a, d
    ld h, c
    ld a, [hl]
    ld b, e
    ld [hl], e
    ld e, h
    inc bc
    ei
    adc a
    rst $38
    or b
    ld l, l
    rlca
    ld c, $0e
    rla
    add hl, de
    rla

jr_053_46c6:
    jr jr_053_46db

    inc e
    ld b, e
    dec bc
    inc c
    ld b, e
    add hl, bc
    ld c, $13
    dec b
    ld b, $04

Jump_053_46d3:
    rlca
    rlca
    ld b, $0c
    ld [$1018], sp
    or b

jr_053_46db:
    and b
    pop af
    ld b, b
    di
    ld b, c
    rst $38
    add c
    rst $38
    add b
    ld b, l
    rst $38
    nop
    ld c, $fd
    inc bc
    ld hl, sp+$04
    db $fd
    inc b
    xor a
    ld d, h
    ld d, a
    xor d
    dec hl
    push de
    inc d
    db $eb
    nop
    ld c, b

jr_053_46f8:
    rst $38
    nop
    inc bc
    add b
    ld a, a
    pop hl
    ld e, $48
    rst $38
    nop
    ld [bc], a
    add c
    rst $38
    ld [hl], c
    ld [hl], c
    ld [hl+], a
    add b
    ldh [$28], a
    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld sp, hl
    dec bc
    ei
    inc e
    sbc a
    ld h, b
    cpl
    add c
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    rst $28
    ld h, b
    rst $38
    sbc b
    sbc a
    ld h, [hl]
    rrca
    ldh a, [$87]
    ld sp, hl
    jp nz, $c37e

    ld a, [hl]
    rst $10
    xor c
    xor [hl]
    ld d, [hl]
    ld hl, sp+$08
    rst $38
    ld b, $a4
    db $ed
    nop
    add b
    ld b, e
    ld a, a
    ret nz

    ld b, e
    rst $38
    add c
    inc de
    ld a, a
    rst $00
    ccf
    ld hl, sp+$63
    ldh [$c1], a
    add b
    pop bc
    nop
    db $e3
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    inc bc
    db $fc
    ld bc, $affe
    call c, $0315
    ld b, $0f
    add hl, bc
    rra
    inc de
    ld e, $27
    ld a, $27
    db $fc
    rst $08
    ld hl, sp+$4f
    pop af
    sbc [hl]
    pop af
    ld e, $e1
    ld a, $f9
    ld b, $4a
    rst $38
    nop
    inc b
    ret nz

    ld a, a
    nop
    rst $38
    jr nc, jr_053_46f8

    add l
    add [hl]
    nop
    or a
    rla
    cp $42
    db $fc
    ld b, h
    cp [hl]
    add [hl]
    ld a, [$798e]
    cpl
    ret nc

    ld a, a
    add l
    ld a, [$75ea]
    db $fd
    ld a, [de]
    cp $05
    rst $38
    inc bc
    rst $38
    ld bc, $00a6
    sub b
    ld l, [hl]

jr_053_4797:
    inc bc
    ret nz

    ret nz

    ldh [rNR41], a
    ld b, e
    ldh [$a0], a
    ld [hl+], a
    ret nz

    ldh [$2a], a
    ld b, b
    adc $4f
    db $fc
    ld [hl], b
    ld sp, hl
    ld b, b
    rst $38
    add c
    cp [hl]

jr_053_47ad:
    jp nz, $a4dc

    add sp, $18
    ld hl, sp+$08
    db $fc
    inc b
    xor a
    ld [hl], e
    rst $18
    add hl, sp
    rst $20
    inc d
    db $e3
    ld [de], a
    db $e3
    inc bc
    ld [c], a
    ld a, [de]
    ei
    rlca
    cp $01
    rst $38
    nop
    cp [hl]
    ret nz

    ld [hl], a
    ld a, b
    ld b, l
    ld a, [hl]
    add a
    nop
    adc a
    rlca
    ld bc, $a6ff
    ld e, [hl]
    ld e, b
    cp b
    ldh [$e0], a
    add l
    nop
    adc $05
    ret nz

    ldh [rSVBK], a
    sbc b
    cp $07
    ld [hl], a
    rlca
    ld h, b
    ldh a, [rP1]
    db $10
    ld h, b
    jr nz, jr_053_47ad

    ld b, b
    push bc
    and [hl]
    ldh [rNR51], a
    ld [bc], a
    ld b, $0d
    add hl, de
    inc sp
    ld l, c
    and e
    push bc
    jp z, $0e26

    sub d
    xor [hl]
    sub d
    or h
    ld c, h
    db $f4
    ld c, h
    ret c

    xor b

jr_053_4806:
    ld hl, sp-$58
    ld d, b
    db $10
    or b
    db $10
    ld b, b
    jr nc, jr_053_4797

    jr z, @-$36

    adc b
    ld l, b
    ret z

    jr nc, jr_053_4806

    ld b, b
    ret nz

    db $d3
    nop
    db $d3
    rst $38
    db $ec
    dec hl
    ldh [rNR42], a
    ld b, $07
    ld a, [bc]
    ld [$1015], sp
    ld a, $38
    ld a, l
    ld b, [hl]
    rst $38
    add c
    rst $38
    add b
    ld a, a
    ld [hl], b
    dec c
    ld c, $1b
    inc e
    ld a, a
    ld h, b
    rst $38
    add b
    rst $38
    add c
    ld a, l
    ld c, [hl]
    ccf
    jr c, jr_053_484e

    inc c
    inc bc
    inc bc
    ld a, e
    inc hl
    ld bc, $0345
    ld [bc], a
    ld b, a
    rlca
    inc b
    add hl, bc
    scf
    inc [hl]

jr_053_484e:
    rst $08
    ld hl, sp+$2f
    ld a, b
    xor a
    add hl, de
    rst $38
    ld a, [bc]
    ld b, e
    rst $38
    inc d
    inc bc
    db $fd
    ld d, $ff
    inc de
    ld b, l
    rst $38
    db $10
    inc d
    ld a, a
    sub b
    rst $38
    ld [$18ff], sp
    jp hl


    ld l, [hl]
    add [hl]
    add l
    inc bc
    inc bc
    inc b
    ld b, $0c
    add hl, bc
    rrca
    add hl, bc
    ld c, $08
    ld c, $46
    ld [$1b0f], sp
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    ccf
    jr nc, jr_053_4901

    ld b, b
    rst $38
    add b
    rst $38
    rrca
    db $fc
    rlca
    db $fc
    ld b, $fd
    rlca
    rst $38
    inc bc
    ld_long a, $ff07
    ld b, $ff
    inc b
    ei
    inc b
    ld b, e
    rst $38
    nop
    ld bc, $c0bf
    ld b, [hl]
    rst $38
    nop
    ld d, $10
    rst $38

jr_053_48a3:
    ld h, b
    rst $38
    adc b
    rst $38
    inc e
    adc a
    inc e
    rrca
    ld [$0897], sp
    rst $30
    ld [$10ef], sp
    rst $38
    rra
    ldh [rNR41], a
    ret nz

    ret nz

    xor c
    nop
    ld h, e
    nop
    nop
    ld [hl+], a
    ld b, b
    dec d
    ret nz

    jr nz, jr_053_48a3

    jr nz, @-$0e

    db $10
    ld hl, sp+$0c
    ld [c], a
    inc bc
    ret nz

    jr nc, @-$1e

    ld [$c4fa], sp
    sbc a
    or b
    rrca
    sbc b
    sbc a
    ldh [rLY], a
    rst $38
    nop
    nop
    ld bc, $8585
    dec e
    db $f4
    inc bc
    jp hl


    ld [bc], a
    db $f4
    ld de, $19ea
    rst $28
    jr c, @-$37

    ld a, h
    rst $38
    db $fc
    adc [hl]
    db $fd
    adc a
    ld sp, hl
    sbc $71
    db $fd
    ld [hl+], a
    ei
    inc b
    rst $20
    ld a, b
    cp [hl]
    or c
    rrca
    rrca
    cp e
    nop
    ld d, b
    inc bc
    ld b, b

jr_053_4901:
    ld b, b
    ld h, b
    jr nz, @+$45

    ldh a, [rNR10]
    inc bc
    ld hl, sp+$08
    cp b
    ld l, b
    ld [hl+], a
    ldh a, [rP1]
    sub b
    add l
    db $fd
    ld bc, $8080
    and l
    nop
    ld [hl], d
    ld b, e
    ld [hl], b
    sub b
    inc bc
    ldh [$a0], a
    ret nz

    ret nz

    and a
    nop
    ld l, h
    add d
    add a
    call nz, $83b0
    xor a
    rlca
    ld hl, sp+$68
    ldh a, [$f8]
    ldh [$f0], a
    ldh a, [$d0]
    adc b
    nop
    db $ec
    ld bc, $0001
    and d
    and c
    jp z, $6d00

    inc e
    add b
    ld b, b
    ld b, b
    and b
    jr nz, @-$2e

    jr @-$1e

    inc b
    ldh a, [$83]
    ei
    add [hl]
    ld l, a
    ld e, b
    ld e, a
    ld h, e
    dec a
    ld c, l
    ld a, [$f39f]
    ld [hl], $f7
    ld e, h
    ei
    inc e
    rst $38
    inc c
    add e
    nop
    ret z

    ld b, a
    rst $38
    nop
    nop
    rst $38
    ld l, [hl]
    rrca
    ld [hl], b
    db $fc
    jp nz, $f003

    nop
    cp $80

jr_053_496d:
    db $fd
    inc bc
    rst $38
    rlca
    push af
    ld c, $ff
    ld [$ff43], sp
    nop
    inc b
    cp $00
    db $fd
    nop
    ld a, [$8384]
    inc bc
    push af
    ld bc, $01eb
    and [hl]
    db $ed
    inc bc
    ret nz

    and b
    ldh [$e0], a
    rst $00
    ld bc, $0001
    ld b, b
    dec h
    add b
    call nz, $0095
    nop
    adc c
    nop
    or b
    rlca
    db $fd
    inc bc
    ei
    inc b
    rst $30
    ld [$1eed], sp
    adc l
    nop
    jp nz, $0187

    nop
    ld a, [bc]

jr_053_49aa:
    nop
    jr nc, jr_053_496d

    ld [$c4b2], sp
    rst $38
    jr nz, jr_053_49aa

    jr @-$1f

    adc h
    ld bc, $ff13
    ld a, [hl]
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    nop
    ld bc, $85d2
    add hl, bc
    rlca
    rrca
    inc bc
    db $10
    rra
    db $10
    rrca
    ld [$0607], sp
    add a
    sbc l
    add hl, bc
    ld e, $3e
    rlca
    ld b, c
    ld e, a
    ld b, b
    ccf
    jr nz, jr_053_49f4

    dec e
    add l
    sub e
    inc b
    inc bc
    rlca
    ld a, c
    ld a, b
    rst $38
    xor d
    cp c
    inc b
    ld [bc], a
    ld c, $01
    ld de, $8310
    or c
    ld bc, $0304
    adc b
    pop de
    inc c
    ret nz

jr_053_49f4:
    ret nz

    jr nc, jr_053_4a2f

    cp $07
    rst $38
    nop
    cp a
    ret nz

    ccf
    jr nz, jr_053_4a1f

    adc b
    sbc e
    add l
    sbc l
    dec b
    ld sp, hl
    ld sp, hl
    rst $38
    rlca
    cp $00
    ld b, e
    rst $38
    nop
    add hl, bc
    rst $10
    add sp, $2b
    inc [hl]
    dec d
    ld a, [de]
    dec sp
    inc h
    rst $18
    ldh [rLYC], a
    rst $38
    nop
    dec bc
    ld e, a
    and b

jr_053_4a1f:
    xor a
    ret nc

    push de
    ld [$55aa], a
    push de
    ld a, [hl+]
    xor d
    ld d, l
    xor l
    nop
    ld [de], a
    dec b
    ld b, b
    ld h, b

jr_053_4a2f:
    inc e
    jr @+$01

    inc bc
    ld b, h
    rst $38
    nop
    ld c, $80
    ld a, a
    ld b, b
    ccf
    jr nz, jr_053_4a7c

    inc l
    inc de
    inc de
    db $10
    db $10
    ei
    add sp, -$01
    inc b
    ld b, h
    rst $38
    ld [bc], a
    nop
    ld bc, $ff43
    nop
    ldh [$27], a
    cp a
    ld b, [hl]
    ld e, c
    xor c
    or e

jr_053_4a55:
    ret nc

    sub [hl]
    pop af
    ld h, h
    ld [c], a
    call z, $1e82
    ld [bc], a
    cp $02
    xor $12
    rst $38
    ld a, [hl-]
    cp a
    ld a, d
    rst $38
    ld a, c
    ld a, a
    ld sp, hl
    rst $38
    ldh a, [$fb]
    or $f1
    ld l, c
    pop af
    ld [$08f3], sp
    ei
    ld [$48bb], sp
    ld b, h
    rst $38
    add sp, $0c

jr_053_4a7c:
    db $e4
    and b
    ld h, b
    nop
    sub b
    add b
    adc b
    ld h, h
    ld b, h
    ld a, d
    ld b, d
    dec a
    ld hl, $0083
    adc b
    add hl, bc
    rra
    db $10
    sbc a
    adc b
    rst $38
    ld l, b
    rst $38
    jr jr_053_4a55

    ld h, b
    push bc
    rst $18
    ld [$807f], sp
    ld a, a
    ld [hl], b
    sbc $0f
    ld [$fd00], a
    push bc
    nop
    or e
    inc d
    add b
    rst $38
    ld b, b
    ld a, a
    and b
    cp a
    ld h, b

jr_053_4aae:
    cp a
    ret nc

    rst $08
    or b
    ld l, a

jr_053_4ab3:
    ld [hl], b
    ld a, a
    jr nc, @+$01

    inc l

jr_053_4ab8:
    cp $13
    rst $38
    db $10
    ld b, l
    rst $38
    ld [$f70b], sp
    ld [$00ff], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_053_4ab8

    sub b
    rst $18
    and b
    ld b, h
    rst $38
    ld b, b
    inc b
    jr nz, @+$01

    jr nz, jr_053_4ab3

    jr nz, jr_053_4b3d

    add hl, de
    ld [$1400], sp
    inc b
    sub d
    add d
    jp nc, $f752

    ld sp, $31ff
    sbc $30
    db $fd
    db $10
    cp $10
    db $ed
    db $10
    sbc $20
    rst $18
    jr nz, jr_053_4aae

    ld b, b
    add h
    nop
    xor $01
    nop
    ld e, a
    and d
    pop hl
    ld c, e
    rst $38
    nop
    ld bc, $01fe
    ld b, a

Jump_053_4b00:
    rst $38
    nop
    dec bc
    cp d
    push bc
    push af
    ld a, [hl+]
    ei
    dec d
    cp $0a
    ld a, [$fe0e]
    ld b, $43
    cp $02
    dec c
    rst $38
    ld bc, $01fd
    ei
    ld bc, $00f5
    ld a, [$dd00]

jr_053_4b1e:
    jr c, jr_053_4b1e

    ld b, $b4
    nop
    dec bc
    ld [hl+], a
    add b
    inc hl
    ld b, b
    nop
    and b
    ld [hl+], a
    jr nz, jr_053_4b38

    sub b
    db $10
    ld d, b
    db $10
    jr nc, @-$6e

    ld hl, sp+$48
    ld hl, sp+$28
    db $fc

jr_053_4b38:
    inc h
    ld b, e
    sbc h
    ld d, h
    dec c

jr_053_4b3d:
    adc $2a
    ld a, [$fe1e]
    ld b, $ff
    ld bc, $e1ff
    db $eb
    dec e
    cp $06
    and l
    nop
    inc a
    ld bc, $8080
    sub l
    jp $8023


    rst $38
    db $ec
    inc hl
    ld bc, $0101
    ld h, c
    ldh [$33], a
    inc bc
    rlca
    rra
    jr c, jr_053_4be1

    ld b, c
    jr nc, @+$41

    ld c, $0f
    ld sp, $413f
    ld a, a
    add e
    cp $67
    ld a, h
    rra
    jr @+$20

    ld de, $231c
    jr c, jr_053_4b9f

    jr nc, jr_053_4bc9

    ld h, e
    ld e, a
    ld e, l
    ld a, a
    ld [hl+], a
    ccf
    ld b, l
    ld a, [hl]
    ld b, a
    ld a, h
    ld c, d
    ld a, l
    adc [hl]
    ld sp, hl
    sub h
    ei
    sbc h
    di
    ld a, b
    ld [hl], a
    dec de
    rla
    ld c, $0f
    ld b, e
    inc b
    rlca
    ld [hl], l
    dec b
    inc bc
    inc bc
    dec b
    ld b, $02
    inc bc
    add e
    rst $10

jr_053_4b9f:
    ldh [$2b], a
    rrca
    rra
    rst $18
    ldh [$78], a
    add a
    ret nz

    rst $38
    ldh a, [$3f]
    cp $0f
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec a
    rst $38
    jp $7bff


    add [hl]
    rst $30

jr_053_4bb8:
    inc c
    rst $00
    inc a
    ld c, $f9
    inc c
    ei
    jr jr_053_4bb8

    dec sp
    rst $30
    db $ec
    rst $38
    and c
    rst $18
    ld b, c
    cp a

jr_053_4bc9:
    jp $833e


    ld a, [hl]
    ld b, e
    rlca
    db $fc
    rrca
    rrca
    db $fc
    ld a, [de]
    db $fd
    ld a, [hl+]
    db $fd
    ret c

    rst $38
    inc l
    rst $38
    inc d
    rst $38
    ld a, [de]
    rst $30
    ld [hl], $eb

jr_053_4be1:
    or [hl]
    rst $18
    ldh [$32], a
    ldh [$fc], a
    ld e, $7f
    add c
    rrca
    ldh a, [$c3]
    db $fc
    ldh [rIE], a
    cp a
    ld a, a
    ld a, a
    ldh a, [rIE]
    add b
    ld b, a
    ld hl, sp+$30
    rst $38
    ret c

    rst $38
    or $ff
    ld sp, hl
    rst $00
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0eff
    cp $3c
    db $fc
    sub $fc
    rst $28
    cp h
    rst $30
    inc e
    jp z, $823f

    ld a, [hl]
    ld b, e
    add c
    ld a, a
    ld b, e
    inc bc
    cp $84
    push hl
    ld [$1ff8], sp
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    rst $38
    add b
    ld [hl], e
    ldh [$3b], a
    inc b
    inc c
    rrca
    dec bc
    ld a, [bc]
    dec c
    dec bc
    adc h
    jp hl


    ld l, [hl]
    ld e, l
    cp [hl]
    xor h
    ld e, a
    ld b, h
    cp a
    db $e4
    rst $38
    ld a, [$ee1f]
    rla
    db $d3
    cpl
    ld bc, $07ff
    rst $38
    db $db

jr_053_4c4a:
    db $fc
    ld a, a
    ldh [$b8], a
    rst $00
    ld h, b
    rst $38
    ld a, b
    rst $38
    xor [hl]
    add a
    rla
    ld bc, $012f
    cp $02
    ld hl, sp+$04
    ld a, h
    db $e4
    inc c
    inc e
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    add b
    add d
    ld [hl+], a
    add c

jr_053_4c6b:
    dec bc
    ld b, c
    ret nz

    ld b, c
    db $e3
    jr nz, @+$01

    jr jr_053_4c4a

    ld b, $ab
    ld bc, $bad5
    nop
    dec bc
    dec de
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_053_4c6b

    jr jr_053_4ce9

    sbc h
    inc [hl]
    call z, $e61a
    ld a, [bc]
    or $01
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ei
    ld e, $ff
    ld b, $33
    adc $45
    ld bc, $08ff
    add e
    cp $e7
    db $fc
    ld a, a
    ld a, b
    ld a, b
    ld b, b
    jr nc, @+$26

    jr nz, jr_053_4ca8

jr_053_4ca8:
    nop
    ld h, $10
    ld b, $18
    db $10
    ld e, $18
    rst $20
    and a
    ldh [rNR43], a
    and b
    nop
    ret nz

    ld [hl+], a
    ld b, b
    db $ec
    jr nz, @+$03

    jr nz, jr_053_4cce

    ld [hl+], a
    ld d, b
    ld [$9010], sp
    xor b
    adc b
    jr @+$0a

    xor b
    ld [$465c], sp
    inc b
    db $fc
    ld b, e

jr_053_4cce:
    ld hl, sp+$08
    inc e
    db $fc
    inc d
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    inc e
    ld a, d
    ld a, [de]
    ld e, $1e
    ld c, $1e
    inc b
    ld c, $07
    ld bc, $0103
    nop
    ld bc, $0202

jr_053_4ce9:
    inc b
    inc b
    jr nc, jr_053_4d25

    add b
    ret z

    nop
    sub $ff
    ld a, a
    inc de
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    ld h, b
    ld h, b
    xor b
    ld hl, sp-$2a
    cp $6b
    ld a, a
    dec [hl]
    ccf
    ld a, [de]
    rra
    rrca
    rrca
    inc hl
    rlca
    inc hl
    inc bc
    rrca
    ld bc, $0301
    rlca
    rlca
    ld [$0607], sp
    ld b, $07
    dec d
    rra
    ld l, d
    ld a, a
    dec e
    rra
    add e
    sub l
    ld [$0101], sp
    ld [bc], a
    inc bc
    inc b

jr_053_4d25:
    rlca
    nop
    add hl, bc
    nop
    ld [hl+], a
    db $10
    inc bc
    jr nz, jr_053_4d67

    jr nz, jr_053_4d6f

    ld l, l
    ld [$1818], sp
    inc hl
    ccf
    ld de, $091f
    rrca
    dec b
    add h
    xor c
    ld a, [de]
    ld bc, $0f01
    rrca
    push af
    rst $38
    dec bc
    rst $38
    push de
    rst $38
    dec sp
    ccf
    rlca
    rlca
    ld bc, $c101
    pop bc
    ld a, a
    rst $38
    ld a, [c]
    rst $38
    add c
    rst $38
    ld a, [c]
    rst $38
    db $fd
    inc hl
    rst $38
    ld d, $fe
    rst $38
    db $fc
    rst $38
    ldh a, [$fe]
    ld bc, $1eff
    db $fd
    add e

jr_053_4d67:
    cp h
    db $e3
    cp $f1
    rst $38
    ld hl, sp-$01
    db $fc

jr_053_4d6f:
    db $e3
    cp $83
    cp $43
    rlca
    db $fc
    add hl, bc
    rrca
    ld hl, sp+$0e
    ld sp, hl
    ld e, $f1
    inc a
    db $e3
    ld a, b
    rst $00
    ld l, d
    rlca
    db $10
    ld [$232c], sp
    inc hl
    or b
    cp c
    ret nc

    ld b, h
    ld a, a
    ret z

    ld b, e
    db $e4
    ccf
    db $10
    ld a, [c]
    rra
    sbc $3f
    or b
    ld e, a
    ret c

    cpl
    ret z

    ccf
    jp hl


    rra
    add $3f
    push hl
    sbc a
    and $44
    sbc a
    db $e3
    dec bc
    ld [c], a
    sbc a
    pop hl
    sbc a
    pop de
    xor a
    pop hl
    rra
    ret nc

    cpl
    and b
    ld e, a
    add e
    add e
    ld a, [bc]
    ld b, b
    cp a
    ret nz

    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $81ff
    ld b, [hl]
    ld a, a
    add b
    dec bc
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

    ld h, b
    rst $38
    sbc b
    rst $38
    ld h, h
    ldh [$2b], a
    jr nz, @+$12

    ld d, b
    ld b, b
    ld b, b
    jr z, @+$2a

    jr nz, jr_053_4e11

    ld [hl+], a
    ld [hl], $91
    sbc a
    ld d, b
    rst $18

jr_053_4de3:
    jr nc, @+$01

    jr z, @+$01

    ld e, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    inc a
    rst $38
    ld b, e
    jp $f020


    ret c

    rst $38
    ld [hl], $ff
    pop de
    rst $38
    jr nz, @+$01

    pop bc
    and h
    sub e
    ldh [$29], a
    ld [$11fb], sp
    rst $30
    and d
    rst $28
    and h
    rst $38
    sbc [hl]
    rst $38
    ld b, e
    rst $38
    ld c, e

jr_053_4e11:
    db $f4
    dec h
    ld a, [$f60b]
    rla
    ld [$f10f], a
    rla
    add sp, $2f
    ret nc

    rla
    add sp, $2f
    sbc $d7
    add sp, $2f
    db $f4
    rra
    db $e4
    ccf
    call nz, $cefb
    ld sp, $83ff
    nop
    ret z

    ld b, l
    ld [$2428], sp
    jr z, jr_053_4e3b

    jr c, jr_053_4e61

    jr c, jr_053_4de3

jr_053_4e3b:
    cp b
    ld b, l
    ld c, b
    ld hl, sp+$03
    ld c, h
    db $fc
    ld c, d
    cp $43
    ld c, c
    rst $38
    ld [bc], a
    ld c, b
    rst $38
    add h
    ld c, b
    rst $38
    inc b
    nop
    add b
    ld b, [hl]
    rst $38
    nop
    add hl, bc

jr_053_4e54:
    ld h, c
    rst $38
    add e
    rst $38
    inc b
    db $fc
    jr jr_053_4e54

    ld h, b
    ldh [rNR44], a
    add b
    ld b, [hl]

jr_053_4e61:
    ret nz

    ld b, b
    ld [bc], a
    and b
    ldh [rNR41], a
    ld b, e
    ldh [$a0], a
    nop
    ret nz

    call nz, $0187
    add b
    ld b, b
    inc hl
    add b
    db $ec
    inc hl
    dec h
    add b
    ld b, e
    ld b, b
    ret nz

    rlca
    ld h, [hl]
    and $59
    ld sp, hl
    ld b, c
    di
    ld bc, $43ff
    ld [bc], a
    cp $03
    db $e4
    db $fc
    jr jr_053_4ea3

    db $ec
    inc hl
    rst $38
    db $ec
    add hl, sp
    dec d
    rrca
    rrca
    db $10
    dec de
    ld h, $3f
    dec sp
    dec sp
    inc l
    inc l
    jr nz, @+$22

    db $10
    db $10
    rra
    rra
    dec de
    inc d

jr_053_4ea3:
    rrca
    add hl, bc
    ld b, $06
    db $ec
    ccf
    rrca
    jr nc, @+$32

    ld c, h
    ld a, h
    ld b, d
    ld a, [hl]
    add c
    rst $38
    add e
    rst $38
    adc a
    rst $38
    ld e, [hl]
    ld a, [hl]
    ld a, e
    ld a, e
    ld [hl+], a
    ld a, a
    ldh [rNR43], a
    ld a, e
    rst $30
    ld sp, hl
    rst $38
    ldh a, [$fb]
    and $63
    ld l, d
    db $e3
    ld [$c067], a
    ld h, h
    jp $e1e6


    ld h, a
    ld [hl], b
    rst $18
    ret c

    cp $3f
    rst $38
    rlca
    rst $38
    add c
    inc a
    ld h, d
    ld e, $1b
    ld b, $07
    ld [bc], a
    inc bc
    ld b, e
    inc b
    ld b, $43
    ld [$010f], sp
    inc b
    rlca
    ld b, l
    inc bc
    ld [bc], a
    dec h
    ld bc, $25ec
    dec c
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    ld hl, sp-$01
    cp $ff
    rst $30
    rst $30
    db $fd
    db $fd
    ld [hl+], a
    rst $38
    ld b, $77
    rst $30
    dec sp
    ei
    rlca
    rst $28
    ld sp, $e743
    add hl, hl
    inc bc
    rst $38
    ld bc, $e11f
    ld b, e
    rra
    ld hl, $3f18
    jp $0df9


    db $fd
    db $dd
    ld [bc], a
    ld [hl], d
    inc bc
    dec b
    inc bc
    db $fc
    inc bc
    xor h
    inc bc
    ld b, $03
    sub a
    ld bc, $0107
    rrca
    nop
    rst $38
    nop
    ld [hl+], a
    rst $38
    dec bc
    rst $20
    add hl, sp
    rst $38
    ld de, $12fe
    or d
    cp $1c
    db $fc
    ldh [$e0], a
    db $f4
    inc hl
    db $ed
    inc b
    ld h, $e6
    add hl, hl
    rst $28
    jr jr_053_4f8c

    rst $38
    db $10
    inc b
    or c
    rst $38
    db $eb
    rst $28
    rst $08
    inc hl
    rst $28
    ld bc, $ffff
    ld b, h
    rst $38
    ld a, a
    ld b, [hl]
    rst $38
    cp a
    ld [$effd], sp
    db $fd
    rst $08
    rst $28
    push bc
    rst $00
    add c
    add c
    ld h, c
    inc de
    ld bc, $c781
    ld b, [hl]
    rst $30

jr_053_4f6c:
    jr c, @+$01

    ld [$85ff], sp
    ld a, [hl]
    ld h, [hl]
    jr c, jr_053_4f9d

    sub c
    sub c
    add c
    add c
    add b
    add b
    db $ec
    cpl
    ld b, $01
    ld bc, $8382
    ld h, h
    rst $20
    rra
    ld h, $ff
    dec c
    cp e
    cp a
    ei
    rst $38

jr_053_4f8c:
    cp $fd
    rst $38
    ret c

    sbc a
    ldh a, [rIE]
    add b
    rst $28
    sbc b
    ld b, e
    rst $08
    xor b
    ldh [rNR42], a
    cp a
    ret nz

jr_053_4f9d:
    ld hl, sp-$39
    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ld sp, hl
    ldh [$ee], a
    ret nz

    and b
    ret nz

    jr nz, jr_053_4f6c

    ccf
    ret nz

jr_053_4fae:
    db $76
    add b
    ldh a, [$80]
    jp hl


    add b
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    ret nz

    rst $38
    cp a
    cp $a3
    ld bc, $0544
    ld c, a
    ld a, l
    ld sp, $0e3f
    ld c, $f0
    inc hl
    ld bc, HeaderGlobalChecksum
    jr nz, jr_053_4fae

    ld b, e
    db $10
    ldh a, [rSC]
    ld [$e8f8], sp
    ld [hl+], a
    ld hl, sp-$20
    dec hl
    ld e, h
    ld e, h
    db $fc
    db $fc
    cp [hl]
    cp $fe
    sbc $fe
    ld e, [hl]
    rst $38
    rrca
    cp a
    rst $08
    sbc [hl]
    and a
    sbc h
    and a
    rst $38
    rlca
    inc [hl]
    call z, $0cfc
    xor $1e
    cp a
    ld a, l
    sbc $d9
    rst $38
    pop hl
    ld a, $42
    ld a, h
    ld c, h
    ld [hl], b
    ret nc

    jr nz, @-$1e

    ld b, b
    ret nz

    ld b, b
    ld b, b
    and l
    nop
    ret z

    ld bc, $e0e0
    and e
    nop
    sub $01
    add b
    add b
    db $ec
    ld b, c
    ld de, $e0e0
    db $10
    ld [hl], b
    add sp, -$08
    cp b
    cp b
    add sp, -$18
    ld [$1008], sp
    db $10
    ldh [$e0], a
    ret nz

    ld b, b
    ldh a, [rNR44]
    push de
    rst $38
    db $ec
    dec hl
    rlca
    ld bc, $0703
    inc b
    inc bc
    inc c
    rrca
    ld [$1e43], sp
    db $10
    inc de
    inc e
    jr nz, jr_053_5074

    jr nz, jr_053_5056

    db $10
    jr nc, jr_053_5071

    jr c, @+$2a

    jr c, jr_053_508d

    ld [hl], h
    ld b, h
    ld [hl], l
    add h
    db $e3
    add d
    db $e3
    add c
    ld b, e
    ld h, e
    ld b, b
    rrca
    daa
    jr nz, @+$39

    jr nc, jr_053_5095

jr_053_5056:
    jr z, @+$19

    ld h, $13
    ld de, $1003
    rrca
    inc c
    inc bc
    inc bc
    adc [hl]
    pop bc
    ld [hl+], a
    ld bc, $80cf
    ld c, $04
    inc c
    ld e, $12
    ccf
    ld hl, $413f
    ld a, a

jr_053_5071:
    ld b, c
    ld sp, hl
    add c

jr_053_5074:
    pop hl
    add c
    ret nz

    inc h
    add b
    dec b
    ld b, e
    ld b, b
    ld c, a
    ld b, b
    ld e, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_053_5084

jr_053_5084:
    ld a, a
    ld b, e
    db $10
    rst $38
    nop
    ld [$ff46], sp
    nop

jr_053_508d:
    ld [bc], a
    add b
    rst $38
    ld b, b
    ld c, b
    rst $38
    nop
    nop

jr_053_5095:
    add c
    and h
    adc l
    nop
    ld [bc], a
    ld l, c
    add hl, de
    inc e
    inc e
    ld [c], a
    cp $07
    rst $38
    sbc c
    rst $38
    ld [hl], c
    push af
    db $10
    ld a, e
    sbc b
    cp l
    adc b
    ei
    adc b
    cp l
    ld b, h
    ld e, a
    ld b, h
    ld a, a
    ld [hl+], a
    ccf
    jr nz, @+$41

    ld b, e
    db $10
    rra
    ld b, e
    ld [$050f], sp
    inc b
    rlca
    ld b, $07
    add [hl]
    add a
    ld b, h
    adc a
    adc c
    ld [bc], a
    adc b
    sbc a
    sub b
    ld b, l
    rst $18
    ld d, b
    ld b, e
    rst $28
    jr z, jr_053_50e5

    rst $38

jr_053_50d2:
    jr @+$01

    inc c
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld [$00eb], sp
    push de
    nop
    xor e
    ld bc, $86d7

jr_053_50e5:
    cp a
    add e
    db $e3
    ld [bc], a
    jr nz, @+$01

    ld b, b
    ld l, a
    inc bc
    ret nz

    ret nz

    jr nz, jr_053_50d2

    ld b, e
    sub b
    ldh a, [rP1]
    sub b
    ld c, b
    ldh a, [$50]
    rlca
    ld de, $17f1
    rst $30
    add hl, de
    ld sp, hl
    db $10
    ldh a, [rSCX]
    ld [$03f8], sp
    ld a, [bc]
    ld hl, sp+$0d
    ld hl, sp+$43
    rlca
    db $fc
    dec c
    add a
    db $ec
    rst $00
    ld d, h
    jp $e36a


    ld [hl+], a
    pop hl
    ld hl, $11f1
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld bc, $04fc
    ld b, e
    cp $02
    add hl, bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    push af
    rst $38
    rrca
    ld b, l
    rst $38
    nop
    nop
    rst $38
    db $76
    dec bc
    inc a
    inc a
    ld e, a
    ld b, e
    ld e, a
    ld b, c
    cp [hl]
    add d
    cp l
    add h
    rst $38
    add h
    ld b, h
    rst $38
    ld [$1009], sp
    ld a, a
    ld bc, $023f
    ld a, a
    nop
    cp a
    nop
    ld a, a
    add a
    nop
    or c
    nop
    ld bc, $fe43
    ld [bc], a
    nop
    ld hl, sp+$43
    inc b
    db $fc
    dec de
    add h
    db $fc
    add h
    ld a, b
    ld b, h
    ld a, a
    ld b, b
    ccf
    daa
    jr c, @+$2a

    jr @+$1a

    sbc h
    inc d
    adc [hl]
    adc d
    rst $08
    adc c
    rst $00
    call nz, $e3e3
    rst $38
    ld e, $c1
    ld bc, $7683
    dec b
    ret nz

    ret nz

    jr nc, jr_053_51b2

    ld hl, sp+$08
    call nz, $04b9
    ld [$34fc], sp
    cp $42
    add e

jr_053_518d:
    nop
    cp b
    ld de, $06fe
    ld hl, sp+$18
    ldh [rNR41], a
    and b
    ldh [$e0], a
    ld [hl], b
    ldh a, [$30]
    ldh a, [$d8]
    ld hl, sp-$18
    cp b
    xor b
    ld b, e
    ld hl, sp-$38
    add hl, bc
    or b
    ret nc

    ld [hl], b
    db $10
    ld h, b
    jr nz, jr_053_518d

    ld h, b
    sub b
    sub b
    inc hl
    db $10

jr_053_51b2:
    ld bc, $0808
    inc hl
    inc b
    dec bc
    ld [bc], a
    ld [bc], a
    add d
    add d
    pop hl
    ld h, c
    pop af
    sub c
    ld sp, hl
    ld sp, hl
    or $06
    rst $38
    ld h, [hl]
    ld [bc], a
    ld bc, $0101
    adc c
    adc c
    db $ec
    dec h
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    inc hl
    ld bc, $0709
    rlca
    ld c, $09
    inc c
    ld a, [bc]
    ld b, $06
    rlca
    dec b

jr_053_51e1:
    inc hl
    ld [bc], a
    dec c
    ld b, $04
    rlca
    inc b
    dec b
    ld b, $07
    ld c, $1f
    rra
    rlca
    rrca
    ld bc, $6303
    dec bc
    ld b, b
    ret nz

    jr nz, jr_053_5218

    ld [hl], c
    ld de, $8dfd
    ld a, a
    ld b, e
    rst $38
    add b

Call_053_5200:
    ld b, e
    ld a, a
    nop
    ld b, l
    rst $38
    add b
    inc bc
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld b, e
    ccf

jr_053_520d:
    add b
    inc b
    ld a, a
    ld a, b
    rlca
    inc b
    inc bc
    add e
    and a
    ld b, $18

jr_053_5218:
    inc b
    inc h
    ld h, $22
    dec sp
    ld hl, $1f43
    db $10
    rlca
    rrca
    ld [$782f], sp
    rra
    sbc b
    sbc a
    add h
    ld b, h
    rst $38
    ld b, b
    inc e
    and c
    db $fc
    ld [hl+], a
    cp $c2

jr_053_5233:
    ld a, a
    ld [bc], a
    ld a, l
    ld [bc], a
    ei
    inc b
    rst $38
    add b
    ld b, e
    ld b, b
    inc bc
    ld b, b
    dec b
    jr nz, jr_053_520d

    jr nz, jr_053_5233

    db $10
    rst $20
    jr jr_053_51e1

    cp $c7
    rst $38
    add e
    nop
    jr c, jr_053_5252

    ld [bc], a
    ld [bc], a
    add d

jr_053_5252:
    add d
    ld b, e
    pop bc
    ld b, c
    inc bc
    ldh [rNR41], a
    add sp, $28
    ld b, h
    db $fc
    inc d
    ldh [rNR42], a
    inc b
    or $0a
    jp hl


    rla
    call nc, $ab2b
    ld d, l
    sub $2a
    xor d
    ld d, [hl]
    push de
    dec hl
    xor d
    ld d, l
    ld d, h
    xor e
    cp e
    rst $30
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    cp $e3
    scf
    ldh [$fd], a
    db $e3
    ld sp, hl
    inc h
    db $fd
    ld b, h
    inc b
    rst $38
    dec bc
    rst $18
    inc [hl]
    sbc a
    ld c, b
    rst $18
    ld b, b
    cp $41
    db $fc
    jp Jump_053_43fc


    ld b, e
    db $fc
    inc bc
    ld b, a
    rst $38
    nop
    dec b
    pop af
    ld c, $f0
    rrca
    ld hl, sp+$07
    ld b, e
    rst $38
    nop
    ld bc, $807f
    and e
    rst $18
    rrca
    ld h, b
    ld h, b
    ldh a, [rNR10]
    db $fd
    dec c
    rst $38
    ld [de], a
    cp a
    sbc d
    cp a
    sbc [hl]
    cp l
    sbc a
    cp d
    sbc a
    add l
    add e
    ldh [rNR42], a
    or [hl]
    sbc a
    inc sp
    rra
    ld [hl], c
    rra
    pop af
    rra
    ldh a, [$1f]
    ld hl, sp-$71
    ld sp, hl
    adc a
    ld a, l
    rst $00
    rst $08
    ld [hl], a
    ld h, a
    cp e
    or e
    ld e, l
    ld e, e
    xor h
    xor e
    ld d, h
    rst $10
    xor b
    xor a
    ret nc

    rst $38
    ld b, b
    xor a
    ld [hl], b
    ld b, l
    rst $38
    nop
    add hl, bc
    ld a, $c1
    ld e, $e1
    inc e
    db $e3
    inc a
    jp $02fd


    ld b, e
    rst $38
    stop
    or $43
    add hl, bc
    rst $38
    ld a, [bc]
    ld a, [bc]
    rst $38
    ld a, [bc]
    db $fd
    ld d, $ff
    inc e
    rst $28
    ld a, $cf
    ld [hl], a
    xor e
    nop
    jr nc, jr_053_532d

    add b
    ldh [rNR50], a
    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [$60], a
    ldh [$a0], a
    ldh [$62], a
    and $b9
    ld sp, hl
    rst $18
    pop af
    or $6a
    cp $26
    cp $22
    cp $a9
    ld [hl], a
    add l
    rst $30
    ld b, $f5
    ld b, $f3
    ld [bc], a
    pop af
    ld a, [bc]
    ei
    inc b
    rst $38
    xor b

jr_053_532d:
    nop
    ld [hl], e
    dec bc
    ld a, [hl]
    add d
    ld a, h
    add h
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
    ldh a, [rNR23]
    db $fc
    ld e, $ff
    rra
    call z, $f02e
    ld hl, sp-$14
    jr nc, jr_053_534f

jr_053_534f:
    add b
    and e
    nop
    jp nz, $8000

    ld b, e
    ld b, b
    ret nz

    nop
    ret nz

    inc hl
    ld b, b
    cp a
    nop
    ld [de], a
    rst $38
    ld a, a
    ld [hl+], a
    ld bc, $0246
    inc bc
    ld bc, $0101
    add e
    adc h
    ld d, $05
    ld b, $1b
    ld a, [de]
    inc hl
    inc h
    inc bc
    inc h
    ld b, a
    ld b, h
    ld c, a
    ld b, h
    ld e, a
    ld b, h
    ld [hl], a
    ld c, h
    inc sp
    inc l
    rra
    ld a, [de]
    rlca
    ld b, $09
    ld b, e
    add hl, bc
    ld bc, $1044
    inc de
    dec b
    rla
    db $10
    rrca
    ld [$0707], sp
    db $ec
    dec h
    ldh [$39], a
    ld [hl], b
    ld [hl], b
    adc b
    adc c
    ld [bc], a
    ld b, $2c
    inc e
    ret nc

    jr c, jr_053_534f

    ld [hl], b
    ld h, b
    pop af
    ldh [$e1], a
    ldh a, [$c2]
    push af
    adc a
    db $eb
    rra
    push de
    ccf
    rst $28
    ccf
    rst $10
    ld a, a
    xor a
    ld a, a
    rst $18
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    cp $1f
    di
    inc c
    ei
    add h
    ei
    call nz, $c4ff
    db $fd
    ld [c], a
    or $6b
    ld a, [$9d65]
    sbc d
    ld b, $07
    db $dd
    nop
    ld hl, $20e0
    rrca
    rrca
    inc de
    inc de
    daa
    inc l
    cpl
    jr nc, jr_053_543b

    ccf
    ret nz

    add a
    inc bc
    inc e
    rrca
    jr nz, jr_053_53f3

    ld b, b
    rra
    add c
    ld e, $03
    ccf
    inc bc
    ld a, [hl]
    inc bc
    ld a, a
    add c
    cp a
    pop bc
    rst $38
    ret nz

jr_053_53f3:
    rst $18
    ld b, [hl]
    ldh [rIE], a
    dec e
    rst $18
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    db $fd
    inc bc
    ld a, [$f507]
    rrca
    ld a, [$ad0f]
    ld e, a
    ld e, a
    xor a
    xor a
    ld e, a
    ld b, a
    cp a
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    ccf
    ld l, h
    ld b, $60
    ld h, b
    jr nz, jr_053_547c

    ld [hl], b
    jr nc, jr_053_548f

    inc h
    jr nc, @-$1e

    ld [hl+], a
    ld [hl], b
    ld hl, sp-$07
    dec bc
    add a
    ld b, $01
    adc a
    nop
    rst $38
    ret nz

    ld a, a
    or b
    db $fc
    rrca
    db $eb
    rla
    db $ec
    di
    ld e, d
    db $fd
    cp l
    cp $5c

jr_053_543b:
    rst $38
    cp a
    cp $7e
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    ld a, d
    ld b, e
    ret nz

    ccf
    dec b
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    add e
    rlc d
    ldh a, [rIE]
    ld a, b
    ld b, h
    rst $38
    ld hl, sp+$43
    ldh a, [rIE]
    rlca

jr_053_545d:
    ldh [rIE], a
    add e
    rst $38
    inc c
    db $fc
    ld [hl], b
    ldh a, [$ae]
    nop
    or [hl]
    nop
    jr nc, jr_053_54af

    jr nc, @+$52

    ld bc, $3070
    ld [hl+], a
    ld [hl], b
    ld bc, $f0e0
    inc hl
    ldh [rTMA], a
    ret nz

    ld hl, sp-$80
    ld b, h

jr_053_547c:
    or b
    ld [hl], d
    jr @+$46

    ld a, [$1308]
    add h
    db $fc
    ld b, d
    cp $22
    cp $24
    db $fd
    dec d
    db $fd
    sbc c
    ld a, e

jr_053_548f:
    rrca
    db $fc
    adc a
    ld a, b
    dec b
    rst $38
    ld b, $fe
    ld b, e
    inc b
    db $fc
    ldh [rNR42], a
    ld b, $fe
    rlca
    db $fd
    rlca
    db $fc
    dec c
    rst $38
    dec bc
    ei
    ld de, $10f1
    ldh a, [rNR41]
    ldh [$33], a
    rst $30
    ld a, [hl]

jr_053_54af:
    adc $dc
    db $ed
    jr c, jr_053_54ec

    jr nz, jr_053_54d6

    ld sp, $3f20
    jr nz, @+$20

    ld de, $0f0f
    db $ec
    dec h
    inc de
    jr nz, jr_053_5523

    jr z, jr_053_545d

    add h
    db $e4
    ld b, $12
    ld [bc], a
    ld c, $86
    add d
    add $42
    ld c, d
    add $f4
    adc h
    ld a, b
    ld a, b
    ld h, c

jr_053_54d6:
    rra
    ld [$2418], sp
    ld h, h
    ld b, d
    or [hl]
    add $8a
    ld b, $0a
    ld a, [bc]
    ld b, $3c
    inc b
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    add b
    add b
    ld b, b

jr_053_54ec:
    ld b, b
    ld h, b
    and b
    jr nz, jr_053_5551

    ldh [rNR41], a
    add b
    ld b, b
    ld b, b
    ret nz

    add l
    ld bc, $ff78
    ld [hl], l
    nop
    ld bc, $8283

Jump_053_5500:
    nop
    ld bc, $e061
    cpl
    ld b, b
    jr nz, jr_053_5508

jr_053_5508:
    ld [hl], b
    nop
    dec sp
    ld hl, $001e
    rra
    ld de, $000e
    rrca
    add b
    ld c, a
    nop
    ld h, a
    nop
    ccf
    ld [$2c37], sp
    inc de
    ld b, $19
    rlca
    ld [$0c03], sp

jr_053_5523:
    dec bc
    inc b
    ld hl, $00c6
    ld a, a
    ld bc, $003e
    rra
    nop
    rrca
    jr nz, jr_053_5550

    ld [$0007], sp
    rlca
    ld [hl+], a
    inc bc
    inc hl
    rlca
    dec b
    rrca
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [$0401], sp
    inc b
    or l
    sbc $e0
    inc hl
    add c
    ld b, d
    add b
    ld b, e
    pop bc
    ld [hl+], a
    ret nz

jr_053_5550:
    inc hl

jr_053_5551:
    ld h, c
    sub d
    ld h, b
    sub e
    ld d, c
    xor d
    ld d, b
    xor a
    ret z

    scf
    ld l, h
    sub e
    xor h
    ld d, e
    ld h, $d9
    ld b, $f9
    daa
    ret c

    inc hl
    call c, $ec13
    sbc e
    ld h, h
    db $db
    inc h
    ld b, e
    rst $38
    nop
    inc bc
    db $fd
    ld [bc], a
    xor d
    ld d, l
    and e
    add c
    inc c
    dec d
    ld [$d52a], a
    inc d
    db $eb
    ld a, [bc]
    push af
    inc [hl]
    db $eb
    push de
    rst $38
    ld_long $ff24, a
    rlca
    ld a, a
    rst $38
    rst $38
    nop
    cp a
    ld [hl], b
    rst $38
    inc c
    ld h, a
    rrca
    ld b, b
    nop
    inc h
    ld b, b
    nop
    ld h, h
    sub d
    ld h, h
    ld d, b
    xor [hl]
    ld b, h
    cp d
    ld b, l
    cp d
    ld h, h
    sbc e
    ld b, e
    ld h, [hl]
    sbc c
    dec b
    or [hl]
    ld c, c
    ld a, a
    add b
    cp a
    ld b, b
    adc l
    add e
    ld bc, $807f
    ld b, e
    rst $38
    nop
    ld bc, $08f7
    add e
    add e
    ld d, $f5
    ld a, [bc]
    ld a, [c]
    dec c
    pop af
    ld c, $f2
    dec c
    pop hl
    ld e, $60
    sbc a
    ld hl, $2ade
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, a
    rst $38
    cp a
    inc h
    rst $38
    ld bc, $f0cf
    ld b, e
    rst $38
    nop
    nop
    rst $38
    ld l, l
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld b, h
    ld [bc], a
    ld bc, $0500
    ld b, e
    inc bc
    inc b
    inc bc
    add a
    ld [$8c03], sp
    ld b, e
    rlca
    adc b
    dec bc
    ld b, $d9
    ld h, $d9
    ld b, h
    cp e
    jp nz, $c43d

    dec sp
    ld [c], a
    dec e

jr_053_55fd:
    jp $a900


    dec b
    push bc
    ld a, [hl-]
    adc d
    ld [hl], l
    add h
    ld a, e

jr_053_5607:
    add e
    add e
    jp $83e8


    add e
    ld [$ff01], sp
    xor e
    ld a, a
    ld d, l
    rst $38
    dec hl
    rst $38
    ld e, a
    and [hl]
    nop
    or e
    dec bc
    di
    db $fc
    ld a, a
    add b
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    ld a, b
    ld b, h
    add b
    nop
    add hl, bc
    ld [$00c4], sp
    call z, $d20c
    ld c, b
    sub [hl]
    inc e
    ld [c], a
    ld b, e
    jr c, jr_053_55fd

    ld b, e
    ld [hl], b
    adc b
    inc c
    ldh [rNR10], a
    ld h, b
    sub b
    nop
    ldh a, [rP1]
    ldh a, [rNR32]
    cp $2b
    rst $38
    dec [hl]
    ld b, h
    rst $38
    ld a, a
    inc b
    rst $38
    cp $bf
    db $fc
    rst $18
    ld b, e
    db $fc
    rst $28
    inc d
    ld hl, sp-$11
    add sp, -$1d
    call nz, $8487
    ld b, a
    inc b
    add e
    inc b
    ld e, a
    ld [$08af], sp
    rst $38
    inc e
    rst $38
    scf
    cp $c2
    db $ec
    add hl, sp
    ld bc, $8080
    and h
    nop
    ld c, a
    ld a, [bc]
    jr nc, jr_053_5607

    db $10
    sbc b
    jr @-$36

    ld [$c8c8], sp
    ldh [rNR50], a
    ld b, e
    db $f4
    inc d
    inc bc
    db $fc
    inc d
    db $ec
    inc d
    ld b, e
    ld hl, sp+$08
    rlca
    db $fc
    inc b
    ld a, [$fe02]
    add d
    ld a, l
    ld b, c
    rst $38
    db $ec
    inc sp
    rrca
    jr nc, jr_053_56ca

    ld c, b
    ld a, b
    ld b, a
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    jr c, @+$41

    rla
    rra
    db $10
    rra
    ld b, e
    ld [$170f], sp
    inc b
    rlca
    inc bc

jr_053_56af:
    inc bc
    ld h, c
    ld h, c
    sbc a
    rst $38
    sub b
    rst $38
    ld c, [hl]
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    ld d, b
    ld a, a
    jr nc, jr_053_56ff

    inc c
    rrca
    inc bc
    inc bc
    ld [hl], l
    dec h
    ld bc, $80db
    ld h, c

jr_053_56ca:
    ld a, [bc]
    ret nz

    ret nz

    jr nz, jr_053_56af

    pop af
    pop af
    dec c
    db $fd
    inc bc
    rst $38
    ld bc, $ff44
    nop
    inc d
    ret nz

    rst $38
    jr c, @+$01

jr_053_56de:
    add [hl]
    rst $38
    ld b, c
    rst $38
    ld [hl], $fe
    jr jr_053_56de

    and b
    ldh [rLCDC], a
    ret nz

    ld b, d
    add b
    add l
    add b
    ld a, [bc]
    add [hl]
    call $0d61
    ld [$1808], sp
    jr jr_053_5728

    jr nc, jr_053_574a

    ld d, b
    ld c, c
    ld a, c
    add $bf

jr_053_56ff:
    adc l
    ld a, [$1045]
    rst $38
    dec b
    jr nz, @+$01

    ld hl, $22ff
    cp $43
    and h
    db $fc
    dec c
    ld c, b
    ld a, b
    ld sp, $f131
    pop af
    adc l
    db $fd
    ld b, e
    ld a, a
    ld hl, $203f
    ccf
    ld b, e
    ld h, b
    ld a, a
    ld b, $90
    rst $38
    adc b
    rst $38
    add h
    rst $38
    ld b, e

jr_053_5728:
    ld b, h
    rst $38
    ld b, b
    inc bc
    jr nz, @+$01

    and b
    rst $38
    add e
    adc a
    ld c, $46
    rst $38
    pop bc
    rst $38
    jr nz, jr_053_5778

    jr c, jr_053_575a

    rra
    rlca
    cpl
    nop
    ld e, a
    nop
    cp a
    add h
    add e
    ldh [$27], a
    rra
    rra
    ldh [rIE], a

jr_053_574a:
    ret nz

    ccf
    db $e3
    rst $18
    jr c, jr_053_577f

    jr nc, @+$31

jr_053_5752:
    jr nz, @+$41

    ld h, b
    ld e, a
    ret nc

    xor a
    and b
    ld e, a

jr_053_575a:
    ld d, b
    xor a
    and e
    ld e, a
    ld c, h
    cp h
    jr nc, jr_053_5752

    ld b, b
    ldh [$c0], a
    ret nz

    add b
    add b
    push de
    add b
    db $eb
    add b
    rst $38
    add b
    ld c, d
    rst $38
    nop
    nop
    add b
    ld b, e
    ld a, a
    ret nz

    ld b, l
    ccf

jr_053_5778:
    ldh [$03], a
    rra
    ldh a, [rIE]
    ldh a, [rOBP1]

jr_053_577f:
    rrca
    ld hl, sp+$0b
    rra
    ldh a, [$1f]
    di
    cp h
    rst $20
    ld hl, sp-$31
    ld sp, hl
    rrca
    cp $0f
    ld b, e
    db $fc
    rlca
    ld a, [bc]
    cp $03
    rst $38
    ld bc, $8000
    ld h, b
    ldh a, [$0c]
    cp $f1
    add $00
    xor c
    add hl, bc
    ld b, $fe
    ld [$38f8], sp
    ld hl, sp-$02
    add $1f
    ld bc, $1f43
    nop
    dec b
    ccf
    nop
    ld a, $01
    ld a, [hl]
    ld bc, $fe46
    nop
    ld b, e
    ld bc, $00fe
    ld bc, $a683
    xor [hl]
    db $eb
    ld [bc], a
    ld [bc], a
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    inc b
    pop af
    ld de, $1ffe
    pop af
    and [hl]
    and b
    ld [bc], a

jr_053_57d1:
    ldh a, [rIE]
    ld c, $86
    and h
    ld bc, $ff87
    and a
    nop
    ld [hl], b
    dec e
    ld b, b
    ret nz

    jr nc, jr_053_57d1

    adc b
    ld hl, sp+$44
    ld a, h
    ld [hl+], a
    ld a, $32
    ld a, $52
    ld a, [hl]
    add h
    db $fc
    sbc b
    ld hl, sp-$20
    ld h, b
    ret nz

    ld b, b
    ret nz

    and b
    add b
    ldh [$f0], a
    ret nc

    ld d, b
    ret nc

    ld b, e
    ld a, b
    ld l, b
    ld b, $3c
    ld h, h
    inc e
    inc h
    ld a, h
    add h
    ld hl, sp-$7d
    ld bc, $0090
    ret z

    ld b, e
    ldh a, [rNR10]
    ld bc, $20e0
    ret


    or d
    add hl, bc
    ld a, $3e
    pop bc
    rst $38
    ld bc, $c7ff
    rst $38
    add hl, sp
    rst $38

jr_053_581e:
    ld b, e
    ld [bc], a
    cp $04
    inc b
    db $fc
    jr c, jr_053_581e

    ret nc

    and h
    nop
    ld b, a
    ld h, c
    rst $38
    ld [hl], l
    dec b
    ld bc, $0301
    ld [bc], a
    ld bc, $ec01
    dec a
    ld b, $1e
    ld e, $3f
    ld hl, $121f
    rrca
    ld [hl+], a
    add hl, bc
    ld de, $787d
    rst $38
    add h
    rrca
    dec b
    adc a
    add e
    ld [hl], a
    ld b, e
    ccf
    ld hl, $101f
    rrca
    inc c
    inc bc
    inc bc
    push bc
    ret c

    inc b
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $24
    rlca
    inc bc
    dec sp
    dec sp
    ld c, l
    ld a, l
    ld b, e
    ld b, a
    ld a, a
    dec b
    daa
    ccf
    ld a, $3e
    inc e
    inc e
    sub l
    nop
    ld [bc], a
    rlca
    rlca
    ld b, $9f
    sbc b
    ei
    ld h, c
    ld h, a
    ld b, d
    ld b, e
    adc $84
    inc bc
    sbc h
    adc b

jr_053_587e:
    db $fc
    ld [$ff46], sp
    db $10
    ld b, e
    sub c
    rst $38
    ld c, $52
    rst $18
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec b
    ld a, l
    rrca
    rst $38
    rrca
    rst $08
    rst $08
    rst $28
    add hl, hl
    rst $38
    ld bc, $ff9c
    ld [hl], a
    ldh [rNR42], a
    ldh a, [$f0]
    cp $0e
    rst $38
    pop hl
    rst $38
    inc bc
    cp h
    inc c
    ld [hl], b
    db $10
    ld a, a
    ccf
    rst $38
    jr nz, jr_053_587e

    ld b, [hl]
    ld hl, sp+$58
    di
    pop hl
    rst $38
    add e
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld a, [hl]
    add c
    add c
    ret nz

    ret nz

    inc h

jr_053_58c1:
    ldh [rNR52], a
    ldh a, [$09]
    db $ec
    xor $f2
    rst $38
    jp $e7df


    rst $38
    cp $fe
    add e
    nop
    sub b
    ld a, a
    and e
    nop
    xor b
    and a
    nop
    ld [hl], d
    add hl, bc
    ret nz

    ld b, b
    jr nz, jr_053_58de

jr_053_58de:
    and b
    jr nz, jr_053_58c1

    and b
    ld h, b
    ld h, b
    ld hl, sp+$2f
    nop
    ld c, c
    ld b, e
    inc bc
    ld [bc], a
    add hl, bc
    rlca
    inc b
    dec b
    inc b
    ld h, h
    ld h, h
    ld a, a
    ld e, h
    ld a, a
    ld b, h
    ld b, e
    daa
    ld [hl+], a
    rlca
    rla
    ld de, $090f
    rrca
    ld [$0607], sp
    add [hl]
    nop
    ld a, [de]
    inc b
    ld bc, $0302
    nop
    inc bc
    ld h, l
    ld bc, $c0c0
    ld b, e
    ret nz

    ld b, b
    dec c
    rst $20
    daa
    cp h
    sbc b
    sbc c
    sub b
    di
    and c
    rst $30
    ld b, d
    rst $38
    ld b, h
    cp $84
    ld c, b
    rst $38
    adc b
    ld [bc], a
    ld d, c
    rst $38
    ld d, e
    add l
    nop
    add $04
    rlca
    cp a
    ld c, $fe
    rlca
    inc hl
    rst $20
    nop
    rst $28
    sub e
    nop
    sub $e0
    ld hl, $f8f8
    cp $06
    rst $38
    ld bc, $70ff
    rst $38
    add e
    ld e, $0e
    ccf
    ld de, $606f
    rst $18
    ld c, a
    ei
    or b
    pop af
    ret nz

    rst $38
    add e
    rst $38
    dec c
    rst $38
    ld a, b
    sbc $dc
    jp $e1c2


    pop hl
    add e
    ld bc, $011e
    add b
    add b
    and a
    ld bc, $0394
    ldh [rNR41], a
    ldh a, [rNR10]
    jp $f900


    inc hl
    add b
    inc hl
    ld b, b
    ld bc, $c0c0
    sub e
    ld bc, $0b8a
    dec b
    inc b
    inc [hl]
    inc [hl]
    ccf
    inc l
    cpl
    inc h
    daa
    ld [hl+], a
    rla
    ld [de], a
    add e
    ld bc, $c7ac
    ld bc, $036f
    ldh [$a0], a
    ldh [rNR41], a
    add e
    ld bc, $87cc
    rst $18
    nop
    jp nz, $df86

    ld bc, $0000
    add a
    pop de
    nop
    ret nz

    add h
    pop de
    add l
    nop
    add b
    ld [bc], a
    dec e
    dec e
    daa
    ld b, h
    ccf
    inc hl
    ld bc, $3f33
    dec h
    ldh a, [rTMA]
    ret c

    call c, $fee4
    add $fe
    adc $22
    cp $8b
    nop
    ret nz

    jp $ff81


    halt
    ld bc, $0145
    ld [bc], a
    nop
    nop
    ld b, e
    ld bc, $6100
    db $10
    inc bc
    rlca
    ld [$100f], sp
    ld c, $11
    ld [$1817], sp
    daa
    ld [hl], b
    adc [hl]
    nop
    ld a, $00
    inc c
    add a
    and l
    ld [$0403], sp
    rlca
    jr jr_053_5a02

    inc hl
    nop
    rrca
    nop

jr_053_59ea:
    ld b, e
    rlca
    nop
    inc b
    ld bc, $0c03
    ld c, $11
    add e
    and a
    dec bc
    inc b
    dec bc
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    ld bc, $00fe
    inc a

jr_053_5a02:
    ld [hl], b
    ld e, $0c
    ld e, [hl]
    ld hl, $807f
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    ld a, $42
    cp l
    ld bc, $02fe
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $00
    nop
    jp $8000


    add l
    rst $10
    dec c
    add hl, bc
    ld b, $20
    rra
    nop
    rlca
    inc b
    adc e
    adc d
    ld [hl], l
    db $f4
    dec bc
    ld a, b
    add a
    ld b, e
    inc a
    jp $180d


    rst $20
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, [hl]
    nop
    cp $02
    db $fc
    add b
    jr c, jr_053_59ea

    nop
    ld e, $6a
    ld [de], a
    inc bc
    rlca
    ld [$140b], sp
    ld bc, $001a
    ld bc, $0a05
    ld [bc], a
    dec c
    ld bc, $0006
    db $e3
    ld [bc], a
    db $fd
    and e
    db $dd
    ld e, $00
    rst $38
    ld b, b
    cp a
    add b
    ld l, a
    nop
    add e
    add b
    ld b, c
    ld b, c
    and b
    add b
    ld b, c
    nop
    call $930c
    ld a, $01
    inc a
    ld b, e
    inc [hl]
    ld c, e
    ld l, b
    sub a
    db $10
    rst $28
    nop
    db $fc
    nop
    ld b, l
    ld hl, sp+$00
    ld b, h
    ldh a, [rP1]
    nop
    db $10
    ld b, e
    ldh [rP1], a
    nop
    ret nz

    add h
    ld a, [$0001]
    ld [bc], a
    add h
    add e
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    add h
    add e
    ld h, e
    ld de, $a040
    ldh [rNR10], a
    ldh [rNR13], a
    di
    inc c
    ld sp, hl
    ld b, $5c
    and e
    cp d
    ld b, l
    rla
    add sp, $0e
    pop af
    add e
    nop
    xor d
    ld de, $3fc0
    ld hl, sp+$07
    inc e
    db $e3
    ld [$14f7], sp
    db $eb
    dec bc
    push af
    add hl, bc
    rst $30
    rlca
    ld hl, sp+$0f
    ldh a, [rSCX]
    ccf
    ret nz

    ld b, l
    ld a, a
    add b
    ld bc, $00ff
    ld c, e
    ccf
    nop
    nop
    ld a, $46
    ld bc, $457f
    cp $02
    ld c, c
    db $fc
    inc b
    inc bc
    ld a, b
    ld [$08f8], sp
    xor d
    nop
    ld c, $07
    ld b, d
    ret nz

    daa
    ret nz

    ld h, $80
    ld [hl], e
    nop
    ld b, h
    rst $38
    nop
    rlca
    inc d
    rst $30
    inc h
    rst $20
    ld c, h
    rst $00
    ld e, h
    rst $00
    ld b, h
    db $f4
    adc a
    inc d
    rrca
    rst $38
    ld c, $ff
    ld a, [bc]
    db $fc
    add hl, bc
    db $fc
    nop
    cp $00
    rst $38
    inc bc
    cp $01
    rst $38
    ld bc, $00f8
    cp $00
    ld b, a
    rst $38
    nop
    add e
    db $ed
    dec b
    rst $38
    ldh a, [rIF]
    ld c, $01
    ld bc, $2aec
    ld b, e
    add b
    nop
    ld b, h
    ret nz

    nop
    db $10
    inc c
    adc [hl]
    ld [hl], d
    ld a, [c]
    call nz, $3884
    ld [$10f0], sp
    ldh [rNR41], a
    ld b, b
    and b
    ld b, b
    ret nz

    ret nz

    add h
    add d
    dec c
    and b
    and b
    jr jr_053_5b56

    inc b
    inc b
    jp nz, $f202

    ld [bc], a
    rst $38
    ld bc, $05fb
    ld b, e
    db $fd
    inc bc
    dec b
    rst $18
    add hl, sp
    cp $c6
    jr c, @+$3a

    ld [hl], c
    rst $38
    ld h, c
    rrca

jr_053_5b56:
    ld bc, $0701
    ld b, $0c
    ld [$1019], sp
    ld a, [de]
    db $10
    dec a
    jr nz, @+$41

    jr nz, jr_053_5be4

    ld b, b
    ld b, e
    ccf
    jr nz, @+$09

    ld l, $31
    inc de
    inc e
    jr c, jr_053_5b97

    jr jr_053_5b91

    jp $ec98


    add hl, hl
    dec b
    ld bc, $0301
    ld [bc], a
    ld bc, $8301
    add l
    adc c
    or l
    dec c
    ld b, b
    ld b, b
    ld a, [$f7ba]
    dec c
    cp a
    ld bc, $005f
    cp [hl]
    ld bc, $017e
    ld b, e

jr_053_5b91:
    db $fc
    inc bc
    ld de, $17e8
    ld d, b

jr_053_5b97:
    xor a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    cp $ab
    ei
    ld [hl], b
    ldh a, [$27]
    ld [hl], b
    ld bc, $7830
    daa
    jr c, jr_053_5bb1

    jr jr_053_5bec

    inc e

jr_053_5bb1:
    inc e
    ld [hl+], a
    rra
    ld [$3f1e], sp
    inc [hl]
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    rst $38
    add b
    add e
    add e
    ld a, [bc]
    rst $38
    add b
    rst $18
    jr nz, @-$53

    ld d, h
    rst $10
    jr z, @+$01

    nop
    cp $c3
    cp b
    ld b, $80
    db $fd
    add d
    ld l, d
    ld d, l
    ld [hl], h
    ld e, e
    xor c
    ei
    ld bc, $8080
    ld b, e
    ld b, b
    ret nz

    ld bc, $a0a0
    inc hl
    ldh [rSC], a

jr_053_5be4:
    ld b, b
    ldh [rNR41], a
    ld [hl+], a
    and b
    dec d
    ret nc

    ld d, b

jr_053_5bec:
    ret z

    ld c, b
    db $f4
    inc h
    cp $92
    ld a, a
    ld c, c
    ccf
    dec h
    rra
    ld [de], a
    rrca
    ld a, [bc]
    rlca
    inc b
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld h, e
    rlca
    db $10
    db $10
    add hl, sp
    add hl, hl
    rst $38
    adc $bf
    ld b, b
    ld d, c
    rst $38
    nop
    rrca
    cp $01
    ld e, l
    and d
    cp b
    ld b, a
    db $f4
    dec bc
    add sp, $17
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld l, c
    dec b
    rlca
    dec b
    rlca
    ld [$0c03], sp
    ld b, e
    rrca
    ld [$1f03], sp
    db $10
    ccf
    jr nz, jr_053_5c74

    rra
    db $10
    add hl, bc
    dec c
    ld a, [bc]
    ld b, $05
    inc c
    dec bc
    rlca
    ld b, $01
    ld bc, $8022
    ld [bc], a
    add c
    add b
    add b
    and l
    nop
    add $00
    ld bc, $0322
    dec bc
    rlca
    rlca
    adc [hl]
    sbc a
    rst $38
    ld a, a
    cp $1e
    cp h
    ld a, [hl]
    call c, Call_053_4334
    cp $02
    inc bc
    rst $38
    ld bc, $03fd
    add e
    db $dd
    ld [$04fb], sp
    ld [hl], l
    adc e
    xor b
    ld d, a
    ld d, b
    xor a
    nop
    ld b, h
    rst $38
    ld bc, $0201
    cp $a5
    nop
    ld a, [c]
    ld a, [bc]

jr_053_5c74:
    inc a
    inc [hl]
    rst $00
    jp $0007


    adc a
    nop
    ld d, a
    nop
    xor a
    adc b
    ld bc, $0507
    db $fd
    ld [bc], a
    xor d
    ld d, l
    ld d, b
    xor a
    add e
    ld bc, $0a1c
    ld h, b
    rst $38
    or b
    rst $38
    ld [hl], l
    rst $38
    cp e
    ld a, [$f171]
    ldh [rSCX], a
    ldh [$c0], a
    inc b
    ret nz

    add b
    ret nz

    add b
    add b
    or e
    nop
    jr nz, jr_053_5cca

    add b
    nop
    nop
    call nc, $0780
    ld b, b
    ld b, b
    ld h, b
    and b
    ldh a, [rNR10]
    ret nz

    jr nz, jr_053_5cf7

    ldh a, [rNR10]
    ldh [$2d], a

jr_053_5cb8:
    add sp, $18

jr_053_5cba:
    cp b
    ld a, b
    xor b
    ld l, b
    jr c, jr_053_5cb8

    jr nc, jr_053_5cba

    db $10
    ldh a, [rP1]
    ldh [rNR41], a
    ldh [rNR10], a
    ret nc

jr_053_5cca:
    ld d, b
    ret nc

    ret nc

    ld d, b
    add b
    ld c, b
    add sp, $28
    ret z

    xor b
    add sp, -$68
    ld [hl], b
    ld d, h
    ld [hl], h
    ld d, h
    inc [hl]
    inc l
    jr c, jr_053_5d08

    ld a, [hl-]
    ld a, [hl+]
    ld [de], a
    ld [de], a
    inc h
    inc h
    jr jr_053_5cfe

    ld a, l
    rst $38
    ld h, e
    dec c
    ccf
    rlca
    inc hl
    jr nz, jr_053_5d1e

    jr z, jr_053_5d20

    ld h, $3f
    ld hl, $203f
    ccf

jr_053_5cf7:
    inc a
    ld b, e
    ld b, $04
    ld bc, $0707

jr_053_5cfe:
    ld h, l
    ld de, $1c0c
    inc de
    rla
    db $10
    dec de
    db $10
    rla

jr_053_5d08:
    db $10
    rra
    ld [$090f], sp
    rrca
    ld b, $07
    inc b
    rlca
    ld b, e
    ld [$470f], sp
    db $10
    rra
    add hl, bc
    ld [$0c0f], sp
    rrca
    inc b

jr_053_5d1e:
    rlca
    inc bc

jr_053_5d20:
    inc bc
    ld bc, $6f01
    ldh [rNR41], a
    add b
    add b
    or b
    sub b
    ret z

    ret z

    ret c

    ld [$8898], sp
    ld a, [hl]
    ld c, [hl]
    ld a, a
    ld bc, $11ff
    rst $38
    add hl, bc
    rst $38
    add h
    rst $38
    or d
    rst $18
    pop de
    rra
    add hl, de
    rlca

jr_053_5d41:
    ld b, $c3
    jp nz, $ff3f

    ld [hl], b
    ld b, l
    rst $38
    nop
    ld b, e
    sbc a
    nop
    rlca
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    inc bc
    ld b, h
    rst $38
    nop
    ld bc, $ff80
    push bc
    add c
    dec b
    ldh [rIE], a
    sbc h
    rst $38
    ld [hl], e
    ld [hl], e
    ld [hl], a
    inc d
    ld bc, $c101
    pop bc
    pop hl
    ld hl, $27e7
    rst $08
    ld c, b
    rst $28
    add hl, hl
    rst $38
    or e
    rst $38
    and h
    ccf
    ld sp, hl
    rlca
    rst $38
    ld bc, $ff47
    nop
    ld b, e
    rst $08
    nop
    ld bc, $10ff
    add $bf
    inc bc
    nop
    rst $38
    ld b, b
    rst $38
    and e
    cp $07
    ld [hl], c
    rst $38
    ld b, $ff
    ld hl, sp-$01
    rlca
    rlca
    ld [hl], c
    inc de
    ld b, $06
    dec b
    dec b
    adc c
    adc b
    ld a, e
    jr jr_053_5d41

    inc bc
    rst $18
    inc e
    rst $28

jr_053_5da6:
    ld h, b
    rst $20
    add c
    or $02
    cp $32
    and e
    ld sp, hl
    rrca
    ret nz

    ret nz

    ccf
    rst $38
    nop
    xor d
    ld bc, $0dff
    rst $38
    ld a, [hl-]
    cp $74
    db $fc
    ld [$45f8], sp
    db $10
    ldh a, [rSCX]
    jr nz, jr_053_5da6

    ld [bc], a
    ld b, b
    ret nz

    ret nz

    ld b, e
    ret nz

    ld b, b
    or d
    nop
    ld b, e
    ld h, c
    rrca
    ld hl, sp-$20
    rst $00
    add b
    pop af
    add c
    db $fd
    add hl, de
    cp $e2
    cp $02
    cp $32
    db $ec
    inc l
    xor l
    pop af
    ld bc, $8080
    db $ec
    ld hl, $0101
    nop
    inc hl
    ld bc, $0301
    nop
    ld b, e
    inc bc
    ld [bc], a
    sub c
    nop
    ld b, h
    dec de
    inc c
    inc e
    ret nz

    nop
    jr nc, jr_053_5dfe

jr_053_5dfe:
    adc [hl]
    ld b, $a2
    ld [hl+], a
    cp $12
    db $fc
    inc d
    rst $38
    bit 7, l
    ld c, c
    ld l, c
    ld b, b
    rst $08
    add h
    rst $38
    add d
    rst $38
    ld a, [c]
    rra
    db $10
    ld b, e
    rra
    ld de, $0f01
    inc c
    add e
    nop
    call c, $6004
    rst $38
    ld a, h
    rst $38
    ld a, a

jr_053_5e23:
    ld b, h
    rst $38
    ccf
    ld de, $ff8f
    ret nz

    ret nz

    jp $8343


    add d
    db $e3
    ld h, d
    db $e3
    jr nz, jr_053_5e23

    inc l
    rst $28

jr_053_5e36:
    jr z, @-$0f

    xor c
    rst $00
    nop
    call nc, $e002
    rst $38
    ldh [$a4], a
    nop
    add a
    ret z

    nop
    push af
    jr jr_053_5e48

jr_053_5e48:
    inc b
    inc b
    dec h
    dec h
    ld a, a
    ld e, d
    ld a, a
    ld b, h
    ld a, a
    ld b, b
    rst $38
    sub b
    ccf
    jr nz, jr_053_5e36

    ld b, e
    call z, $f84c
    adc b
    ld hl, sp+$08
    ld hl, sp+$38
    jp $1901


    adc c
    ld bc, $6516
    rlca
    ldh a, [rP1]
    db $10
    db $10
    ld [hl], b
    db $10
    ldh a, [$90]
    ld b, h
    ldh [rNR41], a
    nop
    ldh [rNR44], a
    add b
    add a
    ld bc, $ff6c
    ld [hl], e
    rla
    inc bc
    inc bc
    inc b
    rlca
    ld [$120f], sp
    ld de, $2003
    inc hl
    jr nz, jr_053_5e91

    ld b, b
    ld b, e
    ld b, c
    rst $00
    add c
    xor e
    add c

jr_053_5e91:
    rst $10
    add b
    rst $38
    add b
    ld b, e
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, jr_053_5edf

    rra
    db $10
    dec b
    ld c, $09
    rrca
    add hl, bc
    rlca
    ld b, $43
    inc bc
    ld [bc], a
    inc bc
    rlca
    inc b
    rrca
    ld [$8983], sp
    jp $08b2


    ld bc, $0701
    ld c, $11
    jr nc, jr_053_5ebc

    ld b, b
    ld c, a
    add e

jr_053_5ebc:
    xor c
    inc b
    inc hl
    jr c, jr_053_5ef0

    db $10
    rra
    ld l, e
    ldh [$2f], a
    rlca
    rlca
    dec e
    ld a, [de]
    ld l, d
    ld [hl], l

jr_053_5ecc:
    sub h
    db $eb
    nop
    rst $38

jr_053_5ed0:
    inc bc
    rst $38
    ld c, $ff
    dec de
    ei
    jr c, jr_053_5ed0

    and $66
    and a
    and c
    rrca
    ld b, b
    ld c, a

jr_053_5edf:
    ld b, b
    ld e, a
    ld b, b
    db $fc
    jp $a4b8


    ret c

    ld h, b
    ret nc

    jr nz, jr_053_5ecc

    nop
    ld [$5500], a
    add b

jr_053_5ef0:
    ld [$d580], a
    nop
    ld [$5300], a
    rst $38
    nop
    rrca
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    di
    inc c
    rst $38
    ld [bc], a
    rst $38
    inc a
    jp $21c2


    pop hl
    ld l, e
    ldh [rNR51], a
    add b
    add b
    ld h, b
    ldh [$b0], a
    ld d, b
    ld c, b
    ld hl, sp+$44
    db $fc
    add h
    db $fc
    sbc b
    ld hl, sp-$20
    ldh [rP1], a
    dec b
    inc bc
    dec bc
    ld a, [bc]
    add hl, bc
    rst $10
    ret nc

    rst $20
    ld [hl], b
    dec hl
    ret nz

    rla
    nop
    dec bc
    nop
    dec d
    nop
    dec hl
    nop
    ld d, a
    nop
    and e
    reti


    ld bc, $00af
    db $d3
    rst $00
    ld b, $f7
    nop
    db $eb
    ld bc, $00f5
    ld [$85c5], a
    ld b, $03
    ld e, l
    xor [hl]
    ld [$37d5], a
    dec sp
    ld a, d
    nop
    add b
    inc hl
    ld b, b
    rlca
    ldh [rNR41], a
    ld a, e
    sbc e
    db $fc
    inc b
    ld hl, sp+$00
    ld e, l
    rst $38
    nop
    and e
    nop
    or b
    add hl, bc
    cp $01
    push af
    ld a, [bc]
    xor d
    ld d, l
    call nc, $fbeb
    ccf
    ld b, h
    rst $38
    nop
    ld b, $c0
    ccf
    rst $38
    add $c7
    ld bc, $b001
    call nc, $0102
    inc bc
    ld [bc], a
    ld b, e
    ld [bc], a
    inc bc
    inc hl
    ld bc, $0809
    ld [$3414], sp
    ld c, [hl]
    jp nz, $021e

    ld a, $02
    and a
    nop
    inc l
    dec bc
    db $fc
    dec b
    ld sp, hl
    add hl, bc
    ei
    ld a, [bc]
    rst $38
    inc b
    rst $18
    jr c, @+$01

    nop
    ld b, e
    rst $38
    ld bc, $fe43
    inc bc
    dec e
    db $ec
    rla
    call nc, $ac2f
    ld d, a
    ld d, h
    xor a
    xor b
    ld e, a
    ld e, h
    xor e
    sbc [hl]
    ld [hl], c
    ld a, a
    ldh [rIE], a
    add c
    cp $02
    rst $38
    dec c
    rst $38
    ld [hl], b
    rst $18
    and b
    xor a
    ld d, c
    rst $18
    and [hl]
    ld l, e
    rrca
    jr c, jr_053_5ffd

    call nc, $aaec
    ld e, [hl]
    ld d, l
    xor a
    add l
    ld a, a
    inc bc
    rst $38
    ld b, $fe
    inc b
    db $fc
    ld b, e
    add d
    cp $0d
    adc [hl]
    ld a, [c]
    ld c, a
    ld h, c
    ld d, a
    ld b, c
    ld l, a
    ld b, c
    ld d, a
    ld b, c
    cpl
    add c
    rst $18
    add c
    and l
    nop
    ld a, [hl+]
    rla
    cp $1a
    db $e4
    ld a, h
    jp nc, $a2ae

    ld e, [hl]
    ld d, c
    xor a
    xor l
    ld e, a
    add hl, de
    rst $38
    ld [de], a
    cp $22
    cp $24
    db $fc

jr_053_5ffd:
    ld c, b
    ld hl, sp+$70
    ldh a, [$a5]
    ld bc, $a796
    ld bc, $438c
    ldh [rNR41], a
    ld bc, $40c0
    rst $38
    db $ec
    ld a, [hl+]
    ld bc, $0101
    ret nc

    add c
    rlca
    ld bc, $0707
    ld [$0b0c], sp
    ld b, $07
    adc c
    sbc c
    dec bc
    ccf
    ld a, a
    ld [hl], b
    adc a
    ret nz

    cp a
    ld h, b
    ld a, a
    inc e
    rra
    inc bc
    inc bc
    ld [hl], b
    rlca
    ld [bc], a
    nop
    dec b
    nop
    inc b
    ld bc, $0004
    sub c
    sbc c
    add hl, de
    nop
    ld h, b
    ldh [$fc], a
    ld e, $8f
    ld [hl], c
    add b
    rst $38
    ld h, b
    ld a, a
    jr jr_053_6066

    inc b
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0601
    inc b
    ld [$f0e8], sp
    rra
    ld b, h
    rst $38
    nop
    add h
    sub a
    add hl, bc
    ccf
    ld e, $27
    rra
    ld hl, $918f
    ld a, a
    rst $38
    nop
    adc b
    sub e

jr_053_6066:
    ld bc, $7f3c
    ld h, [hl]
    ldh [$2a], a
    jr nz, jr_053_606e

jr_053_606e:
    ld d, b
    nop
    ld d, c
    nop
    adc d
    ld de, $aa04
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, [hl]
    pop bc
    ccf
    ld hl, $101f
    ccf
    jr nz, jr_053_60c3

    ld b, b
    ld l, a
    ld d, b
    ld d, [hl]
    ld l, c
    dec hl
    ld [hl], $1f
    inc e
    rlca
    inc b
    rlca
    ld [$e8cf], sp
    db $fd
    ld e, $07
    ld sp, hl
    add l
    cp l
    ld a, [bc]
    ret nz

    rst $38
    ldh [$3f], a
    ld a, b
    rra
    ld a, [hl]
    rrca
    rst $38
    sbc a
    ld a, a
    ld b, h
    rst $38
    rlca
    ld b, e
    rrca
    rst $38
    inc bc
    rra
    rst $38
    sub e
    rst $38
    jp nz, Jump_053_46d3

    rst $38
    ld b, b
    dec b
    add l

jr_053_60b7:
    ld a, [$f58a]
    sub l
    ld [$0089], a
    dec [hl]
    ldh [$2c], a
    nop
    ld [bc], a

jr_053_60c3:
    nop
    add c
    nop
    ld b, b
    add b
    ld b, b
    ld bc, $0381
    add d
    rlca
    inc b
    rla
    inc [hl]
    ei
    call z, $04fb
    or $09
    db $ed
    ld [bc], a
    jp nz, $8d05

jr_053_60dc:
    ld [bc], a
    jp nc, $ad05

    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    xor d
    ld d, l
    push de
    ld [$b768], a
    jr nc, jr_053_60dc

    jr nz, jr_053_60b7

    cp l
    rlca
    add c
    rst $38
    rrca
    db $fc
    call c, $f8f0
    ldh [rSCX], a
    ldh a, [$c0]
    nop
    ld sp, hl
    ld c, b
    add b
    rst $38
    ld b, e
    ld a, a
    ret nz

    dec de
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    nop
    ld [$1400], sp
    nop
    inc [hl]
    nop
    ld b, d
    nop
    add c
    ld [hl+], a
    nop
    ld d, l
    add b
    dec hl
    ld b, b
    ccf

jr_053_611c:
    ld b, b
    ld a, a
    add b
    rst $38
    ld bc, $00a3
    sbc $06
    xor e
    ld d, l
    ld b, c
    cp [hl]
    add b
    ld a, a
    nop
    ld c, b
    rst $38
    nop
    ld b, $80
    ld a, a
    ld b, b
    cp a
    add h
    ld a, a
    inc bc
    ld c, d
    rst $38
    nop
    ld b, e
    ld bc, $0bff
    db $e3
    cp $ff
    inc c
    ld a, a
    ld [bc], a
    ccf
    ld bc, $003f
    ld a, a
    nop
    ld c, [hl]
    rst $38
    nop
    inc b
    ld bc, $03fe
    db $fd
    rrca
    xor d
    nop
    ld [hl+], a
    ld bc, $4040
    ld b, h
    jr nz, jr_053_611c

    ld bc, $c080
    add a
    sub b
    rrca
    ldh [$60], a
    ld a, b
    sbc b
    inc e
    db $e4
    ld c, $f2
    ld d, $ea
    dec bc
    push af
    dec b
    ei
    ld bc, $43ff
    ld [bc], a
    cp $0b
    inc c
    inc a
    jr nc, jr_053_61aa

    sub b
    sub b
    cp b
    xor b
    ld a, [hl]
    add $fe
    add c

jr_053_6182:
    and h
    ld bc, $0a72
    ld b, $f8
    jr c, jr_053_6182

    ld c, b
    ld hl, sp+$18
    ldh [$e0], a
    add b
    add b
    ld c, c
    ret nz

    ld b, b
    inc bc
    add b
    add b

jr_053_6197:
    or b
    or b
    ld b, e
    ld c, b
    ld hl, sp+$01
    inc h
    db $fc
    rst $38
    ld h, e
    ld bc, $0101
    ld b, l
    inc bc
    ld [bc], a
    add hl, bc
    rlca
    inc b

jr_053_61aa:
    ld b, $05
    dec b
    ld b, $02
    dec b
    inc bc
    ld [bc], a
    push bc
    adc h
    call nz, $2396
    ld bc, $0245
    inc bc
    ld c, b
    inc b
    rlca
    add hl, bc
    ld [bc], a
    inc bc
    ld c, $0f
    ld de, $2011
    ld h, $20
    jr z, jr_053_620e

    ld b, b
    ld d, b
    ld [bc], a
    ld h, b
    ld b, b
    ld h, b
    inc hl
    jr nz, @+$09

    db $10
    db $10
    dec bc
    dec bc

jr_053_61d7:
    inc c
    rrca
    ld c, $09
    ld b, e
    rra
    db $10
    add hl, bc
    rla
    jr nz, jr_053_620d

    jr nz, jr_053_6219

    jr nz, jr_053_6210

    ld b, b
    ld d, l
    ld b, b
    and a
    rst $18
    inc de
    ldh [rNR41], a
    ldh a, [rNR10]
    ret c

    jr z, jr_053_6197

    ld e, h
    ld b, d
    cp [hl]
    add c
    ld a, a
    inc bc
    db $fc
    inc c
    ldh a, [$30]
    ldh [$60], a
    ret nz

    ld b, e
    ret nz

    add b
    ld bc, $00e3
    ld c, a
    rst $38
    nop
    add a
    adc b
    add hl, bc
    db $e3

jr_053_620d:
    rst $38

jr_053_620e:
    inc e
    inc e

jr_053_6210:
    nop
    jr nz, jr_053_6213

jr_053_6213:
    ld b, b
    nop
    ld b, b
    ld h, l
    dec bc
    ld a, [bc]

jr_053_6219:
    jr nz, jr_053_6238

    jr nz, jr_053_61d7

    or b
    ld c, l
    ld sp, hl
    add [hl]
    ld a, a
    ldh a, [rIF]
    adc d
    xor l
    ld h, e
    adc d
    nop
    ld e, $04
    inc a
    ccf
    db $fc
    rst $00
    jr jr_053_6274

    rrca
    ld [$0704], sp
    inc e
    inc bc
    ld a, [hl]

jr_053_6238:
    ld bc, $ff53
    nop
    rrca
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    ret nz

    rst $38
    cp b
    ccf
    ld d, a
    rlca
    and b
    nop
    add h
    nop
    dec e
    inc c
    nop
    ld a, [bc]
    nop
    sub l
    ld b, b
    ld a, [bc]
    ld b, b
    push de
    ld b, l
    xor d
    rst $28
    db $10
    rst $38
    ld b, e
    ld bc, $01fe
    rst $38
    ld [bc], a
    ld b, l
    rst $38
    inc b
    ld h, e
    dec bc
    ld h, b
    ld h, b
    ldh a, [$90]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld a, b
    adc b
    ld a, h

jr_053_6274:
    add h
    ld b, e
    inc a
    call nz, $3f01
    jp $3f43


    jp nz, Jump_053_7f03

    add b
    ld a, a
    add b
    ld e, c
    rst $38
    nop
    rla
    ccf
    ret nz

    nop
    rst $38
    pop af
    rst $38
    ld e, a
    ld c, $aa
    nop
    ld d, l
    ld [bc], a
    xor b
    ld [bc], a
    ld d, h
    ld bc, $03aa
    ld a, a
    ccf
    rst $00
    ld hl, sp+$1f
    ldh [$85], a
    or e
    adc b
    nop
    or [hl]
    ld [hl], d
    rlca
    ld bc, $0403
    inc b
    sbc b
    sbc b
    rst $38
    ld h, b
    ld b, e
    rst $38
    jr nz, jr_053_62f8

    rst $38
    db $10
    ldh [$2c], a
    add hl, bc
    cp $0f
    ld sp, hl
    add hl, bc
    db $fc
    inc c
    cp $0a
    rst $30
    add hl, bc
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    rst $38
    db $10
    di
    inc a
    ret c

    ld c, a
    xor h
    add a
    rla
    ld b, a
    adc d
    ld [hl+], a
    ld d, [hl]
    ld [hl+], a
    xor h
    inc b
    ld e, h
    inc c
    xor b
    inc c
    ld e, b
    ld [$9890], sp
    ldh [rSVBK], a
    ldh [$60], a
    add e
    nop
    ld l, b
    ld bc, $10f0
    ld b, a
    ld hl, sp+$08
    ld [hl], c
    dec c
    ret nz

    ldh [rSVBK], a
    db $10
    ld hl, sp+$08
    call c, $5c24
    db $e4

jr_053_62f8:
    cp $22
    cp $12
    ld b, e
    cp $0a
    ld b, $fc
    add h
    ld a, b
    add sp, -$70
    sub b
    nop
    ld b, h
    stop
    ld bc, $9080
    ld b, e
    ret nz

    ld d, b
    ld b, e
    ldh [$30], a
    inc b
    ld b, b
    ret nc

    add b
    sub b
    nop
    ld c, b
    stop
    ld de, $3c18
    ld l, d
    ld d, d
    ld l, h
    sub c
    db $dd
    cp c
    push af
    cp c
    db $dd
    cp c
    ld a, h
    add c
    ld a, d
    ld b, d
    jr jr_053_636b

    ld h, l
    rst $38
    db $ec
    ld b, c
    nop
    db $10
    ld h, c
    ld a, [de]
    stop
    jr jr_053_634f

    jr z, jr_053_634d

    inc l
    jr @+$28

    add hl, bc
    ld d, $0c
    inc de
    inc c
    sub e
    ld c, $d1
    ld c, [hl]
    or c
    ld a, [hl-]
    ld b, l
    ld d, l

jr_053_634d:
    xor d
    ld a, [bc]

jr_053_634f:
    push af
    inc b
    ld a, e
    db $ec
    ld b, l
    nop
    ld b, b
    ld h, c
    ld c, $40
    ld hl, $0040
    ld h, c
    db $10
    ld h, c
    ld [bc], a
    ld [hl], c
    add c
    ld a, d
    dec d
    ld [$e619], a
    ld b, e
    dec bc
    db $f4
    inc bc

jr_053_636b:
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld h, a
    nop
    ld [bc], a
    ld h, c
    ld a, [bc]
    inc bc
    nop
    inc bc
    ld bc, $0122
    ld [hl-], a
    ld de, $112a
    ld a, [bc]
    ld b, e
    add hl, bc
    ld d, $43
    inc b
    dec bc
    inc bc
    ld b, $09
    rlca
    nop
    ld b, e
    inc bc
    inc b
    ld bc, $0102
    ld b, e
    ld bc, $0002
    nop
    ld b, e
    ld bc, $0000
    ld bc, $226b
    ld bc, $0343
    ld [bc], a
    ldh [rNR41], a
    rlca
    inc b
    rlca
    add h
    rrca
    ld a, [bc]
    adc a
    add hl, bc
    sbc a
    ld [hl-], a
    rst $38
    ld h, l
    rst $38
    ld e, d
    rst $38
    sbc l
    ld a, a
    reti


    ccf
    xor b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
    nop
    rst $38
    nop
    ld bc, $0021
    ld bc, $4320
    ld bc, $0f32
    ld sp, $1102
    ld a, [hl+]

jr_053_63cb:
    ld sp, $118a
    xor d
    sbc c
    ld h, [hl]
    reti


    ld h, $f9
    ld b, $fd
    ld [bc], a
    ld b, l
    rst $38
    nop
    ldh [$2c], a
    rst $28
    db $10
    db $ed
    ld [de], a
    db $76
    adc c
    rst $20
    jr @+$74

    adc l
    xor e
    ld d, h
    ld d, c
    xor [hl]
    cp b
    ld b, a
    ldh a, [rIF]
    ld a, b
    add a
    ld [hl], b
    adc a
    jr z, jr_053_63cb

    db $10
    ld l, a
    ld bc, $827f
    rst $38
    and c
    rst $38
    ld b, e
    rst $38
    daa
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    ld [hl+], a
    rst $38
    nop
    ld a, a
    jr z, @+$01

    nop
    cp a
    ld b, h
    rst $38
    ccf
    ld bc, $0000
    and h
    nop
    xor $e0
    inc hl
    ret nz

    nop
    ret nz

    and b
    ld b, b
    add b
    ld h, b
    add b
    ld h, c
    sub b
    ld h, c
    ret nz

    ld sp, $7083
    ld c, c
    or d
    add c
    ld a, d
    ld b, e
    cp h
    add e
    ld a, h
    ld b, e
    cp h
    and e
    ld e, h
    ld b, [hl]
    cp c
    xor d
    ld d, l
    ld d, $e9
    ld b, $f9
    dec b
    and h
    ld bc, $0c19
    ld a, [bc]
    push af
    dec b
    ld a, [$f708]
    inc b

jr_053_644b:
    ei
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor a
    xor d
    call $d9a4
    ld de, $fffc
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    xor c

jr_053_6469:
    nop
    ret nz

    and e
    nop
    rl d
    ld b, b
    add b
    ld b, b
    add d
    ld b, b
    add h
    ld b, d
    add d
    ld b, l
    adc d
    ld b, l
    add $09
    ld d, l
    adc d
    ld c, h
    or d
    ld l, h
    sub d
    ld b, e
    jr c, jr_053_644b

    inc bc
    ld [hl-], a
    call z, $cc30
    ld b, e
    jr nz, jr_053_6469

    nop
    inc b
    ld b, h
    ld hl, sp+$00
    nop
    ld [$f044], sp
    nop
    ld [$e010], sp
    nop
    ldh [$c0], a
    ldh [$b8], a
    db $fc
    ld d, [hl]
    ld [hl+], a
    cp $1b
    db $fc
    db $fc
    ld hl, sp-$04
    call c, $ccfc
    ld a, [hl]
    and $36
    xor $3e
    cp $1b
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $72be
    ld a, h
    adc h
    ldh a, [$30]
    ret nz

    ld b, b
    rst $38
    ld l, l
    ld [bc], a
    ld bc, $0003
    ld b, e
    inc b
    nop
    ld [hl+], a
    ld [bc], a
    inc h
    ld bc, $8ec4
    ret


    add b
    rlca
    ld bc, $0201
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    add d
    add e
    adc b
    and c
    jp $0f84


    inc b
    dec c
    db $10
    inc de
    nop
    daa
    ld b, b
    ld e, a
    jr nz, jr_053_652a

    db $10
    rra
    ld [$040f], sp
    rlca
    add e
    sbc [hl]
    ld a, [bc]
    inc b
    dec b
    nop
    add hl, bc
    ld [$040b], sp
    rlca
    ld [bc], a
    ld b, $01
    ld b, e
    dec bc
    nop
    ld b, h
    add hl, bc
    nop
    ldh [rNR50], a
    ld [$0809], sp
    dec bc
    adc b
    adc e
    ld l, b
    ld l, a
    jr @+$01

    ld b, $ff
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $81ff
    rst $38
    add e
    cp [hl]
    jp $c7fe


    db $fc
    ld h, a
    inc a
    ccf
    jr @+$61

    nop
    ccf
    nop
    ld e, a

jr_053_652a:
    nop
    cp a
    add [hl]
    add e
    nop
    xor a
    add [hl]
    add a
    ld bc, $c07f
    ld b, e
    ccf
    ldh [rSB], a
    rra
    ldh [rOBP1], a
    rra
    ldh a, [rSB]
    rrca
    ldh a, [rSCX]
    rrca
    ld hl, sp+$07
    ld c, $f9
    inc c
    ld a, [$fc08]
    nop
    ld hl, sp+$61
    ld a, [bc]
    add b
    add c
    ret nz

    jp nz, $e222

    ld [de], a
    ld a, [c]
    inc e
    db $fd
    ld [$d783], sp
    ld a, [bc]
    rst $38
    ld bc, $0fff
    cp $3f
    ldh a, [$7e]
    ret nz

    db $fd
    add b
    ld d, b
    rst $38
    nop
    nop
    inc bc
    ld b, e
    db $fc
    inc b
    ld b, e
    rst $38

jr_053_6572:
    ld [bc], a
    ld b, l
    rst $38
    ld bc, $ff00
    xor [hl]
    and c
    dec bc
    cp $01
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ldh a, [$08]
    ret nz

    jr nc, jr_053_6586

jr_053_6586:
    ret nz

    xor d
    nop
    inc b
    ld b, $80
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nz, jr_053_6572

    ld b, e
    db $10
    ldh a, [rSCX]
    ld [$15f8], sp
    ldh [$f8], a
    db $fc
    inc e
    ld e, [hl]
    ld b, $bf
    ld bc, $387f
    rst $30
    db $76
    di
    di
    ld [c], a
    db $e3
    pop hl
    pop hl
    db $e3
    ld [c], a
    rst $38
    ld hl, sp+$44
    rst $38
    nop
    dec b
    dec e
    db $e3
    db $e3
    ld b, b
    ld b, b
    nop
    and [hl]
    nop

jr_053_65bb:
    dec de
    inc de
    push de
    nop
    xor d
    nop
    push de
    add b
    ld_long $ff40, a
    jr nc, jr_053_65bb

    rrca
    ret nz

    ld sp, $4482
    dec b
    adc b
    ld b, $08
    ld b, a
    rrca
    db $10
    and e
    call z, $0701
    rlca
    ld a, c
    ld b, $1f
    rra
    ldh [$e0], a
    ldh a, [rP1]
    db $fc
    and e
    nop
    ld a, d
    nop
    ret nz

    xor b
    nop
    db $fc
    ld [$bfc0], sp
    jr nz, jr_053_662e

    ld hl, $e27e
    inc a
    inc a
    ld h, e
    jr jr_053_65f9

    nop
    ld d, l

jr_053_65f9:
    nop
    xor d
    nop
    ld d, a
    inc bc
    xor h
    inc c
    ld [hl], b
    ldh a, [$a0]
    ldh [rNR10], a
    ldh a, [$f0]
    ld [hl], b
    ld e, [hl]
    ld c, $ab
    ld bc, $0055
    ld [$01c9], a
    dec b
    ld [bc], a
    nop
    rst $38
    ld hl, sp-$67
    db $e3
    dec d
    ret nz

    ret nz

    ld h, b
    jr nz, jr_053_662e

    db $10
    ret nc

    ret nc

    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp+$18
    db $e4
    inc h
    db $e4
    ld b, h
    call nz, $8444

jr_053_662e:
    add h
    inc hl
    inc b
    inc hl
    ld [$5005], sp
    db $10
    or b
    db $10
    ld h, b
    jr nz, @-$2f

    and d
    rrca
    add b
    add b

jr_053_663f:
    ld h, b
    ld h, b
    db $fc
    inc e
    ld [c], a
    ld [bc], a
    db $ec
    inc c
    db $fc
    call nc, $2232
    ld e, $1e
    and e
    db $dd
    rst $38
    db $ec
    add hl, hl
    ld [bc], a
    inc b
    inc c
    ld [bc], a
    ld [hl+], a
    ld [de], a
    ld b, e
    rla
    ld hl, $25e0
    dec a
    inc hl
    ld h, $3c
    ccf
    ld c, b
    ld a, $48
    ld a, a
    ld c, b
    db $76
    ld c, b
    ld a, e
    ld b, h
    cpl
    inc h
    inc hl
    inc h
    ld a, $33
    ccf
    ld l, $1b
    db $10
    dec d
    db $10
    ld [de], a
    db $10
    dec c
    ld [$080f], sp
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $6201
    ld [bc], a
    ld bc, $0f07
    db $ec
    dec hl
    ldh [$33], a
    ld bc, $0200
    nop
    inc b
    inc bc
    inc b
    inc b
    nop
    ld [$8888], sp
    sub b

jr_053_6699:
    sub b
    call nc, Call_053_6853
    jr nc, jr_053_663f

    jr nz, jr_053_66f1

    db $10
    jp hl


    jr z, jr_053_6699

    ld b, l
    db $eb
    and e
    pop bc
    inc [hl]
    cp $14
    db $fd
    ld [$08f7], sp
    ld a, a
    db $10
    rst $18
    ld h, b
    ld a, a
    sub b
    rst $38
    ld [$06fd], sp
    cp $81
    cp $e3
    rst $38
    db $fc
    sub h
    rst $00
    ldh [rWY], a
    rlca
    nop
    ld [$0800], sp
    inc c
    ld [$0b0f], sp
    inc c
    rrca
    ld [$0108], sp
    db $10
    ld [de], a
    db $10
    inc hl
    rra
    ld [bc], a
    ld b, h
    dec d
    adc b
    ld [hl+], a
    ld [$3e41], sp
    xor d
    ld bc, $0015
    dec hl
    nop
    ld d, a
    nop
    cpl
    nop
    ld [bc], a
    db $fd
    xor h
    ld b, e
    ld d, a
    add b
    cpl
    add b

jr_053_66f1:
    ld a, a
    nop
    rst $38
    nop
    rrca
    ldh a, [$f1]
    adc $be
    ld sp, $187f
    rst $38
    inc d
    rst $28
    inc d
    db $ed
    ld [de], a
    rst $38
    ld [hl+], a
    sbc $21
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld bc, $02ff
    ld [hl], l
    ldh [rNR44], a
    add e
    rst $00
    ret c

    dec sp
    jp nz, $01e4

    db $fc
    ld c, b
    inc hl
    sub a
    ld b, b
    cpl
    ld b, b
    ld e, a
    add b
    ccf
    ret nz

jr_053_6724:
    rst $30
    jr c, jr_053_67a4

    ld b, $ff
    ld bc, $00ff
    ccf
    ret nz

    adc a
    ld [hl], b
    or d
    ld c, l
    ld a, h
    add e
    ld a, [hl]
    add c
    jp $e0d5


    ld hl, $609f
    rst $28
    db $10
    rst $30
    ld [$15ea], sp
    db $ec
    inc de
    sbc $21
    ld e, a
    and b
    cp [hl]
    ld b, c
    db $dd
    ld [hl+], a
    db $eb
    inc d
    xor $18
    rst $28
    db $10
    rst $38
    db $10
    rst $08
    jr nc, jr_053_676a

    db $ec
    call c, $fe23
    ld hl, $e075
    ld c, b
    jp $38e7


    jr jr_053_6724

    jr nz, jr_053_67ad

    jr nz, jr_053_67c7

    and b
    adc a

jr_053_676a:
    ld [hl], b
    rst $28
    db $10
    rst $30
    add hl, bc
    pop af
    ld c, $f3
    inc c
    db $ed

jr_053_6774:
    ld [de], a
    ld l, l
    sub d
    sbc $61
    ld e, [hl]

jr_053_677a:
    and c
    ld l, [hl]
    sub c
    or $09
    db $fc
    ld a, [bc]
    ld a, [$7a04]
    add h
    cp [hl]
    ld b, [hl]
    sbc a
    ld h, a
    ld e, l
    and l
    ld l, h
    sub h
    db $ed
    jr jr_053_677a

    jr @-$01

    db $10
    ld a, [hl]
    sub c
    db $76

jr_053_6796:
    jp hl


    ld sp, hl
    ld d, $7b
    inc c
    xor a

jr_053_679c:
    inc b
    ld d, a
    dec b
    xor [hl]
    ld [bc], a
    ld a, [$e606]

jr_053_67a4:
    ld a, [de]
    ld e, $e2
    db $fc
    sub $00
    ld a, [hl+]
    ld [bc], a
    add b

jr_053_67ad:
    ret nz

    ld b, b
    ld b, h
    ld b, b
    ret nz

    nop
    nop
    inc h
    add b
    ld b, h
    ret nz

    ld b, b
    ld b, h
    jr nz, jr_053_679c

    ld [bc], a
    add b
    db $10
    sub b
    inc h
    db $10
    inc hl
    jr nz, jr_053_67c5

jr_053_67c5:
    ld b, b
    and l

jr_053_67c7:
    nop
    ld d, a
    add h
    and d
    ld b, e
    ld b, b
    ret nz

    ld a, [bc]
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_053_6774

    jr nz, jr_053_6796

    ld b, b
    ret nz

    ld b, b
    add b
    jp z, $ffbe

    db $ec
    ld a, c
    ld [hl+], a
    ld bc, $0323
    ld b, h
    rlca
    ld b, $00
    ld [bc], a
    push bc
    add l
    jp z, $2b90

    ld bc, $022b
    dec hl
    inc b
    nop
    ld [bc], a
    add l
    or c
    ld h, $02
    nop
    nop
    ld b, e
    inc b
    nop
    ld h, $04
    add hl, bc
    nop
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0003
    ld bc, $e061
    jr z, jr_053_681d

    rra
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    add a
    db $fc
    rra
    cp $3f
    rst $30

jr_053_681d:
    ld a, h
    ldh a, [$fe]
    ld [c], a
    cp [hl]
    db $e3
    rst $38
    jr nc, jr_053_6855

    ret nc

    cp a
    ld b, c
    rst $38
    ld bc, $e1fe
    ccf
    jr nc, @+$51

    ld c, a
    cp b
    or b
    jr nc, jr_053_6855

    ld a, c
    ld b, [hl]
    ld b, b
    ld a, a
    rrca
    ccf
    jr nz, jr_053_6879

    and e
    ld de, $0e9f
    ld c, [hl]
    ld bc, $0641
    ld h, $08
    jr jr_053_6849

jr_053_6849:
    ld de, $d7a4
    ld b, l
    ld b, b
    nop
    nop
    rst $38

jr_053_6851:
    add l
    db $e3

Call_053_6853:
    inc bc
    nop

jr_053_6855:
    ld [$0800], sp
    ld h, [hl]
    ld b, e
    stop
    inc c
    jr nz, jr_053_685f

jr_053_685f:
    jr nz, jr_053_6851

    ldh a, [$0d]
    db $fd
    ld c, $fe
    db $fc
    db $fc
    ldh [$f0], a
    ld h, c
    ld b, $e0
    ldh [$f0], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld [hl+], a
    ld hl, sp-$20
    ld hl, $04fc

jr_053_6879:
    cp $02
    sbc $a6
    call c, $3ded
    rlca
    ld [hl], a
    add d
    rst $30
    inc b
    rst $38
    nop
    inc bc
    ld [bc], a
    rlca
    ld b, h
    rlca
    rst $38
    ld a, a
    ld hl, sp+$1f
    nop
    dec e
    ld [bc], a
    ld a, [hl]
    ld bc, $01fe
    db $fd
    ld [bc], a
    ld b, e
    rst $38
    nop
    ld de, $1fef
    pop hl
    pop hl
    ld b, d
    ld b, e
    add h
    rst $00
    ld [$084f], sp
    adc a
    db $10
    sbc a
    inc de
    rra
    inc e
    inc e
    ld l, b
    add l
    rst $28
    inc b
    ld b, $00
    jr jr_053_68c7

    db $10
    and a
    nop
    adc $23
    ld h, b
    inc b
    add b
    and b
    sub b
    sub b
    rlca
    ld [hl+], a
    rrca
    nop
    nop

jr_053_68c7:
    sub $00
    ld a, d
    ld [hl+], a
    ld bc, $8112
    add e
    add e
    add a
    add l
    add a
    add h
    add e
    add d
    add c
    add c
    and $66
    rst $38
    add hl, de
    rst $38
    inc b
    db $fd
    ld [bc], a
    ld b, e
    cp $01
    dec bc
    db $fd
    rlca
    ld a, a

jr_053_68e7:
    rst $38
    set 7, d
    inc sp
    ld a, [c]
    jr z, jr_053_68e7

    add hl, hl
    ld sp, hl
    ld b, e
    ld b, l
    db $fd
    ld b, e
    add h
    db $fc
    inc bc
    ld c, b
    ld a, b
    jr nc, jr_053_692b

    add h
    or l
    ld [bc], a
    ccf
    ld bc, $44c9
    ld bc, $0109
    ld bc, $8400
    nop
    and e
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, e
    ld [de], a
    nop
    rlca
    inc h
    inc b
    inc h
    inc e
    inc a
    ld h, d
    ld a, [hl]
    add c
    ld [hl+], a
    rst $38
    ld bc, $fe7e
    ld [hl], c
    rra
    ld [hl], b
    ld [hl], b
    adc h
    adc h
    jp nz, $8122

    ld c, c
    ld h, b
    sub d

jr_053_692b:
    ret c

    and h
    db $db
    and h
    ei
    ld h, h
    rst $38
    sbc [hl]
    ld [hl], a
    ld c, b
    cp c
    or [hl]
    rst $18
    ld d, b
    cp a
    ld [hl], b
    rst $38

jr_053_693c:
    ld h, b
    rst $38
    ldh [$df], a
    and b
    ld b, e
    rst $28
    db $10
    dec b
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra
    xor a
    nop
    sub h
    ld bc, $8000
    db $ec
    dec sp
    and a
    nop
    sbc l
    ld b, [hl]
    ret nz

    ld b, b
    ld b, h
    jr nz, jr_053_693c

    ld b, e
    ldh a, [rNR10]
    ld bc, $10e0
    call nz, $0087
    ret nz

    db $ec
    scf
    rst $38
    db $ec
    ld d, l
    inc bc
    ld b, $06
    dec c
    rrca
    ld b, h
    inc c
    ld c, $00
    rrca
    ld b, e
    ld b, $07
    dec h
    inc bc
    ld bc, $0101
    db $ec
    inc sp
    ld [hl+], a
    ld bc, $80cc
    dec b
    ld [bc], a
    inc bc
    rlca
    inc b
    inc bc
    ld [bc], a
    sub e
    rrc a
    add b
    add c
    add $4e
    di
    jr nc, jr_053_6a13

    add b
    ld a, a
    ret nz

    ccf
    rst $20
    jr @-$06

    ldh [$e0], a
    db $f4
    ld sp, $0bef
    ld [hl], b
    ld [hl], b
    add c
    jp hl


    ld h, h
    db $fc
    call c, $24dc
    inc [hl]
    adc b
    adc b
    jp $118a


    jr nc, @+$32

    jr c, jr_053_69fc

    ld a, h
    ld h, [hl]
    ld c, a
    pop af
    rst $38
    or b
    rst $28
    xor h
    db $dd
    xor d
    ld [hl], a
    ld l, c
    ld c, $1e
    ld h, l
    add hl, de
    inc bc
    rlca
    jr jr_053_69e7

    ld h, l
    ld h, e
    sbc a
    add c
    ld a, a
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$70ff], sp
    cp a
    and b
    ld b, b
    ld a, a
    add c
    rst $18
    add a
    rst $38
    ld a, h
    ld a, h
    sbc c
    nop
    adc b
    jp $b500


    rra
    inc b
    rlca

jr_053_69e7:
    ld [$080d], sp
    rrca
    ld b, $07
    inc b
    rlca
    add hl, bc
    rrca
    rla
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    cp $fe
    ld e, $1e
    rlca

jr_053_69fc:
    rlca
    dec de
    ld e, $67
    ld a, h
    adc a
    db $fc
    rra
    inc e
    ld b, e
    dec bc
    ld [$26e0], sp
    rla
    db $10
    sub a
    sub b
    ld [hl], a
    ld sp, hl
    ld a, a
    add c
    rst $38

jr_053_6a13:
    ld bc, $c2fe
    ld a, $3e
    rla
    ld de, $2027
    ld c, a
    ld b, b
    sbc a
    add c
    cp l
    add e
    ld a, a
    ld [bc], a
    db $fc
    rlca
    cp $0f
    rst $38
    rra
    cp a
    ld a, a
    ld b, c
    jp $c0c0


    ld b, b
    cp b
    nop
    ld h, a
    ld b, $03
    inc bc
    inc a
    ccf
    jp nz, $01ff

    ld b, a
    rst $38
    nop
    ld [$19fb], sp
    ld a, a
    ccf
    cp $ff
    ld hl, sp-$4d
    call z, $f743
    sub b
    ldh [rNR42], a
    ld a, a
    ret nz

    rra
    ld h, b
    ld [hl], b
    ld c, c
    ld sp, hl
    and $b6
    ld a, c
    ld sp, hl
    ld h, $df
    jr nz, @-$1b

    inc e
    rst $28
    db $10
    and $58
    add b
    rst $20
    add b
    ret nz

    add b
    ldh [$80], a
    rst $38
    ld b, b
    ld a, a
    ld b, d
    ld [hl], c
    ld b, b
    ld b, b
    ld [hl+], a
    add b
    ld b, $e7
    adc $7f
    or b
    ld a, a
    adc h
    ld a, a
    rst $00
    cp c
    dec b
    add b
    rst $38
    pop hl
    rst $38
    ld e, $1e
    cp e
    nop
    add [hl]
    dec d
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    or d
    cp $fa
    cp $f9
    cp a
    pop af
    rra
    srl a
    rst $38
    rrca
    adc $3e
    ld b, e
    call z, $1a5c
    ld a, [$701e]
    sub e
    di
    inc sp
    rst $38
    ld a, a
    sub d
    cp $b9
    ld c, a
    sbc a
    ld h, a
    adc h
    ld d, h
    inc e
    ld d, h
    ld [$0858], sp
    adc b
    ld [$1808], sp
    jr jr_053_6b1c

    ld b, h
    ldh a, [$90]

jr_053_6abf:
    ld bc, $c0a0
    ld b, e
    ret nc

    sub b
    inc de
    ld c, b
    ret z

    ld l, b
    ret z

    ld h, b
    call nz, $e434
    ld a, [hl-]
    ld [c], a
    ccf
    pop hl
    ld a, a
    ldh a, [$5d]
    db $d3
    adc a
    adc b
    rlca
    rlca
    db $ec
    scf
    inc bc
    jr nz, jr_053_6abf

    ret nz

    ret nz

    add l
    ld [bc], a
    ld a, [hl-]
    ldh a, [rNR44]
    nop
    jp c, $8009

jr_053_6aea:
    ret nz

    jr nz, jr_053_6b0d

    sub b
    ld [hl], b
    ldh a, [$88]
    ld b, b
    ldh a, [rBCPD]
    rst $38
    ld a, c
    dec c
    jr nc, jr_053_6b29

    ld c, a
    ld c, a
    add c
    ld bc, $82b3
    rst $38
    add b
    ld a, [hl]
    ld b, h
    jr c, @+$2a

    inc hl
    db $10
    inc hl
    jr nz, jr_053_6aea

    daa
    ld b, b
    ld h, b

jr_053_6b0d:
    ld b, d
    ld d, b
    ld b, c
    ld d, b
    add d
    sub b
    add l
    sub b
    xor e
    sub b
    add a
    sub b
    cp a
    adc c
    sbc a

jr_053_6b1c:
    adc c
    ld l, [hl]
    ld b, [hl]
    ld e, h
    ld b, [hl]
    inc a
    ld a, [hl+]
    jr c, @+$2b

    inc d
    ld de, $1219

jr_053_6b29:
    inc de
    db $10
    rla
    ld de, $131f
    dec c
    dec c
    ld bc, $4301
    inc bc
    ld [bc], a
    ld bc, $0101
    ld [hl], e
    db $10
    ld bc, $0601
    rlca
    dec e
    ld a, [de]
    ccf
    inc h
    ld a, a
    ld c, b
    rst $38
    adc b
    db $fc
    db $10
    ret nz

    stop
    ld b, h
    jr nz, jr_053_6b4f

jr_053_6b4f:
    ldh [rNR42], a
    ld [bc], a
    ld b, b
    dec b
    ld b, b
    ld a, [hl+]
    ld b, b
    dec d
    ld b, b
    dec hl
    ld b, b
    sbc a
    jr nz, jr_053_6bdd

    ld hl, $26bf
    rst $38
    jr c, @+$01

    ld h, b
    xor a
    add b

jr_053_6b67:
    ld d, h
    nop
    and e
    nop
    ld c, a
    nop
    ccf
    nop
    ld a, a
    rrca
    rst $38
    ccf
    ld b, e
    rst $38
    ld a, a
    dec h
    rst $38
    rlca
    rst $30
    rst $08
    rst $38
    nop
    rst $38
    jr c, jr_053_6b67

    ld h, a
    or d
    rst $18
    inc b
    ld bc, $3e1f
    rst $38
    ret nz

    ld c, c
    rst $38
    nop
    inc c
    rra
    nop
    rrca
    nop
    rra
    nop
    ld a, $01
    ld a, a
    ld bc, $01bf
    ld a, l
    ld b, a
    ld [bc], a
    rst $38
    ld [bc], a
    add hl, sp
    rst $38
    adc $44
    rst $38
    db $10
    ld b, e
    jr nz, @+$01

    inc b
    ld b, b
    rst $38
    ld h, c
    rst $38
    rrca
    inc h
    rst $38
    db $10
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    pop af
    rst $18
    ld [c], a
    ld a, a
    add h

jr_053_6bbd:
    rst $38
    rra
    ldh [$60], a
    or e
    nop
    ld e, h
    db $10
    rst $38
    rst $38
    cp $01
    rst $38
    ld a, [bc]
    rst $38
    inc d
    sbc $20
    ei
    inc h
    cp a
    ld b, b
    cp $41
    ld a, a
    ld b, e
    add b

jr_053_6bd8:
    rst $38
    nop
    add b
    ld c, [hl]
    rst $38

jr_053_6bdd:
    nop
    jr @-$1e

    rst $38
    jr jr_053_6bd8

    rrca
    rst $20
    inc e
    srl a
    sub e
    ld a, [hl]
    inc sp
    cp $e3
    cp $f7
    db $ec
    rst $28
    call nc, $e8df
    xor a
    ld e, b
    rst $18
    jr nc, jr_053_6bbd

    sub a
    inc b
    inc bc
    db $fc
    inc e
    ldh [$e0], a
    ld l, l
    add hl, de
    jr c, jr_053_6c3c

    ld b, h
    ld b, h
    ld b, [hl]
    ld b, d
    adc $82
    sbc $82
    sbc h
    inc b
    cp a
    rlca
    ccf
    inc b
    ld a, a
    add hl, bc
    rst $38
    add hl, bc
    rst $30
    ld a, [bc]
    rst $38
    ld [bc], a
    cp a
    ld b, h
    ld b, e
    rst $38
    inc b
    ld b, [hl]
    rst $38
    add hl, bc
    ld [bc], a
    inc de
    cp $13
    ld b, h
    rst $38
    daa
    ld b, e
    ld c, a
    rst $38
    nop
    sbc h
    add e
    nop
    db $fc
    add l
    rst $30
    dec b
    db $fd
    inc bc
    ld_long a, $ff04
    nop
    ld b, e
    rst $30

jr_053_6c3c:
    ld [$ff05], sp
    rrca
    ldh a, [$30]
    ret nz

    ret nz

    db $ec
    ld hl, $c001
    ret nz

    ld b, e
    ldh [rNR41], a
    and l
    nop
    ld e, b
    ld bc, $8080
    add l
    ld bc, $c31a
    adc b
    dec c
    sbc b
    ret c

    ld [hl], h
    db $f4
    and $c2
    adc $82
    sbc [hl]
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    inc de
    ldh [rNR41], a
    ld b, b
    ret nz

    ldh [rNR41], a
    ld a, b
    db $10
    sbc h
    inc b
    and $02
    rst $30
    ld bc, $01ff
    cp $e2
    inc e
    inc e
    ld l, a
    rst $38
    ld l, h
    ld [de], a
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$090e], sp
    inc c
    inc de
    jr jr_053_6ca6

    jr @+$29

    jr nc, jr_053_6cc2

    jr nc, jr_053_6ce4

    ld b, h
    ld h, b
    ld e, a
    inc b
    sbc a
    ld b, b
    cp a
    ret nz

    cp a
    ld b, l
    add b
    rst $38
    ld b, l
    ld b, b
    ld a, a
    ld b, $4a

jr_053_6ca6:
    ld a, a
    dec [hl]
    ccf
    dec hl
    ccf
    ld d, $22
    ld e, $03
    ld a, [bc]
    ld c, $04
    inc b
    adc d
    ret nz

    ld b, $03
    ld b, $0d
    dec c
    inc de
    ld c, $0e
    ld l, e
    ld bc, $0704
    ld b, e

jr_053_6cc2:
    rrca
    ld [$1c0b], sp
    dec sp
    ld a, h
    rst $00
    cp $07
    and $1f
    add l
    ld a, l
    dec b
    db $fd
    ld b, e
    ld [bc], a
    cp $02
    ld bc, $01ff
    ld b, [hl]
    rst $38
    nop
    ld b, $01
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    add h

jr_053_6ce4:
    add e
    add hl, bc
    rla
    rst $38
    inc c
    db $fc
    jr nc, @-$0e

    ld b, b
    ret nz

    add b
    add b
    ld l, e
    nop
    inc bc
    add e
    nop
    db $10
    ld a, [bc]
    rrca
    ld de, $463f
    cp $98
    ld a, b
    ld h, b
    ldh [$80], a
    add b

jr_053_6d02:
    ld l, [hl]
    add hl, bc
    ret nz

    ret nz

    jr c, jr_053_6d02

    ld b, $7f
    add c
    inc c
    di
    nop
    xor b
    pop de
    ldh [rNR50], a
    ld d, b
    ld a, a
    jr nc, @+$41

    db $10
    rra
    sbc b
    sbc a
    ld d, h
    rst $18
    ld a, [hl-]
    rst $38
    ld e, l
    rst $38
    and [hl]
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    call nc, Call_053_70ff
    ld a, a
    jr c, jr_053_6d6f

    jr z, jr_053_6d71

    jr nc, jr_053_6d73

    ld a, [de]
    rra
    dec e
    ld [hl+], a
    rra
    rlca
    daa
    ccf
    ld b, e
    ld a, a
    add [hl]
    cp $08
    ld hl, sp-$7a
    di
    inc hl
    ld bc, $0200
    add e
    nop
    rrca
    add hl, bc
    ld bc, $120f
    ld e, $24
    inc a
    ld c, b
    ld a, b
    jr nc, jr_053_6d86

    add a
    nop
    ld c, b
    ld b, $83
    adc h
    ld [hl], a
    ld hl, sp+$02
    db $fd
    nop
    ld c, h
    rst $38
    nop
    ld [$ff02], sp
    dec d
    rst $38
    xor e
    cp $5c
    rst $38
    or b
    ld c, h

jr_053_6d6f:
    rst $38

jr_053_6d70:
    nop

jr_053_6d71:
    rrca
    rlca

jr_053_6d73:
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    cp $fe
    call c, $c4fc
    db $fc
    ld b, e
    ld c, b
    ld a, b
    dec bc

jr_053_6d86:
    ld b, b
    or b
    ret nc

    or b
    sub b
    ldh a, [$80]
    ld h, b
    jr nz, jr_053_6d70

    nop
    ret nz

    adc [hl]
    nop
    sub h
    ld b, $07
    rlca
    jr c, @+$80

    rst $00
    rst $28
    add hl, de
    ld b, e
    adc a
    ld a, b
    rla
    rrca
    ld hl, sp+$1e
    pop af
    rra
    ldh a, [$3e]
    pop hl
    dec a
    ld [c], a
    cp $c1
    ld a, l
    jp nz, $95ea

    call nc, $a8ab
    ld d, a
    ld d, b
    xor a
    add b
    ld a, a
    adc c
    db $db
    nop
    db $10
    ld b, h
    rst $38
    ld [$c409], sp
    rst $38
    and h
    cp a
    ld [de], a
    rra
    ld a, [bc]
    rrca
    rlca
    ld b, $45
    inc bc
    ld [bc], a
    add hl, hl
    ld bc, $00b0
    or d
    ld bc, $6000
    ld b, [hl]
    ldh [rNR41], a
    ld [hl+], a
    ret nz

    ld c, $40
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
    adc b
    ld a, b
    ld [$45f8], sp
    inc b
    db $fc
    ld b, a
    ld [bc], a
    cp $4d
    ld bc, $45ff
    ld [bc], a
    cp $43
    inc b
    db $fc
    ld bc, $7c84
    ld b, l
    adc b
    ld a, b
    ld b, e
    sub b
    ld [hl], b
    ld bc, $e020
    adc a

jr_053_6e07:
    nop
    sub h
    ld h, c
    rst $38
    ld h, [hl]
    ld [hl+], a
    ld bc, $0243
    inc bc
    nop
    ld bc, $85c7
    ld [hl+], a
    ld bc, $9286
    nop
    ld [bc], a
    add l
    sub e
    call nz, Call_053_4498
    inc b
    rlca
    nop
    ld bc, $9382
    ld bc, $0101
    add e
    and h
    push bc
    sbc a
    ld l, a
    rra
    jr c, jr_053_6ea9

    db $fc
    add [hl]
    rst $38
    ld bc, $708f
    ld h, $f9
    ld a, b
    ldh a, [$60]
    ldh [$63], a
    ret nz

    ld b, a
    add b
    rst $00
    add b
    add e
    ret nz

    ld h, b
    ld b, b
    ldh a, [$c0]
    cp a
    ret nz

    rst $30
    jr c, jr_053_6e07

    jr c, @+$63

    ld de, $3c3c
    cp $c2
    ld a, [hl]
    add b
    cp $02
    rst $38
    rlca
    db $fc
    rlca
    rst $38
    ld [$30df], sp
    rst $38
    nop
    ld b, e
    rst $38
    add b
    ld de, $807f
    ccf
    ret nz

    cp a
    ld b, b
    rst $18
    jr nz, @-$0f

    sub b
    di
    adc h
    ld a, h
    ld b, e
    sub e
    or a
    ld a, h
    db $fc
    ld l, e
    inc de
    add b
    add b
    ldh a, [$f0]
    push af
    rrca
    ccf
    ld [bc], a
    rst $18
    nop
    rst $38
    nop
    cp $01
    rst $18
    nop
    ccf
    db $10
    rst $28
    jr z, @+$46

    rst $38
    jr c, jr_053_6e95

    db $10
    ccf

jr_053_6e95:
    nop
    ld b, l
    rra
    nop
    inc c
    ccf
    inc c
    push af
    ld a, [$55aa]

jr_053_6ea0:
    ld d, l
    xor d
    db $eb
    inc d
    rst $38
    nop
    db $fd
    ld b, h
    ld [bc], a

jr_053_6ea9:
    rst $38
    ld bc, $02fd
    ld b, e
    rst $38
    ld bc, $fc0b
    inc bc
    ld sp, hl
    ld b, $f7
    ld hl, sp+$1f
    inc e
    add hl, bc
    dec bc
    rlca
    rlca
    ld l, c
    inc bc
    inc c
    inc e
    ld a, a
    db $e3
    ld b, e
    rst $38
    nop
    dec c
    pop bc
    ld a, $18
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    and b
    ld a, a
    pop hl
    ccf
    cp $1e
    ld b, l
    ld hl, sp+$08
    nop
    ldh a, [rSCX]
    db $10
    ldh [$09], a
    jr nz, jr_053_6ea0

    ret nz

    ld b, b
    ret nz

    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$c5]
    adc l
    nop
    nop
    ld b, l
    db $fc
    inc b
    dec c
    ld a, [c]
    ld a, [bc]
    or d
    jp nc, $bcbc

    ret z

    ld a, b
    sub b
    ld [hl], b
    db $10
    ld [hl], b
    ldh [$e0], a
    ld l, l
    xor b
    nop
    add hl, de
    inc b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    db $ec
    dec [hl]
    add l
    nop
    jr nz, @+$0d

    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    dec b
    rla
    ld a, [de]
    rla
    dec e
    ld de, $090e
    and l
    ld bc, $8716
    nop
    jr c, jr_053_6f21

jr_053_6f21:
    cp c
    call nz, Call_053_5200
    add hl, bc
    add b
    adc b
    ld h, b
    ld h, b
    sbc b
    ld hl, sp+$67
    sbc a
    ld a, [$4305]
    rst $38
    nop
    dec b
    rst $28
    db $10
    rst $08
    jr nc, @+$01

    ret nz

    add l
    nop
    adc d
    add [hl]
    ld bc, $1222
    inc b
    db $f4
    inc c

jr_053_6f44:
    db $ec
    inc d
    ld d, h
    xor h
    xor b
    ld e, b
    jr jr_053_6f44

    add sp, -$08
    ld [$88f8], sp
    ld a, b
    ret nc

    jr nc, @-$79

    ld bc, $853a
    cp a
    add hl, bc
    adc h
    sbc h
    ld b, h
    ld c, h
    and b
    ldh a, [rPCM34]
    adc a
    db $fc
    inc bc
    adc e
    nop
    ld h, b
    dec b
    and a
    ret c

    ld sp, hl
    jr c, @-$6e

    jr c, jr_053_6fd0

    inc bc
    jr nc, jr_053_6fae

    cp h
    jp nz, $fe43

    ld [bc], a
    inc b
    rst $38
    rlca
    db $f4
    rrca
    ld a, a
    adc [hl]
    nop
    pop bc
    add [hl]
    xor a
    inc b
    ld b, b
    ldh [rP1], a
    ldh a, [rP1]
    add e
    nop
    ld l, h
    adc b
    nop
    or b
    nop
    nop
    and h
    ld bc, $00c0
    jr z, @+$01

    ld [hl], h
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    dec b
    ld bc, $0504
    inc b
    inc bc
    inc bc
    ld h, c
    dec c
    ld bc, $0601
    ld c, $00
    db $10
    ld de, $1f10

jr_053_6fae:
    db $10
    rrca
    ld c, $03
    inc bc
    ld b, a
    inc bc
    ld [bc], a
    nop
    ld bc, $a3d4
    adc c
    sub l
    rlca
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_053_7002

    ld h, b
    ld a, a
    sub e
    and h
    dec b
    add d
    add [hl]
    ld a, b
    ld a, b
    ld h, b
    jr nz, jr_053_7012

    ret nz

jr_053_6fd0:
    ld b, b
    add hl, bc
    cp $80
    rst $38
    and b
    rst $38
    ret nz

    ccf
    nop
    ld a, a
    nop
    ld b, [hl]
    rst $38
    nop
    inc bc
    add b
    rst $38
    ld b, b
    rst $38
    ld b, l
    ld b, b
    cp a
    dec d
    ret nz

    ld a, a
    ld b, b
    ccf
    inc a
    inc bc
    inc bc
    ld a, [hl]
    ld a, a
    ldh [$9f], a
    ret nz

    cp a
    ld b, b
    ld a, a
    jr nz, jr_053_7038

    jr jr_053_701a

    db $e4
    rst $38
    ld [$a083], sp
    inc c
    ld a, a

jr_053_7002:
    ld b, b
    ld a, a
    and b
    rst $18
    ld d, b
    xor a
    xor b
    rst $10
    ret nc

    xor a
    ld b, b
    rst $38
    ld l, a
    inc bc
    ld e, $3e

jr_053_7012:
    pop bc
    pop bc
    ld b, e
    ld bc, $e000
    dec hl
    rrca

jr_053_701a:
    nop
    rla

jr_053_701c:
    rrca
    rra
    ccf
    jr c, jr_053_70a0

    ld h, a
    rst $38
    db $db
    ei
    sub e
    di
    sub c
    pop af
    jp nz, $e073

    ccf
    ld sp, hl
    rra
    rst $38
    rla
    rst $28
    ld [de], a
    db $dd
    ld [hl+], a
    cp $21
    rst $18

jr_053_7038:
    ld hl, $41bf
    rst $38
    ld c, a
    pop af
    ld a, a
    xor b
    rst $10
    ld d, h
    xor e
    jr z, jr_053_701c

    add l
    ld a, [$0703]
    rst $38
    ld a, [bc]
    rst $38
    ld b, e
    ld bc, $00fe
    dec b
    ld b, h
    cp $03
    ld b, l
    ld bc, $00ff
    inc bc
    adc c
    rst $18
    dec bc
    ld bc, $0202
    inc b
    inc b
    jr jr_053_707b

    ld h, b
    ld h, b
    add b
    add b
    rst $20
    push bc
    nop
    adc e
    ld a, [bc]
    add b
    rst $18
    ldh [$6f], a
    ldh a, [$bf]
    ldh a, [$5f]
    ld [hl], b
    sbc a
    ldh a, [rSCX]
    ccf
    ldh [rNR24], a

jr_053_707b:
    ld sp, hl
    ret nz

    ld hl, sp+$00
    db $fc
    inc b
    rst $38
    rlca
    ld hl, sp+$08
    ldh a, [rNR10]
    db $fc
    ld e, $f5
    ccf
    ld [$f5bf], a
    rst $38
    ccf
    rst $18
    ld d, l
    xor d
    ld a, [hl+]
    push de
    add l
    db $dd
    dec bc
    rst $38
    ld sp, hl
    cp $42
    cp $8e
    db $fd
    sub a

jr_053_70a0:
    db $fc
    ld h, a
    db $fc
    rlca
    ld b, e
    ld hl, sp+$0f
    inc b
    ldh a, [$1f]
    ret nz

    ld a, a
    add c
    adc b
    rst $18
    rla
    ldh a, [$f0]
    inc c
    inc c
    ld e, $02
    rra
    ld bc, $393f
    rst $00
    ld a, h
    rst $30
    ld a, h
    rst $38
    ld a, b
    rst $38
    jr nc, @+$01

    nop
    ei
    rlca
    db $fc
    inc b
    add e
    call $f001
    db $10
    ld b, e
    ldh [rNR41], a
    add hl, de

jr_053_70d1:
    pop hl
    ld hl, $21c1
    pop hl
    ld hl, $22e2
    jp nz, $04c2

    inc b
    ld [$d308], sp
    ret nc

    daa
    pop hl
    adc $c2
    ld e, h
    ld b, h
    ld a, b
    ret z

    jr c, @-$16

    ld b, e
    db $10
    ldh a, [$03]
    jr nz, jr_053_70d1

    ret nz

    ret nz

    and a
    nop
    ld c, b
    ld bc, $8080
    ld b, l
    ld b, b
    ret nz

    inc bc
    ldh [$f0], a

Call_053_70ff:
    db $fc
    cp $b3
    nop
    inc a
    ld [hl+], a
    add b
    adc $80
    inc de
    ld b, b
    ld [hl], b
    add b
    adc b
    jr @+$2a

    inc b
    ld e, $00
    ld bc, $0107
    rrca
    ld bc, $023e
    db $fc
    inc a
    ret nz

    ret nz

    db $ec
    dec h
    rst $38
    ld a, d
    ld [bc], a
    ld bc, $0100
    db $ec
    ld h, l
    ld de, $3c18
    ld h, d
    ld h, e
    pop bc
    pop bc
    ld b, b
    ld b, b
    nop
    ld b, b
    add b
    pop bc
    ld b, c
    ld b, e
    ld hl, $1121
    ld de, $1027
    nop
    add hl, bc
    ld [hl+], a
    rrca
    ld bc, $0f09
    ld b, e
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    ld bc, $009a
    dec e
    dec b
    ld bc, $0201
    inc bc
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    ld [hl+], a
    ld [$0904], sp
    db $10
    ld d, $10
    jr jr_053_7182

    db $10
    ld bc, $0f0f
    res 5, d
    ld bc, $0303
    ld [hl+], a
    rlca
    ret z

    add b
    ld bc, $8101
    inc hl
    add b
    ld h, c
    db $10
    rlca
    rlca
    inc bc
    rrca
    add hl, bc
    rrca
    adc h
    adc a
    sub b
    sbc a
    ld b, l
    ld a, a
    rst $00
    rst $38
    rst $20

jr_053_7182:
    rst $38
    rst $28
    ld [hl+], a
    rst $38
    rlca
    db $fd
    db $fd
    ld hl, sp-$07
    ldh a, [$f0]
    ret nz

    ret nz

    add l
    cp c
    add h
    db $db
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, e
    ld [$110f], sp
    db $10
    rra
    jr nc, jr_053_71de

    ld a, c
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    ld b, $c6
    inc c
    inc a
    ld [$a308], sp
    rst $28
    ld bc, $6020
    inc hl
    jr nz, jr_053_71b6

    ld b, b

jr_053_71b6:
    ld b, b
    and l
    nop
    xor d

jr_053_71ba:
    ld [$3f3e], sp
    jp $01ff


    rst $38
    inc bc
    rst $38
    adc a
    ld h, $ff
    ld de, $ffc1
    nop
    rst $38
    pop bc
    rst $38
    ld a, $be
    ld [hl+], a
    cp [hl]
    cp $81
    rst $38
    add b
    rst $30
    ret c

    pop hl
    pop af
    and e
    sbc c
    ld c, $fc
    rst $38

jr_053_71de:
    rst $20
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    jp nz, $c0ff

    rst $38
    ld [c], a

jr_053_71e9:
    rst $38
    db $e3
    ld [hl+], a
    rst $38
    nop
    ld a, a
    ld [hl+], a
    rst $38
    jr jr_053_71ba

    rst $08
    jr nc, jr_053_71e9

    sbc a
    rst $38
    ld c, a
    rst $38

jr_053_71fa:
    cpl
    rst $38
    rla
    rst $38
    rra
    rst $38
    jr c, jr_053_71fa

    ld [hl], b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    cp h
    nop
    dec e
    ld [$c080], sp
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    inc h
    cp $0e
    db $fc
    db $fc
    inc a
    db $fc
    ld hl, sp-$04
    ld l, h
    ld a, h
    cp h
    ld l, h
    ld c, b
    xor b
    cp [hl]
    ld a, [hl]
    cp a
    jp $3701


    inc de
    rst $38
    cp a
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    ld a, [de]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    scf
    rst $30
    inc de
    di
    ld sp, $e0f1
    add h
    reti


    nop
    nop
    jp $0582


    ldh a, [$c6]
    cp $81
    rst $38
    ldh a, [$a4]
    rst $38
    inc hl
    ccf
    add hl, bc
    daa
    ccf
    ld b, a
    ld a, a
    ld b, e
    ld c, a
    ld hl, $2031
    cpl
    add e
    nop
    jp c, $37ec

    inc de
    ld bc, $8201
    add d
    jp nz, $a3c3

    db $e3
    sbc l
    rst $38
    ld hl, $60f1
    pop hl
    ldh [$e0], a
    ld h, e
    ld [hl], e
    inc a
    inc a
    xor e
    sbc l
    inc bc
    ld h, b
    ldh [$30], a
    ldh a, [rNR44]
    ld hl, sp+$01
    add sp, -$08
    inc hl
    ldh a, [rTMA]
    ldh [$e0], a
    add b
    add b
    add b
    add b
    add b
    db $f4
    jr c, jr_053_7291

jr_053_7291:
    dec e
    ld de, $7060
    adc b
    adc b
    add b
    db $e4
    inc b
    inc b
    add h
    db $e4
    inc b
    inc b
    ld [$08c8], sp
    ld [$f070], sp
    db $f4
    scf
    nop
    inc e
    rst $38
    ld l, c
    rrca
    ld bc, $0200
    ld [bc], a
    dec b
    inc b
    dec bc
    ld bc, $090b
    rla
    ld bc, $1117
    cpl
    ld bc, $2f43
    ld hl, $5f01
    nop
    ld b, l
    ld e, a
    ld b, b
    ld bc, $407f
    ld b, l
    ccf
    jr nz, jr_053_730f

    rra
    db $10
    dec e
    rrca
    dec c
    rrca
    ld c, $1a
    jr jr_053_7303

    jr nz, jr_053_7352

    ld b, b
    ld a, l
    ld b, b
    rst $38
    add a
    ld hl, sp-$48
    adc $ce
    ld de, $101f
    rra
    jr jr_053_7306

    ld e, $1f
    rrca
    rrca
    inc bc
    inc bc
    ld a, c
    ld bc, $0080
    ld [hl+], a
    add b
    call nz, $1584
    ld bc, $0601
    ld b, $0f
    ld [$101e], sp
    ccf
    jr nz, @-$3f

    and b
    rst $38

jr_053_7303:
    ret nz

    rst $08
    ld b, c

jr_053_7306:
    add a
    add c
    rst $08
    add d
    rst $38
    add d
    ld b, [hl]
    rst $38
    add h

jr_053_730f:
    ld [bc], a
    ld b, h
    rst $38
    call nz, $ff44
    ld [hl+], a
    dec c
    ld a, [de]
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ldh [$1f], a
    inc e
    inc hl
    ccf
    pop hl
    rst $38
    ld b, b
    ld b, h
    rst $38
    nop
    ld b, e
    ret nz

    rst $38
    ld b, l
    ld b, b
    ld a, a
    ld b, e
    jr nz, jr_053_7370

    dec b
    db $10
    rra
    ld [$060f], sp
    rlca
    pop de
    ldh [$e0], a
    ld hl, $7c7f
    rst $38
    add e

jr_053_7340:
    cp a
    nop
    ld e, a
    nop
    cp a
    rlca
    ld e, a
    jr jr_053_7340

    ld h, b
    db $eb
    add b
    push af
    nop
    ld [$f500], a
    nop

jr_053_7352:
    cp $00
    sbc a
    nop
    rrca
    nop
    rlca
    nop
    add a
    nop
    rst $08
    nop
    ld c, b
    rst $38
    nop
    dec d
    add b
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    rst $38
    db $fd
    cp $ff
    rst $38
    ccf
    rst $38
    inc bc

jr_053_7370:
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    add [hl]
    add e
    jp $01fc


    ccf
    rst $38
    ld l, a
    inc de
    ldh a, [$f0]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld hl, sp-$19
    ld h, [hl]
    pop af
    pop af
    db $fd
    dec c
    rst $38
    inc bc
    rst $20
    ld bc, $00e7
    add e
    db $ed
    ld b, $ab
    nop
    ld d, l
    nop
    db $eb
    nop
    push af
    add h
    rst $10
    inc bc
    rst $20
    nop
    jp $c400


    add c
    dec de
    ld bc, $06ff
    rst $38
    jr c, @+$01

    add $ff
    ld bc, $807f
    sbc $e0
    db $fd
    ldh a, [$5e]
    ld hl, sp-$51
    db $fc
    ld d, a
    cp $ab
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, a
    dec h
    rst $38
    nop
    rst $38
    ld [hl], e
    dec c
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rSVBK]
    db $fc
    adc h
    cp $82
    rst $38
    ld bc, $ff43

jr_053_73db:
    add b
    ld [$40fd], sp
    ld [$f540], a
    jr nz, @-$14

    jr nz, jr_053_73db

    ld b, a
    jr nz, @+$01

    nop
    ld b, b
    and [hl]
    ld bc, $0e0d
    ld bc, $07ff
    ld hl, sp+$18
    ldh a, [$f0]
    pop hl
    ld hl, $17f6
    ld e, h
    rrca
    xor [hl]
    rrca
    ld b, l

Jump_053_73ff:
    rst $38
    rlca
    rlca
    cp $86
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp-$18
    and e
    nop
    ld c, h
    db $ec
    ld hl, $8023
    ld b, e
    ret nz

    ld b, b
    nop
    ld h, b
    ld c, d
    jr nz, @-$1e

    ld bc, $40c0
    add l
    db $fd
    add hl, bc
    db $d3
    dec l
    db $fd
    jp $393f


    and $e6

jr_053_7427:
    ld [de], a
    ld a, [c]
    and e
    nop
    ld b, [hl]
    ld [bc], a
    jr c, jr_053_7427

    ld hl, sp-$50
    nop
    ld c, e
    rst $38
    ld [hl], c
    ld bc, $0404
    ld b, e
    ld c, $0a
    dec c
    dec de
    ld bc, $101b
    add hl, de
    db $10
    jr nc, @+$2a

    ld a, [hl-]
    inc h
    ld e, $11
    rra
    db $10
    ld b, e
    rrca
    ld [$0701], sp
    inc b
    ld b, e
    inc bc
    ld [bc], a
    inc bc
    rlca
    inc b
    ld bc, $4301
    inc bc
    ld [bc], a
    ld bc, $0101
    ld h, c
    add $80
    ld [de], a
    ld [bc], a
    inc b
    ld b, $04
    dec b
    ld [$080e], sp
    rrca
    ld c, $0f
    add hl, bc
    rrca
    nop
    rrca
    db $10
    rra
    db $10
    rla
    ld b, a
    inc d
    rra
    ld bc, $0f0c
    ld [hl], e
    inc bc
    ld b, b
    ld b, b
    ldh [$a0], a
    ld b, e
    ldh [rNR41], a
    db $10
    ldh a, [rNR10]
    db $fc
    inc b
    ld a, $02
    xor [hl]
    ld b, d
    rst $10
    ld hl, $41bf
    db $db
    ld hl, $01f7
    ld a, [$0244]
    cp $1c
    rst $38
    inc bc
    db $fc
    inc c
    ldh a, [rNR23]
    ld hl, sp+$3f
    rst $00
    ld l, a
    add b
    push de
    ldh a, [$fb]
    inc c
    ccf
    ld [bc], a
    rra
    ld bc, $003f
    ld e, a
    ld bc, $01be
    cp $0b
    push af
    cp $44
    rst $38
    nop
    dec bc
    ld [$34ff], sp
    rst $30
    ld b, d
    rst $08
    ld b, c
    rst $18
    ld b, e
    db $dd
    ld b, e
    db $fd
    db $ec
    dec l
    db $10
    rlca
    rlca
    ld a, b
    ld a, h
    add [hl]
    rst $00
    ld h, c
    ld a, e
    db $10
    rra
    ld [$0cbf], sp
    rst $30
    db $fc
    rst $00
    jr c, jr_053_7520

    rst $38
    nop
    ld [$fe09], sp
    sub a
    db $fc
    and a
    db $fd
    xor a
    ei
    ld d, $43
    ei
    ld b, $05
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    inc b
    add h
    add l
    inc bc
    inc d
    rst $28
    dec l
    sub $75
    rlca
    ld bc, $0601
    inc b
    dec c
    ld [$080a], sp
    jp Jump_053_5500


    ld [$223c], sp
    inc [hl]
    jr nz, jr_053_7534

    nop
    ld [hl], l
    ld b, b
    ld a, d
    and a
    nop
    adc a
    rlca
    ld e, h
    rlca
    cp $c3
    cp a
    ld a, [hl]
    jp Jump_053_443c


    rst $38
    nop
    inc de

jr_053_7520:
    ld bc, $a1ff
    ld e, a
    ld d, b
    xor a
    add sp, $77
    adc b
    rst $30
    ld de, $0bff
    cp $0e
    db $fd
    ld c, $f5
    inc b
    rst $38

jr_053_7534:
    ld b, l
    inc c
    rst $30
    dec b
    dec e
    and $b8
    ld c, a
    ld e, e
    xor l
    ld [hl], l
    dec d
    ret nz

    ret nz

    pop hl

jr_053_7543:
    ld hl, $1476
    db $fd
    jr jr_053_7543

    jr @+$59

    ldh [$0b], a
    nop
    rlca
    nop
    dec hl
    nop
    ld d, a
    nop
    cp a
    nop
    ld c, h
    rst $38
    nop
    nop
    ret nz

    ld b, e
    cp a
    ldh [rP1], a
    sbc a
    ld b, e
    ldh a, [$1f]
    add hl, bc
    pop af
    rst $08
    cp c
    ld c, a
    ld a, [$c87f]
    ccf
    ldh a, [$cf]
    ld b, [hl]
    ld hl, sp+$4f
    dec bc
    ld e, a
    add sp, $7f
    ret z

    rst $38
    ld [hl], b
    cp a
    ret nc

    rst $28
    or b
    rst $38
    jr nz, jr_053_75f6

    inc b
    ret nz

    ret nz

    and b
    jr nz, jr_053_75f5

    ld b, e
    db $10
    ldh a, [rWX]
    ld [$07f8], sp
    inc b
    db $fc
    inc b
    ld hl, sp+$02
    db $fc
    ld bc, $44fd
    ld bc, $07ff
    cp $02
    db $fc
    ld [bc], a
    ld hl, sp+$0c
    ld hl, sp-$74
    ld b, e
    ld hl, sp+$48
    ld bc, $44fc
    ld b, e
    and $82
    dec b
    cp $82
    db $fc
    call nz, $b8b8
    inc hl
    add b
    add hl, bc
    ret nz

    ret nz

    ldh a, [rSVBK]
    ret z

    ld c, b
    db $f4
    inc h
    db $fc
    inc b
    rst $38
    ld l, a
    ldh [rNR42], a
    ld h, b
    ld h, b
    ld [hl], b
    sub b
    db $fc
    adc h
    rst $38
    add e
    rst $18
    and b
    rst $08
    or b
    ld d, a
    cp b
    ld b, l
    ld a, [hl]
    ld h, e
    ld e, a
    jr nz, jr_053_7634

    jr nc, @+$31

    db $10
    cpl
    jr jr_053_75f2

    ld [$0c17], sp
    dec bc
    ld b, $05
    ld [bc], a
    inc bc
    ld h, $01
    ld b, l
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rlca
    inc b
    ld b, e
    ld b, $05
    ld b, e
    ld [bc], a
    inc bc

jr_053_75f2:
    nop
    dec b
    ld [hl+], a

jr_053_75f5:
    rlca

jr_053_75f6:
    ld de, $3a3d
    ld a, [hl]
    ld b, c
    db $fd
    add d
    cp $81
    ld a, a
    ld a, a
    jr jr_053_7622

    dec a
    ld [hl+], a
    ld a, $21
    dec e
    ld [de], a
    ld [hl], l
    dec b
    add b
    add e
    db $fc
    ld a, h
    ldh [rP1], a
    ld b, h
    rst $38
    nop
    ld [de], a
    add b
    ld a, a
    ldh [rIF], a
    ldh a, [$3f]
    ldh [$3e], a
    pop hl
    ld a, h
    jp $c778


jr_053_7622:
    ldh a, [$8f]
    ldh [$9f], a
    ldh [$1f], a
    ld b, e
    ret nz

    ccf
    dec e
    add c
    ld a, a
    add d
    ld a, a
    dec b
    rst $38
    dec bc
    ei

jr_053_7634:
    ld d, $f7
    ccf
    ld hl, sp+$3f
    pop af
    ld a, [hl]
    db $e3
    db $76
    rst $38
    db $e4
    rst $38
    adc d
    ld [hl], a
    ld c, d
    or a
    sub h
    ld a, a
    ld d, h
    xor a
    rst $30
    rst $28
    ld b, l
    jr z, @+$01

    inc bc
    xor b
    ld e, a
    cp $df
    ld [hl], h
    dec b
    inc bc
    db $fc
    db $fc
    ld bc, $7f00
    add l
    rst $18
    rlca
    nop
    rst $20
    dec de
    or b
    ld a, a
    inc c
    rst $38
    ld [bc], a
    ld b, h
    rst $38
    ld bc, $31e0
    ld b, $ff
    add hl, de
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [$df], a
    ldh [$9f], a
    ld h, b
    rst $18
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld h, [hl]
    rst $38
    ld e, $ff
    rla
    db $eb
    dec bc
    db $f4
    rla
    add sp, $2f
    ret nc

    sub a
    add sp, -$01
    db $fc
    ccf
    rst $38
    ld d, [hl]
    xor a
    cpl
    pop de
    ld e, a
    and c
    or b
    nop
    ld h, [hl]
    dec b
    ld bc, $0607
    rst $38
    ld hl, sp+$3f
    add h
    reti


    ld b, $fd
    inc bc
    db $fc
    rrca
    ldh a, [$7f]
    add b
    ld c, [hl]
    rst $38
    nop
    inc b

jr_053_76b4:
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    ld b, h
    rst $38
    ld [$3000], sp
    ld b, h
    rst $38
    ld b, b
    dec b
    ld [hl], b
    rst $38
    adc h
    rst $38
    scf
    rst $08
    ld b, e
    ld a, d
    add [hl]
    dec b
    ld [hl-], a
    adc $c1
    rst $38
    pop hl
    ccf
    ld b, e
    pop af
    ld e, $09
    ret nc

    ccf
    add sp, -$11
    inc h
    rst $20
    ld b, h
    rst $00
    ld b, d
    jp $0769


    jr jr_053_76fc

    inc a
    inc h
    ld a, [hl]
    ld b, d
    cp $82
    ld b, e
    rst $38
    ld bc, $e705
    jr jr_053_76b4

    inc a
    jp Jump_053_437c


    ld bc, $02fe
    ld bc, $00fe
    ld e, d

jr_053_76fc:
    rst $38
    nop
    dec bc

jr_053_76ff:
    ld bc, $02ff
    cp $04
    db $fc
    jr jr_053_76ff

    ldh [$e0], a
    nop
    nop
    add [hl]
    nop
    inc sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add d
    ld [hl+], a
    add h
    ld [$e844], sp
    jr z, @+$7a

    sbc b
    ld sp, $19c1
    jp hl


    sub [hl]
    nop
    ld h, b
    ld h, $80
    ld c, e
    ret nz

    ld b, b
    ld c, c
    ld h, b
    and b
    push bc
    sub b
    res 4, b
    rlca
    ld b, b
    ld h, b
    add b
    sub b
    db $10
    stop
    ld [$2823], sp
    inc bc
    ld h, h
    ld b, h
    ld [hl], h
    ld b, h
    ld b, e
    db $f4
    call nz, $b205
    jp nz, $82ba

    ld a, [de]
    add d
    rst $38
    db $ec
    scf
    dec c
    ld b, $0e
    dec bc
    rrca
    dec d
    rra
    dec de
    rra
    rla
    ccf
    inc a
    dec a
    jr c, jr_053_7795

    inc hl
    jr c, jr_053_7771

    inc a
    inc a
    rra
    ccf
    ld e, $1e
    inc e
    inc e
    jr c, jr_053_778e

    jr nc, jr_053_7788

    jr nc, jr_053_779b

    jr nz, @+$23

    ld b, b
    ld b, d
    ld b, b
    ld b, h
    add b

jr_053_7771:
    adc b
    ld h, a
    ld [bc], a
    ld bc, $0201
    ld [hl+], a
    inc bc
    ld b, a
    dec b
    rlca
    ld bc, $0303
    add a
    sub l
    nop
    ld bc, $0243
    inc bc
    rlca
    inc b

jr_053_7788:
    ld b, $04
    dec b
    ld [$080a], sp

jr_053_778e:
    dec c
    jp $0481


    ld [$0402], sp

jr_053_7795:
    rlca
    inc b
    push bc
    xor d
    ld d, $80

jr_053_779b:
    add b
    ldh [$e0], a
    ldh a, [$f8]
    rst $38
    rst $38
    ld a, a
    ld a, a
    jr jr_053_77be

    ld h, b
    ld h, b
    add b
    add b
    nop
    add c
    nop
    add d
    nop
    add h
    nop
    ld b, e
    adc b
    nop
    ld b, e
    stop
    inc b
    jr nz, jr_053_77ba

jr_053_77ba:
    jr nz, jr_053_77bd

    ld d, c

jr_053_77bd:
    and l

jr_053_77be:
    nop
    inc [hl]
    inc hl
    ldh a, [rSB]
    add sp, -$08
    ld b, e
    adc b
    sbc b
    ld bc, $1818
    inc hl
    inc c
    rlca
    rrca
    rrca
    rra
    inc e
    inc a
    ld h, b
    ldh a, [$80]
    ld b, e
    ldh [rP1], a
    ld bc, $00f3
    ld b, e
    rst $38
    nop
    ld [bc], a
    ld a, a
    nop
    cp a
    adc b
    add e
    nop
    ld e, a
    add h
    sub c
    ld de, $c7fb
    ccf
    jr c, jr_053_7856

    ld h, b
    rst $00
    add b
    add a
    nop
    adc e
    add c
    ld d, [hl]
    ld b, d
    ld a, [hl]
    ld b, e
    inc a
    and l
    ld b, a
    inc a
    inc h
    ld b, e
    ld a, [hl]
    ld b, d
    ld b, $3e
    ld a, [hl]
    cp $82
    rst $38
    add c
    rst $38
    call nz, $7e00
    dec de
    inc c
    inc c
    inc de
    rra
    jr jr_053_7833

    ld e, $1f
    dec a
    dec a
    jr c, jr_053_7852

    jr nc, @+$32

    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ldh [$e0], a
    ld hl, sp+$38
    cp $06
    ld a, a
    inc bc
    ld a, a
    ld bc, $ff5a
    nop
    add hl, de
    add b
    rst $38
    ld h, e
    db $fc
    inc e

jr_053_7833:
    ld hl, sp+$08
    db $fc
    inc b
    rst $38
    add a

jr_053_7839:
    ld a, a
    ld h, a
    rra
    dec de
    ld b, $07
    ld bc, $0085
    add h
    nop
    ld b, h
    nop
    ld b, d
    nop
    ld b, e
    ld [hl+], a
    nop
    ld b, $11
    nop
    stop
    jr z, jr_053_7852

jr_053_7852:
    inc h
    xor e
    nop
    ld h, b

jr_053_7856:
    ld a, [bc]
    jr nz, jr_053_7839

    sub b
    ldh a, [$d8]
    ld hl, sp+$68
    ld a, b
    ld d, h

jr_053_7860:
    ld a, h
    inc l
    ld [hl+], a
    inc a
    dec b
    jr @+$1a

    db $10
    db $10
    add b
    add b
    and h
    nop
    ld l, h
    dec b
    ld h, b
    ret nc

    ld d, b
    ret nc

    ld [hl], b
    ret z

    ld b, h
    jr c, jr_053_7860

    ld b, e
    ldh a, [$30]
    and e
    nop
    sub h
    ld de, $41c1
    add d
    add e
    dec b
    rlca
    ld a, [bc]
    rrca
    rra
    ccf
    ld a, a
    rst $38
    cp $fe
    ld hl, sp-$04
    ldh [$f0], a
    add e
    nop
    ld a, h
    dec bc
    add e
    add d
    ld b, e
    ld b, d
    ld hl, $2524
    inc h
    inc d
    inc d
    jr @+$1a

    ld b, h
    ld [$0088], sp
    ld c, b
    db $ec
    scf
    inc bc
    add b
    add b
    and b
    ldh [$83], a
    nop
    push bc
    inc b
    ld [hl], b
    ld hl, sp+$70

jr_053_78b4:
    ld a, b
    ld a, b
    ld b, e
    ld a, b
    jr c, jr_053_78bc

    jr c, jr_053_78b4

jr_053_78bc:
    db $fc
    ld b, e
    db $fc
    inc a
    rrca
    cp $7a
    cp $72
    cp $32
    cp $02
    ld a, h
    inc b
    ld d, h
    inc b
    xor b
    ld [$1050], sp
    rst $38
    db $ec
    dec hl
    ld bc, $0101
    add e
    add e
    dec b
    ld b, $0e
    db $10
    db $10
    ld b, $0e
    add l
    adc e
    ld bc, $0202
    push bc
    sub d
    ld [bc], a
    ld bc, $0301
    add $8a
    dec b
    inc bc
    ld [bc], a
    rlca
    inc b
    inc bc
    inc bc
    ld h, e
    dec b
    inc bc
    rlca
    rra
    ccf
    rst $38
    rst $38
    sub h
    add $c6
    add c
    rla
    rlca
    rlca
    ld e, $39
    inc a
    ld b, e
    ld [hl], e
    ld c, a
    inc h
    inc a

jr_053_790b:
    ld de, $2c1f
    cpl
    rst $00
    rst $00
    ld [$8408], sp
    add h
    ld [$0688], sp
    ld b, $c3
    ret z

    ldh [$27], a
    add h
    add h

jr_053_791f:
    ld b, e
    db $e3
    add l
    add b
    ld a, [hl-]
    nop
    pop hl
    sub b
    jp $0dc1


    add b
    rra
    nop
    rst $38
    nop
    rst $18
    ret nz

    sbc a
    add b
    ccf
    nop
    rst $38
    ld c, $f3
    ld [hl], d
    add e
    add e
    rlca
    rlca
    rrca
    jr jr_053_791f

    ldh [$fe], a
    ld bc, $faf5
    ld l, l
    add hl, bc
    inc e
    inc e
    inc de
    inc de
    ret z

    ret z

    jr c, jr_053_7987

    adc b
    adc b
    inc hl
    ld b, b
    rlca
    jr nz, jr_053_7976

    ldh [$e0], a
    ld b, b
    ret nz

    ldh [$e0], a
    and l
    nop
    jr z, jr_053_790b

    nop
    ld l, b
    xor b
    nop
    ld b, d
    ld a, [bc]
    ld [$8888], sp
    ld de, $f331
    sub e
    rst $30
    dec d
    rst $38
    ld [$ff43], sp
    nop
    db $10
    cp a

jr_053_7976:
    ld b, b
    rst $18
    ld h, b
    cp $e0
    call c, $fee2
    adc $fe
    ld a, [hl]
    rst $18
    ld a, $87
    ld a, a
    inc bc
    adc d

jr_053_7987:
    nop
    ld e, a
    dec bc
    ld d, b
    ld d, b
    xor b
    xor b
    adc b
    adc b
    dec b
    dec b
    add l
    add l
    ld [bc], a
    ld [bc], a
    sub h
    nop
    jr @+$05

    nop
    ld bc, $0000
    ret z

    add e
    ld [bc], a
    ld [bc], a
    nop
    dec b
    add h
    add e
    inc bc
    inc bc
    jr nz, jr_053_79e1

    jr nz, jr_053_79ef

    ld a, a
    ld b, b
    ld bc, $80ff
    ld b, e
    rst $38
    nop
    ld b, [hl]
    ld a, a
    nop
    inc b
    ld [bc], a
    rst $38
    daa
    rst $38
    ld [hl], a
    inc hl
    rst $38
    nop
    db $fc
    adc d
    rst $18
    dec b
    ld b, b
    ld b, b
    or b
    or b
    xor b
    xor b
    inc hl
    ld [$1512], sp
    dec b
    ld e, $06
    inc e
    inc b
    dec a
    nop
    cpl
    nop
    dec d
    inc bc
    cpl
    inc b
    ld e, e
    inc c
    jr z, jr_053_79ee

    ld d, b
    ld b, e

jr_053_79e1:
    rra
    ldh a, [rNR12]
    ccf
    jp $f07f


    ccf
    ei
    rrca
    inc e
    inc e
    xor d

jr_053_79ee:
    nop

jr_053_79ef:
    ld d, h
    nop
    jr z, jr_053_79f3

jr_053_79f3:
    ld d, l
    nop
    cp d
    nop
    ld c, a
    rst $38
    nop
    ld de, $06fb
    rst $38
    ld bc, $2bff
    rst $38
    ld a, b
    xor $78
    rst $20
    db $fc
    rst $00
    db $fc
    ld bc, $03fe
    cp $b3
    nop
    ld h, c
    inc hl
    ld b, b
    inc hl
    add b
    rlca
    ldh [$f0], a
    db $fc
    inc c
    ld a, [$c206]
    ld a, $43
    inc b
    db $fc
    add hl, bc
    ld [$30f8], sp
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [rNR32]
    inc e
    and e
    nop
    jp c, $29e0

    ld e, $1e
    ld a, a
    ld h, c
    rra
    ld de, $21bf
    rst $38
    ld bc, $0ff7
    cp $12
    db $fc
    inc h
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$60], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$d0]
    jr nz, jr_053_7a6e

    ret nz

    ret nz

    or b
    jr nc, jr_053_7a9b

    ld [$04a4], sp
    ld c, b
    jr @-$12

    inc b
    rst $38
    db $ec
    daa
    dec c
    ld bc, $0c03
    inc c
    nop
    db $10
    ld [$1108], sp
    ld de, $0a0a
    inc b
    inc b
    add [hl]
    sub e

jr_053_7a6e:
    inc c
    ld bc, $0200
    ld b, $06
    ld [bc], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    db $10
    ld de, $1010
    inc hl
    jr nz, @+$06

    db $10
    db $10
    ld [$0008], sp
    ld [hl+], a
    inc b
    add hl, bc
    nop
    inc b
    add hl, bc
    ld [$0803], sp
    inc de
    db $10
    ld de, $6d10
    ld b, $18
    jr c, jr_053_7ad0

    daa
    ccf
    jr nz, jr_053_7aa9

    ld b, h

jr_053_7a9b:
    db $10
    rra
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    add hl, bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld h, c

jr_053_7aa9:
    pop af
    inc c
    inc c
    inc bc
    inc bc
    and l
    call nc, $6001
    ld h, b
    add e
    sla e
    ld b, b
    inc bc
    nop
    ld b, b
    add b
    add b
    xor c
    nop
    rra
    adc h
    nop
    inc e
    ld h, d
    inc b
    sub l
    nop
    ld [$f700], a
    ld [hl], b
    add hl, bc
    ld b, b
    ld b, b
    add sp, -$58
    ld l, h

jr_053_7ad0:
    and h
    db $fc
    inc d
    db $f4
    inc c
    ld b, e
    ld a, [c]
    ld c, $0f
    pop af
    rrca
    pop hl
    rra
    add c
    ld a, a
    ld hl, $50ff
    rst $18
    adc b
    adc a
    ld c, b
    ld c, a
    add h
    add a
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $0101
    adc l
    rst $00
    add hl, bc
    ld bc, $0200
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ld b, e
    rrca
    nop
    inc b
    rra
    nop
    ld a, a
    nop
    rst $38
    adc b
    add e
    nop
    rst $38
    ld [hl], d
    dec c
    ld [$1408], sp
    inc d
    inc b
    inc h
    ld b, b
    ld c, b
    inc b

jr_053_7b14:
    ld b, h
    add h
    add h
    add c
    add e
    add h
    sub c
    ldh [rNR51], a
    nop
    sub l
    add b
    ld l, d
    ldh [rNR22], a
    rst $38
    jr @-$17

    ld a, b
    add a
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    cp a
    ld b, b
    ld a, a
    ld c, d
    ld a, a
    dec [hl]
    dec [hl]
    jr nz, jr_053_7b56

    ld d, b
    db $10
    sub b
    db $10
    ld d, b
    db $10
    or b
    db $10
    ld d, b
    db $10
    ei
    rra
    rst $18
    ld b, h
    jr nz, @+$01

    rrca
    db $fd
    ld [hl+], a
    ld a, [$f525]
    ld a, [de]
    ld hl, sp+$17
    ld e, b
    rrca
    xor h
    rlca
    ld d, h
    rlca
    xor d

jr_053_7b56:
    inc bc
    rlc b
    db $fd
    push bc
    nop
    di
    rlca
    rlca
    inc b
    rrca
    inc c
    dec de
    inc d
    rra
    ld [de], a
    ld b, e
    rrca
    ld [$1f10], sp
    db $10
    rst $10
    ret c

    ld [hl], a
    jr c, jr_053_7b14

    inc a
    ld h, b
    ccf
    ldh [$3f], a
    ldh a, [$9f]
    ld [hl], b
    rst $38
    db $10
    ld b, e
    rst $38
    ld [$ff46], sp
    nop
    ld b, $90
    rst $38
    ld l, b
    ld l, a
    inc b
    rlca
    inc bc
    adc b
    pop bc
    ld c, $c0
    ret nz

    and b
    ld h, b
    sub b
    ld [hl], b
    ld c, b
    cp b
    add h
    ld a, h
    inc b
    db $fc
    ld [bc], a
    cp $02
    ld b, [hl]
    rst $38
    ld bc, $0087
    jp z, $e003

    and b
    ldh [rNR41], a
    and h
    nop
    ld a, d
    nop
    db $10
    ld c, c
    ld hl, sp+$08
    rlca
    ldh a, [$08]
    db $fc
    inc b
    db $f4
    inc c
    db $e4
    inc e
    add e
    or c
    jp $c592


    sbc h
    ld bc, $e020
    and e
    nop
    ldh a, [rSB]
    ld b, b
    ret nz

    add a
    add l
    inc bc
    ret nz

    ret nz

    ld b, b
    ld b, b
    add [hl]
    nop
    ld c, d
    inc bc
    jr z, jr_053_7bdb

    ld [$8410], sp
    ld bc, $0963
    or b
    db $10

jr_053_7bdb:
    ld a, b
    ld [$08b8], sp
    ld [hl], b
    db $10
    ldh a, [rNR10]
    rst $38
    db $ec
    inc [hl]
    inc c
    ld bc, $0202
    rlca
    rlca
    db $10
    jr @+$22

    jr nz, jr_053_7c31

    ld b, b
    nop
    ld b, b
    daa
    add b
    nop
    nop
    inc h
    ld b, b
    rrca
    nop
    jr nz, jr_053_7c1f

    jr nz, jr_053_7c11

    jr @+$07

    inc b
    ld b, $04
    dec c
    ld [$3032], sp
    ld b, l
    ld b, b
    ldh a, [rNR41]
    jp z, $0122

    inc bc

jr_053_7c11:
    inc bc
    ld [bc], a
    ld bc, $4302
    ld b, $05
    add hl, de
    rlca
    dec b
    inc bc
    dec b
    ld c, $0a

jr_053_7c1f:
    ld e, $3a
    adc $ca
    dec c
    dec bc
    rrca
    add hl, bc
    ld b, l
    jp z, $253a

    rra
    inc h
    inc e
    dec d
    dec b
    inc c

jr_053_7c31:
    ld bc, $c303
    and l
    dec bc
    ld bc, $3a00
    nop
    db $fd
    nop
    db $eb
    inc d
    ret nc

    cpl
    xor b
    ld d, a
    ld b, e
    add b
    ld a, a
    dec b
    ret nz

    ccf
    ldh a, [rIF]
    ld e, h
    inc bc
    ld [hl], c
    inc bc
    ld [bc], a
    ld b, $09
    add hl, bc
    inc hl
    db $10
    dec bc
    jr nz, jr_053_7c87

    ld b, c
    ld b, c
    add d
    add e
    add b
    add e
    add h
    add a
    add b
    add a
    ld b, e
    ld c, b
    rst $08
    ld bc, $8f80
    ld b, l
    db $10
    rra
    ld bc, $1f00
    ld b, e
    jr nz, @+$41

    ld a, [de]
    ld a, [hl+]
    dec [hl]
    or h
    xor e
    ld l, c
    sub $57
    xor b
    cp [hl]
    ld e, h
    ld h, e
    db $e3
    add d
    add b
    ld d, l
    nop
    xor d

jr_053_7c82:
    nop
    ld d, a
    nop
    cp b
    rlca

jr_053_7c87:
    ld h, b
    rra
    add b
    ld a, a
    nop
    ld c, l
    rst $38
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0522
    ld [bc], a
    inc b
    dec b
    nop
    inc h
    ld [$0015], sp
    db $10
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$8d]
    ld hl, sp+$60
    ld a, a
    ld b, b
    ld a, a

jr_053_7ca9:
    add e
    db $fc
    rlca
    ld hl, sp+$0e
    ldh a, [$0c]
    ldh a, [rTMA]
    ld hl, sp+$45
    inc bc
    db $fc
    add e
    adc l
    dec b
    inc a
    ret nz

    ld a, b
    add b
    ld h, b
    add b
    ld b, e
    jr nc, jr_053_7c82

    rlca
    ld h, c
    add b
    pop hl
    nop
    pop bc
    nop
    and c
    nop
    jp Jump_053_4b00


    add hl, de
    ld b, b
    ld b, b
    ret nz

    ld b, b
    and b
    jr nz, @+$72

    and b
    ccf
    rst $20
    ld a, b
    ret z

    cp $46
    cp a
    inc hl
    sbc l
    inc e
    add d
    inc b
    ld b, b
    add e
    ld b, b
    add b
    jr nz, jr_053_7ca9

    xor l
    nop
    db $76
    and e
    nop
    inc [hl]
    dec c
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    sbc h
    db $ec
    ld [hl-], a
    jp nz, $8171

    ldh [rP1], a
    pop bc
    ld bc, $0343
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    nop
    ld [hl+], a
    inc bc
    ld bc, $0000
    ret


    nop
    add c
    ldh [$29], a
    ld [hl], b
    db $10
    xor b
    ld e, b
    ld d, d
    xor [hl]

jr_053_7d15:
    and c
    ld e, a
    ld d, b
    xor a
    ld bc, $82fe
    ld a, l
    ld b, c
    ld a, [hl]
    ld b, d
    ld a, l
    rrca

jr_053_7d22:
    jr nc, jr_053_7da3

    ld h, b
    cp a
    and b
    ld e, $10
    ld [$020c], sp
    ld [bc], a
    pop bc

jr_053_7d2e:
    pop bc
    inc a
    inc a
    add d
    ld [bc], a
    ld d, l
    ld bc, $c028
    inc d
    jr nz, jr_053_7d2e

    ld hl, $6400
    dec c
    and b
    ld h, b
    jr nz, jr_053_7d22

    ld [hl], b
    ldh a, [$b0]
    ldh a, [$50]
    ld d, b
    jr nz, jr_053_7d6a

    ldh [$e0], a
    ld [hl+], a
    jr nz, jr_053_7d15

    nop
    ld d, c
    inc hl
    add b
    ld a, [bc]
    jr c, @-$06

    ld h, [hl]
    add [hl]
    or c
    ld b, c
    ld [hl], d
    add d
    ld [c], a
    ld [bc], a
    add h
    and e
    sub a
    nop
    inc b
    dec h
    ld [bc], a
    inc bc
    inc b
    add h
    ld a, b
    ld a, b

jr_053_7d6a:
    add a
    cp a
    rst $38
    ld [hl], a
    inc b
    inc bc
    inc bc
    rlca
    inc b
    dec b
    inc hl
    inc b
    ld e, $00
    add hl, bc
    ld [$080a], sp
    rrca
    ld [bc], a
    dec d
    dec d
    inc d
    dec d
    inc e
    dec d
    rrca
    add hl, bc
    rrca
    ld [$0407], sp
    rrca
    dec bc
    rrca
    add hl, bc
    rra
    db $10
    rla
    db $10
    dec c
    inc c
    rlca
    rlca

jr_053_7d96:
    ld a, e
    dec c
    ld bc, $0300
    inc bc
    inc b
    inc b
    ld [$1808], sp
    db $10
    inc e

jr_053_7da3:
    db $10
    ccf
    jr nz, jr_053_7dc9

    rst $38
    ld [$ff00], sp
    inc bc
    ccf
    rlca
    ld a, a
    ld b, $ff
    nop
    ld b, h
    rst $38
    ld sp, $0000
    ld b, h
    rst $38
    add b
    inc c
    nop
    rst $38
    ld b, h
    sbc a
    nop
    rst $38
    rst $00
    ldh a, [rIE]
    rst $38
    jr nc, jr_053_7d96

    rst $08
    ld [hl], l

jr_053_7dc9:
    jr @+$18

    ld d, $7b
    ld l, c
    rst $38
    cp c

jr_053_7dd0:
    rst $38
    sub l
    cp a
    add h
    rra
    ld [bc], a
    cpl
    ld bc, $005f
    cpl
    nop
    ld e, a
    ld c, $f3
    ld sp, $c1c7
    adc a
    and l
    cp a
    ldh [rNR41], a
    nop

jr_053_7de8:
    rst $38
    sbc b
    rst $20
    inc h
    di
    ld [hl], d
    sub e
    ld [hl-], a
    sub e
    or d
    cp a
    ld hl, sp-$01
    nop
    rst $38
    ld c, $d7
    db $dd
    rra
    ld a, [$ccff]
    rst $38
    jr nc, jr_053_7dd0

    ret z

    rrca
    ld [$1515], sp
    rrca
    rrca
    cp b
    nop
    ld b, h
    ld [$e080], sp
    ld h, b
    ldh a, [rNR10]
    ld hl, sp-$78
    db $fc
    ld b, h
    ld b, e
    cp $22
    ld b, [hl]
    rst $38
    ld de, $9243
    rst $38
    ld [de], a
    inc h
    rst $38
    ld l, b
    rst $38
    ld a, h
    rst $38
    ld c, l
    rst $38
    ld b, c
    rst $38
    ld bc, $0aff
    rst $38
    adc a
    db $fc
    inc c
    ld hl, sp+$28
    ld b, h
    ldh a, [rSVBK]
    nop
    db $10
    and e
    nop
    ld a, [de]
    ld bc, $c0c0
    db $ec
    add hl, hl
    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    ld b, a
    ldh [rNR41], a
    ld b, h
    ldh a, [$50]
    ld [bc], a
    sub b
    ld h, b
    ld h, b
    db $ec
    dec h
    dec b
    inc bc
    inc bc
    ld b, $04
    inc c
    ld [$1843], sp
    db $10
    inc bc
    jr c, jr_053_7e7e

    inc a
    jr nz, jr_053_7de8

    nop
    ld l, b
    add a
    nop
    add b
    rlca
    ldh [$bf], a
    ldh a, [rVBK]
    ei
    ldh a, [rIF]
    rlca
    adc [hl]
    nop
    and b
    ld [bc], a
    inc bc
    cpl

jr_053_7e75:
    nop
    sub b
    nop
    or d
    inc c
    ld c, $df
    db $dd
    rra

jr_053_7e7e:
    db $fd
    rrca
    ld a, [$e41f]
    rst $38
    jr jr_053_7e75

    add sp, -$55
    rst $18
    dec b
    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    add h
    adc h
    ld bc, $0004
    ld de, $01ab
    ld d, h
    ld b, $01
    ld bc, $0202
    scf
    ld [hl-], a
    ei
    add h
    db $db
    rlca
    rst $38
    sub l
    cp a
    inc b
    ccf
    ld [bc], a
    rra
    ld bc, $018d
    ld d, h
    dec b
    ldh [rNR41], a
    ldh a, [$90]
    ld hl, sp+$48
    add l
    pop bc
    adc l
    cp a
    and e
    sbc l
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add a
    nop
    ld h, b
    ld bc, $a0bf
    add l
    ld bc, $86aa
    nop
    or b
    inc b
    inc e
    rst $20
    ld [hl+], a
    rst $00
    jp nz, $0183

    call c, $0086
    jr nz, jr_053_7ee1

    nop
    rla
    ld d, $17
    rla
    rra
    db $10
    rrca

jr_053_7ee1:
    ld [$008e], sp
    ld [hl], b
    nop
    nop
    ld b, h
    rst $38
    nop
    ld b, $80
    rst $38
    inc e
    rst $38
    ld a, [hl]
    rst $38
    ld h, b
    add e
    adc a
    rst $38
    db $ec
    dec [hl]
    ld de, $1808
    ld b, $26
    ld hl, $1025
    ld a, [de]
    inc d
    dec d
    nop

Jump_053_7f03:
    ld d, $0a
    rrca
    add hl, bc
    rrca
    nop
    rrca
    ld b, l
    inc b
    rlca
    dec b
    ld [bc], a
    inc bc
    ld c, $0f
    ld [hl], d
    ld a, a
    ld b, e
    add c
    rst $38
    rlca
    ld h, c
    ld a, a
    inc a
    ccf
    inc de
    rra
    add hl, bc
    rrca
    db $ec
    add hl, sp
    ld a, [bc]
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_053_7f99

    dec c
    xor l
    inc bc
    ld e, a
    nop
    ld b, h
    rst $38
    add b
    nop
    ld b, b
    ld b, h
    rst $38
    jr nz, jr_053_7f37

jr_053_7f37:
    db $10
    ld b, h
    rst $38
    ld [$0402], sp
    rst $38
    ld [bc], a
    ld b, h
    rst $38
    add c
    ld bc, $ff80
    db $ec
    dec h
    ld a, [bc]
    ld b, $06
    ld bc, $090b
    dec bc
    nop
    rla
    inc d
    rla
    inc b
    ld b, h
    daa
    inc h
    inc de
    ld b, b
    ld c, a
    ld c, b
    ld c, a
    ld [$888f], sp

jr_053_7f5e:
    adc a
    add b
    sbc a
    db $10
    rra
    ld de, $d61f
    sbc $38
    db $fd

jr_053_7f69:
    db $10
    cp $a5
    rst $10
    inc b
    ld hl, $22ff
    rst $38
    inc h
    ld b, h
    rst $38
    ld c, b
    dec b
    ld d, b
    rst $38
    jr nz, @+$01

    push bc
    rst $38
    ldh a, [$2d]
    nop
    ld l, [hl]
    ldh [rNR41], a
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_053_7f69

    ld hl, $12e1
    or $18
    ld hl, sp+$10
    ldh a, [rNR42]
    pop hl
    ld b, d
    jp $a380


    inc b
    ld d, a

jr_053_7f99:
    ld [$10af], sp
    ld e, a
    jr nz, jr_053_7f5e

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    ld c, d
    rst $38
    nop
    dec b
    inc bc
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    ldh a, [$2d]
    nop
    ld a, [bc]
    inc c
    inc b
    inc h
    ld b, h
    ld b, h
    sub h
    sbc h
    inc h
    inc a
    inc b
    inc a
    ld b, h
    ld a, h
    add h
    ld c, b
    db $fc
    inc b
    ld c, $07
    rst $38
    inc b
    db $fd
    inc b
    cp $04
    db $fd
    ld [$09ff], sp
    rst $38
    ld a, [bc]
    rst $38
    inc c
    ld b, h
    rst $38
    ld [$3802], sp
    rst $38
    rst $00
    ld b, e
    rst $38
    nop
    nop
    rst $38
    db $ec
    ccf
    rrca
    ld c, $0e
    ld [hl], c
    ld [hl], l
    add l
    xor a
    add hl, bc
    ld e, a
    ld de, $22bf
    cp $c2
    cp $02
    cp $45
    inc b
    db $fc
    ld b, e
    ld [$00f8], sp
    db $10
    ld [hl+], a
    ldh a, [rSB]
    inc e
    db $fc
    rst $38
