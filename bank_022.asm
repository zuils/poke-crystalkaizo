; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

Call_022_4000:
    ld hl, $4007
    call $1057
    ret


    ld d, $6b
    ld b, b
    ld l, a
    ld d, b

Call_022_400c:
    ld hl, $4013
    call $1057
    ret


    ld d, $89
    ld b, b
    ld l, a
    ld d, b
    call $1d6e
    ld c, $01
    xor a
    ld [$d0e4], a
    ld [$dca4], a

jr_022_4024:
    push bc
    call Call_022_4000
    pop bc
    ld a, c
    ld [$cf74], a
    call Call_022_4055
    ld a, c
    ld [$c2dd], a
    and a
    jr z, jr_022_4051

    ld [$d106], a
    ld a, [$cfa9]
    ld c, a
    push bc
    call Call_022_400c
    call Call_022_40c2
    pop bc
    jr nc, jr_022_4024

    ld a, [$d10c]
    ld [$dca4], a
    call Call_022_4161

jr_022_4051:
    call $1d7d
    ret


Call_022_4055:
    ld a, $09
    ld hl, $4c64
    rst $08
    jr c, jr_022_4083

    ld hl, $4086
    call $1d3c
    ld a, [$cf74]
    ld [$cf88], a
    xor a
    ldh [$d4], a
    call $352f
    call $1ad2
    call $350c
    ld a, [$cf73]
    cp $02
    jr z, jr_022_4083

    ld a, [$cf74]
    cp $ff
    jr nz, jr_022_4084

jr_022_4083:
    xor a

jr_022_4084:
    ld c, a
    ret


    ld b, b
    ld bc, $0a01
    dec c
    adc a
    ld b, b
    ld bc, $1000
    inc b
    rlca
    ld bc, $ea00
    pop de
    ld [hl+], a
    sbc a
    ld b, b
    ld [hl+], a
    xor e
    ld b, b
    nop
    nop
    nop
    ld a, [$cf74]
    and a
    ret z

    ld a, $09
    ld hl, $4ab4
    rst $08
    ret


    ld a, [$cf74]
    ld [$d106], a
    call Call_022_4139
    ret z

    ld a, [$d10c]
    ld [$cf75], a
    ld a, $09
    ld hl, $4ac3
    rst $08
    ret


Call_022_40c2:
    ld a, [$d106]
    ld [$cf74], a
    call Call_022_4139
    jr z, jr_022_4109

    ld a, [$d10c]
    ld [$d10d], a
    ld a, $01
    ld [$d10c], a
    ld hl, $410d
    call $1d35

jr_022_40de:
    xor a
    ldh [$d4], a
    call $1cbb
    call $1ad2
    call Call_022_4116
    call Call_022_4126
    call $321c
    ld a, $09
    ld hl, $7a28
    rst $08
    jr nc, jr_022_40de

    push bc
    call $2009
    pop bc
    ld a, b
    cp $ff
    jr z, jr_022_4109

    ld a, [$d10c]
    ld [$d10c], a
    scf

jr_022_4109:
    call $1c17
    ret


    ld b, b
    add hl, bc
    ld b, $0c
    inc de
    nop
    nop
    rst $38
    nop

Call_022_4116:
    call $1cfd
    ld de, $0015
    add hl, de
    ld d, h
    ld e, l
    ld a, $09
    ld hl, $4ab4
    rst $08
    ret


Call_022_4126:
    call $1cfd
    ld de, $0032
    add hl, de
    ld [hl], $f1
    inc hl
    ld de, $d10c
    ld bc, $8102
    jp $3198


Call_022_4139:
    push bc
    ld hl, $d892
    ld a, [$d106]
    ld c, a
    ld b, $00

jr_022_4143:
    inc hl
    ld a, [hl+]
    cp $ff
    jr z, jr_022_4153

    cp c
    jr nz, jr_022_4143

    ld a, [hl]
    add b
    ld b, a
    jr nc, jr_022_4143

    ld b, $ff

jr_022_4153:
    ld a, b
    sub $63
    jr c, jr_022_415a

    ld b, $63

jr_022_415a:
    ld a, b
    ld [$d10c], a
    and a
    pop bc
    ret


Call_022_4161:
    push de
    push bc
    ld hl, $d892
    ld a, [$d106]
    ld c, a
    ld e, $00
    xor a
    ld [$d107], a
    ld a, $ff
    ld [$d002], a

jr_022_4175:
    ld a, [$d107]
    inc a
    ld [$d107], a
    inc hl
    ld a, [hl+]
    cp $ff
    jr z, jr_022_4198

    cp c
    jr nz, jr_022_4175

    ld d, $00
    push hl
    ld hl, $d002
    add hl, de
    inc e
    ld a, [$d107]
    dec a
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    pop hl
    jr jr_022_4175

jr_022_4198:
    ld a, e
    and a
    jr z, jr_022_41fa

    dec a
    jr z, jr_022_41d0

    ld hl, $d002

jr_022_41a2:
    ld a, [hl]
    ld c, a
    push hl

jr_022_41a5:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_022_41c9

    ld b, a
    ld a, c
    call Call_022_4201
    ld e, a
    ld a, b
    call Call_022_4201
    sub e
    jr z, jr_022_41bc

    jr c, jr_022_41c0

    jr jr_022_41a5

jr_022_41bc:
    ld a, c
    sub b
    jr nc, jr_022_41a5

jr_022_41c0:
    ld a, c
    ld c, b
    ld [hl], a
    ld a, c
    pop hl
    ld [hl], a
    push hl
    jr jr_022_41a5

jr_022_41c9:
    pop hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_022_41a2

jr_022_41d0:
    ld hl, $d002

jr_022_41d3:
    ld a, [hl]
    cp $ff
    jr z, jr_022_41fa

    push hl
    ld [$d107], a
    call Call_022_4211
    pop hl
    ld a, [$d10c]
    and a
    jr z, jr_022_41fa

    push hl
    ld a, [hl+]
    ld c, a

jr_022_41e9:
    ld a, [hl+]
    cp $ff
    jr z, jr_022_41f6

    cp c
    jr c, jr_022_41e9

    dec a
    dec hl
    ld [hl+], a
    jr jr_022_41e9

jr_022_41f6:
    pop hl
    inc hl
    jr jr_022_41d3

jr_022_41fa:
    ld a, [$d10c]
    and a
    pop bc
    pop de
    ret


Call_022_4201:
    push hl
    push bc
    ld hl, $d892
    inc hl
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    inc hl
    ld a, [hl]
    pop bc
    pop hl
    ret


Call_022_4211:
    push bc
    ld hl, $d892
    ld a, [$d107]
    ld c, a
    ld b, $00
    inc hl
    add hl, bc
    add hl, bc
    ld a, [$d106]
    ld c, a
    ld a, [hl+]
    cp $ff
    jr z, jr_022_4243

    cp c
    jr nz, jr_022_4243

    ld a, [$d10c]
    ld c, a
    ld a, [hl]
    sub c
    ld b, c
    jr nc, jr_022_4235

    add c
    ld b, a

jr_022_4235:
    push bc
    ld hl, $d892
    ld a, b
    ld [$d10c], a
    call $2f53
    pop bc
    ld a, c
    sub b

jr_022_4243:
    ld [$d10c], a
    pop bc
    ret


    ld c, $0c
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_4253

    ld c, $0e

jr_022_4253:
    ld a, c
    ld [$d233], a
    ret


    ld hl, $c4f6
    ld de, $0001
    jr jr_022_4266

    ld hl, $c4fd
    ld de, $ffff

jr_022_4266:
    ld c, $08

jr_022_4268:
    push bc
    push hl
    push de
    xor a
    ldh [$d4], a
    ld bc, $0707
    ld a, $13
    call $2d83
    xor a
    ldh [$d5], a
    call $31f6
    call $045a
    pop de
    pop hl
    add hl, de
    pop bc
    dec c
    ret z

    push hl
    push bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld bc, $0707
    call $0fb6
    pop bc
    pop hl
    jr jr_022_4268

    ld hl, $42b5
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_42a4

    ld hl, $42e5

jr_022_42a4:
    call $1d35
    call $1d81
    ld a, [$cfa9]
    dec a
    call $1db8
    call $1c17
    ret


    ld b, b
    nop
    nop
    dec bc
    ld a, [bc]
    cp [hl]
    ld b, d
    ld bc, $9100
    dec b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld d, b
    add d
    add a
    sub c
    adc b
    sub d
    ld d, b
    adc h
    add b
    sub e
    ld d, b
    add b
    adc e
    adc e
    add b
    adc l
    ld d, b
    adc c
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    ld a, a
    adc l
    add b
    adc h
    add h
    ld a, a
    ld d, b
    ld b, b
    nop
    nop
    dec bc
    ld a, [bc]
    xor $42
    ld bc, $9100
    dec b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld d, b
    adc d
    sub c
    adc b
    sub d
    ld d, b
    add b
    adc h
    add b
    adc l
    add e
    add b
    ld d, b
    adc c
    sub h
    add b
    adc l
    add b
    ld d, b
    adc c
    adc [hl]
    add e
    adc b
    ld d, b
    ld [bc], a
    ld a, a
    adc l
    add b
    adc h
    add h
    ld a, a
    ld d, b
    ld hl, $d47d
    ld de, $42c9
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_4328

    ld de, $42f9

jr_022_4328:
    call $2ef9
    ret


    ld de, $4000
    ld b, $30
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_433d

    ld de, $7a40
    ld b, $31

jr_022_433d:
    ret


    ld hl, $4365
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_434b

    ld hl, $4595

jr_022_434b:
    ld de, $9000
    ld bc, $0230
    ld a, $22
    call $0e8d
    ld hl, $47c5
    ld de, $9230
    ld bc, $0060
    ld a, $22
    call $0e8d
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
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc bc
    ld bc, $0703
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0302
    nop
    inc bc
    dec b
    rlca
    inc bc
    inc bc
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
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    add hl, bc
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_022_444a

    ld b, c
    ld a, a
    add c
    rst $38
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, $04
    inc e
    dec b
    dec a
    add hl, bc
    ld sp, hl
    ret z

    ld hl, sp-$10
    ld sp, $c141
    add c
    add c
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    inc b
    inc b
    rlca
    ld [$0b0b], sp
    dec bc
    ld b, $07
    inc bc
    rlca
    ld [$0808], sp
    ld [$0703], sp
    nop
    nop
    rlca
    rrca
    db $10

jr_022_444a:
    jr nc, jr_022_448c

    ld b, b
    add b
    add b
    add b
    add b
    xor $ef
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    cp $ef
    rst $38
    rst $18
    and $9f
    ret nc

    ld e, e
    ld d, b
    ld b, e
    ld b, b
    ld b, e

jr_022_4464:
    ld h, h
    cpl
    inc sp
    dec de
    inc e
    ld l, a
    ld l, a
    rst $00
    push bc
    ld b, e
    rst $00
    ld [hl+], a
    ld [c], a
    sbc b
    db $fd
    add b
    db $fd
    add e
    cp $86
    db $fd
    add l
    cp $83
    add $81
    pop bc
    add b
    add b
    or b
    ldh a, [$b0]
    ldh a, [rP1]
    add b
    ldh [$fc], a
    rst $38
    rst $38
    ret nz

jr_022_448c:
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add c
    add c
    ld bc, $0181
    ld bc, $0202
    ld [bc], a
    add d
    or d
    ld [hl], d
    call z, $e02c
    jr nz, jr_022_4464

    jr nz, @+$42

    ret nz

    nop
    and b
    and b
    and b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    ret nz

    ldh a, [$38]
    ld hl, sp+$1c
    inc a
    inc c
    ld e, $0e
    ld c, $0e
    ld c, $0f
    rrca
    rrca
    rra
    rra
    ccf
    cp a
    rst $38
    sbc [hl]
    ld l, [hl]
    sbc [hl]
    xor d
    sub [hl]
    xor d
    or $0a
    db $ec
    inc e
    ret nc

    jr nc, jr_022_4518

    ret nz

    or b
    or b
    adc h
    adc h
    inc de
    rra
    ld [hl+], a
    ccf
    call nz, $04ff
    rst $38
    add sp, $7f
    or $37
    pop hl
    inc de
    ld h, b
    sub e
    ldh a, [$1f]
    ldh [rIE], a
    inc a
    ccf
    ld l, a
    ld a, a
    ld l, h
    ld a, h
    inc b
    inc b
    db $ec
    db $fc
    inc [hl]
    adc h
    inc b
    call nz, $8682
    add d
    add [hl]
    ld bc, $0101
    ld bc, $8001
    add c
    add c
    add e
    add [hl]
    ld h, a
    ld a, b
    rra
    db $10
    rrca
    ld de, $0907
    ld [$100f], sp

jr_022_4518:
    ld d, $1b
    dec de
    rra
    rra
    inc de
    rla
    inc c
    inc c
    inc bc
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
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a

jr_022_4537:
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_022_4537

    db $10
    ldh a, [$88]
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_022_456b:
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_022_456b

    ret nc

    ldh a, [rNR10]
    sub b
    db $10
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $7979
    add a
    rst $28
    ld b, b
    ld a, a
    add b
    rst $30
    ld h, b
    ld a, a
    jr @+$21

    rlca
    rlca
    jr c, jr_022_4665

    ld e, h
    ld b, h
    adc l
    sub l
    or [hl]
    adc [hl]
    ret c

    xor h
    ld a, b
    ld sp, hl
    pop af
    db $fd
    or c
    or l
    ld b, b
    ld c, h
    ld b, c
    ld a, c
    ld h, $26
    jr @+$1a

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
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4665:
    ld bc, $0101
    ld bc, $0302
    dec b
    rlca
    ld [$0809], sp
    ld [$0707], sp
    nop
    nop
    nop
    nop
    rlca
    rrca
    jr nc, jr_022_46ab

    ld a, h
    ld b, b
    rst $30
    ld hl, sp+$21
    rst $38
    ld h, e
    rst $38
    rst $30
    sbc c
    rst $38
    add c
    ld a, [hl]
    add c
    cp l
    ld b, d
    ld e, $a1
    ccf
    and c
    or a
    and c
    add a
    add b
    adc [hl]
    ret


    ld e, c
    and $b6
    cp c
    rrca
    rra
    daa
    daa
    push bc
    rst $08
    dec bc
    ld c, a
    dec c
    xor a
    xor d
    xor [hl]
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a

jr_022_46ab:
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, [hl]
    ld a, a
    add b
    sub b
    add b
    sub b
    add b
    sub b
    ld b, b
    db $10
    jr nc, jr_022_46d3

    ld [$0408], sp
    inc c
    inc c
    inc c
    inc c
    adc h
    ei
    ei
    ld a, e
    ei
    ld sp, hl
    add hl, bc
    ld hl, sp+$09
    ld hl, sp-$7c
    db $fc
    add h
    cp h
    add h
    cp b
    adc b

jr_022_46d3:
    cp b
    adc b

jr_022_46d5:
    nop
    ld a, b
    inc b
    inc b
    ld h, h
    db $e4
    ld hl, sp-$08
    ret z

    ret z

    ld [hl], b
    ld [hl], b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld h, b
    db $10
    db $10
    ret z

    ret z

    jr nz, jr_022_46d5

    inc d
    ld [hl], h
    db $10
    ld a, [c]
    ld [hl+], a
    ld a, [$bae2]
    ld [c], a
    ld a, [hl-]
    ccf
    ld d, a
    ld l, $53
    inc l
    ld d, a
    db $ec
    rra
    db $f4
    ccf
    ret nc

    ld e, a
    sbc $df
    cp e
    xor c
    ld h, c
    db $76
    ld [hl], $31
    inc de
    ld e, h
    rra
    sub c

jr_022_4713:
    ld c, $0e
    inc c
    ld c, h
    ld c, b
    ld c, c
    jr nz, jr_022_4742

    sub h
    rst $10
    sub b
    sub h
    adc b
    adc h
    add a
    rst $00
    ld b, b
    ret nz

    ld b, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_022_475d

    db $10
    jr nc, jr_022_4740

    db $10
    jr nc, jr_022_47a3

    ldh a, [$f0]
    ldh a, [$d0]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    cp b
    add h
    inc e

jr_022_4740:
    add h
    ld e, h

jr_022_4742:
    ld b, h
    ld e, h
    ld b, h
    ld b, h
    ld a, h
    ld [bc], a
    add d
    cp d
    cp d
    ld c, h
    ld a, h
    ld a, b
    ld a, h
    ld h, d
    ld h, d

jr_022_4751:
    ld b, d
    ld b, d
    jr c, jr_022_4791

jr_022_4755:
    nop
    nop

jr_022_4757:
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_475d:
    nop
    nop
    nop
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
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_022_4751

    jr nz, jr_022_4713

    jr nz, jr_022_4755

    jr nz, jr_022_4757

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_022_47ad

    jr nz, jr_022_47af

    ld b, b
    ld b, b

jr_022_4791:
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_47a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_47ad:
    nop
    nop

jr_022_47af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rSVBK]
    adc b
    ld [hl], b
    adc h
    ld [hl], b
    adc [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
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
    ld e, h
    ld e, h
    ld d, d
    ld d, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, [hl]
    ld e, h
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub a
    push de
    push de
    or l
    or l
    sub d
    sub a
    nop
    nop
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_4830

    call Call_022_4ec9
    ret


jr_022_4830:
    ld hl, $7a1a
    ld b, $0a
    ld de, $9310
    ld c, $31
    ld a, $40
    call $2d83
    ret


    call $31f6
    xor a
    ldh [$d4], a
    ld e, $00
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_4851

    ld e, $01

jr_022_4851:
    ld a, e
    ld [$d233], a
    ld de, $48a9
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_4862

    ld de, $4bb9

jr_022_4862:
    ld hl, $9000
    ld b, $22
    ld c, $31
    call $0f82
    call $31f6
    ld a, $01
    ldh [$d4], a
    ret


    ld e, $00
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_487f

    ld e, $01

jr_022_487f:
    ld a, e
    ld [$d233], a
    ld de, $48a9
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_4890

    ld de, $4bb9

jr_022_4890:
    ld hl, $9000
    ld b, $22
    ld c, $31
    call $0f82
    xor a
    ldh [$ad], a
    ld hl, $c4f6
    ld bc, $0707
    ld a, $13
    call $2d83
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
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc bc
    ld bc, $0703
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0302
    nop
    inc bc
    dec b
    rlca
    inc bc
    inc bc
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
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    add hl, bc
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_022_49fe

    ld b, c
    ld a, a
    add c
    rst $38
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, $04
    inc e
    dec b
    dec a
    add hl, bc
    ld sp, hl
    ret z

    ld hl, sp-$10
    ld sp, $c141
    add c
    add c
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    inc b
    inc b
    rlca
    ld [$0b0b], sp
    dec bc
    ld b, $07
    inc bc
    rlca
    ld [$0808], sp
    ld [$0703], sp
    nop
    nop
    rlca
    rrca
    db $10

jr_022_49fe:
    jr nc, jr_022_4a40

    ld b, b
    add b
    add b
    add b
    add b
    xor $ef
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    cp $ef
    rst $38
    rst $18
    and $9f
    ret nc

    ld e, e
    ld d, b
    ld b, e
    ld b, b
    ld b, e

jr_022_4a18:
    ld h, h
    cpl
    inc sp
    dec de
    inc e
    ld l, a
    ld l, a
    rst $00
    push bc
    ld b, e
    rst $00
    ld [hl+], a
    ld [c], a
    sbc b
    db $fd
    add b
    db $fd
    add e
    cp $86
    db $fd
    add l
    cp $83
    add $81
    pop bc
    add b
    add b
    or b
    ldh a, [$b0]
    ldh a, [rP1]
    add b
    ldh [$fc], a
    rst $38
    rst $38
    ret nz

jr_022_4a40:
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add c
    add c
    ld bc, $0181
    ld bc, $0202
    ld [bc], a
    add d
    or d
    ld [hl], d
    call z, $e02c
    jr nz, jr_022_4a18

    jr nz, @+$42

    ret nz

    nop
    and b
    and b
    and b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    ret nz

    ldh a, [$38]
    ld hl, sp+$1c
    inc a
    inc c
    ld e, $0e
    ld c, $0e
    ld c, $0f
    rrca
    rrca
    rra
    rra
    ccf
    cp a
    rst $38
    sbc [hl]
    ld l, [hl]
    sbc [hl]
    xor d
    sub [hl]
    xor d
    or $0a
    db $ec
    inc e
    ret nc

    jr nc, jr_022_4acc

    ret nz

    or b
    or b
    adc h
    adc h
    inc de
    rra
    ld [hl+], a
    ccf
    call nz, $04ff
    rst $38
    add sp, $7f
    or $37
    pop hl
    inc de
    ld h, b
    sub e
    ldh a, [$1f]
    ldh [rIE], a
    inc a
    ccf
    ld l, a
    ld a, a
    ld l, h
    ld a, h
    inc b
    inc b
    db $ec
    db $fc
    inc [hl]
    adc h
    inc b
    call nz, $8682
    add d
    add [hl]
    ld bc, $0101
    ld bc, $8001
    add c
    add c
    add e
    add [hl]
    ld h, a
    ld a, b
    rra
    db $10
    rrca
    ld de, $0907
    ld [$100f], sp

jr_022_4acc:
    ld d, $1b
    dec de
    rra
    rra
    inc de
    rla
    inc c
    inc c
    inc bc
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
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a

jr_022_4aeb:
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_022_4aeb

    db $10
    ldh a, [$88]
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4b1f:
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_022_4b1f

    ret nc

    ldh a, [rNR10]
    sub b
    db $10
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $7979
    add a
    rst $28
    ld b, b
    ld a, a
    add b
    rst $30
    ld h, b
    ld a, a
    jr @+$21

    rlca
    rlca
    jr c, jr_022_4cf9

    ld e, h
    ld b, h
    adc l
    sub l
    or [hl]
    adc [hl]
    ret c

    xor h
    ld a, b
    ld sp, hl
    pop af
    db $fd
    or c
    or l
    ld b, b
    ld c, h
    ld b, c
    ld a, c
    ld h, $26
    jr @+$1a

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
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4cf9:
    ld bc, $0101
    ld bc, $0302
    dec b
    rlca
    ld [$0809], sp
    ld [$0707], sp
    nop
    nop
    nop
    nop
    rlca
    rrca
    jr nc, jr_022_4d3f

    ld a, h
    ld b, b
    rst $30
    ld hl, sp+$21
    rst $38
    ld h, e
    rst $38
    rst $30
    sbc c
    rst $38
    add c
    ld a, [hl]
    add c
    cp l
    ld b, d
    ld e, $a1
    ccf
    and c
    or a
    and c
    add a
    add b
    adc [hl]
    ret


    ld e, c
    and $b6
    cp c
    rrca
    rra
    daa
    daa
    push bc
    rst $08
    dec bc
    ld c, a
    dec c
    xor a
    xor d
    xor [hl]
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a

jr_022_4d3f:
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, [hl]
    ld a, a
    add b
    sub b
    add b
    sub b
    add b
    sub b
    ld b, b
    db $10
    jr nc, jr_022_4d67

    ld [$0408], sp
    inc c
    inc c
    inc c
    inc c
    adc h
    ei
    ei
    ld a, e
    ei
    ld sp, hl
    add hl, bc
    ld hl, sp+$09
    ld hl, sp-$7c
    db $fc
    add h
    cp h
    add h
    cp b
    adc b

jr_022_4d67:
    cp b
    adc b

jr_022_4d69:
    nop
    ld a, b
    inc b
    inc b
    ld h, h
    db $e4
    ld hl, sp-$08
    ret z

    ret z

    ld [hl], b
    ld [hl], b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld h, b
    db $10
    db $10
    ret z

    ret z

    jr nz, jr_022_4d69

    inc d
    ld [hl], h
    db $10
    ld a, [c]
    ld [hl+], a
    ld a, [$bae2]
    ld [c], a
    ld a, [hl-]
    ccf
    ld d, a
    ld l, $53
    inc l
    ld d, a
    db $ec
    rra
    db $f4
    ccf
    ret nc

    ld e, a
    sbc $df
    cp e
    xor c
    ld h, c
    db $76
    ld [hl], $31
    inc de
    ld e, h
    rra
    sub c

jr_022_4da7:
    ld c, $0e
    inc c
    ld c, h
    ld c, b
    ld c, c
    jr nz, jr_022_4dd6

    sub h
    rst $10
    sub b
    sub h
    adc b
    adc h
    add a
    rst $00
    ld b, b
    ret nz

    ld b, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_022_4df1

    db $10
    jr nc, jr_022_4dd4

    db $10
    jr nc, jr_022_4e37

    ldh a, [$f0]
    ldh a, [$d0]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    cp b
    add h
    inc e

jr_022_4dd4:
    add h
    ld e, h

jr_022_4dd6:
    ld b, h
    ld e, h
    ld b, h
    ld b, h
    ld a, h
    ld [bc], a
    add d
    cp d
    cp d
    ld c, h
    ld a, h
    ld a, b
    ld a, h
    ld h, d
    ld h, d

jr_022_4de5:
    ld b, d
    ld b, d
    jr c, jr_022_4e25

jr_022_4de9:
    nop
    nop

jr_022_4deb:
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4df1:
    nop
    nop
    nop
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
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_022_4de5

    jr nz, jr_022_4da7

    jr nz, jr_022_4de9

    jr nz, jr_022_4deb

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_022_4e41

    jr nz, jr_022_4e43

    ld b, b
    ld b, b

jr_022_4e25:
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4e37:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4e41:
    nop
    nop

jr_022_4e43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_4ec9:
    ld de, $4ed6
    ld hl, $9310
    ld bc, $2231
    call $0f82
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0701
    rlca
    add hl, de
    rra
    ld h, e
    ld a, a
    adc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    dec e
    rra
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
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $1a
    jr jr_022_4f5a

    jr nc, jr_022_4f37

jr_022_4f37:
    nop
    nop
    nop
    nop
    ld bc, $0603
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_022_4f84

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    cpl
    add b
    sbc a
    ret nz

    add b
    cp a
    rst $10
    ret nz

jr_022_4f5a:
    ld l, d
    ldh [$7f], a
    ld a, a
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rra
    rst $38
    sbc a
    cp a
    rst $08
    rst $18
    rst $28
    db $fd
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ld e, c
    ld sp, hl
    db $e3
    db $e3
    inc bc
    ld [bc], a
    inc b
    rlca
    jr jr_022_4f94

    ld h, b
    ld h, b
    add a
    rst $00
    sbc b
    ld e, b
    jr nz, jr_022_4fe4

jr_022_4f84:
    ret nz

    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    jr nz, jr_022_4f8c

jr_022_4f8c:
    nop
    ld b, b
    nop
    add b
    ld b, b
    nop
    add b
    nop

jr_022_4f94:
    ld b, b
    nop
    nop
    nop
    inc a
    ld a, $ff
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    di
    inc c
    adc a
    ld [hl], b
    ld a, a
    add e
    db $fd
    rrca
    rst $30
    ld a, a
    xor d
    cp $de
    cp $e3
    ld [c], a
    call $f6ce
    sbc a
    ld a, [$fd9f]
    rst $18
    cp $ef
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    db $dd
    pop hl
    push af
    ld sp, hl
    ld [hl], d
    cp $ea
    ld e, $06
    and $02
    ld a, [de]
    ld [bc], a
    add [hl]
    ld bc, $0001
    db $10

jr_022_4fe4:
    db $10
    stop
    ld [$0808], sp
    nop
    inc b
    nop
    ld bc, $0d01
    inc bc
    inc sp
    ld d, $57
    daa
    and a
    nop
    nop
    nop
    nop
    ret nz

    ldh [$f8], a
    jr @-$0a

    ld c, $f7
    dec bc
    rst $28
    inc de
    rst $28
    inc de
    call c, $dc27
    daa
    cp c
    ld c, a
    ld a, e
    adc [hl]
    di
    ld e, $e3
    ld a, $c3
    ld a, [hl]
    add a
    db $fc
    ld b, $fc
    sbc h
    ld hl, sp+$7c
    jr nc, jr_022_5099

    jr nz, jr_022_5097

    ld h, b
    jr c, jr_022_5062

    jr c, jr_022_5064

    jr c, jr_022_5026

jr_022_5026:
    ld hl, sp-$40
    jr c, @-$0e

    dec c
    db $fd
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b

jr_022_5046:
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    add c
    add c
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_5062:
    ret nz

    ret nz

jr_022_5064:
    jr nz, jr_022_5046

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    add h
    db $fc
    call z, $f8fc
    ld a, b
    ld hl, sp+$78
    ldh a, [$30]
    and b
    ld h, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    nop
    add b
    nop
    add b
    add b
    add b
    nop
    ld b, b
    ld b, b
    ld b, b
    rlca
    ld b, a
    ld hl, sp-$41
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf

jr_022_5097:
    rst $38
    rst $38

jr_022_5099:
    rst $38
    cp $fe
    ldh a, [$f0]
    nop
    nop
    inc c
    inc c
    ld a, [de]
    ld [de], a
    rra
    inc de
    rrca
    ld c, $09
    rrca
    sub $df
    jp hl


    add hl, hl
    jp hl


    add hl, hl
    rst $20
    and a

Jump_022_50b2:
    ld [hl], b
    ld d, b
    ld a, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_022_50d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_50e4:
    nop
    nop
    and b

jr_022_50e7:
    ldh [rLCDC], a

jr_022_50e9:
    ret nz

    rst $38
    rst $38
    ld c, $fe
    inc e
    db $fc
    ld a, b
    ld hl, sp-$20
    ldh [$f8], a
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    jr nz, jr_022_50e7

    jr nz, jr_022_50e9

    ldh [$30], a
    ldh a, [rNR10]
    or b
    jr @-$06

    cp h
    db $ec
    xor $d2
    ld l, [hl]
    ld d, d
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    inc sp
    sbc $dc
    ld a, [hl-]
    sbc $2a
    or e
    ld h, $7f
    ret nz

    jr nc, jr_022_50e4

    cp b
    ld c, [hl]
    jp z, $dfb2

    jp $b27f


    rst $08
    cp [hl]
    sbc $e7
    ld d, b
    ld [de], a
    db $e3
    adc a
    ld h, $7f
    or [hl]
    call c, $c3df
    ld a, a
    or d
    rst $08
    cp l
    ld h, $4e
    or [hl]
    or a
    or [hl]
    or h
    push bc
    or d
    inc sp
    ld a, a
    call nc, $cfd2
    cp l
    or [hl]
    and $50
    and b
    xor h
    adc l
    db $e3
    dec bc
    jp z, $b17f

    ret c

    rst $08
    cp [hl]
    sbc $50

Call_022_5160:
    push af
    ld a, $04
    call $2fcb
    pop af
    ret


Call_022_5168:
    ld hl, $cfbc
    set 7, [hl]
    ret


Call_022_516e:
    ld hl, $cfbc
    res 7, [hl]
    ret


Call_022_5174:
    ld hl, $cfbc
    bit 7, [hl]
    ret


Call_022_517a:
    ld hl, $d002
    ld bc, $0032
    xor a
    call $3041
    ret


Call_022_5185:
    push de
    push hl

jr_022_5187:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_022_5190

    inc hl
    dec c
    jr nz, jr_022_5187

jr_022_5190:
    pop hl
    pop de
    ret


Call_022_5193:
    push de
    push hl

jr_022_5195:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_022_5195

    pop hl
    pop de
    ret


Call_022_519e:
    ld a, c
    and a
    ret z

jr_022_51a1:
    ld a, [de]
    inc de
    cp $50
    jr nz, jr_022_51a1

    dec c
    jr nz, jr_022_51a1

    ret


Call_022_51ab:
    call Call_022_5240
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_022_523c
    ret


Call_022_51b8:
    call Call_022_523c
    ld hl, $c4a0
    ld a, $7f
    ld bc, $0168
    call $3041
    call $045a
    ret


Call_022_51ca:
    push bc
    call Call_022_51b8
    call $31f6
    pop bc
    ret


Call_022_51d3:
    push bc
    call Call_022_51ca
    ld c, $10
    call $0468
    pop bc
    ret


Call_022_51de:
    call Call_022_523c
    call $3317
    ld hl, $cdd9
    ld a, $07
    ld bc, $0168
    call $3041
    ld hl, $c4a0
    ld a, $7f
    ld bc, $0168
    call $3041
    call Call_022_51ab
    ret


Call_022_51fe:
    push bc
    call Call_022_51de
    ld c, $10
    call $0468
    pop bc
    ret


Call_022_5209:
    ld a, $01
    ld [$c2ce], a
    ret


Call_022_520f:
    ld a, $00
    ld [$c2ce], a
    ret


Call_022_5215:
    push hl
    push bc
    ld bc, $0939
    add hl, bc
    ld [hl], a
    pop bc
    pop hl
    ret


Call_022_521f:
    push de
    ld de, $0014
    add hl, de
    inc hl
    ld a, $7f

jr_022_5227:
    push bc
    push hl

jr_022_5229:
    ld [hl+], a
    dec c
    jr nz, jr_022_5229

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_022_5227

    pop de
    ret


Call_022_5235:
    call $0a36
    call $2009
    ret


Call_022_523c:
    xor a
    ldh [$d4], a
    ret


Call_022_5240:
    ld a, $01
    ldh [$d4], a
    ret


Call_022_5245:
    ld a, $05
    ld hl, $4ea5
    rst $08
    ret c

    ld a, $05
    ld hl, $50b9
    rst $08
    and a
    ret


Call_022_5254:
    ld bc, $0d07
    jr jr_022_5261

Call_022_5259:
    ld bc, $0e07
    jr jr_022_5261

Call_022_525e:
    ld bc, $0e0c

jr_022_5261:
    push af
    push bc
    ld hl, $52a3
    call $1d3c
    pop bc
    ld hl, $cf82
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    add $04
    ld [hl+], a
    ld a, b
    add $05
    ld [hl], a
    pop af
    ld [$cf88], a
    call $1c00
    call Call_022_523c
    call Call_022_5209
    call $1d81
    push af
    ld c, $0a
    call $0468
    call $1c17
    call Call_022_520f
    pop af
    jr c, jr_022_52a1

    ld a, [$cfa9]
    cp $02
    jr z, jr_022_52a1

    and a
    ret


jr_022_52a1:
    scf
    ret


    ld b, b
    dec b
    ld a, [bc]
    add hl, bc
    rrca
    xor e
    ld d, d
    ld bc, $02c0
    jp z, Jump_022_50b2

    or d
    or d
    or h
    ld d, b

Call_022_52b4:
    call Call_022_531b

Call_022_52b7:
    ld d, b
    ld e, c
    ld hl, $0000
    add hl, bc
    ld a, $50
    ld bc, $0006
    call $3041
    ld b, d
    ld c, e
    ld hl, $0006
    add hl, bc
    ld a, $50
    ld bc, $0006
    call $3041
    ld b, d
    ld c, e
    ld hl, $000c
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld a, $ff
    ld bc, $0008
    call $3041
    ld b, d
    ld c, e
    ld e, $06
    ld hl, $0019
    add hl, bc

jr_022_52fb:
    ld a, $ff
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    dec e
    jr nz, jr_022_52fb

    ret


Call_022_5305:
    xor a
    ld [$cf74], a
    ld c, $28

jr_022_530b:
    ld a, [$cf74]
    inc a
    ld [$cf74], a
    push bc
    call Call_022_52b4
    pop bc
    dec c
    jr nz, jr_022_530b

    ret


Call_022_531b:
    push hl
    ld hl, $a03b
    ld a, [$cf74]
    dec a
    ld bc, $0025
    call $30fe
    ld b, h
    ld c, l
    pop hl
    ret


Call_022_532d:
    ld hl, $0000
    add hl, bc

Call_022_5331:
    push bc
    ld c, $05

jr_022_5334:
    ld a, [hl+]
    cp $50
    jr z, jr_022_5340

    cp $7f
    jr nz, jr_022_5343

    dec c
    jr nz, jr_022_5334

jr_022_5340:
    scf
    jr jr_022_5344

jr_022_5343:
    and a

jr_022_5344:
    pop bc
    ret


Call_022_5346:
    ld h, b
    ld l, c
    jr jr_022_534e

Call_022_534a:
    ld hl, $0006
    add hl, bc

jr_022_534e:
    push bc
    ld c, $05

jr_022_5351:
    ld a, [hl+]
    cp $50
    jr z, jr_022_535d

    cp $7f
    jr nz, jr_022_5360

    dec c
    jr nz, jr_022_5351

jr_022_535d:
    scf
    jr jr_022_5361

jr_022_5360:
    and a

jr_022_5361:
    pop bc
    ret


Call_022_5363:
    ld h, b
    ld l, c
    jr jr_022_536b

    ld hl, $0019
    add hl, bc

jr_022_536b:
    push de
    ld e, $06

jr_022_536e:
    ld a, [hl+]
    cp $ff
    jr nz, jr_022_537e

    ld a, [hl+]
    cp $ff
    jr nz, jr_022_537e

    dec e
    jr nz, jr_022_536e

    scf
    jr jr_022_537f

jr_022_537e:
    and a

jr_022_537f:
    pop de
    ret


Call_022_5381:
    push bc
    push de
    call Call_022_5b45
    jr c, jr_022_5392

    push hl
    ld a, $ff
    ld bc, $0008
    call $3041
    pop hl

jr_022_5392:
    pop de
    ld c, $08
    call Call_022_5193
    pop bc
    ret


Call_022_539a:
    push bc
    ld hl, $0000
    add hl, bc
    ld de, $d002
    ld c, $06
    call Call_022_5193
    pop bc
    ld hl, $0011
    add hl, bc
    ld de, $d008
    call Call_022_5381
    ret


Call_022_53b3:
    call $0568
    call $300b
    call $0e51
    call $0e5f
    call Call_022_53ef
    call Call_022_542b
    call Call_022_5455
    call $058a
    ret


Call_022_53cc:
    call $0568
    call $300b
    call $0e51
    call $0e5f
    call Call_022_53ef
    call Call_022_5464
    call $058a
    ret


Call_022_53e2:
    call Call_022_5b1e
    call Call_022_53b3
    call Call_022_65b6
    call Call_022_549c
    ret


Call_022_53ef:
    ld de, $8000
    ld hl, $540b
    ld bc, $0020
    ld a, $22
    call $0e8d
    ret


    call $0568
    call Call_022_53ef
    call $058a
    call $045a
    ret


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
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

Call_022_542b:
    ld de, $8020
    ld hl, $61bf
    ld bc, $0080
    ld a, $5e
    call $0e8d
    ld de, $80a0
    ld hl, $664f
    ld bc, $0040
    ld a, $5e
    call $0e8d
    ret


Call_022_5448:
    push af
    ld hl, $c400
    ld d, $60
    xor a

jr_022_544f:
    ld [hl+], a
    dec d
    jr nz, jr_022_544f

    pop af
    ret


Call_022_5455:
    ld hl, $61bf
    ld de, $90c0
    ld bc, $0490
    ld a, $5e
    call $0e8d
    ret


Call_022_5464:
    ld hl, $59ef
    ld de, $9000
    ld bc, $0200
    ld a, $5e
    call $0e8d
    ld hl, $604f
    ld de, $9200
    ld bc, $0170
    ld a, $5e
    call $0e8d
    ret


Call_022_5481:
    ld d, $02
    call Call_022_534a
    ret c

    ld d, $00
    ld hl, $0010
    add hl, bc
    bit 0, [hl]
    ret z

    inc d
    ret


Call_022_5492:
    ld d, $00
    ld a, [$d472]
    bit 0, a
    ret z

    inc d
    ret


Call_022_549c:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $54b3
    ld de, $d038
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop

Call_022_54bb:
    call Call_022_54dc
    push bc
    call Call_022_556f
    call Call_022_549c
    call Call_022_660d
    pop bc
    ret


Call_022_54ca:
    push bc
    call Call_022_54dc
    call Call_022_55c7
    call Call_022_549c
    call Call_022_660d
    call $32f9
    pop bc
    ret


Call_022_54dc:
    push bc
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld c, d
    ld b, $00
    ld hl, $5509
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    ld bc, $0018
    call $3026
    ld hl, $5557
    ld de, $d018
    ld bc, $0018
    call $3026
    pop af
    ldh [rSVBK], a
    pop bc
    ret


    rrca
    ld d, l
    daa
    ld d, l
    ccf
    ld d, l
    rst $38
    ld a, a
    ld a, [hl+]
    ld [hl], $0a
    ld e, c
    nop
    nop
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    ld a, [bc]
    ld e, c
    nop
    nop
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    ld a, [hl+]
    ld [hl], $00
    nop
    rst $38
    ld a, a
    sbc $2e
    rra
    dec a
    nop
    nop
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    rra
    dec a
    nop
    nop
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    sbc $2e
    nop
    nop
    rst $38
    ld a, a
    adc a
    ld l, d
    ld sp, hl
    ld d, b
    nop
    nop
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    ld sp, hl
    ld d, b
    nop
    nop
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    adc a
    ld l, d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld bc, $010e
    rst $38
    ld a, a
    db $10
    ld a, [hl]
    nop
    ld a, h
    nop
    nop
    di
    cpl
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_556f:
    push bc
    ld hl, $0010
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $000c
    add hl, bc
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $6929
    rst $08
    ld a, c
    ld [$d233], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d030
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl], a
    pop af
    ldh [rSVBK], a
    ld a, [$d233]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $70ce
    add hl, de
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld de, $d032
    ld c, $04

jr_022_55b1:
    ld a, $02
    call $304d
    ld [de], a
    inc de
    inc hl
    dec c
    jr nz, jr_022_55b1

    ld hl, $d036
    xor a
    ld [hl+], a
    ld [hl], a
    pop af
    ldh [rSVBK], a
    pop bc
    ret


Call_022_55c7:
    ldh a, [rSVBK]
    push af

jr_022_55ca:
    ld a, $05
    ldh [rSVBK], a
    ld hl, $55de
    ld de, $d030
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    rst $20
    jr jr_022_55ca

    jr jr_022_55e5

jr_022_55e5:
    nop
    ld a, $07
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    ret


Call_022_55f2:
    push bc
    xor a
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    call Call_022_5605
    call Call_022_5655
    pop bc
    ret


Call_022_5605:
    ld hl, $ce14
    ld a, $01
    ld de, $0014
    ld c, $0e

jr_022_560f:
    ld [hl], a
    dec c
    jr z, jr_022_561b

    add hl, de
    inc a
    ld [hl], a
    dec a
    add hl, de
    dec c
    jr nz, jr_022_560f

jr_022_561b:
    ld hl, $cf19
    ld c, $0a
    ld a, $02

jr_022_5622:
    ld [hl+], a
    dec a
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_022_5622

    ld hl, $ceb6
    ld a, $04
    ld bc, $0004
    call $3041
    ld a, $05
    ld bc, $000e
    call $3041
    ret


Call_022_563d:
    ld hl, $ce21
    ld a, $06
    ld de, $0014
    ld bc, $0707

jr_022_5648:
    push hl
    ld c, $07

jr_022_564b:
    ld [hl+], a
    dec c
    jr nz, jr_022_564b

    pop hl
    add hl, de
    dec b
    jr nz, jr_022_5648

    ret


Call_022_5655:
    ld hl, $ceca
    ld de, $0014
    ld a, $05
    ld b, $04

jr_022_565f:
    ld c, $12
    push hl

jr_022_5662:
    ld [hl+], a
    dec c
    jr nz, jr_022_5662

    pop hl
    add hl, de
    dec b
    jr nz, jr_022_565f

    ret


Call_022_566c:
    push bc
    call Call_022_5688
    ld hl, $c4a4
    ld c, $08
    call Call_022_56f5
    pop bc
    ret


Call_022_567a:
    push bc
    call Call_022_5688
    ld hl, $c4a2
    ld c, $0c
    call Call_022_56f5
    pop bc
    ret


Call_022_5688:
    ld hl, $c4a0
    ld a, $01
    ld e, $14
    call Call_022_56e1
    ld a, $02
    ld e, $14
    call Call_022_56eb
    ld a, $03
    ld [hl+], a
    ld a, $04
    ld e, $12
    call Call_022_56e1
    ld a, $06
    ld [hl+], a
    push bc
    ld c, $0d

jr_022_56a9:
    call Call_022_56cb
    dec c
    jr z, jr_022_56b5

    call Call_022_56d6
    dec c
    jr nz, jr_022_56a9

jr_022_56b5:
    pop bc
    ld a, $19
    ld [hl+], a
    ld a, $1a
    ld e, $12
    call Call_022_56e1
    ld a, $1c
    ld [hl+], a
    ld a, $02
    ld e, $14
    call Call_022_56eb
    ret


Call_022_56cb:
    ld de, $0013
    ld a, $07
    ld [hl], a
    add hl, de
    ld a, $09
    ld [hl+], a
    ret


Call_022_56d6:
    ld de, $0013
    ld a, $0a
    ld [hl], a
    add hl, de
    ld a, $0b
    ld [hl+], a
    ret


Call_022_56e1:
jr_022_56e1:
    ld [hl+], a
    inc a
    dec e
    ret z

    ld [hl+], a
    dec a
    dec e
    jr nz, jr_022_56e1

    ret


Call_022_56eb:
jr_022_56eb:
    ld [hl+], a
    dec a
    dec e
    ret z

    ld [hl+], a
    inc a
    dec e
    jr nz, jr_022_56eb

    ret


Call_022_56f5:
    call Call_022_571f
    call Call_022_5736
    inc hl
    inc hl
    ld b, $02
    ld a, $7f
    ld de, $0014

jr_022_5704:
    push bc
    push hl

jr_022_5706:
    ld [hl+], a
    dec c
    jr nz, jr_022_5706

    pop hl
    pop bc
    add hl, de
    dec b
    jr nz, jr_022_5704

    dec hl
    inc c
    inc c

jr_022_5713:
    ld a, $36
    ld [hl+], a
    dec c
    ret z

    ld a, $18
    ld [hl+], a
    dec c
    jr nz, jr_022_5713

    ret


Call_022_571f:
    ld a, $2c
    ld [hl+], a
    ld a, $2d
    ld [hl-], a
    push hl
    ld de, $0014
    add hl, de
    ld a, $31
    ld [hl+], a
    ld a, $32
    ld [hl-], a
    add hl, de
    ld a, $35
    ld [hl], a
    pop hl
    ret


Call_022_5736:
    push hl
    inc hl
    inc hl
    ld e, c
    ld d, $00
    add hl, de
    ld a, $2f
    ld [hl+], a
    ld a, $30
    ld [hl-], a
    ld de, $0014
    add hl, de
    ld a, $33
    ld [hl+], a
    ld a, $34
    ld [hl], a
    add hl, de
    ld a, $1f
    ld [hl], a
    pop hl
    ret


Call_022_5753:
    ld a, $0c
    ld [hl], a
    xor a
    call Call_022_5215
    ret


Call_022_575b:
    ld a, $1d
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $0d
    ld [hl], a
    dec hl
    dec hl
    ld a, $04
    ld e, $03

jr_022_5769:
    call Call_022_5215
    inc hl
    dec e
    jr nz, jr_022_5769

    ret


Call_022_5771:
    ld a, $12
    ld [hl], a
    ld a, $03
    call Call_022_5215
    ret


Call_022_577a:
    ld e, $04
    ld d, $13

jr_022_577e:
    ld a, d
    ld [hl], a
    ld a, $04
    call Call_022_5215
    inc hl
    inc d
    dec e
    jr nz, jr_022_577e

    ld e, $0e

jr_022_578c:
    ld a, d
    ld [hl], a
    xor a
    call Call_022_5215
    inc hl
    dec e
    jr nz, jr_022_578c

    ret


Call_022_5797:
    push bc
    ld a, $0e
    ld [hl], a
    ld bc, $0014
    add hl, bc
    ld a, $11
    ld [hl+], a
    ld a, $10
    ld c, $08

jr_022_57a6:
    ld [hl+], a
    dec c
    jr nz, jr_022_57a6

    ld a, $0f
    ld [hl], a
    pop bc
    ret


Call_022_57af:
    push bc
    ld hl, $0010
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $000c
    add hl, bc
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $6929
    rst $08
    ld a, c
    ld [$d233], a
    xor a
    ld [$d108], a
    ld de, $9370
    ld a, $14
    ld hl, $520d
    rst $08
    pop bc
    ret


Call_022_57d5:
    push bc
    call Call_022_534a
    jr nc, jr_022_57f3

    ld hl, $ce21
    xor a
    ld de, $0014
    ld bc, $0707

jr_022_57e5:
    push hl
    ld c, $07

jr_022_57e8:
    ld [hl+], a
    dec c
    jr nz, jr_022_57e8

    pop hl
    add hl, de
    dec b
    jr nz, jr_022_57e5

    pop bc
    ret


jr_022_57f3:
    ld a, $37
    ldh [$ad], a
    ld hl, $c4e8
    ld bc, $0707
    ld a, $13
    call $2d83
    call Call_022_563d
    pop bc
    ret


Call_022_5807:
    ld hl, $5bef
    ld a, [$d472]
    bit 0, a
    jr z, jr_022_5814

    ld hl, $5e1f

jr_022_5814:
    call $0568
    ld de, $9370
    ld bc, $0230
    ld a, $5e
    call $0e8d
    call $058a
    call $045a
    ret


Call_022_5829:
    push bc
    ld bc, $0705
    ld de, $0014
    ld a, $37

jr_022_5832:
    push bc
    push hl

jr_022_5834:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_022_5834

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_022_5832

    call Call_022_563d
    pop bc
    ret


Call_022_5844:
    call Call_022_5481
    call Call_022_54bb
    call Call_022_57af
    push bc
    call $3200
    call $32f9
    pop bc
    ret


Call_022_5856:
    push bc
    call Call_022_51b8
    pop bc
    call Call_022_55f2
    call Call_022_566c
    call Call_022_59d3
    call Call_022_58aa
    call Call_022_58be
    call Call_022_58dc
    call Call_022_58f3
    push bc
    ld bc, $d008
    ld hl, $c56a
    call Call_022_5975
    pop bc
    call Call_022_57d5
    ret


Call_022_587f:
    call Call_022_51b8
    call Call_022_55f2
    call Call_022_567a
    call Call_022_59d3
    ld hl, $c4b9
    call Call_022_599c
    ld hl, $c4e9
    call Call_022_5829
    call Call_022_59b2
    ld hl, $c509
    call Call_022_59c9
    ld bc, $d008
    ld hl, $c56a
    call Call_022_5975
    ret


Call_022_58aa:
    ld a, [$cf74]
    and a
    ret z

    push bc
    ld hl, $c4ba
    ld de, $cf74
    ld bc, $8102
    call $3198
    pop bc
    ret


Call_022_58be:
    push bc
    ld de, $d002
    ld hl, $d002
    call Call_022_5331
    jr nc, jr_022_58cd

    ld de, $5116

jr_022_58cd:
    ld hl, $c4bd
    ld a, [$cf74]
    and a
    jr nz, jr_022_58d7

    dec hl

jr_022_58d7:
    call $1078
    pop bc
    ret


Call_022_58dc:
    ld hl, $0006
    add hl, bc
    push bc
    ld d, h
    ld e, l
    call Call_022_534a
    jr nc, jr_022_58eb

    ld de, $5116

jr_022_58eb:
    ld hl, $c4f6
    call $1078
    pop bc
    ret


Call_022_58f3:
    push bc
    ld hl, $000c
    add hl, bc
    ld d, h
    ld e, l
    call Call_022_534a
    jr c, jr_022_590a

    ld hl, $c509
    ld bc, $8205
    call $3198
    jr jr_022_5913

jr_022_590a:
    ld hl, $c509
    ld de, $5116
    call $1078

jr_022_5913:
    pop bc
    ret


Call_022_5915:
    push bc
    push hl
    ld de, $5942
    ld c, $08

jr_022_591c:
    ld a, [de]
    ld [hl], a
    ld a, $04
    call Call_022_5215
    inc hl
    inc de
    dec c
    jr nz, jr_022_591c

    pop hl
    ld b, $04
    ld c, $2b
    ld a, $08
    ld de, $594a

jr_022_5932:
    push af
    ld a, [de]
    cp [hl]
    jr nz, jr_022_593b

    call Call_022_594e
    inc de

jr_022_593b:
    inc hl
    pop af
    dec a
    jr nz, jr_022_5932

    pop bc
    ret


    inc h
    dec h
    ld h, $7f
    daa
    jr z, @+$2b

    ld a, [hl+]
    inc h
    daa
    add hl, hl
    rst $38

Call_022_594e:
    push hl
    push de
    ld de, $0014
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, c
    ld [hl], a
    ld a, b
    call Call_022_5215
    pop de
    pop hl
    ret


Call_022_5962:
    push bc
    ld c, $04
    ld b, $20

jr_022_5967:
    ld a, b
    ld [hl], a
    ld a, $04
    call Call_022_5215
    inc hl
    inc b
    dec c
    jr nz, jr_022_5967

    pop bc
    ret


Call_022_5975:
    push bc
    ld e, $08

jr_022_5978:
    ld a, [bc]
    ld d, a
    call Call_022_598b
    swap d
    inc hl
    ld a, d
    call Call_022_598b
    inc bc
    inc hl
    dec e
    jr nz, jr_022_5978

    pop bc
    ret


Call_022_598b:
    push bc
    and $0f
    cp $0a
    jr nc, jr_022_5997

    ld c, $f6
    add c
    jr jr_022_5999

jr_022_5997:
    ld a, $7f

jr_022_5999:
    ld [hl], a
    pop bc
    ret


Call_022_599c:
    ld de, $d47d
    call $1078
    inc bc
    ld h, b
    ld l, c
    ld de, $59ac
    call $1078
    ret


    ret


    ld a, a
    jp nc, $bcb2

    ld d, b

Call_022_59b2:
    ld bc, $d47d
    call Call_022_5346
    jr c, jr_022_59bf

    ld de, $d47d
    jr jr_022_59c2

jr_022_59bf:
    ld de, $5116

jr_022_59c2:
    ld hl, $c4f6
    call $1078
    ret


Call_022_59c9:
    ld de, $d47b
    ld bc, $8205
    call $3198
    ret


Call_022_59d3:
    ld hl, $c4f1
    call Call_022_5753
    ld hl, $c506
    call Call_022_575b
    ld hl, $c555
    call Call_022_5771
    ld hl, $c57d
    call Call_022_577a
    ld hl, $c505
    call Call_022_5797
    ld hl, $c4f2
    call Call_022_5962
    ld hl, $c556
    call Call_022_5915
    ret


Call_022_59fe:
    push bc
    push hl
    ld hl, $0019
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    call Call_022_5a0c
    pop bc
    ret


Call_022_5a0c:
    push hl
    call Call_022_5363
    pop hl
    jr c, jr_022_5a1c

    ld d, h
    ld e, l
    ld a, $47
    ld hl, $408f
    rst $08
    ret


jr_022_5a1c:
    ld de, $5153
    call $1078
    ret


Call_022_5a23:
    ld hl, $c57c
    ld b, $04
    ld c, $12
    call Call_022_521f
    ret


Call_022_5a2e:
    ld hl, $c59b
    ld b, $02
    ld c, $06
    call $0fe8
    ld hl, $c5b1
    ld de, $5a4e
    call $1078
    ld hl, $c5c5
    ld de, $5a53
    call $1078
    call Call_022_5655
    ret


    cp c
    rst $18
    jp Jump_022_50b2


    call nc, $d9d2
    ld d, b

Call_022_5a57:
    call $354b
    bit 6, c
    jr nz, jr_022_5a78

    bit 7, c
    jr nz, jr_022_5a81

    bit 0, c
    jr nz, jr_022_5a70

    bit 1, c
    jr nz, jr_022_5a70

    bit 3, c
    jr nz, jr_022_5a74

    scf
    ret


jr_022_5a70:
    ld a, $01
    and a
    ret


jr_022_5a74:
    ld a, $02
    and a
    ret


jr_022_5a78:
    call Call_022_5a9b
    call nc, Call_022_5a8a
    ld a, $00
    ret


jr_022_5a81:
    call Call_022_5a93
    call nc, Call_022_5a8a
    ld a, $00
    ret


Call_022_5a8a:
    push af
    ld de, $0062
    call $3c23
    pop af
    ret


Call_022_5a93:
    ld d, $28
    ld e, $01
    call Call_022_5aa3
    ret


Call_022_5a9b:
    ld d, $01
    ld e, $ff
    call Call_022_5aa3
    ret


Call_022_5aa3:
    ld a, [$cf74]
    ld c, a
    push bc

jr_022_5aa8:
    ld a, [$cf74]
    cp d
    jr z, jr_022_5ac0

    add e
    jr nz, jr_022_5ab2

    inc a

jr_022_5ab2:
    ld [$cf74], a
    call Call_022_5ac7
    jr nc, jr_022_5aa8

    call Call_022_5ae6
    pop bc
    and a
    ret


jr_022_5ac0:
    pop bc
    ld a, c
    ld [$cf74], a
    scf
    ret


Call_022_5ac7:
    call Call_022_5160
    call Call_022_531b
    call Call_022_5ad4
    call $2fe1
    ret


Call_022_5ad4:
    push de
    call Call_022_532d
    jr c, jr_022_5ae3

    ld hl, $0011
    add hl, bc
    call Call_022_5b45
    jr c, jr_022_5ae4

jr_022_5ae3:
    and a

jr_022_5ae4:
    pop de
    ret


Call_022_5ae6:
    ld hl, $d031
    xor a
    ld [hl], a
    ld a, [$cf74]

jr_022_5aee:
    cp $06
    jr c, jr_022_5afc

    sub $05
    ld c, a
    ld a, [hl]
    add $05
    ld [hl], a
    ld a, c
    jr jr_022_5aee

jr_022_5afc:
    ld [$d030], a
    ret


Call_022_5b00:
    ld a, $12
    ld hl, $5351
    rst $08
    ret


Call_022_5b07:
    call Call_022_523c
    call $045a
    ld a, $12
    ld hl, $63a7
    rst $08
    ret


    call $31f3
    call Call_022_5b07
    call Call_022_5b00
    ret


Call_022_5b1e:
    ld a, $12
    ld hl, $6485
    rst $08
    call Call_022_5b00
    ret


Call_022_5b28:
    call Call_022_51de
    call $31f3
    call Call_022_53e2
    call $1d7d
    call Call_022_51ab
    call $32f9
    ret


Call_022_5b3b:
    call Call_022_523c
    ld a, $12
    ld hl, $4cda
    rst $08
    ret


Call_022_5b45:
    push hl
    push bc
    ld c, $10
    ld e, $00

jr_022_5b4b:
    ld a, [hl+]
    ld b, a
    and $0f
    cp $0a
    jr c, jr_022_5b5a

    ld a, c
    cp $0b
    jr nc, jr_022_5b74

    jr jr_022_5b71

jr_022_5b5a:
    dec c
    swap b
    inc e
    ld a, b
    and $0f
    cp $0a
    jr c, jr_022_5b6c

    ld a, c
    cp $0b
    jr nc, jr_022_5b74

    jr jr_022_5b71

jr_022_5b6c:
    inc e
    dec c
    jr nz, jr_022_5b4b

    dec e

jr_022_5b71:
    scf
    jr jr_022_5b75

jr_022_5b74:
    and a

jr_022_5b75:
    pop bc
    pop hl
    ret


Call_022_5b78:
    push bc
    ld a, [$d010]
    cp $10
    jr c, jr_022_5b8c

    ld a, e
    and a
    jr z, jr_022_5b89

    ld c, e

jr_022_5b85:
    inc hl
    dec c
    jr nz, jr_022_5b85

jr_022_5b89:
    ld a, $7f
    ld [hl], a

jr_022_5b8c:
    ld a, [$d010]
    inc a
    and $1f
    ld [$d010], a
    pop bc
    ret


Call_022_5b97:
    call Call_022_5c34
    jr c, jr_022_5ba0

    call Call_022_5448
    ret


jr_022_5ba0:
    ld a, [$d011]
    ld hl, $5bd8
    and a
    jr z, jr_022_5bae

jr_022_5ba9:
    inc hl
    inc hl
    dec a
    jr nz, jr_022_5ba9

jr_022_5bae:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c400

jr_022_5bb4:
    ld a, [hl+]
    cp $ff
    ret z

    ld c, a
    ld b, $00

jr_022_5bbb:
    push hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, $08
    add b
    ld b, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    dec c
    jr nz, jr_022_5bbb

    ld b, $00
    ld c, $04
    add hl, bc
    jr jr_022_5bb4

    ldh [$5b], a
    push af
    ld e, e
    ld a, [bc]
    ld e, h
    rra
    ld e, h
    ld bc, $4e12
    ld bc, $0100
    add hl, de
    ld c, [hl]
    ld bc, $0140
    ld [de], a
    ld [hl], d
    ld bc, $0120
    add hl, de
    ld [hl], d
    ld bc, $ff60
    ld bc, $1660
    ld bc, $0100
    ld h, d
    ld d, $01
    ld b, b
    ld bc, $9260
    ld bc, $0120
    ld h, d
    sub d
    ld bc, $ff60
    ld bc, $6678
    ld bc, $0100
    ld a, b
    ld h, [hl]
    ld bc, $0140
    ld a, b
    sub d
    ld bc, $0120
    ld a, b
    sub d
    ld bc, $ff60
    ld bc, $6680
    ld bc, $0100
    add b
    ld h, [hl]
    ld bc, $0140
    add b
    sub d
    ld bc, $0120
    add b
    sub d
    ld bc, $ff60

Call_022_5c34:
    push bc
    ld a, [$d012]
    ld c, a
    inc a
    and $0f
    ld [$d012], a
    ld a, c
    cp $08
    pop bc
    ret


Call_022_5c44:
    call Call_022_5c34
    jr c, jr_022_5c4f

    push de
    call Call_022_5448
    pop de
    ret


jr_022_5c4f:
    ld hl, $c400
    push de
    ld a, b
    ld [hl+], a
    ld d, $08
    ld a, e
    and a
    ld a, c
    jr z, jr_022_5c60

jr_022_5c5c:
    add d
    dec e
    jr nz, jr_022_5c5c

jr_022_5c60:
    pop de
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ret


Call_022_5c67:
    call $354b
    ld b, $00
    bit 0, c
    jr z, jr_022_5c74

    ld b, $01
    and a
    ret


jr_022_5c74:
    bit 1, c
    jr z, jr_022_5c7a

    scf
    ret


jr_022_5c7a:
    xor a
    bit 6, c
    jr z, jr_022_5c81

    ld a, $01

jr_022_5c81:
    bit 7, c
    jr z, jr_022_5c87

    ld a, $02

jr_022_5c87:
    bit 5, c
    jr z, jr_022_5c8d

    ld a, $03

jr_022_5c8d:
    bit 4, c
    jr z, jr_022_5c93

    ld a, $04

jr_022_5c93:
    and a
    ret z

    dec a
    ld c, a
    ld d, $00
    ld hl, $5cbf
    ld a, [$d02f]
    and a
    jr z, jr_022_5ca5

    ld hl, $5ccf

jr_022_5ca5:
    ld a, [$d011]
    and a
    jr z, jr_022_5cb1

    ld e, $04

jr_022_5cad:
    add hl, de
    dec a
    jr nz, jr_022_5cad

jr_022_5cb1:
    ld e, c
    add hl, de
    ld a, [hl]
    and a
    ret z

    dec a
    ld [$d011], a
    xor a
    ld [$d012], a
    ret


    nop
    ld [bc], a
    nop
    nop
    ld bc, $0003
    nop
    ld [bc], a
    inc b
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    inc b
    nop
    nop
    inc bc
    nop
    nop
    nop

Call_022_5cdf:
    ld a, $10
    add b
    ld b, a
    ld a, $08
    add c
    ld c, a
    ld e, $02
    ld a, $02
    ld hl, $c400

jr_022_5cee:
    push af
    push bc
    ld d, $04

jr_022_5cf2:
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $08
    add c
    ld c, a
    inc e
    dec d
    jr nz, jr_022_5cf2

    pop bc
    ld a, $08
    add b
    ld b, a
    pop af
    dec a
    jr nz, jr_022_5cee

    ret


Call_022_5d0d:
    call Call_022_523c
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld c, $08
    ld de, $d000

jr_022_5d1c:
    push bc
    ld hl, $5d4e
    ld bc, $0008
    call $3026
    pop bc
    dec c
    jr nz, jr_022_5d1c

    ld hl, $5d56
    ld de, $d010
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    call $32f9
    ld a, $21
    ld hl, $45db
    rst $08
    call Call_022_5240
    ld c, $18
    call $0468
    call $3d47
    ret


    rst $38
    ld a, a
    ld [hl], e
    ld c, [hl]
    rst $28
    dec a
    nop
    nop
    rst $38
    ld a, a
    ld [hl], e
    ld c, [hl]
    ld [hl], e
    ld c, [hl]
    nop
    nop

Call_022_5d5e:
    push af
    call $1d3c
    pop af
    ld [$cf88], a
    call Call_022_523c
    call $1c89
    call $1c10
    ld hl, $cfa5
    set 7, [hl]
    ret


Call_022_5d75:
    push hl
    call Call_022_523c
    call $2fec
    ld a, $41
    ld hl, $4148
    rst $08
    pop hl
    jr jr_022_5d90

Call_022_5d85:
    push hl
    call Call_022_523c
    call $2fec
    call $3238
    pop hl

jr_022_5d90:
    call Call_022_523c
    push hl
    call $2fec
    call Call_022_5dab
    ld a, [$cfa9]
    push af
    call Call_022_51ab
    pop af
    pop hl
    jr c, jr_022_5da9

    jr z, jr_022_5d90

    scf
    ret


jr_022_5da9:
    and a
    ret


Call_022_5dab:
    call Call_022_523c
    ld a, $09
    ld hl, $41ba
    rst $08
    call Call_022_523c
    ld a, c
    ld hl, $cfa8
    and [hl]
    ret z

    bit 0, a
    jr nz, jr_022_5dc7

    bit 1, a
    jr nz, jr_022_5dd9

    xor a
    ret


jr_022_5dc7:
    call $2009
    ld a, [$cfa3]
    ld c, a
    ld a, [$cfa9]
    cp c
    jr z, jr_022_5dd9

    call $1bee
    scf
    ret


jr_022_5dd9:
    call $2009
    ld a, $01
    and a
    ret


    call $300b
    call Call_022_5e0a
    jr c, jr_022_5e00

    ld c, $01

jr_022_5dea:
    call Call_022_631c
    jr z, jr_022_5dfd

    ld a, [$cfa9]
    ld c, a
    push bc
    ld hl, $5e04
    ld a, e
    dec a
    rst $28
    pop bc
    jr jr_022_5dea

jr_022_5dfd:
    call Call_022_51fe

jr_022_5e00:
    call Call_022_517a
    ret


    inc l
    ld h, [hl]
    sbc c
    ld l, c
    sub e
    ld l, e

Call_022_5e0a:
    call Call_022_5160
    call Call_022_73b0
    call $2fe1
    ld hl, $5e18
    rst $28
    ret


    ld e, $5e
    ld d, $61
    xor d
    ld h, d
    call Call_022_5160
    ld bc, $a037
    call Call_022_736c
    call $2fe1
    xor a
    ld [$d02d], a

jr_022_5e2e:
    ld a, [$d02d]
    ld hl, $5e3c
    rst $28
    ret


Jump_022_5e36:
    ld hl, $d02d
    inc [hl]
    jr jr_022_5e2e

    ld l, a
    ld e, [hl]
    db $ed
    ld e, a
    or $5f
    dec a
    ld h, b
    cp c
    ld e, [hl]
    db $fd
    ld e, [hl]
    adc $5f
    ld c, h
    ld h, b
    ld d, l
    ld h, b
    and $60
    db $ec
    ld h, b
    push af
    ld h, b
    ld e, b
    ld e, [hl]
    ld l, b
    ld e, [hl]
    ld a, $01
    call Call_022_62fe
    call Call_022_51fe
    call Call_022_53e2
    call Call_022_5168
    and a
    ret


    call Call_022_51fe
    ld a, $01
    scf
    ret


    call Call_022_51de
    call Call_022_5245
    call Call_022_5ee1
    call Call_022_5e9a
    ld hl, $c4f7
    call Call_022_658d
    ld a, $05
    ld hl, $ce30
    call Call_022_65a3
    ld a, $06
    ld hl, $ce33
    call Call_022_65a3
    call Call_022_51ab
    call $32f9
    jp Jump_022_5e36


Call_022_5e9a:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5eb1
    ld de, $d028
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, e
    ld [bc], a
    nop
    nop
    call Call_022_51fe
    call Call_022_5ee1
    call Call_022_5e9a
    ld hl, $c4f7
    call Call_022_658d
    ld a, $05
    ld hl, $ce30
    call Call_022_65a3
    ld a, $06
    ld hl, $ce33
    call Call_022_65a3
    call Call_022_51ab
    call $32f9
    jp Jump_022_5e36


Call_022_5ee1:
    call $31f3
    call Call_022_53e2
    call Call_022_523c
    ld a, $12
    ld hl, $63a7
    rst $08
    ld a, $12
    ld hl, $5384
    rst $08
    ld hl, $c4a1
    call Call_022_653d
    ret


    ld hl, $d012
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_022_5f09:
    ld hl, $d012
    inc [hl]
    ld a, [hl+]
    and $03
    jr nz, jr_022_5f2e

    ld a, [hl]
    cp $04
    jr nc, jr_022_5f2e

    ld b, $32
    inc [hl]
    ld a, [hl]
    dec a
    jr z, jr_022_5f26

    ld c, a

jr_022_5f1f:
    ld a, $0b
    add b
    ld b, a
    dec c
    jr nz, jr_022_5f1f

jr_022_5f26:
    ld c, $e8
    ld a, [$d013]
    call Call_022_5fa5

jr_022_5f2e:
    ld a, [$d013]
    and a
    jr z, jr_022_5f58

jr_022_5f34:
    call Call_022_5f6a
    ld e, a
    ld a, c
    cp $a8
    jr nc, jr_022_5f4d

    cp $46
    jr c, jr_022_5f4d

    ld d, $00
    dec e
    ld hl, $d014
    add hl, de
    set 0, [hl]
    inc e
    jr jr_022_5f51

jr_022_5f4d:
    ld a, $02
    add c
    ld c, a

jr_022_5f51:
    ld a, e
    call Call_022_5f77
    dec a
    jr nz, jr_022_5f34

jr_022_5f58:
    call $045a
    ld hl, $d014
    ld c, $04

jr_022_5f60:
    ld a, [hl+]
    and a
    jr z, jr_022_5f09

    dec c
    jr nz, jr_022_5f60

    jp Jump_022_5e36


Call_022_5f6a:
    push af
    ld de, $0010
    call Call_022_5f9a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    pop af
    ret


Call_022_5f77:
    push af
    ld de, $0010
    call Call_022_5f9a
    ld d, $02

jr_022_5f80:
    push bc
    ld e, $02

jr_022_5f83:
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    inc hl
    inc hl
    ld a, $08
    add c
    ld c, a
    dec e
    jr nz, jr_022_5f83

    pop bc
    ld a, $08
    add b
    ld b, a
    dec d
    jr nz, jr_022_5f80

    pop af
    ret


Call_022_5f9a:
    dec a
    ld hl, $c400
    and a
    ret z

jr_022_5fa0:
    add hl, de
    dec a
    jr nz, jr_022_5fa0

    ret


Call_022_5fa5:
    ld de, $0010
    call Call_022_5f9a
    ld e, $02
    ld d, $0a

jr_022_5faf:
    push bc
    ld a, $02

jr_022_5fb2:
    push af
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    inc d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $08
    add c
    ld c, a
    pop af
    dec a
    jr nz, jr_022_5fb2

    pop bc
    ld a, $08
    add b
    ld b, a
    dec e
    jr nz, jr_022_5faf

    ret


    call Call_022_65b6
    ld a, $05
    ld hl, $ce30
    call Call_022_65a3
    ld a, $06
    ld hl, $ce33
    call Call_022_65a3
    call Call_022_5448
    call $32f9
    call Call_022_51ab
    jp Jump_022_5e36


    ld hl, $6102
    call $1057
    jp Jump_022_5e36


    call Call_022_51fe
    call $31f3
    call Call_022_53cc
    call Call_022_5807
    call Call_022_5492
    call Call_022_54ca
    call Call_022_5160
    ld hl, $a603
    ld a, $ff
    ld bc, $0008
    call $3041
    ld hl, $a603
    ld de, $d008
    call Call_022_5381
    call $2fe1
    call Call_022_587f
    call Call_022_5160
    ld hl, $c5a5
    ld bc, $a007
    call Call_022_5a0c
    call $2fe1
    call Call_022_51ab
    call Call_022_5235
    jp Jump_022_5e36


    ld hl, $6107
    call Call_022_5209
    call $1057
    call Call_022_520f
    jp Jump_022_5e36


    ld hl, $610c
    call $1057
    jp Jump_022_5e36


    ld c, $07
    ld b, $04

jr_022_6059:
    call Call_022_60a1
    inc c
    call Call_022_60c9
    push bc
    call Call_022_658d
    pop bc
    call Call_022_60de
    push bc
    push hl
    ld a, $05
    call Call_022_65a3
    pop hl
    inc hl
    inc hl
    inc hl
    ld a, $06
    call Call_022_65a3
    call $3238
    pop bc
    ld a, c
    cp $0b
    jr nz, jr_022_6059

    call Call_022_60a1
    ld hl, $c4fc
    call Call_022_658d
    ld a, $05
    ld hl, $ce35
    call Call_022_65a3
    pop hl
    ld a, $06
    ld hl, $ce38
    call Call_022_65a3
    call $3238
    jp Jump_022_5e36


Call_022_60a1:
    call Call_022_523c
    push bc
    call Call_022_60c9
    ld e, $06

jr_022_60aa:
    push hl
    ld bc, $0006
    add hl, bc
    ld d, [hl]
    call Call_022_60c1
    pop hl
    ld [hl], d
    call Call_022_5215
    ld bc, $0014
    add hl, bc
    dec e
    jr nz, jr_022_60aa

    pop bc
    ret


Call_022_60c1:
    push hl
    ld bc, $0939
    add hl, bc
    ld a, [hl]
    pop hl
    ret


Call_022_60c9:
    push bc
    ld hl, $c4a0
    ld de, $0014
    ld a, b
    and a
    jr z, jr_022_60d8

jr_022_60d4:
    add hl, de
    dec b
    jr nz, jr_022_60d4

jr_022_60d8:
    ld d, $00
    ld e, c
    add hl, de
    pop bc
    ret


Call_022_60de:
    call Call_022_60c9
    ld de, $0939
    add hl, de
    ret


    call Call_022_7539
    jp Jump_022_5e36


    ld hl, $6111
    call $1057
    jp Jump_022_5e36


    call Call_022_7555
    jp nc, Jump_022_60ff

    ld hl, $d02d
    inc [hl]

Jump_022_60ff:
    jp Jump_022_5e36


    ld d, $38
    ld d, d
    ld [hl], c
    ld d, b
    ld d, $bc
    ld d, d
    ld [hl], c
    ld d, b
    ld d, $1e
    ld d, e
    ld [hl], c
    ld d, b
    ld d, $94
    ld d, e
    ld [hl], c
    ld d, b
    ld a, $01
    ld [$d030], a
    ld hl, $6176
    call $1d35

jr_022_6121:
    call Call_022_523c
    call Call_022_617b
    jr c, jr_022_616b

    ld a, [$cfa9]
    ld [$d030], a
    dec d
    jr z, jr_022_6140

    call Call_022_620d
    jr c, jr_022_6121

    xor a
    call Call_022_62fe
    call Call_022_516e
    jr jr_022_616b

jr_022_6140:
    call Call_022_5174
    jr nz, jr_022_614c

    call Call_022_6241
    jr c, jr_022_6121

    jr jr_022_615a

jr_022_614c:
    call $3c55
    ld de, $00ce
    call $3c23
    ld c, $10
    call $0468

jr_022_615a:
    call $1c07
    call Call_022_51de
    call Call_022_53e2
    call Call_022_5245
    call Call_022_5168
    and a
    ret


jr_022_616b:
    call Call_022_5209
    call $1c17
    call Call_022_520f
    scf
    ret


    ld b, b
    nop
    ld c, $06
    inc de

Call_022_617b:
    ld de, $c4ae
    ld b, $05
    ld c, $04
    call Call_022_5b3b
    ld hl, $619a
    ld a, [$d030]
    call Call_022_5d5e
    ld hl, $61b0
    call Call_022_5d75
    jr nc, jr_022_6198

    ld a, $00

jr_022_6198:
    ld d, a
    ret


    ld b, b
    nop
    ld c, $06
    inc de
    and d
    ld h, c
    ld bc, $03e0
    set 2, a
    cp b
    ld d, b
    cp l
    jp Jump_022_50d9


    db $d3
    inc [hl]
    reti


    ld d, b
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld hl, $c5b9
    ld a, [$cfa9]
    ld de, $61cc
    dec a
    ld c, a
    call Call_022_519e
    call $1078
    ret


    jp nc, $bcb2

    dec h
    cp [hl]
    or d
    ret c

    call nz, $cd7f
    sbc $bc
    pop hl
    or e
    db $dd
    ld c, [hl]
    or l
    cp d
    push bc
    or d
    rst $08
    cp l
    ld d, b
    jp nc, $bcb2

    sbc e
    db $f4
    and [hl]
    rrca
    db $e3
    dec h
    jp nc, $bcb2

    call nz, $b14e
    sbc $bc
    ld [c], a
    or e
    ld a, [hl-]
    sbc $2a
    or e
    rra
    cp c
    cp h
    rst $08
    cp l
    ld d, b
    rst $08
    or h
    dec h
    ld h, $d2
    sbc $1d
    db $d3
    inc [hl]
    ret c

    rst $08
    cp l
    ld d, b

Call_022_620d:
    ld hl, $6232
    call $1057
    ld a, $02
    call Call_022_5259
    ret c

    ld hl, $6237
    call $1057
    ld a, $02
    call Call_022_5259
    ret c

    xor a
    call Call_022_62fe
    ld hl, $623c
    call $1057
    xor a
    and a
    ret


    ld d, $ee
    ld d, e
    ld [hl], c
    ld d, b
    ld d, $94
    ld d, h
    ld [hl], c
    ld d, b
    ld d, $b9
    ld d, h
    ld [hl], c
    ld d, b

Call_022_6241:
    call $1d6e
    call Call_022_51fe
    call Call_022_6262
    jr nc, jr_022_6254

    call Call_022_51fe
    call Call_022_5b28
    scf
    ret


jr_022_6254:
    call Call_022_51de
    call $31f3
    call $1d7d
    call Call_022_51de
    and a
    ret


Call_022_6262:
    call $31f3
    call Call_022_53e2
    call Call_022_523c
    ld a, $12
    ld hl, $63a7
    rst $08
    ld a, $12
    ld hl, $5384
    rst $08
    ld hl, $c4a1
    call Call_022_653d
    ld hl, $c4fc
    call Call_022_658d
    ld a, $05
    ld hl, $ce35
    call Call_022_65a3
    ld a, $06
    ld hl, $ce38
    call Call_022_65a3
    xor a
    ld [$d02e], a
    ld bc, $d013
    call Call_022_736c
    call Call_022_7493
    call Call_022_51ab
    call $32f9
    call Call_022_75e7
    ret


    ld hl, $62ef
    call $1d35
    ld hl, $62f4
    call $1057
    ld a, $01
    call Call_022_5259
    jr nc, jr_022_62cf

    ld hl, $62f9
    call $1057
    ld a, $02
    call Call_022_5259
    jr c, jr_022_62ea

    call Call_022_620d
    jr jr_022_62ea

jr_022_62cf:
    call $1c07
    call Call_022_6241
    jr c, jr_022_62ed

    ld a, $01
    call Call_022_6313
    call $2fe1
    call Call_022_51de
    call Call_022_5245
    call Call_022_5168
    and a
    ret


jr_022_62ea:
    call $1c17

jr_022_62ed:
    scf
    ret


    ld b, b
    inc c
    nop
    ld de, $1613
    db $dd
    ld d, h
    ld [hl], c
    ld d, b
    ld d, $2d
    ld d, l
    ld [hl], c
    ld d, b

Call_022_62fe:
    call Call_022_6313
    call Call_022_5305
    ld hl, $a603
    ld bc, $0008
    ld a, $ff
    call $3041
    call $2fe1
    ret


Call_022_6313:
    ld c, a
    call Call_022_5160
    ld a, c
    ld [$a60b], a
    ret


Call_022_631c:
    push bc
    call Call_022_523c
    ld a, $12
    ld hl, $63a7
    rst $08
    ld a, $12
    ld hl, $5384
    rst $08
    ld hl, $c4a1
    call Call_022_653d
    ld hl, $c4fc
    call Call_022_658d
    call Call_022_63b2
    pop bc
    ld a, c
    ld [$cf88], a
    ld [$cf74], a
    call $1c89
    call $1c10
    ld hl, $cfa5
    set 7, [hl]

jr_022_634e:
    call Call_022_63a2
    call Call_022_523c
    call Call_022_6453
    call Call_022_64d3
    call Call_022_64fc
    call Call_022_51ab
    call $32f9
    call Call_022_6383
    jr c, jr_022_6370

    jr z, jr_022_634e

jr_022_636a:
    call Call_022_5448
    xor a
    ld e, a
    ret


jr_022_6370:
    call Call_022_5448
    call $1bee
    call Call_022_63a2
    ld a, [$cf74]
    cp $ff
    jr z, jr_022_636a

    ld e, a
    and a
    ret


Call_022_6383:
    ld a, $09
    ld hl, $41ba
    rst $08
    ld a, c
    ld hl, $cfa8
    and [hl]
    ret z

    bit 0, a
    jr nz, jr_022_6399

    bit 1, a
    jr nz, jr_022_639e

    xor a
    ret


jr_022_6399:
    call $2009
    scf
    ret


jr_022_639e:
    call $2009
    ret


Call_022_63a2:
    ld a, [$cfa9]
    dec a
    ld hl, $d002
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$cf74], a
    ret


Call_022_63b2:
    ld a, $01
    ld [$cf74], a
    call Call_022_64fc
    call Call_022_63df
    jr nc, jr_022_63ce

    ld de, $c4c8
    ld b, $06
    ld c, $09
    call Call_022_5b3b
    ld hl, $6435
    jr jr_022_63db

jr_022_63ce:
    ld de, $c4c8
    ld b, $08
    ld c, $09
    call Call_022_5b3b
    ld hl, $640f

jr_022_63db:
    call $1d3c
    ret


Call_022_63df:
    call Call_022_5160
    ld hl, $a603
    call Call_022_5b45
    call $2fe1
    ld hl, $d002
    jr c, jr_022_63f8

    ld de, $6408
    call Call_022_6400
    scf
    ret


jr_022_63f8:
    ld de, $640b
    call Call_022_6400
    and a
    ret


Call_022_6400:
jr_022_6400:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $ff
    jr nz, jr_022_6400

    ret


    ld bc, $ff02
    ld bc, $0302
    rst $38
    ld b, b
    ld [bc], a
    nop
    dec bc
    ld a, [bc]
    rla
    ld h, h
    ld bc, $04a0
    jp nc, $bcb2

    ret c

    adc h
    sub e
    ld d, b
    inc l
    inc a
    sbc $c9
    ld a, a
    jp nc, $bcb2

    ld d, b
    jp nc, $bcb2

    cp d
    or e
    or [hl]
    sbc $50
    call nc, $d9d2
    ld d, b
    ld b, b
    ld [bc], a
    nop
    add hl, bc
    ld a, [bc]
    dec a
    ld h, h
    ld bc, $03a0
    jp nc, $bcb2

    ret c

    adc h
    sub e
    ld d, b
    inc l
    inc a
    sbc $c9
    ld a, a
    jp nc, $bcb2

    ld d, b
    call nc, $d9d2
    ld d, b

Call_022_6453:
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld hl, $c5b9
    ld de, $6476
    ld a, [$cf74]
    cp $ff
    jr z, jr_022_6472

    ld de, $6483
    dec a
    ld c, a
    call Call_022_519e

jr_022_6472:
    call $1078
    ret


    rst $08
    or h
    dec h
    ld h, $d2
    sbc $1d
    db $d3
    inc [hl]
    ret c

    rst $08
    cp l
    ld d, b
    or l
    call nz, $30d3
    pop bc
    dec h
    jp nc, $bcb2

    jp z, $ba4e

    cp d
    dec e
    or d
    jp c, $b5c3

    or a
    rst $08
    cp l
    ld d, b
    inc sp
    sbc $dc
    ld a, [hl-]
    sbc $2a
    or e
    rra
    or d
    jp c, $c4d9

    ld c, [hl]
    jp nc, $bcb2

    cp d
    or e
    or [hl]
    sbc $4a
    inc sp
    or a
    rst $08
    cp l
    ld d, b
    call nz, $30d3
    pop bc
    call nz, $2c7f
    inc a
    sbc $25
    jp nc, $bcb2

    db $dd
    ld c, [hl]
    cp [hl]
    or a
    ld h, $b2
    cp [hl]
    sbc $33
    ld a, a
    cp d
    or e
    or [hl]
    sbc $7f
    cp h
    rst $08
    cp l
    ld d, b

Call_022_64d3:
    ld a, [$cf74]
    cp $01
    jr nz, jr_022_64eb

    ld a, $05
    ld hl, $ce35
    call Call_022_65a3
    ld a, $07
    ld hl, $ce38
    call Call_022_65a3
    ret


jr_022_64eb:
    ld a, $07
    ld hl, $ce35
    call Call_022_65a3
    ld a, $06
    ld hl, $ce38
    call Call_022_65a3
    ret


Call_022_64fc:
    ld a, [$cf74]
    cp $03
    jr nz, jr_022_6529

    ld hl, $d012
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    add b
    ld [hl], a
    ld b, a
    ld c, $80
    call Call_022_5cdf
    call Call_022_6515
    ret


Call_022_6515:
    ld hl, $d012
    ld a, [hl]
    cp $38
    jr c, jr_022_6520

    cp $3c
    ret c

jr_022_6520:
    ld a, [$d013]
    cpl
    inc a
    ld [$d013], a
    ret


jr_022_6529:
    ld hl, $d012
    ld a, $3c
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld hl, $c400
    xor a
    ld bc, $0020
    call $3041
    ret


Call_022_653d:
    push hl
    ld a, $15
    ld c, $08
    ld de, $0014
    call Call_022_6573
    ld a, $1d
    ld c, $09
    call Call_022_657c
    inc a
    ld [hl], a
    call Call_022_6584
    pop hl
    add hl, de
    ld a, $1f
    ld c, $08
    call Call_022_6573
    dec hl
    ld a, $51
    ld [hl+], a
    ld a, $26
    ld c, $01
    call Call_022_657c
    ld a, $52
    ld c, $03
    call Call_022_6573
    ld a, $27
    ld c, $06

Call_022_6573:
jr_022_6573:
    ld [hl], a
    call Call_022_6584
    inc a
    dec c
    jr nz, jr_022_6573

    ret


Call_022_657c:
jr_022_657c:
    ld [hl], a
    call Call_022_6584
    dec c
    jr nz, jr_022_657c

    ret


Call_022_6584:
    push af
    ld a, $04
    call Call_022_5215
    inc hl
    pop af
    ret


Call_022_658d:
    ld a, $2d
    ld bc, $0606
    ld de, $0014

jr_022_6595:
    push bc
    push hl

jr_022_6597:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_022_6597

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_022_6595

    ret


Call_022_65a3:
    ld bc, $0603
    ld de, $0014

jr_022_65a9:
    push bc
    push hl

jr_022_65ab:
    ld [hl+], a
    dec c
    jr nz, jr_022_65ab

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_022_65a9

    ret


Call_022_65b6:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $65e5
    ld de, $d020
    ld bc, $0018
    call $3026
    ld hl, $65fd
    ld de, $d040
    ld bc, $0008
    call $3026
    ld hl, $6605
    ld de, $d048
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    ld a, e
    ld [bc], a
    ld h, a
    ld e, c
    nop
    nop
    rst $38
    ld a, a
    db $10
    ld a, [hl]
    ld a, e
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, e
    ld [bc], a
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
    nop
    nop
    ld c, [hl]
    ld a, [hl]
    db $10
    ld a, [hl]
    rst $38
    ld a, a

Call_022_660d:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $6624
    ld de, $d040
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    call $1d6e
    call Call_022_51fe
    xor a
    call Call_022_794a
    call Call_022_7677

jr_022_6639:
    xor a
    ld [$d033], a
    ld [$d032], a
    ld [$d0e3], a
    call Call_022_77bd
    ld a, c
    and a
    jr z, jr_022_666a

    ld [$cf74], a
    ld b, a
    ld a, [$cf77]
    inc a
    ld [$d034], a
    push bc
    call Call_022_7960
    ld a, c
    pop bc
    jr z, jr_022_6639

    ld c, a
    ld hl, $6671
    ld a, b
    ld [$cf74], a
    ld a, c
    dec a
    rst $28
    jr jr_022_6639

jr_022_666a:
    call Call_022_51fe
    call Call_022_5b28
    ret


    ld a, c
    ld h, [hl]
    call $c366
    ld l, b
    jr nc, jr_022_66e2

jr_022_6679:
    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    call Call_022_531b
    call Call_022_5844
    call $2fe1
    call Call_022_5160
    call Call_022_539a
    call Call_022_5856
    ld hl, $c5a5
    call Call_022_59fe
    call Call_022_51ab
    call $2fe1

jr_022_66a3:
    call Call_022_5a57
    jr c, jr_022_66a3

    and a
    jr z, jr_022_6679

    ld hl, $66bc
    dec a
    rst $28
    jr c, jr_022_6679

    call Call_022_51fe
    call Call_022_7677
    call Call_022_5448
    ret


    ret nz

    ld h, [hl]
    push bc
    ld h, [hl]
    call $2009
    and a
    ret


    call $2009
    call Call_022_5d0d
    scf
    ret


    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    call Call_022_531b
    call Call_022_5844
    call Call_022_6757

jr_022_66e2:
    call $2fe1

jr_022_66e5:
    call Call_022_5160
    call Call_022_531b
    call Call_022_5856
    call Call_022_5a2e
    call Call_022_51ab
    xor a
    ld [$d02f], a
    call $2fe1

jr_022_66fb:
    call Call_022_5b97
    call Call_022_5c67
    jr c, jr_022_6718

    ld a, b
    and a
    jr z, jr_022_66fb

    call $2009
    call Call_022_5448
    ld a, [$d011]
    ld hl, $674f
    rst $28
    jr nc, jr_022_66e5

    jr jr_022_6742

jr_022_6718:
    call Call_022_5160
    call Call_022_6765
    call $2fe1
    jr nc, jr_022_673f

    call Call_022_523c
    call Call_022_5448
    call Call_022_5a23
    ld hl, $c5a5
    ld de, $5135
    call $1078
    call $31f6
    ld a, $02
    call Call_022_5254
    jr c, jr_022_66e5

jr_022_673f:
    call $2fe1

jr_022_6742:
    call $31f3
    call Call_022_5448
    call Call_022_51d3
    call Call_022_7677
    ret


    adc h
    ld h, a
    bit 4, a
    jr @+$6a

    and c
    ld l, b

Call_022_6757:
    call Call_022_539a
    xor a
    ld [$d010], a
    ld [$d011], a
    ld [$d012], a
    ret


Call_022_6765:
    call Call_022_531b
    push bc
    ld hl, $0000
    add hl, bc
    ld de, $d002
    ld c, $06
    call Call_022_5185
    pop bc
    jr nz, jr_022_678a

    push bc
    ld hl, $0011
    add hl, bc
    ld de, $d008
    ld c, $08
    call Call_022_5185
    pop bc
    jr nz, jr_022_678a

    and a
    ret


jr_022_678a:
    scf
    ret


    call Call_022_51fe
    ld de, $d002
    ld b, $05
    ld a, $04
    ld hl, $56c1
    rst $08
    call Call_022_5160
    call Call_022_531b
    push bc
    ld hl, $0000
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d002
    call $2ef9
    call $2fe1
    call $045a
    call $0a57
    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    pop bc
    call Call_022_5844
    call $2fe1
    and a
    ret


    ld a, [$cf74]
    push af
    call Call_022_51de
    ld de, $d008
    ld c, $00
    ld a, $5e
    ld hl, $668f
    rst $08
    jr c, jr_022_67f4

    ld hl, $d008
    ld a, $ff
    ld bc, $0008
    call $3041
    ld h, d
    ld l, e
    ld de, $d008
    ld c, $08
    call Call_022_5193

jr_022_67f4:
    pop af
    ld [$cf74], a
    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    call Call_022_531b
    call Call_022_5844
    call Call_022_5856
    call Call_022_5a2e
    call Call_022_51ab
    call $2fe1
    and a
    ret


    call Call_022_5a23
    ld hl, $d002
    call Call_022_5331
    jr c, jr_022_6875

    ld hl, $d008
    call Call_022_5b45
    jr nc, jr_022_687a

    call Call_022_5160
    call Call_022_6765
    jr nc, jr_022_6863

    call Call_022_531b
    push bc
    ld hl, $0000
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d002
    ld c, $06
    call Call_022_5193
    pop bc
    ld hl, $0011
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d008
    ld c, $08
    call Call_022_5193
    ld hl, $c5a5
    ld de, $6868
    call $1078
    call $31f6
    call $0a36

jr_022_6863:
    call $2fe1
    scf
    ret


    jp nc, $bcb2

    rra
    or [hl]
    or a
    or [hl]
    or h
    ld a, a
    rst $08
    cp h
    ld [hl+], a
    ld d, b

jr_022_6875:
    ld de, $688b
    jr jr_022_687d

jr_022_687a:
    ld de, $511c

jr_022_687d:
    ld hl, $c5a5
    call $1078
    call $31f6
    call $0a36
    and a
    ret


    or l
    call nz, $30d3
    pop bc
    dec h
    push bc
    rst $08
    or h
    ld h, $4e
    or [hl]
    or [hl]
    jp c, Jump_022_7fc3

    or d
    rst $08
    cp [hl]
    sbc $e7
    ld d, b
    call Call_022_5160
    call Call_022_6765
    call $2fe1
    jr nc, jr_022_68bf

    call Call_022_5a23
    ld hl, $c5a5
    ld de, $5135
    call $1078
    ld a, $02
    call Call_022_5254
    jr c, jr_022_68c1

jr_022_68bf:
    scf
    ret


jr_022_68c1:
    and a
    ret


    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    call Call_022_531b
    call Call_022_5844
    call Call_022_539a
    call Call_022_5856
    call $2fe1
    call Call_022_51ab
    ld hl, $c5a5
    ld de, $6919
    call $1078
    ld a, $02
    call Call_022_5254
    jr c, jr_022_690f

    call Call_022_5160
    call Call_022_52b4
    call $2fe1
    call Call_022_5a23
    call Call_022_523c
    ld hl, $c5a5
    ld de, $6926
    call $1078
    call $31f6
    call $0a36

jr_022_690f:
    call Call_022_5448
    call Call_022_51fe
    call Call_022_7677
    ret


    cp d
    ret


    ld [de], a
    db $e3
    adc a
    rra
    cp c
    cp h
    rst $08
    cp l
    or [hl]
    and $50
    ld [de], a
    db $e3
    adc a
    rra
    cp c
    cp h
    rst $08
    cp h
    ld [hl+], a
    ld d, b
    ld a, [$cf74]
    push af
    xor a
    ld [$d032], a
    ld a, $01
    ld [$d033], a
    ld a, [$d034]
    ld [$d0e3], a

jr_022_6943:
    call Call_022_77bd
    ld a, [$cf73]
    and $01
    jr nz, jr_022_6953

    ld a, c
    and a
    jr nz, jr_022_6943

    pop af
    ret


jr_022_6953:
    call Call_022_5160
    pop af
    cp c
    jr z, jr_022_6995

    push bc
    ld [$cf74], a
    call Call_022_531b
    push bc
    ld h, b
    ld l, c
    ld de, $d002
    ld bc, $0025
    call $3026
    pop de
    pop bc
    ld a, c
    ld [$cf74], a
    call Call_022_531b
    push bc
    ld h, b
    ld l, c
    ld bc, $0025
    call $3026
    pop de
    ld hl, $d002
    ld bc, $0025
    call $3026
    ld de, $0020
    call $3c4e
    ld de, $0020
    call $3c4e

jr_022_6995:
    call $2fe1
    ret


    ld hl, $69c9
    call $1d35
    ld c, $01

jr_022_69a1:
    call Call_022_69ce
    jr c, jr_022_69bb

    push bc
    push de
    call $1d6e
    pop de
    dec e
    ld a, e
    ld hl, $69c5
    rst $28
    call Call_022_51fe
    call Call_022_5b28
    pop bc
    jr jr_022_69a1

jr_022_69bb:
    call Call_022_5209
    call $1c17
    call Call_022_520f
    ret


    ld a, [bc]
    ld l, d
    dec sp
    ld l, e
    ld b, b
    inc b
    dec bc
    dec bc
    ld [de], a

Call_022_69ce:
    push bc
    ld de, $c4fb
    ld b, $06
    ld c, $06
    call Call_022_5b3b
    pop bc
    ld a, c
    ld hl, $69f2
    call Call_022_5d5e
    ld hl, $6a09
    call Call_022_5d85
    jr c, jr_022_69ed

    ld c, a
    ld e, a
    and a
    ret


jr_022_69ed:
    ld c, a
    ld e, $00
    scf
    ret


    ld b, b
    inc b
    dec bc
    dec bc
    ld [de], a
    ld a, [$0169]
    and b
    inc bc
    call $bcde
    pop hl
    or e
    ld d, b
    ret nc

    reti


    ld d, b
    call nc, $d9d2
    ld d, b
    ret


    ld a, $01
    ld [$d02f], a
    ld [$d011], a
    xor a
    ld [$d010], a
    ld [$d012], a
    call Call_022_5160
    ld hl, $a603
    ld de, $d008
    call Call_022_5381
    call $2fe1
    call Call_022_51fe
    call $31f3
    call Call_022_53cc
    call Call_022_5807
    call Call_022_5492
    call Call_022_54ca

jr_022_6a3a:
    call Call_022_587f
    call Call_022_5a2e
    call Call_022_51ab

jr_022_6a43:
    call Call_022_5b97
    call Call_022_5c67
    jr c, jr_022_6a61

    ld a, b
    and a
    jr z, jr_022_6a43

    call $2009
    call Call_022_5448
    ld a, [$d011]
    dec a
    ld hl, $6a6d
    rst $28
    jr nc, jr_022_6a3a

    jr jr_022_6a69

jr_022_6a61:
    call Call_022_5448
    call Call_022_6b11
    jr nc, jr_022_6a3a

jr_022_6a69:
    call Call_022_5448
    ret


    ld [hl], e
    ld l, d
    or [hl]
    ld l, d
    ld de, $fa6b
    ld [hl], h
    rst $08
    ld e, a
    push de
    call Call_022_51de
    ld de, $d008
    ld c, $00
    ld a, $5e
    ld hl, $668f
    rst $08
    jr c, jr_022_6a9d

    ld hl, $d008
    ld a, $ff
    ld bc, $0008
    call $3041
    ld h, d
    ld l, e
    ld de, $d008
    ld c, $08
    call Call_022_5193

jr_022_6a9d:
    call Call_022_51fe
    call $31f3
    call Call_022_53cc
    call Call_022_5807
    call Call_022_5492
    call Call_022_54ca
    pop de
    ld a, e
    ld [$cf74], a
    and a
    ret


    call Call_022_5a23
    ld hl, $d008
    call Call_022_5b45
    jr nc, jr_022_6b00

    call Call_022_5160
    ld de, $d008
    ld hl, $a603
    ld c, $08
    call Call_022_5185
    jr z, jr_022_6aeb

    ld hl, $d008
    ld de, $a603
    ld c, $08
    call Call_022_5193
    ld hl, $c5a5
    ld de, $6af0
    call $1078
    call $31f6
    call $0a36

jr_022_6aeb:
    call $2fe1
    scf
    ret


    or c
    ret nz

    rst $10
    cp h
    or d
    ld a, a
    jp nc, $bcb2

    ld c, d
    inc sp
    or a
    rst $08
    cp h
    ld [hl+], a
    ld d, b

jr_022_6b00:
    ld de, $511c
    ld hl, $c5a5
    call $1078
    call $31f6
    call Call_022_5235
    and a
    ret


Call_022_6b11:
    call Call_022_5160
    ld hl, $a603
    ld de, $d008
    ld c, $08
    call Call_022_5185
    call $2fe1
    jr z, jr_022_6b37

    call Call_022_5a23
    ld hl, $c5a5
    ld de, $5135
    call $1078
    ld a, $02
    call Call_022_5254
    jr c, jr_022_6b39

jr_022_6b37:
    scf
    ret


jr_022_6b39:
    and a
    ret


jr_022_6b3b:
    call Call_022_51fe
    call $31f3
    call Call_022_53cc
    call Call_022_5807
    call Call_022_5492
    call Call_022_54ca
    call Call_022_5160
    ld hl, $a603
    ld de, $d008
    call Call_022_5381
    call $2fe1
    call Call_022_587f
    call Call_022_5160
    ld hl, $c5a5
    ld bc, $a007
    call Call_022_5a0c
    call $2fe1
    call Call_022_51ab
    call Call_022_6b77
    jr c, jr_022_6b3b

    ret


Call_022_6b77:
jr_022_6b77:
    call $354b
    bit 0, c
    jr nz, jr_022_6b8e

    bit 1, c
    jr nz, jr_022_6b8e

    bit 3, c
    jr z, jr_022_6b77

    call $2009
    call Call_022_5d0d
    scf
    ret


jr_022_6b8e:
    call $2009
    and a
    ret


    call $31f3
    call $1d6e
    ld a, $41
    ld hl, $5688
    rst $08
    call $300b
    call Call_022_51fe
    call Call_022_5b28
    ret


    ld a, $02
    call Call_022_794a
    ld a, $01
    ld [$d032], a

Jump_022_6bb3:
    call Call_022_51fe
    call Call_022_7677

jr_022_6bb9:
    call Call_022_77bd
    jr z, jr_022_6bdf

    ld a, c
    ld [$cf74], a
    call Call_022_5160
    call Call_022_531b
    ld hl, $0011
    add hl, bc
    call Call_022_5b45
    call $2fe1
    jr c, jr_022_6be2

    ld de, $0019
    call $3c4e
    call $2fe1
    jr jr_022_6bb9

jr_022_6bdf:
    xor a
    ld c, a
    ret


jr_022_6be2:
    call $2009

jr_022_6be5:
    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    call Call_022_531b
    call Call_022_5844
    call $2fe1
    call Call_022_5160
    call Call_022_539a
    call Call_022_5856
    ld hl, $c5a5
    call Call_022_59fe
    call $2fe1
    call Call_022_51ab

jr_022_6c0f:
    call Call_022_5a57
    jr c, jr_022_6c0f

    and a
    jr z, jr_022_6be5

    cp $02
    jr z, jr_022_6c0f

    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld hl, $c5b9
    ld de, $6c3b
    call $1078
    ld a, $01
    call Call_022_525e
    jp c, Jump_022_6bb3

    ld a, [$cf74]
    ld c, a
    ret


    cp d
    dec h
    call nz, $30d3
    pop bc
    dec e
    inc sp
    sbc $dc
    db $dd
    ld c, [hl]
    or [hl]
    cp c
    rst $08
    cp l
    or [hl]
    and $50
    xor a
    ld [$cf74], a
    push de
    call Call_022_51de
    call $31f3
    call Call_022_53cc
    pop bc
    call Call_022_5844
    call Call_022_539a
    call Call_022_5856
    ld hl, $c5a5
    call Call_022_59fe
    call Call_022_51ab
    ret


    push de
    ld a, $03
    call Call_022_794a

jr_022_6c76:
    call Call_022_51fe
    call Call_022_7677

Jump_022_6c7c:
    call Call_022_77bd
    jr z, jr_022_6cf0

    ld a, c
    ld [$d02f], a
    ld [$cf74], a
    call Call_022_5160
    call Call_022_531b
    call Call_022_532d
    call $2fe1
    jr nc, jr_022_6cb0

    call Call_022_5160
    ld hl, $0011
    add hl, bc
    call Call_022_5b45
    call $2fe1
    jr nc, jr_022_6ccc

    call Call_022_5160
    call Call_022_52b7
    call $2fe1
    jr jr_022_6ccc

jr_022_6cb0:
    call Call_022_6d0b
    jr c, jr_022_6c76

    and a
    jr nz, jr_022_6ccc

    call Call_022_5160
    ld h, b
    ld l, c
    ld d, $00
    ld e, $06
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld c, $1f
    call Call_022_5193
    jr jr_022_6ce4

jr_022_6ccc:
    pop hl
    call Call_022_5160
    ld d, b
    ld e, c
    ld c, $06
    call Call_022_5193
    ld a, $06
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld c, $1f
    call Call_022_5193

jr_022_6ce4:
    call $2fe1
    call $0e51
    ld a, [$d02f]
    ld c, a
    and a
    ret


jr_022_6cf0:
    ld hl, $6d06
    call $1057
    ld a, $02
    call Call_022_5259
    jp c, Jump_022_6c7c

    call $0e51
    pop de
    ld c, $00
    scf
    ret


    ld d, $4a
    ld d, l
    ld [hl], c
    ld d, b

Call_022_6d0b:
jr_022_6d0b:
    ld a, [$cf74]
    ld [$d02f], a
    call Call_022_51de
    call $31f3
    call Call_022_53cc
    call Call_022_5160
    call Call_022_531b
    push bc
    call Call_022_5844
    call Call_022_539a
    call Call_022_5856
    ld hl, $c5a5
    call Call_022_59fe
    call $2fe1
    call Call_022_51ab
    pop bc

jr_022_6d37:
    push bc
    call Call_022_5a57
    pop bc
    jr c, jr_022_6d37

    and a
    jr z, jr_022_6d0b

    cp $02
    jr z, jr_022_6d37

    call Call_022_523c
    push bc
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld de, $6d89
    ld hl, $c5b9
    call $1078
    ld a, $02
    call Call_022_525e
    jr c, jr_022_6d87

    call Call_022_523c
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld de, $6d9c
    ld hl, $c5b9
    call $1078
    ld a, $01
    call Call_022_525e
    jr c, jr_022_6d84

    ld a, $00
    jr jr_022_6d86

jr_022_6d84:
    ld a, $01

jr_022_6d86:
    and a

jr_022_6d87:
    pop bc
    ret


    cp d
    dec h
    jp nc, $bcb2

    rra
    cp c
    cp h
    jp $b24e


    jp c, $b4b6

    rst $08
    cp l
    or [hl]
    and $50
    or l
    call nz, $30d3
    pop bc
    dec h
    push bc
    rst $08
    or h
    db $dd
    ld c, [hl]
    ret


    cp d
    cp h
    jp $b57f


    or a
    rst $08
    cp l
    or [hl]
    and $50
    call Call_022_51de
    call Call_022_6262
    push af
    call Call_022_51de
    pop af
    ret


    call Call_022_5160
    ld hl, $a603
    call Call_022_5b45
    call $2fe1
    ret


    call Call_022_5160
    call Call_022_73b0
    call $2fe1
    ret nc

    cp $02
    ret z

    scf
    ret


    ld hl, $dcd8
    ld a, [hl]
    cp $fa
    jr nz, jr_022_6dee

    call $2c7d
    ld de, $0326
    ld b, $01
    call $2e6f

jr_022_6dee:
    ret


    call $2c7d
    ld de, $0328
    ld b, $02
    call $2e6f
    ld a, c
    and a
    jr nz, jr_022_6e2f

    ld a, $18
    ld [$d106], a
    ld hl, $d892
    call $2f79
    jr c, jr_022_6e24

    ld a, [$dcd7]
    ld b, a
    inc b

jr_022_6e10:
    dec b
    jr z, jr_022_6e2f

    ld a, b
    dec a
    ld [$d109], a
    push bc
    ld a, $01
    call $3917
    pop bc
    ld a, [hl]
    cp $18
    jr nz, jr_022_6e10

jr_022_6e24:
    call $2c7d
    ld de, $0328
    ld b, $01
    call $2e6f

jr_022_6e2f:
    ret


    push de
    push bc
    call $2c7d
    ld a, h
    cp $58
    jr nz, jr_022_6e4a

    ld a, l
    cp $e8
    jr nz, jr_022_6e4a

    ld de, $0329
    ld b, $01
    call $2e6f
    scf
    jr jr_022_6e4b

jr_022_6e4a:
    and a

jr_022_6e4b:
    pop bc
    pop de
    ret


    push hl
    push de
    call $2c7d
    ld a, h
    cp $58
    jr nz, jr_022_6e65

    ld a, l
    cp $d0
    jr nz, jr_022_6e65

    ld de, $0327
    ld b, $01
    call $2e6f

jr_022_6e65:
    pop de
    pop hl
    ret


    ld a, [$c2dd]
    ld hl, $6ed5
    and a
    jr z, jr_022_6e79

    ld d, $00
    ld e, $05

jr_022_6e75:
    add hl, de
    dec a
    jr nz, jr_022_6e75

jr_022_6e79:
    call $1d35
    xor a
    ldh [$d4], a
    call $1cbb
    call $1ad2
    call $321c
    call $1cfd
    inc hl
    ld d, $00
    ld e, $14
    add hl, de
    add hl, de
    ld a, [$c2dd]
    ld c, a
    ld de, $6ebc
    and a
    jr z, jr_022_6ea5

jr_022_6e9c:
    ld a, [de]
    inc de
    cp $ff
    jr nz, jr_022_6e9c

    dec c
    jr nz, jr_022_6e9c

jr_022_6ea5:
    call Call_022_6f09
    ld bc, $0939
    add hl, bc
    call Call_022_6ee9
    call $3200
    call $0a36
    call $2009
    call $1c17
    ret


    ld [$0444], sp
    nop
    ld l, $08
    rst $38
    ld h, $20
    inc c
    ld c, $46
    rst $38
    ld c, h
    nop
    ld b, [hl]
    ld [$ff42], sp
    ld c, $2c
    ld h, h
    inc l
    ld c, $ff
    ld b, b
    inc b
    inc bc
    add hl, bc
    db $10
    ld b, b
    inc b
    inc b
    add hl, bc
    rrca
    ld b, b
    inc b
    inc b
    add hl, bc
    rrca
    ld b, b
    inc b
    inc b
    add hl, bc
    rrca

Call_022_6ee9:
jr_022_6ee9:
    ld a, [de]
    cp $ff
    ret z

    cp $60
    ld a, $0d
    jr c, jr_022_6ef5

    ld a, $05

jr_022_6ef5:
    call Call_022_6efd
    inc hl
    inc hl
    inc de
    jr jr_022_6ee9

Call_022_6efd:
    push hl
    ld [hl+], a
    ld [hl-], a
    ld b, $00
    ld c, $14
    add hl, bc
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


Call_022_6f09:
    push hl
    push de

jr_022_6f0b:
    ld a, [de]
    cp $ff
    jr z, jr_022_6f19

    ld c, a
    call Call_022_6f1c
    inc hl
    inc hl
    inc de
    jr jr_022_6f0b

jr_022_6f19:
    pop de
    pop hl
    ret


Call_022_6f1c:
    push hl
    ld a, c
    cp $60
    jr z, jr_022_6f3b

    cp $62
    jr z, jr_022_6f4b

    cp $64
    jr z, jr_022_6f5b

    ld [hl+], a
    inc a
    ld [hl-], a
    dec a
    ld b, $00
    ld c, $14
    add hl, bc
    ld c, $10
    add c
    ld [hl+], a
    inc a
    ld [hl], a
    pop hl
    ret


jr_022_6f3b:
    ld [hl], $5b
    inc hl
    ld [hl], $5c
    ld bc, $0013
    add hl, bc
    ld [hl], $4d
    inc hl
    ld [hl], $5d
    pop hl
    ret


jr_022_6f4b:
    ld [hl], $4e
    inc hl
    ld [hl], $4f
    ld bc, $0013
    add hl, bc
    ld [hl], $5e
    inc hl
    ld [hl], $5f
    pop hl
    ret


jr_022_6f5b:
    ld [hl], $02
    inc hl
    ld [hl], $03
    ld bc, $0013
    add hl, bc
    ld [hl], $03
    inc hl
    ld [hl], $02
    pop hl
    ret


    xor a
    ld [$cf76], a
    ld hl, $6fa9
    call $1d3c
    ld a, [$dc4a]
    ld c, a
    ld a, $2e
    ld hl, $4f8f
    rst $08
    ld a, [$cf83]
    add c
    add $02
    ld [$cf85], a
    call $1c00
    call $1e5d
    ld a, $12
    ld hl, $6e5e
    rst $08
    ld b, $00
    ld a, [$cf74]
    ld c, a
    ld a, [$dc4a]
    and $03
    cp c
    jr nz, jr_022_6fa4

    ld b, $01

jr_022_6fa4:
    ld a, b
    ld [$c2dd], a
    ret


    ld b, b
    nop
    nop
    rlca
    ld a, [bc]
    or d
    ld l, a
    ld bc, $8100
    nop
    cp b
    ld l, a
    cp l
    ld l, a
    inc bc
    nop
    ld bc, $ff02
    push de
    ld a, [$dc4a]
    and $f0
    ld c, a
    ld a, [$cf74]
    add c
    ld c, a
    ld a, $2e
    ld hl, $4f8f
    rst $08
    pop hl
    call $1078
    ret


    xor a
    ld [$d0e4], a
    ld a, $01
    ld [$cf74], a
    call Call_022_70d6
    call Call_022_7090
    ld hl, $7072
    call $1057
    jr jr_022_6ff1

jr_022_6feb:
    ld hl, $7072
    call $105a

jr_022_6ff1:
    call $045a
    call $1ad2
    call Call_022_7097
    call $70e2
    jr z, jr_022_705f

    ld [$cf75], a
    call Call_022_7154
    ld a, [hl]
    ld [$d265], a
    call $3468
    ld hl, $7077
    call $105a
    call $1dcf
    jr c, jr_022_6feb

    ld a, [$cf75]
    call Call_022_7154
    inc hl
    ld a, [hl-]
    ld c, a
    ld a, [$dc4b]
    cp c
    jr c, jr_022_7047

    ld a, [hl+]
    push hl
    ld [$d106], a
    ld a, $01
    ld [$d10c], a
    ld hl, $d892
    call $2f66
    pop hl
    jr nc, jr_022_704c

    ld a, [hl]
    ld c, a
    ld a, [$dc4b]
    sub c
    ld [$dc4b], a
    call Call_022_7097
    jr jr_022_7051

jr_022_7047:
    ld hl, $7081
    jr jr_022_705a

jr_022_704c:
    ld hl, $7086
    jr jr_022_705a

jr_022_7051:
    ld de, $0022
    call $3c23
    ld hl, $707c

jr_022_705a:
    call $105a
    jr jr_022_6feb

jr_022_705f:
    call $1c17
    call $1c17
    ld hl, $708b
    call $1057
    call $0a36
    call $2009
    ret


    ld d, $9f
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $bc
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $d1
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $e0
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $ff
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $1a
    ld e, c
    ld [hl], c
    ld d, b

Call_022_7090:
    ld hl, $70d1
    call $1d35
    ret


Call_022_7097:
    ld de, $dc4b
    call Call_022_709e
    ret


Call_022_709e:
    push de
    xor a
    ldh [$d4], a
    ld hl, $70d1
    call $1d3c
    call $1cbb
    call $1ad2
    call $1cfd
    ld bc, $0015
    add hl, bc
    ld de, $70ca
    call $1078
    ld h, b
    ld l, c
    inc hl
    ld a, $7f
    ld [hl+], a
    ld [hl-], a
    pop de
    ld bc, $0102
    call $3198
    ret


    adc a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld d, b
    ld b, b
    dec bc
    nop
    dec c
    dec bc

Call_022_70d6:
    ld hl, $70dd
    call $1d35
    ret


    ld b, b
    nop
    nop
    dec bc
    ld de, $1321
    ld [hl], c
    call $1d3c
    ld a, [$cf74]
    ld [$cf88], a
    xor a
    ld [$cf76], a
    ldh [$d4], a
    call $352f
    call $1ad2
    call $350c
    ld a, [$cf74]
    ld c, a
    ld a, [$cfa9]
    ld [$cf74], a
    ld a, [$cf73]
    cp $02
    jr z, jr_022_7111

    ld a, c
    and a
    ret nz

jr_022_7111:
    xor a
    ret


    ld b, b
    ld bc, $0901
    db $10
    inc e
    ld [hl], c
    ld bc, $1000
    inc b
    dec c
    ld bc, $2922
    ld [hl], c
    ld [hl+], a
    inc [hl]
    ld [hl], c
    ld [hl+], a
    ld b, a
    ld [hl], c
    add hl, bc
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$ff09], sp
    ld a, [$cf74]
    call Call_022_7154
    ld a, [hl]
    push de
    ld [$d265], a
    call $3468
    pop hl
    call $1078
    ret


    ld a, [$cf74]
    call Call_022_7154
    inc hl
    ld a, [hl]
    ld c, $f6
    add c
    ld [de], a
    ret


Call_022_7154:
    dec a
    ld hl, $715e
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    ret


    ld [bc], a
    ld bc, HeaderROMSize
    inc h
    ld bc, $0120
    dec de
    ld bc, $0127
    dec hl
    ld bc, $05a3
    db $76
    add hl, bc
    ld a, [$c2dd]
    cp $02
    ret nc

    ld bc, $dcd7
    ld a, [bc]
    ld hl, $0000
    call Call_022_71ce
    ld a, [bc]
    ld c, a
    ld de, $0030

jr_022_7185:
    ld a, [hl]
    cp $93
    jr z, jr_022_7194

    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    dec c
    jr nz, jr_022_7185

    ret


jr_022_7194:
    push hl
    ld a, [$c2dd]
    ld hl, $71c4
    ld bc, $0005
    call $30fe
    pop de
    inc de
    inc de

jr_022_71a4:
    ld a, [hl]
    and a
    ret z

    push hl
    push de
    ld [de], a
    dec a
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    ld hl, $0015
    add hl, de
    ld [hl], a
    pop de
    pop hl
    inc de
    inc hl
    jr jr_022_71a4

    inc hl
    ld d, [hl]
    rst $28
    push af
    nop
    inc hl
    dec hl
    ld d, [hl]
    rst $28
    nop

Call_022_71ce:
    ld de, $dcdf
    add hl, de
    and a
    jr z, jr_022_71df

    dec a
    ret z

    ld de, $0030

jr_022_71da:
    add hl, de
    dec a
    jr nz, jr_022_71da

    ret


jr_022_71df:
    scf
    ret


    ld de, $71ed
    call Call_022_725b
    ret z

    call Call_022_7231
    scf
    ret


    ld [bc], a
    ld a, [c]
    ld [hl], c
    or $71
    cp e
    ld [hl], d
    pop bc
    ld [hl], d
    db $fc
    ld [hl], c
    dec a
    ld [hl], d
    ld b, d
    ld [hl], d
    ld d, $37
    ld e, c
    ld [hl], c
    ld d, b
    ld hl, $d086
    ld [hl], $f9
    inc hl
    ld [hl], $50
    ld de, $7215
    call Call_022_725b
    ret z

    call Call_022_7231
    scf
    ret


    inc b
    ld a, [de]
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    jp c, $e272

    ld [hl], d
    ld a, [hl+]
    ld [hl], e
    ld sp, $2c73
    ld [hl], d
    ld b, a
    ld [hl], d
    ld c, h
    ld [hl], d
    ld d, c
    ld [hl], d
    ld d, [hl]
    ld [hl], d
    ld d, $44
    ld e, c
    ld [hl], c
    ld d, b

Call_022_7231:
    ld hl, $7238
    call $1057
    ret


    ld d, $62
    ld e, c
    ld [hl], c
    ld d, b
    ld d, $83
    ld e, c
    ld [hl], c
    ld d, b
    ld d, $a3
    ld e, c
    ld [hl], c
    ld d, b
    ld d, $c3
    ld e, c
    ld [hl], c
    ld d, b
    ld d, $e5
    ld e, c
    ld [hl], c
    ld d, b
    ld d, $13
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $42
    ld e, d
    ld [hl], c
    ld d, b

Call_022_725b:
    ld bc, $0000

jr_022_725e:
    call Call_022_726c
    call c, Call_022_728e
    call Call_022_7276
    jr nz, jr_022_725e

    ld a, b
    and a
    ret


Call_022_726c:
    push de
    push bc
    call Call_022_727a
    ld a, c
    rst $28
    pop bc
    pop de
    ret


Call_022_7276:
    inc c
    ld a, [de]
    cp c
    ret


Call_022_727a:
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ret


Call_022_7281:
    inc de
    inc de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ret


Call_022_728a:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_022_728e:
    push de
    push bc
    ld a, b
    and a
    call z, Call_022_729d
    pop bc
    call Call_022_72a9
    ld b, $01
    pop de
    ret


Call_022_729d:
    push de
    call Call_022_7281
    call Call_022_728a
    call $1057
    pop de
    ret


Call_022_72a9:
    push bc
    call Call_022_7281
    inc hl
    inc hl
    ld b, $00
    add hl, bc
    add hl, bc
    call Call_022_728a
    call $1057
    pop bc
    ret


    ld a, [$dcd7]
    cp $03
    ret


    ld hl, $dcd7
    ld a, [hl+]
    ld b, $00
    ld c, a

jr_022_72c8:
    ld a, [hl+]
    cp $fd
    jr z, jr_022_72ce

    inc b

jr_022_72ce:
    dec c
    jr nz, jr_022_72c8

    ld a, [$dcd7]
    cp b
    ret z

    ld a, b
    cp $03
    ret


    ld a, [$dcd7]
    cp $03
    ret z

    scf
    ret


    ld hl, $dcdf
    call Call_022_72e9
    ret


Call_022_72e9:
    ld de, $dcd7
    ld a, [de]
    inc de
    dec a
    jr z, jr_022_7314

    ld b, a

jr_022_72f2:
    push hl
    push de
    ld c, b
    call Call_022_7322
    jr z, jr_022_730c

    ld a, [hl]
    and a
    jr z, jr_022_730c

jr_022_72fe:
    call Call_022_731a
    call Call_022_7322
    jr z, jr_022_7309

    cp [hl]
    jr z, jr_022_7316

jr_022_7309:
    dec c
    jr nz, jr_022_72fe

jr_022_730c:
    pop de
    pop hl
    call Call_022_731a
    dec b
    jr nz, jr_022_72f2

jr_022_7314:
    and a
    ret


jr_022_7316:
    pop de
    pop hl
    scf
    ret


Call_022_731a:
    push bc
    ld bc, $0030
    add hl, bc
    inc de
    pop bc
    ret


Call_022_7322:
    push bc
    ld b, a
    ld a, [de]
    cp $fd
    ld a, b
    pop bc
    ret


    ld hl, $dce0
    call Call_022_72e9
    ret


    ld hl, $dcd7
    ld a, [hl+]
    ld c, a

jr_022_7336:
    ld a, [hl+]
    cp $fd
    jr z, jr_022_7340

    dec c
    jr nz, jr_022_7336

    and a
    ret


jr_022_7340:
    scf
    ret


    call $2c7d
    ld d, h
    ld e, l
    xor a

jr_022_7348:
    push af
    ld hl, $7354
    rst $28
    pop af
    inc a
    cp $03
    jr nz, jr_022_7348

    ret


    ld e, d
    ld [hl], e
    ld e, e
    ld [hl], e
    ld e, h
    ld [hl], e
    ret


    ret


    ret


    ld a, h
    cp d
    ret nz

    ld a, l
    cp e
    ret


    push bc
    ld a, $41
    ld hl, $632f
    rst $08
    pop bc
    ret


Call_022_736c:
    push bc
    ld h, b
    ld l, c
    ld bc, $0004
    ld a, $ff
    call $3041
    pop bc
    ret


Call_022_7379:
    push bc
    ld a, c
    add e
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    ld d, a
    pop bc
    ret


Call_022_7385:
    push bc
    ld a, c
    add e
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, d
    ld [bc], a
    pop bc
    ret


Call_022_7391:
    push bc
    ld e, $00
    ld d, $04

jr_022_7396:
    ld a, [bc]
    inc bc
    cp $ff
    jr z, jr_022_73a2

    inc e
    dec d
    jr nz, jr_022_7396

    dec e
    scf

jr_022_73a2:
    pop bc
    ret


Call_022_73a4:
    push de
    push bc
    ld d, b
    ld e, c
    ld c, $04
    call Call_022_5185
    pop bc
    pop de
    ret


Call_022_73b0:
    ld bc, $a037
    ld a, [$a60b]
    and a
    jr z, jr_022_73c2

    cp $03
    jr nc, jr_022_73c2

    call Call_022_7391
    jr c, jr_022_73c9

jr_022_73c2:
    call Call_022_736c
    xor a
    ld [$a60b], a

jr_022_73c9:
    ld a, [$a60b]
    ret


Call_022_73cd:
    push de
    push bc
    ld e, $04

jr_022_73d1:
    ld a, [bc]
    inc bc
    call Call_022_598b
    inc hl
    dec e
    jr nz, jr_022_73d1

    pop bc
    pop de
    ret


Call_022_73dd:
    push de
    push bc
    call $354b
    ld a, c
    pop bc
    pop de
    bit 0, a
    jr nz, jr_022_73f7

    bit 1, a
    jr nz, jr_022_740e

    bit 6, a
    jr nz, jr_022_7429

    bit 7, a
    jr nz, jr_022_7443

    and a
    ret


jr_022_73f7:
    ld a, e
    cp $03
    jr z, jr_022_7407

    inc e
    ld d, $00
    call Call_022_7385
    xor a
    ld [$d010], a
    ret


jr_022_7407:
    call $2009
    ld d, $00
    scf
    ret


jr_022_740e:
    ld a, e
    and a
    jr nz, jr_022_741e

    call $2009
    ld d, $ff
    call Call_022_7385
    ld d, $01
    scf
    ret


jr_022_741e:
    ld d, $ff
    call Call_022_7385
    dec e
    xor a
    ld [$d010], a
    ret


jr_022_7429:
    call Call_022_7379
    ld a, d
    cp $0a
    jr c, jr_022_7433

    ld d, $09

jr_022_7433:
    inc d
    ld a, d
    cp $0a
    jr c, jr_022_743b

    ld d, $00

jr_022_743b:
    call Call_022_7385
    xor a
    ld [$d010], a
    ret


jr_022_7443:
    call Call_022_7379
    ld a, d
    cp $0a
    jr c, jr_022_744d

    ld d, $00

jr_022_744d:
    ld a, d
    dec d
    and a
    jr nz, jr_022_7454

    ld d, $09

jr_022_7454:
    call Call_022_7385
    xor a
    ld [$d010], a
    ret


Call_022_745c:
    call Call_022_736c
    xor a
    ld [$d010], a
    ld [$d012], a
    call Call_022_7391
    ld d, $00
    call Call_022_7385

jr_022_746e:
    call Call_022_523c
    call Call_022_7493
    call Call_022_74cc
    call Call_022_7518
    call Call_022_5b78
    push bc
    call Call_022_74fd
    call Call_022_5c44
    ld a, $01
    ldh [$d4], a
    pop bc
    call Call_022_73dd
    jr nc, jr_022_746e

    ld a, d
    and a
    ret z

    scf
    ret


Call_022_7493:
    push bc
    call Call_022_523c
    call Call_022_7521
    ld hl, $74a0
    pop bc
    rst $28
    ret


    and h
    ld [hl], h
    cp b
    ld [hl], h
    push bc
    push de
    call Call_022_74d8
    call $0fe8
    pop de
    pop bc
    call Call_022_74cc
    call Call_022_7518
    call Call_022_73cd
    ret


    push bc
    push de
    call Call_022_74ea
    call Call_022_5b3b
    pop de
    pop bc
    call Call_022_74cc
    call Call_022_7518
    call Call_022_73cd
    ret


Call_022_74cc:
    push bc
    ld hl, $7529
    call Call_022_750a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ret


Call_022_74d8:
    ld hl, $7529
    call Call_022_750a
    push hl
    inc hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_022_74ea:
    ld hl, $7529
    call Call_022_750a
    push hl
    inc hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ret


Call_022_74fd:
    ld hl, $752d
    call Call_022_750a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld d, a
    ret


Call_022_750a:
    ld a, [$d02e]
    and a
    ret z

    ld b, $00
    ld c, $08

jr_022_7513:
    add hl, bc
    dec a
    jr nz, jr_022_7513

    ret


Call_022_7518:
    push de
    ld d, $00
    ld e, $14
    add hl, de
    inc hl
    pop de
    ret


Call_022_7521:
    ld hl, $7530
    call Call_022_750a
    ld a, [hl]
    ret


    ld b, $c5
    ld bc, $2004
    ld c, c
    nop
    ld bc, $c4f7
    ld bc, $4804
    ld b, c
    nop
    nop

Call_022_7539:
    ld bc, $d017
    call Call_022_736c
    xor a
    ld [$d012], a
    ld [$d02e], a
    call Call_022_7493
    call Call_022_74fd
    ld e, $00
    call Call_022_5c44
    call $3238
    ret


Call_022_7555:
jr_022_7555:
    ld hl, $75ce
    call $1057
    ld bc, $d017
    call Call_022_745c
    jr c, jr_022_75c8

    call Call_022_5448
    ld bc, $d017
    call Call_022_7493
    ld bc, $d017
    call Call_022_7664
    jr nz, jr_022_757c

    ld hl, $75e2
    call $1057
    jr jr_022_7555

jr_022_757c:
    ld hl, $75d3
    call $1057
    ld bc, $d013
    call Call_022_745c
    jr c, jr_022_7555

    ld bc, $d017
    ld hl, $d013
    call Call_022_73a4
    jr z, jr_022_75a6

    call Call_022_5448
    ld bc, $d013
    call Call_022_7493
    ld hl, $75d8
    call $1057
    jr jr_022_757c

jr_022_75a6:
    call Call_022_5160
    ld hl, $d013
    ld de, $a037
    ld bc, $0004
    call $3026
    call $2fe1
    call Call_022_5448
    ld bc, $d013
    call Call_022_7493
    ld hl, $75dd
    call $1057
    and a

jr_022_75c8:
    push af
    call Call_022_5448
    pop af
    ret


    ld d, $87
    ld b, c
    ld l, a
    ld d, b
    ld d, $ac
    ld b, c
    ld l, a
    ld d, b
    ld d, $cf
    ld b, c
    ld l, a
    ld d, b
    ld d, $eb
    ld b, c
    ld l, a
    ld d, b
    ld d, $3e
    ld b, d
    ld l, a
    ld d, b

Call_022_75e7:
    ld bc, $d013
    call Call_022_736c
    xor a
    ld [$d012], a
    ld [$d02e], a
    call Call_022_7493
    call Call_022_51ab
    call Call_022_74fd
    ld e, $00
    call Call_022_5c44

jr_022_7602:
    ld hl, $7642
    call $1057
    ld bc, $d013
    call Call_022_745c
    jr c, jr_022_763c

    call Call_022_5448
    ld bc, $d013
    call Call_022_7493
    call Call_022_5160
    ld hl, $a037
    call Call_022_73a4
    call $2fe1
    jr z, jr_022_7635

    ld hl, $7647
    call $1057
    ld bc, $d013
    call Call_022_736c
    jr jr_022_7602

jr_022_7635:
    ld hl, $764c
    call $1057
    and a

jr_022_763c:
    push af
    call Call_022_5448
    pop af
    ret


    ld d, $51
    ld b, d
    ld l, a
    ld d, b
    ld d, $72
    ld b, d
    ld l, a
    ld d, b
    ld d, $88
    ld b, d
    ld l, a
    ld [$ce11], sp
    nop
    call $3c23
    call $3c55
    ld c, $08
    call $0468
    ld hl, $7663
    ret


    ld d, b

Call_022_7664:
    push bc
    ld de, $0004

jr_022_7668:
    ld a, [bc]
    cp $00
    jr nz, jr_022_766e

    inc d

jr_022_766e:
    inc bc
    dec e
    jr nz, jr_022_7668

    pop bc
    ld a, d
    cp $04
    ret


Call_022_7677:
    call $31f3
    call $0568
    call Call_022_7690
    call Call_022_76bb
    call Call_022_76ed
    call $058a
    call Call_022_51ab
    call $32f9
    ret


Call_022_7690:
    ld hl, $74b9
    ld de, $9000
    ld bc, $0160
    ld a, $5e
    call $0e8d
    ld hl, $7609
    ld de, $9610
    ld bc, $0010
    ld a, $5e
    call $0e8d
    ld hl, $7619
    ld de, $8ee0
    ld bc, $0010
    ld a, $5e
    call $0e8d
    ret


Call_022_76bb:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $76d5
    ld de, $d000
    ld bc, $0018
    call $3026
    pop af
    ldh [rSVBK], a
    call Call_022_549c
    ret


    rst $38
    ld a, a
    cp a
    ld [bc], a
    xor $0c
    nop
    nop
    rst $38
    ld a, a
    cp a
    ld [bc], a
    ld [hl], $45
    nop
    nop
    rst $38
    ld a, a
    cp a
    ld [bc], a
    ld b, $23
    nop
    nop

Call_022_76ed:
    ld hl, $cdd9
    ld bc, $012c
    xor a
    call $3041
    ld hl, $cef1
    ld bc, $0050
    ld a, $07
    call $3041
    ret


Call_022_7703:
    call Call_022_523c
    push hl
    ld a, $0c
    ld [hl+], a
    inc a
    call Call_022_773e
    inc a
    ld [hl], a
    pop hl
    push hl
    push bc
    ld de, $0014
    add hl, de

jr_022_7717:
    push hl
    ld a, $0f
    ld [hl+], a
    ld a, $7f
    call Call_022_773e
    ld a, $11
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_022_7717

    call Call_022_7732
    pop bc
    pop hl
    jr jr_022_7744

Call_022_7732:
    ld a, $12
    ld [hl+], a
    ld a, $13
    call Call_022_773e
    ld a, $14
    ld [hl], a
    ret


Call_022_773e:
    ld d, c

jr_022_773f:
    ld [hl+], a
    dec d
    jr nz, jr_022_773f

    ret


jr_022_7744:
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    xor a

jr_022_774d:
    push bc
    push hl

jr_022_774f:
    ld [hl+], a
    dec c
    jr nz, jr_022_774f

    pop hl
    ld de, $0014
    add hl, de
    pop bc
    dec b
    jr nz, jr_022_774d

    ret


Call_022_775d:
    call Call_022_523c
    ld hl, $c4a0
    ld a, $01
    ld bc, $0014
    call $3041
    ld hl, $c4b4
    ld a, $02
    ld [hl], a
    ld hl, $c4bd
    ld c, $0b
    call Call_022_7788
    ld hl, $c4b5
    ld a, $04
    ld e, $08

jr_022_7780:
    ld [hl+], a
    inc a
    dec e
    jr nz, jr_022_7780

    jr jr_022_779e

    ret


Call_022_7788:
jr_022_7788:
    ld a, $02
    ld [hl+], a
    dec c
    ret z

    ld a, $01
    ld [hl+], a
    dec c
    ret z

    ld a, $03
    ld [hl+], a
    dec c
    ret z

    ld a, $01
    ld [hl+], a
    dec c
    jr nz, jr_022_7788

    ret


jr_022_779e:
    ld hl, $cded
    ld a, $01
    ld [hl+], a
    ld hl, $cdf6
    ld e, $0b

jr_022_77a9:
    ld a, $02
    ld [hl+], a
    dec e
    ret z

    xor a
    ld [hl+], a
    dec e
    ret z

    ld a, $01
    ld [hl+], a
    dec e
    ret z

    xor a
    ld [hl+], a
    dec e
    jr nz, jr_022_77a9

    ret


Call_022_77bd:
    call Call_022_7855
    ld hl, $7867
    call $1d3c
    ld a, [$d030]
    ld [$cf88], a
    ld a, [$d031]
    ld [$d0e4], a
    ld a, [$d032]
    and a
    jr z, jr_022_77e0

    ld a, [$cf81]
    set 3, a
    ld [$cf81], a

jr_022_77e0:
    ld a, [$d0e3]
    and a
    jr z, jr_022_77ea

    dec a
    ld [$cf77], a

jr_022_77ea:
    ld hl, $c4c8
    ld b, $0b
    ld c, $12
    call Call_022_7703
    call Call_022_775d
    call $1ad2
    call Call_022_5209
    call $350c
    call Call_022_520f
    ld a, [$cf73]
    cp $02
    jr z, jr_022_7823

    cp $20
    jr nz, jr_022_7813

    call Call_022_7832
    jr jr_022_77ea

jr_022_7813:
    cp $10
    jr nz, jr_022_781c

    call Call_022_783e
    jr jr_022_77ea

jr_022_781c:
    ld a, [$cf74]
    cp $ff
    jr nz, jr_022_7824

jr_022_7823:
    xor a

jr_022_7824:
    ld c, a
    ld a, [$cfa9]
    ld [$d030], a
    ld a, [$d0e4]
    ld [$d031], a
    ret


Call_022_7832:
    ld a, [$d0e4]
    ld hl, $cf92
    sub [hl]
    jr nc, jr_022_784b

    xor a
    jr jr_022_784b

Call_022_783e:
    ld a, [$d0e4]
    ld hl, $cf92
    add [hl]
    cp $24
    jr c, jr_022_784b

    ld a, $24

jr_022_784b:
    ld [$d0e4], a
    ld a, [$cfa9]
    ld [$cf88], a
    ret


Call_022_7855:
    ld a, $28
    ld hl, $d002
    ld [hl+], a
    ld c, $28
    xor a

jr_022_785e:
    inc a
    ld [hl+], a
    dec c
    jr nz, jr_022_785e

    ld a, $ff
    ld [hl], a
    ret


    ld b, b
    inc bc
    ld bc, $120d
    ld [hl], b
    ld a, b
    ld bc, $3c00
    dec b
    inc bc
    ld bc, $0200
    ret nc

    ld [hl+], a
    add b
    ld a, b
    ld [hl+], a
    adc h
    ld a, b
    ld [hl+], a
    ret z

    ld a, b
    ld h, d
    ld l, e
    ld de, $cf74
    ld bc, $8102
    call $3198
    ret


    call Call_022_5160
    ld h, d
    ld l, e
    push hl
    ld de, $5116
    call Call_022_531b
    call Call_022_532d
    jr c, jr_022_78a3

    ld hl, $0000
    add hl, bc
    ld d, h
    ld e, l

jr_022_78a3:
    pop hl
    push hl
    call $1078
    pop hl
    ld d, $00
    ld e, $06
    add hl, de
    push hl
    ld de, $5116
    call Call_022_531b
    call Call_022_534a
    jr c, jr_022_78c0

    ld hl, $0006
    add hl, bc
    ld d, h
    ld e, l

jr_022_78c0:
    pop hl
    call $1078
    call $2fe1
    ret


    ld hl, $c5b8
    ld b, $02
    ld c, $12
    call $0fe8

jr_022_78d2:
    ld a, [$d033]
    ld b, $00
    ld c, a
    ld hl, $7903
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld hl, $c5e1
    call $1078
    ld hl, $c5a4
    ld a, $0f
    ld [hl], a
    ld hl, $c5b7

jr_022_78f1:
    ld a, $11
    ld [hl], a
    ld a, [$d0e4]
    cp $24
    ret c

    ld hl, $c5a4
    ld c, $12
    call Call_022_7732
    ret


jr_022_7903:
    dec bc
    ld a, c
    add hl, de
    ld a, c
    ld a, [hl+]
    ld a, c
    jr c, jr_022_7984

    jp nc, $bcb2

    db $dd
    ld a, a
    or h
    rst $10
    sbc $33
    cp b
    jr nc, jr_022_78d2

    or d
    ld d, b
    inc [hl]
    ret


    ld a, a
    jp nc, $bcb2

    call nz, $b27f
    jp c, $b4b6

    rst $08
    cp l
    or [hl]
    and $50
    or c
    or d
    jp Jump_022_7fdd


    or h
    rst $10
    sbc $33
    cp b
    jr nc, jr_022_78f1

    or d
    ld d, b
    or d
    jp c, Jump_022_7fd9

    call nz, $dbba
    db $dd
    ld a, a
    or h
    rst $10
    sbc $33
    cp b
    jr nc, jr_022_7903

    or d
    ld d, b

Call_022_794a:
    ld [$d033], a
    xor a
    ld [$d0e4], a
    ld [$d032], a
    ld [$d0e3], a
    ld [$d031], a
    ld a, $01
    ld [$d030], a
    ret


Call_022_7960:
    ld hl, $79ac
    call $1d35
    call Call_022_79e9
    jr c, jr_022_797a

    ld hl, $c4ab
    ld b, $06
    ld c, $07
    call Call_022_7703
    ld hl, $79b1
    jr jr_022_7987

jr_022_797a:
    ld hl, $c4ab
    ld b, $0a
    ld c, $07
    call Call_022_7703

jr_022_7984:
    ld hl, $79ca

jr_022_7987:
    ld a, $01
    call Call_022_5d5e
    ld hl, $79ab
    call Call_022_5d85
    call $1c07
    jr c, jr_022_799c

    call Call_022_799f
    jr nz, jr_022_799d

jr_022_799c:
    xor a

jr_022_799d:
    ld c, a
    ret


Call_022_799f:
    ld hl, $d002
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    ret


    ret


    ld b, b
    nop
    dec bc
    dec bc
    inc de
    ld b, b
    nop
    dec bc
    rlca
    inc de
    cp c
    ld a, c
    ld bc, $03a0
    call $bcde
    pop hl
    or e
    ld d, b
    or d
    jp c, $b4b6

    ld d, b
    call nc, $d9d2
    ld d, b
    ld b, b
    nop
    dec bc
    dec bc
    inc de
    jp nc, $0179

    and b
    dec b
    ret nc

    reti


    ld d, b
    call $bcde
    pop hl
    or e
    ld d, b
    or d
    jp c, $b4b6

    ld d, b
    cp c
    cp l
    ld d, b
    call nc, $d9d2
    ld d, b

Call_022_79e9:
    call Call_022_5160
    call Call_022_531b
    call Call_022_532d
    jr nc, jr_022_79f6

    jr jr_022_79ff

jr_022_79f6:
    ld hl, $0011
    add hl, bc
    call Call_022_5b45
    jr c, jr_022_7a08

jr_022_79ff:
    call Call_022_52b4
    and a
    ld de, $7a1c
    jr jr_022_7a0c

jr_022_7a08:
    ld de, $7a1f
    scf

jr_022_7a0c:
    push af
    ld hl, $d002

jr_022_7a10:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $ff
    jr nz, jr_022_7a10

    call $2fe1
    pop af
    ret


    ld [bc], a
    inc b
    rst $38
    ld bc, $0402
    inc bc
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

Jump_022_7fc3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_022_7fd9:
    nop
    nop
    nop
    nop

Jump_022_7fdd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
