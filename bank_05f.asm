; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

    call $0568
    ld hl, $9000
    ld bc, $0310
    xor a
    call $3041
    call $0e51
    call $0e5f
    ld hl, $4b83
    ld de, $c4a0
    ld bc, $cdd9
    ld a, $12

jr_05f_401e:
    push af
    ld a, $14
    push hl

jr_05f_4022:
    push af
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    jr nz, jr_05f_4022

    pop hl
    push bc
    ld bc, $0040
    add hl, bc
    pop bc
    pop af
    dec a
    jr nz, jr_05f_401e

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $4ff3
    ld de, $d000
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    ld hl, $4983
    ld de, $8300
    ld bc, $0200
    call $3026
    ld a, $01
    ldh [rVBK], a
    ld hl, $4083
    ld de, $9000
    ld bc, $0800
    call $3026
    ld hl, $4883
    ld de, $8800
    ld bc, $0100
    call $3026
    xor a
    ldh [rVBK], a
    call $058a
    ld a, $41
    ld hl, $4061
    rst $08
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
    jr c, jr_05f_40cf

    ld a, h
    ld b, h
    sub $ba
    cp $82

jr_05f_409d:
    add d
    cp $44
    ld a, h

jr_05f_40a1:
    jr c, jr_05f_40db

jr_05f_40a3:
    call z, $cc00
    nop

jr_05f_40a7:
    nop
    inc sp

jr_05f_40a9:
    nop
    inc sp

jr_05f_40ab:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    jr jr_05f_409d

    jr @-$16

    jr jr_05f_40a1

    jr jr_05f_40a3

    jr @-$16

    jr jr_05f_40a7

    jr jr_05f_40a9

    jr jr_05f_40ab

    jr jr_05f_40dc

    jr jr_05f_40de

    jr jr_05f_40e0

    jr jr_05f_40e2

    jr @+$19

    jr jr_05f_40e6

jr_05f_40cf:
    jr jr_05f_40e8

    jr jr_05f_40ea

    call z, $cc00
    nop
    nop
    inc sp
    nop
    inc sp

jr_05f_40db:
    nop

jr_05f_40dc:
    rst $38
    db $10

jr_05f_40de:
    rst $28
    cpl

jr_05f_40e0:
    ret nc

    rra

jr_05f_40e2:
    rst $28
    call z, $cc00

jr_05f_40e6:
    nop
    nop

jr_05f_40e8:
    inc sp
    nop

jr_05f_40ea:
    inc sp
    nop
    rst $38
    ld [$f4f7], sp
    dec bc
    ld hl, sp-$09
    call z, $cc00
    nop
    nop
    inc sp
    nop
    inc sp
    nop
    rst $38
    jr nz, jr_05f_40de

    db $d3
    inc l
    rst $20
    db $db
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    ld [$f4f7], sp
    dec bc
    ld hl, sp-$09
    jr jr_05f_4134

    jr jr_05f_4136

    jr jr_05f_4138

    jr jr_05f_413a

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_05f_4134:
    nop
    nop

jr_05f_4136:
    nop
    nop

jr_05f_4138:
    nop
    nop

jr_05f_413a:
    nop
    jr nz, jr_05f_415d

    cp $fe
    jr nz, jr_05f_4161

    jr z, jr_05f_416b

    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld hl, $4121
    ld b, c
    ld b, a
    ld b, a
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    rra
    rra

jr_05f_415d:
    ld [bc], a
    ld [bc], a
    inc b
    inc b

jr_05f_4161:
    adc a
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05f_416b:
    inc b
    inc b
    inc b
    inc b
    ccf
    ccf
    inc b
    inc b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    and b
    and b
    add sp, -$18
    ld [$8f08], sp
    adc a
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    adc b
    adc b
    ld [$0008], sp
    nop

jr_05f_4195:
    nop
    nop

jr_05f_4197:
    nop
    nop

jr_05f_4199:
    nop
    nop

jr_05f_419b:
    nop
    nop
    inc e
    inc e
    ld bc, $0101
    ld bc, $ff7f
    db $10
    rst $28
    cpl
    ret nc

    rra
    rst $28
    jr jr_05f_4195

    jr jr_05f_4197

    jr jr_05f_4199

    jr jr_05f_419b

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
    nop
    nop
    rst $38
    ld a, a
    rst $38
    jr jr_05f_41dc

    jr jr_05f_41de

    jr jr_05f_41e0

    jr jr_05f_41e2

    ld hl, sp-$09
    db $f4
    dec bc
    ld [$fef7], sp
    rst $38
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h

jr_05f_41dc:
    ld d, h
    ld l, h

jr_05f_41de:
    ld d, h
    ld l, h

jr_05f_41e0:
    ld d, h
    ld l, h

jr_05f_41e2:
    ld d, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld hl, sp-$01
    nop
    db $fd
    nop
    db $fd
    nop
    pop bc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $3e
    ld l, c
    ld l, c
    or c
    or c
    and c
    and c
    ld d, d
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    inc c
    inc c
    inc de
    inc de
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add h
    sub l
    sub l
    sub h
    sub h
    inc d
    inc d
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0111
    ld bc, $8181
    ld b, d
    ld b, d
    ld c, h
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld [$0808], sp
    ld [$0808], sp
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    add d
    add d
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $cc00
    nop
    nop
    inc sp
    nop
    inc sp
    ret nz

    rrca
    ret nc

    rrca
    cpl
    db $10
    rra
    cpl
    ret c

    ld [$08d8], sp
    jr jr_05f_42c1

    jr jr_05f_42c3

    ret c

    ld [$08d8], sp
    jr jr_05f_42c9

    jr jr_05f_42cb

    ret c

    ld [$08d8], sp
    jr jr_05f_42d1

    jr jr_05f_42d3

    rst $18
    rrca

jr_05f_42ad:
    rst $28
    nop

jr_05f_42af:
    db $10
    cpl

jr_05f_42b1:
    nop
    ccf

jr_05f_42b3:
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    ld l, h
    ld d, h
    rst $20
    db $db
    db $d3
    inc l
    jr nz, @-$1f

jr_05f_42c1:
    nop
    rst $38

jr_05f_42c3:
    jr jr_05f_42ad

    jr jr_05f_42af

    jr jr_05f_42b1

jr_05f_42c9:
    jr jr_05f_42b3

jr_05f_42cb:
    rra
    rst $28
    cpl
    ret nc

    db $10
    rst $28

jr_05f_42d1:
    nop
    rst $38

jr_05f_42d3:
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
    nop
    nop
    rst $38
    nop
    rst $38
    jr jr_05f_42fc

    jr jr_05f_42fe

    jr jr_05f_4300

    jr jr_05f_4302

    ld hl, sp-$09
    db $f4
    dec bc
    ld [$00f7], sp
    rst $38
    call z, $cc00
    nop
    nop
    inc sp
    nop
    inc sp
    nop

jr_05f_42fc:
    rst $38
    nop

jr_05f_42fe:
    rst $38
    nop

jr_05f_4300:
    rst $38
    nop

jr_05f_4302:
    rst $38
    ret nz

    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    rst $08
    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [$e0], a
    and b
    and b
    add sp, -$18
    cp $ff
    nop
    rst $38
    rst $38
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$7f]
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    cp $00
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    jp z, $c00f

    rrca
    nop
    ccf
    nop
    ccf
    ret nz

    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    adc $0f
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    call z, $cc00
    nop
    inc bc
    jr nc, jr_05f_439d

    jr nc, jr_05f_439c

jr_05f_439c:
    db $fc

jr_05f_439d:
    nop
    db $fc
    jp $e330


    ret nc

    ld c, a
    ld c, a
    add d
    add d
    adc a
    adc a
    add d
    add d
    adc [hl]
    adc [hl]
    sub e
    sub e
    sub d
    sub d
    ld c, h
    ld c, h
    jr nz, jr_05f_43d5

    jr nz, jr_05f_43d7

    jr nz, jr_05f_43d9

    jr nz, jr_05f_43db

    ld hl, $2121
    ld hl, $9292
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    jr nz, jr_05f_43ef

    jr z, @+$2a

    jr @+$1a

    inc b
    inc b

jr_05f_43d5:
    ccf
    ccf

jr_05f_43d7:
    add h
    add h

jr_05f_43d9:
    add h
    add h

jr_05f_43db:
    dec d
    dec d
    inc d
    inc d
    inc d
    inc d
    inc h
    inc h
    ld [$8f08], sp
    adc a
    add hl, bc
    add hl, bc
    ld de, $0111
    ld bc, $8181

jr_05f_43ef:
    ld b, d
    ld b, d
    ld c, h
    ld c, h
    ccf
    ccf
    adc b
    adc b
    ld [$3f08], sp
    ccf
    ld [$0808], sp
    ld [$0808], sp
    rlca
    rlca
    inc e
    inc e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8282
    inc e
    inc e
    inc e
    db $dd
    inc e
    db $dd
    nop
    pop bc
    inc d
    push de
    ld [$14c9], sp
    push de
    nop
    pop bc
    nop
    rst $38
    rst $38
    ld a, a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$fe]
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f0]
    adc a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    adc a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [$c0]
    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    rst $00
    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    nop
    db $fc
    nop
    db $fc
    inc bc
    ldh a, [$03]
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    inc bc
    ldh a, [$03]
    ldh a, [$30]
    inc l
    jr nc, jr_05f_44a3

    inc sp
    jr nz, jr_05f_44ad

    jr nz, jr_05f_44ac

    inc l
    jr nc, jr_05f_44ab

    inc sp
    jr nz, jr_05f_44b5

    jr nz, jr_05f_4484

jr_05f_4484:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05f_44a3:
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38

jr_05f_44ab:
    ld a, a

jr_05f_44ac:
    rst $38

jr_05f_44ad:
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ldh a, [rIF]

jr_05f_44b5:
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    rrca
    pop af
    rrca
    pop af
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    rrca
    push af
    rrca
    push af
    rra
    push af
    rra
    push af
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    di
    rrca
    rrca
    di
    rrca
    ei
    rrca
    ei
    rrca
    ei
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    push af
    rrca
    rrca
    push af
    rrca
    push af
    rrca
    push af
    rrca
    push af
    ldh a, [rIF]
    pop af
    rrca
    di
    rrca
    di
    rrca
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    ret nz

    rrca
    pop bc
    rrca
    ld bc, HeaderManufacturerCode
    ccf
    pop bc
    rrca
    pop bc
    rrca
    ld bc, HeaderManufacturerCode
    ccf
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    adc a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$f0]
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    rrca

jr_05f_452c:
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    ret nz

    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    ret nz

    rrca
    ret nz

    rrca
    nop
    ccf
    nop
    ccf
    jr nc, @+$2e

    jr nc, jr_05f_4573

    inc sp
    jr nz, jr_05f_457d

    jr nz, jr_05f_452c

    call c, $3cc0
    inc bc
    ldh a, [$03]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38
    ld a, a
    rst $38
    add c
    rst $38
    ld bc, $00ff
    rst $38

jr_05f_4573:
    ld bc, $01ff
    rst $38
    ld bc, $41ff
    rst $38
    ld a, a
    rst $38

jr_05f_457d:
    ld b, c
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $a1ff
    rst $38
    cp a
    rst $38
    and c
    rst $38
    ld bc, $00ff
    rst $38
    ld de, $11ff
    rst $38
    ld d, c
    rst $38
    ld d, c
    rst $38
    rst $18
    rst $38
    ld d, c
    rst $38
    ld de, $00ff
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    rst $28
    rst $38
    add hl, hl
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    rla
    db $fd
    rla
    db $fd
    rla
    db $fd
    rla
    db $fd
    rst $30
    rst $38
    dec d
    rst $38
    dec b
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ei
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    pop bc
    rrca
    pop bc
    rrca
    ld bc, HeaderManufacturerCode
    ccf
    pop bc
    rrca
    pop bc
    rrca
    ld bc, $003f
    ccf
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    call z, $cc03
    inc bc
    inc sp
    inc c
    inc sp
    inc c
    call z, $cc00
    nop
    inc sp
    nop
    inc sp
    nop
    call z, $cc33
    inc sp
    inc sp
    call z, $cc33
    call z, $cc00
    nop
    inc sp
    nop
    inc sp
    nop
    call z, $cc30
    jr nc, jr_05f_466b

    ret nz

    inc sp
    ret nz

    call z, $cc00
    nop
    inc sp
    nop
    inc sp
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38

jr_05f_466b:
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    adc b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    adc b
    rst $38
    rlca
    rst $38
    nop
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
    rst $38
    jr z, @+$01

    ld b, a
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

    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    jp $00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
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

    rst $20
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    jp $00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    call z, $02ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld sp, $0eff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    db $10
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    rst $38
    adc h
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    rlca
    rst $38
    nop
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
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    add $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    rst $18
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    rst $28
    rst $38
    sub b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    rst $30
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    rst $38
    ei
    rst $38
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    cp $ff
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $db
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, b
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
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
    jr @+$01

    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    and b
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld d, b
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    xor b
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
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
    nop
    nop
    nop
    cp $fe
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
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
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
    cp $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
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
    cp $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    daa
    ccf
    dec hl
    scf
    inc sp
    ccf
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    ld e, $1e
    daa
    ccf
    dec hl
    scf
    inc sp
    ccf
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    ld e, $1e
    daa
    ccf
    dec hl
    scf
    inc sp
    ccf
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    ld e, $1e
    daa
    ccf
    dec hl
    scf
    inc sp
    ccf
    ccf
    ccf
    ld e, $1e
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    cp $fe
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    cp $00
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05f_4b90

    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a

jr_05f_4b90:
    dec bc
    ld [bc], a
    dec bc
    ld b, $0b
    daa
    dec bc
    dec b
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    rlca
    dec bc
    ld sp, $000b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld hl, $0b0b
    dec bc
    inc c
    dec bc
    dec c
    dec bc
    ld c, $0b
    rrca
    dec bc
    db $10
    dec bc
    ld de, $040b
    dec bc
    rla
    rrca
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld hl, $190b
    dec bc
    ld a, [de]
    dec bc
    dec de
    dec bc
    inc e
    dec bc
    dec e
    dec bc
    ld e, $0b
    rra
    dec bc
    inc b
    dec bc
    rla
    rrca
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld hl, $000b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    dec bc
    rla
    rrca
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld hl, $000b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    dec bc
    rla
    rrca
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld [hl+], a
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    inc de
    dec bc
    inc d
    dec bc
    rla
    rrca
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    ld c, d
    add hl, bc
    jr jr_05f_4d1c

    jr jr_05f_4d1e

    ld c, c
    add hl, bc
    inc bc
    dec bc
    nop
    inc c
    nop

jr_05f_4d1c:
    inc b
    nop

jr_05f_4d1e:
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    jr z, jr_05f_4d50

    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld e, b

jr_05f_4d50:
    add hl, bc
    jr jr_05f_4d5c

    jr jr_05f_4d5e

    inc a
    add hl, bc
    inc bc
    dec bc
    nop
    inc b
    nop

jr_05f_4d5c:
    inc b
    nop

jr_05f_4d5e:
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    inc l
    add hl, bc
    dec l
    add hl, bc
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    ld a, [hl-]
    add hl, bc
    dec sp
    add hl, bc
    rla
    rrca
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, b
    dec bc
    jr jr_05f_4dd0

    jr jr_05f_4dd2

    ld l, $09
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]

jr_05f_4dd0:
    add hl, bc
    ld a, [bc]

jr_05f_4dd2:
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld d, $09
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld d, a
    dec bc
    jr jr_05f_4e10

    jr jr_05f_4e12

    inc a
    add hl, bc
    rla
    rrca
    rla
    rrca
    rla

jr_05f_4e10:
    rrca
    rla

jr_05f_4e12:
    rrca
    rla
    rrca
    add hl, sp
    dec bc
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop

Jump_05f_4e26:
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    ld [de], a
    dec bc
    dec hl
    dec bc
    ld [$080b], sp
    dec bc
    add hl, hl
    dec bc
    ld a, [hl+]
    dec bc
    ld [$080b], sp
    dec bc
    add hl, bc
    dec bc
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    inc bc
    dec bc
    ld [hl-], a
    dec bc
    inc sp
    dec bc
    inc [hl]
    dec bc
    dec [hl]
    dec bc
    ld [hl], $0b
    scf
    dec bc
    jr c, jr_05f_4ea0

    inc b
    dec bc
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop

jr_05f_4ea0:
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    dec bc
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    inc bc
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    dec bc
    inc bc
    dec bc
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    dec d
    dec bc
    ccf
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    inc h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    ld h, $0b
    inc h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    dec h
    dec bc
    inc hl
    dec bc
    ld c, h
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld c, e
    dec bc
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    ld a, $0b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld e, c
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, d
    dec bc
    ld e, e
    dec bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    nop
    or l
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    db $76
    ld h, [hl]
    ld a, [hl]
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    ld c, c
    ld h, [hl]
    ld a, [hl]
    rst $38
    ld a, a
    nop
    nop
    cp a
    inc d
    cp l
    ld d, [hl]
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    db $76
    ld h, [hl]
    ld a, [hl]
    ld [c], a
    ld l, l
    nop
    nop
    ld a, h
    ld c, d
    add hl, sp
    ld bc, $0000
    nop
    nop
    ld a, a
    ld l, a
    ld e, a
    ld de, $001d
    nop
    nop
    rst $38
    ld a, a
    ld a, [de]
    ld e, l
    ld d, $40
    nop
    nop
    rst $38
    ld a, a
    inc d
    ld a, l
    cpl
    ld l, b
    nop
    nop
    rst $38
    ld a, a
    sub c
    ld a, l
    call z, $007c
    ld [bc], a
    ld l, e
    add hl, sp
    and l
    inc e
    rst $38
    ld a, a
    ldh [$03], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$03]
    nop
    nop
    nop
    nop
    nop
    nop

jr_05f_5073:
    ld a, [de]
    inc de
    and a
    jr z, jr_05f_50ae

    cp $60
    jr nc, jr_05f_50ae

    cp $4e
    jr z, jr_05f_50ae

    cp $50
    jr z, jr_05f_50b1

    cp $05
    jr c, jr_05f_50ac

    cp $14
    jr c, jr_05f_50ae

    cp $19
    jr c, jr_05f_50ac

    cp $1d
    jr c, jr_05f_50ae

    cp $26
    jr c, jr_05f_50ac

    cp $35
    jr c, jr_05f_50ae

    cp $3a
    jr c, jr_05f_50ac

    cp $3f
    jr c, jr_05f_50ae

    cp $40
    jr c, jr_05f_50ac

    cp $49
    jr c, jr_05f_50ae

jr_05f_50ac:
    scf
    ret


jr_05f_50ae:
    dec c
    jr nz, jr_05f_5073

jr_05f_50b1:
    and a

Jump_05f_50b2:
    ret


jr_05f_50b3:
    ld a, [de]
    inc de
    and a
    jr z, jr_05f_50ee

    cp $60
    jr nc, jr_05f_50ee

    cp $4e
    jr z, jr_05f_50ee

    cp $50
    jr z, jr_05f_50ee

    cp $05
    jr c, jr_05f_50ec

    cp $14
    jr c, jr_05f_50ee

    cp $19
    jr c, jr_05f_50ec

    cp $1d
    jr c, jr_05f_50ee

    cp $26
    jr c, jr_05f_50ec

    cp $35
    jr c, jr_05f_50ee

    cp $3a
    jr c, jr_05f_50ec

    cp $3f
    jr c, jr_05f_50ee

    cp $40
    jr c, jr_05f_50ec

    cp $49
    jr c, jr_05f_50ee

jr_05f_50ec:
    scf
    ret


jr_05f_50ee:
    dec c
    jr nz, jr_05f_50b3

    and a
    ret


    ld a, [$c60d]
    ld [$c702], a
    ld [$d108], a
    ld a, [$cd81]
    ld [$c74e], a
    ld hl, $c63d
    ld de, $c724
    ld bc, $0005
    call $3026
    ld a, $50
    ld [de], a
    ld a, [$c613]
    ld [$c731], a
    ld a, [$c614]
    ld [$c732], a
    ld hl, $c622
    ld a, [hl+]
    ld [$c72f], a
    ld a, [hl]
    ld [$c730], a
    ld bc, $c60d
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c733], a
    call $103e
    call $2b29
    ld a, $42
    ld hl, $404d
    rst $08
    ld a, $5f
    ld hl, $51f1
    rst $08
    ld a, $01
    ld [$d1e9], a
    ld a, $02
    ld [$c2dc], a
    ld a, $10
    ld hl, $61d8
    rst $08
    xor a
    ld [$c2dc], a
    ld a, $05
    ld hl, $4a58
    rst $08
    ld a, $05
    call $2fcb
    ld a, $05
    ld [$a800], a
    call $2fe1
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2147
    ld a, d
    or e
    jr z, jr_05f_5180

    ld a, $01
    ld [de], a

jr_05f_5180:
    call $2b3c
    call $3d47
    ret


    ld hl, $5194
    ld de, $c63d
    ld bc, $0005
    call $3026
    ret


    add a
    ret c

    adc h
    ld d, b
    ld d, b
    ld hl, $51a6
    ld de, $c642
    ld bc, $0005
    call $3026
    ret


    and $e6
    and $e6
    and $3e
    ld d, b
    ld hl, $c647
    ld bc, $0021
    call $3041
    ld hl, $51c3
    ld de, $c647
    ld bc, $0006
    call $3026
    ret


    cp d
    sbc $c6
    pop bc
    jp z, $3e50

    ld d, b
    ld de, $c668
    ld bc, $0005
    call $3041
    ld hl, $5194
    ld de, $c668
    ld bc, $0005
    call $3026
    ret


jr_05f_51e1:
    ld a, [de]
    inc de
    cp $4e
    jr nz, jr_05f_51ea

    dec b
    jr z, jr_05f_51ef

jr_05f_51ea:
    dec c
    jr nz, jr_05f_51e1

    and a
    ret


jr_05f_51ef:
    scf
    ret


    ld a, [$d108]
    dec a
    call $3380
    ld a, [$d108]
    cp $c9
    jr nz, jr_05f_5223

    ld hl, $dcf4
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld a, $2d
    call $2d83
    ld hl, $7a18
    ld a, $3e
    rst $08
    ld a, [$def4]
    and a
    jr nz, jr_05f_5223

    ld a, [$d234]
    ld [$def4], a

jr_05f_5223:
    ret


    ld a, [$c2dd]
    and a
    jr nz, jr_05f_5234

    ld a, $04
    ld [$c2dd], a
    ld hl, $526a
    jr jr_05f_523c

jr_05f_5234:
    ld a, $04
    ld [$c2dd], a
    ld hl, $528f

jr_05f_523c:
    call $1d35
    call Call_05f_5246
    call $1c17
    ret


Call_05f_5246:
    call $1d81
    jr c, jr_05f_5264

    ld a, [$c2dd]
    cp $05
    jr nz, jr_05f_525d

    ld a, [$cfa9]
    cp $03
    ret z

    jr c, jr_05f_525d

    dec a
    jr jr_05f_5260

jr_05f_525d:
    ld a, [$cfa9]

jr_05f_5260:
    ld [$c2dd], a
    ret


jr_05f_5264:
    ld a, $04
    ld [$c2dd], a
    ret


    ld b, b
    nop
    nop
    add hl, bc
    ld c, $72
    ld d, d
    ld bc, $04a0
    sub l
    xor [hl]
    db $e3
    adc h
    rra
    sub $d0
    cp d
    pop de
    ld d, b
    sub l
    xor [hl]
    db $e3
    adc h
    rra
    ret nc

    reti


    ld d, b
    cp [hl]
    jp nz, $b2d2

    ld d, b
    call nc, $d9d2
    ld d, b
    ld b, b
    nop
    nop
    rlca
    ld c, $97
    ld d, d
    ld bc, $03a0
    add d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    ld d, b
    add h
    or a
    xor a
    xor e
    and b
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld d, b
    add d
    and b
    xor l
    and d
    and h
    xor e
    ld d, b
    call Call_05f_52c0
    ld a, $46
    ld hl, $41da
    rst $08
    ret


Call_05f_52c0:
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ret


    ld a, $05
    call $2fcb
    ld a, [$aa72]
    call $2fe1
    and a
    jr nz, jr_05f_52e2

    ld a, $01
    ld [$c2dd], a
    ret


jr_05f_52e2:
    call Call_05f_5314
    ret c

    call $103e
    call $2b29
    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    call Call_05f_5370
    call Call_05f_545a
    pop af
    ldh [rSVBK], a
    ld de, $0066
    ld a, e
    ld [$c2c0], a
    ld [$c2a9], a
    ld a, d
    ld [$c2aa], a
    call $3b97
    call $222a
    call $2b3c
    ret


Call_05f_5314:
    ld a, $05
    call $2fcb
    ld a, [$b1b1]
    call $2fe1
    cp $21
    jr nc, jr_05f_5354

    ld a, $06
    call $2fcb
    ld l, $00
    ld h, l
    ld de, $a006
    ld a, [$a004]
    ld c, a
    ld a, [$a005]
    ld b, a

jr_05f_5336:
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    dec bc
    ld a, b
    or c
    jr nz, jr_05f_5336

    ld a, [$a002]
    cp l
    jr nz, jr_05f_5354

    ld a, [$a003]
    cp h
    jr nz, jr_05f_5354

    call $2fe1
    and a
    ret


jr_05f_5354:
    call $2fe1
    ld a, $05
    call $2fcb
    xor a
    ld hl, $aa73
    ld bc, $000c
    call $3041
    call $2fe1
    ld a, $02
    ld [$c2dd], a
    scf
    ret


Call_05f_5370:
    xor a
    ld [$cd77], a
    ld [$cd78], a
    ld [$cd79], a
    dec a
    ld [$cd6c], a
    call $31f3
    call $300b
    call $0fdb
    ld a, $41
    ld hl, $4061
    rst $08
    call $0568
    ld hl, $8ee0
    ld de, $c608
    ld bc, $0010
    call $3026
    ld a, $01
    ldh [rVBK], a
    ld hl, $66fe
    ld de, $8800
    ld bc, $0480
    call $3026
    xor a
    ld hl, $97f0
    ld bc, $0010
    call $3041
    ld hl, $c608
    ld de, $8ee0
    ld bc, $0010
    call $3026
    xor a
    ldh [rVBK], a
    ld hl, $6b7e
    ld de, $9600
    ld bc, $0010
    call $3026
    call $058a
    call Call_05f_560b
    ld a, $00
    ld [$cd20], a
    ld a, $d0
    ld [$cd21], a
    ld a, $06
    call $2fcb
    ld hl, $a006
    ld de, $d000
    ld bc, $1000
    call $3026
    call $2fe1
    ret


    call $31f3
    call $300b
    call $0fdb
    ld a, $41
    ld hl, $4061
    rst $08
    call $0568
    ld hl, $8ee0
    ld de, $c608
    ld bc, $0010
    call $3026
    ld a, $01
    ldh [rVBK], a
    ld hl, $66fe
    ld de, $8800
    ld bc, $0480
    call $3026
    xor a
    ld hl, $97f0
    ld bc, $0010
    call $3041
    ld hl, $c608
    ld de, $8ee0
    ld bc, $0010
    call $3026
    xor a
    ldh [rVBK], a
    call $058a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $6ff6
    ld de, $d000
    ld bc, $0040
    call $3026
    call $32f9
    pop af
    ldh [rSVBK], a
    ret


Call_05f_545a:
jr_05f_545a:
    call $0a57
    ld a, [$cd77]
    bit 7, a
    jr nz, jr_05f_546f

    call Call_05f_5474
    ld a, $41
    ld hl, $4061
    rst $08
    jr jr_05f_545a

jr_05f_546f:
    xor a
    ld [$c2dd], a
    ret


Call_05f_5474:
    ld a, [$cd77]
    ld e, a
    ld d, $00
    ld hl, $5483
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc l
    ld d, h
    cp [hl]
    ld d, l
    call nz, $fd55
    ld d, [hl]
    daa
    ld h, h
    ld hl, $6ff6
    ld de, $c608
    ld bc, $0040
    call $3026
    ld hl, $6b8e
    ld de, $c4a0
    ld bc, $cdd9
    ld a, $12

jr_05f_54a4:
    push af
    ld a, $14
    push hl

jr_05f_54a8:
    push af
    ld a, [hl+]
    cp $7f
    jr z, jr_05f_54b0

    add $80

jr_05f_54b0:
    ld [de], a
    inc de
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    jr nz, jr_05f_54a8

    pop hl
    push bc
    ld bc, $0040
    add hl, bc
    pop bc
    pop af
    dec a
    jr nz, jr_05f_54a4

    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [$cd6c]
    cp e
    jr z, jr_05f_54e0

    ld a, e
    ld [$cd6c], a
    ld [$c2c0], a
    ld d, $00
    call $3bbc

jr_05f_54e0:
    ld a, [hl+]
    ld de, $c608
    ld c, $08

jr_05f_54e6:
    srl a
    jr nc, jr_05f_54f6

    ld b, $08
    push af

jr_05f_54ed:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_05f_54ed

    pop af
    jr jr_05f_54fc

jr_05f_54f6:
    push af
    ld a, e
    add $08
    ld e, a
    pop af

jr_05f_54fc:
    dec c
    jr nz, jr_05f_54e6

    push hl
    call Call_05f_55f6
    pop hl
    ld a, [hl+]
    and a
    jr z, jr_05f_5539

jr_05f_5508:
    push af
    ld a, [hl+]
    ld [$cd4f], a
    ld a, [hl+]
    ld [$cd50], a
    ld a, [hl+]
    ld [$cd51], a
    ld a, [hl+]
    ld [$cd52], a
    ld a, [hl+]
    sla a
    sla a
    sla a
    add $98
    ld [$cd53], a
    ld de, $cd4f
    call Call_05f_6613
    ld a, [hl+]
    ld [$cd53], a
    ld de, $cd4f
    call Call_05f_6691
    pop af
    dec a
    jr nz, jr_05f_5508

jr_05f_5539:
    ld a, [hl+]

jr_05f_553a:
    push af
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    pop de
    ld hl, $c4a0
    add hl, bc
    call $1078
    push de
    pop hl
    inc hl
    pop af
    dec a
    jr nz, jr_05f_553a

    ld de, $cd22
    ld bc, $000c
    call $3026
    xor a
    ld [$cd2e], a
    ld [$cd2f], a
    inc a
    ld [$cd30], a
    ld [$cd31], a
    ld de, $cd32
    ld bc, $0010
    call $3026
    ld a, [hl+]
    ld [$cd42], a
    ld a, [hl+]
    ld [$cd43], a
    ld a, [hl+]
    ld [$cd44], a
    ld a, [hl+]
    ld [$cd45], a
    ld a, [hl+]
    ld [$cd46], a
    ld a, [hl+]
    and a
    jr z, jr_05f_558a

    call Call_05f_56a1

jr_05f_558a:
    ld a, l
    ld [$cd49], a
    ld a, h
    ld [$cd4a], a
    ld a, [$cd42]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, l
    ld [$cd4b], a
    ld a, h
    ld [$cd4c], a
    add hl, bc
    add hl, bc
    ld a, l
    ld [$cd4d], a
    ld a, h
    ld [$cd4e], a
    call Call_05f_6451
    call Call_05f_655b
    call Call_05f_65af
    ld a, $41
    ld hl, $4061
    rst $08
    jp Jump_05f_6438


    call $32f9
    call Call_05f_6438
    ldh a, [$a7]
    and a
    ret z

    ld c, $00
    ld b, c
    ld hl, $cd32

jr_05f_55ce:
    srl a
    jr c, jr_05f_55d6

    inc c
    inc c
    jr jr_05f_55ce

jr_05f_55d6:
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    and c
    cp $ff
    ret z

    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    add hl, bc
    ld a, l
    ld [$cd78], a
    ld a, h
    ld [$cd79], a
    ld a, $03
    ld [$cd77], a
    ret


Call_05f_55f6:
    ld a, $05
    ldh [rSVBK], a
    ld hl, $c608
    ld de, $d000
    ld bc, $0040
    call $3026
    ld a, $04
    ldh [rSVBK], a
    ret


Call_05f_560b:
    ld a, $05
    call $2fcb
    ld hl, $b1d3
    ld de, $c608
    ld bc, $0020
    call $3026
    ld a, [$b1b1]
    ld c, a
    ld a, [$b1b2]
    ld b, a
    ld a, [$b1b3]
    ld l, a
    ld a, [$b1b4]
    ld h, a
    call $2fe1
    ld a, $06
    call $2fcb
    ld de, $c708
    ld a, c
    and a
    jr z, jr_05f_5684

jr_05f_563b:
    push bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld bc, $000a
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cd4a], a
    ld a, [hl+]
    ld [$cd49], a
    push hl
    push de
    ld hl, $c608
    ld e, b
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld [$cd4b], a
    ld a, [hl]
    ld [$cd4c], a
    pop de
    pop hl
    inc b
    inc b
    dec c
    dec c
    jr z, jr_05f_5684

    push bc
    push de
    ld a, [$cd49]
    ld c, a
    ld a, [$cd4a]
    ld b, a
    ld a, [$cd4b]
    ld e, a
    ld a, [$cd4c]
    ld d, a

jr_05f_567a:
    add hl, de
    dec bc
    ld a, c
    or b
    jr nz, jr_05f_567a

    pop de
    pop bc
    jr jr_05f_563b

jr_05f_5684:
    call $2fe1
    ld a, $05
    call $2fcb
    ld hl, $c708
    ld de, $b1b3
    ld a, [$b1b1]
    ld c, a
    ld a, [$b1b2]
    ld b, a
    call $3026
    call $2fe1
    ret


Call_05f_56a1:
    push hl
    ld a, [$cd6e]
    ld c, a
    ld b, $00
    ld a, $05
    call $2fcb
    ld hl, $b1d3
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$cd47], a
    ld a, [hl]
    ld [$cd48], a
    ld hl, $b1b3
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    call $2fe1
    ld a, $06
    call $2fcb
    ld a, l
    ld [$cd5e], a
    ld a, h
    ld [$cd5f], a
    ld de, $cd60
    ld bc, $0004
    call $3026
    inc hl
    inc hl
    ld de, $cd64
    ld bc, $0004
    call $3026
    ld a, [hl+]
    ld [$cd69], a
    ld a, [hl+]
    ld [$cd68], a
    ld a, l
    ld [$cd6a], a
    ld a, h
    ld [$cd6b], a
    call $2fe1
    pop hl
    ret


    ld a, [$cd77]
    bit 7, a
    jr nz, jr_05f_5721

    ld a, [$cd78]
    ld l, a
    ld a, [$cd79]
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_05f_5721

Call_05f_5711:
jr_05f_5711:
    cp $31
    jr nc, jr_05f_5711

    ld e, a
    ld d, $00
    ld hl, $572a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_05f_5721:
    call Call_05f_65af
    ld a, $02
    ld [$cd77], a
    ret


    adc h
    ld d, a
    adc l
    ld d, a
    or h
    ld d, a
    jp nz, $d357

    ld d, a
    push hl
    ld d, a
    jr jr_05f_5790

    inc sp
    ld e, b
    ld e, l
    ld e, b
    ld [bc], a
    ld e, c
    ld a, [hl-]
    ld e, c
    adc e
    ld e, c
    db $e3
    ld e, c
    ld sp, $9c5a
    ld e, d
    call c, $2d5a
    ld e, e
    ld d, [hl]
    ld e, e
    ld [hl], a
    ld e, e
    jp hl


    ld e, e
    rra
    ld e, h
    sbc a
    ld e, h
    xor c
    ld e, h
    rst $08
    ld e, h
    inc de
    ld e, l
    jr nc, jr_05f_57bb

    ld c, c
    ld e, l
    call $325d
    ld e, [hl]
    sub c
    ld e, [hl]
    reti


    ld e, [hl]
    db $fd
    ld h, b
    inc sp
    ld h, c
    ld h, l
    ld h, c
    and c
    ld h, c
    ld d, h
    ld h, d
    ld h, c
    ld h, d
    ld [hl], b
    ld h, d
    ld a, a
    ld h, d
    sub e
    ld h, d
    and a
    ld h, d
    ld h, a
    ld h, e
    ld a, [hl]
    ld h, e
    sub l
    ld h, e
    xor h
    ld h, e
    jp $e063


    ld h, e
    ldh a, [$63]
    add hl, bc
    ld h, h
    ret


    call Call_05f_6415

jr_05f_5790:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_05f_641e
    ld a, $06
    call $2fcb
    ld hl, $a006
    add hl, bc
    ld de, $d000
    ld bc, $1000
    call $3026
    call $2fe1
    xor a
    ld [$cd77], a
    call $31f3
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld d, $00

jr_05f_57bb:
    call $3bbc
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld d, $00
    call $3c23
    call $3c55
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    dec a
    ld e, a
    ld d, $00
    call $3be3
    call $3c55
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld [$cd4f], a
    ld a, [hl+]
    ld [$cd50], a
    ld a, [hl+]
    ld [$cd51], a
    ld a, [hl+]
    ld [$cd52], a
    ld a, [hl+]
    sla a
    sla a
    sla a
    add $98
    ld [$cd53], a
    ld de, $cd4f
    call Call_05f_6613
    ld a, [hl+]
    ld [$cd53], a
    ld de, $cd4f
    call Call_05f_6691
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    call Call_05f_641e
    call Call_05f_6447
    ld e, l
    ld d, h
    ld hl, $c4a0
    add hl, bc
    call $1078
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_05f_641e
    push de
    push bc
    call Call_05f_632b
    pop bc
    pop de
    call Call_05f_643d
    ld c, l
    ld b, h
    ld hl, $c4a0
    add hl, de
    ld e, l
    ld d, h
    ld a, $47
    ld hl, $408f
    rst $08
    call Call_05f_6349
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld hl, $d000
    add hl, de
    ld de, $cc60

jr_05f_586c:
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr nz, jr_05f_586c

    pop hl
    ld de, $c608
    ld c, $00

jr_05f_5878:
    ld a, [hl+]
    cp $ff
    jr z, jr_05f_58c7

    ld [$cd4f], a
    ld a, [hl+]
    ld [$cd50], a
    ld a, [hl+]
    ld [$cd51], a
    ld a, [hl+]
    ld [$cd52], a
    ld a, [$cd51]
    push af
    cp $c0
    jr c, jr_05f_589b

    ld a, [$cd4f]
    ldh [rSVBK], a
    jr jr_05f_58a1

jr_05f_589b:
    ld a, [$cd4f]
    call $2fcb

jr_05f_58a1:
    push hl
    ld a, [$cd50]
    ld l, a
    ld a, [$cd51]
    ld h, a
    ld a, [$cd52]

jr_05f_58ad:
    push af
    ld a, [hl+]
    ld [de], a
    inc de
    inc c
    pop af
    dec a
    jr nz, jr_05f_58ad

    pop hl
    pop af
    cp $c0
    jr c, jr_05f_58c2

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_5878

jr_05f_58c2:
    call $2fe1
    jr jr_05f_5878

jr_05f_58c7:
    call Call_05f_641e
    push bc
    ld a, $03
    ldh [rSVBK], a
    ld hl, $c608
    ld de, $d000
    ld b, $00
    call $3026
    ld a, $04
    ldh [rSVBK], a
    call Call_05f_632b
    pop bc
    ld a, c
    ld [$cd3b], a
    xor a
    ld [$cf66], a
    ld a, $46
    ld hl, $4329
    rst $08
    ld a, [$c300]
    and a
    jr z, jr_05f_58fe

    cp $0a
    jr z, jr_05f_58fe

    call Call_05f_6309
    ret


jr_05f_58fe:
    call Call_05f_6349
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    call Call_05f_641e
    call Call_05f_632b
    pop de
    ld hl, $d000
    add hl, de
    ld de, $cc60

jr_05f_5918:
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr nz, jr_05f_5918

    xor a
    ld [$cf66], a
    ld a, $46
    ld hl, $437a
    rst $08
    ld a, [$c300]
    and a
    jr z, jr_05f_5936

    cp $0a
    jr z, jr_05f_5936

    call Call_05f_6309
    ret


jr_05f_5936:
    call Call_05f_6349
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0005
    call $3026
    call Call_05f_641e
    call Call_05f_632b
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$c70c]
    call Call_05f_66de
    ld a, [$c70a]
    ld [$d108], a
    ld a, [$c70c]
    ld e, a
    ld a, $02
    ld hl, $4bc6
    rst $08
    call $32f9
    ld a, [$c708]
    ld l, a
    ld a, [$c709]
    ld h, a
    ld a, [$c70b]
    ld c, a
    ld de, $c4a0
    add hl, de
    ld e, l
    ld d, h
    ld a, $34
    ld hl, $466e
    rst $08
    pop af
    ldh [rSVBK], a
    call Call_05f_6349
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0004
    call $3026
    call Call_05f_641e
    call Call_05f_632b
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$c70b]
    call Call_05f_66de
    ld a, [$c70a]
    ld [$d233], a
    ld a, [$c70b]
    ld e, a
    ld a, $02
    ld hl, $4bbd
    rst $08
    call $32f9
    ld a, [$c708]
    ld e, a
    ld a, [$c709]
    ld d, a
    push de
    ld de, $9000
    ld a, $14
    ld hl, $520d
    rst $08
    pop hl
    ld de, $c4a0
    add hl, de
    ld bc, $0707
    ld a, $13
    call $2d83
    pop af
    ldh [rSVBK], a
    call Call_05f_6349
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0007
    call $3026
    call Call_05f_641e
    ld a, [$c70b]
    push af
    cp $c0
    jr c, jr_05f_5a01

    ld a, [$c70c]
    ldh [rSVBK], a
    jr jr_05f_5a07

jr_05f_5a01:
    ld a, [$c70c]
    call $2fcb

jr_05f_5a07:
    ld a, [$c708]
    ld l, a
    ld a, [$c709]
    ld h, a
    ld a, [$c70a]
    ld e, a
    ld a, [$c70b]
    ld d, a
    ld a, [$c70d]
    ld c, a
    ld a, [$c70e]
    ld b, a
    call $3026
    pop af
    cp $c0
    jr c, jr_05f_5a2d

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_5a30

jr_05f_5a2d:
    call $2fe1

jr_05f_5a30:
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0004
    call $3026
    call Call_05f_641e
    ld a, [$c709]
    push af
    cp $c0
    jr c, jr_05f_5a4f

    ld a, [$c70a]
    ldh [rSVBK], a
    jr jr_05f_5a55

jr_05f_5a4f:
    ld a, [$c70a]
    call $2fcb

jr_05f_5a55:
    ld a, [$c708]
    ld e, a
    ld a, [$c709]
    ld d, a
    ld a, [$c70b]
    ld c, a
    bit 7, c
    jr nz, jr_05f_5a70

    ld hl, $5a8c
    ld b, $00
    add hl, bc
    ld a, [de]
    or [hl]
    ld [de], a
    jr jr_05f_5a7d

jr_05f_5a70:
    ld hl, $5a94
    ld a, c
    and $7f
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    and [hl]
    ld [de], a

jr_05f_5a7d:
    pop af
    cp $c0
    jr c, jr_05f_5a88

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_5a8b

jr_05f_5a88:
    call $2fe1

jr_05f_5a8b:
    ret


    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b
    cp $fd
    ei
    rst $30
    rst $28
    rst $18
    cp a
    ld a, a
    ld a, [$cd31]
    dec a
    jr z, jr_05f_5abd

    push af
    call Call_05f_6566
    pop af
    ld [$cd31], a
    ld hl, $cd24
    ld a, [$cd2e]
    sub [hl]
    ld [$cd2e], a
    call Call_05f_655b
    call Call_05f_65af

jr_05f_5aba:
    jp Jump_05f_6415


jr_05f_5abd:
    ld a, [$cd2f]
    and a
    jr z, jr_05f_5aba

    ld hl, $cd24
    sub [hl]
    ld [$cd2f], a
    ld a, [$cd2e]
    sub [hl]
    ld [$cd2e], a
    call Call_05f_6451
    call Call_05f_655b
    call Call_05f_65af
    jr jr_05f_5aba

    ld a, [$cd2e]
    ld hl, $cd24
    add [hl]
    ld hl, $cd42
    cp [hl]
    jr z, jr_05f_5b0e

    jr nc, jr_05f_5b0e

    ld hl, $cd31
    ld a, [$cd2b]
    cp [hl]
    jr z, jr_05f_5b11

    call Call_05f_6566
    ld a, [$cd31]
    inc a
    ld [$cd31], a
    ld hl, $cd24
    ld a, [$cd2e]
    add [hl]
    ld [$cd2e], a
    call Call_05f_655b
    call Call_05f_65af

jr_05f_5b0e:
    jp Jump_05f_6415


jr_05f_5b11:
    ld hl, $cd24
    ld a, [$cd2f]
    add [hl]
    ld [$cd2f], a
    ld a, [$cd2e]
    add [hl]
    ld [$cd2e], a
    call Call_05f_6451
    call Call_05f_655b
    call Call_05f_65af
    jr jr_05f_5b0e

    ld a, [$cd30]
    ld hl, $cd24
    cp [hl]
    jr z, jr_05f_5b53

    ld hl, $cd42
    ld a, [$cd2e]
    inc a
    cp [hl]
    jr z, jr_05f_5b53

    ld [$cd2e], a
    call Call_05f_6566
    ld a, [$cd30]
    inc a
    ld [$cd30], a
    call Call_05f_655b
    call Call_05f_65af

jr_05f_5b53:
    jp Jump_05f_6415


    ld a, [$cd30]
    cp $01
    jr z, jr_05f_5b74

    call Call_05f_6566
    ld a, [$cd30]
    dec a
    ld [$cd30], a
    ld a, [$cd2e]
    dec a
    ld [$cd2e], a
    call Call_05f_655b
    call Call_05f_65af

jr_05f_5b74:
    jp Jump_05f_6415


    ld hl, $cd2d
    ld a, [$cd2f]
    add [hl]
    ld hl, $cd42
    cp [hl]
    jr z, jr_05f_5bae

    jr nc, jr_05f_5bae

    call Call_05f_6566
    ld hl, $cd2d
    ld a, [$cd2f]
    add [hl]
    ld [$cd2f], a
    ld a, [$cd2e]
    add [hl]
    ld hl, $cd42
    cp [hl]
    jr c, jr_05f_5b9f

    ld a, [hl]
    dec a

jr_05f_5b9f:
    ld [$cd2e], a
    call Call_05f_5bb1
    call Call_05f_6451
    call Call_05f_655b
    call Call_05f_65af

jr_05f_5bae:
    jp Jump_05f_6415


Call_05f_5bb1:
    ld hl, $cd2f
    ld a, [$cd42]
    sub [hl]
    ld hl, $cd2d
    cp [hl]
    ret nc

    ld a, $01
    ld [$cd30], a
    ld [$cd31], a
    ld a, [$cd24]
    ld c, a
    ld a, [$cd24]
    ld b, a
    ld a, [$cd2e]
    ld hl, $cd2f
    sub [hl]

jr_05f_5bd4:
    and a
    ret z

    push af
    ld hl, $cd30
    ld a, b
    cp [hl]
    jr nz, jr_05f_5be4

    ld a, $01
    ld [hl], a
    ld hl, $cd31

jr_05f_5be4:
    inc [hl]
    pop af
    dec a
    jr jr_05f_5bd4

    ld hl, $cd2d
    ld a, [$cd2f]
    sub [hl]
    bit 7, a
    jr z, jr_05f_5bf5

    xor a

jr_05f_5bf5:
    ld [$cd2f], a
    ld a, [$cd30]
    dec a
    ld c, a
    ld a, [$cd31]
    ld b, a
    xor a
    ld hl, $cd24

jr_05f_5c05:
    dec b
    jr z, jr_05f_5c0b

    add [hl]
    jr jr_05f_5c05

jr_05f_5c0b:
    add c
    ld hl, $cd2f
    add [hl]
    ld [$cd2e], a
    call Call_05f_6451
    call Call_05f_655b
    call Call_05f_65af
    jp Jump_05f_6415


    call Call_05f_6415
    ld de, $c688
    ld bc, $0006
    call $3026
    call Call_05f_632b
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $c688
    ld a, $40
    ld [$c708], a
    ld a, [hl+]
    ld [$c70a], a
    add $05
    ld [$c70c], a
    ld a, [hl+]
    ld [$c709], a
    add $04
    ld [$c70b], a
    ld a, $96
    ld [$c70d], a
    ld a, $5c
    ld [$c70e], a
    ld a, $01
    ld [$c70f], a
    ld hl, $c708
    call $1d35
    call $1d81
    jr nc, jr_05f_5c6e

    ld a, $02
    ld [$cfa9], a

jr_05f_5c6e:
    call $1c17
    pop af
    ldh [rSVBK], a
    ld a, [$cfa9]
    cp $01
    jr nz, jr_05f_5c85

    ld a, [$c68a]
    ld l, a
    ld a, [$c68b]
    ld h, a
    jr jr_05f_5c8d

jr_05f_5c85:
    ld a, [$c68c]
    ld l, a
    ld a, [$c68d]
    ld h, a

jr_05f_5c8d:
    push hl
    call Call_05f_6349
    pop hl
    call Call_05f_640f
    ret


    ldh [rSC], a
    jp z, Jump_05f_50b2

    or d
    or d
    or h
    ld d, b
    call Call_05f_6415
    call Call_05f_641e
    call $04dd
    ret


    call Call_05f_6415
    call Call_05f_641e

Call_05f_5caf:
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $0008
    ld c, $08

jr_05f_5cbb:
    push hl
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl], a
    pop hl
    add hl, de
    dec c
    jr nz, jr_05f_5cbb

    call $04b6
    ld a, $04
    ldh [rSVBK], a
    ret


    call Call_05f_6415
    push hl
    ld a, [$cd4b]
    ld l, a
    ld a, [$cd4c]
    ld h, a
    ld a, [$cd2e]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    call Call_05f_643d
    call Call_05f_641e

jr_05f_5ced:
    ld a, [$cd78]
    ld l, a
    ld a, [$cd79]
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_05f_5d0d

jr_05f_5cfa:
    cp $31
    jr nc, jr_05f_5cfa

    call Call_05f_5711
    ld a, [$cd77]
    bit 7, a
    jr nz, jr_05f_5d0d

    and a
    jr z, jr_05f_5d11

    jr jr_05f_5ced

jr_05f_5d0d:
    pop hl
    jp Jump_05f_641e


jr_05f_5d11:
    pop hl
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    call Call_05f_641e
    call Call_05f_6447
    push hl
    ld hl, $c4a0
    add hl, bc
    push hl
    pop bc
    pop hl
    call $13e5
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld b, $00
    ld a, [hl+]
    push af
    call Call_05f_641e
    pop af
    ld hl, $c4a0
    add hl, de
    call Call_05f_6600
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $000a
    call $3026
    ld a, [$c711]
    ld c, a
    ld b, $00
    call $3026
    ld a, [$c70a]
    cp $c0
    jr c, jr_05f_5d6c

    ld a, [$c708]
    ldh [rSVBK], a
    jr jr_05f_5d72

jr_05f_5d6c:
    ld a, [$c708]
    call $2fcb

jr_05f_5d72:
    ld a, [$c709]
    ld l, a
    ld a, [$c70a]
    ld h, a
    ld de, $c688
    ld a, [$c711]
    ld c, a
    ld b, $00
    call $3026
    ld a, [$c70a]
    cp $c0
    jr c, jr_05f_5d93

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_5d96

jr_05f_5d93:
    call $2fe1

jr_05f_5d96:
    ld a, [$c711]
    ld c, a
    ld hl, $c712
    ld de, $c688

jr_05f_5da0:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr z, jr_05f_5daa

    jr c, jr_05f_5dc1

    jr jr_05f_5db7

jr_05f_5daa:
    dec c
    jr nz, jr_05f_5da0

    ld a, [$c70d]
    ld l, a
    ld a, [$c70e]
    ld h, a
    jr jr_05f_5dc9

jr_05f_5db7:
    ld a, [$c70f]
    ld l, a
    ld a, [$c710]
    ld h, a
    jr jr_05f_5dc9

jr_05f_5dc1:
    ld a, [$c70b]
    ld l, a
    ld a, [$c70c]
    ld h, a

jr_05f_5dc9:
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0008
    call $3026
    ld a, [$c70a]
    cp $c0
    jr c, jr_05f_5de7

    ld a, [$c708]
    ldh [rSVBK], a
    jr jr_05f_5ded

jr_05f_5de7:
    ld a, [$c708]
    call $2fcb

jr_05f_5ded:
    ld a, [$c709]
    ld e, a
    ld a, [$c70a]
    ld d, a
    ld a, [de]
    ld [$c710], a
    ld a, [$c70b]
    ld c, a
    ld b, $00
    ld a, [$c70a]
    cp $c0
    jr c, jr_05f_5e0c

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_5e0f

jr_05f_5e0c:
    call $2fe1

jr_05f_5e0f:
    push hl
    ld hl, $5a8c
    add hl, bc
    ld a, [hl]
    ld hl, $c710
    and [hl]
    pop hl
    jr nz, jr_05f_5e26

    ld a, [$c70e]
    ld l, a
    ld a, [$c70f]
    ld h, a
    jr jr_05f_5e2e

jr_05f_5e26:
    ld a, [$c70c]
    ld l, a
    ld a, [$c70d]
    ld h, a

jr_05f_5e2e:
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0009
    call $3026
    ld a, [$c710]
    ld c, a
    ld b, $00
    call $3026
    ld a, $06
    call $2fcb
    call Call_05f_74f6
    ld a, [$c708]
    ld e, a
    ld a, [$c709]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [$c710]
    ld c, a
    ld hl, $c711

jr_05f_5e61:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr z, jr_05f_5e6b

    jr c, jr_05f_5e82

    jr jr_05f_5e78

jr_05f_5e6b:
    dec c
    jr nz, jr_05f_5e61

    ld a, [$c70c]
    ld l, a
    ld a, [$c70d]
    ld h, a
    jr jr_05f_5e8a

jr_05f_5e78:
    ld a, [$c70e]
    ld l, a
    ld a, [$c70f]
    ld h, a
    jr jr_05f_5e8a

jr_05f_5e82:
    ld a, [$c70a]
    ld l, a
    ld a, [$c70b]
    ld h, a

jr_05f_5e8a:
    call $2fe1
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0007
    call $3026
    ld a, $06
    call $2fcb
    call Call_05f_74f6
    ld a, [$c708]
    ld e, a
    ld a, [$c709]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [$c70a]
    ld c, a
    ld b, $00
    ld hl, $5a8c
    add hl, bc
    ld a, [hl]
    ld l, e
    ld h, d
    and [hl]
    jr nz, jr_05f_5eca

    ld a, [$c70d]
    ld l, a
    ld a, [$c70e]
    ld h, a
    jr jr_05f_5ed2

jr_05f_5eca:
    ld a, [$c70b]
    ld l, a
    ld a, [$c70c]
    ld h, a

jr_05f_5ed2:
    call $2fe1
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $001f
    call $3026
    call Call_05f_632b
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $c708
    ld a, [hl+]
    ld [$d108], a
    ld [$d204], a
    ld a, [hl+]
    ld [$d143], a
    ld a, [hl+]
    ld b, a
    ld a, [$dcd7]
    cp $06
    jp nc, Jump_05f_6026

    xor a
    ld [$cf5f], a
    push hl
    push bc
    ld a, $06
    call $2d83
    ld a, $13
    ld hl, $5b49
    rst $08
    pop bc
    pop hl
    bit 1, b
    jr z, jr_05f_5f33

    push bc
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $de41
    call $30f4
    ld d, h
    ld e, l
    pop hl
    call $3026
    pop bc
    jr jr_05f_5f37

jr_05f_5f33:
    ld de, $0006
    add hl, de

jr_05f_5f37:
    bit 2, b
    jr z, jr_05f_5f5a

    push bc
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $ddff
    call $30f4
    ld d, h
    ld e, l
    pop hl
    call $3026
    ld a, [hl+]
    ld b, a
    push hl
    ld a, $13
    ld hl, $5ba3
    rst $08
    pop hl
    pop bc
    jr jr_05f_5f5e

jr_05f_5f5a:
    ld de, $0007
    add hl, de

jr_05f_5f5e:
    bit 3, b
    jr z, jr_05f_5f79

    push bc
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $dce5
    call $3927
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop bc
    jr jr_05f_5f7b

jr_05f_5f79:
    inc hl
    inc hl

jr_05f_5f7b:
    bit 4, b
    jr z, jr_05f_5fd0

    push bc
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $dcf4
    call $3927
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $dcdf
    call $3927
    ld a, [hl]
    ld [$cf60], a
    call $3856
    ld a, [$dcd7]
    dec a
    ld hl, $dd03
    call $3927
    ld d, h
    ld e, l
    push hl
    ld b, $00
    ld a, $03
    ld hl, $6167
    rst $08
    ld a, [$dcd7]
    dec a
    ld hl, $dd01
    call $3927
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop hl
    pop bc
    jr jr_05f_5fd2

jr_05f_5fd0:
    inc hl
    inc hl

jr_05f_5fd2:
    bit 5, b
    jr z, jr_05f_5fea

    push bc
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $dce0
    call $3927
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    pop bc
    jr jr_05f_5feb

jr_05f_5fea:
    inc hl

jr_05f_5feb:
    bit 6, b
    jr z, jr_05f_601f

    push bc
    push hl
    ld a, [$dcd7]
    dec a
    ld hl, $dce1
    call $3927
    ld d, h
    ld e, l
    pop hl
    push de
    ld bc, $0004
    call $3026
    pop de
    push hl
    push de
    ld a, [$dcd7]
    dec a
    ld hl, $dcf6
    call $3927
    ld d, h
    ld e, l
    pop hl
    ld a, $05
    call $2d83
    pop hl
    pop bc
    jp Jump_05f_60ee


jr_05f_601f:
    ld de, $0004
    add hl, de
    jp Jump_05f_60ee


Jump_05f_6026:
    ld a, $01
    call $2fcb
    ld a, [$ad10]
    call $2fe1
    cp $14
    jp nc, Jump_05f_60ea

    bit 0, b
    jp z, Jump_05f_60ea

    push bc
    push hl
    ld a, $0f
    ld hl, $68eb
    rst $08
    ld a, $03
    ld hl, $5e6e
    rst $08
    ld a, $13
    ld hl, $5b83
    rst $08
    pop hl
    pop bc
    ld a, $01
    call $2fcb
    bit 1, b
    jr z, jr_05f_6067

    push bc
    ld bc, $000b
    ld de, $b082
    call $3026
    pop bc
    jr jr_05f_606b

jr_05f_6067:
    ld de, $0006
    add hl, de

jr_05f_606b:
    bit 2, b
    jr z, jr_05f_608e

    push bc
    ld bc, $0006
    ld de, $afa6
    call $3026
    ld a, [hl+]
    ld b, a
    push hl
    call $2fe1
    ld a, $13
    ld hl, $5b92
    rst $08
    ld a, $01
    call $2fcb
    pop hl
    pop bc
    jr jr_05f_6092

jr_05f_608e:
    ld de, $0007
    add hl, de

jr_05f_6092:
    bit 3, b
    jr z, jr_05f_60a2

    push bc
    ld de, $ad2c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop bc
    jr jr_05f_60a4

jr_05f_60a2:
    inc hl
    inc hl

jr_05f_60a4:
    bit 4, b
    jr z, jr_05f_60b4

    push bc
    ld de, $ad3b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop bc
    jr jr_05f_60b6

jr_05f_60b4:
    inc hl
    inc hl

jr_05f_60b6:
    bit 5, b
    ld a, [hl+]
    jr z, jr_05f_60be

    ld [$ad27], a

jr_05f_60be:
    bit 6, b
    jr z, jr_05f_60e1

    push bc
    ld de, $ad28
    ld bc, $0004
    call $3026
    push hl
    ld hl, $ad28
    ld de, $ad3d
    ld a, $05
    call $2d83
    call $2fe1
    pop hl
    pop bc
    inc hl
    inc hl
    jr jr_05f_60ee

jr_05f_60e1:
    call $2fe1
    ld de, $0006
    add hl, de
    jr jr_05f_60ee

Jump_05f_60ea:
    ld bc, $001a
    add hl, bc

Jump_05f_60ee:
jr_05f_60ee:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ldh [rSVBK], a
    push hl
    call Call_05f_6349
    pop hl
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0006
    call $3026
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $c708
    ld a, [hl+]
    ld [$d106], a
    ld a, [hl+]
    ld [$d10c], a
    push hl
    ld hl, $d892
    call $2f66
    pop hl
    jr c, jr_05f_6127

    inc hl
    inc hl

jr_05f_6127:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld h, a
    ld l, b
    pop af
    ldh [rSVBK], a
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0005
    call $3026
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $c708
    ld a, [hl+]
    ld [$c2dd], a
    push hl
    ld a, $12
    ld hl, $6843
    rst $08
    pop hl
    jr c, jr_05f_6159

    inc hl
    inc hl

jr_05f_6159:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld h, a
    ld l, b
    pop af
    ldh [rSVBK], a
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $0005
    call $3026
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $c708
    ld a, [hl+]
    ld [$d106], a
    push hl
    ld hl, $d892
    call $2f79
    pop hl
    jr c, jr_05f_6195

    push hl
    ld hl, $d8f1
    call $2f79
    pop hl
    jr c, jr_05f_6195

    inc hl
    inc hl

jr_05f_6195:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld h, a
    ld l, b
    pop af
    ldh [rSVBK], a
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld de, $c708
    ld bc, $000d
    call $3026
    ld a, [$c70a]
    cp $c0
    jr c, jr_05f_61bb

    ld a, [$c708]
    ldh [rSVBK], a
    jr jr_05f_61c1

jr_05f_61bb:
    ld a, [$c708]
    call $2fcb

jr_05f_61c1:
    ld a, [$c709]
    ld l, a
    ld a, [$c70a]
    ld h, a
    ld de, $c608
    ld a, [$c70b]
    ld c, a
    ld b, $00
    call $3026
    ld a, [$c70a]
    cp $c0
    jr c, jr_05f_61e2

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_61e5

jr_05f_61e2:
    call $2fe1

jr_05f_61e5:
    ld a, [$c70e]
    cp $c0
    jr c, jr_05f_61f3

    ld a, [$c70c]
    ldh [rSVBK], a
    jr jr_05f_61f9

jr_05f_61f3:
    ld a, [$c70c]
    call $2fcb

jr_05f_61f9:
    ld a, [$c70d]
    ld l, a
    ld a, [$c70e]
    ld h, a
    ld de, $c688
    ld a, [$c70b]
    ld c, a
    ld b, $00
    call $3026
    ld a, [$c70e]
    cp $c0
    jr c, jr_05f_621a

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_621d

jr_05f_621a:
    call $2fe1

jr_05f_621d:
    ld a, [$c70b]
    ld c, a
    ld hl, $c688
    ld de, $c608

jr_05f_6227:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr z, jr_05f_6231

    jr c, jr_05f_623e

    jr jr_05f_6248

jr_05f_6231:
    dec c
    jr nz, jr_05f_6227

    ld a, [$c711]
    ld l, a
    ld a, [$c712]
    ld h, a
    jr jr_05f_6250

jr_05f_623e:
    ld a, [$c70f]
    ld l, a
    ld a, [$c710]
    ld h, a
    jr jr_05f_6250

jr_05f_6248:
    ld a, [$c713]
    ld l, a
    ld a, [$c714]
    ld h, a

jr_05f_6250:
    call Call_05f_640f
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [de], a
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    sub [hl]
    ld [de], a
    inc hl
    call Call_05f_641e
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_05f_641e
    ld l, c
    ld h, b
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_05f_641e
    ld l, c
    ld h, b
    ld a, [de]
    sub [hl]
    ld [de], a
    ret


    call Call_05f_6415
    call Call_05f_641e
    call Call_05f_632b
    xor a
    ld [$cf66], a
    ld a, $46
    ld hl, $4233
    rst $08
    ld de, $6b7e
    ld hl, $9600
    ld bc, $5f01
    call $0f82
    ld a, [$c300]
    and a
    jr z, jr_05f_62d8

    cp $0a
    jr z, jr_05f_62f7

    cp $0b
    jr z, jr_05f_6300

    call Call_05f_6309
    ret


jr_05f_62d8:
    call Call_05f_560b
    call Call_05f_6349
    xor a
    ld [$cd7a], a
    ld a, $05
    call $2fcb
    ld hl, $aa73
    ld de, $aa7f
    ld bc, $000c
    call $3026
    call $2fe1
    ret


jr_05f_62f7:
    call Call_05f_6349
    ld a, $01
    ld [$cd7a], a
    ret


jr_05f_6300:
    call Call_05f_6349
    ld a, $02
    ld [$cd7a], a
    ret


Call_05f_6309:
    ld a, $02
    ld [$c303], a
    call Call_05f_5caf
    call $0fdb
    call Call_05f_6349
    call Call_05f_55f6
    ld a, $5f
    ld hl, $7555
    rst $08
    call Call_05f_6349
    call Call_05f_5caf
    xor a
    ld [$cd77], a
    ret


Call_05f_632b:
    ld a, $05
    call $2fcb
    ld hl, $c608
    ld de, $b0b1
    ld bc, $0040
    call $3026
    ld hl, $cd20
    ld bc, $005b
    call $3026
    call $2fe1
    ret


Call_05f_6349:
    ld a, $05
    call $2fcb
    ld hl, $b0b1
    ld de, $c608
    ld bc, $0040
    call $3026
    ld de, $cd20
    ld bc, $005b
    call $3026
    call $2fe1
    ret


    call Call_05f_6415
    call Call_05f_641e
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $05
    ld hl, $4c10
    rst $08
    pop af
    ldh [rSVBK], a
    ret


    call Call_05f_6415
    call Call_05f_641e
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $05
    ld hl, $4a58
    rst $08
    pop af
    ldh [rSVBK], a
    ret


    call Call_05f_6415
    call Call_05f_641e
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $05
    ld hl, $4e0c
    rst $08
    pop af
    ldh [rSVBK], a
    ret


    call Call_05f_6415
    call Call_05f_641e
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $05
    ld hl, $4e13
    rst $08
    pop af
    ldh [rSVBK], a
    ret


    call Call_05f_6415
    call Call_05f_641e
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $41
    ld hl, $6155
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08
    pop af
    ldh [rSVBK], a
    ret


    call Call_05f_6415
    ld a, [hl+]
    ld c, a
    call Call_05f_641e
    ld a, $01
    ldh [$d4], a
    call $0468
    ret


    call Call_05f_6415
    call Call_05f_641e

jr_05f_63f6:
    call $0a57
    ld hl, $ffa7
    ld a, [hl]
    and $01
    ret nz

    ld a, [hl]
    and $02
    ret nz

    call $31f6
    jr jr_05f_63f6

    ld hl, $cd77
    set 7, [hl]
    ret


Call_05f_640f:
    ld de, $d000
    add hl, de
    jr jr_05f_641e

Call_05f_6415:
Jump_05f_6415:
    ld a, [$cd78]
    ld l, a
    ld a, [$cd79]
    ld h, a
    inc hl

Call_05f_641e:
Jump_05f_641e:
jr_05f_641e:
    ld a, l
    ld [$cd78], a
    ld a, h
    ld [$cd79], a
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $01
    jr nz, jr_05f_6432

    and $02
    ret z

jr_05f_6432:
    ld a, $03
    ld [$cd77], a
    ret


Call_05f_6438:
Jump_05f_6438:
    ld hl, $cd77
    inc [hl]
    ret


Call_05f_643d:
    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    add hl, bc
    ret


Call_05f_6447:
    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    add hl, de
    ret


Call_05f_6451:
    ld a, [$cd42]
    and a
    ret z

    call Call_05f_651b
    call Call_05f_64dd
    ld a, [$cd2e]
    push af
    ld a, [$cd49]
    ld l, a
    ld a, [$cd4a]
    ld h, a
    ld a, [$cd2f]
    ld [$cd2e], a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    push hl
    ld hl, $c4a0
    ld bc, $0014
    ld a, [$cd23]
    call $30fe
    ld a, [$cd22]
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    ld a, [$cd25]

jr_05f_648b:
    push af
    push hl
    ld a, [$cd24]

jr_05f_6490:
    push af
    push hl
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld d, a
    push bc
    push hl
    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    add hl, de
    push hl
    pop de
    pop hl
    call $1078
    pop bc
    pop hl
    ld a, [$cd26]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$cd2e]
    inc a
    ld [$cd2e], a
    ld e, a
    ld a, [$cd42]
    cp e
    jr z, jr_05f_64d5

    pop af
    dec a
    jr nz, jr_05f_6490

    pop hl
    ld a, [$cd27]
    ld de, $0014

jr_05f_64cb:
    add hl, de
    dec a
    jr nz, jr_05f_64cb

    pop af
    dec a
    jr nz, jr_05f_648b

    jr jr_05f_64d8

jr_05f_64d5:
    pop af
    pop hl
    pop af

jr_05f_64d8:
    pop af
    ld [$cd2e], a
    ret


Call_05f_64dd:
    ld a, [$cd2c]
    and $01
    ret z

    ld a, [$cd29]
    ld hl, $c4a0
    ld bc, $0014
    call $30fe
    ld a, [$cd28]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cd2f]
    and a
    jr z, jr_05f_64ff

    ld a, $61
    ld [hl], a

jr_05f_64ff:
    ld a, [$cd2a]
    ld bc, $0014
    call $30fe
    ld a, [$cd42]
    ld c, a
    ld a, [$cd2e]
    ld b, a
    ld a, [$cd24]
    add b
    cp c
    ret z

    ret nc

    ld a, $ee
    ld [hl], a
    ret


Call_05f_651b:
    ld a, [$cd28]
    ld hl, $cd22
    sub [hl]
    inc a
    ld [$cd4f], a
    ld hl, $c4a0
    ld bc, $0014
    ld a, [$cd23]
    dec a
    call $30fe
    ld a, [$cd22]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cd25]
    ld c, a
    ld a, [$cd27]
    call $3105

jr_05f_6544:
    push af
    push hl
    ld a, [$cd4f]
    ld c, a
    ld b, $00
    ld a, $7f
    call $3041
    pop hl
    ld bc, $0014
    add hl, bc
    pop af
    dec a
    jr nz, jr_05f_6544

    ret


Call_05f_655b:
    ld a, [$cd42]
    and a
    ret z

    ld a, $ed
    call Call_05f_6571
    ret


Call_05f_6566:
    ld a, [$cd42]
    and a
    ret z

    ld a, $7f
    call Call_05f_6571
    ret


Call_05f_6571:
    push af
    ld hl, $c4a0
    ld bc, $0014
    ld a, [$cd23]
    call $30fe
    ld a, [$cd22]
    ld c, a
    ld b, $00
    add hl, bc
    dec hl
    push hl
    ld a, [$cd31]
    dec a
    ld c, a
    ld a, [$cd27]
    call $3105
    ld l, $00
    ld h, l
    ld bc, $0014
    call $30fe
    ld a, [$cd30]
    dec a
    ld c, a
    ld a, [$cd26]
    call $3105
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    add hl, bc
    pop af
    ld [hl], a
    ret


Call_05f_65af:
    ld a, [$cd2c]
    and $02
    ret z

    ld a, [$cd43]
    ld l, a
    ld a, [$cd44]
    ld h, a
    ld bc, $c4a0
    add hl, bc
    ld bc, $ffec
    add hl, bc
    ld a, [$cd45]
    ld c, a
    ld b, $00
    ld a, [$cd46]
    call Call_05f_6600
    ld a, [$cd2e]
    ld c, a
    ld b, $00
    ld a, [$cd4d]
    ld l, a
    ld a, [$cd4e]
    ld h, a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    add hl, de
    push hl
    pop de
    ld a, [$cd43]
    ld l, a
    ld a, [$cd44]
    ld h, a
    ld bc, $c4a0
    add hl, bc
    call $1078
    ret


Call_05f_6600:
jr_05f_6600:
    push af
    push hl
    push bc
    ld a, $7f
    call $3041
    pop bc
    pop hl
    ld de, $0014
    add hl, de
    pop af
    dec a
    jr nz, jr_05f_6600

    ret


Call_05f_6613:
    push hl
    ld hl, $c4a0
    ld bc, $0014
    ld a, [de]
    inc de
    push af
    ld a, [de]
    inc de
    and a

jr_05f_6620:
    jr z, jr_05f_6626

    add hl, bc
    dec a
    jr jr_05f_6620

jr_05f_6626:
    pop af
    ld c, a
    ld b, $00
    add hl, bc
    push hl
    ld a, [$cd53]
    ld [hl+], a
    ld a, [de]
    inc de
    dec a
    dec a
    jr z, jr_05f_663f

    ld c, a
    ld a, [$cd53]
    inc a

jr_05f_663b:
    ld [hl+], a
    dec c
    jr nz, jr_05f_663b

jr_05f_663f:
    ld a, [$cd53]
    add $02
    ld [hl], a
    pop hl
    ld bc, $0014
    add hl, bc
    ld a, [de]
    dec de
    dec a
    dec a
    jr z, jr_05f_6674

    ld b, a

jr_05f_6651:
    push hl
    ld a, [$cd53]
    add $03
    ld [hl+], a
    ld a, [de]
    dec a
    dec a
    jr z, jr_05f_6664

    ld c, a
    ld a, $7f

jr_05f_6660:
    ld [hl+], a
    dec c
    jr nz, jr_05f_6660

jr_05f_6664:
    ld a, [$cd53]
    add $04
    ld [hl], a
    pop hl
    push bc
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_05f_6651

jr_05f_6674:
    ld a, [$cd53]
    add $05
    ld [hl+], a
    ld a, [de]
    dec a
    dec a
    jr z, jr_05f_6689

    ld c, a
    ld a, [$cd53]
    add $06

jr_05f_6685:
    ld [hl+], a
    dec c
    jr nz, jr_05f_6685

jr_05f_6689:
    ld a, [$cd53]
    add $07
    ld [hl], a
    pop hl
    ret


Call_05f_6691:
    push hl
    ld hl, $0000
    ld bc, $0014
    ld a, [de]
    inc de
    push af
    ld a, [de]
    inc de
    inc de
    and a

jr_05f_669f:
    jr z, jr_05f_66a5

    add hl, bc
    dec a
    jr jr_05f_669f

jr_05f_66a5:
    pop af
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    dec de

jr_05f_66ac:
    push af
    push hl
    ld a, [de]

jr_05f_66af:
    push af
    push hl
    push hl
    ld bc, $c4a0
    add hl, bc
    ld a, [hl]
    cp $7f
    jr z, jr_05f_66c2

    ld a, [$cd53]
    add $08
    jr jr_05f_66c7

jr_05f_66c2:
    ld a, [$cd53]
    jr jr_05f_66c7

jr_05f_66c7:
    pop hl
    ld bc, $cdd9
    add hl, bc
    ld [hl], a
    pop hl
    inc hl
    pop af
    dec a
    jr nz, jr_05f_66af

    pop hl
    ld bc, $0014
    add hl, bc
    pop af
    dec a
    jr nz, jr_05f_66ac

    pop hl
    ret


Call_05f_66de:
    push af
    ld a, [$c708]
    ld l, a
    ld a, [$c709]
    ld h, a
    ld de, $cdd9
    add hl, de
    pop af
    ld b, $07

jr_05f_66ee:
    push hl
    ld c, $07

jr_05f_66f1:
    ld [hl+], a
    dec c
    jr nz, jr_05f_66f1

    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_05f_66ee

    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rrca
    ld hl, sp+$0f
    rst $38
    nop
    add a
    nop
    sbc e
    nop
    add [hl]
    nop
    sbc l
    nop
    sbc [hl]
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    ld h, l
    nop
    and e
    nop
    ld h, l
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    sbc b
    nop
    add hl, bc
    nop
    ld a, c
    nop
    adc c
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld e, c
    nop
    ld d, [hl]
    nop
    ld e, c
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc a
    nop
    sub a
    nop
    sub a
    nop
    sub a
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    scf
    nop
    ld d, $00
    inc h
    nop
    dec [hl]
    nop
    ld [hl], $00
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld h, a
    nop
    dec h
    nop
    ld a, [c]
    nop
    ld [hl-], a
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc hl
    nop
    cpl
    nop
    ld [hl], e
    nop
    ld h, e
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ccf
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [$1f]
    db $10
    rra
    db $10
    rra
    db $10
    rra
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0f
    rst $38
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
    ld a, a
    ldh [$c7], a
    add b
    sub e
    add b
    rst $38
    nop
    sub e
    ld l, h
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_05f_686e

    ld a, h
    ld a, h
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    ld a, h
    ld a, h
    jr c, jr_05f_6880

    db $10
    stop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05f_686e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop

jr_05f_6880:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$c0], a
    rst $18
    add b
    cp [hl]
    add c
    cp a
    add a
    cp a
    adc b
    cp h
    adc b
    xor h
    sbc b
    rst $38
    rst $38
    ld a, b
    nop
    rrca
    ldh a, [rNR34]
    pop hl
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, e
    rlca
    ld bc, $01ff
    rst $38
    pop hl
    rst $38
    pop af
    rra
    ld de, $111f
    rra
    adc h
    cp b
    call z, $ccb8
    cp b
    call c, $fca8
    adc b
    cp h
    adc b
    cp h
    adc b
    xor h
    sbc b
    dec d
    dec de
    dec e
    inc de
    dec e
    inc de
    dec e
    inc de
    add hl, de
    rla
    ld de, $111f
    rra
    ld de, $8c1f
    cp b
    call z, $ccb8
    cp b
    rst $00
    cp a
    ret nz

    cp a
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, b
    add a
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    rst $38
    dec d
    dec de
    dec e
    inc de
    dec e
    inc de
    db $ed
    di
    ld a, l
    add e
    ei
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    pop bc
    cp $c7
    ld hl, sp-$71
    ldh a, [$8c]
    ldh a, [$9c]
    ldh [rIE], a
    rst $38
    nop
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
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    db $e3
    rra
    pop af
    rrca
    ld sp, $390f
    rlca
    sbc b
    ldh [$98], a
    ldh [$98], a
    ldh [$98], a
    ldh [$98], a
    ldh [$98], a
    ldh [$98], a
    ldh [$98], a
    ldh [rNR24], a
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    sbc h
    ldh [$8c], a
    ldh a, [$8f]
    ldh a, [$c7]
    ld hl, sp-$3f
    cp $e0
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add hl, sp
    rlca
    ld sp, $f10f
    rrca
    db $e3
    rra
    add e
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    cp a
    add b
    cp a
    add b
    or b
    adc a
    or a
    adc a
    or a
    adc h
    or [hl]
    adc h
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    inc bc
    ld bc, $03fd
    db $fd
    inc bc
    dec e
    db $e3
    db $ed
    db $e3
    db $ed
    inc hl
    dec l
    inc hl
    or [hl]
    adc h
    or [hl]
    adc h
    or [hl]
    adc h
    or [hl]
    adc h
    or [hl]
    adc h
    or [hl]
    adc h
    or [hl]
    adc h
    or [hl]
    adc h
    dec l
    inc hl
    dec l
    inc hl
    dec l
    inc hl
    dec l
    inc hl
    dec l
    inc hl
    dec l
    inc hl
    dec l
    inc hl
    dec l
    inc hl
    or [hl]
    adc h
    or [hl]
    adc h
    or a
    adc a
    cp b
    add b
    cp a
    add b
    cp a
    add b
    ret nz

    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    dec l
    inc hl
    dec l
    inc hl
    db $ed
    db $e3
    dec c
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp h
    jp $c3bc


    cp b
    rst $00
    or b
    rst $08
    or b
    rst $08
    pop bc
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, b
    add a
    ld a, b
    add a
    nop
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, l
    add e
    ld a, l
    add e
    dec e
    db $e3
    dec c
    di
    ld bc, $83ff
    rst $38
    jp $83ff


    rst $38
    or e
    rst $08
    or e
    rst $08
    or e
    rst $08
    or e
    rst $08
    or e
    rst $08
    rst $00
    rst $38
    db $e3
    rst $38
    call $cdf3
    di
    call $cdf3
    di
    call $c1f3
    rst $38
    jp $c1ff


    rst $38
    add b
    rst $38
    or b
    rst $08
    cp b
    rst $00
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld e, $e1
    ld e, $e1
    add c
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    dec c
    di
    dec c
    di
    dec e
    db $e3
    dec a
    jp $c33d


    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    ccf
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, a
    ccf
    ld c, l
    ld a, $4b
    dec a
    ld c, a
    dec sp
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $fc
    nop
    nop
    cp $00
    cp $e0
    cp $b0
    ld a, [hl]
    ret nc

    cp [hl]
    ret nc

    cp $4f
    dec sp
    ld c, a
    dec sp
    ld c, a
    dec sp
    ld c, a
    dec sp
    ld c, a
    dec sp
    ld c, a
    dec sp
    ld c, a
    dec sp
    ld c, a
    dec sp
    ret nc

    cp $d0
    cp $d0
    cp $d0
    cp $d0
    cp $d0
    cp $d0
    cp $d0
    cp $4f
    dec sp
    ld c, l
    dec sp
    ld c, h
    ccf
    ld b, a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    ret nc

    cp $90
    cp $30
    cp $e0
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$0808], sp
    add hl, bc
    ld [$090a], sp
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add hl, bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld de, $1109
    add hl, bc
    ld [de], a
    ld [$2138], sp
    inc h
    ld c, c
    ld d, d
    ld [hl-], a
    nop
    nop
    jr jr_05f_704b

    ld d, d
    ld [hl-], a
    inc h
    ld c, c
    nop
    nop
    rst $38
    ld a, a
    ld [hl], a
    add hl, hl
    call $0014
    nop
    rst $38
    ld a, a
    cpl
    rla
    adc d
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, e
    ld c, d
    ld a, $00
    nop
    rst $38
    ld a, a
    sub $32
    sub c
    dec d
    nop
    nop
    and l
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    dec de
    inc bc
    jr @+$10

    nop
    nop
    ld a, $06
    call $2fcb
    inc de

jr_05f_703c:
    call Call_05f_7047
    jr c, jr_05f_7043

    jr jr_05f_703c

jr_05f_7043:
    call $2fe1
    ret


Call_05f_7047:
    ld a, [de]
    inc de
    cp $50

jr_05f_704b:
    jr z, jr_05f_705f

    cp $10
    jr nc, jr_05f_705f

    dec a
    push de
    ld e, a
    ld d, $00
    ld hl, $7061
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_05f_705f:
    scf
    ret


    add c
    ld [hl], b
    ld hl, sp+$70
    ld d, h
    ld [hl], c
    add c
    ld [hl], c
    ret nc

    ld [hl], c
    jr nz, jr_05f_70df

    ld a, e
    ld [hl], d
    bit 6, d
    rst $38
    ld [hl], d
    inc [hl]
    ld [hl], e
    add d
    ld [hl], e
    ret


    ld [hl], e
    ldh a, [$73]
    dec e
    ld [hl], h
    ld c, a
    ld [hl], h
    ld c, a
    ld [hl], h
    pop hl
    call Call_05f_7524
    jr c, jr_05f_709f

    ld de, $0004
    add hl, de
    ld a, [hl+]
    inc hl
    inc hl
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_709d

    and a
    ret


jr_05f_709d:
    scf
    ret


jr_05f_709f:
    push bc
    ld de, $cd54
    ld bc, $0007
    call $3026
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    pop bc
    ld a, [$cd54]
    ld e, a
    ld a, [$cd55]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    push hl
    ld a, [$cd56]
    ld b, a
    ld a, [$cd57]
    ld c, a
    call $31a4
    ld a, l
    ld [$cd52], a
    ld a, h
    ld [$cd53], a
    ld a, [$cd59]
    and a
    jr z, jr_05f_70ee

    ld c, a
    ld a, [$cd57]
    inc a
    ld b, a
    ld e, l
    ld d, h

jr_05f_70df:
    dec de

jr_05f_70e0:
    ld a, c
    cp b
    jr z, jr_05f_70ea

    ld a, [de]
    dec de
    ld [hl-], a
    dec b
    jr jr_05f_70e0

jr_05f_70ea:
    ld a, [$cd5a]
    ld [hl], a

jr_05f_70ee:
    pop hl
    ld a, [$cd58]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    call Call_05f_7524
    jr c, jr_05f_7114

    ld de, $0003
    add hl, de
    ld a, [hl+]
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_7112

    and a
    ret


jr_05f_7112:
    scf
    ret


jr_05f_7114:
    push bc
    ld de, $cd54
    ld bc, $0004
    call $3026
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    ld a, [$cd54]
    ld e, a
    ld a, [$cd55]
    ld d, a
    add hl, de
    ld de, $c608
    ld a, [$cd56]
    ld c, a
    ld b, $00
    call $3026
    ld a, $50
    ld [de], a
    pop hl
    ld de, $c608
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, [$cd57]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    call Call_05f_7524
    jr c, jr_05f_7167

    inc hl
    inc hl
    ld e, l
    ld d, h
    ld a, [de]
    cp $50
    jr z, jr_05f_7165

    and a
    ret


jr_05f_7165:
    scf
    ret


jr_05f_7167:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    add hl, de
    ld c, l
    ld b, h
    pop de
    ld a, $47
    ld hl, $408f
    rst $08
    ld c, l
    ld b, h
    pop de
    and a
    ret


    pop hl
    call Call_05f_7524
    jr c, jr_05f_719d

    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_719b

    and a
    ret


jr_05f_719b:
    scf
    ret


jr_05f_719d:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [$cd54], a
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    add hl, de
    ld a, [hl]
    ld c, a
    ld de, $c608
    ld a, $12
    ld hl, $4c63
    rst $08
    pop hl
    ld de, $c608
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    call Call_05f_7524
    jr c, jr_05f_71ec

    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_71ea

    and a
    ret


jr_05f_71ea:
    scf
    ret


jr_05f_71ec:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [$cd54], a
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    add hl, de
    ld a, [hl]
    ld a, $01
    ldh [rSVBK], a
    ld [$d265], a
    call $343b
    pop hl
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, $04
    ldh [rSVBK], a
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    call Call_05f_7524
    jr c, jr_05f_723c

    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_723a

    and a
    ret


jr_05f_723a:
    scf
    ret


jr_05f_723c:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [$cd54], a
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    add hl, de
    ld a, [hl]
    ld e, a
    ld d, $00
    ld hl, $726e
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    pop hl
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    ld [hl], d
    ld [hl], d
    db $76
    ld [hl], d
    add c
    xor [hl]
    cp b
    ld d, b
    add [hl]
    xor b
    or c
    xor e
    ld d, b
    pop hl
    call Call_05f_7524
    jr c, jr_05f_7297

    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_7295

    and a
    ret


jr_05f_7295:
    scf
    ret


jr_05f_7297:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [$cd54], a
    pop bc
    push hl
    push bc
    call Call_05f_74f6
    add hl, de
    ld a, [hl]
    ld a, $01
    ldh [rSVBK], a
    ld [$d265], a
    call $3468
    pop hl
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, $04
    ldh [rSVBK], a
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    push bc
    ld a, [hl+]
    ld [$cd54], a
    ld a, [hl+]
    ld [$cd55], a
    ld a, [$cd2e]
    inc a
    ld [$cd56], a
    pop bc
    push hl
    ld l, c
    ld h, b
    push hl
    ld de, $cd56
    ld b, $01
    ld a, [$cd54]
    ld c, a
    call $31a4
    ld a, l
    ld [$cd52], a
    ld a, h
    ld [$cd53], a
    pop hl
    ld a, [$cd55]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    push bc
    ld a, [hl+]
    ld [$cd54], a
    pop bc
    push hl
    push bc
    ld a, $01
    ldh [rSVBK], a
    ld hl, $d47d
    ld de, $c608
    ld bc, $0006
    call $3026
    ld a, $04
    ldh [rSVBK], a
    pop hl
    ld de, $c608
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    push bc
    ld a, [hl+]
    ld [$cd55], a
    and $0f
    ld [$cd54], a
    pop bc
    push hl
    ld l, c
    ld h, b
    push hl
    ld a, [$cd55]
    bit 7, a
    jr nz, jr_05f_7355

    ld a, $01
    call $2fcb
    ld a, [$be3f]
    jr jr_05f_735d

jr_05f_7355:
    ld a, $05
    call $2fcb
    ld a, [$b2f3]

jr_05f_735d:
    ld c, a
    call $2fe1
    ld de, $c608
    ld a, $12
    ld hl, $4c63
    rst $08
    pop hl
    ld de, $c608
    call $1078
    ld a, c
    ld [$cd52], a
    ld a, b
    ld [$cd53], a
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    pop hl
    push bc
    ld a, [hl+]
    ld [$cd55], a
    and $0f
    ld [$cd54], a
    pop bc
    push hl
    push bc
    ld l, c
    ld h, b
    ld a, [$cd55]
    bit 7, a
    jr nz, jr_05f_73a3

    ld a, $01
    call $2fcb
    ld de, $be40
    jr jr_05f_73ab

jr_05f_73a3:
    ld a, $05
    call $2fcb
    ld de, $b2f4

jr_05f_73ab:
    ld a, $82
    ld b, a
    ld a, $03
    ld c, a
    call $3198
    call $2fe1
    ld a, l
    ld [$cd52], a
    ld a, h
    ld [$cd53], a
    pop hl
    ld a, [$cd54]
    call Call_05f_750f
    pop de
    and a
    ret


    push bc
    ld hl, $cd36
    ld de, $c708
    ld bc, $000c
    call $3026
    pop de
    ld c, $00
    ld a, $47
    ld hl, $4075
    rst $08
    push hl
    ld hl, $c708
    ld de, $cd36
    ld bc, $000c
    call $3026
    pop bc
    pop de
    and a
    ret


    pop hl
    push hl
    ld a, [hl+]
    push af
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $d000
    add hl, de
    ld e, l
    ld d, h
    pop hl
    call $1078
    pop af
    ld e, a
    ld d, $00
    pop hl
    add hl, de
    add hl, de
    inc hl
    inc hl
    inc hl
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    scf
    ret


    pop hl
    ld a, [hl+]
    push hl
    push af
    ld l, c
    ld h, b
    ld bc, $3b60
    add hl, bc
    ld de, $ffec
    ld c, $01

jr_05f_742c:
    ld a, h
    and a
    jr nz, jr_05f_7435

    ld a, l
    cp $14
    jr c, jr_05f_7439

jr_05f_7435:
    add hl, de
    inc c
    jr jr_05f_742c

jr_05f_7439:
    ld hl, $c4a0
    ld de, $0014
    ld a, c

jr_05f_7440:
    and a
    jr z, jr_05f_7447

    add hl, de
    dec a
    jr jr_05f_7440

jr_05f_7447:
    pop af
    ld e, a
    ld d, $00
    add hl, de
    pop de
    and a
    ret


    pop hl
    call Call_05f_7524
    jr c, jr_05f_746d

    ld de, $0005
    add hl, de
    ld a, [hl+]
    inc hl
    inc hl
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp $50
    jr z, jr_05f_746b

    and a
    ret


jr_05f_746b:
    scf
    ret


jr_05f_746d:
    push bc
    ld de, $cd54
    ld bc, $0008
    call $3026
    pop bc
    push hl
    push bc
    ld a, [$cd56]
    cp $c0
    jr c, jr_05f_7488

    ld a, [$cd54]
    ldh [rSVBK], a
    jr jr_05f_748e

jr_05f_7488:
    ld a, [$cd54]
    call $2fcb

jr_05f_748e:
    ld a, [$cd55]
    ld l, a
    ld a, [$cd56]
    ld h, a
    ld de, $c608
    ld a, [$cd57]
    ld c, a
    ld b, $00
    call $3026
    ld a, [$cd56]
    cp $c0
    jr c, jr_05f_74af

    ld a, $04
    ldh [rSVBK], a
    jr jr_05f_74b7

jr_05f_74af:
    call $2fe1
    ld a, $06
    call $2fcb

jr_05f_74b7:
    ld de, $c608
    pop hl
    push hl
    ld a, [$cd57]
    ld b, a
    ld a, [$cd58]
    ld c, a
    call $31a4
    ld a, l
    ld [$cd52], a
    ld a, h
    ld [$cd53], a
    ld a, [$cd5a]
    and a
    jr z, jr_05f_74ec

    ld c, a
    ld a, [$cd58]
    inc a
    ld b, a
    ld e, l
    ld d, h
    dec de

jr_05f_74de:
    ld a, c
    cp b
    jr z, jr_05f_74e8

    ld a, [de]
    dec de
    ld [hl-], a
    dec b
    jr jr_05f_74de

jr_05f_74e8:
    ld a, [$cd5b]
    ld [hl], a

jr_05f_74ec:
    pop hl
    ld a, [$cd59]
    call Call_05f_750f
    pop de
    and a
    ret


Call_05f_74f6:
    ld a, [$cd6a]
    ld l, a
    ld a, [$cd6b]
    ld h, a
    ld a, [$cd47]
    ld c, a
    ld a, [$cd48]
    ld b, a
    ld a, [$cd2e]

jr_05f_7509:
    and a
    ret z

    dec a
    add hl, bc
    jr jr_05f_7509

Call_05f_750f:
    and a
    jr z, jr_05f_7519

    ld c, a
    ld b, $00
    add hl, bc
    ld c, l
    ld b, h
    ret


jr_05f_7519:
    ld a, [$cd52]
    ld c, a
    ld l, a
    ld a, [$cd53]
    ld b, a
    ld h, a
    ret


Call_05f_7524:
    push hl
    push bc
    push de
    ld a, [$cd42]
    dec a
    ld b, a
    ld a, [$cd2e]
    cp b
    jr z, jr_05f_753a

    ld hl, $cd68
    cp [hl]

jr_05f_7536:
    pop de
    pop bc
    pop hl
    ret


jr_05f_753a:
    scf
    jr jr_05f_7536

    call $2b29
    xor a
    ld [$c303], a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    call Call_05f_7555
    pop af
    ldh [rSVBK], a
    call $2b4d
    ret


Call_05f_7555:
jr_05f_7555:
    call $0a57
    call Call_05f_75ae
    ld a, [$c303]
    bit 7, a
    jr nz, jr_05f_756a

    ld a, $41
    ld hl, $4000
    rst $08
    jr jr_05f_7555

jr_05f_756a:
    call Call_05f_756e
    ret


Call_05f_756e:
    ld a, [$c300]
    cp $22
    jr z, jr_05f_7597

    cp $31
    jr z, jr_05f_758a

    cp $33
    ret nz

    ld a, [$c301]
    cp $01
    ret nz

    ld a, [$c302]
    cp $02
    ret nz

    jr jr_05f_75a1

jr_05f_758a:
    ld a, [$c301]
    cp $03
    ret nz

    ld a, [$c302]
    and a
    ret nz

    jr jr_05f_75a1

jr_05f_7597:
    ld a, [$c301]
    and a
    ret nz

    ld a, [$c302]
    and a
    ret nz

jr_05f_75a1:
    ld a, $05
    call $2fcb
    xor a
    ld [$aa4b], a
    call $2fe1
    ret


Call_05f_75ae:
    ld a, [$c303]
    ld e, a
    ld d, $00
    ld hl, $75bd
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp $2375


    ld a, a
    jp nc, $cd75

    db $e4
    ld [hl], l
    ld a, $00
    ld hl, $2b5c
    rst $08
    ld a, $01
    ld [$c303], a
    ret


    call Call_05f_75e4
    ld a, $41
    ld hl, $4000
    rst $08
    call $32f9
    ld a, $01
    ld [$c303], a
    ret


Call_05f_75e4:
    ld a, $08
    ld [$c2a7], a
    ld de, $0000
    ld a, e
    ld [$c2a9], a
    ld a, d
    ld [$c2aa], a
    ld a, $7f
    ld hl, $c4a0
    ld bc, $0168
    call $3041
    ld a, $06
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    ld hl, $c4b6
    ld b, $01
    ld c, $0e
    call $3eea
    ld hl, $c4f1
    ld b, $0c
    ld c, $10
    call $3eea
    ld hl, $c4cb
    ld de, $76dc
    call $1078
    call Call_05f_7f3c
    jr nc, jr_05f_7632

    ld hl, $c4d3
    call Call_05f_76b7

jr_05f_7632:
    ld a, [$c300]
    cp $d0
    jr nc, jr_05f_7684

    cp $10
    jr c, jr_05f_7679

    sub $10
    cp $24
    jr nc, jr_05f_7679

    ld e, a
    ld d, $00
    ld hl, $7706
    add hl, de
    add hl, de
    ld a, [$c301]
    ld e, a
    ld a, [$c302]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [hl+]
    and a
    jr z, jr_05f_7679

    ld c, a

jr_05f_765d:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_05f_7667

    cp b
    jr z, jr_05f_766e

jr_05f_7667:
    xor d
    jr nz, jr_05f_7674

    ld a, b
    xor e
    jr nz, jr_05f_7674

jr_05f_766e:
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    jr jr_05f_767d

jr_05f_7674:
    inc hl
    inc hl
    dec c
    jr nz, jr_05f_765d

jr_05f_7679:
    ld a, $d9
    jr jr_05f_7684

jr_05f_767d:
    ld hl, $c51a
    call $1078
    ret


jr_05f_7684:
    sub $d0
    ld e, a
    ld d, $00
    ld hl, $7699
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld hl, $c51a
    call $1078
    ret


    rst $18
    ld a, [hl]
    reti


    ld a, l
    reti


    ld a, l
    inc bc
    ld a, [hl]
    add h
    ld a, l
    ld h, e
    ld a, [hl]
    or d
    ld a, l
    ld c, e
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    and l
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38
    ld a, a

Call_05f_76b7:
    ld a, [$c300]
    call Call_05f_76cd
    inc hl
    ld a, [$c302]
    and $0f
    call Call_05f_76d8
    ld a, [$c301]
    call Call_05f_76cd
    ret


Call_05f_76cd:
    ld c, a
    and $f0
    swap a
    call Call_05f_76d8
    ld a, c
    and $0f

Call_05f_76d8:
    add $f6
    ld [hl+], a
    ret


    jp nz, $bcb3

    sbc $83
    and l
    db $e3
    ld a, a
    ld a, a
    ld a, a
    db $e3
    ld d, b
    ret nc

    jp $27b2


    dec h
    add e
    and l
    db $e3
    inc sp
    cp l
    ld c, [hl]
    ld b, d
    xor b
    rlca
    and l
    sbc a
    rra
    ld c, [hl]
    or [hl]
    cp b
    add $de
    ld a, a
    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    ld c, [hl]
    ld [hl], a
    ld d, e
    ld [hl], a
    ld e, b
    ld [hl], a
    ld e, l
    ld [hl], a
    ld h, d
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, l
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add d
    ld [hl], a
    add a
    ld [hl], a
    adc h
    ld [hl], a
    sub c
    ld [hl], a
    sub [hl]
    ld [hl], a
    sbc e
    ld [hl], a
    and b
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    and l
    ld [hl], a
    ld_long $ff77, a
    ld [hl], a
    ld b, h
    ld a, b
    ld bc, $0000
    sub c
    ld a, b
    ld bc, $0000
    pop de
    ld a, b
    ld bc, $0000
    inc de
    ld a, c
    ld bc, $0000
    pop de
    ld a, b
    ld bc, $0000
    ld [hl], c
    ld a, d
    inc b
    nop
    nop
    ld b, [hl]
    ld a, c
    ld bc, $4600
    ld a, c
    ld [bc], a
    nop
    ld b, [hl]
    ld a, c
    inc bc
    nop
    ld b, [hl]
    ld a, c
    ld bc, $0000
    adc [hl]
    ld a, c
    ld bc, $0000
    adc [hl]
    ld a, c
    ld bc, $0000
    adc [hl]
    ld a, c
    ld bc, $0000
    adc [hl]
    ld a, c
    ld bc, $0000
    ret nc

    ld a, c
    ld bc, $0000
    inc d
    ld a, d
    ld bc, $0000
    cp a
    ld a, h
    ld bc, $0000
    ld [hl], c
    ld a, d
    ld bc, $0000
    cp $7b
    ld de, $0000
    adc [hl]
    ld a, c
    ld hl, $bf02
    ld a, h
    ld hl, $bf04
    ld a, h
    ld d, b
    inc b
    ld sp, hl
    ld a, d
    ld d, c
    inc b
    cp a
    ld a, h
    ld d, d
    inc b
    cp a
    ld a, h
    nop
    dec b
    adc [hl]
    ld a, c
    ld bc, $8e05
    ld a, c
    ld [bc], a
    dec b
    adc [hl]
    ld a, c
    inc bc
    dec b
    adc [hl]
    ld a, c
    inc b
    dec b
    adc [hl]
    ld a, c
    ld d, b
    dec b
    ld sp, hl
    ld a, d
    ld d, c
    dec b
    ld sp, hl
    ld a, d
    ld d, d
    dec b
    cp a
    ld a, h
    ld d, e
    dec b
    ld sp, hl
    ld a, d
    ld d, h
    dec b
    cp a
    ld a, h
    rst $38
    rst $38
    cp a
    ld a, h
    dec b
    nop
    nop
    adc [hl]
    ld a, c
    ld [bc], a
    nop
    ld a, [hl+]
    ld a, e
    inc bc
    nop
    ld l, [hl]
    ld a, e
    inc b
    nop
    adc [hl]
    ld a, c
    rst $38
    rst $38
    cp a
    ld a, h
    ld de, $0000
    adc [hl]
    ld a, c
    ld bc, $8e03
    ld a, c
    ld [bc], a
    inc bc
    adc [hl]
    ld a, c
    nop
    inc b
    adc [hl]
    ld a, c
    ld bc, $8e04
    ld a, c
    inc bc
    inc b
    or [hl]
    ld a, e
    inc b
    inc b
    or [hl]
    ld a, e
    dec b
    inc b
    adc [hl]
    ld a, c
    ld b, $04
    adc [hl]
    ld a, c
    rlca
    inc b
    adc [hl]
    ld a, c
    ld [$fe04], sp
    ld a, e
    nop
    dec b
    ld c, c
    ld a, d
    ld bc, $8e05
    ld a, c
    ld [bc], a
    dec b
    ld c, c
    ld a, d
    inc bc
    dec b
    or b
    ld a, d
    inc b
    dec b
    ld c, c
    ld a, d
    rst $38
    rst $38
    ld c, c
    ld a, d
    inc de
    ld bc, $3e01
    ld a, h
    ld [bc], a
    ld bc, $7c88
    inc bc
    ld bc, $7cff
    inc b
    ld bc, $7d84
    dec b
    ld bc, $7d84
    ld b, $01
    ld b, a
    ld a, l
    ld bc, $6e02
    ld a, e
    ld [bc], a
    ld [bc], a
    adc [hl]
    ld a, c
    inc bc
    ld [bc], a
    add h
    ld a, l
    inc b
    ld [bc], a
    adc [hl]
    ld a, c
    dec b
    ld [bc], a
    ld c, c
    ld a, d
    ld b, $02
    add h
    ld a, l
    sbc c
    ld [bc], a
    adc b
    ld a, h
    ld bc, $4903
    ld a, d
    ld bc, $4904
    ld a, d
    ld [bc], a
    inc b
    ld c, c
    ld a, d
    inc bc
    inc b
    ld c, c
    ld a, d
    inc b

jr_05f_788a:
    inc b
    ld c, c
    ld a, d
    rst $38
    rst $38
    ld c, c
    ld a, d
    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    ld h, $7f
    ret nz

    jr nc, @-$42

    cp b
    ld c, [hl]
    cp e
    cp h
    cp d
    rst $08
    jp c, $b2c3

    rst $08
    cp [hl]
    sbc $4e
    call nz, $b1d8
    jp nz, $b2b6

    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld c, [hl]
    ld a, [hl+]
    rst $10
    sbc $c9
    or e
    or h
    ld a, a
    cp h
    rst $18
    or [hl]
    ret c

    call nz, $bb4e
    cp h
    cp d
    sbc $33
    ld a, a

jr_05f_78cc:
    cp b
    jr nc, jr_05f_788a

    or d
    ld d, b
    inc sp
    sbc $dc
    ld h, $7f
    or e
    rst $08
    cp b
    ld a, a
    or [hl]
    cp c
    rst $10
    jp c, $b2c5

    or [hl]
    ld c, [hl]
    inc sp
    sbc $dc
    or [hl]
    or d
    cp [hl]
    sbc $26
    ld a, a
    cp d
    sbc $33
    or d
    reti


    ret


    inc sp
    ld c, [hl]
    jp nz, $bcb3

    sbc $7f
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp h

jr_05f_78ff:
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_78cc

    or d
    ld d, b
    inc sp
    sbc $dc
    or [hl]
    or d
    cp [hl]
    sbc $26
    ld a, a
    cp d
    sbc $33
    or d
    reti


    ret nz

    jp nc, $334e

    sbc $dc
    ld h, $7f
    or [hl]
    cp c
    rst $10
    jp c, $becf

    sbc $4e
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_78ff

    or d
    ld d, b
    and c

jr_05f_7947:
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    ret


    ld a, a
    add e
    and l
    db $e3
    inc sp
    cp l
    ld c, [hl]
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, @-$43

    or d
    ld c, [hl]
    push bc
    or l
    rst $10
    push bc
    or d
    ld a, a
    call nz, $cab7
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc d
    ld b, e
    db $e3
    sub e
    adc l
    xor e
    adc a
    db $e3
    call $b54e
    call nz, $b1b2
    call c, $b8be
    jr nc, jr_05f_7947

    or d
    ld d, b
    jp nz, $bcb3

    sbc $83
    and l
    db $e3
    inc sp
    cp l
    ld c, [hl]
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, @-$43

    or d
    ld c, [hl]
    push bc
    or l
    rst $10
    push bc
    or d
    ld a, a
    call nz, $cab7
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc d
    ld b, e
    db $e3
    sub e
    adc l
    xor e
    adc a
    db $e3
    call $b54e
    call nz, $b1b2
    call c, $b8be
    jr nc, @-$43

    or d
    ld d, b
    xor b
    rlca
    add c
    xor e
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    or [hl]
    ld c, [hl]
    xor b
    rlca
    add c
    xor e
    ld a, a
    add b
    add c
    ld [de], a
    or b
    db $e3
    add $4e
    rst $08
    pop bc
    ld h, $b2
    ld h, $b1
    ret c

    rst $08
    cp l
    ld c, [hl]
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    db $dd
    ld a, a
    or [hl]
    cp b
    add $de
    cp h
    jp $bc4e


    ld a, [hl-]
    rst $10

jr_05f_7a02:
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, @-$43

    or d
    ld d, b
    inc sp
    sbc $dc
    ld h, $7f
    or a
    jp c, $bccf

    ret nz

    ld c, [hl]
    call nz, $b1d8
    jp nz, $b2b6

    cp [hl]
    jp nz, $b2d2

    cp h

jr_05f_7a2a:
    ld [c], a
    db $dd
    ld c, [hl]
    ld a, [hl+]
    rst $10
    sbc $c9
    or e
    or h
    ld c, [hl]
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7a02

    or d
    ld d, b

jr_05f_7a49:
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    ret


    ld c, [hl]
    jp nz, $bcb3

    sbc $83
    and l
    db $e3
    inc sp
    cp l
    ld c, [hl]
    cp h
    ld a, [hl-]
    rst $10
    cp b
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7a2a

    or d
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    add $4e
    call nz, $dbb3
    cp b
    cp e
    jp c, Jump_05f_7fc0

    inc l
    ld [c], a
    or e
    adc $b3
    ld h, $4e
    ret nz

    jr nc, jr_05f_7a49

    cp b
    ld a, a
    or c
    ret c

    rst $08
    cp [hl]
    sbc $4e

jr_05f_7a95:
    and c
    add hl, de
    add c
    and [hl]
    sub e
    and a
    db $e3
    sub h
    db $e3
    inc sp
    ld c, [hl]
    cp h
    ld [c], a
    or a
    call nz, $dbb3
    cp b
    db $dd
    ld a, a
    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    and c
    add hl, de

jr_05f_7ab2:
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    ld h, $4e
    cp d
    sbc $33
    or d
    jp $c27f


    push bc
    ld h, $d8
    rst $08
    cp [hl]
    sbc $4e
    cp h
    ld a, [hl-]
    rst $10
    cp b
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7a95

    or d
    ld c, [hl]
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld a, a
    ld a, [hl+]
    rst $10
    sbc $b8
    jr nc, jr_05f_7ab2

    or d
    ld d, b
    or c
    jp $b7bb


    ld a, a
    and b
    db $e3
    and [hl]
    add b
    inc de
    and a
    adc h
    add $4e
    rst $08
    pop bc
    ld h, $b2
    ld h, $b1
    ret c

    rst $08
    cp l
    ld c, [hl]
    ret nz

    jr nc, @-$42

    or d
    ld a, a
    and b
    db $e3
    and [hl]
    add b
    inc de
    and a
    adc h
    db $dd
    ld c, [hl]
    or d
    jp c, $b5c5

    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    and b
    db $e3
    and [hl]
    add b
    inc de
    and a
    adc h
    add $4e
    rst $08
    pop bc
    ld h, $b2
    ld h, $7f
    or c
    ret c

    rst $08
    cp l
    ld c, [hl]
    call nz, $b1d8
    jp nz, $b2b6

    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld c, [hl]
    ld a, [hl+]
    rst $10
    sbc $c9
    or e
    or h
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    sub e
    and a
    db $e3
    sub h
    db $e3
    inc sp
    ld c, [hl]
    cp h
    ld [c], a
    or a
    call nz, $dbb3
    cp b
    db $dd
    ld a, a
    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    xor b

jr_05f_7b6f:
    rlca
    add c
    xor e
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    add $4e
    rst $08
    pop bc
    ld h, $b2
    ld h, $7f
    or c
    reti


    or [hl]
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    ret


    ld a, a
    add e
    and l
    db $e3
    inc sp
    cp l
    ld c, [hl]
    ld b, b

jr_05f_7b94:
    adc h
    xor c
    db $e3
    inc de
    db $dd
    ld a, a
    or [hl]
    cp b
    add $de
    cp h
    jp $bc4e


    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7b6f

    or d
    ld d, b
    ld [de], a

jr_05f_7bb7:
    db $e3
    adc a
    ret


    ld a, a
    sub $d0
    cp d
    ret nc

    ld h, $7f
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp h
    ld a, [hl-]
    rst $10
    cp b
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7b94

    or d
    ld c, [hl]
    push bc
    or l
    rst $10
    push bc
    or d
    ld a, a
    call nz, $cab7
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc d
    ld b, e
    db $e3
    sub e
    adc l
    xor e
    adc a
    db $e3
    call $b54e
    call nz, $b1b2

jr_05f_7bf7:
    call c, $b8be
    jr nc, jr_05f_7bb7

    or d
    ld d, b
    inc l
    or [hl]
    sbc $27
    jp c, $bd33

    ld c, [hl]
    inc sp
    sbc $dc
    ld h, $7f
    or a
    jp c, $bccf

    ret nz

    ld c, [hl]
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    push bc
    or l
    cp h
    jp $30b8


    cp e
    or d
    ld c, [hl]
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld a, a
    ld a, [hl+]
    rst $10
    sbc $b8
    jr nc, jr_05f_7bf7

    or d
    ld d, b
    ld a, [hl+]
    ret c

    sub $b3
    ld a, a
    ret c

    ld [c], a
    or e
    or a
    sbc $c9
    ld a, a
    ld c, [hl]
    or l
    cp h
    jp z, $b2d7

    ld h, $7f
    or l
    cp b
    jp c, $3ac0

    or c
    or d
    add $ca
    ld c, [hl]
    ld a, [hl+]
    ret c

    sub $b3
    ld h, $7f
    inc sp
    or a
    push bc
    cp b
    push bc
    ret c

    rst $08
    cp l
    ld c, [hl]
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]

jr_05f_7c78:
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld a, a
    ld a, [hl+]
    rst $10
    sbc $b8
    jr nc, @-$43

    or d
    ld d, b
    or l
    or a
    ldh [$b8], a
    cp e
    rst $08
    ret


    ld a, a
    ld a, [hl+]
    jp nz, $b32a

    add $d6
    ret c

    ld c, [hl]
    ld a, [hl+]
    ret c

    sub $b3
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld a, a
    ld a, [hl+]

jr_05f_7cb8:
    rst $10
    sbc $b8
    jr nc, jr_05f_7c78

    or d
    ld d, b
    inc sp
    sbc $dc
    or [hl]
    or d
    cp [hl]
    sbc $26
    ld a, a
    cp d
    sbc $33
    or d
    reti


    or [hl]
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    ret


    ld a, a
    add e
    and l
    db $e3
    inc sp
    ld c, [hl]
    jp nz, $bcb3

    sbc $26
    ld a, a
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7cb8

    or d
    ld d, b
    ld a, [hl+]

jr_05f_7d00:
    ret c

    sub $b3
    ld a, a
    ret c

    ld [c], a
    or e
    or a
    sbc $26
    ld c, [hl]
    inc l
    ld [c], a
    or e
    add hl, hl
    sbc $dd
    ld a, a
    cp d
    or h
    jp $d9b2


    ret nz

    jp nc, $ba4e

    sbc $29
    jp nz, Jump_05f_7fca

    ld a, [hl+]
    ret c

    sub $b3
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a

jr_05f_7d3d:
    db $dd
    ld a, a
    ld a, [hl+]
    rst $10
    sbc $b8
    jr nc, jr_05f_7d00

    or d
    ld d, b
    add hl, hl
    sbc $2b
    or d
    ld a, a
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    ret


    ld c, [hl]
    jp $b9de


    sbc $dd
    ld a, a
    cp h
    jp $d9b2


    ret


    inc sp
    ld c, [hl]
    jp nz, $bcb3

    sbc $26
    ld a, a
    inc sp
    or a

jr_05f_7d6b:
    rst $08
    cp [hl]
    sbc $4e
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7d3d

    or d
    ld d, b
    ld [de], a
    db $e3
    adc a
    ret


    ld a, a
    sub $d0
    cp d
    ret nc

    ld h, $7f
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld a, a
    ld a, [hl+]
    rst $10
    sbc $b8
    jr nc, jr_05f_7d6b

    or d
    ld d, b
    ld sp, hl
    ld b, [hl]
    sbc $7f
    or d
    inc l
    ld [c], a
    or e
    ld a, a
    push bc
    add $d3
    ld c, [hl]
    add $e1
    or e
    ret c

    ld [c], a
    cp b
    ld a, a
    cp h
    push bc
    or [hl]
    rst $18
    ret nz

    ret


    inc sp
    ld c, [hl]
    inc sp
    sbc $dc
    ld h, $7f
    or a
    jp c, $bccf

    ret nz

    ld d, b
    jp nz, $bcb3

    sbc $26
    ld a, a
    or e
    rst $08

jr_05f_7de1:
    cp b
    ld c, [hl]
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $33
    cp h
    ret nz

    ld c, [hl]
    db $d3
    or e
    or d
    pop bc
    inc [hl]
    ld a, a
    jp z, $d22c

    or [hl]
    rst $10
    ld c, [hl]
    call nc, $c5d8
    or l
    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    ld [de], a

jr_05f_7e04:
    db $e3
    adc a
    ret


    ld a, a
    sub $d0
    cp d
    ret nc

    ld h, $7f
    inc sp
    or a
    rst $08
    cp [hl]
    sbc $4e
    cp h
    ld a, [hl-]
    rst $10
    cp b
    rst $08
    rst $18
    jp $b64e


    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7de1

    or d
    ld c, [hl]
    push bc
    or l
    rst $10
    push bc
    or d
    ld a, a
    call nz, $cab7
    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc d
    ld b, e
    db $e3
    sub e
    adc l
    xor e
    adc a
    db $e3
    call $b54e
    call nz, $b1b2
    call c, $b8be
    jr nc, jr_05f_7e04

    or d
    ld d, b
    rst $08
    pop bc
    inc l
    or [hl]
    sbc $26
    ld a, a
    push bc

jr_05f_7e53:
    ld h, $b2
    ret


    inc sp
    ld c, [hl]
    inc sp
    sbc $dc
    ld h, $7f
    or a
    jp c, $bccf

    ret nz

    ld d, b
    or c
    or d
    jp Jump_05f_7fc9


    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    call nz, $8f4e
    add c
    ld b, d
    ld h, $7f
    pop bc
    ld h, $b2
    rst $08
    cp l
    ld c, [hl]
    cp b
    call c, $b8bc
    jp z, $c47f

    ret c

    or c
    jp nz, $b2b6

    ld c, [hl]
    cp [hl]
    jp nz, $b2d2

    cp h
    ld [c], a
    db $dd
    ld a, a
    ld a, [hl+]
    rst $10
    sbc $b8
    jr nc, jr_05f_7e53

    or d
    ld d, b
    ld b, e
    adc b
    and c
    xor e
    sub l
    xor [hl]
    db $e3
    adc h
    ld h, $4e
    or c
    ret nz

    rst $10
    cp h
    cp b
    push bc
    rst $18
    jp $d9b2


    ret


    inc sp
    ld c, [hl]
    and a
    ld b, e
    db $e3
    sub e
    db $dd
    ld a, a
    or l
    cp b
    jp c, $becf

    sbc $4e
    or c
    ret nz

    rst $10
    cp h
    or d
    ld a, a
    ld b, e
    adc b
    and c
    xor e
    sub l
    xor [hl]
    db $e3
    adc h
    ret


    ld c, [hl]
    sub $d0
    cp d
    ret nc

    db $dd
    ld a, a
    cp e
    or a
    add $7f
    cp h
    jp $30b8


jr_05f_7edc:
    cp e
    or d
    ld d, b
    jp nz, $bcb3

    sbc $c9
    ld a, a
    inc l
    ld [c], a
    or e
    or a
    ld [c], a
    or e
    ld h, $4e
    sub $b8
    push bc
    or d
    or [hl]
    ld a, a
    or [hl]
    cp c
    reti


    or c
    or d
    jp Jump_05f_4e26


    rst $08
    pop bc
    ld h, $df
    jp $cfb2


    cp l
    ld c, [hl]
    db $d3
    or e
    or d
    pop bc
    inc [hl]
    ld a, a
    or [hl]
    cp b
    add $de
    db $dd
    cp h
    jp $334e


    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    push bc
    or l
    cp h
    jp $b87f


    jr nc, jr_05f_7edc

    or d
    ld d, b
    ldh a, [$a7]
    and a
    ret z

    ld a, $08
    ld [$c2a7], a
    ld a, [$c2c0]
    ld [$c2a9], a
    xor a
    ld [$c2aa], a
    ld hl, $c303
    set 7, [hl]
    ret


Call_05f_7f3c:
    nop
    ld a, [$c300]
    cp $d0
    ret c

    ld hl, $c4d2
    ld de, $7f68
    call $1078
    ld a, [$c300]
    push af
    sub $d0
    inc a
    ld [$c300], a
    ld hl, $c4d6
    ld de, $c300
    ld bc, $8103
    call $3198
    pop af
    ld [$c300], a
    and a
    ret


    rst $30
    or $f7
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

Jump_05f_7fc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_05f_7fc9:
    nop

Jump_05f_7fca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
