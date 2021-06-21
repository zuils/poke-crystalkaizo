; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

    call z, $1e6b
    ld a, $06
    call $2fcb
    ld hl, $4018
    ld de, $a000
    ld bc, $1000
    call $3026
    call $2fe1
    ret


    nop
    and b
    rlca
    pop bc
    and b
    dec c
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld e, l
    nop
    ld h, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    nop
    ld h, a
    nop
    dec b
    add hl, de
    ld bc, $0412
    nop
    ld l, c
    nop
    ld [hl], e
    nop
    ld a, a
    nop
    adc e
    nop
    sub a
    nop
    sbc e
    nop
    cp b
    nop
    jp Jump_07d_4400


    ld bc, HeaderROMSize
    or c
    ld bc, $01c3
    ret nc

    ld bc, $01e7
    db $f4
    ld bc, $0703
    rla
    rst $38
    inc bc
    ld b, $30
    rst $38
    ld c, $ff
    rrca
    rst $38
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    rra
    ret nc

    reti


    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    dec h
    cp [hl]
    jp nz, $b2d2

    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    dec h
    cp d
    or e
    cp h
    sbc $50
    ld b, e
    adc b
    and c
    xor e
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld d, b
    call nc, $d9d2
    ld d, b
    ld [hl+], a
    dec b
    ld [hl], e
    xor d
    inc c
    dec b
    ld a, a
    xor d
    xor l
    nop
    xor c
    nop
    xor l
    nop
    ld bc, $0203
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_40eb

    ld bc, $0187
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr @+$1b

    ld bc, HeaderDestinationCode
    rst $38
    jr z, @+$1c

    nop
    ld l, [hl]
    call $00d0
    call c, $e800

jr_07d_40eb:
    nop
    ld bc, $1901
    dec b
    ld bc, $0412
    jr @+$1b

    ld bc, $00f4
    cpl
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_411a

    ld bc, $0107
    cpl
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_4126

    ld bc, $011a
    cpl
    rst $38
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d

jr_07d_411a:
    or e

jr_07d_411b:
    cp h
    sbc $dd
    ld c, a
    cp h
    rst $08
    cp h
    ret nz

    rst $20
    ld d, a
    nop

jr_07d_4126:
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $dd
    ld c, a
    call nc, $cfd2
    cp h
    ret nz

    ld d, a
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $c6
    ld c, a
    cp h
    rst $18
    ld b, h
    or d
    ld [hl], l
    ld d, c
    or c
    ret nz

    rst $10
    cp h
    or d
    ld a, a
    sub l
    xor [hl]
    db $e3
    adc h
    db $dd
    ld c, a
    sub $d0
    cp d
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_411b

    or d
    ld d, a
    ld bc, $06d9
    rst $38
    jr nc, @+$01

    nop
    ld sp, hl
    jp nz, $9225

    db $e3
    sbc l
    inc sp
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    rst $20
    ld c, a
    or d
    rst $08
    ld a, a
    or l
    cp b
    rst $18
    ret nz

    ld a, a
    and a
    ld b, e
    db $e3
    sub e
    ld a, a
    or [hl]
    rst $10
    db $d3
    ld d, l
    push bc
    add $b6
    ld c, d
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec e
    jp z, $dfb2

    jp $b255


    reti


    or [hl]
    db $d3
    ld a, a
    cp h
    jp c, $becf

    sbc $e7
    ld d, c
    ld d, a
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld [de], a
    db $e3
    adc a
    ld c, d
    or c
    ret c

    rst $08
    cp [hl]
    sbc $4f
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $1f
    cp l
    jp c, Jump_07d_553a

    ret nc

    reti


    cp d
    call nz, $334a
    or a
    rst $08
    cp l
    ld d, c
    ld d, a
    or d
    db $db
    or d
    db $db
    push bc
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld h, $4f
    ret nc

    jp c, $bdcf

    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp [hl]
    jp nz, $b2d2

    inc sp
    cp l
    ld d, b
    cp e
    or d
    cp h
    sbc $25
    and l
    xor e
    add [hl]
    xor e
    rlca
    db $dd
    ld c, a
    rrca
    add d
    xor e
    xor b
    db $e3
    inc de
    ld a, a
    cp h
    rst $08
    cp l
    ld d, b
    ld d, h
    dec h
    push bc
    or a
    ld a, [hl+]
    or h
    rra
    or c
    jp $c8c3


    rst $20
    ld d, b
    sub l
    xor [hl]
    db $e3
    adc h
    rra
    ret nc

    reti


    ret


    db $dd
    ld c, a
    call nc, $cfd2
    cp l
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld d, a
    nop
    ld e, a
    nop
    rst $38
    rst $38
    ld e, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    nop
    ld e, l
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, l
    nop
    halt
    add [hl]
    nop
    sub l
    nop
    sbc c
    nop
    and l
    nop
    or c
    nop
    ld h, c
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c

jr_07d_42ac:
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, d
    call $2300
    ld h, e
    call Boot
    push de
    ld [bc], a
    rst $38
    inc hl
    ld h, d
    call $2303
    ld h, e
    call $0101
    push de
    ld [bc], a
    rst $38
    inc hl
    ld h, d
    call $2306
    ld h, e
    call $0102
    push de
    ld [bc], a
    rst $38
    ret nc

    ret nz

    or d
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_42ac

    or d
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    dec d
    dec c
    inc bc
    ld h, e
    call $00c9
    jp c, $ea00

    nop
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld e, b
    nop
    xor a
    nop
    rst $38
    rst $38
    ld h, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    nop
    ld e, [hl]
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    ld a, [hl]
    nop
    adc e
    nop
    adc a
    nop
    sub a
    nop
    and e
    nop
    or c
    nop
    or l
    nop
    or l
    nop
    or l
    nop
    or l
    nop
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    ld l, $de
    cp d
    cp b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    dec d
    ld a, [bc]
    add b
    ld d, b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld h, b
    dec d
    dec bc
    add e

jr_07d_4375:
    ld d, b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, h
    call Boot
    adc $03
    rst $38
    inc h
    ld h, d
    call $2301
    ld h, h
    call $0101
    adc $03
    rst $38
    inc h
    ld h, d
    call $2302
    ld h, h
    call $0102
    adc $03
    rst $38
    inc bc
    ld b, $01
    inc bc
    ld [bc], a
    rst $38
    ret nc

    ret nz

    or d
    ld a, a
    pop bc
    or d
    or a
    ld a, a
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_4375

    or d
    ld d, b
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld [bc], a
    add hl, hl
    nop
    dec d
    dec c

Jump_07d_4400:
    inc bc
    ld h, e
    call $02b3
    call nz, $d402
    ld [bc], a
    ld d, b
    ld h, [hl]
    nop
    dec d
    dec c
    inc bc
    ld h, h
    call $02e3
    ldh a, [rSC]
    db $fd
    ld [bc], a
    ld d, b
    ld [bc], a
    rlca
    ld bc, $0003
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc bc
    ld [bc], a
    inc bc
    sub b
    nop
    sub h
    nop
    rst $38
    rst $38
    and e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    nop
    and c
    nop
    dec bc
    add hl, de
    ld bc, $0412
    ld bc, $00a9
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    push af
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld b, e
    ld bc, $029c
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    inc bc
    rlca
    rla
    rst $38
    inc bc
    ld b, $27
    ld h, d
    call $cd64
    ld bc, $02d5
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    dec d
    dec c
    inc bc
    ld h, e
    call $00b5
    jp z, $df00

    nop
    ld d, b
    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    or [hl]
    or d
    ld d, b
    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    jp Jump_07d_50de


    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    add d
    inc b
    dec b
    inc b
    ld a, [c]
    ld d, b
    adc l
    xor e
    sub b
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    ld d, b
    ld [hl+], a
    nop
    ld [hl+], a
    call $0001
    ld e, h
    call $010e
    inc hl
    ld bc, $0123

jr_07d_44fa:
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $01c7
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $01e0
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $012e
    rst $38
    cp d
    cp d
    add $24
    jr nc, jr_07d_44fa

    db $d3
    ld c, [hl]
    and l
    xor e
    add a
    add c
    xor e
    ld a, a
    cp h
    jp $becf


    sbc $51
    ld d, b
    ld [hl+], a
    nop
    ld e, b
    call $0004
    ld d, h
    call $0151
    ld d, c
    ld bc, $018e
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $01e7
    ld a, [de]
    nop
    ld e, b
    call $018d
    ld l, d
    ld bc, $018d
    inc b
    nop
    nop
    nop
    ld bc, $051a
    nop
    and b
    adc l
    ld bc, $0176
    adc l
    ld bc, $0001
    inc hl
    ld l, d
    call $0c01
    ld l, d
    call $a000
    dec b
    ld bc, $1900
    dec b
    ld bc, $0412
    jr jr_07d_458e

    ld bc, $0199
    cpl
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $021e
    rst $38
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    inc sp
    ld a, a
    sub e

jr_07d_458e:
    xor h
    ld b, d
    rra
    call nz, $c0df
    ld c, [hl]
    or c
    push bc
    ret nz

    add $75
    ld d, l
    cp l
    jp $c5b7


    ld a, a
    ld b, d
    and a
    dec c
    xor e
    sub e
    ld c, d
    or c
    ret c

    rst $08
    cp l
    ld d, l
    or l
    ret nz

    ret


    cp h
    ret nc

    add $e7
    ld d, a
    dec d
    ld b, $0b
    nop
    inc b
    ld bc, $000a
    ld bc, $0403
    nop
    nop
    ld d, b
    cp e
    or d
    ld a, a
    dec d
    inc b
    rlca
    nop
    rlca
    ld d, b
    ld d, c
    ld d, b
    dec d
    inc bc
    inc c
    nop
    ld d, b
    ld d, c
    ld d, b
    dec d
    dec c
    inc bc
    ld h, e
    call $024a
    ld h, l
    ld [bc], a
    add b
    ld [bc], a
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    jp z, $5175

    dec d
    rrca
    nop
    ld e, b
    call $0404
    inc b
    nop
    nop
    ld d, b
    ld a, a
    ld a, [hl-]
    sbc $7f
    dec e
    and l
    xor e
    add a
    add c
    xor e
    rst $20
    ld c, a
    or l
    jp nc, $c433

    or e
    rst $20
    ld d, c
    ld d, b
    dec d
    dec c
    inc bc
    ld h, e
    call $024a
    ld h, l
    ld [bc], a
    add b
    ld [bc], a
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    jp z, $5175

    and l
    xor e
    add a
    add c
    xor e
    ld a, a
    cp h
    push bc
    or [hl]
    rst $18
    ret nz

    ld [hl], l
    ld c, a
    dec hl
    sbc $c8
    sbc $75
    ld d, c
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    dec b
    ld d, $a0
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    or [hl]
    or d
    ld d, c
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    dec b
    ld a, a
    and b
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    jp Jump_07d_51de


    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    dec b
    ld a, e
    and b
    add d
    inc b
    dec b
    inc b
    ld a, [c]
    ld d, b
    adc l
    xor e
    sub b
    ld d, c
    ld d, b
    or h
    rst $10
    sbc $30
    ld a, a
    set 0, h
    dec h
    ld [de], a
    db $e3
    adc a
    db $dd
    ld c, a
    ret nc

    reti


    cp d
    call nz, $334a
    or a
    rst $08
    cp l
    ld d, b
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    ld l, $de
    cp d
    cp b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    dec d
    ld a, [bc]
    add b
    ld d, b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    ld h, b
    dec d
    dec bc
    add e
    ld d, b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    ld de, $0200
    nop
    inc bc
    inc d
    ld a, [bc]
    dec b
    inc bc
    nop
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    ld b, e
    adc b
    and c
    xor e
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    inc bc
    inc b
    add d
    nop
    adc d
    nop
    rst $38
    rst $38
    adc d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    nop
    adc b
    nop
    dec bc
    add hl, de
    ld bc, $0412
    nop
    sub b
    nop
    sub l
    nop
    sbc c
    nop
    sbc a
    nop
    and e
    nop
    xor b
    nop
    xor l
    nop
    or e
    nop
    cp b
    nop
    cp [hl]
    nop
    jp $c700


    nop
    rst $08
    nop
    rst $10
    nop
    rst $18
    nop
    rst $20
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rlca
    ld bc, $010f
    rla
    ld bc, $011b
    dec de
    ld bc, $011b
    dec de
    ld bc, $011b
    dec de
    ld bc, $011b
    dec de
    ld bc, $011b
    dec de
    ld bc, $0131
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    adc h
    add c
    add a
    xor e
    ld d, b
    ld b, c
    xor h
    ld b, c
    ld d, b
    add h
    sub l
    adc h
    inc c
    and b
    ld d, b
    add hl, bc
    db $e3
    adc h
    ld d, b
    sub e
    ld [$e341], sp
    ld d, b
    inc c
    add hl, de
    xor h
    sub e
    ld d, b
    and [hl]
    db $e3
    dec bc
    xor [hl]
    and l
    ld d, b
    add e
    db $e3
    sbc e
    or b
    ld d, b
    sbc [hl]
    xor [hl]
    add d
    sub c
    db $e3
    ld d, b
    sbc b
    adc c
    xor h
    sub b
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, l
    call Boot
    rla
    ld [$23ff], sp
    ld h, l
    call $0101
    rla
    ld [$23ff], sp
    ld h, l
    call $0102
    rla
    ld [$23ff], sp
    ld h, l
    call $0103
    rla
    ld [$23ff], sp
    ld h, l

jr_07d_47e0:
    call HeaderLogo
    rla
    ld [$23ff], sp
    ld h, l
    call $0105
    rla
    ld [$23ff], sp
    ld h, l
    call $0106
    rla
    ld [$23ff], sp
    ld h, l
    call $0107
    rla
    ld [$23ff], sp
    ld h, l
    call $0108
    rla
    ld [$23ff], sp
    ld h, l
    call $0109
    rla
    ld [$01ff], sp
    nop
    nop
    rst $38
    push bc
    or a
    ld a, [hl+]
    or h
    ld c, d
    call c, $d9b6
    ld a, a
    ld d, h
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    cp b
    jr nc, jr_07d_47e0

    or d
    rst $20
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    rra
    call nc, $cfd2
    cp l
    ld d, b
    ld de, $0200
    nop
    inc bc
    inc d
    ld a, [bc]
    dec b
    inc bc
    nop
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    dec d
    dec c
    ld a, [bc]
    ld h, l
    call $0506
    inc de
    dec b
    rra
    dec b
    dec l
    dec b
    add hl, sp
    dec b
    ld b, [hl]
    dec b
    ld d, e
    dec b
    ld h, c
    dec b
    ld l, [hl]
    dec b
    ld a, h
    dec b
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld h, [hl]
    nop
    ld l, h
    nop
    rst $38
    rst $38
    ld l, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, b
    nop
    ld l, d
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld [hl], d
    nop
    ld a, b
    nop
    ld a, [hl]
    nop
    add h
    nop
    adc b
    nop
    sub a
    ld bc, $02a6
    or l
    inc bc
    ret c

    inc b
    ret c

    inc b
    ret c

    inc b
    ret c

    inc b
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    reti


    ld b, $ff
    push bc
    or a
    ld a, [hl+]
    or h
    rst $30
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    ld hl, sp+$50
    push bc
    or a
    ld a, [hl+]
    or h
    ld sp, hl
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $04e2
    ld a, [de]
    nop
    ld h, l
    call $00ac
    sbc [hl]
    nop
    xor h
    nop
    ld bc, $0400
    sub d
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $00c6
    cp b
    nop
    add $00
    ld bc, $0401
    daa
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $00e0
    jp nc, $e000

    nop
    ld bc, $0402
    or c
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $00fa
    db $ec
    nop
    ld a, [$0100]
    inc bc
    inc b
    and a
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0114
    ld b, $01
    inc d
    ld bc, $0401
    inc b
    xor a
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $012e
    jr nz, @+$03

    ld l, $01
    ld bc, $0405
    add hl, hl
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call HeaderROMSize
    ld a, [hl-]
    ld bc, HeaderROMSize
    ld bc, $0406
    jr c, @+$25

    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0162
    ld d, h
    ld bc, $0162
    ld bc, $0407
    dec [hl]
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $017c
    ld l, [hl]
    ld bc, $017c
    ld bc, $0408
    sub a
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0196
    adc b
    ld bc, $0196
    ld bc, $0409
    adc $23
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $04e2
    ld a, [de]
    nop
    ld h, l
    call $01bb
    xor l
    ld bc, $01bb
    ld bc, $0400
    add e
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $01d5
    rst $00
    ld bc, $01d5
    ld bc, $0401
    or b
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $01ef
    pop hl
    ld bc, $01ef
    ld bc, $0402
    dec c
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0209
    ei
    ld bc, $0209
    ld bc, $0403
    ld e, h
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0223
    dec d
    ld [bc], a
    inc hl
    ld [bc], a
    ld bc, $0404
    or a
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $023d
    cpl
    ld [bc], a
    dec a
    ld [bc], a
    ld bc, $0405
    or e
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0257
    ld c, c
    ld [bc], a
    ld d, a
    ld [bc], a
    ld bc, $0406
    ld a, h
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0271
    ld h, e
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld bc, $0407
    rst $20
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $028b
    ld a, l
    ld [bc], a
    adc e
    ld [bc], a
    ld bc, $0408
    sub [hl]
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $02a5
    sub a
    ld [bc], a
    and l
    ld [bc], a
    ld bc, $0409
    pop bc
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $04e2
    ld a, [de]
    nop
    ld h, l
    call $02ca
    cp h
    ld [bc], a
    jp z, $0102

    nop
    inc b
    push af
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $02e4
    sub $02
    db $e4
    ld [bc], a
    ld bc, $0401
    inc hl
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $02fe
    ldh a, [rSC]
    cp $02
    ld bc, $0402
    dec d
    inc hl
    ld h, [hl]
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0318
    ld a, [bc]
    inc bc
    jr jr_07d_4b40

    ld bc, $0403

jr_07d_4b40:
    ld de, $6623
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0332
    inc h
    inc bc
    ld [hl-], a
    inc bc
    ld bc, $0404
    db $76
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $034c
    ld a, $03
    ld c, h
    inc bc
    ld bc, $0405
    ret


    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0366
    ld e, b
    inc bc
    ld h, [hl]
    inc bc
    ld bc, $0406
    ld e, e
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $0380
    ld [hl], d
    inc bc
    add b
    inc bc
    ld bc, $0407
    call nz, Call_07d_6623
    call $1400
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $039a
    adc h
    inc bc
    sbc d
    inc bc
    ld bc, $0408
    cpl
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    ld a, [de]
    nop
    ld h, l
    call $03b4
    and [hl]
    inc bc
    or h
    inc bc
    ld bc, $0409
    db $d3
    inc hl
    ld h, [hl]
    call $1401
    dec c
    rlca
    cp c
    inc bc
    call $ff04
    rst $38
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, [hl]
    call $04ba
    push bc
    inc bc
    cp d
    inc b
    ld bc, $2e00
    inc d
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $04ef
    inc bc
    nop
    ld a, [de]
    nop
    ld h, l
    call $03ea
    rst $18
    inc bc
    ld [$0103], a
    nop
    ld a, [bc]
    ld l, a
    nop
    push af
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $0401
    or $03
    ld bc, HeaderLogo
    ld bc, $6f0a
    nop
    inc hl
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $0418
    dec c
    inc b
    jr jr_07d_4c44

    ld bc, $0a02
    ld l, a

jr_07d_4c44:
    nop
    dec d
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $042f
    inc h
    inc b
    cpl
    inc b
    ld bc, $0a03
    ld l, a
    nop
    ld e, h
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $0446
    dec sp
    inc b
    ld b, [hl]
    inc b
    ld bc, $0a04
    ld l, a
    nop
    xor a
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $045d
    ld d, d
    inc b
    ld e, l
    inc b
    ld bc, $0a05
    ld l, a
    nop
    add hl, hl
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $0474
    ld l, c
    inc b
    ld [hl], h
    inc b
    ld bc, $0a06
    ld l, a
    nop
    ld a, h
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $048b
    add b
    inc b
    adc e
    inc b
    ld bc, $0a07
    ld l, a
    nop
    call nz, $0703
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $04a2
    sub a
    inc b
    and d
    inc b
    ld bc, $0a08
    ld l, a
    nop
    sub [hl]
    inc bc
    rlca
    cpl
    ld bc, $06d9
    rst $38
    ld a, [de]
    nop
    ld h, l
    call $04b9
    xor [hl]
    inc b
    cp c
    inc b
    ld bc, $0a09
    ld l, a
    nop
    adc $03
    rlca
    cpl
    ld bc, $06d9
    rst $38
    rst $38
    ld l, $14
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $04f6
    inc bc
    add hl, de
    cpl
    ld bc, $0817
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $04fc
    rst $38
    push bc
    or a
    ld a, [hl+]
    or h
    jp z, $347f

    jp c, Jump_07d_50e6

    cp d
    ret


    ld a, a
    push bc
    or a
    ld a, [hl+]
    or h
    ld a, a
    inc sp
    cp l
    or [hl]
    and $50
    or c
    ret nz

    ret c

    rst $20
    rst $20
    rst $20
    ld d, b
    jp z, $da2d

    ld d, [hl]
    ld [hl], l
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    jp z, $347f

    jp c, Jump_07d_50e6

    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    adc h
    add c
    add a
    xor e
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    ld b, c
    xor h
    ld b, c
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    add h
    sub l
    adc h
    inc c
    and b
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    add hl, bc
    db $e3
    adc h
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    sub e
    ld [$e341], sp
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    inc c
    add hl, de
    xor h
    sub e
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    and [hl]
    db $e3
    dec bc
    xor [hl]
    and l
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    add e
    db $e3
    sbc e
    or b
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    sbc [hl]
    xor [hl]
    add d
    sub c
    db $e3
    ld d, b
    push bc
    or a
    ld a, [hl+]
    or h
    add a
    add c
    inc c
    ld a, a
    sbc b
    adc c
    xor h
    sub b
    ld d, b
    ld a, $06
    call $2fcb
    ld hl, $4dd3
    ld de, $a000
    ld bc, $1000
    call $3026
    call $2fe1
    ret


    nop
    and b
    call z, $c6dc
    rrca
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    ld b, e
    adc b
    and c
    xor e
    sub l
    xor [hl]
    db $e3
    adc h
    ld a, a
    cp a
    or e
    or [hl]
    sbc $2a
    or e
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld e, h
    nop
    ld h, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, h
    nop
    ld h, [hl]
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld l, b
    nop
    ld [hl], b
    nop
    ld a, e
    nop
    add e
    nop
    add a
    nop
    sub e
    nop
    sub a
    nop
    and e
    nop
    ld [de], a
    ld bc, $012b
    ld a, $01
    ld e, l
    ld bc, $0703
    rla
    rst $38
    inc bc
    ld b, $30
    rst $38
    ld c, $ff
    rrca
    rst $38
    sub l
    xor [hl]
    db $e3
    adc h
    dec b
    add c
    inc de
    ld d, b
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld b, e
    adc b
    and c
    xor e
    add l
    and [hl]
    sub e
    ld d, b
    call nc, $d9d2
    ld d, b
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_4e80

    ld bc, $00a5
    cpl
    rst $38
    ld bc, $0851
    rst $38
    inc hl
    ld h, a
    call $2300
    ld l, b
    call Boot
    ld l, h
    ld bc, $30ff
    rst $38
    nop
    ld d, h

jr_07d_4e80:
    sub l
    xor [hl]
    db $e3
    adc h
    ld a, a
    cp a
    or e
    or [hl]
    sbc $2a
    or e
    inc sp
    jp z, Jump_07d_5d4f

    and l
    xor e
    add [hl]
    xor e
    rlca
    call nz, $5455
    add l
    and [hl]
    sub e
    add a
    add c
    inc c
    inc sp
    ld d, l
    or l
    ret nz

    ret


    cp h
    ret nc

    ld a, a
    cp b
    jr nc, @-$43

    or d
    rst $20
    ld d, c
    or c
    push bc
    ret nz

    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp [hl]
    or d

Call_07d_4eb7:
    cp [hl]
    or a
    jp z, $a54f

    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $1f

Jump_07d_4ec6:
    cp l
    jp c, Jump_07d_553a

    push bc
    sbc $34
    inc sp
    db $d3
    ld a, a
    or [hl]
    or a
    or [hl]
    or h
    rst $10
    jp c, $c9d9

    inc sp

Jump_07d_4ed9:
    ld d, l
    ld h, $de
    ld a, [hl-]
    jp c, Jump_07d_7f3a

    sub e
    xor h
    ld b, d
    dec e
    push bc
    jp c, $b6d9

    db $d3

jr_07d_4ee9:
    rst $20
    ld d, a
    sub $d0
    cp d
    sbc $30
    ld a, a
    sub l
    xor [hl]
    db $e3
    adc h
    db $dd
    ld c, a
    or [hl]
    sbc $c0
    sbc $1d
    cp [hl]
    jp nz, $b2d2

    cp h
    rst $08
    cp l
    ld d, b
    ld sp, hl
    jp nz, $9225

    db $e3
    sbc l
    inc sp
    ld c, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    rra
    cp h
    rst $08
    cp l
    rst $20
    ld d, b
    cp d
    jp c, $33cf

    dec h
    ld a, $b3
    cp c
    sbc $1f
    inc [hl]
    cp d
    rst $08
    inc sp
    ld c, a
    or l
    db $d3
    or d
    jr nc, jr_07d_4ee9

    reti


    or [hl]
    ld a, a
    sub d
    adc h
    sub e
    cp h
    rst $08
    cp l
    rst $20
    ld d, b
    sub l
    xor [hl]
    db $e3
    adc h
    rra
    ret nc

    reti


    ret


    db $dd
    ld c, a
    call nc, $cfd2
    cp l
    ld d, b
    ld [de], a
    nop
    ld bc, $0e00
    inc d
    inc b
    ld [bc], a
    inc b
    ld bc, $0029
    dec d
    dec c
    ld a, [bc]
    ld h, a
    call $029c
    ret c

    ld [bc], a
    inc d
    inc bc
    ld d, b
    inc bc
    sub d
    inc bc
    rst $08
    inc bc
    ld [bc], a
    inc b
    ld c, c
    inc b
    adc d
    inc b
    call z, $5004
    ld [bc], a
    db $10
    inc b
    ld bc, $0204
    ld bc, $0000
    nop
    nop
    inc b
    ld h, b
    nop
    ld l, b
    nop
    rst $38
    rst $38
    ld l, b
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld l, [hl]
    nop
    ld [hl], d
    nop
    halt
    ld a, d
    nop
    ld a, [hl]
    nop
    inc sp
    ld bc, $01e8
    sub l
    ld [bc], a
    sbc e
    ld [bc], a
    sbc e
    ld [bc], a
    sbc e
    ld [bc], a
    sbc e
    ld [bc], a
    inc bc
    rlca
    rla
    rst $38
    db $10
    rst $38
    ld de, $03ff
    ld b, $01
    nop
    nop
    rst $38
    rst $30
    ld a, [hl-]
    sbc $50
    ld hl, sp+$3a
    sbc $50
    ld sp, hl
    ld a, [hl-]
    sbc $50
    call nc, $d9d2
    ld d, b
    inc h
    ld h, a
    call $1a01
    nop
    ld h, a
    call $0096
    adc [hl]
    nop
    sub [hl]
    nop
    ld bc, $2401
    ld l, b
    call $0101
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $00a6
    and d
    nop
    and [hl]
    nop
    ld bc, $0102
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $00ba
    or d
    nop
    cp d
    nop
    ld bc, $2403
    ld l, b
    call $0103
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $00ce
    add $00
    adc $00
    ld bc, $2404
    ld l, b
    call $0101
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $00de
    jp c, $de00

    nop
    ld bc, $0105
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $00ee
    ld [$ee00], a
    nop
    ld bc, $0106
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $00fe
    ld a, [$fe00]
    nop
    ld bc, $0107
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0112
    ld a, [bc]
    ld bc, $0112
    ld bc, $2408
    ld l, b
    call $0103
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0122
    ld e, $01
    ld [hl+], a
    ld bc, $0901
    ld bc, $016c
    rst $38
    ld a, [de]
    nop
    ld h, a
    call $0132
    ld l, $01
    ld [hl-], a
    ld bc, $0a01
    ld bc, $0671
    rst $38
    rst $38
    inc h
    ld h, a
    call $1a01
    nop
    ld h, a
    call HeaderCartridgeType
    ld b, e
    ld bc, HeaderCartridgeType
    ld bc, $0101
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0157
    ld d, e
    ld bc, $0157
    ld bc, $0102
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0167
    ld h, e
    ld bc, $0167
    ld bc, $0103
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0177
    ld [hl], e
    ld bc, $0177
    ld bc, HeaderLogo
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0187
    add e
    ld bc, $0187
    ld bc, $0105
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $019b
    sub e
    ld bc, $019b
    ld bc, $2406
    ld l, b
    call $0101
    ld l, h

Jump_07d_50de:
    ld bc, $1aff
    nop
    ld h, a
    call $01af

Jump_07d_50e6:
    and a
    ld bc, $01af
    ld bc, $2407
    ld l, b
    call $0102
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $01bf
    cp e
    ld bc, $01bf
    ld bc, $0108
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $01d3
    rlc c
    db $d3
    ld bc, $0901
    inc h
    ld l, b
    call $0102
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $01e7
    rst $18
    ld bc, $01e7
    ld bc, $240a
    ld l, b
    call $0102
    ld [hl], c
    ld b, $ff
    rst $38
    inc h
    ld h, a
    call $1a01
    nop
    ld h, a
    call $01fc
    ld hl, sp+$01
    db $fc
    ld bc, $0101
    ld bc, $016c
    rst $38
    ld a, [de]
    nop
    ld h, a
    call $0210
    ld [$1002], sp
    ld [bc], a
    ld bc, $2402
    ld l, b
    call $0102
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0220
    inc e
    ld [bc], a
    jr nz, @+$04

    ld bc, $0103
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0230
    inc l
    ld [bc], a
    jr nc, @+$04

    ld bc, HeaderLogo
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0244
    inc a
    ld [bc], a
    ld b, h
    ld [bc], a
    ld bc, $2405
    ld l, b
    call $0103
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0254
    ld d, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld bc, $0106
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0264
    ld h, b
    ld [bc], a
    ld h, h
    ld [bc], a
    ld bc, $0107
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0274
    ld [hl], b
    ld [bc], a
    ld [hl], h
    ld [bc], a
    ld bc, $0108
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0284
    add b
    ld [bc], a
    add h
    ld [bc], a
    ld bc, $0109
    ld l, h
    ld bc, $1aff
    nop
    ld h, a
    call $0294
    sub b
    ld [bc], a
    sub h
    ld [bc], a
    ld bc, $010a
    ld [hl], c
    ld b, $ff
    rst $38
    inc bc
    ld b, $01
    nop

Jump_07d_51de:
    nop
    rst $38
    ld d, b
    add d
    sub c
    ld b, $ca
    or [hl]
    cp [hl]
    ld c, d
    jp z, $d22c

    add $4e
    or h
    rst $10
    ld a, [hl-]
    cp [hl]
    jp $dab8


    ret nz

    ld a, a
    ld d, h
    ld c, [hl]
    rst $08
    sbc $c5
    or [hl]
    dec e
    or d
    ret nz

    ret


    jp z, $4ee6

    ld c, [hl]
    rst $30
    ld a, [c]
    xor c
    sub l
    sbc b
    adc c
    ld a, a
    ld a, a
    ld hl, sp-$0e
    sub b
    adc c
    ret c

    db $e3
    adc a
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    sbc d
    sbc b
    add b
    and l
    adc e
    ld c, [hl]
    ld d, b
    add d
    sub c
    ld b, $ca
    or [hl]
    cp [hl]
    dec h
    sub $ba
    add $4e
    or c
    reti


    ld a, a
    ld a, [hl+]
    ret nc

    ld a, [hl-]
    cp d
    add $4e
    jp z, $1eb2

    ld a, a
    or d
    reti


    ret


    jp z, $4ee6

    ld c, [hl]
    rst $30
    ld a, [c]
    ret nz

    dec a
    ret


    cp d
    cp h
    ld a, a
    ld hl, sp-$0e
    dec bc
    xor [hl]
    db $e3
    adc h
    ret


    dec sp
    sbc $4e
    ld sp, hl
    ld a, [c]
    or l
    or [hl]
    cp h
    ret


    call z, $dbb8
    ld c, [hl]
    ld d, b
    ld d, h
    dec h
    jp nz, $cfb6

    or h
    or [hl]
    ret nz

    db $dd
    ld c, [hl]
    or l
    cp h
    or h
    jp $b87f


    jp c, Jump_07d_4ed9

    or l
    add $b2
    cp e
    sbc $25
    ret c

    xor [hl]
    xor h
    add a
    add $4e
    or a
    dec l
    cp b
    cp l
    ret c

    inc h
    or d
    cp b
    jp nz, $4ee6

    rst $30
    ld a, [c]
    rst $30
    cp d
    ld a, a
    ld a, a
    ld a, a
    ld hl, sp-$0e
    ld hl, sp-$46
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    ld sp, hl
    cp d
    ld c, [hl]
    ld d, b
    or l
    or [hl]
    or c
    cp e
    sbc $c9
    ld c, [hl]
    call nz, $b2b8
    ld a, a
    ret c

    ld [c], a
    or e
    ret c

    jp z, Jump_07d_704e

    rlca
    and a
    xor e
    call z, Call_07d_7fb3
    or [hl]
    dec hl
    sbc $7f
    and $e6
    and $71
    ld c, [hl]
    ld [hl], b
    and $e6
    and $71
    inc h
    push bc
    add $e6
    ld c, [hl]
    rst $30
    ld a, [c]
    sbc c
    xor e
    add hl, de
    db $e3
    rlca
    ld a, a
    ld a, a
    ld hl, sp-$0e
    add l
    and a
    db $e3
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    call nc, $bfb7
    ld a, [hl-]
    ld c, [hl]
    ld d, b
    dec bc
    xor a
    add hl, de
    xor e
    sub l
    cp [hl]
    sbc $be
    or d
    jp z, $ca4e

    push bc
    cp h
    or [hl]
    cp c
    jp $d7b6


    ld c, [hl]
    inc l
    pop hl
    cp b
    dec e
    jp z, $d9b2

    rst $08
    inc sp

jr_07d_52f4:
    ld c, [hl]
    push bc
    sbc $b6
    or d
    ld a, a
    rst $08
    call c, $e6d9
    ld c, [hl]
    rst $30
    ld a, [c]

jr_07d_5301:
    ei
    or [hl]
    or d
    ld a, a
    ld a, a
    ld a, a
    ld hl, sp-$0e
    db $fc
    or [hl]
    or d
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    db $fd
    or [hl]
    or d
    ld c, [hl]
    ld d, b
    jp nz, $26c5

    ret c

    ret


    inc [hl]
    or e
    cp b
    jp nz, Jump_07d_4ec6

    or l
    pop bc
    jp $c5b2


    or d
    ld a, a
    inc [hl]
    or e
    jr z, jr_07d_52f4

    and $4e
    ld c, [hl]
    rst $30
    ld a, [c]
    ld b, d
    and l
    adc h
    ld b, b
    xor c
    db $e3
    ld a, a
    ld hl, sp-$0e
    rst $08
    set 0, l
    or l
    cp h
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    or a
    dec l
    jr z, jr_07d_5301

    ret c

    ld c, [hl]
    ld d, b
    add l
    and c
    sub a
    ld b, $1f
    jp nz, $cfb6

    or h
    reti


    call nz, Call_07d_4eb7
    or d
    pop bc
    ld a, [hl-]
    sbc $7f
    cp l
    cp b
    push bc
    or d
    ld a, a
    jp $2db6


    jp z, $c54e

    sbc $b6
    or d
    ld a, a
    add l
    and c
    sub a
    ld b, $c6
    ld c, [hl]
    jp z, $bcc5

    or [hl]
    cp c
    jp c, Jump_07d_7f3a

    or d
    or d
    and $4e
    rst $30
    ld a, [c]
    ld sp, hl
    or [hl]
    or d
    ld a, a
    ld a, a
    ld hl, sp-$0e
    ld a, [$b2b6]
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    ei
    or [hl]
    or d
    ld c, [hl]
    ld d, b
    and d
    inc de
    xor e
    ret


    or d
    inc [hl]
    add $4e
    and d

jr_07d_5397:
    inc de
    xor e
    rra
    ret nz

    cp l
    cp c
    dec e
    or d
    rst $18
    ret nz

    call nz, Call_07d_4eb7
    or d
    inc [hl]
    dec h
    push bc
    or [hl]
    dec e
    or d
    reti


    and d
    inc de
    xor e
    jp z, $c54e

    sbc $cb
    or a
    ld a, a
    jr nc, jr_07d_5397

    ret nz

    and $4e
    rst $30
    ld a, [c]
    ld hl, sp-$35
    or a
    ld a, a
    ld a, a
    ld hl, sp-$0e
    ld sp, hl
    res 6, a
    ld c, [hl]
    ld sp, hl
    ld a, [c]
    ld a, [$b7cb]
    ld c, [hl]
    ld d, b
    and h
    adc e
    sbc b
    adc e
    sub d
    or b
    dec e
    or d
    reti


    ld c, [hl]
    or c
    sbc $c5
    or d
    inc l
    or d
    cp e
    sbc $ca
    ld c, [hl]
    or e
    ret nc

    ld a, a
    rra
    push bc
    sbc $3a
    sbc $d2
    add $4e
    or c
    sbc $c5
    or d
    ld a, a
    cp h
    jp $dab8


    reti


    and $4e
    rst $30
    ld a, [c]
    ld sp, hl
    ld a, [hl-]
    sbc $d2
    ld a, a
    ld a, a
    ld hl, sp-$0e
    ld a, [$de3a]
    jp nc, $f94e

    ld a, [c]
    ei
    ld a, [hl-]
    sbc $d2
    ld c, [hl]
    ld d, b
    ld d, h
    inc l
    or d
    cp e
    sbc $25
    or d
    or h
    add $4e
    ld h, $b2
    cp d
    cp b
    dec h
    db $d3
    ret


    ld h, $4e
    or c
    reti


    cp c
    inc [hl]
    ld a, a
    cp d
    ret


    push bc
    or [hl]
    inc sp
    ld c, [hl]
    push bc
    or d
    ld a, a
    db $d3
    ret


    jp z, $4ee6

    rst $30
    ld a, [c]
    adc c
    add c
    xor e
    ld a, a
    ld a, a
    ld hl, sp-$0e
    or a
    ld e, $4e
    ld sp, hl
    ld a, [c]
    dec hl
    rst $18
    cp h
    ld c, [hl]
    ld d, b
    dec e
    nop
    ld bc, $0c00
    inc d
    ld b, $02
    inc b
    ld bc, $0000
    ld d, b
    inc b
    ld a, [bc]
    ld bc, $0001
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0035
    dec [hl]
    nop
    rst $38
    rst $38
    dec [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0119
    ld [de], a
    inc b
    nop
    ld b, a
    nop
    ld d, l
    nop
    cp d
    nop
    inc bc
    rlca
    add hl, de
    dec b
    ld bc, $0412
    dec bc
    ld l, $00
    ld a, [bc]
    rlca
    rla
    cpl
    ld bc, $0000
    rst $38
    add h
    db $e3
    add [hl]
    inc de
    jp z, $beb6

    ret


    ld a, a
    set 4, d
    or e
    or [hl]
    ld d, b
    ld a, [de]
    nop
    ld l, b
    call $0061
    ld h, c
    nop
    ld l, c
    nop
    ld bc, $1805
    add hl, de
    ld bc, $00d4
    inc bc
    sbc a
    rst $38
    ld a, [de]
    nop
    ld l, b
    call $0075
    ld [hl], l
    nop
    ld a, l
    nop
    ld bc, $180a
    add hl, de
    ld bc, $0115
    inc bc
    and b
    rst $38
    ld a, [de]
    nop
    ld l, b
    call $0089
    adc c
    nop
    sub c
    nop
    ld bc, $180f
    add hl, de
    ld bc, HeaderCartridgeType
    inc bc
    and c
    rst $38
    ld a, [de]
    nop
    ld l, b
    call $009d
    sbc l
    nop
    and l
    nop
    ld bc, $1813
    add hl, de
    ld bc, $018c
    inc bc
    and d
    rst $38
    ld a, [de]
    nop
    ld l, b
    call $00b1
    or c

jr_07d_54f6:
    nop
    cp c
    nop
    ld bc, $1814
    add hl, de
    ld bc, $01b3
    inc bc
    and e
    rst $38
    rst $38
    add a
    add c
    inc c
    ld a, a
    cp h
    pop hl
    or e
    ret c

    ld [c], a
    or e
    ld c, a
    set 4, d
    or e
    or [hl]
    rra
    or e
    cp c
    jp $b87f


    jr nc, @-$43

    or d
    rst $20
    ld d, b
    nop
    ld l, $de
    ld l, $de
    ld a, a
    rst $08
    jr nc, jr_07d_54f6

    jr nc, jr_07d_55a8

    inc l
    ldh [$c5], a
    ld c, a
    cp d
    jp c, $b524

    ld a, $b4
    jp $b8c5


    jp Jump_07d_7fd3


    or d

Jump_07d_553a:
    or d
    jr nc, @-$23

    or e
    ld d, l
    call nz, $b3b2
    sub $b3
    push bc
    ld a, a
    cp d
    call nz, $33cf
    ld a, a
    or l
    ld a, $b4
    reti


    ret


    ld h, $55
    ld d, h
    sbc l
    sub l
    add b
    call nz, $b27f
    or e
    db $d3
    ret


    inc l
    ldh [$57], a
    nop
    ld d, h
    sbc l
    sub l
    add b
    dec e
    cp h
    jp $cf24


    jr nc, @+$51

    inc e
    ret c

    xor [hl]
    db $e3
    sbc a
    ld c, d
    ret nz

    ret c

    sbc $e7
    ld d, c
    or d
    db $db
    or d
    db $db
    push bc
    ld a, a
    db $d3
    ret


    db $dd
    ld c, a
    pop de
    jr nc, @+$35

    db $d3
    ld a, a
    cp b
    rst $08
    push bc
    cp b

jr_07d_5589:
    ld a, a
    ret nc

    reti


    ret


    inc l
    ldh [$e7], a
    ld d, a
    nop
    call z, Call_07d_7fd1
    ld h, $de
    ld a, [hl-]
    ld e, $b5
    reti


    push bc

jr_07d_559c:
    ld c, a
    cp a
    jp c, $d8c5

    dec e
    ld d, h
    sbc l
    sub l
    add b
    ld d, l
    rst $10

jr_07d_55a8:
    cp h
    cp b
    ld a, a
    push bc
    ld e, $b7
    jp $d9b5


    sub $e7
    ld d, c
    call nz, $30d3
    pop bc
    call nz, $bf7f
    or e
    jr nc, jr_07d_559c

    ld a, a
    cp h
    jp $d9b2


    or [hl]
    push bc
    and $4f
    set 0, h
    ret c

    inc sp
    inc h
    ret nz

    or d
    call Call_07d_7fde
    jr nc, jr_07d_5589

    rst $10
    push bc
    ld d, a
    nop
    add e
    add a
    adc l
    and a
    xor e
    sub e
    inc l
    ldh [$e7], a
    ld c, a
    or a
    ret nc

    inc h
    inc l
    pop hl
    or e
    ld a, [hl-]
    cp d
    dec h
    cp l
    ret nc

    db $dd
    ld d, l
    jp nz, $b8c2

    ret


    ld c, d
    cp l
    or a
    ld a, a
    push bc
    sbc $2c
    ldh [$db], a
    and $57
    nop
    or l
    or l
    rst $18
    ld a, a
    push de
    jp nc, $cfc6

    inc sp
    ld a, a
    ret nc

    ret nz

    ld c, a
    ld b, b
    db $e3
    sbc e
    db $eb
    add a
    sub e
    push bc
    ld a, a
    ld d, h
    sbc l
    sub l
    add b
    ret


    ld d, l
    or [hl]
    sbc $be
    or d
    inc l
    ldh [$e7], a
    ld a, a
    ld d, [hl]
    ld a, a
    or l
    jp nc, $c433

    or e
    rst $20
    ld d, a
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld d, a
    nop
    ld e, e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    nop
    ld h, e
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, l
    nop
    ld l, a
    nop
    ld a, e
    nop
    add a
    nop
    adc e
    nop
    xor b
    nop
    add hl, hl
    ld bc, $0135
    ld a, $02
    ld d, b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    adc h
    ld [bc], a
    inc bc
    rlca
    rla
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    ld c, $ff
    rrca
    rst $38
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    rra
    ret nc

    reti


    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    dec h
    cp d
    or e
    cp h
    sbc $50
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    dec h
    cp [hl]
    jp nz, $b2d2

    ld d, b
    call nc, $d9d2
    ld d, b
    ld [hl+], a
    dec b
    ld [hl], e
    xor d
    inc c
    dec b
    ld a, a
    xor d
    sbc l
    nop
    sbc c
    nop
    sbc l
    nop
    ld bc, $0aec
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr @+$1b

    ld bc, $0214
    rst $38
    jr z, @+$1c

    nop
    ld l, [hl]
    call $00b5
    pop bc
    nop
    call Boot
    ld bc, $0519
    ld bc, $0412
    jr @+$1b

    ld bc, $00d9
    cpl
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_570b

    ld bc, $00ec
    cpl
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_5717

    ld bc, $00ff
    cpl
    rst $38
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d

jr_07d_570b:
    or e

jr_07d_570c:
    cp h
    sbc $dd
    ld c, a
    cp h
    rst $08
    cp h
    ret nz

    rst $20
    ld d, a
    nop

jr_07d_5717:
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $dd
    ld c, a
    call nc, $cfd2
    cp h
    ret nz

    ld d, a
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $c6
    ld c, a
    cp h
    rst $18
    ld b, h
    or d
    ld [hl], l
    ld d, c
    or c
    ret nz

    rst $10
    cp h
    or d
    ld a, a
    sub l
    xor [hl]
    db $e3
    adc h
    db $dd
    ld c, a
    sub $d0
    cp d
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_570c

    or d
    ld d, a
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_5773

    ld bc, $0139
    cpl
    rst $38
    ld bc, $0000
    rst $38
    nop
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l

jr_07d_5773:
    or e
    jp z, $fa4f

    or $3a
    sbc $34
    or e
    db $db
    dec h
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld d, l
    or c
    push bc
    ret nz

    ld c, d
    cp d
    jp c, $33cf

    dec e
    push bc
    sbc $c6
    sbc $c9
    ld d, l
    ld e, l
    call nz, $bc25
    ld [c], a
    or e
    inc a
    dec e
    or [hl]
    rst $18
    ret nz

    or [hl]
    ld d, l
    add $de
    dec l
    or e
    inc sp
    ld a, a
    or a
    cp a
    or d
    rst $08
    cp l
    ld d, c
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    jp z, $b24f

    or [hl]
    ret c

    ret


    ret nc

    dec l
    or e
    ret nc

    dec e
    or d
    reti


    ld d, l
    jp nz, $d2d8

    or d
    inc l
    sbc $1d
    jp z, $1eb6

    db $d3
    rst $10
    rst $18
    ret nz

    ld d, l
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or e
    pop bc
    ld a, a
    or d
    pop bc
    ld a, [hl-]
    sbc $55
    or l
    or l
    or a
    or [hl]
    rst $18
    ret nz

    ld a, a
    db $d3
    ret


    inc sp
    ld a, a
    or a
    cp a
    or d
    rst $08
    cp l
    ld d, c
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $ca
    ld c, a
    cp h
    ld l, $de
    cp d
    or e
    or h
    sbc $33
    ld a, a
    or l
    cp d
    push bc
    call c, $d9da
    ld d, l
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    inc sp
    ld a, a
    cp d
    jp c, $33cf

    add $55
    call nz, $c0df
    ld a, a
    or d
    pop bc
    ld a, [hl-]
    sbc $7f
    ret nz

    or [hl]
    or d
    ld d, l
    jp $bdde


    or e
    inc sp
    ld a, a
    or a
    cp a
    or d
    rst $08
    cp l
    ld d, a
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld [de], a
    db $e3
    adc a
    ld c, d
    or c
    ret c

    rst $08
    cp [hl]
    sbc $4f
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $1f
    cp l
    jp c, Jump_07d_553a

    ret nc

    reti


    cp d
    call nz, $334a
    or a
    rst $08
    cp l
    ld d, c
    ld d, a
    or d
    db $db
    or d
    db $db
    push bc
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld h, $4f
    ret nc

    jp c, $bdcf

    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    rra
    sub $d0
    cp d
    ret nc

    push bc
    or l
    cp h
    rst $08
    cp l
    ld c, a
    or c
    push bc
    ret nz

    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    db $d3
    ld a, a
    or [hl]
    call c, $cfd8
    cp l
    ld d, b
    cp d
    sbc $b6
    or d
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ret


    ld c, a
    sub d
    db $e3
    sbc l
    dec e
    jp nz, $c3b2

    ld a, a
    cp [hl]
    jp nz, $b2d2

    cp h
    rst $08
    cp l
    ld d, b
    cp e
    or d
    cp h
    ld [c], a
    dec h
    ld b, a
    db $e3
    dec bc
    dec e
    db $d3
    inc [hl]
    ret c

    rst $08
    cp l
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld d, a
    nop
    ld e, a
    nop
    rst $38
    rst $38
    ld e, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    nop
    ld e, l
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, l
    nop
    halt
    add [hl]
    nop
    sub l
    nop
    sbc c
    nop
    and l
    nop
    or c
    nop
    ld h, c
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    ld d, c
    ld [$19ff], sp
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c

jr_07d_5950:
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, d
    call $2300
    ld h, e
    call Boot
    cp [hl]
    dec bc
    rst $38
    inc hl
    ld h, d
    call $2303
    ld h, e
    call $0101
    cp [hl]
    dec bc
    rst $38
    inc hl
    ld h, d
    call $2306
    ld h, e
    call $0102
    cp [hl]
    dec bc
    rst $38
    ret nc

    ret nz

    or d
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_5950

    or d
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    dec d
    dec c
    inc bc
    ld h, e
    call $00c9
    jp c, $ea00

    nop
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld e, b
    nop
    xor a
    nop
    rst $38
    rst $38
    ld h, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    nop
    ld e, [hl]
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    ld a, [hl]
    nop
    adc e
    nop
    adc a
    nop
    sub a
    nop
    and e
    nop
    or c
    nop
    or l
    nop
    or l
    nop
    or l
    nop
    or l
    nop
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    ld d, c
    ld [$2eff], sp
    sbc $ba
    cp b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    dec d
    ld a, [bc]
    add b
    ld d, b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld h, b
    dec d
    dec bc
    add e

jr_07d_5a19:
    ld d, b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, h
    call Boot
    or a
    inc c
    rst $38
    inc h
    ld h, d
    call $2301
    ld h, h
    call $0101
    or a
    inc c
    rst $38
    inc h
    ld h, d
    call $2302
    ld h, h
    call $0102
    or a
    inc c
    rst $38
    inc bc
    ld b, $01
    db $ec
    ld a, [bc]
    rst $38
    ret nc

    ret nz

    or d
    ld a, a
    pop bc
    or d
    or a
    ld a, a
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_5a19

    or d
    ld d, b
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld [bc], a
    add hl, hl
    nop
    dec d
    dec c
    inc bc
    ld h, e
    call $02b6
    rst $00
    ld [bc], a
    rst $10
    ld [bc], a
    ld d, b
    ld h, [hl]
    nop
    dec d
    dec c
    inc bc
    ld h, h
    call $02e6
    di
    ld [bc], a
    nop
    inc bc
    ld d, b
    ld [bc], a
    rlca
    ld bc, $0003
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc bc
    ld [bc], a
    inc bc
    sub b
    nop
    sub h
    nop
    rst $38
    rst $38
    and e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    nop
    and c
    nop
    dec bc
    add hl, de
    ld bc, $0412
    ld bc, $00a9
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    push af
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld b, e
    ld bc, $029c
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    sbc h
    ld [bc], a
    inc bc
    rlca
    rla
    rst $38
    inc bc
    ld b, $27
    ld h, d
    call $cd64
    ld bc, $0bbe
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    ld d, c
    ld [$15ff], sp
    dec c
    inc bc
    ld h, e
    call $00b5
    jp z, $df00

    nop
    ld d, b
    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    or [hl]
    or d
    ld d, b
    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    jp Jump_07d_50de


    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    add d
    inc b
    dec b
    inc b
    ld a, [c]
    ld d, b
    adc l
    xor e
    sub b
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    ld d, b
    ld [hl+], a
    nop
    ld [hl+], a
    call $0001
    ld e, h
    call $010e
    inc hl
    ld bc, $0123

jr_07d_5b9e:
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $01c7
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $01e0
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $012e
    rst $38
    cp d
    cp d
    add $24
    jr nc, jr_07d_5b9e

    db $d3
    ld c, [hl]
    and l
    xor e
    add a
    add c
    xor e
    ld a, a
    cp h
    jp $becf


    sbc $51
    ld d, b
    ld [hl+], a
    nop
    ld e, b
    call $0004
    ld d, h
    call $0151
    ld d, c
    ld bc, $018e
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $01e7
    ld a, [de]
    nop
    ld e, b
    call $018d
    ld l, d
    ld bc, $018d
    inc b
    nop
    nop
    nop
    ld bc, $051a
    nop
    and b
    adc l
    ld bc, $0176
    adc l
    ld bc, $0001
    inc hl
    ld l, d
    call $0c01
    ld l, d
    call $a000
    dec b
    ld bc, $1900
    dec b
    ld bc, $0412
    jr jr_07d_5c32

    ld bc, $0199
    cpl
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $021e
    rst $38
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    inc sp
    ld a, a
    sub e

jr_07d_5c32:
    xor h
    ld b, d
    rra
    call nz, $c0df
    ld c, [hl]
    or c
    push bc
    ret nz

    add $75
    ld d, l
    cp l
    jp $c5b7


    ld a, a
    ld b, d
    and a
    dec c
    xor e
    sub e
    ld c, d
    or c
    ret c

    rst $08
    cp l
    ld d, l
    or l
    ret nz

    ret


    cp h
    ret nc

    add $e7
    ld d, a
    dec d
    ld b, $0b
    nop
    inc b
    ld bc, $000a
    ld bc, $0403
    nop
    nop
    ld d, b
    cp e
    or d
    ld a, a
    dec d
    inc b
    rlca
    nop
    rlca
    ld d, b
    ld d, c
    ld d, b
    dec d
    inc bc
    inc c
    nop
    ld d, b
    ld d, c
    ld d, b
    dec d
    dec c
    inc bc
    ld h, e
    call $024a
    ld h, l
    ld [bc], a
    add b
    ld [bc], a
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    jp z, $5175

    dec d
    rrca
    nop
    ld e, b
    call $0404
    inc b
    nop
    nop
    ld d, b
    ld a, a
    ld a, [hl-]
    sbc $7f
    dec e
    and l
    xor e
    add a
    add c
    xor e
    rst $20
    ld c, a
    or l
    jp nc, $c433

    or e
    rst $20
    ld d, c
    ld d, b
    dec d
    dec c
    inc bc
    ld h, e
    call $024a
    ld h, l
    ld [bc], a
    add b
    ld [bc], a
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    jp z, $5175

    and l
    xor e
    add a
    add c
    xor e
    ld a, a
    cp h
    push bc
    or [hl]
    rst $18
    ret nz

    ld [hl], l
    ld c, a
    dec hl
    sbc $c8
    sbc $75
    ld d, c
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    dec b
    inc d
    and b
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    or [hl]
    or d
    ld d, c
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    dec b
    ld a, a
    and b
    ld [bc], a
    dec b
    dec b
    nop
    nop
    ld d, b
    jp Jump_07d_51de


    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    dec b
    ld a, e
    and b
    add d
    inc b
    dec b
    inc b
    ld a, [c]
    ld d, b
    adc l
    xor e
    sub b
    ld d, c
    ld d, b
    or h
    rst $10
    sbc $30
    ld a, a
    set 0, h
    dec h
    ld b, d
    xor b
    sbc e
    or b
    db $e3
    and [hl]
    db $dd
    ld c, a
    ret nc

    reti


    cp d
    call nz, $334a
    or a
    rst $08
    cp l
    ld d, b
    add hl, de
    sub e
    and [hl]
    adc a
    xor c
    db $e3
    inc sp
    ld a, a
    or [hl]

Jump_07d_5d4f:
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    ld l, $de
    cp d
    cp b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    dec d
    ld a, [bc]
    add b
    ld d, b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    ld h, b
    dec d
    dec bc
    add e
    ld d, b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    inc b
    ld a, $06
    call $2fcb
    ld hl, $5db4
    ld de, $a000
    ld bc, $1000
    call $3026
    call $2fe1
    ret


    nop
    and b
    ld d, c
    daa
    or b
    dec b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld d, a
    nop
    ld e, e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    nop
    ld h, c
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, e
    nop
    ld l, l
    nop
    ld a, c
    nop
    add l
    nop
    adc c
    nop
    and [hl]
    nop
    or c
    nop
    or e
    nop
    inc e
    ld bc, $012e
    dec sp
    ld bc, $0152
    inc bc
    rlca
    rla
    rst $38
    inc bc
    ld b, $30
    rst $38
    ld c, $ff
    rrca
    rst $38
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    rra
    ret nc

    reti


    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    dec h
    cp [hl]
    jp nz, $b2d2

    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld a, a
    dec h
    cp d
    or e
    cp h
    sbc $50
    call nc, $d9d2
    ld d, b
    ld [hl+], a
    add l
    ld [hl], e
    xor d
    inc c
    add l
    ld a, a
    xor d
    sbc e
    nop
    sub a
    nop
    sbc e
    nop
    ld bc, $0161
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_5e75

    ld bc, $00f2
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    jr jr_07d_5e80

    ld bc, $00b5
    rst $38
    jr z, @+$01

    jr nc, @+$01

    nop
    ld sp, hl
    jp nz, $9225

    db $e3

jr_07d_5e75:
    sbc l
    inc sp
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    rst $20
    ld c, a
    or d

jr_07d_5e80:
    rst $08
    ld a, a
    or l
    cp b
    rst $18
    ret nz

    ld a, a
    and a
    ld b, e
    db $e3
    sub e
    ld a, a
    or [hl]
    rst $10
    db $d3
    ld d, l
    push bc
    add $b6
    ld c, d
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec e
    jp z, $dfb2

    jp $b255


    reti


    or [hl]
    db $d3
    ld a, a
    cp h
    jp c, $becf

    sbc $e7
    ld d, c
    ld d, a
    nop
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld [de], a
    db $e3
    adc a
    ld c, d
    or c
    ret c

    rst $08
    cp [hl]
    sbc $4f
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp d
    or e
    cp h
    sbc $1f
    cp l
    jp c, Jump_07d_553a

    ret nc

    reti


    cp d
    call nz, $334a
    or a
    rst $08
    cp l
    ld d, c
    ld d, a
    or d
    db $db
    or d
    db $db
    push bc
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld h, $4f
    ret nc

    jp c, $bdcf

    ld d, b
    and l
    xor e
    add [hl]
    xor e
    rlca
    dec h
    cp [hl]
    jp nz, $b2d2

    inc sp
    cp l
    ld d, b
    cp e
    or d
    cp h
    sbc $25
    and l
    xor e
    add [hl]
    xor e
    rlca
    db $dd
    ld c, a
    rrca
    add d
    xor e
    xor b
    db $e3
    inc de
    ld a, a
    cp h
    rst $08
    cp l
    ld d, b
    sub l
    xor [hl]
    db $e3
    adc h
    rra
    ret nc

    reti


    ret


    db $dd
    ld c, a
    call nc, $cfd2
    cp l
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    sub e
    and a
    db $e3
    sub h
    db $e3
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld d, a
    nop
    ld e, a
    nop
    rst $38
    rst $38
    ld e, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    nop
    ld e, l
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, l
    nop
    ld [hl], l
    nop
    add l
    nop
    sub h
    nop
    sbc b
    nop
    and h
    nop
    or b
    nop
    ld h, c
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    adc c
    xor b
    adc e
    add b
    sbc a
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c

jr_07d_5fa5:
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, d
    call $2300
    ld h, e
    call Boot
    ld [hl-], a
    ld [bc], a
    rst $38
    inc hl
    ld h, d
    call $2303
    ld h, e
    call $0101
    ld [hl-], a
    ld [bc], a
    rst $38
    inc hl
    ld h, d
    call $2306
    ld h, e
    call $0102
    ld [hl-], a
    ld [bc], a
    rst $38
    ret nc

    ret nz

    or d
    ld a, a
    and l
    xor e
    add [hl]
    xor e
    rlca
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_5fa5

    or d
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld bc, $0029
    dec d
    dec c
    inc bc
    ld h, e
    call $00ce
    sbc $00
    xor $00
    ld d, b
    ld [bc], a
    dec b
    ld bc, $0004
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc b
    ld [bc], a
    inc b
    ld e, b
    nop
    or h
    nop
    rst $38
    rst $38
    ld h, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    nop
    ld e, [hl]
    nop
    inc b
    add hl, de
    ld bc, $0412
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    add b
    nop
    sub b
    nop
    sub h
    nop
    sbc h
    nop
    xor b
    nop
    or [hl]
    nop
    cp d
    nop
    cp d
    nop
    cp d
    nop
    cp d
    nop
    inc bc
    rlca
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    ld l, $de
    cp d
    cp b
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    call nz, $b334
    call z, $deb9
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    push de
    or e
    dec sp
    sbc $3a
    sbc $2a

jr_07d_6073:
    or e
    ld a, a
    dec h
    and l
    xor e
    add [hl]
    xor e
    rlca
    ld d, b
    db $d3
    inc [hl]
    reti


    ld d, b
    inc hl
    ld h, h
    call Boot
    cpl
    inc bc
    rst $38
    inc h
    ld h, d
    call $2301
    ld h, h
    call $0101
    cpl
    inc bc
    rst $38
    inc h
    ld h, d
    call $2302
    ld h, h
    call $0102
    cpl
    inc bc
    rst $38
    inc bc
    ld b, $01
    ld h, c
    ld bc, $d0ff
    ret nz

    or d
    ld a, a
    pop bc
    or d
    or a
    ld a, a
    db $dd
    ld c, a
    or h
    rst $10
    sbc $33
    ld a, a
    cp b
    jr nc, jr_07d_6073

    or d
    ld d, b
    adc c
    xor b
    adc e
    add b
    sbc a
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    ld [hl-], a
    nop
    ld [bc], a
    nop
    inc bc
    inc d
    ld a, [bc]
    ld bc, $0003
    inc c
    inc d
    ld b, $02
    inc b
    ld [bc], a
    add hl, hl
    nop
    dec d
    dec c
    inc bc
    ld h, e
    call $0225
    dec [hl]
    ld [bc], a
    ld b, l
    ld [bc], a
    ld d, b
    ld h, [hl]
    nop
    dec d
    dec c
    inc bc
    ld h, h
    call $0254
    ld h, c
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld d, b
    ld [bc], a
    rlca
    ld bc, $0003
    ld [bc], a
    ld [de], a
    inc b
    rlca
    inc bc
    ld [bc], a
    inc bc
    sub b
    nop
    sub h
    nop
    rst $38
    rst $38
    and e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    nop
    and c
    nop
    dec bc
    add hl, de
    ld bc, $0412
    ld bc, $00a9
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    push af
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    dec d
    ld bc, $020e
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    ld c, $02
    inc bc
    rlca
    rla
    rst $38
    inc bc
    ld b, $27
    ld h, d
    call $cd64
    ld bc, $0232
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    ld b, $01
    nop
    nop
    rst $38
    dec d
    dec c
    inc bc
    ld h, e
    call $00b5
    jp z, $df00

    nop
    ld d, b
    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    inc bc
    inc b
    inc b
    nop
    nop
    ld d, b
    or [hl]
    or d
    ld d, b
    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    ld d, b
    jp Jump_07d_50de


    dec d
    ld [$0302], sp
    ld [bc], a
    nop
    nop
    ld b, $06
    ld bc, $0018
    add d
    inc b
    dec b
    inc b
    ld a, [c]
    ld d, b
    adc l
    xor e
    sub b
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    ld d, b
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $0139
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $0152
    rst $38
    ld [hl+], a
    nop
    ld e, b
    call $0004
    ld d, h
    call $0123
    inc hl
    ld bc, $012e
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $0159
    rst $38
    add hl, de
    dec b
    ld bc, $0412
    ld b, $19
    ld bc, $0190
    rst $38
    dec d
    ld b, $0b
    nop
    inc b
    ld bc, $000a
    ld bc, $0403
    nop
    nop
    ld d, b
    cp e
    or d
    ld a, a
    dec d
    inc b
    rlca
    nop
    rlca
    ld d, b
    ld d, c
    ld d, b
    dec d
    inc bc
    inc c
    nop
    ld d, b
    ld d, c
    ld d, b
    dec d
    dec c
    inc bc
    ld h, e
    call $01bc
    rst $10
    ld bc, $01f2
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    jp z, $5175

    dec d
    rrca
    nop
    ld e, b
    call $0404
    inc b
    nop
    nop
    ld d, b
    ld a, a
    ld a, [hl-]
    sbc $7f
    dec e
    and l
    xor e
    add a
    add c
    xor e
    rst $20
    ld c, a
    or l
    jp nc, $c433

    or e
    rst $20
    ld d, c
    ld d, b
    dec d
    dec c
    inc bc
    ld h, e
    call $01bc
    rst $10
    ld bc, $01f2
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    inc l
    pop hl
    sbc $b2
    jp z, $5175

    and l
    xor e
    add a
    add c
    xor e
    ld a, a
    cp h
    push bc
    or [hl]
    rst $18
    ret nz

    ld [hl], l
    ld c, a
    dec hl
    sbc $c8
    sbc $75
    ld d, c
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    add l
    ld h, e
    and b
    inc bc
    inc b
    inc b
    nop
    nop
    ld d, b
    or [hl]
    or d
    ld d, c
    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    add l
    ld a, a
    and b
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    ld d, b
    jp Jump_07d_51de


    ld d, b
    dec d
    add hl, bc
    nop
    ld d, b
    ld a, a
    dec h
    cp [hl]
    or d
    cp [hl]
    or a
    jp z, $154f

    rrca
    add l
    ld a, e
    and b
    add d
    inc b
    dec b
    inc b
    ld a, [c]
    ld d, b
    adc l
    xor e
    sub b
    ld d, c
    ld d, b
    or h
    rst $10
    sbc $30
    ld a, a
    set 0, h
    dec h
    ld [de], a
    db $e3
    adc a
    db $dd
    ld c, a
    ret nc

    reti


    cp d
    call nz, $334a
    or a
    rst $08
    cp l
    ld d, b
    adc c
    xor b
    adc e
    add b
    sbc a
    inc sp
    ld a, a
    or [hl]
    rst $18
    ret nz

    ld a, a
    or [hl]
    or d
    cp l
    or e
    ld d, b
    pop de
    cp h
    call nz, $c0d8
    or d
    or [hl]
    or d
    ld a, a
    cp d
    or e
    call nz, $c3b8
    sbc $50
    jp nz, $c0df

    ld a, a
    adc c
    add c
    add [hl]
    xor e
    rlca
    dec h
    or l
    or l
    or a
    cp e
    ld d, b
    ld l, $de
    cp d
    cp b
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    call nz, $b334
    call z, $deb9
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    push de
    or e
    dec sp
    sbc $3a
    sbc $2a
    or e
    ld a, a
    dec h
    sub e
    xor h
    ld b, d
    rst $30
    or $e7
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_6623:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07d_704e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07d_7f3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_7fb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_7fd1:
    nop
    nop

Jump_07d_7fd3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_07d_7fde:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
