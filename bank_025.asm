; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    inc [hl]
    ld b, b
    or d
    ld b, b
    pop af
    ld b, b
    inc h
    ld b, h
    ld [hl], l
    ld b, h
    rst $08
    ld b, h
    rla
    ld b, l
    or b
    ld b, l
    rst $28
    ld b, l
    dec h
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    sub [hl]
    ld b, a
    dec bc
    ld c, b
    ld b, c
    ld c, b
    adc c
    ld c, b
    push af
    ld c, b
    dec a
    ld c, c
    or d
    ld c, c
    jr nc, @+$4c

    ld d, h
    ld c, d
    adc d
    ld c, d
    ld [hl], h
    ld c, e
    inc b
    ld c, h
    ld a, c
    ld c, h
    xor $4c
    ld [hl], l
    ld c, l
    dec h
    rlca
    inc bc
    and b
    ld e, e
    dec de
    add hl, bc
    ld bc, $2501
    ld [de], a
    inc bc
    xor h
    ld e, e
    dec de
    dec de
    ld de, $2501
    dec b
    inc bc
    cp b
    ld e, e
    dec de
    dec l
    ld bc, $2501
    dec b
    inc bc
    call nz, $1b5b
    dec l
    ld bc, $2501
    dec b
    inc bc
    ret nc

    ld e, e
    dec de
    dec l
    ld bc, $2501
    dec b
    inc bc
    call c, $1b5b
    dec l
    ld bc, $2501
    ld c, $03
    add sp, $5b
    ld hl, $012c
    ld bc, $0c25
    inc bc
    db $f4
    ld e, e
    dec de
    dec l
    ld bc, $2501
    ld [$0006], sp
    ld e, h
    add hl, de
    ld b, a
    ld bc, $2501
    db $10
    inc bc
    inc c
    ld e, h
    ld a, [de]
    inc l
    ld bc, $2501
    dec b
    inc bc
    jr @+$5e

    ld a, [de]
    inc l
    ld bc, $2501
    ld bc, $3802
    ld d, c
    add hl, de
    ld b, a
    nop
    ld bc, $0125
    ld [bc], a
    ld e, h
    ld d, c
    ld a, [de]
    ld b, a
    nop
    ld bc, $0125
    ld bc, $4eb0
    dec de
    dec l
    nop
    ld bc, $0525
    inc bc
    inc h
    ld e, h
    inc h
    ld h, $01
    ld bc, $0f25
    inc bc
    jr nc, jr_025_411c

    inc h
    dec de
    ld [de], a
    ld bc, $0725
    inc bc
    inc a
    ld e, h
    inc h
    add hl, bc
    ld bc, $2501
    ld [$4806], sp
    ld e, h
    ld [hl+], a
    ld b, l
    ld bc, $2501
    ld bc, $c802
    ld d, c
    ld [hl+], a
    ld b, l
    nop
    inc bc
    dec h
    ld bc, $1002
    ld d, d
    daa
    ld b, l
    nop
    inc b
    dec h
    ld bc, $0401
    ld c, a
    inc h
    ld h, $00
    ld bc, $1725
    rlca
    cp h
    ld d, a
    rlca
    ld b, d
    ld bc, $2501
    rla
    rlca
    ret z

    ld d, a
    rlca
    ld b, d
    ld bc, $2501
    rla
    rlca
    call nc, $0757
    ld b, d
    inc bc
    ld bc, $1725
    rlca
    ldh [$57], a
    rla
    ld b, c
    inc bc
    ld bc, $1725
    rlca
    db $ec
    ld d, a
    rla
    ld b, c

jr_025_411c:
    nop
    ld bc, $1725
    rlca
    ld hl, sp+$57
    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    inc b
    ld e, b
    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    db $10
    ld e, b
    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    inc e
    ld e, b
    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    jr z, jr_025_419f

    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    inc [hl]
    ld e, b
    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    ld b, b
    ld e, b
    rla
    ld b, c
    ld [bc], a
    ld bc, $1725
    rlca
    ld c, h
    ld e, b
    jr jr_025_41a7

    db $10
    ld bc, $1825
    inc b
    ld e, b
    ld e, b
    jr jr_025_41b0

    db $10
    ld bc, $1925
    ld [bc], a
    ld h, h
    ld e, b
    inc de
    inc hl
    nop
    ld bc, $1925
    ld [bc], a
    ld [hl], b
    ld e, b
    inc de
    ld e, c
    nop
    ld bc, $1b25
    inc bc
    ld a, h
    ld e, b
    ld de, $11bd
    ld bc, $1b25
    inc bc
    adc b
    ld e, b
    ld de, $11bd
    ld bc, $1b25
    inc bc
    sub h
    ld e, b
    ld de, $11bd
    ld bc, $1b25
    inc bc

jr_025_419f:
    and b
    ld e, b
    ld de, $11bd
    ld bc, $1b25

jr_025_41a7:
    inc bc
    xor h
    ld e, b
    ld de, $11bd
    ld bc, $0125

jr_025_41b0:
    ld [bc], a
    cp b
    ld e, b
    add hl, bc
    jr z, jr_025_41b6

jr_025_41b6:
    inc b
    dec h
    ld a, [de]
    rlca
    call nz, $0958
    jr z, @+$13

    ld bc, $1a25
    rlca
    ret nc

    ld e, b
    add hl, bc
    jr z, @+$15

    ld bc, $1a25
    rlca
    call c, $0958
    jr z, jr_025_41e1

    ld bc, $1a25
    rlca
    add sp, $58
    add hl, bc
    jr z, jr_025_41ec

    ld bc, $1a25
    rlca
    db $f4
    ld e, b
    add hl, bc

jr_025_41e1:
    ld d, l
    db $10
    ld bc, $0b25
    inc bc
    nop
    ld e, c
    add hl, bc
    jr z, @+$03

jr_025_41ec:
    ld bc, $1a25
    rlca
    inc c
    ld e, c
    add hl, bc
    jr z, @+$13

    ld bc, $1a25
    rlca
    jr jr_025_4254

    add hl, bc
    jr z, @+$13

    ld bc, $1a25
    rlca
    inc h
    ld e, c
    add hl, bc
    jr z, @+$13

    ld bc, $1a25
    rlca
    jr nc, jr_025_4266

    add hl, bc
    jr z, jr_025_4222

    ld bc, $2125
    rlca
    inc a
    ld e, c
    add hl, bc
    jr z, @+$13

    ld bc, $2225
    rlca
    ld c, b
    ld e, c
    add hl, bc
    jr z, @+$13

jr_025_4222:
    ld bc, $2325
    rlca
    ld d, h
    ld e, c
    add hl, bc
    jr z, @+$13

    ld bc, $2425
    rlca
    ld h, b
    ld e, c
    add hl, bc
    jr z, jr_025_4244

    ld bc, $1e25
    inc b
    ld l, h
    ld e, c
    ld a, [bc]
    jr z, @+$16

    inc bc
    dec h
    ld e, $04
    ld a, b
    ld e, c
    ld a, [bc]

jr_025_4244:
    jr z, jr_025_425a

    inc bc
    dec h
    ld e, $04
    add h
    ld e, c
    ld a, [bc]
    jr z, jr_025_4263

    ld bc, $1825
    inc b
    sub b

jr_025_4254:
    ld e, c
    dec c
    inc sp
    ld [de], a
    inc bc
    dec h

jr_025_425a:
    jr jr_025_4260

    sbc h
    ld e, c
    dec c
    inc sp

jr_025_4260:
    ld [de], a
    inc bc
    dec h

jr_025_4263:
    inc de
    rlca
    xor b

jr_025_4266:
    ld e, c
    inc e
    ld b, h
    ld bc, $2501
    inc de
    rlca
    or h
    ld e, c
    inc e
    ld b, h
    ld bc, $2501
    inc de
    rlca
    ret nz

    ld e, c
    inc e
    ld b, h
    ld bc, $2501
    inc de
    rlca
    call z, $1c59
    ld b, h
    ld bc, $2501
    inc de
    rlca
    ret c

    ld e, c
    inc e
    ld b, h
    ld bc, $2501
    inc de
    rlca
    db $e4
    ld e, c
    inc e
    dec l
    ld bc, $2501
    db $10
    inc b
    ldh a, [$59]
    inc h
    ld h, h
    ld de, $2501
    inc e
    inc b
    db $fc
    ld e, c
    inc h
    ld c, b
    inc d
    ld bc, $0b25
    inc b
    ld [$245a], sp
    ld c, b
    ld [de], a
    ld bc, $0b25
    inc b
    inc d
    ld e, d
    inc h
    ld c, b
    db $10
    ld bc, $1f25
    inc b
    jr nz, jr_025_431b

    ld c, $28
    ld [bc], a
    inc b
    dec h
    ld [$2c04], sp
    ld e, d
    db $10
    jr z, jr_025_42dd

    ld bc, $0f25
    inc b
    jr c, jr_025_432d

    db $10
    jr z, jr_025_42e6

    ld bc, $1c25
    inc b
    ld b, h
    ld e, d
    db $10

jr_025_42dd:
    dec a
    ld de, $2501
    inc e
    inc b
    ld d, b
    ld e, d
    db $10

jr_025_42e6:
    ld d, [hl]
    ld [de], a
    ld bc, $1825
    inc b
    ld e, h
    ld e, d
    inc hl
    jr z, jr_025_4304

    inc bc
    dec h
    jr jr_025_42f9

    ld l, b
    ld e, d
    inc hl
    inc sp

jr_025_42f9:
    ld [de], a
    inc bc
    dec h
    ld e, $04
    ld [hl], h
    ld e, d
    inc hl
    inc sp
    ld [de], a
    inc bc

jr_025_4304:
    dec h
    ld e, $04
    add b
    ld e, d
    inc hl
    jr z, jr_025_431f

    inc bc
    dec h
    dec e
    inc b
    adc h
    ld e, d
    jr z, @+$35

    ld [de], a
    dec b
    dec h
    dec e
    inc b
    sbc b
    ld e, d

jr_025_431b:
    jr z, @+$35

    db $10
    dec b

jr_025_431f:
    dec h
    dec e
    inc b
    and h
    ld e, d
    jr z, jr_025_4359

    db $10
    dec b
    dec h
    dec e
    inc b
    or b
    ld e, d

jr_025_432d:
    jr z, @+$35

    ld [de], a
    dec b
    dec h
    dec e
    inc b
    cp h
    ld e, d
    jr z, jr_025_436b

    ld [de], a
    dec b
    dec h
    ld e, $04
    ret z

    ld e, d
    rra
    jr z, jr_025_4354

    ld a, [bc]
    dec h
    ld e, $04
    call nc, $1f5a
    jr z, jr_025_435d

    ld a, [bc]
    dec h
    ld e, $04
    ldh [$5a], a
    rra
    jr z, jr_025_4366

jr_025_4354:
    ld a, [bc]
    dec h
    ld e, $04
    db $ec

jr_025_4359:
    ld e, d
    rra
    jr z, jr_025_436f

jr_025_435d:
    ld a, [bc]
    dec h
    ld e, $04
    ld hl, sp+$5a
    rra
    jr z, jr_025_4378

jr_025_4366:
    ld a, [bc]
    dec h
    ld e, $04
    inc b

jr_025_436b:
    ld e, e
    rra
    jr z, jr_025_4381

jr_025_436f:
    ld a, [bc]
    dec h
    ld e, $04
    db $10
    ld e, e
    rra
    jr z, jr_025_438a

jr_025_4378:
    ld a, [bc]
    dec h
    ld e, $04
    inc e
    ld e, e
    rra
    jr z, jr_025_4393

jr_025_4381:
    ld a, [bc]
    dec h
    ld e, $04
    jr z, @+$5d

    ld l, $44
    inc d

jr_025_438a:
    dec c
    dec h
    jr jr_025_4392

    inc [hl]
    ld e, e
    ld l, $44

jr_025_4392:
    ld [de], a

jr_025_4393:
    dec c
    dec h
    dec e
    inc b
    ld b, b
    ld e, e
    ld l, $44
    ld [de], a
    inc bc
    dec h
    ld e, $04
    ld c, h
    ld e, e
    ld l, $44
    ld [de], a
    inc bc
    dec h
    ld e, $04
    ld e, b
    ld e, e
    inc l
    inc sp
    inc d
    inc bc
    dec h
    ld e, $04
    ld h, h
    ld e, e
    inc l
    inc sp
    inc d
    inc bc
    dec h
    jr jr_025_43bf

    ld [hl], b
    ld e, e
    ld a, [hl+]
    ld c, c

jr_025_43bf:
    ld [de], a
    dec b
    dec h
    ld bc, $7c04
    ld e, e
    ld a, [hl+]
    ld c, c
    ld [de], a
    dec b
    dec h
    ld a, [bc]
    inc bc
    adc b
    ld e, e
    ld a, [hl+]
    ld c, c
    ld [de], a
    ld bc, $1825
    inc b
    sub h
    ld e, e
    ld e, l
    jr z, jr_025_43ed

    inc bc
    dec h
    ld e, $04
    ld d, h
    ld e, h
    ld a, $10
    ld de, $2501
    jr jr_025_43ec

    ld h, b
    ld e, h
    dec [hl]
    db $10

jr_025_43ec:
    ld [de], a

jr_025_43ed:
    ld bc, $1c25
    ld b, $6c
    ld e, h
    dec sp
    db $10
    ld [bc], a
    ld bc, $1e25
    inc b
    ld a, b
    ld e, h
    ld b, d
    db $10
    inc d
    ld bc, $1e25
    inc b
    add h
    ld e, h
    ld b, d
    db $10
    inc d
    ld bc, $0825
    inc bc
    sub b
    ld e, h
    ld d, c
    dec d
    ld bc, $2501
    add hl, de
    inc b
    sbc h
    ld e, h
    ld d, c
    ld [hl+], a
    nop
    ld bc, $1e25
    inc b
    xor b
    ld e, h
    ld e, b
    ld c, a
    inc d
    ld bc, $1725
    inc bc
    or h
    ld e, h
    ld d, $2c
    ld bc, $2501
    db $10
    inc bc
    ret nz

    ld e, h
    ld d, $2c
    ld de, $2501
    rlca
    inc bc
    call z, $165c
    add hl, bc
    ld bc, $2501
    db $10
    inc bc
    ret c

    ld e, h
    ld d, $2c
    ld bc, $2501
    db $10
    inc bc
    db $e4
    ld e, h
    ld d, $57
    ld bc, $2501
    inc c
    inc bc
    ldh a, [$5c]
    ld d, $2c
    ld bc, $2501
    rla
    inc bc
    db $fc
    ld e, h
    ld d, $1b
    inc d
    ld bc, $1025
    inc bc
    ld [$165d], sp
    inc l
    ld bc, $2501
    ld bc, $d401
    ld c, [hl]
    ld d, $2c
    nop
    inc b
    dec h
    rrca
    inc bc
    inc d
    ld e, l
    add hl, hl
    dec de
    db $10
    ld bc, $0f25
    inc bc
    jr nz, @+$5f

    add hl, hl
    dec de
    ld de, $2501
    dec b
    inc bc
    inc l
    ld e, l
    add hl, hl
    dec h
    ld bc, $2501
    dec b
    inc bc
    jr c, @+$5f

    add hl, hl
    dec h
    ld bc, $2501
    inc c
    inc bc
    ld b, h
    ld e, l
    add hl, hl
    dec h
    ld bc, $2501
    rlca
    inc bc
    ld d, b
    ld e, l
    add hl, hl
    add hl, bc
    ld bc, $2501
    dec b
    inc bc
    ld e, h
    ld e, l
    add hl, hl
    dec h
    ld bc, $2501
    ld bc, $3402
    ld d, d
    dec hl
    ld b, a
    nop
    add hl, bc
    dec h
    ld bc, $5802
    ld d, d
    dec l
    ld b, a
    nop
    ld bc, $0125
    ld bc, $4f4c
    add hl, hl
    dec h
    nop
    add hl, bc
    dec h
    rlca
    inc bc
    ld l, b
    ld e, l
    ld d, l
    ld e, h
    inc b
    ld bc, $0725
    inc bc
    ld [hl], h
    ld e, l
    ld d, l
    add hl, bc
    ld bc, $2501
    ld [$8006], sp
    ld e, l
    ld d, d
    inc bc
    ld bc, $2501
    jr jr_025_44f0

    adc h
    ld e, l
    ld d, h

jr_025_44f0:
    dec de
    ld de, $2501
    inc bc
    ld [bc], a
    ret nz

    ld d, e
    ld d, d
    inc bc
    nop
    ld bc, $0325
    ld [bc], a
    sbc h
    ld d, e
    ld d, e
    inc bc
    nop
    ld [bc], a
    dec h
    inc bc
    ld [bc], a
    ld d, h
    ld d, e
    ld d, [hl]
    inc bc
    nop
    ld [bc], a
    dec h
    inc bc
    ld bc, $5378
    ld d, l
    ld e, h
    nop
    ld [bc], a
    dec h
    dec b
    inc bc
    sbc b
    ld e, l
    scf
    dec d
    ld bc, $2501
    dec b
    inc bc
    and h
    ld e, l
    scf
    dec d
    ld bc, $2501
    dec b
    inc bc
    or b
    ld e, l
    scf
    dec d
    ld bc, $2501
    rlca
    inc bc
    cp h
    ld e, l
    scf
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    ret z

    ld e, l
    scf
    add hl, bc
    ld bc, $2501
    add hl, bc
    inc bc
    call nc, $375d
    dec de
    stop
    dec h
    inc c
    inc bc
    ldh [$5d], a
    scf
    dec d
    ld bc, $2501
    rlca
    inc bc
    db $ec
    ld e, l
    ld b, e
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    ld hl, sp+$5d
    ld b, e
    add hl, bc
    ld bc, $2501
    dec bc
    inc bc
    inc b
    ld e, [hl]
    ld b, h
    dec d
    ld bc, $2501
    dec b
    inc bc
    db $10
    ld e, [hl]
    add hl, sp
    dec d
    ld bc, $2501
    inc bc
    ld [bc], a
    jr nz, jr_025_45d6

    ld [hl], $03
    nop
    nop
    dec h
    inc bc
    ld [bc], a
    sbc h
    ld d, [hl]
    ld b, c
    inc bc
    nop
    inc bc
    dec h
    inc bc
    ld [bc], a
    ld l, b
    ld d, a
    ld b, e
    inc bc
    nop
    inc bc
    dec h
    inc bc
    ld [bc], a
    ret nz

    ld d, [hl]
    jr c, jr_025_459f

    nop
    inc bc
    dec h

jr_025_459f:
    inc bc
    ld [bc], a
    db $e4
    ld d, [hl]
    add hl, sp
    inc bc
    nop
    inc bc
    dec h
    inc bc
    ld bc, $5660
    scf
    ld e, a
    nop
    nop
    dec h
    rlca
    inc bc
    inc e
    ld e, [hl]
    inc c
    add hl, bc
    ld bc, $2501
    dec b
    inc bc
    jr z, jr_025_461c

    inc c
    dec h
    ld bc, $2501
    inc c
    inc bc
    inc [hl]
    ld e, [hl]
    inc c
    dec h
    ld bc, $2501
    db $10
    inc bc
    ld b, b
    ld e, [hl]
    inc c
    dec h
    ld bc, $2501
    rrca

jr_025_45d6:
    inc bc
    ld c, h
    ld e, [hl]
    inc c
    dec de
    db $10
    ld bc, $0225
    ld [bc], a
    ld a, b
    ld d, b
    dec bc
    dec hl
    nop
    ld bc, $0225
    ld bc, $4e50
    inc c
    dec h
    nop
    ld bc, $0525
    inc bc
    ld e, b
    ld e, [hl]
    ld h, $45
    ld bc, $2501
    dec b
    inc bc
    ld h, h
    ld e, [hl]
    ld h, $45
    ld bc, $2501
    ld [$7006], sp
    ld e, [hl]
    dec h
    ld b, l
    ld bc, $2501
    ld [$7c06], sp
    ld e, [hl]
    dec h
    ld b, l
    ld bc, $2501
    ld bc, $ec02
    ld d, c
    dec h
    ld b, l
    nop
    inc b

jr_025_461c:
    dec h
    ld bc, $3401
    ld c, a
    ld h, $45
    nop
    ld [$0125], sp
    ld [bc], a
    ld d, h
    ld d, b
    ld [$002b], sp
    ld [bc], a
    dec h
    ld bc, $c002
    ld d, b
    ld [de], a
    dec [hl]
    nop
    inc b
    dec h
    ld bc, $e402
    ld d, b
    inc d
    dec [hl]
    nop
    ld bc, $0125
    ld [bc], a
    inc d
    ld d, c
    dec d
    dec [hl]
    nop
    ld bc, $0125
    ld bc, $4e20
    ld b, $2d
    nop
    inc b
    dec h
    inc c
    inc bc
    adc b
    ld e, [hl]
    ld b, $2d
    ld bc, $2501
    rrca
    inc bc
    sub h
    ld e, [hl]
    ld b, $1b
    ld de, $2501
    ld a, [bc]
    inc bc
    and b
    ld e, [hl]
    ld b, $2d
    ld bc, $2501
    db $10
    inc bc
    xor h
    ld e, [hl]
    ld b, $2d
    ld bc, $2501
    rlca
    inc bc
    cp b
    ld e, [hl]
    ld b, $09
    ld bc, $2501
    db $10
    inc bc
    call nz, $065e
    dec l
    ld bc, $2501
    ld [$d006], sp
    ld e, [hl]
    ld [$012b], sp
    ld bc, $0725
    inc bc
    call c, $085e
    add hl, bc
    ld bc, $2501
    ld [$e806], sp
    ld e, [hl]
    ld [de], a
    dec [hl]
    ld bc, $2501
    ld [$f403], sp
    ld e, [hl]
    ld [de], a
    dec a
    ld bc, $2501
    ld [$0006], sp
    ld e, a
    inc d
    dec [hl]
    ld bc, $2501
    ld [$0c03], sp
    ld e, a
    inc d
    dec a
    ld bc, $2501
    ld [bc], a
    ld [bc], a
    sbc h
    ld d, b
    rrca
    dec [hl]
    nop
    ld bc, $0225
    ld bc, $4e8c
    db $10
    dec a
    nop
    ld bc, $0f25
    inc bc
    jr jr_025_4734

    db $10
    dec de
    db $10
    ld bc, $1225
    inc bc
    inc h
    ld e, a
    db $10
    dec a
    ld bc, $2501
    dec b
    inc bc
    jr nc, jr_025_4746

    db $10
    dec a
    ld bc, $2501
    dec b
    inc bc
    inc a
    ld e, a
    db $10
    dec a
    ld bc, $2501
    ld de, $4803
    ld e, a
    db $10
    dec a
    nop
    ld bc, $0525
    inc bc
    ld d, h
    ld e, a
    db $10
    dec a
    ld bc, $2501
    dec b
    inc bc
    ld h, b
    ld e, a
    db $10
    dec a
    ld bc, $2501
    dec b
    inc bc
    ld l, h
    ld e, a
    db $10
    dec a
    ld bc, $2501
    inc c
    inc bc
    ld a, b
    ld e, a
    db $10
    dec a
    ld bc, $2501
    inc c
    inc bc
    add h
    ld e, a
    db $10
    dec a
    ld bc, $2501
    inc c
    inc bc
    sub b
    ld e, a
    db $10
    dec a
    ld bc, $2501

jr_025_4734:
    inc c
    inc bc
    sbc h
    ld e, a
    db $10
    dec a
    ld bc, $2501
    inc c
    inc bc
    xor b
    ld e, a
    db $10
    dec a
    ld bc, $2501

jr_025_4746:
    inc c
    inc bc
    or h
    ld e, a
    db $10
    dec a
    ld bc, $2501
    inc c
    inc bc
    ret nz

    ld e, a
    db $10
    dec a
    ld bc, $2501
    inc c
    inc bc
    call z, $105f
    dec a
    ld bc, $2501
    ld c, $03

Call_025_4763:
    ret c

    ld e, a
    db $10
    ld [de], a
    ld bc, $2501
    rlca
    inc bc
    db $e4
    ld e, a
    db $10
    ld e, [hl]
    nop
    ld bc, $1525
    inc bc
    ldh a, [$5f]
    db $10
    ld e, [hl]
    nop
    ld bc, $0825
    ld b, $fc
    ld e, a
    rrca
    dec [hl]
    ld bc, $2501
    ld [$0806], sp
    ld h, b
    rrca
    dec [hl]
    ld bc, $2501
    dec b
    inc bc
    inc d
    ld h, b
    rrca
    dec h
    ld bc, $2501
    inc bc
    ld [bc], a
    call c, $3c55
    inc bc
    nop
    inc b
    dec h
    inc bc
    ld [bc], a
    ld h, h
    ld d, l
    ld c, c
    inc b
    nop
    ld bc, $0325
    ld bc, $55b8
    dec a
    ld a, $00
    ld [bc], a
    dec h
    dec b
    inc bc
    jr nz, jr_025_4816

    dec a
    ld a, $01
    ld bc, $0725
    inc bc
    inc l
    ld h, b
    dec a
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    jr c, @+$62

    dec a
    ld a, $01
    ld bc, $0525
    inc bc
    ld b, h
    ld h, b
    dec a
    ld a, $01
    ld bc, $0525
    inc bc
    ld d, b
    ld h, b
    dec a
    ld a, $01
    ld bc, $0c25
    inc bc
    ld e, h
    ld h, b
    dec a
    ld a, $01
    ld bc, $0525
    inc bc
    ld l, b
    ld h, b
    dec a
    ld a, $01
    ld bc, $0e25
    inc bc
    ld [hl], h
    ld h, b
    dec a
    dec de
    ld de, $2501
    ld [$8006], sp
    ld h, b
    inc a
    inc bc
    ld bc, $2501
    ld [$8c06], sp
    ld h, b
    inc a
    inc bc
    ld bc, $2501
    inc bc
    ld [bc], a
    inc c
    ld d, e
    jr nc, @+$04

    nop
    ld bc, $0325

jr_025_4816:
    ld bc, $5330
    cpl
    inc e
    nop
    ld [bc], a
    dec h
    ld b, $03
    sbc b
    ld h, b
    cpl
    inc e
    ld bc, $2501
    ld b, $03
    and h
    ld h, b
    cpl
    inc e
    ld bc, $2501
    dec b
    inc bc
    or b
    ld h, b
    cpl
    inc e
    ld bc, $2501
    ld a, [bc]
    inc bc
    cp h
    ld h, b
    cpl
    dec e
    ld bc, $2501
    inc bc
    ld [bc], a
    db $fc
    ld d, [hl]
    inc [hl]
    inc bc
    nop
    ld bc, $0325
    ld bc, $527c
    inc sp
    ld h, [hl]
    nop
    ld bc, $0525
    inc bc
    ret z

    ld h, b
    inc sp
    ld h, [hl]
    ld bc, $2501
    ld [de], a
    inc bc
    call nc, $3360
    dec de
    db $10
    ld bc, $0c25
    inc bc
    ldh [$60], a
    inc sp
    ld h, [hl]
    ld bc, $2501
    rlca
    inc bc
    db $ec
    ld h, b
    inc sp
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    ld hl, sp+$60
    inc sp
    dec d
    ld bc, $2501
    dec b
    inc bc
    inc b
    ld h, c
    inc sp
    ld h, [hl]
    ld bc, $2501
    add hl, bc
    ld [bc], a
    db $10
    ld h, c
    dec de
    dec l
    nop
    ld [bc], a
    dec h
    add hl, bc
    ld [bc], a
    inc e
    ld h, c
    dec a
    ld a, $00
    ld [bc], a
    dec h
    inc de
    inc bc
    jr z, jr_025_4901

    ld e, a
    ld [hl], $01
    ld bc, $1325
    inc bc
    inc [hl]
    ld h, c
    ld e, a
    ld [hl], $01
    ld bc, $1325
    inc bc
    ld b, b
    ld h, c
    ld e, a
    ld [hl], $01
    ld bc, $1325
    inc bc
    ld c, h
    ld h, c
    ld e, a
    ld [hl], $01
    ld bc, $1325
    inc bc
    ld e, b
    ld h, c
    ld e, a
    ld [hl], $01
    ld bc, $1c25
    inc bc
    ld h, h
    ld h, c
    dec de
    dec l
    ld bc, $2501
    inc e
    inc bc
    ld [hl], b
    ld h, c
    dec a
    ld a, $01
    ld bc, $0325
    ld [bc], a
    ld a, h
    ld h, c
    dec [hl]
    ld a, [de]
    nop
    ld bc, $1025
    inc bc
    adc b
    ld h, c
    dec [hl]
    dec d
    ld bc, $2501
    rla
    ld [bc], a
    sub h
    ld h, c
    rla
    ld b, c
    nop
    ld bc, $0325
    ld bc, $57b0
    ld e, c
    ld b, [hl]
    nop
    dec b
    dec h
    rlca
    inc bc

jr_025_4901:
    and b
    ld h, c
    ld e, d
    ld b, [hl]
    nop
    ld bc, $0f25
    inc bc
    xor h
    ld h, c
    ld e, d
    ld d, l
    ld de, $2501
    rrca
    inc bc
    cp b
    ld h, c
    ld e, d
    ld b, c
    ld [de], a
    ld bc, $0f25
    inc bc
    call nz, Call_025_5a61
    ld c, a
    ld de, $2501
    rrca
    inc bc
    ret nc

    ld h, c
    ld e, d
    ld b, e
    inc d
    ld bc, $1225
    inc bc
    call c, Call_025_5a61
    ld b, [hl]
    db $10
    ld bc, $1d25
    inc bc
    add sp, $61
    ld e, d
    inc a
    db $10
    ld bc, $0325
    ld [bc], a
    db $10
    ld d, l
    ld c, e
    inc b
    nop
    ld [bc], a
    dec h
    inc bc
    ld [bc], a
    db $ec
    ld d, h
    ld c, h
    inc b
    nop
    ld bc, $0325
    ld [bc], a
    ret z

    ld d, h
    ld c, l
    inc b
    nop
    ld bc, $0325
    ld [bc], a
    inc d
    ld d, h
    ld d, b
    inc bc
    nop
    ld bc, $0325
    ld bc, $53e4
    ld d, c
    ld d, $00
    ld [$0c25], sp
    inc bc
    db $f4
    ld h, c
    ld d, c
    ld d, $01
    ld bc, $0e25
    inc bc
    nop
    ld h, d
    ld d, c
    ld d, $01
    ld bc, $0a25
    inc bc
    inc c
    ld h, d
    ld d, c
    dec de
    ld [de], a
    ld bc, $0525
    inc bc
    jr jr_025_49ec

    ld d, c
    ld d, $01
    ld bc, $0725
    inc bc
    inc h
    ld h, d
    ld d, c
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    jr nc, jr_025_49fe

    ld d, c
    ld d, $01
    ld bc, $0525
    inc bc
    inc a
    ld h, d
    ld d, c
    ld d, $01
    ld bc, $0825
    ld b, $48
    ld h, d
    ld c, l
    inc b
    ld bc, $2501
    inc bc
    ld [bc], a
    ld b, h
    ld d, a
    ld b, b
    inc bc
    nop
    ld bc, $0325
    ld [bc], a
    inc [hl]
    ld d, l
    ld c, d
    inc b
    nop
    ld [bc], a
    dec h
    inc bc
    ld [bc], a
    adc h
    ld d, a
    ld b, e
    inc bc
    nop
    inc bc
    dec h
    inc bc
    ld bc, $5588
    ld b, l
    ld c, $00
    ld bc, $0725
    inc bc
    ld d, h
    ld h, d
    ld b, l
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    ld h, b
    ld h, d
    ld b, l
    add hl, bc
    ld bc, $2501
    dec b
    inc bc
    ld l, h

jr_025_49ec:
    ld h, d
    ld b, l
    ld c, $01
    ld bc, $0525
    inc bc
    ld a, b
    ld h, d
    ld b, l
    ld c, $01
    ld bc, $0525
    inc bc
    add h

jr_025_49fe:
    ld h, d
    ld b, l
    ld c, $01
    ld bc, $0c25
    inc bc
    sub b
    ld h, d
    ld b, l
    ld c, $01
    ld bc, $0525
    inc bc
    sbc h
    ld h, d
    ld b, l
    ld c, $01
    ld bc, $1b25
    inc bc
    xor b
    ld h, d
    ld b, [hl]
    ld c, $01
    ld bc, $0825
    ld b, $b4
    ld h, d
    ld b, b
    inc bc
    ld bc, $2501
    dec b
    inc bc
    ret nz

    ld h, d
    ld c, d
    dec d
    ld bc, $2501
    inc bc
    ld [bc], a
    call nz, $5e4f
    ld b, [hl]
    nop
    dec c
    dec h
    inc bc
    ld bc, $4f70
    ld l, $46
    nop
    dec c
    dec h
    rlca
    inc bc
    call z, $2e62
    add hl, bc
    ld bc, $2501
    dec b
    inc bc
    ret c

    ld h, d
    ld e, [hl]
    dec h
    ld bc, $2501
    rlca
    inc bc
    db $e4
    ld h, d
    nop
    add hl, bc
    db $10
    ld bc, $0825
    inc bc
    ldh a, [$62]
    nop
    ld h, $10
    ld bc, $0825
    inc bc
    db $fc
    ld h, d
    nop
    ld h, $10
    ld bc, $0825
    inc bc
    ld [$0063], sp
    ld h, $11
    ld bc, $0d25
    inc bc
    inc d
    ld h, e
    nop
    ld h, $10
    ld bc, $0d25
    inc bc
    jr nz, jr_025_4ae9

    nop
    ld h, $12
    ld bc, $0325
    ld [bc], a
    and h
    ld d, h
    ccf
    inc bc
    nop
    ld bc, $0325
    ld [bc], a
    ld e, h
    ld d, h
    ld c, [hl]
    inc bc
    nop
    ld bc, $0325
    ld [bc], a
    jr c, jr_025_4af5

    ld c, a
    inc bc
    nop
    nop
    dec h
    inc bc
    ld bc, $5480
    ld b, a
    ld d, $00
    nop
    dec h
    inc c
    inc bc
    inc l
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0c25
    inc bc
    jr c, jr_025_4b1f

    ld b, a
    ld d, $01
    ld bc, $0c25
    inc bc
    ld b, h
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0c25
    inc bc
    ld d, b
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0c25
    inc bc
    ld e, h
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0c25
    inc bc
    ld l, b
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0c25
    inc bc
    ld [hl], h
    ld h, e

jr_025_4ae9:
    ld b, a
    ld d, $01
    ld bc, $0d25
    inc bc
    add b
    ld h, e
    ld b, a
    ld d, $01

jr_025_4af5:
    ld bc, $0d25
    inc bc
    adc h
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0d25
    inc bc
    sbc b
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0d25
    inc bc
    and h
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0525
    inc bc
    or b
    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0725
    inc bc
    cp h
    ld h, e

jr_025_4b1f:
    ld b, a
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    ret z

    ld h, e
    ld b, a
    ld d, $01
    ld bc, $0e25
    inc bc
    call nc, Call_025_4763
    ld [de], a
    ld bc, $2501
    ld c, $03
    ldh [$63], a
    ld b, a
    ld d, $01
    ld bc, $1125
    inc bc
    db $ec
    ld h, e
    ld b, a
    dec de
    db $10
    ld bc, $0e25
    inc bc
    ld hl, sp+$63
    ld b, a
    ld d, $01
    ld bc, $0525
    inc bc
    inc b
    ld h, h
    ld b, a
    ld d, $01
    ld bc, $0825
    ld b, $10
    ld h, h
    ld c, [hl]
    inc bc
    ld bc, $2501
    ld [$1c06], sp
    ld h, h
    ccf
    inc bc
    ld bc, $2501
    ld [$2806], sp
    ld h, h
    ld c, a
    inc bc
    ld bc, $2501
    ld bc, $8002
    ld d, c
    ld e, $35
    nop
    ld bc, $0125
    ld [bc], a
    and h
    ld d, c
    jr nz, jr_025_4bb9

    nop
    ld [bc], a
    dec h
    ld bc, $7401
    ld c, [hl]
    ld hl, $002c
    ld bc, $0525
    inc bc
    inc [hl]
    ld h, h
    ld hl, $012c
    ld bc, $1725
    inc bc
    ld b, b
    ld h, h
    ld hl, $101b
    ld bc, $0725
    inc bc
    ld c, h
    ld h, h
    ld hl, $0109
    ld bc, $0525
    inc bc
    ld e, b
    ld h, h
    ld hl, $012c
    ld bc, $0525
    inc bc
    ld h, h
    ld h, h
    dec de

jr_025_4bb9:
    dec l
    ld bc, $2501
    dec b
    inc bc
    ld [hl], b
    ld h, h
    ld hl, $012c
    ld bc, $0525
    inc bc
    ld a, h
    ld h, h
    ld hl, $012c
    ld bc, $1625
    inc bc
    adc b
    ld h, h
    dec e
    ld h, l
    ld de, $2501
    ld d, $03
    sub h
    ld h, h
    dec e
    ld h, e
    ld de, $2501
    ld d, $03
    and b
    ld h, h
    dec e
    nop
    ld de, $2501
    ld d, $03
    xor h
    ld h, h
    dec e
    ld h, e
    ld de, $2501
    ld [$b806], sp
    ld h, h
    dec e
    dec [hl]
    ld bc, $2501
    inc b
    ld [bc], a
    call nz, $1d64
    ld h, e
    nop
    ld bc, $0325
    ld [bc], a
    and b
    ld d, d
    ld [hl-], a
    rrca
    nop
    ld bc, $0325
    ld [bc], a
    db $f4
    ld d, d
    ld d, a
    inc bc
    nop
    inc b
    dec h
    inc bc
    ld bc, $52c4
    ld sp, $005e
    inc b
    dec h
    ld de, $d003
    ld h, h
    ld sp, $111b
    ld bc, $0525
    inc bc
    call c, $3164
    ld e, [hl]
    ld bc, $2501
    dec b
    inc bc
    add sp, $64
    ld sp, $015e
    ld bc, $0b25
    inc bc
    db $f4
    ld h, h
    ld sp, $024b
    ld bc, $0c25
    inc bc
    nop
    ld h, l
    ld sp, $015e
    ld bc, $0725
    inc bc
    inc c
    ld h, l
    ld sp, $0109
    ld bc, $0725
    inc bc
    jr @+$67

    ld sp, $0115
    ld bc, $0525
    inc bc
    inc h
    ld h, l
    ld [hl-], a
    dec d
    ld bc, $2501
    ld [$3006], sp
    ld h, l
    ld [hl-], a
    rrca
    ld bc, $2501
    ld [$3c06], sp
    ld h, l
    ld e, e
    ld b, [hl]
    ld [bc], a
    ld bc, $0125
    ld [bc], a
    adc b
    ld c, a
    ld e, e
    ld c, l
    nop
    add hl, bc
    dec h
    ld bc, $a002
    ld c, a
    ld e, h
    ld c, l
    nop
    ld [bc], a
    dec h
    ld bc, $dc02
    ld c, a
    ld [bc], a
    inc [hl]
    nop
    ld bc, $0125
    ld bc, $4dd8
    ld bc, $003c
    ld [bc], a
    dec h
    ld a, [bc]
    inc bc
    ld c, b
    ld h, l
    ld bc, $0132
    ld bc, $0625
    inc bc
    ld d, h
    ld h, l
    ld bc, $013c
    ld bc, $1425
    inc bc
    ld h, b
    ld h, l
    ld bc, $013c
    ld bc, $0525
    inc bc
    ld l, h
    ld h, l
    ld bc, $013c
    ld bc, $0625
    inc bc
    ld a, b
    ld h, l
    ld bc, $013c
    ld bc, $0525
    inc bc
    add h
    ld h, l
    ld e, e
    dec h
    ld bc, $2501
    dec b
    inc bc
    sub b
    ld h, l
    ld e, e
    dec h
    ld bc, $2501
    dec b
    inc bc
    sbc h
    ld h, l
    ld e, h
    dec h
    ld bc, $2501
    ld [$a806], sp
    ld h, l
    ld [bc], a
    inc [hl]
    ld bc, $2501
    inc bc
    ld [bc], a
    inc a
    ld d, [hl]
    ld a, [hl-]
    inc bc
    nop
    ld bc, $0325
    ld bc, $5600
    ld c, b
    dec d
    nop
    ld bc, $1125
    inc bc
    or h
    ld h, l
    ld c, b
    dec d
    ld bc, $2501
    inc e
    inc bc
    ret nz

    ld h, l
    ld c, b
    dec de
    ld de, $2501
    inc c
    inc bc
    call z, $4865
    dec d
    ld bc, $2501
    rlca
    inc bc
    ret c

    ld h, l
    ld c, b
    add hl, bc
    ld bc, $2501
    rlca
    inc bc
    db $e4
    ld h, l
    ld c, b
    dec d
    ld bc, $2501
    dec b
    inc bc
    ldh a, [$65]
    ld c, b
    dec d
    ld bc, $2501
    ld de, $fc03
    ld h, l
    ld c, b
    dec d
    nop
    ld bc, $0b25
    inc bc
    ld [$4866], sp
    dec d
    ld bc, $2501
    ld b, $03
    inc d
    ld h, [hl]
    ld c, b
    dec d
    ld bc, $2501
    ld b, $03
    jr nz, jr_025_4dbc

    ld c, b
    dec d
    ld bc, $2501
    ld [$2c06], sp
    ld h, [hl]
    ld a, [hl-]
    inc bc
    ld bc, $2501
    ld [$3806], sp
    ld h, [hl]
    ld a, [hl-]
    dec d
    ld bc, $2501
    dec b
    inc bc
    ld b, h
    ld h, [hl]
    ld a, [hl-]
    dec d
    ld bc, $2501
    ld bc, $0c02
    ld d, b
    inc b
    dec hl
    nop
    inc b
    dec h
    ld bc, $3002
    ld d, b
    dec b
    dec hl
    nop
    inc b
    dec h
    ld bc, $fc01
    ld c, l
    inc bc
    ld h, $00
    ld bc, $0c25
    inc bc
    ld d, b
    ld h, [hl]
    inc bc
    ld h, $01
    ld bc, $0725
    inc bc
    ld e, h
    ld h, [hl]
    inc bc
    add hl, bc
    ld bc, $2501
    dec b
    inc bc
    ld l, b
    ld h, [hl]
    inc bc
    ld h, $01
    ld bc, $0525
    inc bc
    ld [hl], h
    ld h, [hl]
    inc bc
    ld h, $01
    ld bc, $0525
    inc bc
    add b
    ld h, [hl]
    inc bc
    ld h, $01

jr_025_4dbc:
    ld bc, $0525
    inc bc
    adc h
    ld h, [hl]
    inc b
    ld h, $01
    ld bc, $0b25
    inc bc
    sbc b
    ld h, [hl]
    inc b
    ld h, $01
    ld bc, $0825
    ld b, $a4
    ld h, [hl]
    dec b
    dec hl
    ld bc, $0501
    add hl, bc
    ld a, [bc]
    dec hl
    or l
    ld c, l
    ld l, d
    nop
    ld b, b
    ld c, l
    ld b, e
    inc bc
    jr @+$05

    ldh a, [rHDMA2]
    jr nc, @-$36

    add hl, bc
    ld e, $00
    dec sp
    ld b, d
    ret z

    jr jr_025_4df4

    cp l
    ld [hl], d

jr_025_4df4:
    dec a
    ret z

    add hl, bc
    jr z, jr_025_4df9

jr_025_4df9:
    nop
    cpl
    ret z

    dec [hl]
    add hl, bc
    inc d
    dec hl
    rrca
    ld c, [hl]
    ld h, a
    nop
    ld b, b
    add hl, hl
    ld c, b
    add hl, bc
    ld a, [de]
    ld bc, $60e7
    ld [$0ac8], sp
    ld a, [bc]
    dec [hl]
    or $b1
    ret


    jr jr_025_4e19

    push de
    ld d, d
    ld h, l

jr_025_4e19:
    ret z

    add hl, bc
    ld e, $00
    nop
    dec h
    ret z

    dec b
    ld [de], a
    inc d
    dec hl
    jp Jump_025_6a4e


    or d
    ld b, e
    ld h, d
    ld b, a
    rlca
    ld a, [bc]
    ld bc, $4000
    dec h
    jp z, $0a0a

    nop
    nop
    ld de, $0ac8
    inc bc
    sub c
    ld b, d
    ld c, [hl]
    ret z

    add hl, bc
    ld e, $00
    dec sp
    ld b, d
    ret z

    ld a, [de]
    ld [bc], a
    add hl, bc
    ld [hl], d
    ld c, a
    ret


    add hl, bc
    inc d
    xor $00
    dec de
    ret z

    dec b
    add hl, bc
    inc d
    dec hl

jr_025_4e54:
    dec hl
    ld d, b
    ld h, [hl]

Call_025_4e57:
    nop
    ld b, b
    pop bc
    ld b, a

Call_025_4e5b:
    inc bc
    dec bc
    ld bc, $64cc
    nop
    ret z

    inc c
    ld a, [bc]
    inc h
    inc de
    ld a, [de]
    ret z

    ld [$b906], sp
    ld d, b
    ld h, l
    ret z

    add hl, bc
    ld a, [bc]
    nop
    nop
    ld de, $35c8
    dec de
    rrca
    dec hl
    rst $18
    ld d, b
    ld l, b
    nop
    ld b, b
    ld [hl], d
    ld b, a
    ld bc, $0216
    ld d, $4e
    ld d, c
    ret z

    dec de
    add hl, de
    nop
    nop
    jr nz, jr_025_4e54

    dec [hl]
    ld [de], a
    inc d
    dec hl
    ld [hl], h
    ld d, d
    ld h, [hl]
    ret nc

    ld c, b
    pop de
    ld d, c

jr_025_4e97:
    inc c
    ld a, [bc]
    ld [bc], a
    cp e
    ld [hl], h
    ld [$0ac8], sp
    ld a, [bc]
    inc hl
    or $21
    ret


    dec bc
    ld bc, $642f
    ld a, [hl+]
    jp z, $0a0a

    nop
    or $11
    ret z

    dec [hl]
    ld [de], a
    inc d
    dec hl
    call c, Call_025_6a53
    jr nz, jr_025_4f01

    adc $4c
    ld a, [bc]
    ld bc, $7d0d
    db $76
    ld [$0ac8], sp
    ld a, [bc]
    inc hl
    or $21
    ret


    ld d, $01
    ret


    ld b, c
    jr c, jr_025_4e97

    inc c
    ld a, [bc]
    xor $13
    ld a, [de]
    ret z

    dec b
    ld [de], a
    inc d
    dec hl
    ld b, h
    ld d, l
    ld l, c
    nop
    ld b, b
    db $fc
    ld b, l
    rlca
    ld a, [bc]
    inc b
    db $e3
    ld d, e
    ld a, [hl+]
    jp z, $0a0a

    nop
    or $11
    ret z

    ld bc, $6a0c
    ld h, a
    ret nc

    ret z

    add hl, bc
    inc d
    or $27
    ld l, $c8
    ld [bc], a
    dec b
    ld hl, $4f63
    ret


    add hl, bc
    ld e, $ee

jr_025_4f01:
    nop
    dec h
    ret z

    ld [hl], c
    add hl, bc
    ld a, [bc]
    dec hl
    xor h
    ld d, [hl]
    ld h, h
    nop
    ld b, b
    ret c

    ld b, e
    dec bc
    add hl, bc
    dec b
    ret


    ld [hl], l
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    dec [hl]
    nop
    or c
    ret


    ld [bc], a
    dec b
    inc a
    ld h, e
    jr nc, @-$36

    add hl, bc
    ld e, $00
    dec sp
    ld b, d
    ret z

    ld [bc], a
    ld b, $84
    ld b, e
    dec a
    ret z

    add hl, bc
    ld e, $00
    nop
    dec h

jr_025_4f33:
    ret z

    dec b
    ld [de], a
    inc d
    dec hl
    ld b, $57
    inc e
    nop
    ld b, b
    add hl, de
    ld c, c
    inc b
    add hl, bc
    dec b
    reti


jr_025_4f43:
    ld [hl], h
    ld a, [hl+]
    jp z, $0a0a

    nop
    or $11
    ret z

    ld [hl], c
    ld [de], a
    inc d
    dec hl
    ld l, [hl]
    ld e, b
    ld l, c
    ret nc

    ld b, [hl]
    ld d, a
    ld c, h
    ld b, $05
    ld [$5113], sp
    dec h
    jp z, $0a0a

    nop
    nop
    ld de, $02c8
    ld b, $9f
    ld b, e
    jr c, jr_025_4f33

    add hl, bc
    ld e, $ee
    dec sp
    ld b, d
    ret z

    inc l
    ld [de], a
    inc d
    dec hl
    sub $59
    ld l, h
    ld b, d
    ld h, b
    ld e, a
    ld h, b
    ld bc, $0113
    sub d
    ld b, h
    ld c, a
    ret


    add hl, bc
    inc d
    xor $00
    dec de
    ret z

    dec b
    ld [hl], $0a
    ld a, [hl+]
    dec b
    ld h, c
    ld l, c
    dec e
    ld c, l
    adc c
    ld d, e
    ld [bc], a
    jr jr_025_4f98

    ld [c], a
    ld [hl], d

jr_025_4f98:
    nop
    rrc c
    jr z, jr_025_4f43

    ld c, a
    ld d, [hl]
    ret z

    dec [hl]
    add hl, bc
    jr z, jr_025_4fce

    cp l
    ld [hl], d
    ld l, b
    ld h, a
    ld c, b
    xor l
    ld c, [hl]
    inc bc
    jr jr_025_4fb2

    cp h
    ld c, l
    adc d
    ret z

jr_025_4fb2:
    add hl, bc
    ld a, [bc]
    nop
    inc de
    ld a, [de]
    ret z

    jr jr_025_4fbb

    xor c

jr_025_4fbb:
    ld h, d
    dec hl
    ret z

    inc c
    ld a, [bc]
    ld e, d
    nop
    ld de, $2cc8
    add hl, bc
    inc d
    ld a, [hl+]
    sub d
    ld b, h
    ld l, c
    dec bc
    ld d, h
    dec e

jr_025_4fce:
    ld d, h
    ld [bc], a
    inc de
    ld [bc], a
    ld e, a
    ld e, d
    nop
    ret z

    inc c
    inc d
    ld [de], a
    daa
    ld l, $c8
    dec b
    add hl, bc
    ld e, $2a
    push de
    ld d, d
    ld l, b
    ld c, h
    ld c, a
    db $e4
    ld d, l
    dec bc
    dec b
    add hl, bc
    db $d3
    ld h, l
    dec c
    ret z

    ld a, [bc]
    ld a, [bc]
    inc hl
    db $ec
    ld hl, $1ac9
    inc bc
    jr nz, jr_025_5046

    ld l, h
    ret z

    add hl, bc
    inc d
    nop
    daa
    ld l, $c8
    jr jr_025_5006

    or l
    ld c, l
    adc l
    ret z

jr_025_5006:
    add hl, bc
    ld a, [bc]
    nop
    nop
    ld de, $05c8
    dec de
    ld a, [bc]
    ld a, [hl+]
    rst $30
    ld e, a
    ld l, b
    ld [hl], c
    ld d, [hl]
    ld d, h
    ld e, h
    inc c
    ld a, [de]
    ld [bc], a
    adc b
    ld [hl], d
    nop
    ret z

    dec c
    inc d
    ld de, $eb14
    ret z

    ld a, [de]
    inc bc
    ld de, $e04e
    ret


    db $10
    inc d
    nop
    ld a, [bc]
    dec de
    ret z

    dec b
    add hl, bc
    inc d
    ld a, [hl+]
    add hl, bc
    ld [hl], d
    ld l, c
    scf
    ld d, h
    ld a, c
    ld e, d
    ld b, $1a
    ld bc, $5ff7
    ld b, l
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    db $ec

jr_025_5046:
    ld de, $0ac8
    dec b
    ld c, h
    ld c, a
    nop
    ret z

    inc c
    inc d
    ld [de], a
    daa

Call_025_5052:
    ld l, $c8
    dec b
    dec l
    ld a, [bc]
    ld a, [hl+]
    nop
    ld b, b
    ld h, h
    ld c, a
    ld b, h
    adc l

jr_025_505e:
    ld d, e
    inc c
    ld a, [bc]
    dec b
    rst $28
    ld c, a
    inc bc
    ret z

    dec c
    inc d
    inc hl
    nop
    push de
    ret


    ld [$b906], sp
    ld d, b
    inc bc
    rrc d
    ld a, [bc]
    nop
    nop
    ld de, $05c8
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    cp c
    ld d, b
    ld l, e
    nop
    ld b, b
    add e
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld bc, $41a4
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld e, c
    nop
    pop de
    jp z, $0708

    inc a
    ld d, b
    jr nc, jr_025_505e

    add hl, bc
    inc d
    nop
    daa
    ld l, $c8
    dec b
    dec de
    ld a, [bc]
    ld a, [hl+]
    cpl
    ld h, h
    ld e, $00
    ld b, b
    ld a, h
    ld c, d
    add hl, bc
    dec bc
    ld [bc], a
    and d
    ld d, e
    nop
    ret z

    db $10
    inc d
    inc hl
    ld a, [bc]
    push de
    ret


    ld [$2b07], sp
    ld d, b
    ld e, l
    ret


    add hl, bc
    inc d
    call c, $1b00
    ret z

    dec b
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    dec h
    ld [hl], h
    ld h, a
    xor l
    ld c, b
    sbc [hl]
    ld c, a
    inc c
    ld a, [bc]
    inc bc
    ld a, [hl+]
    ld b, e
    inc bc
    ret z

    dec c
    ld e, $11
    nop
    ld b, l
    ret


    dec bc
    ld [bc], a
    db $76
    ld d, d
    ld d, b
    ret


    db $10
    inc d
    nop
    ld a, [bc]
    dec de
    ret z

    dec b
    add hl, bc
    ld e, $2a
    db $76
    ld b, d
    ld h, l
    nop
    ld b, b
    ld h, [hl]
    ld c, d
    dec c
    ld a, [bc]
    inc b
    rra
    ld d, h
    dec c
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $91ec
    ret z

    ld a, [bc]
    ld [bc], a
    dec h
    ld [hl], h
    or e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld de, $0ac8
    dec b
    jp $8d4e


    ret z

    inc c
    inc d
    nop
    nop
    dec de
    ret z

    dec b
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    db $e3
    ld d, e
    ld l, d
    ld [hl], d
    ld c, l
    and c
    ld d, c
    inc c
    inc b
    add hl, bc
    ld [hl], d
    ld d, [hl]
    nop
    ret z

    db $10
    inc d
    inc hl
    ld a, [bc]
    push de
    ret


    ld a, [bc]
    inc bc
    ld a, l
    ld b, d
    ret nz

    ret z

    db $10
    ld e, $00
    inc d
    dec h
    ret z

    dec b
    add hl, bc
    inc d
    ld a, [hl+]
    ld e, c
    ld h, a
    ld l, b
    inc c
    ld e, l
    cp e
    ld h, e
    inc bc
    ld bc, $ee0d
    ld [hl], l
    ld c, [hl]
    ret z

    inc c
    ld a, [bc]
    nop
    inc de
    ld a, [de]
    ret z

    inc b
    add hl, bc
    ld l, h
    ld d, l
    rla
    ret z

    rrca
    inc d
    ld a, [bc]
    nop
    dec de
    ret z

    dec b
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    rst $20
    ld [hl], l
    ld l, c
    di
    ld e, d
    cp d
    ld h, b
    dec b
    ld bc, $de0e
    ld d, e
    ld d, b
    ret


    db $10
    inc d
    nop
    ld a, [bc]
    dec de
    ret z

    ld bc, $590c
    ld h, a
    dec a
    ret z

    add hl, bc
    inc d
    nop
    nop
    dec de
    ret z

    dec [hl]
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    jp nz, $6941

    ld h, b
    ld h, c
    adc [hl]
    ld h, a
    dec b
    ld d, $02
    ld [hl+], a
    ld c, [hl]
    ld d, b
    ret


    dec c
    add hl, de
    nop
    ld e, $20
    ret z

    ld bc, $540e
    ld d, h
    dec c
    ret z

    inc c
    inc d
    ld [de], a
    nop
    dec de
    ret z

    dec [hl]
    dec de
    add hl, de
    ld a, [hl+]
    ld d, $4e
    ld l, c
    ccf
    ld l, b
    ld [de], a
    ld l, a
    ld a, [bc]
    ld d, $01
    ld e, b
    ld b, d
    ld [de], a
    ret z

    ld a, [bc]
    ld a, [bc]
    inc hl
    ld [c], a
    ld hl, $16c9
    inc bc
    db $eb
    ld d, b
    ld e, l
    ret z

    dec de
    rrca
    nop
    dec e
    inc h
    ret z

    dec b
    add hl, bc
    ld e, $2a
    ld hl, $6a63
    inc c
    ld d, d
    ret


    ld d, l
    inc bc
    inc b
    add hl, bc
    call $0055
    ret z

    inc c
    inc d
    ld [de], a
    daa
    ld l, $c8
    ld [bc], a
    rlca
    xor h
    ld d, [hl]
    adc l
    ret z

    add hl, bc
    ld a, [bc]
    nop
    nop
    ld de, $05c8
    dec de
    ld a, [bc]
    ld a, [hl+]
    reti


    ld [hl], h
    ld h, a
    ld c, h
    ld d, b
    adc h
    ld d, a
    inc c
    add hl, bc
    ld b, $34
    ld e, b
    nop
    ret z

    db $10
    inc d
    inc hl
    ld a, [bc]
    push de
    ret


    ld [bc], a
    rlca
    xor h
    ld d, [hl]
    db $e3
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld de, $71c8
    add hl, bc
    ld e, $2a
    add h
    ld b, e
    ld h, a
    ld [hl+], a
    ld e, b
    or $5f
    inc bc
    ld [bc], a
    rlca
    or e
    ld d, [hl]
    ld l, h
    ret z

    add hl, bc
    ld a, [bc]
    nop
    inc de
    ld a, [de]
    ret z

    dec b
    ld a, [bc]
    and $58
    ld hl, $0cc8
    inc d
    ld [de], a
    nop
    dec de
    ret z

    ld [hl], c
    dec l
    ld a, [bc]
    ld a, [hl+]
    inc de
    ld d, c
    ld h, a
    sbc a
    ld h, b
    dec de
    ld l, c
    ld a, [bc]
    dec b
    ld a, [bc]
    sbc d
    ld e, c
    inc bc
    ret z

    dec c
    inc d
    inc hl
    nop
    push de
    ret


    dec b
    add hl, bc
    ld b, h
    ld h, l
    ld [hl], b
    jp z, $0a0c

    cp b
    inc de
    ld a, [de]
    ret z

    dec b
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    dec a
    ld h, l
    ld l, d
    ld a, [hl]
    ld d, [hl]
    db $db
    ld e, c
    dec b
    jr jr_025_5269

    call c, Call_025_5052

jr_025_5269:
    ret


    db $10
    ld e, $00
    inc d
    dec h
    ret z

    dec b
    ld [$525d], sp
    dec c
    ret z

    inc c
    ld a, [bc]
    ld c, b
    nop
    ld de, $0fc8
    ld [de], a
    inc d
    ld a, [hl+]
    rst $08
    ld e, b
    ld h, e
    nop
    ld b, b
    push af
    ld b, d
    dec b
    rla
    ld bc, $4822
    ld a, [hl+]
    jp z, $0a0a

    nop
    or $11
    ret z

    ld c, $01
    pop bc
    ld d, a
    rst $20
    ret z

    add hl, bc
    ld e, $f6
    nop
    dec h
    ret z

    rrca
    dec de
    ld a, [bc]
    ld a, [hl+]
    ld [hl+], a
    ld c, b
    ld l, e
    cp d
    ld b, d
    xor a
    ld b, h
    inc c
    ld c, $02
    db $fd
    ld e, c
    nop
    ret z

    db $10
    inc d
    inc hl
    ld a, [bc]
    push de
    ret


    rla
    inc bc
    ld l, e
    ld l, h
    ldh [$c9], a
    db $10
    inc d
    nop
    ld a, [bc]
    dec de
    ret z

    rrca
    ld [de], a
    inc d
    ld a, [hl+]
    ld l, c
    ld l, h
    ld l, d
    ld b, e
    ld e, d
    ret


    ld e, [hl]
    ld c, $17
    ld bc, $4912
    ld [$0ac8], sp
    ld a, [bc]
    dec [hl]
    or $b1
    ret


    dec c
    ld bc, $7cdb
    cpl
    jp z, $0a0a

    nop
    db $ec
    ld de, $17c8
    ld [bc], a
    ld [$b67f], sp
    ret z

    add hl, bc
    inc d
    ld hl, sp+$27
    ld l, $c8
    inc l
    add hl, bc
    inc d
    ld a, [hl+]
    rst $30
    ld a, [hl]
    rra
    nop
    ld b, b
    jr z, @+$42

    ld bc, $0317
    ld a, l
    ld l, h
    rla
    ret z

    rrca
    inc d
    ld [$1b00], sp
    ret z

    rrca
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    db $db
    ld a, h
    ld l, e
    ld d, h
    ld b, l
    sbc d
    ld b, [hl]
    inc c
    rla
    inc bc
    sbc h
    ld l, l
    nop
    ret z

    dec c
    inc d
    inc hl
    inc d
    push de
    ret


    dec c
    ld [bc], a
    sub a
    ld d, h
    ld d, e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld de, $0fc8
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    sub a
    ld d, h
    ld l, e
    call z, $cf46
    ld b, a
    inc c
    dec c
    ld bc, $7d71
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    inc hl
    nop
    ld hl, $06c9
    rlca
    rst $18
    ld l, [hl]
    jp $0ac8


    ld a, [bc]
    nop
    nop
    ld de, $43c8
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    rst $18
    ld l, [hl]
    ld l, e
    ld [de], a
    ld c, b
    ld a, d
    ld c, c
    inc c
    dec c
    ld [bc], a
    db $d3
    ld d, h
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $9100
    ret z

    ld b, $08
    ld c, l
    ld l, d
    ld d, e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld de, $43c8
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    ld c, l
    ld l, d
    ld l, e
    and a
    ld c, c
    db $f4
    ld c, h
    add hl, bc
    ld b, $07
    ld [hl], l
    ld l, a
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    inc hl
    nop
    ld hl, $06c9
    ld b, $6f
    ld e, [hl]
    dec a
    ret z

    add hl, bc
    ld e, $00
    nop
    dec h
    ret z

    ld b, e
    add hl, bc
    ld e, $2a
    ld l, a
    ld e, [hl]
    ld l, e
    jr nz, jr_025_53f2

    ld hl, sp+$4e
    inc bc
    ld b, $08
    ld d, h
    ld l, d
    ld l, h
    ret z

    add hl, bc
    ld a, [bc]
    nop
    inc de
    ld a, [de]
    ret z

    ld b, $05
    cp h
    ld c, e
    ld hl, $0cc8
    ld a, [bc]
    ld [de], a
    nop
    ld de, $43c8
    ld [de], a
    ld a, [bc]
    ld a, [hl+]
    add b
    ld c, e
    ld h, a
    reti


    ld l, c
    ld sp, $0a6e
    ld de, $1d05
    ld h, a
    inc bc
    ret z

    dec c
    inc d
    inc hl
    nop
    push de
    ret


    ld b, $06
    adc d
    ld e, [hl]
    ret nz

    ret z

    add hl, bc
    ld e, $ee
    dec sp
    ld b, d
    ret z

    rrca
    ld [de], a
    inc d
    ld a, [hl+]
    pop af
    ld h, l
    ld h, l
    add hl, de
    ld c, e
    ld h, a
    ld c, l
    rlca
    ld b, $05

jr_025_53f2:
    add b
    ld c, e
    dec h
    jp z, $0a0a

    nop
    nop
    ld de, $11c8
    inc b
    ld d, e
    ld e, h
    inc b
    ret


    add hl, bc
    ld a, [bc]
    ld a, [c]
    inc de
    ld a, [de]
    ret z

    ld de, $a803
    ld c, d
    ld c, a
    ret


    add hl, bc
    inc d
    xor $00
    dec de
    ret z

    ld b, e
    add hl, bc
    ld a, [bc]
    dec hl
    ld c, h
    ld e, h
    ld l, e
    cpl
    ld c, a
    ld [hl], a
    ld d, b
    inc bc
    dec d
    inc bc
    ld d, d
    ld [hl], c
    nop
    ret z

    ld a, [bc]
    ld a, [bc]
    ld c, h
    inc de
    ld a, [de]
    ret z

    ld de, $4105
    ld h, [hl]
    dec c
    ret z

    ld c, $14
    ld c, $00
    dec de
    ret z

    ld b, e
    dec l
    ld a, [bc]
    ld a, [hl+]
    db $ed
    ld l, a
    ld l, e
    and [hl]
    ld d, b
    push bc
    ld d, d
    add hl, bc
    dec d
    ld [bc], a
    ld l, $5c
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $9100
    ret z

    ld de, $4c04
    ld e, h
    sbc l
    jp z, $0a09

    or h
    nop
    ld de, $0fc8
    add hl, bc
    ld a, [bc]
    dec hl
    ld a, [c]
    ld e, e
    ld l, e
    inc de
    ld d, e
    ld e, h
    ld d, e
    dec b
    dec d
    inc bc
    db $ed
    ld l, a
    jp $0ac8


    ld a, [bc]
    nop
    nop
    ld de, $15c8
    inc b
    jp z, $0d45

    ret z

    inc c
    inc d
    ld [de], a
    nop
    dec de
    ret z

    rrca
    ld [de], a
    inc d
    ld a, [hl+]
    ld d, d
    ld b, l
    ld l, d
    ld a, [hl-]
    ld e, a
    sub a
    ld h, h
    inc bc
    dec d
    ld [bc], a
    ld sp, hl
    ld e, e
    jr c, @-$35

    add hl, bc
    ld a, [bc]
    xor $13
    ld a, [de]
    ret z

    dec d
    ld bc, $5b98
    rst $20
    ret z

    add hl, bc
    ld a, [bc]
    or $00
    ld de, $0fc8
    add hl, bc
    ld a, [bc]
    dec hl
    sbc b
    ld e, e
    ld l, e
    add b
    ld d, e
    ld h, e
    ld d, h
    inc bc
    dec d
    inc b
    adc e
    ld b, l
    nop
    ret z

    rrca
    inc d
    ld a, [bc]
    daa
    ld l, $c8
    add hl, de
    ld [bc], a
    ld [hl-], a
    ld b, a
    dec c
    ret z

    inc c
    inc d
    ld [de], a
    nop
    dec de
    ret z

    rrca
    add hl, bc
    inc d
    ld a, [hl+]
    xor b
    ld c, d
    ld l, d
    ld h, a
    ld h, l
    ld a, [bc]
    ld l, c
    inc bc
    ld de, $7a05
    ld h, [hl]
    nop
    ret z

    inc c
    inc d
    ld [de], a
    daa
    ld l, $c8
    ld de, $3c02
    ld b, b
    rla
    ret z

    inc c
    ld a, [bc]
    ld [de], a
    nop
    ld de, $43c8
    ld [de], a
    ld a, [bc]
    dec hl
    nop
    ld b, b
    ld l, e
    ld a, l
    ld d, h
    and c
    ld d, [hl]
    ld a, [bc]
    ld de, $8501
    ld l, [hl]
    inc bc
    ret z

    dec c
    ld e, $11
    nop
    ld b, l
    ret


    ld de, $b903
    ld c, d
    ret nz

    ret z

    add hl, bc
    inc d
    xor $27
    ld l, $c8
    ld b, e
    add hl, bc
    ld e, $2a
    pop de
    ld l, l
    ld l, b
    jr nc, jr_025_557d

    xor d
    ld h, a
    inc c
    ld [de], a
    ld [bc], a
    jp hl


    ld e, h
    rla
    ret z

    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ret c

    or c
    ret


    ld de, $0002
    ld b, b
    or e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld de, $43c8
    dec de
    ld a, [bc]
    ld a, [hl+]
    ld sp, hl
    ld e, e
    ld l, c
    or e
    ld l, a
    rst $08
    ld [hl], d
    ld c, $12
    inc b
    ld a, c
    ld d, h
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $9100
    ret z

    ld de, $e201
    ld l, l
    ldh [$c9], a
    dec c
    ld e, $00
    jr z, jr_025_557c

    ret z

    inc c
    ld [bc], a
    xor e
    ld c, c
    ret nz

    ret z

    add hl, bc
    inc d
    xor $27
    ld l, $c8
    rrca
    add hl, bc
    inc d
    ld a, [hl+]
    sbc d
    ld c, c
    ld a, [de]
    nop
    ld b, b
    ld b, d
    ld b, d
    inc bc
    inc c
    inc bc
    inc a
    ld a, b
    ld c, [hl]
    ret z

    inc c
    inc d
    nop
    daa

jr_025_557a:
    ld l, $c8

jr_025_557c:
    ld [de], a

jr_025_557d:
    ld [bc], a
    dec [hl]
    ld e, h
    rla
    ret z

    rrca
    ld a, [bc]
    ld [de], a
    nop
    ld de, $2cc8
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    dec a
    ld d, h
    ld l, e
    db $db
    ld d, [hl]
    xor h
    ld e, b
    ld c, $12
    inc bc
    ret c

    ld c, l
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $9100
    ret z

    ld [de], a
    ld [bc], a
    ld sp, hl
    ld e, e
    jp $0ac8


    ld a, [bc]
    nop
    nop
    ld de, $12c8
    ld bc, $6b6c
    jr nc, jr_025_557a

    add hl, bc
    inc d
    nop
    daa
    ld l, $c8
    ld b, e
    ld [de], a
    inc d
    ld a, [hl+]
    dec hl
    ld a, b
    ld l, d
    ld a, d
    ld l, c
    ld [hl], a
    ld l, [hl]
    add hl, bc
    inc c
    ld bc, $5b7a
    ld [$0ac8], sp
    ld a, [bc]
    ld de, $91f6
    ret z

    inc c
    ld [bc], a
    sbc d
    ld c, c
    ld h, l
    ret z

    add hl, bc
    inc d
    nop
    nop
    dec de
    ret z

    rrca
    add hl, bc
    ld a, [bc]
    dec hl
    ld a, $5b
    ld l, e
    daa
    ld e, c
    db $db
    ld e, d
    inc c
    add hl, de
    ld [bc], a
    add sp, $47
    nop
    ret z

    db $10
    inc d
    inc hl
    ld a, [bc]
    push de

jr_025_55f3:
    ret


    inc c
    inc bc
    dec l
    ld a, b
    ret nz

    ret z

    db $10
    inc d
    nop
    ld a, [bc]
    dec de
    ret z

    rrca
    ld [de], a
    inc d
    ld a, [hl+]
    cp d
    ld b, [hl]
    ld h, [hl]
    ld hl, $9c53
    ld e, b
    rrca
    add hl, de
    ld bc, $7dcb
    ld [$0ac8], sp
    ld a, [bc]
    ld de, $91f6
    ret z

    inc c
    ld bc, $5b3e
    ld a, [hl+]
    jp z, $0a0a

    nop
    or $11
    ret z

    dec d
    ld bc, $5b9f
    jr c, jr_025_55f3

    add hl, bc
    ld a, [bc]
    xor $13
    ld a, [de]
    ret z

    ld [de], a
    ld bc, $6b5b
    ld c, a
    ret


    add hl, bc
    inc d
    xor $00
    dec de
    ret z

    rrca
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    adc a
    ld a, l
    ld l, e
    rla
    ld e, e
    rst $00
    ld e, e
    inc c
    rlca
    ld de, $7ca1
    nop
    ret z

    db $10
    inc d
    inc hl
    ld a, [bc]
    push de
    ret


    add hl, de
    ld [bc], a
    cp h
    ld b, [hl]
    ret nz

    ret z

    db $10
    inc d
    nop
    ld a, [bc]
    dec de
    ret z

    rrca
    ld [de], a
    inc d
    ld a, [hl+]
    ld [hl], e
    ld a, e
    ld h, c
    nop
    ld b, b
    ld e, l
    ld b, h
    rrca
    rlca
    rrca
    dec sp
    ld d, [hl]
    add hl, bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $91f4
    ret z

    add hl, de
    ld bc, $7d8f
    ld a, [hl+]
    jp z, $0a0a

    nop
    or $11
    ret z

    rlca
    inc c
    cp b
    ld l, d
    ret nc

    ret z

    add hl, bc
    inc d
    or $27
    ld l, $c8
    rlca
    dec c
    jp hl


    ld a, l
    ld c, a
    ret


    add hl, bc
    ld e, $ee
    nop
    dec h
    ret z

    inc l
    add hl, bc
    ld e, $2a
    jp hl


    ld a, l
    ld l, d
    dec h
    ld l, a
    rst $00
    ld [hl], d
    ld b, $07
    ld c, $26
    ld b, c
    rst $00
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    ret c

    ld de, $07c8
    ld de, $7bfc
    nop
    ret z

    inc c
    inc d
    ld [de], a
    daa
    ld l, $c8
    inc l
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    rst $38
    ld d, l
    ld l, e
    ld hl, sp+$5b
    ld d, b
    ld e, a
    inc c
    rlca
    db $10
    and l
    ld d, l
    inc bc
    ret z

    dec c
    ld e, $11
    nop
    ld b, l
    ret


    rlca
    ld de, $7b76
    ret nz

    ret z

    db $10
    inc d
    nop
    inc c
    dec de
    ret z

    inc l
    add hl, bc
    ld e, $2a
    pop af
    ld d, h
    ld h, a
    sub h
    ld l, [hl]
    adc a
    ld [hl], l
    inc b
    rlca
    rrca
    rst $38
    ld d, l
    or e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld de, $2cc8
    add hl, bc
    ld e, $2a
    pop bc
    ld d, a
    ld l, e
    ld h, e
    ld e, a
    adc d
    ld h, c
    inc bc
    ld c, $02
    ld [$0059], sp
    ret z

    rrca
    inc d
    ld a, [bc]
    daa
    ld l, $c8
    rlca
    inc c
    and a
    ld l, d
    adc l
    ret z

    add hl, bc
    inc d
    nop
    nop
    dec de
    ret z

    inc l
    add hl, bc
    inc d
    ld a, [hl+]
    and a
    ld l, d
    ld l, e
    adc $61
    xor e
    ld h, e
    inc bc
    ld c, $01
    call c, Call_025_4e57
    ret z

    add hl, bc
    ld e, $00
    dec sp
    ld b, d
    ret z

    rlca
    ld de, $7b9b
    rla
    ret z

    rrca
    inc d
    ld a, [bc]
    nop
    dec de
    ret z

    inc l
    add hl, bc
    inc d
    ld a, [hl+]
    ld e, e
    ld l, e
    dec de
    nop
    ld b, b
    pop hl
    ld b, d
    inc bc
    add hl, de
    ld [bc], a
    ld b, e
    ld b, a
    nop
    ret z

    inc c
    inc d
    ld [de], a
    daa
    ld l, $c8
    ld [de], a
    inc b
    dec a
    ld d, h
    ld h, l
    ret z

    add hl, bc
    ld a, [bc]
    nop
    nop
    ld de, $2cc8
    add hl, bc
    ld a, [bc]
    dec hl
    ld h, $41
    ld l, h
    ld a, [hl]
    ld h, b
    sbc c
    ld h, b
    inc c
    rlca
    dec c
    xor [hl]
    ld a, [hl]
    nop
    ret z

    dec c
    ld e, $11
    jr z, jr_025_57c4

    ret


    ld [de], a
    inc bc
    sbc h
    ld c, l
    jp $0ac8


    ld a, [bc]
    nop
    nop
    ld de, $2cc8
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    sbc h
    ld c, l
    ld l, e
    db $f4
    ld h, e
    inc b
    ld h, l
    inc c
    rlca
    ld c, $62
    ld b, c
    inc bc
    ret z

    ld a, [bc]
    ld a, [bc]
    ld de, $9100
    ret z

    ld [de], a
    inc b
    dec a
    ld d, h
    jp $0ac8


    ld a, [bc]
    nop
    nop
    ld de, $0fc8
    add hl, bc
    ld a, [bc]
    inc l
    ret c

    ld d, e
    ld l, e
    ld l, $65
    ld a, c
    ld h, l
    nop
    rrca
    ld [$2b0a], sp
    di
    ld c, e
    ld h, c
    db $fc

jr_025_57c4:
    ld b, h
    inc bc
    ld b, a
    nop
    rrca
    ld [$2b0a], sp
    ld c, l
    ld c, h
    ld h, c
    ld a, d
    ld b, a
    push af
    ld c, b
    nop
    rrca
    ld [$2b0a], sp
    and a
    ld c, h
    ld h, c
    dec sp
    ld c, c
    adc [hl]
    ld c, a
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    adc a
    ld e, a
    ld h, c
    ld a, [de]
    ld d, b
    adc h
    ld e, c
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    jp hl


    ld e, a
    ld h, c
    inc hl
    ld e, d
    dec h
    ld e, d
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    ld b, e
    ld h, b
    ld h, c
    dec [hl]
    ld e, d
    add hl, sp
    ld e, d
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    sbc l
    ld h, b
    ld h, c
    ld d, [hl]
    ld e, d
    ld h, c
    ld e, d
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    rst $30
    ld h, b
    ld h, c
    and a
    ld e, d
    or c
    ld e, d
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    ld d, c
    ld h, c
    ld h, c
    ld [c], a
    ld e, d
    and $5a
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    xor e
    ld h, c
    ld h, c
    inc bc
    ld e, e
    rlca
    ld e, e
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    dec b
    ld h, d
    ld h, c
    inc sp
    ld e, e
    dec sp
    ld e, e
    nop
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    dec hl
    ld e, a
    ld h, d
    ld h, c
    add [hl]
    ld e, e
    xor e
    ld e, e
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    inc de
    ld h, e
    ld h, c
    pop hl
    ld e, e
    or d
    ld h, b
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec hl
    ld l, l
    ld h, e
    ld h, c
    ld d, c
    ld h, c
    sbc $63
    nop
    nop
    dec de
    inc d
    dec hl
    push de
    ld b, a
    rla
    nop
    ld b, b
    ld b, $48
    nop
    nop
    dec de
    inc d
    dec hl
    push de
    ld b, a
    rla
    ld [$5d48], a
    ld c, h
    nop
    nop
    inc b
    add hl, bc
    dec hl
    ld bc, $174d
    daa
    ld c, l
    adc [hl]
    ld d, [hl]
    nop
    nop
    inc b
    add hl, bc
    dec hl
    dec h
    ld c, l
    rla
    ei
    ld d, [hl]
    add c
    ld h, h
    nop
    nop
    inc b
    add hl, bc
    dec hl
    ld c, c
    ld c, l
    rla
    ld a, $65
    ld bc, $006b
    nop
    inc b
    add hl, bc
    dec hl
    ld l, l
    ld c, l
    rla
    add b
    ld l, e
    ld a, [de]
    ld [hl], b
    nop
    nop
    inc b
    add hl, bc
    dec hl
    sub c
    ld c, l
    jr jr_025_58b4

jr_025_58b4:
    ld b, b
    ld b, $49
    nop
    dec b
    ld [de], a
    ld a, [bc]
    dec hl
    adc e
    ld c, d
    ld d, $00
    ld b, b
    jp $0044


    nop
    dec b
    inc b
    dec hl
    rst $18
    ld c, e
    ld d, $60
    ld b, l
    pop hl
    ld b, [hl]
    nop
    nop
    dec b
    inc b
    dec hl
    rst $18
    ld c, e
    ld d, $1e
    ld b, a
    add l
    ld c, e
    nop
    nop
    dec b
    inc b
    dec hl
    rst $18
    ld c, e
    ld d, $dc
    ld c, e
    ld h, e
    ld c, l
    nop
    nop
    dec b
    inc b
    dec hl
    rst $18
    ld c, e
    ld d, $a0
    ld c, l
    ld [hl+], a
    ld c, a
    nop
    nop
    ld c, $0a
    dec hl
    ld d, e
    ld c, e
    ld d, $5f
    ld c, a
    sub a
    ld d, b
    nop
    nop
    inc b
    inc b
    inc l
    ld [c], a
    ld b, h
    ld d, $73
    ld d, c
    ret nc

    ld e, b
    nop
    nop
    dec b
    inc b
    inc l
    ld [hl], e
    ld d, a
    ld d, $16
    ld e, c
    ld c, b
    ld e, c
    nop
    nop
    dec b
    inc b
    inc l
    ld [hl], e
    ld d, a
    ld d, $a0
    ld e, c
    jp nc, $0059

    nop
    dec b
    inc b
    inc l
    ld [hl], e
    ld d, a
    ld d, $2a
    ld e, d
    ld e, h
    ld e, d
    nop
    nop
    dec b
    inc b
    inc l
    ld [hl], e
    ld d, a
    ld d, $b4
    ld e, d
    and $5a
    nop
    nop
    inc c
    ld a, [bc]
    inc l
    add a
    ld d, a
    ld d, $3e
    ld e, e
    ld b, b
    ld e, e
    nop
    nop
    rlca
    ld a, [bc]
    inc l
    rst $38
    ld d, a
    ld d, $55
    ld e, e
    ld d, a
    ld e, e
    nop
    nop
    ld [$2c0a], sp
    ld b, l
    ld e, b
    ld d, $6c
    ld e, e
    ld l, [hl]
    ld e, e
    nop

jr_025_5960:
    nop
    rlca
    ld a, [bc]
    inc l
    sub l
    ld e, b
    ld d, $83
    ld e, e
    add l
    ld e, e
    nop
    add hl, bc
    ld [de], a
    ld a, [bc]
    dec hl
    ld hl, $1647
    sbc d
    ld e, e
    dec [hl]
    ld e, a
    nop
    add hl, bc
    ld [de], a
    ld a, [bc]

jr_025_597b:
    dec hl
    cp c
    ld b, l
    ld d, $c4
    ld e, a
    adc [hl]
    ld h, d
    nop
    add hl, bc
    ld [de], a
    ld a, [bc]
    dec hl
    ld l, l
    ld b, [hl]
    ld d, $08
    ld h, e
    ld a, d
    ld h, l
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc l
    inc hl
    ld b, b
    ld d, $d3
    ld h, l
    add h
    ld l, h
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc l
    ld a, l
    ld b, b
    ld d, $09
    ld l, l
    ld b, b
    ld l, [hl]
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    ld a, $7d
    ld d, $65
    ld l, [hl]
    ld [hl], $6f
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    sbc b
    ld a, l
    ld d, $6f
    ld l, a
    db $fd
    ld [hl], c
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    ld a, [c]
    ld a, l
    ld d, $3b
    ld [hl], d
    add c
    ld [hl], h
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    ld c, h
    ld a, [hl]
    ld d, $e8
    ld [hl], h
    ret nz

    halt
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    and [hl]
    ld a, [hl]
    jr jr_025_5960

    ld c, c
    jr nz, jr_025_5a2e

    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    nop
    ld a, a
    jr jr_025_597b

    ld c, e
    ld d, e
    ld c, a
    nop
    nop
    inc b
    inc b
    dec hl
    add l
    ld a, b
    dec de
    ld c, c
    ld b, e
    ei
    ld b, l
    nop
    nop
    add hl, bc
    rrca
    dec hl
    sub l
    ld a, b
    dec de
    ld d, c
    ld b, [hl]
    db $eb
    ld c, l
    nop
    nop
    add hl, bc
    rrca
    dec hl
    inc e
    ld a, c
    dec de
    ld [hl], b
    ld c, a
    ld b, h
    ld e, [hl]
    nop
    nop
    add hl, bc
    rrca
    dec hl
    and e
    ld a, c
    dec de
    call nc, $e45f
    ld l, c
    nop
    dec b
    dec de
    rrca
    inc l
    rst $10
    ld b, b
    dec de
    cp $6a
    rst $20
    ld [hl], l
    nop
    nop
    ld [de], a

jr_025_5a2e:
    rrca
    dec hl
    and [hl]
    ld e, h
    rra
    jr c, jr_025_5a75

    ld [hl], $49
    nop
    nop
    ld [de], a
    rrca
    dec hl
    or h
    ld e, l
    rra
    add sp, $49
    adc c
    ld d, [hl]
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    jp nz, $1f5e

    ld a, c
    ld d, a
    adc $58
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    inc e
    ld e, a
    rra
    ld c, e
    ld e, c
    add h
    ld e, l
    nop
    add hl, bc
    ld [de], a
    inc d
    dec hl
    push de

Call_025_5a61:
    ld h, h
    rra
    db $f4
    ld e, l
    db $fd
    ld e, l
    nop
    add hl, bc
    dec de
    inc d
    dec hl
    dec a
    ld h, [hl]
    rra
    ld c, a
    ld e, [hl]
    dec e
    ld h, b
    nop
    add hl, bc

jr_025_5a75:
    ld [de], a
    inc d
    dec hl
    ld e, c
    ld l, b
    rra
    ret z

    ld h, b
    add h
    ld h, c
    nop
    add hl, bc
    ld [de], a
    inc d
    dec hl
    pop bc
    ld l, c
    rra
    db $f4
    ld h, c
    nop
    ld h, h
    nop
    add hl, bc
    ld [de], a
    inc d
    dec hl
    add hl, hl
    ld l, e
    rra
    ld [hl], b
    ld h, h
    ld a, b
    ld h, h
    nop
    add hl, de
    ld [de], a
    ld a, [bc]
    dec hl
    sub c
    ld l, h
    rra
    cp c
    ld h, h
    dec l
    ld h, l
    nop
    add hl, de
    add hl, bc
    ld a, [bc]
    dec hl
    ld b, l
    ld l, l
    rra
    and c
    ld h, l
    call $0065
    add hl, de
    add hl, bc
    dec b
    dec hl
    sbc a
    ld l, l
    rra
    ld b, h
    ld h, [hl]
    ld c, e
    ld h, [hl]
    nop
    add hl, de
    add hl, bc
    ld a, [bc]
    dec hl
    call z, $1f6d
    ld l, l
    ld h, [hl]
    ld [hl], h
    ld h, [hl]
    nop
    ld l, $09
    dec b
    dec hl
    ld h, $6e
    ld h, e
    ld a, b
    ld b, e
    ld a, d
    ld b, e
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec hl
    ld d, e
    ld l, [hl]
    ld h, e
    sub h
    ld b, e
    sbc b
    ld b, e
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec hl
    xor l
    ld l, [hl]
    ld h, e
    cp d
    ld b, e
    cp [hl]
    ld b, e
    nop
    add hl, bc
    add hl, bc
    dec b
    dec hl
    rlca
    ld l, a
    ld h, e
    ld [$ec43], a
    ld b, e
    nop
    rrca
    add hl, bc
    dec b
    dec hl
    inc [hl]
    ld l, a
    ld h, e
    db $fc
    ld b, e
    cp $43
    nop
    add hl, bc
    ld [de], a
    inc d
    dec hl
    ld h, c
    ld l, a
    ld h, e
    ld c, $44
    ld h, $44
    nop
    ld l, $12
    ld a, [bc]
    dec hl
    ret


    ld [hl], b
    ld h, e
    or [hl]
    ld b, h
    cp [hl]
    ld b, h
    nop
    rrca
    add hl, bc
    ld a, [bc]
    dec hl
    ld a, l
    ld [hl], c
    ld h, e
    rst $38
    ld b, h
    ld a, [hl-]
    ld b, l
    nop
    add hl, bc
    ld [de], a
    ld a, [bc]
    dec hl
    rst $10
    ld [hl], c
    ld h, e
    ld d, d
    ld b, l
    ld h, d
    ld b, l
    nop
    add hl, bc
    ld [de], a
    rrca
    dec hl
    adc e
    ld [hl], d
    ld h, e
    or b
    ld b, l
    cp e
    ld b, l
    nop
    nop
    ld [de], a
    ld a, [bc]
    dec hl
    sbc c
    ld [hl], e
    ld h, e
    ld bc, $4446
    ld b, [hl]
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc l
    db $10
    ld c, h
    ld h, e
    ld e, h
    ld b, [hl]
    ld h, d
    ld b, [hl]
    nop
    add hl, bc
    ld [de], a
    inc d
    inc l
    ld l, h
    ld b, d
    ld h, e
    adc h
    ld b, [hl]
    sbc h
    ld b, [hl]
    nop
    add hl, bc
    ld [de], a
    rrca
    inc l
    call nc, $6343
    ld e, $47
    dec a
    ld c, b
    nop
    add hl, bc
    add hl, bc
    dec b
    inc l
    ld d, a
    ld d, l
    ld h, e
    ld [hl], h
    ld c, b
    db $76
    ld c, b
    nop
    ld [hl], c
    ld [de], a
    inc d
    inc l
    add h
    ld d, l
    ld h, e
    sub b
    ld c, b
    ld [hl], e
    ld c, a
    nop
    nop
    dec b
    dec b
    inc l
    db $db
    ld e, b
    ld h, e
    inc d
    ld d, b
    cp h
    ld e, d
    nop
    add hl, bc
    add hl, bc
    rrca
    inc l
    db $ec
    ld d, [hl]
    ld h, e
    nop
    ld e, e
    inc b
    ld e, e
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    daa
    nop
    ld b, b
    db $e4
    ld b, b
    nop
    nop
    ld [$2b05], sp
    ld a, e
    ld a, h
    daa
    dec l
    ld b, c
    ld h, $45
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    ld e, d
    ld b, l
    ld h, [hl]
    ld b, l
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    adc l
    ld b, l
    ld bc, $0046
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    dec [hl]
    ld b, [hl]
    push hl
    ld b, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    add hl, de
    ld b, a
    and d
    ld c, b
    nop
    nop
    inc b
    inc b
    inc l
    ld c, l
    ld c, c
    daa
    cp a
    ld c, b
    adc [hl]
    ld c, d
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    daa
    push bc
    ld c, d
    sbc [hl]
    ld c, e
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    daa
    push de
    ld c, e
    ld c, l
    ld c, h
    nop
    nop
    inc b
    inc b
    inc l
    ld h, b
    ld d, d
    daa
    ld [hl], h
    ld c, h
    ld a, e
    ld c, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    or d
    ld c, [hl]
    ld b, d
    ld d, d
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, [hl]
    ld a, l
    ld e, c
    ld [hl], d
    ld e, d
    nop
    inc h
    add hl, bc
    dec b
    dec hl
    ld c, [hl]
    ld a, h
    ld h, [hl]
    sbc h
    ld e, d
    rst $18
    ld h, d
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, [hl]
    ld d, h
    ld h, e
    ld l, d
    ld h, h
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    ld h, [hl]
    or e
    ld h, h
    cp $64
    nop
    add hl, bc
    ld [de], a
    ld a, [bc]
    inc l
    ld b, d
    ld c, a
    dec e
    nop
    ld b, b
    ld c, c
    ld b, b
    nop
    add hl, bc
    add hl, bc
    rrca
    inc l
    or $4f
    dec e
    ld a, a
    ld b, b
    ld d, [hl]
    ld b, e
    nop
    nop
    ld c, $03
    inc l
    ld [hl], $52
    dec e
    sub c
    ld b, e
    sbc c
    ld b, e
    nop
    add hl, bc
    ld [de], a
    rrca
    inc l
    ld h, $4d
    dec e
    or e
    ld b, e
    cp a
    ld b, e
    nop
    add hl, bc
    ld [de], a
    rrca
    inc l
    inc [hl]
    ld c, [hl]
    dec e
    rlca
    ld b, h
    ld [de], a
    ld b, h
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    dec e
    ld e, b
    ld b, h
    ld e, d
    ld b, h
    nop
    nop
    ld [de], a
    ld a, [bc]
    inc l
    add d
    ld d, c
    dec e
    ld [hl], h
    ld b, h
    db $76
    ld b, h
    nop
    dec e
    inc h
    ld a, [bc]
    inc l
    ld [hl], b
    ld d, d
    dec e
    add [hl]
    ld b, h
    ld [bc], a
    ld c, b
    nop
    nop
    add hl, bc
    ld a, [bc]
    inc l
    inc l
    ld b, l
    ld h, $00
    ld b, b
    ld [bc], a
    ld b, l
    nop
    nop
    inc b
    inc b
    inc l
    ld b, a
    ld d, l
    ld h, $65
    ld b, l
    ld [$004d], a
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, $55
    ld c, [hl]
    call c, $0052
    nop
    inc b
    inc b
    dec hl
    ld c, a
    ld b, l
    ld h, $32
    ld d, e
    ld sp, $0054
    nop
    rlca
    ld b, $2c
    ld [bc], a
    ld b, l
    ld h, $60
    ld d, h
    xor d
    ld e, e
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, $39
    ld e, h
    ld [de], a
    ld e, l
    nop
    nop
    add hl, bc
    dec b
    dec hl
    ld hl, $267c
    ld c, c
    ld e, l
    jp hl


    ld h, h
    nop
    nop
    inc b
    inc b
    dec hl
    ld c, a
    ld b, l
    ld h, $f9
    ld h, l
    push af
    ld l, c
    nop
    dec hl
    add hl, bc
    dec b
    dec hl
    db $e4
    ld a, h
    ld h, l
    nop
    ld c, [hl]
    xor [hl]
    ld d, [hl]
    nop
    nop
    add hl, bc
    dec b
    dec hl
    ld de, $657d
    ld [hl+], a
    ld d, a
    ret nz

    ld e, b
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    ld b, a
    ld e, c
    cp $59
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    jr z, jr_025_5d9b

    inc [hl]
    ld e, d
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, l
    ld e, e
    ld e, d
    ld b, b
    ld e, e
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, l
    ld [hl], a
    ld e, e
    ld l, c
    ld e, h
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    or d
    ld e, h
    cp a
    ld e, h
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld l, d
    ld a, [hl+]
    ld [hl], e
    xor e
    ld [hl], e
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld l, d
    rst $20
    ld [hl], e
    jp hl


    ld [hl], e
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld l, d
    db $f4
    ld [hl], e
    call $0074
    add hl, bc
    inc b
    dec b
    inc l
    ld a, l
    ld d, b
    ld l, d
    db $f4
    ld [hl], h
    ld h, l
    ld a, b
    nop
    nop
    inc b
    inc b

jr_025_5d9b:
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, d
    nop
    ld b, b
    dec hl
    ld b, b
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, d
    ld c, b
    ld b, b
    ld a, [$0040]
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, d
    ld sp, $c941
    ld b, c
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, d
    dec c
    ld b, d
    add [hl]
    ld b, e
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, d
    jp nz, $c443

    ld b, e
    nop
    ld b, $08
    dec b
    inc l
    jp Jump_025_6249


    rst $08
    ld b, e
    ld d, c
    ld c, d
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, d
    cp [hl]
    ld c, d
    sbc e
    ld c, e
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, d
    jp nc, Jump_025_634b

    ld c, l
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, d
    xor h
    ld c, l
    xor [hl]
    ld c, l
    nop
    nop
    add hl, bc
    ld a, [bc]
    inc l
    ld [hl], d
    ld c, d
    ld h, d
    cp c
    ld c, l
    cp c
    ld d, h
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, d
    ld [hl], $55
    ld b, d
    ld e, e
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, e
    ld hl, $cf5b
    ld e, h
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, e
    jr jr_025_5e8e

    ld hl, sp+$5f
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, e
    ld a, $60
    jr jr_025_5ea0

    nop
    nop
    inc b
    ld [$112b], sp
    ld c, d
    ld h, e
    ld c, a
    ld h, c
    xor b
    ld l, e
    nop
    rlca
    ld [$2b05], sp
    ld [hl], a
    ld a, e
    ld h, e
    inc e
    ld l, h
    call z, $0073
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, [hl]
    dec h
    ld h, l
    add l
    ld h, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, [hl]
    xor h
    ld h, [hl]
    ld [c], a
    ld l, d
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld h, [hl]
    add hl, bc
    ld l, e
    sub c
    ld l, e
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld h, [hl]
    cp b
    ld l, e
    ld e, e
    ld l, [hl]
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41

jr_025_5e8e:
    ld a, [de]
    sub e
    ld b, d
    adc c
    ld b, e
    nop
    nop
    ld [$2b05], sp
    sbc a
    ld a, e
    ld a, [de]
    ret nz

    ld b, e
    inc c
    ld c, d
    nop

jr_025_5ea0:
    nop
    ld [$2b04], sp
    ld b, b
    ld b, e
    ld a, [de]
    ld e, d
    ld c, d
    ld [hl], l
    ld d, e
    nop
    nop
    inc b
    inc b
    dec hl
    ld c, a
    ld b, l
    ld a, [de]
    rst $20
    ld d, e
    sub b
    ld d, h
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld a, [de]
    rst $00
    ld d, h
    dec [hl]
    ld e, c
    nop
    nop
    inc b
    inc b
    dec hl
    ld c, a
    ld b, l
    ld a, [de]
    adc e
    ld e, c
    ld bc, $005a
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    ld a, [de]
    dec hl
    ld e, d
    rrca
    ld e, e
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld a, [de]
    ld d, b
    ld e, e
    ld sp, hl
    ld e, h
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld a, [de]
    dec [hl]
    ld e, l
    ld c, b
    ld h, c
    nop
    nop
    inc b
    inc b
    inc l
    call z, $1a45
    adc c
    ld h, c
    jp nc, $0069

    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld a, [de]
    jr jr_025_5f73

    ret


    ld l, d
    nop
    nop
    inc b
    dec b
    inc l
    call c, $1a45
    db $fd
    ld l, d
    xor h
    ld a, c
    nop
    rlca
    add hl, bc
    ld a, [bc]
    dec hl
    rst $00
    ld a, e
    dec d
    nop
    ld b, b
    db $dd
    ld b, [hl]
    nop
    nop
    inc b
    inc b
    inc l
    ld a, [c]
    ld b, h
    dec d
    ld c, l
    ld b, a
    rlca
    ld c, c
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    dec d
    ld d, c
    ld c, c
    sbc h
    ld c, e
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    dec d
    ld [c], a
    ld c, e
    sbc a
    ld d, b
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    ld sp, $154a
    push hl
    ld d, b
    rra
    ld d, e
    nop
    nop
    inc b
    inc b
    inc l
    or b
    ld d, h
    dec d
    ld e, e
    ld d, e
    ld e, $56
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    dec d
    ld c, b
    ld d, [hl]
    ld b, c
    ld d, a
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    dec d

jr_025_5f73:
    ld a, d
    ld d, a
    ld d, e
    ld e, c
    nop
    nop
    inc b
    ld [$b42b], sp
    ld b, e
    dec d
    ld a, a
    ld e, c
    inc bc
    ld e, e
    nop
    nop
    inc b
    ld [$d42b], sp
    ld b, e
    dec d
    ld e, e
    ld e, e
    ld d, [hl]
    ld e, l
    nop
    nop
    inc b
    ld [$f42b], sp
    ld b, e
    dec d
    or [hl]
    ld e, l
    and c
    ld e, [hl]
    nop
    nop
    inc b
    ld [$142b], sp
    ld b, h
    dec d
    rst $20
    ld e, [hl]
    jr c, jr_025_6007

    nop
    nop
    inc b
    ld [$342b], sp
    ld b, h
    dec d
    adc e
    ld h, b
    add [hl]
    ld h, e
    nop
    nop
    inc b
    ld [$542b], sp
    ld b, h
    dec d
    di
    ld h, e
    ld c, d
    ld h, [hl]
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec hl
    ld [hl], h
    ld b, h
    dec d

jr_025_5fc7:
    sub a
    ld h, [hl]
    cp $66
    nop
    inc h
    inc b
    ld [$222c], sp
    ld e, e
    dec d
    inc de
    ld h, a
    ld l, l
    ld l, e
    nop
    nop
    rlca
    ld a, [bc]
    inc l
    add [hl]
    ld b, l
    dec d
    db $f4
    ld l, e
    db $db
    ld [hl], c
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    jr @-$6f

    ld c, a
    ld h, h
    ld h, l
    nop
    nop
    db $10
    db $10
    inc l
    inc l
    ld e, c
    jr jr_025_5fc7

    ld h, l
    ld [hl-], a
    ld l, h
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    jr jr_025_607c

    ld l, h
    db $f4
    ld l, h

jr_025_6007:
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    jr jr_025_6038

    ld l, l
    jr nz, jr_025_6082

    nop
    nop
    inc b
    dec b
    inc l
    ld l, d
    ld c, h
    jr jr_025_6092

    ld l, a
    ld d, b
    ld [hl], d
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, h
    adc e
    ld d, h
    rst $18
    ld d, l
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, h
    ld bc, $9156
    ld d, a
    nop

jr_025_6038:
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, h
    jp c, $dc57

    ld d, a
    nop
    nop
    inc b
    dec b
    inc l
    call z, $644a
    rst $20
    ld d, a
    ld c, l
    ld e, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, h
    or l
    ld e, [hl]
    ld c, b
    ld e, a
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, h
    ld a, h
    ld e, a
    ld hl, sp+$5f
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, h
    cpl
    ld h, b
    add [hl]
    ld h, b
    nop
    nop
    add hl, bc
    dec b
    inc l
    db $eb
    ld c, c

Jump_025_607a:
    ld h, h
    and e

jr_025_607c:
    ld h, b
    dec a
    ld h, [hl]
    nop
    nop
    inc b

jr_025_6082:
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld h, h
    db $e3
    ld h, [hl]
    rlca
    ld l, b
    nop
    nop
    inc b
    inc b
    dec hl
    pop af
    ld c, c

jr_025_6092:
    ld h, h
    ld l, $68
    jr nc, jr_025_60ff

    nop
    nop
    inc b
    inc b
    inc l
    sub [hl]
    ld c, e
    ld h, [hl]
    sbc h
    ld l, [hl]
    rla
    ld [hl], b
    nop
    nop
    inc b
    inc b
    inc l
    and [hl]
    ld c, e
    ld h, [hl]
    ld c, b
    ld [hl], b
    cp c
    ld [hl], b
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, [hl]
    adc $70
    xor b
    ld [hl], e
    nop
    nop
    ld b, $05
    inc l
    or [hl]
    ld c, e
    ld h, [hl]
    push bc
    ld [hl], e
    inc sp
    ld a, d
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld l, b
    dec b
    ld l, b
    jr c, jr_025_613b

    nop
    ld a, [hl+]
    rlca
    dec b
    inc l
    sub d
    ld c, h
    ld l, b
    ld h, d
    ld l, b
    adc b
    ld l, l
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld l, b
    ret


    ld l, l
    xor [hl]
    ld l, [hl]
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld l, b
    push hl
    ld l, [hl]
    db $f4
    ld l, a
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld l, b

jr_025_60ff:
    ld c, d
    ld [hl], b
    ld c, h
    ld [hl], b
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld l, b
    ld d, a
    ld [hl], b
    adc d
    ld [hl], b
    nop
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    inc l
    push hl
    ld b, a
    dec e
    and d
    ld c, b
    jr jr_025_6168

    nop
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    inc l
    sbc c
    ld c, b
    dec e
    sub b
    ld c, l
    db $e3
    ld d, b
    nop
    nop
    add hl, bc
    db $10
    inc l
    ldh a, [rLYC]
    dec e
    daa
    ld d, c
    pop af
    ld d, h
    nop
    nop
    db $10
    inc b
    inc l
    db $10
    ld b, a
    dec e

jr_025_613b:
    ld [hl], a
    ld d, l
    adc $59
    nop
    nop
    db $10
    inc b
    inc l
    ld d, b
    ld b, a
    dec e
    ld c, l
    ld e, d
    ld b, d
    ld e, [hl]
    nop
    nop
    ld de, $2c05
    sub b
    ld b, a
    dec e
    and h
    ld e, [hl]
    ld a, b
    ld h, [hl]
    nop
    nop
    ld [$2c10], sp
    add b
    ld b, [hl]
    dec e
    jr nc, jr_025_61c8

    jp hl


    ld l, [hl]
    nop
    nop
    add hl, bc
    ld a, [bc]
    inc l

jr_025_6168:
    ei
    ld d, b
    dec e
    xor d
    ld l, a
    db $ec
    ld l, a
    nop
    nop
    add hl, bc
    ld a, [bc]
    inc l
    ei
    ld d, b
    dec e
    jr jr_025_61e9

    ld e, d
    ld [hl], b
    nop
    dec l
    add hl, bc
    rrca
    inc l
    ret nz

    ld d, h
    dec e
    add [hl]
    ld [hl], b
    ld e, b
    ld [hl], c
    nop
    nop
    inc b
    inc b
    dec hl
    add l
    ld a, b
    dec e
    and [hl]
    ld [hl], c
    rst $20
    ld [hl], c
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec hl
    cp c
    ld h, d
    dec e
    dec hl
    ld [hl], d
    ld l, d
    ld [hl], d
    nop
    nop
    rlca
    add hl, bc
    dec hl
    add h
    ld a, d
    ld h, b
    nop
    ld b, b
    ld b, c
    ld b, h
    nop
    inc h
    add hl, bc
    dec b
    dec hl
    jp Jump_025_607a


    cp c
    ld b, h
    ld sp, hl
    ld b, [hl]
    nop
    ld hl, $0509
    dec hl
    ldh a, [$7a]
    ld h, b
    dec de
    ld b, a
    ld e, a
    ld c, c
    nop
    dec hl
    add hl, bc
    dec b
    dec hl

jr_025_61c8:
    dec e
    ld a, e
    ld h, b
    add [hl]
    ld c, c
    adc b
    ld c, e
    nop
    nop
    add hl, bc
    dec b
    dec hl
    ld c, d
    ld a, e
    ld h, b
    xor a
    ld c, e
    dec b
    ld c, [hl]
    nop
    nop
    inc c
    dec b
    inc l
    ld [hl-], a
    ld d, h
    ld h, b
    inc l
    ld c, [hl]
    db $f4
    ld d, e
    nop
    nop

jr_025_61e9:
    rlca
    dec b
    inc l
    ld l, [hl]
    ld d, h
    ld h, b
    ld b, l
    ld d, h
    ld a, b
    ld d, [hl]
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, l
    and $5c
    ld l, [hl]
    ld e, l
    nop
    nop
    inc b
    inc b
    inc l
    ld c, l
    ld c, c
    ld h, l
    and l
    ld e, l
    and a
    ld e, l
    nop
    dec e
    add hl, bc
    dec b
    inc l
    ld d, l
    ld d, c
    ld h, l
    or a
    ld e, l
    ld d, e
    ld h, e
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    cp e
    ld h, e
    jr z, jr_025_6287

    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, l
    ld d, d
    ld h, h
    ld l, [hl]
    ld h, l
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, l
    or a
    ld h, l
    cp c
    ld h, l
    nop
    nop
    inc b
    dec b
    inc l
    call z, $654a
    call nz, Call_025_6b65
    ld h, a
    nop
    nop

Jump_025_6249:
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    ld h, l
    sbc h
    ld h, a
    pop hl
    ld h, a
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    rra
    sbc [hl]
    ld h, [hl]
    ld [hl], d
    ld l, b
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    rra
    cp e
    ld l, b
    cp l
    ld l, b
    nop
    nop
    inc b
    dec b
    inc l
    call nc, $1f4b
    ret z

    ld l, b
    ld [$0069], a
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    rra
    ld b, l
    ld l, d
    call nz, $006a
    nop
    inc b
    inc b

jr_025_6287:
    ld a, [hl+]
    ld h, a
    ld l, b
    rra
    db $eb
    ld l, d
    db $fd
    ld l, d
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    rra
    ld a, [de]
    ld l, e
    ld c, $6c
    nop
    nop
    inc b
    dec b
    inc l
    ld a, [hl]
    ld c, h
    rra
    ld b, l
    ld l, h
    dec e
    ld l, [hl]
    nop
    nop
    inc b
    ld a, [bc]
    inc l
    add sp, $4b
    rra
    ld h, c
    ld l, [hl]
    cp c
    ld [hl], e
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    rra
    inc d
    ld [hl], h
    ld e, e
    ld [hl], h
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    rra
    add d
    ld [hl], h
    dec bc
    halt
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld l, e
    sbc b
    ld h, l
    ld [hl+], a
    ld h, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld l, e
    ld d, c
    ld h, [hl]
    ld h, d
    ld h, a
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, h
    ld b, l
    ld l, b
    ld a, a
    ld [hl], e
    nop
    nop
    inc b
    dec b
    dec hl
    dec sp
    ld b, l
    ld h, h
    call c, $2973
    ld [hl], h
    nop
    nop
    inc b
    dec b
    dec hl
    daa
    ld b, l
    ld h, h
    ld e, l
    ld [hl], h
    or a
    ld [hl], h
    nop
    nop
    inc b
    dec b
    dec hl
    dec sp
    ld b, l
    ld h, h
    db $eb
    ld [hl], h
    jr c, jr_025_6388

    nop
    nop
    inc b
    dec b
    inc l
    inc l
    ld e, d
    ld h, h
    ld l, h
    ld [hl], l
    xor a
    ld [hl], l
    nop
    nop
    inc b
    dec b
    inc l
    ld b, b
    ld e, d
    ld h, h
    call nz, Call_025_7375
    halt
    nop
    inc b
    ld [$b42b], sp
    ld b, e
    inc e
    sbc $49
    ld h, b
    ld c, e
    nop
    nop
    inc b
    ld [$d42b], sp
    ld b, e
    inc e
    xor e
    ld c, e
    call nc, $004c
    nop
    inc b
    ld [$f42b], sp
    ld b, e
    inc e

Jump_025_634b:
    daa
    ld c, l
    xor e
    ld c, [hl]
    nop
    nop
    inc b
    ld [$142b], sp
    ld b, h
    inc e
    dec bc
    ld c, a
    cp h
    ld c, a
    nop
    nop
    inc b
    ld [$342b], sp
    ld b, h
    inc e
    ld [bc], a
    ld d, b
    db $10
    ld d, c
    nop
    nop
    inc b
    ld [$542b], sp
    ld b, h
    inc e
    ld [hl], b
    ld d, c
    ld h, e
    ld d, e
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec hl
    ld [hl], h
    ld b, h
    inc e
    xor e
    ld d, e
    ret c

    ld d, e
    nop
    nop
    dec b
    inc b
    dec hl
    ld a, b
    ld b, h
    inc e
    db $ed

jr_025_6388:
    ld d, e
    call z, $0054
    nop
    dec b
    inc b
    dec hl
    adc h
    ld b, h
    inc e
    ld l, $55
    ld b, l
    ld d, [hl]
    nop
    nop
    dec b
    inc b
    dec hl
    and b
    ld b, h
    inc e
    ld l, [hl]
    ld d, [hl]
    push de
    ld e, c
    nop
    ld bc, $0405
    dec hl
    or h
    ld b, h
    inc e
    scf
    ld e, d
    call nc, $005a
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    inc e
    ei
    ld e, d
    inc bc
    ld e, [hl]
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    inc e
    jr nz, jr_025_6423

    cp b
    ld h, b
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    inc e
    ld c, $61
    db $10
    ld h, c
    nop
    nop
    rlca
    ld a, [bc]
    dec hl
    ret c

    ld b, h
    inc e
    dec de
    ld h, c
    and h
    ld h, l
    nop
    nop
    inc bc
    inc bc
    dec hl
    ld e, $45
    inc e
    rst $20
    ld h, [hl]
    inc [hl]
    ld l, d
    nop
    jr nz, jr_025_63f7

    dec b
    inc l
    or l
    ld c, h
    inc e
    ld l, b
    ld l, d
    rst $18
    ld l, a

jr_025_63f7:
    nop
    nop
    inc b
    ld b, $2c
    or $4c
    inc e
    ld b, a
    ld [hl], b
    ld d, $73
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    inc e
    ld [hl], c
    ld [hl], e
    cp h
    ld [hl], e
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    inc e
    db $e3
    ld [hl], e
    rst $18
    ld [hl], h
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    inc e

jr_025_6423:
    ld d, $75
    ldh [$75], a
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    inc e
    rlca
    db $76
    or [hl]
    halt
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    db $76
    ld d, d
    ldh a, [rHDMA5]
    nop
    rrca
    add hl, bc
    dec b
    dec hl
    or a
    ld a, h
    daa
    dec c
    ld d, [hl]
    ld a, $5b
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    daa
    call Call_025_4e5b
    ld e, a
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    sub a
    ld e, a
    or a
    ld h, b
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    sbc $60
    sub c
    ld h, c
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    xor [hl]
    ld h, c
    dec hl
    ld h, e
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    daa
    ld l, h
    ld h, e
    db $76
    ld h, e
    nop
    nop
    dec b
    ld [$f42c], sp
    ld e, b
    daa
    sub e
    ld h, e
    or h
    ld [hl], e
    nop
    nop
    inc b
    inc b
    inc l
    inc e
    ld e, c
    daa
    rrca
    ld [hl], h
    ld l, $75
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc l
    ld l, d
    ld e, d
    daa
    ld e, b
    ld [hl], l
    sub h
    ld [hl], l
    nop
    nop
    ld [bc], a
    dec bc
    inc l
    ld d, h
    ld e, d
    daa
    or c
    ld [hl], l
    cpl
    halt
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    daa
    ld h, b
    db $76
    ld e, $78
    nop
    dec b
    ld c, $0a
    inc l
    ld l, [hl]
    ld e, d
    daa
    ld d, d
    ld a, b
    ld e, a
    ld a, e
    nop
    rla
    add hl, bc
    dec b
    inc l
    ld e, $4b
    ld h, $24
    ld l, d
    inc b
    ld l, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, $38
    ld l, [hl]
    ld hl, $006f
    nop
    rlca
    dec b
    inc l
    ld c, e
    ld c, e
    ld h, $65
    ld l, a
    rra
    ld [hl], e
    nop
    nop
    ld [$2c05], sp
    ld l, [hl]
    ld c, e
    ld h, $84
    ld [hl], e
    cp b
    ld [hl], l
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, $e5
    ld [hl], l
    ld d, a
    halt
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, $8e
    db $76
    rst $28
    ld [hl], a
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, $38
    ld a, b
    ld a, [hl-]
    ld a, b
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, $45
    ld a, b
    inc sp
    ld a, c
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld h, $50
    ld a, c
    jp z, $0079

    nop
    add hl, bc
    ld a, [bc]
    inc l
    and c
    ld d, b
    ld h, $f1
    ld a, c
    sbc e
    ld a, e
    nop
    nop
    ld b, $05
    ld a, [hl+]
    ld d, l
    ld a, e
    ld e, $5d
    ld c, e
    sbc $63
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    sbc e
    db $76
    ld e, $cc
    ld h, h
    ld sp, $006b
    nop
    inc bc
    inc b
    inc l
    ld e, l
    ld c, c
    ld e, $ab
    ld l, e
    sbc c
    ld l, h
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld e, $ec
    ld l, h
    or b
    ld l, [hl]
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    jr nc, jr_025_65c7

    ld e, $e9
    ld l, [hl]
    ld [$0070], a
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld e, $23
    ld [hl], c
    cp e
    ld [hl], c
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld e, $e2
    ld [hl], c
    ld [hl], l
    ld [hl], e
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld e, $92
    ld [hl], e
    sub d
    ld [hl], l
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld e, $b9
    ld [hl], l
    ld [hl], h
    halt
    nop
    ld b, $05
    inc l
    ldh [rWY], a
    ld h, d
    ld e, a
    ld e, e
    ld hl, sp+$5b
    nop
    nop
    add hl, bc
    ld a, [bc]
    inc l
    jr jr_025_6610

    ld h, d

jr_025_65c7:
    inc l
    ld e, h
    call nz, $0062
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, d
    cp l
    ld h, e
    ld b, h
    ld h, h
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, d
    ld a, e
    ld h, h
    ld [hl+], a
    ld h, a
    nop
    nop
    inc b
    ld [$f62a], sp
    ld c, l
    ld h, d
    ld l, e
    ld h, a
    ld l, l
    ld h, a
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, d
    ld a, b
    ld h, a
    ldh a, [$67]
    nop
    nop
    add hl, bc
    ld a, [bc]
    inc l
    ld l, c
    ld c, c
    ld h, d
    rla
    ld l, b
    adc l
    ld l, e
    nop
    nop
    inc b
    ld [$fe2c], sp
    ld c, d
    ld h, d
    db $e3

jr_025_6610:
    ld l, e
    rst $20
    ld l, h
    nop
    nop
    inc b
    inc b
    inc l
    sub c
    ld d, h
    ld h, d
    ld de, $5e6d
    ld l, [hl]
    nop
    nop
    inc bc
    dec b
    inc l
    and c
    ld d, h
    ld h, d
    sbc d
    ld l, [hl]
    ldh a, [$74]
    nop
    nop
    inc b
    inc b
    dec hl
    pop af
    ld c, c
    ld h, d
    ld d, e
    ld [hl], l
    sub l
    ld [hl], l
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    ld [hl], a
    ld l, b
    ld h, d
    or a
    ld [hl], l
    dec bc
    halt
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, d
    ld [hl-], a
    db $76
    ld b, h
    ld [hl], a
    nop
    nop
    inc b
    ld b, $2b
    ld c, $41
    ld h, l
    ld [$3468], sp
    ld l, c
    nop
    nop
    inc b
    dec b
    dec hl
    add sp, $42
    ld h, l
    ld l, e
    ld l, c
    sub [hl]
    ld l, d
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    rst $18
    ld l, d
    pop de
    ld l, e
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    dec b
    ld l, h
    adc c
    ld l, h
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    or b
    ld l, h
    ld l, $6d
    nop
    nop
    inc b
    inc b
    ld a, [hl+]
    ld h, a
    ld l, b
    ld h, l
    ld h, d
    ld l, l
    jr nz, jr_025_6705

    nop
    nop
    inc b
    inc b
    inc l
    sub c
    ld d, b
    ld h, l
    ld b, a
    ld l, [hl]
    rst $28
    ld [hl], l
    nop
    nop
    inc b
    dec b
    ld a, [hl+]
    xor a
    db $76
    ld h, l
    ld [hl-], a
    db $76
    adc h
    halt
    xor a
    ld [$d432], a

jr_025_66b4:
    ld a, [$d432]
    ld hl, $66c3
    rst $28
    ld a, [$d432]
    cp $03
    jr nz, jr_025_66b4

    ret


    inc h
    ld h, a
    ld a, $67
    ld [hl], e
    ld h, a
    jp nz, $af66

    ld [$d436], a
    ret


Call_025_66d0:
    ld a, $ff
    ld [$d436], a
    ret


Call_025_66d6:
    ld hl, $d436
    bit 5, [hl]
    ret


    ld hl, $d436
    res 2, [hl]
    ret


    ld hl, $d436
    res 1, [hl]
    ret


    ld hl, $d436
    res 0, [hl]
    ret


    ld hl, $d436
    res 4, [hl]
    ret


    ld hl, $d436
    set 2, [hl]
    ret


    ld hl, $d436
    set 1, [hl]
    ret


    ld hl, $d436
    set 0, [hl]

jr_025_6705:
    ret


    ld hl, $d436
    set 4, [hl]
    ret


Call_025_670c:
    ld hl, $d436
    bit 2, [hl]
    ret


Call_025_6712:
    ld hl, $d436
    bit 1, [hl]
    ret


Call_025_6718:
    ld hl, $d436
    bit 0, [hl]
    ret


Call_025_671e:
    ld hl, $d436
    bit 4, [hl]
    ret


    xor a
    ld [$c2dd], a
    xor a
    ld [$d438], a
    ld hl, $d432
    ld bc, $003e
    call $3041
    ld a, $04
    ld hl, $53e5
    rst $08
    call $092f
    xor a
    ld [$d453], a
    ld [$d454], a
    call Call_025_68d1
    ld a, $05
    ld hl, $5363
    rst $08
    call $66cb
    ldh a, [$9f]
    cp $f7
    jr nz, jr_025_675a

    call Call_025_66d0

jr_025_675a:
    ldh a, [$9f]
    cp $f3
    jr nz, jr_025_6764

    xor a
    ld [$dc74], a

jr_025_6764:
    xor a
    ldh [$9f], a
    ld a, $02
    ld [$d432], a
    ret


    ld c, $1e
    call $0468
    ret


    call Call_025_67b0
    call Call_025_67c1
    ld a, $25
    ld hl, $7e08
    rst $08
    call Call_025_6795
    ld a, [$d432]
    cp $02
    ret nz

    call Call_025_67d1
    call Call_025_67b7
    call Call_025_67e1
    call Call_025_67f4
    ret


Call_025_6795:
    ld a, [$d433]
    ld hl, $679d
    rst $28
    ret


    and c
    ld h, a
    xor [hl]
    ld h, a
    call Call_025_681f
    call $66cb
    ld a, $25
    ld hl, $6c5e
    rst $08
    ret


    ret


    ld [bc], a

Call_025_67b0:
    ld a, [$67af]
    ld [$cfb1], a
    ret


Call_025_67b7:
    ld a, [$cfb1]
    and a
    ret z

    ld c, a
    call $0468
    ret


Call_025_67c1:
    ld a, [$d433]
    cp $01
    ret z

    call $05a7
    call $0984
    call $047e
    ret


Call_025_67d1:
    ld a, $01
    ld hl, $576a
    rst $08
    ld a, $03
    ld hl, $5497
    rst $08
    call Call_025_6812
    ret


Call_025_67e1:
    ld a, $01
    ld hl, $5920
    rst $08
    ld a, $03
    ld hl, $54d2
    rst $08
    ld a, $2e
    ld hl, $4098
    rst $08
    ret


Call_025_67f4:
    ld a, [$d150]
    bit 5, a
    jr z, jr_025_6806

    bit 6, a
    jr z, jr_025_680c

    bit 4, a
    jr nz, jr_025_680c

    call Call_025_66d0

jr_025_6806:
    ld a, $00
    ld [$d433], a
    ret


jr_025_680c:
    ld a, $01
    ld [$d433], a
    ret


Call_025_6812:
    ld hl, $d150
    bit 6, [hl]
    ret z

    ld a, $02
    ld hl, $41ca
    rst $08
    ret


Call_025_681f:
    xor a
    ld a, [$d438]
    and a
    ret nz

    call Call_025_68e4
    call Call_025_6867
    jr c, jr_025_6848

    call Call_025_6874
    jr c, jr_025_6848

    call Call_025_7c30
    jr c, jr_025_6848

    call Call_025_68ec
    jr c, jr_025_6848

    call Call_025_693a
    jr c, jr_025_6848

    call Call_025_6974
    jr c, jr_025_6848

    xor a
    ret


jr_025_6848:
    push af
    ld a, $25
    ld hl, $6c56
    rst $08
    pop af
    ld [$d438], a
    call Call_025_6beb
    ld a, [$d438]
    cp $04
    jr z, jr_025_6865

    cp $09
    jr z, jr_025_6865

    xor a
    ld [$c2da], a

jr_025_6865:
    scf
    ret


Call_025_6867:
    nop
    nop
    call $3600
    jr nc, jr_025_6872

    ld a, $01
    scf
    ret


jr_025_6872:
    xor a
    ret


Call_025_6874:
    call Call_025_670c
    jr z, jr_025_6886

    ld a, $41
    ld hl, $4820
    rst $08
    jr c, jr_025_68a6

    call $2238
    jr c, jr_025_68aa

jr_025_6886:
    call Call_025_6712
    jr z, jr_025_6890

    call $2ad4
    jr c, jr_025_68ba

jr_025_6890:
    call Call_025_6718
    jr z, jr_025_6899

    call Call_025_6b79
    ret c

jr_025_6899:
    call Call_025_671e
    jr z, jr_025_68a4

    call Call_025_7cc0
    ret c

    jr jr_025_68a4

jr_025_68a4:
    xor a
    ret


jr_025_68a6:
    ld a, $04
    scf
    ret


jr_025_68aa:
    ld a, [$d4e4]
    call $18a6
    jr nz, jr_025_68b6

    ld a, $06
    scf
    ret


jr_025_68b6:
    ld a, $05
    scf
    ret


jr_025_68ba:
    ld hl, $d042
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2c57
    call $261f
    ret


Call_025_68c7:
    ld hl, $d452
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret z

    scf
    ret


Call_025_68d1:
    ld a, $05
    ld [$d452], a
    ret


Call_025_68d7:
    ret


    ld a, [$d452]
    cp $02
    ret nc

    ld a, $02
    ld [$d452], a
    ret


Call_025_68e4:
    call Call_025_66d6
    ret z

    call $2f3e
    ret


Call_025_68ec:
    ld a, [$dc07]
    and a
    jr z, jr_025_6938

    ld c, a
    call $211b
    cp c
    jr nc, jr_025_6938

    ld e, a
    ld d, $00
    ld hl, $dc08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    call $2c57
    call $305d
    call $2c57
    call $261f
    ld hl, $d434
    res 3, [hl]
    ld a, $25
    ld hl, $6c56
    rst $08
    ld a, $25
    ld hl, $6c5e
    rst $08
    ld hl, $d434
    bit 3, [hl]
    jr z, jr_025_6938

    ld hl, $d44f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d44e]
    call $261f
    scf
    ret


jr_025_6938:
    xor a
    ret


Call_025_693a:
    ld a, [$c2dc]
    and a
    jr nz, jr_025_6964

    ld hl, $d84d
    bit 2, [hl]
    jr z, jr_025_6951

    ld a, $04
    ld hl, $54a4
    rst $08
    jr c, jr_025_6966

    xor a
    ret


jr_025_6951:
    ld a, $04
    ld hl, $5452
    rst $08
    ld a, $04
    ld hl, $54e7
    rst $08
    ld a, $24
    ld hl, $4074
    rst $08
    ret c

jr_025_6964:
    xor a
    ret


jr_025_6966:
    ld a, $04
    ld hl, $75f8
    call $261f
    scf
    ret


    ld a, $08
    scf
    ret


Call_025_6974:
    call Call_025_6af0
    ret c

    and a
    jr nz, jr_025_698d

    ld a, $20
    ld hl, $4404
    rst $08
    jr c, jr_025_698d

    call Call_025_6999
    jr c, jr_025_698f

    call Call_025_6b30
    jr c, jr_025_698f

jr_025_698d:
    xor a
    ret


jr_025_698f:
    push af
    ld a, $20
    ld hl, $4422
    rst $08
    pop af
    scf
    ret


Call_025_6999:
    ldh a, [$a7]
    and $01
    ret z

    call Call_025_69b5
    ret c

    call Call_025_6a38
    ret c

    call Call_025_7c5f
    ret c

    xor a
    ret


Call_025_69ac:
    push de
    ld de, $0008
    call $3c23
    pop de
    ret


Call_025_69b5:
    ld a, $01
    ld hl, $6fd9
    rst $08
    jr c, jr_025_69bf

    xor a
    ret


jr_025_69bf:
    call Call_025_69ac
    ldh a, [$b0]
    call $1ae5
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ldh [$e0], a
    ldh a, [$e0]
    call $18d2
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $0f
    push bc
    ld de, $0003
    ld hl, $69ee
    call $30e1
    jr nc, jr_025_69ec

    pop bc
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_025_69ec:
    xor a
    ret


    nop
    inc b
    ld l, d
    ld bc, $6a12
    ld [bc], a
    add hl, hl
    ld l, d
    inc bc
    jr nc, @+$6c

    inc b
    ld [hl-], a
    ld l, d
    dec b
    inc [hl]
    ld l, d
    ld b, $36
    ld l, d
    rst $38
    ld hl, $000a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2c57
    call $261f
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2c57
    ld de, $d03e
    ld bc, $0002
    call $0e8d
    ld a, $03
    scf
    ret


    call $3674
    ld a, $02
    scf
    ret


    xor a
    ret


    xor a
    ret


    xor a
    ret


    xor a
    ret


Call_025_6a38:
    call $2a8b
    jr c, jr_025_6a3f

    xor a
    ret


jr_025_6a3f:
    ld a, [$d040]
    ld hl, $6a47
    rst $28
    ret


    ld [hl], d
    ld l, d
    ld e, c
    ld l, d
    ld e, l
    ld l, d
    ld h, c

Jump_025_6a4e:
    ld l, d
    ld h, l
    ld l, d
    or l
    ld l, d

Call_025_6a53:
    cp h
    ld l, d
    add e
    ld l, d
    and d
    ld l, d
    ld b, $04
    jr jr_025_6a69

    ld b, $00
    jr jr_025_6a69

    ld b, $0c
    jr jr_025_6a69

    ld b, $08
    jr jr_025_6a69

jr_025_6a69:
    ld a, [$d4de]
    and $0c
    cp b
    jp nz, Jump_025_6ad6

    call Call_025_69ac
    ld hl, $d041
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2c57
    call $261f
    scf
    ret


    call Call_025_6ad8
    jp nz, Jump_025_6ad6

    call Call_025_69ac
    call $2c57
    ld de, $d03e
    ld bc, $0003
    call $0e8d
    ld a, $04
    ld hl, $7625
    call $261f
    scf
    ret


    call Call_025_6ad8
    jr nz, jr_025_6ad6

    call $2c57
    ld de, $d03e
    ld bc, $0003
    call $0e8d
    jr jr_025_6ad6

    call Call_025_6ad8
    jr z, jr_025_6ad6

    jr jr_025_6ac1

    call Call_025_6ad8
    jr nz, jr_025_6ad6

jr_025_6ac1:
    push hl
    call Call_025_69ac
    pop hl
    inc hl
    inc hl
    call $2c57
    call $305d
    call $2c57
    call $261f
    scf
    ret


Jump_025_6ad6:
jr_025_6ad6:
    xor a
    ret


Call_025_6ad8:
    ld hl, $d041
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call $2c57
    call $305d
    ld e, l
    ld d, h
    ld b, $02
    call $2e6f
    ld a, c
    and a
    pop hl
    ret


Call_025_6af0:
    ld a, $20
    ld hl, $4000
    rst $08
    ld a, c
    ld hl, $6afd
    rst $28
    ld a, c
    ret


    dec c
    ld l, e
    ld d, $6b
    dec de
    ld l, e
    jr nz, jr_025_6b70

    dec c
    ld l, e
    dec hl
    ld l, e
    dec hl
    ld l, e
    db $10
    ld l, e
    xor a
    ld c, a
    ret


    call Call_025_68d7
    xor a
    ld c, a
    ret


    ld a, $05
    ld c, a
    scf
    ret


    ld a, $09
    ld c, a
    scf
    ret


    ld a, $04
    ld hl, $653d
    call $261f
    ld c, a
    scf
    ret


    ld a, $ff
    ld c, a
    and a
    ret


Call_025_6b30:
    xor a
    ldh [$a0], a
    ldh [$a1], a
    ldh a, [$a7]
    bit 2, a
    jr nz, jr_025_6b4b

    bit 3, a
    jr z, jr_025_6b49

    ld a, $25
    ld hl, $6b58
    call $261f
    scf
    ret


jr_025_6b49:
    xor a
    ret


jr_025_6b4b:
    call Call_025_69ac
    ld a, $25
    ld hl, $6b5f
    call $261f
    scf
    ret


    ld c, $04
    call $0365
    ld h, [hl]
    ld l, e
    ld c, $04
    daa
    ld [hl], e
    inc bc
    ld h, [hl]

Call_025_6b65:
    ld l, e
    add hl, de
    and b
    rst $38
    ld b, $80
    ld [hl], d
    ld l, e
    ld b, $ff
    ld [hl], l

jr_025_6b70:
    ld l, e
    sub c
    dec b
    add sp, -$30
    db $10
    add sp, -$30
    sub c

Call_025_6b79:
    ld a, [$c2dc]
    and a
    jr nz, jr_025_6bc9

    ld a, $24
    ld hl, $4136
    rst $08
    jr c, jr_025_6bcb

    call Call_025_6bd7
    jr c, jr_025_6bcb

    ld hl, $dc74
    inc [hl]
    ld hl, $dc73
    inc [hl]
    jr nz, jr_025_6b9c

    ld a, $01
    ld hl, $725a
    rst $08

jr_025_6b9c:
    ld a, [$dc73]
    cp $80
    jr nz, jr_025_6bab

    ld a, $05
    ld hl, $6f3e
    rst $08
    jr nz, jr_025_6bcf

jr_025_6bab:
    ld a, $01
    ld hl, $7282
    rst $08
    ld hl, $dc74
    ld a, [hl]
    cp $04
    jr c, jr_025_6bc3

    ld [hl], $00
    ld a, $14
    ld hl, $45da
    rst $08
    jr c, jr_025_6bcb

jr_025_6bc3:
    ld a, $25
    ld hl, $7db3
    rst $08

jr_025_6bc9:
    xor a
    ret


jr_025_6bcb:
    ld a, $ff
    scf
    ret


jr_025_6bcf:
    ld a, $08
    scf
    ret


    ld a, $07
    scf
    ret


Call_025_6bd7:
    ld a, [$dca1]
    and a
    ret z

    dec a
    ld [$dca1], a
    ret nz

    ld a, $04
    ld hl, $7619
    call $261f
    scf
    ret


Call_025_6beb:
    ld a, [$d438]
    and a
    ret z

    cp $ff
    ret z

    cp $0a
    ret nc

    ld c, a
    ld b, $00
    ld hl, $6c0c
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d439], a
    ld a, [hl+]
    ld [$d43a], a
    ld a, [hl]
    ld [$d43b], a
    ret


    dec h
    dec l
    ld l, h
    cpl
    ld [hl], l
    ld h, [hl]
    cpl
    ld l, d
    ld h, [hl]
    inc b
    adc $62
    dec h
    ld c, l
    ld l, h
    dec h
    inc [hl]
    ld l, h
    dec h
    jr c, jr_025_6c8d

    inc b
    ret z

    ld h, h
    dec h
    cpl
    ld l, h
    dec h
    ld c, a
    ld l, h
    dec h
    dec l
    ld l, h
    sub c
    sub c
    ld c, $05
    ld e, [hl]
    ld l, a
    sub c
    add a
    adc d
    push af
    sub c
    adc d
    or $85
    cpl
    nop
    ld l, c
    nop
    ld c, b
    ld l, h
    add l
    dec de
    nop
    nop
    ld c, d
    ld l, h
    sub c
    ld c, [hl]
    ld b, a
    ld a, b
    db $10
    sub c
    sub d
    rst $30
    adc h
    inc bc
    ld c, $25
    ld b, $67
    sub c
    push af
    ld a, $01
    ld [$d437], a
    pop af
    ret


    call Call_025_6e05

jr_025_6c61:
    ld a, [$d437]
    ld hl, $6c6e
    rst $28
    call Call_025_6e0b
    jr nz, jr_025_6c61

    ret


    db $76
    ld l, h
    xor c
    ld l, h
    sub c
    ld l, h
    ld a, d
    ld l, h
    call Call_025_6e11
    ret


    call Call_025_6e11
    ld hl, $d44d
    dec [hl]
    ret nz

    ld a, $01
    ld hl, $58b9
    rst $08
    ld a, $01
    ld [$d437], a

jr_025_6c8d:
    call Call_025_6e05
    ret


    call Call_025_6e11
    ld hl, $d0ed
    bit 7, [hl]
    ret nz

    ld a, $01
    ld hl, $58b9
    rst $08
    ld a, $01
    ld [$d437], a
    call Call_025_6e05
    ret


    call $26d4
    ld hl, $6cb1
    rst $28
    ret


    and d
    ld [hl], h
    or b
    ld [hl], h
    cp [hl]
    ld [hl], h
    cp $74
    dec c
    ld [hl], l
    inc e
    ld [hl], l
    ld b, b
    ld [hl], l
    ld c, e
    ld [hl], l
    inc l
    ld [hl], l
    ld [hl], $75
    ld d, [hl]
    ld [hl], l
    ld h, d
    ld [hl], l
    ld l, [hl]
    ld [hl], l
    ld [hl], e
    ld [hl], l
    rla
    ld l, [hl]
    ld h, $6e
    dec [hl]
    ld l, [hl]
    pop de
    ld [hl], l
    push af
    ld [hl], l
    jp nz, $eb75

    ld [hl], l
    jr nc, jr_025_6d53

    scf
    db $76
    ld b, b
    db $76
    and [hl]
    db $76
    add hl, bc
    db $76
    ld d, $76
    inc hl
    db $76
    ld a, l
    db $76
    adc b
    db $76
    sub e
    db $76
    jp z, $f077

    ld [hl], a
    ld [de], a
    ld a, b
    add hl, hl
    ld a, b
    ld [hl], $78
    ld b, e
    ld a, b
    add c
    ld a, b
    adc e
    ld a, b
    sub l
    ld a, b
    jp c, $ef78

    ld a, b
    inc b
    ld a, c
    xor [hl]
    ld a, b
    jp $3278


    ld a, c
    ld l, b
    ld a, c
    sub d
    ld [hl], a
    or a
    ld [hl], a
    and h
    ld a, c
    sub [hl]
    ld a, c
    adc b
    ld a, c
    rst $10
    ld a, c
    ret


    ld a, c
    cp e
    ld a, c
    ei
    ld a, c
    push af
    ld a, c
    ld bc, $657a
    ld a, d
    ld a, b
    ld a, d
    dec e
    ld a, d
    ld [hl-], a
    ld [hl], a
    ld b, a
    ld [hl], a
    ld e, h
    ld [hl], a
    xor [hl]
    db $76
    push de
    db $76
    jp hl


    db $76
    ld b, $77
    ld a, l
    ld [hl], a
    add $6f
    push de
    ld l, a
    inc e
    ld a, e
    jr nz, @+$7d

    cpl
    ld a, e
    daa
    ld a, e
    xor e
    ld l, [hl]
    sbc e
    ld l, [hl]
    cp e
    ld l, [hl]
    db $ed
    ld l, [hl]
    ld a, [$0f6e]
    ld l, a

jr_025_6d53:
    ld b, l
    ld l, [hl]
    add c
    ld l, [hl]
    ld e, a
    ld l, [hl]
    reti


    ld l, [hl]
    call c, $166e
    ld l, a
    add hl, hl
    ld l, a
    ld b, c
    ld l, a
    jr nc, jr_025_6dd4

    ldh a, [$73]
    ei
    ld [hl], e
    nop
    ld [hl], h
    ld [de], a
    ld [hl], h
    inc h
    ld [hl], h
    ld [hl], $74
    ld e, c
    ld [hl], h
    ld b, a
    ld [hl], h
    rrca
    ld [hl], c
    ld [hl-], a
    ld [hl], c
    ld c, h
    ld [hl], c
    dec h
    ld [hl], c
    ld h, e
    ld [hl], c
    ld l, e
    ld [hl], c
    ld [$f371], a
    ld [hl], c
    jr z, jr_025_6df9

    ld l, $72
    ld c, b
    ld [hl], d
    adc $72
    xor $72
    db $dd
    ld [hl], d
    dec h
    ld [hl], e
    ld a, [hl-]
    ld [hl], e
    ld b, c
    ld [hl], e
    ld e, e
    ld [hl], e
    add h
    ld [hl], e
    sub [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], e
    rst $00
    ld [hl], e
    or e
    ld a, d
    call z, $917a
    ld [hl], h
    db $e3
    ld a, d
    adc e
    ld a, d
    sbc [hl]
    ld a, d
    adc c
    ld [hl], c
    ld a, d
    ld [hl], c
    and d
    ld [hl], c
    add l
    ld [hl], c
    add l
    ld a, d
    pop de
    ld [hl], c
    or a
    ld [hl], c
    jp $c771


    ld [hl], c
    db $e4
    ld l, a
    ld [hl], $7b
    ld [$477b], sp
    ld a, e
    ld e, h
    ld a, e
    xor d
    ld [hl], l
    or $7a
    ld l, [hl]
    ld a, e
    adc h
    ld a, e
    ld [hl], h

jr_025_6dd4:
    ld a, e
    ld d, $7b
    ret nz

    ld a, e
    ld h, l
    ld [hl], b
    ld a, h
    ld [hl], b
    sbc c
    ld [hl], b
    cp [hl]
    ld [hl], b
    and h
    ld [hl], b
    or a
    ld [hl], b
    rst $18
    ld [hl], b
    xor $70
    add hl, de
    ld a, c
    ld h, $79
    ld h, b
    ld l, a
    adc [hl]
    ld l, a
    db $fc
    ld [hl], b
    push de
    ld a, e
    di
    ld a, e
    ld c, $7a

jr_025_6df9:
    ld d, d
    ld l, a
    ld bc, $2b77
    ld [hl], a
    ld d, $77
    dec b
    ld a, h
    dec d
    ld a, h

Call_025_6e05:
    ld hl, $d434
    set 2, [hl]
    ret


Call_025_6e0b:
    ld hl, $d434
    bit 2, [hl]
    ret


Call_025_6e11:
    ld hl, $d434
    res 2, [hl]
    ret


    call $26d4
    ld b, a
    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, b
    rst $08
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, $03
    ld hl, $401b
    rst $08
    ret


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    rst $08
    ret


    ld a, [$d439]
    ld [$d44e], a
    call $26d4
    ld [$d44f], a
    call $26d4
    ld [$d450], a
    ld b, $25
    ld hl, $6e79
    jp Jump_025_759d


    ld a, [$d439]
    ld [$d44e], a
    call $26d4
    ld [$d44f], a
    call $26d4
    ld [$d450], a
    ld b, $25
    ld hl, $6e7a
    jp Jump_025_759d


    ld l, e
    ld b, a
    ld c, l
    rst $38
    rst $38
    ld d, h
    ld c, c
    sub c
    call $26d4
    ld [$d44e], a
    call $26d4
    ld [$d44f], a
    call $26d4
    ld [$d450], a
    ld b, $25
    ld hl, $6e7a
    jp Jump_025_759d


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, [$d439]
    ld b, a
    call $269a
    ret


    call $26d4
    ld b, a
    call $26d4
    ld l, a
    call $26d4
    ld h, a
    call $269a
    ret


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    cp $ff
    jr nz, jr_025_6ed8

    ld a, l
    cp $ff
    jr nz, jr_025_6ed8

    ld hl, $d44e
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $269a
    ret


jr_025_6ed8:
    ret


    jp $0a46


    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call $31f6
    call $0aaf
    pop af
    ldh [$d8], a
    ret


    call $1dcf
    ld a, $00
    jr c, jr_025_6ef6

    ld a, $01

jr_025_6ef6:
    ld [$c2dd], a
    ret


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld de, $1d35
    ld a, [$d439]
    call $26b7
    call $1ad2
    ret


    call $1c17
    call $1ad2
    ret


    call $26d4
    and a
    jr nz, jr_025_6f1f

    ld a, [$c2dd]

jr_025_6f1f:
    ld [$d108], a
    ld a, $09
    ld hl, $44e3
    rst $08
    ret


    ld a, $09
    ld hl, $4528
    rst $08
    ret


    ld a, [$d439]
    ld hl, $1d81
    rst $08
    ld a, [$cfa9]
    jr nc, jr_025_6f3d

    xor a

jr_025_6f3d:
    ld [$c2dd], a
    ret


    ld a, [$d439]
    ld hl, $202a
    rst $08
    ld a, [$cf88]
    jr nc, jr_025_6f4e

    xor a

jr_025_6f4e:
    ld [$c2dd], a
    ret


    call $106c
    call $26d4
    ld c, a
    ld a, $47
    ld hl, $4000
    rst $08
    ret


    call Call_025_77ca
    call Call_025_7051
    ld de, $d073
    ld a, $01
    call Call_025_76c8
    ld b, $25
    ld de, $6f77
    jp Jump_025_74cb


    ret


    ld c, $25
    db $76
    ld l, a
    ld c, h
    adc c
    ld l, a
    ld [$6f86], sp
    add [hl]
    adc b
    ld d, h
    ld b, l
    sub c
    ld d, l
    ld b, [hl]
    sub c
    ld d, $19
    ld b, a
    ld [hl], c
    ld d, b
    call $26d4
    cp $ff
    jr nz, jr_025_6f98

    ld a, [$c2dd]

jr_025_6f98:
    ld [$d106], a
    call $26d4
    call Call_025_769e
    ld a, [de]
    ld [$d10c], a
    ld hl, $d892
    call $2f66
    ld a, $01
    jr c, jr_025_6fb0

    xor a

jr_025_6fb0:
    ld [$c2dd], a
    call Call_025_7051
    ld de, $d073
    ld a, $01
    call Call_025_76c8
    ld b, $25
    ld de, $6f77
    jp Jump_025_74cb


    call Call_025_6ffe
    call Call_025_7051
    ld b, $25
    ld hl, $705b
    call $269a
    ret


    call Call_025_6ffe
    call Call_025_7051
    ld b, $25
    ld hl, $7060
    call $269a
    ret


    ld a, $03
    ld hl, $543d
    rst $08
    ld a, [$d142]
    cp $04
    ld de, $009b
    jr z, jr_025_6ff7

    ld de, $0001

jr_025_6ff7:
    call $3c23
    call $3c55
    ret


Call_025_6ffe:
    ld a, $03
    ld hl, $543d
    rst $08
    ld a, [$d142]
    dec a
    ld hl, $701c
    and $03
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d099
    call $30d9
    ret


    inc h
    ld [hl], b
    jr nc, @+$72

    dec sp
    ld [hl], b
    ld b, a
    ld [hl], b
    adc b
    sub e
    add h
    adc h
    ld a, a
    adc a
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    adc d
    add h
    sbc b
    ld a, a
    adc a
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    add c
    add b
    adc e
    adc e
    ld a, a
    adc a
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    sub e
    adc h
    ld a, a
    adc a
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b

Call_025_7051:
    ld a, [$d106]
    ld [$d265], a
    call $3468
    ret


    ld d, $2c
    ld b, a
    ld [hl], c
    ld d, b
    ld d, $4b
    ld b, a
    ld [hl], c
    ld d, b
    call $26d4
    ld c, a
    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, [$d439]
    ld b, a
    ld a, $05
    ld hl, $5a45
    rst $08
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, [$d439]
    ld b, a
    ld a, $04
    ld hl, $742d
    rst $08
    ret c

    ld a, $01
    ld [$c2dd], a
    ret


    call $26d4
    ld e, a
    ld a, $3f
    ld hl, $4ba8
    rst $08
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, [$d439]
    ld b, a
    ld a, $24
    ld hl, $429a
    rst $08
    ret


    ld a, $24
    ld hl, $42eb
    rst $08
    ret


    call $1dcf
    jr c, jr_025_70d6

    call $26d4
    ld c, a
    ld a, $24
    ld hl, $4000
    rst $08
    jr c, jr_025_70d2

    xor a
    jr jr_025_70db

jr_025_70d2:
    ld a, $01
    jr jr_025_70db

jr_025_70d6:
    call $26d4
    ld a, $02

jr_025_70db:
    ld [$c2dd], a
    ret


    call $26d4
    ld b, a
    ld a, $09
    ld hl, $6f59
    rst $08
    ld h, d
    ld l, e
    jp Jump_025_759d


    call $26d4
    ld [$d03e], a
    ld b, $11
    ld hl, $4000
    jp Jump_025_759d


    call $26d4
    ld c, a
    call $26d4
    ld d, a
    call $26d4
    ld e, a
    ld a, $03
    ld hl, $4403
    rst $08
    ret


    call $26d4
    ld c, a
    ld b, $00
    ld hl, $d045
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d03e]
    ld b, a
    call $269a
    ret


    ld hl, $d04b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d03e]
    ld b, a
    jp Jump_025_759d


    xor a
    ld [$c2dd], a
    ld hl, $d041
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $26d4
    ld b, a
    call $2e6f
    ld a, c
    and a
    ret z

    ld a, $01
    ld [$c2dd], a
    ret


    ld hl, $d047
    call $26d4
    ld [hl+], a
    call $26d4
    ld [hl+], a
    ld hl, $d049
    call $26d4
    ld [hl+], a
    call $26d4
    ld [hl+], a
    ret


    ld a, [$d04d]
    and a
    ret z

    jp Jump_025_7b74


    ld a, $01
    ld [$c2dd], a
    ld a, [$d04d]
    and a
    ret nz

    xor a
    ld [$c2dd], a
    ret


    ld a, [$d22f]
    ld e, a
    ld a, $3a
    ld hl, $500a
    rst $08
    ret


    call $3cdf
    ret


    ld de, $0000
    call $3b97
    xor a
    ld [$c2a7], a
    call $3c97
    call $26d4
    ld e, a
    call $26d4
    ld d, a
    call $3b97
    ret


    call $26d4
    ld [$c2a9], a
    call $26d4
    ld [$c2aa], a
    call $26d4
    and $7f
    ld [$c2a7], a
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    call $3c23
    ret


    call $3c55
    ret


    ld a, $05
    ld hl, $4a07
    rst $08
    call $3c23
    ret


    call $26d4
    push af
    call $26d4
    pop af
    and a
    jr nz, jr_025_71df

    ld a, [$c2dd]

jr_025_71df:
    call $37ce
    ret


Call_025_71e3:
    and a
    ret z

    cp $fe
    ret z

    dec a
    ret


    call $26d4
    call Call_025_71e3
    ldh [$e0], a
    ret


    call $26d4
    call Call_025_71e3
    ld c, a

Jump_025_71fa:
    push bc
    ld a, c
    ld a, $01
    ld hl, $585c
    rst $08
    pop bc
    push bc
    call Call_025_7221
    pop bc
    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, [$d439]
    ld b, a
    call $26c7
    ret c

    ld a, $02
    ld [$d437], a
    call Call_025_6e11
    ret


Call_025_7221:
    ld a, $01
    ld hl, $5897
    rst $08
    ret


    ldh a, [$e0]
    ld c, a
    jp Jump_025_71fa


    ldh a, [$e0]
    and a
    ret z

    ld d, $00
    ldh a, [$e0]
    ld e, a
    ld a, $02
    ld hl, $4417
    rst $08
    ld a, d
    add a
    add a
    ld e, a
    ldh a, [$e0]
    ld d, a
    call Call_025_728b
    ret


    call $26d4
    call Call_025_71e3
    cp $fe
    jr c, jr_025_7254

    ldh a, [$e0]

jr_025_7254:
    ld e, a
    call $26d4
    call Call_025_71e3
    cp $fe
    jr nz, jr_025_7261

    ldh a, [$e0]

jr_025_7261:
    ld d, a
    push de
    ld a, $02
    ld hl, $4417
    rst $08
    pop bc
    ret c

    ld a, d
    add a
    add a
    ld e, a
    ld d, c
    call Call_025_728b
    ret


    call $26d4
    call Call_025_71e3
    cp $fe
    jr nz, jr_025_7280

    ldh a, [$e0]

jr_025_7280:
    ld d, a
    call $26d4
    add a
    add a
    ld e, a
    call Call_025_728b
    ret


Call_025_728b:
    ld a, d
    push de
    call $18de
    jr c, jr_025_72b9

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    push bc
    call $1836
    pop bc
    jr c, jr_025_72b9

    ld hl, $0004
    add hl, bc
    bit 2, [hl]
    jr nz, jr_025_72b9

    pop de
    ld a, e
    call $1af8
    ld hl, $d0ed
    bit 6, [hl]
    jr nz, jr_025_72b5

    call Call_025_72bc

jr_025_72b5:
    call $1ad2
    ret


jr_025_72b9:
    pop de
    scf
    ret


Call_025_72bc:
    call $217a
    ld hl, $c4a0
    ld bc, $0168

jr_025_72c5:
    res 7, [hl]
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_025_72c5

    ret


    call $26d4
    ld e, a
    ld d, $00
    ld hl, $d82e
    add hl, de
    call $26d4
    ld [hl], a
    ret


    call $26d4
    call Call_025_71e3
    call $1956
    ldh a, [$af]
    ld b, $00
    call Call_025_730b
    ret


    call $26d4
    call Call_025_71e3
    cp $fe
    jr nz, jr_025_72fa

    ldh a, [$e0]

jr_025_72fa:
    call $199f
    ldh a, [$af]
    ld b, $01
    call Call_025_730b
    ld a, $01
    ld hl, $5920
    rst $08
    ret


Call_025_730b:
    push bc
    call $18d2
    ld hl, $000c
    add hl, bc
    pop bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $ff
    cp e
    jr nz, jr_025_7321

    cp d
    jr nz, jr_025_7321

    xor a
    ret


jr_025_7321:
    call $2e6f
    ret


    call $26d4
    call Call_025_71e3
    ld b, a
    call $26d4
    call Call_025_71e3
    ld c, a
    ld a, $01
    ld hl, $5803
    rst $08
    ret


    ld a, $01
    ld hl, $581f
    rst $08
    ret


    call $26d4
    call Call_025_71e3
    ld b, a
    call $26d4
    add $04
    ld d, a
    call $26d4
    add $04
    ld e, a
    ld a, $02
    ld hl, $407e
    rst $08
    ret


    call $26d4
    call Call_025_71e3
    cp $fe
    jr nz, jr_025_7367

    ldh a, [$e0]

jr_025_7367:
    ld b, a
    ld a, $02
    ld hl, $40a1
    rst $08
    ret


    call $26d4
    call Call_025_71e3

Call_025_7375:
    ld b, a
    call $26d4
    call Call_025_71e3
    ld c, a
    ld a, $02
    ld hl, $439e
    rst $08
    ret


    call $26d4
    cp $ff
    jr nz, jr_025_738e

    ld a, [$c2dd]

jr_025_738e:
    ld c, a
    ld a, $05
    ld hl, $442f
    rst $08
    ret


    call $26d4
    ld [$c2dd], a
    call $26d4
    call Call_025_71e3
    cp $fe
    jr z, jr_025_73a8

    ldh [$e0], a

jr_025_73a8:
    call $26d4
    ld [$d44d], a
    ld b, $25
    ld de, $73b6
    jp Jump_025_74cb


    ld [hl], h
    rst $38
    ld l, d
    pop bc
    ld [hl], e
    adc e
    nop
    ld l, d
    call nz, $9173
    ld d, h
    ld a, $47
    ld d, e
    ld a, $47
    ld hl, $73eb
    ld de, $d002
    ld bc, $0005
    call $3026
    call $26d4
    ld [$d003], a
    and $3f
    ld [$d005], a
    ld b, $25
    ld de, $73e6
    jp Jump_025_74cb


    ld l, c
    nop
    ld [bc], a
    ret nc

    sub c
    ld d, l
    db $10
    ld b, [hl]
    db $10
    ld b, a
    ld a, $19
    ld [$d22e], a
    ld a, $05
    ld [$d143], a
    ret


    xor a
    ld [$d459], a
    ret


    ld a, $81
    ld [$d459], a
    ld a, [$d043]
    ld [$d22f], a
    ld a, [$d044]
    ld [$d231], a
    ret


    ld a, $80
    ld [$d459], a
    call $26d4
    ld [$d22e], a
    call $26d4
    ld [$d143], a
    ret


    ld a, $81
    ld [$d459], a
    call $26d4
    ld [$d22f], a
    call $26d4
    ld [$d231], a
    ret


    call $2879
    ld a, $16
    call $2d83
    ld a, [$d0ee]
    and $3f
    ld [$c2dd], a
    ret


    call $26d4
    ld [$d230], a
    call $2879
    ld a, $13
    ld hl, $6554
    rst $08
    jp Jump_025_7491


    ld hl, $d459
    ld d, [hl]
    ld [hl], $00
    ld a, [$d0ee]
    and $3f
    cp $01
    jr nz, jr_025_7470

    ld b, $04
    ld hl, $64c1
    jp Jump_025_759d


jr_025_7470:
    bit 0, d
    jr z, jr_025_747c

    ld a, $3f
    ld hl, $4fec
    rst $08
    jr jr_025_748e

jr_025_747c:
    ld a, [$d0ee]
    bit 7, a
    jr z, jr_025_748e

    ld b, $24
    ld de, $4255
    ld a, $25
    ld hl, $7c4f
    rst $08

jr_025_748e:
    jp Jump_025_7491


Jump_025_7491:
    xor a
    ld [$d459], a
    ld a, $f3
    ldh [$9f], a
    ld a, $01
    call $261b
    call Call_025_6e11
    ret


    ld a, [$d439]
    ld b, a
    call $26d4
    ld e, a
    call $26d4
    ld d, a
    jr jr_025_74cb

    call $26d4
    ld b, a
    call $26d4
    ld e, a
    call $26d4
    ld d, a
    jr jr_025_74cb

    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]

Jump_025_74cb:
jr_025_74cb:
    push de
    ld hl, $d43c
    ld e, [hl]
    inc [hl]
    ld d, $00
    ld hl, $d43d
    add hl, de
    add hl, de
    add hl, de
    pop de
    ld a, [$d439]
    ld [hl+], a
    ld a, [$d43a]
    ld [hl+], a
    ld a, [$d43b]
    ld [hl], a
    ld a, b
    ld [$d439], a
    ld a, e
    ld [$d43a], a
    ld a, d
    ld [$d43b], a
    ret


    ld a, [$d439]
    or $80
    ld [$d439], a
    jp Jump_025_74cb


Jump_025_74fe:
jr_025_74fe:
    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, [$d439]
    ld b, a
    jp Jump_025_759d


    call $26d4
    ld b, a
    call $26d4
    ld l, a
    call $26d4
    ld h, a
    jp Jump_025_759d


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_025_759d


    ld a, [$c2dd]
    and a
    jp nz, Jump_025_7596

    jp Jump_025_74fe


    ld a, [$c2dd]
    and a
    jp nz, Jump_025_74fe

    jp Jump_025_7596


    call $26d4
    ld hl, $c2dd
    cp [hl]
    jr z, jr_025_74fe

    jr jr_025_7596

    call $26d4
    ld hl, $c2dd
    cp [hl]
    jr nz, jr_025_74fe

    jr jr_025_7596

    ld a, [$c2dd]
    ld b, a
    call $26d4
    cp b
    jr c, jr_025_74fe

    jr jr_025_7596

    call $26d4
    ld b, a
    ld a, [$c2dd]
    cp b
    jr c, jr_025_74fe

    jr jr_025_7596

    call Call_025_757b
    jr jr_025_759d

    call Call_025_757b
    ld d, h
    ld e, l
    jp Jump_025_74cb


Call_025_757b:
    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld hl, $4000
    add hl, de
    add hl, de
    add hl, de
    ld a, $2f
    call $304d
    ld b, a
    inc hl
    ld a, $2f
    call $305d
    ret


Jump_025_7596:
jr_025_7596:
    call $26d4
    call $26d4
    ret


Jump_025_759d:
jr_025_759d:
    ld a, b
    ld [$d439], a
    ld a, l
    ld [$d43a], a
    ld a, h
    ld [$d43b], a
    ret


    ld a, [$d439]
    ld [$d44e], a
    call $26d4
    ld [$d44f], a
    call $26d4
    ld [$d450], a
    ld hl, $d434
    set 3, [hl]
    ret


    call $211b
    jr z, jr_025_75cb

    ld [$c2dd], a
    ret


jr_025_75cb:
    ld a, $ff
    ld [$c2dd], a
    ret


    call $26d4
    ld b, a
    call $26d4
    ld c, a
    call $2147
    ld a, d
    or e
    jr z, jr_025_75e5

    ld a, [de]
    ld [$c2dd], a
    ret


jr_025_75e5:
    ld a, $ff
    ld [$c2dd], a
    ret


    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    jr jr_025_75fd

    call $26d4
    ld b, a
    call $26d4
    ld c, a

jr_025_75fd:
    call $2147
    ld a, d
    or e
    jr z, jr_025_7608

    call $26d4
    ld [de], a

jr_025_7608:
    ret


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, [hl]
    ld [$c2dd], a
    ret


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, [$c2dd]
    ld [hl], a
    ret


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    call $26d4
    ld [hl], a
    ret


    call $26d4
    ld [$c2dd], a
    ret


    call $26d4
    ld hl, $c2dd
    add [hl]
    ld [hl], a
    ret


    call $26d4
    ld [$c2dd], a
    and a
    ret z

    ld c, a
    call Call_025_7673
    and a
    jr z, jr_025_765f

    ld b, a
    xor a
    sub b
    ld b, a

jr_025_7653:
    push bc
    call $2f8c
    pop bc
    ldh a, [$e1]
    cp b
    jr nc, jr_025_7653

    jr jr_025_7666

jr_025_765f:
    push bc
    call $2f8c
    pop bc
    ldh a, [$e1]

jr_025_7666:
    push af
    ld a, [$c2dd]
    ld c, a
    pop af
    call $3110
    ld [$c2dd], a
    ret


Call_025_7673:
    xor a
    ld b, a
    sub c

jr_025_7676:
    inc b
    sub c
    jr nc, jr_025_7676

    dec b
    add c
    ret


    call $26d4
    call Call_025_769e
    ld a, [de]
    ld [$c2dd], a
    ret


    call $26d4
    call Call_025_769e
    ld a, [$c2dd]
    ld [de], a
    ret


    call $26d4
    call Call_025_769e
    call $26d4
    ld [de], a
    ret


Call_025_769e:
    ld c, a
    ld a, $20
    ld hl, $4648
    rst $08
    ret


    ld a, [$76ad]
    ld [$c2dd], a
    ret


    nop
    call $26d4
    and a
    jr nz, jr_025_76b7

    ld a, [$c2dd]

jr_025_76b7:
    ld [$d265], a
    call $343b
    ld de, $d073

Jump_025_76c0:
jr_025_76c0:
    call $26d4
    cp $03
    jr c, jr_025_76c8

    xor a

Call_025_76c8:
jr_025_76c8:
    ld hl, $d099
    ld bc, $0013
    call $30fe
    call $30d9
    ret


    call $26d4
    and a
    jr nz, jr_025_76de

    ld a, [$c2dd]

jr_025_76de:
    ld [$d265], a
    call $3468
    ld de, $d073
    jr jr_025_76c0

    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf

jr_025_76f4:
    ld e, a
    ld a, $72
    ld hl, $68a5
    rst $08
    ld de, $d073
    jp Jump_025_76c0


    call $26d4
    jr jr_025_76f4

    call $26d4
    ld c, a
    call $26d4
    ld b, a
    ld a, $0e
    ld hl, $594c
    rst $08
    jr jr_025_76c0

    call $26d4
    ld [$cf61], a

jr_025_771c:
    call $26d4
    ld [$cf60], a
    call $33c3
    ld de, $d073
    jp Jump_025_76c0


    ld a, $07
    ld [$cf61], a
    jr jr_025_771c

    call Call_025_7771
    call Call_025_7861
    ld hl, $d073
    ld bc, $4306
    call $3198
    ld de, $d073
    jp Jump_025_76c0


    call Call_025_7771
    ld hl, $d073
    ld de, $d855
    ld bc, $4206
    call $3198
    ld de, $d073
    jp Jump_025_76c0


    call Call_025_7771
    ld de, $c2dd
    ld hl, $d073
    ld bc, $4103
    call $3198
    ld de, $d073
    jp Jump_025_76c0


Call_025_7771:
    ld hl, $d073
    ld bc, $000b
    ld a, $50
    call $3041
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, [$d439]
    ld hl, $30d6
    rst $08
    ld de, $d086
    jp Jump_025_76c0


    call $26d4
    ld l, a
    call $26d4
    ld h, a
    ld a, [$d439]
    call $304d
    ld b, a
    push bc
    inc hl
    ld bc, $0020
    ld de, $d002
    ld a, [$d439]
    call $0e8d
    pop bc
    ld a, $11
    ld hl, $46cc
    rst $08
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, [$d439]
    ld b, a
    ld a, $11
    ld hl, $4654
    rst $08
    ret


Call_025_77ca:
    call $26d4
    cp $ff
    jr nz, jr_025_77d4

    ld a, [$c2dd]

jr_025_77d4:
    ld [$d106], a
    call $26d4
    ld [$d10c], a
    ld hl, $d892
    call $2f66
    jr nc, jr_025_77eb

    ld a, $01
    ld [$c2dd], a
    ret


jr_025_77eb:
    xor a
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld [$d106], a
    call $26d4
    ld [$d10c], a
    ld a, $ff
    ld [$d107], a
    ld hl, $d892
    call $2f53
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld [$d106], a
    ld hl, $d892
    call $2f79
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    call Call_025_7861
    call Call_025_786d
    ld a, $05
    ld hl, $5fd7
    rst $08
    ret


    call Call_025_7861
    call Call_025_786d
    ld a, $05
    ld hl, $5ffa
    rst $08
    ret


    call Call_025_7861
    call Call_025_786d
    ld a, $05
    ld hl, $600b
    rst $08

jr_025_784f:
    jr c, jr_025_785b

    jr z, jr_025_7857

    ld a, $00
    jr jr_025_785d

jr_025_7857:
    ld a, $01
    jr jr_025_785d

jr_025_785b:
    ld a, $02

jr_025_785d:
    ld [$c2dd], a
    ret


Call_025_7861:
    call $26d4
    and a
    ld de, $d84e
    ret z

    ld de, $d851
    ret


Call_025_786d:
    ld bc, $ffc3
    push bc
    call $26d4
    ld [bc], a
    inc bc
    call $26d4
    ld [bc], a
    inc bc
    call $26d4
    ld [bc], a
    pop bc
    ret


    call Call_025_78a0
    ld a, $05
    ld hl, $606f
    rst $08
    ret


    call Call_025_78a0
    ld a, $05
    ld hl, $608f
    rst $08
    ret


    call Call_025_78a0
    ld a, $05
    ld hl, $60a1
    rst $08
    jr jr_025_784f

Call_025_78a0:
    call $26d4
    ldh [$c4], a
    call $26d4
    ldh [$c3], a
    ld bc, $ffc3
    ret


    xor a
    ld [$c2dd], a
    ld a, $03
    ld hl, $4000
    rst $08
    call $26d4
    and c
    ret z

    ld a, $01
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld hl, $dcd8
    ld de, $0001
    call $30e1
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld c, a
    ld a, $24
    ld hl, $4000
    rst $08
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld c, a
    ld a, $24
    ld hl, $400f
    rst $08
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld c, a
    ld a, $24
    ld hl, $4019
    rst $08
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    call $26d4
    ld [$dc31], a
    call $26d4
    ld [$dc32], a
    ret


    ld a, [$dc31]
    and a
    jr z, jr_025_792e

    ld a, $01

jr_025_792e:
    ld [$c2dd], a
    ret


    call $26d4
    ld [$d108], a
    call $26d4
    ld [$d143], a
    call $26d4
    ld [$d106], a
    call $26d4
    and a
    ld b, a
    jr z, jr_025_795d

    ld hl, $d43a
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $26d4
    call $26d4
    call $26d4
    call $26d4

jr_025_795d:
    ld a, $03
    ld hl, $6277
    rst $08
    ld a, b
    ld [$c2dd], a
    ret


    xor a
    ld [$c2dd], a
    ld [$cf5f], a
    call $26d4
    ld [$d108], a
    call $26d4
    ld [$d143], a
    ld a, $03
    ld hl, $5f8c
    rst $08
    ret nc

    ld a, $02
    ld [$c2dd], a
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld b, $01
    call $2e6f
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld b, $00
    call $2e6f
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld b, $02
    call $2e6f
    ld a, c
    and a
    jr z, jr_025_79b7

    ld a, $01

jr_025_79b7:
    ld [$c2dd], a
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld b, $01
    call Call_025_79ee
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld b, $00
    call Call_025_79ee
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld b, $02
    call Call_025_79ee
    ld a, c
    and a
    jr z, jr_025_79ea

    ld a, $01

jr_025_79ea:
    ld [$c2dd], a
    ret


Call_025_79ee:
    ld a, $20
    ld hl, $4430
    rst $08
    ret


    ld hl, $d84c
    set 5, [hl]
    ret


    ld hl, $d84c
    res 5, [hl]
    ret


    call $26d4
    ld [$d453], a
    call $26d4
    ld [$d454], a
    ret


    call $26d4
    and $03
    ld c, a
    ld a, [$d45b]
    set 5, a
    or c
    ld [$d45b], a
    call $26d4
    and a
    jr z, jr_025_7a4a

    ld [$dcb5], a
    call $26d4
    ld [$dcb6], a
    call $26d4
    ld [$dcb8], a
    call $26d4
    ld [$dcb7], a
    ld a, $ff
    ld [$d001], a
    ld a, $f1
    ldh [$9f], a
    ld a, $01
    call $261b
    call Call_025_6e11
    ret


jr_025_7a4a:
    call $26d4
    call $26d4
    call $26d4
    ld a, $ff
    ld [$d001], a
    ld a, $fb
    ldh [$9f], a
    ld a, $01
    call $261b
    call Call_025_6e11
    ret


    call $26d4
    ld [$dcac], a
    call $26d4
    ld [$dcad], a
    call $26d4
    ld [$dcae], a
    ret


    call $26d4
    ld [$dcb2], a
    call $26d4
    ld [$dcb3], a
    ret


    ld a, $01
    ld [$c2c1], a
    ret


    call $26d4
    ld e, a
    call $26d4
    ld d, a
    ld a, [$d439]
    ld b, a
    ld a, $25
    ld hl, $7e31
    rst $08
    ret


    xor a
    ld [$c2dd], a
    call $26d4
    ld b, a
    ld a, $25
    ld hl, $7e5c
    rst $08
    ret c

    ld a, $01
    ld [$c2dd], a
    ret


    call $26d4
    ld [$d1a0], a
    call $26d4
    ld [$d1a1], a
    call $26d4
    ld [$d1a2], a
    call $24e4
    call $2879
    ret


    call $26d4
    add $04
    ld d, a
    call $26d4
    add $04
    ld e, a
    call $2a66
    call $26d4
    ld [hl], a
    call $2879
    ret


    xor a
    ldh [$d4], a
    call $2173
    call $2914
    ld a, $41
    ld hl, $4061
    rst $08
    call $1ad2
    ret


    call $224a
    ret nc

    ld a, $25
    ld hl, $66d0
    rst $08
    ret


    ld a, $25
    ld hl, $66d0
    rst $08
    ret


Call_025_7b08:
    call $26d4
    ldh [$9f], a
    ld a, $01
    call $261b
    call Call_025_6e11
    ret


    call Call_025_7b08
    jp Jump_025_7b74


    call $2e08
    ret


    call $2dba
    call $26d4
    ret


    call $26d4
    ld [$c2cf], a
    ret


    ld c, c
    call $2e20
    call $2dcf
    ret


    call $26d4
    push af
    call $26d4
    ld l, a
    call $26d4
    ld h, a
    pop af
    call $09ee
    ret


    call $26d4
    and a
    jr z, jr_025_7b50

    ld [$d44d], a

jr_025_7b50:
    ld c, $02
    call $0468
    ld hl, $d44d
    dec [hl]
    jr nz, jr_025_7b50

    ret


    call $26d4
    and a
    jr z, jr_025_7b65

    ld [$d44d], a

jr_025_7b65:
    ld a, $03
    ld [$d437], a
    call Call_025_6e11
    ret


    call Call_025_6e11
    jp Jump_025_74fe


Jump_025_7b74:
    call Call_025_7b9a
    jr c, jr_025_7b7a

    ret


jr_025_7b7a:
    xor a
    ld [$d438], a
    ld a, $00
    ld [$d437], a
    ld hl, $d434
    res 0, [hl]
    call Call_025_6e11
    ret


    call Call_025_7b9a
    jr c, jr_025_7b91

jr_025_7b91:
    ld hl, $d434
    res 0, [hl]
    call Call_025_6e11
    ret


Call_025_7b9a:
    ld hl, $d43c
    ld a, [hl]
    and a
    jr z, jr_025_7bbe

    dec [hl]
    ld e, [hl]
    ld d, $00
    ld hl, $d43d
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld b, a
    and $7f
    ld [$d439], a
    ld a, [hl+]
    ld e, a
    ld [$d43a], a
    ld a, [hl]
    ld d, a
    ld [$d43b], a
    and a
    ret


jr_025_7bbe:
    scf
    ret


Call_025_7bc0:
    xor a
    ld [$d43c], a
    ld [$d438], a
    ld a, $00
    ld [$d437], a
    ld hl, $d434
    res 0, [hl]
    call Call_025_6e11
    ret


    ld hl, $cfbc
    res 0, [hl]
    ld a, $41
    ld hl, $6078
    rst $08
    ld a, $41
    ld hl, $5ef6
    rst $08
    ld a, $21
    ld hl, $640e
    rst $08
    ld hl, $cfbc
    set 0, [hl]
    jr jr_025_7bf9

    ld a, $21
    ld hl, $6455
    rst $08

jr_025_7bf9:
    call Call_025_7bc0
    ld a, $03
    call $261b
    call Call_025_6e11
    ret


    push bc
    call $26d4

jr_025_7c09:
    push af
    ld c, $06
    call $0468
    pop af
    dec a
    jr nz, jr_025_7c09

    pop bc
    ret


    ld a, $13
    ld hl, $4ffe
    rst $08
    ld a, c
    ld [$c2dd], a
    ret


    ld a, [$7c27]
    ld [$c2dd], a
    ret


    nop
    ld hl, $d84d
    res 1, [hl]
    res 2, [hl]
    ret


Call_025_7c30:
    ld a, [$d45c]
    and a
    ret z

    ld hl, $d45e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d45d]
    call $261f
    scf
    push af
    xor a
    ld hl, $d45c
    ld bc, $0008
    call $3041
    pop af
    ret


    ld hl, $d45c
    ld a, [hl]
    and a
    ret nz

    ld [hl], $01
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    scf
    ret


Call_025_7c5f:
    call $2a07
    ld [$d03e], a
    ld c, a
    ld a, $04
    ld hl, $765b
    rst $08
    jr c, jr_025_7cb9

    call $1894
    jr nz, jr_025_7c7b

    ld a, $03
    ld hl, $5186
    rst $08
    jr jr_025_7cb9

jr_025_7c7b:
    ld a, [$d03e]
    call $18b4
    jr nz, jr_025_7c8b

    ld a, $03
    ld hl, $4e3e
    rst $08
    jr jr_025_7cb9

jr_025_7c8b:
    ld a, [$d03e]
    call $18bd
    jr nz, jr_025_7c9b

    ld a, $03
    ld hl, $4b56
    rst $08
    jr jr_025_7cb9

jr_025_7c9b:
    ld a, [$d03e]
    call $189a
    jr nz, jr_025_7cad

    ld a, $03
    ld hl, $4ec9
    rst $08
    jr c, jr_025_7cb9

    jr jr_025_7cb7

jr_025_7cad:
    ld a, $03
    ld hl, $49e7
    rst $08
    jr nc, jr_025_7cb7

    jr jr_025_7cb9

jr_025_7cb7:
    xor a
    ret


jr_025_7cb9:
    call $2009
    ld a, $ff
    scf
    ret


Call_025_7cc0:
    call Call_025_68c7
    jr c, jr_025_7ce2

    call Call_025_7cfd
    jr nc, jr_025_7ce2

    ld hl, $d84d
    bit 2, [hl]
    jr nz, jr_025_7cdb

    ld a, $0a
    ld hl, $60e7
    rst $08
    jr nz, jr_025_7ce2

    jr jr_025_7ce6

jr_025_7cdb:
    call Call_025_7d23
    jr nc, jr_025_7ce2

    jr jr_025_7ced

jr_025_7ce2:
    ld a, $01
    and a
    ret


jr_025_7ce6:
    ld a, $25
    ld hl, $7cf9
    jr jr_025_7cf4

jr_025_7ced:
    ld a, $04
    ld hl, $75eb
    jr jr_025_7cf4

jr_025_7cf4:
    call $261f
    scf
    ret


    ld e, e
    ld e, a
    ld h, b
    sub c

Call_025_7cfd:
    ld hl, $d84c
    bit 5, [hl]
    jr nz, jr_025_7d21

    ld a, [$d19a]
    cp $04
    jr z, jr_025_7d17

    cp $07
    jr z, jr_025_7d17

    ld a, $05
    ld hl, $49dd
    rst $08
    jr nc, jr_025_7d21

jr_025_7d17:
    ld a, [$d4e4]
    call $18ac
    jr z, jr_025_7d21

    scf
    ret


jr_025_7d21:
    and a
    ret


Call_025_7d23:
    call Call_025_7d64
    ret nc

    call Call_025_7d31
    ld a, $0a
    ld hl, $61df
    rst $08
    ret


Call_025_7d31:
jr_025_7d31:
    call $2f8c
    cp $c8
    jr nc, jr_025_7d31

    srl a
    ld hl, $7d87
    ld de, $0004

jr_025_7d40:
    sub [hl]
    jr c, jr_025_7d46

    add hl, de
    jr jr_025_7d40

jr_025_7d46:
    inc hl
    ld a, [hl+]
    ld [$d22e], a
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    sub d
    jr nz, jr_025_7d54

    ld a, d
    jr jr_025_7d5f

jr_025_7d54:
    ld c, a
    inc c
    call $2f8c
    ldh a, [$e1]
    call $3110
    add d

jr_025_7d5f:
    ld [$d143], a
    xor a
    ret


Call_025_7d64:
    ld a, [$d4e4]
    call $188e
    ld b, $66
    jr z, jr_025_7d70

    ld b, $33

jr_025_7d70:
    ld a, $0a
    ld hl, $6124
    rst $08
    ld a, $0a
    ld hl, $6138
    rst $08
    call $2f8c
    ldh a, [$e1]
    cp b
    ret c

    ld a, $01
    and a
    ret


    add hl, bc
    call z, $1f1e
    ld a, [bc]
    pop bc
    ld e, $1f
    add hl, bc
    and [hl]
    ld e, $1f
    add hl, bc
    rrca
    ld e, $1f
    add hl, bc
    cpl
    ld e, $1f
    add hl, bc
    inc c
    ld e, $1f
    add hl, bc
    xor b
    ld e, $1f
    add hl, bc
    ld a, a
    ld e, $1f
    add hl, bc
    ld a, e
    ld e, $1f
    add hl, bc
    ld sp, $1f1e
    add hl, bc
    sub $1e
    rra
    nop
    nop
    ld hl, $d84d
    bit 4, [hl]
    jr z, jr_025_7df7

    ld a, [$d95d]
    cp $01
    jr nz, jr_025_7df7

    call $2d05
    and a
    jr nz, jr_025_7df7

    ld hl, $dca2
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    cp $ff
    jr nz, jr_025_7dd8

    ld a, e
    cp $ff
    jr z, jr_025_7ddc

jr_025_7dd8:
    inc de
    ld [hl], e
    dec hl
    ld [hl], d

jr_025_7ddc:
    ld a, d
    cp $04
    jr c, jr_025_7df7

    ld a, [$dc31]
    and a
    jr nz, jr_025_7df7

    ld a, $06
    ld [$dc31], a
    xor a
    ld [$dc32], a
    ld hl, $d84d
    res 4, [hl]
    scf
    ret


jr_025_7df7:
    xor a
    ret


    ld hl, $d6de
    ld de, $0006
    ld c, $04
    xor a

jr_025_7e02:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_025_7e02

    ret


    ld hl, $d6de
    xor a

jr_025_7e0c:
    ldh [$af], a
    ld a, [hl]
    and a
    jr z, jr_025_7e19

    push hl
    ld b, h
    ld c, l
    call Call_025_7e79
    pop hl

jr_025_7e19:
    ld de, $0006
    add hl, de
    ldh a, [$af]
    inc a
    cp $04
    jr nz, jr_025_7e0c

    ret


    ld hl, $d6de
    ld bc, $0006
    call $30fe
    ld b, h
    ld c, l
    ret


    push bc
    push de
    call Call_025_7e45
    ld d, h
    ld e, l
    pop hl
    pop bc
    ret c

    ld a, b
    ld bc, $0005
    call $0e8d
    xor a
    ld [hl], a
    ret


Call_025_7e45:
    ld hl, $d6de
    ld de, $0006
    ld c, $04

jr_025_7e4d:
    ld a, [hl]
    and a
    jr z, jr_025_7e57

    add hl, de
    dec c
    jr nz, jr_025_7e4d

    scf
    ret


jr_025_7e57:
    ld a, $04
    sub c
    and a
    ret


    ld hl, $d6de
    ld de, $0006
    ld c, $04

jr_025_7e64:
    ld a, [hl]
    cp b
    jr z, jr_025_7e6e

    add hl, de
    dec c
    jr nz, jr_025_7e64

    and a
    ret


jr_025_7e6e:
    xor a
    ld [hl], a
    scf
    ret


Call_025_7e72:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


Call_025_7e79:
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $05
    jr c, jr_025_7e83

    xor a

jr_025_7e83:
    ld e, a
    ld d, $00
    ld hl, $7e94
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    rst $08
    ret


    dec h
    or a
    ld a, [hl]
    dec h
    cp b
    ld a, [hl]
    dec h
    ld b, d
    ld a, a
    dec h
    ld sp, hl
    ld a, [hl]
    dec h
    cp h
    ld a, [hl]

Call_025_7ea3:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    pop hl
    rst $28
    ret


Call_025_7eab:
    ld hl, $0005
    add hl, bc
    inc [hl]
    ret


Call_025_7eb1:
    ld hl, $0005
    add hl, bc
    dec [hl]
    ret


    ret


    call $2f3e
    ret


    call Call_025_7ea3
    jp $cd7e


    ld a, [hl]
    ldh a, [$d0]
    ld hl, $0004
    add hl, bc
    ld [hl], a
    call Call_025_7eab
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jr z, jr_025_7eee

    and $01
    jr z, jr_025_7ee4

    ld hl, $0002
    add hl, bc
    ldh a, [$d0]
    sub [hl]
    ldh [$d0], a
    ret


jr_025_7ee4:
    ld hl, $0002
    add hl, bc
    ldh a, [$d0]
    add [hl]
    ldh [$d0], a
    ret


jr_025_7eee:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ldh [$d0], a
    call Call_025_7e72
    ret


    call Call_025_7ea3
    ld [bc], a
    ld a, a
    ld a, [bc]
    ld a, a
    dec de
    ld a, a
    call Call_025_7f38
    jr z, jr_025_7f2c

    call Call_025_7eab
    call Call_025_7f38
    jr z, jr_025_7f2c

    call Call_025_7eab
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld [$d173], a
    ret


    call Call_025_7f38
    jr z, jr_025_7f2c

    call Call_025_7eb1
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld [$d173], a
    ret


jr_025_7f2c:
    ld a, $7f
    ld [$d173], a
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    ret


Call_025_7f38:
    push bc
    ld bc, $d4d6
    call $1b07
    and a
    pop bc
    ret


    ld de, $d4d6
    ld a, $0d

jr_025_7f47:
    push af
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_025_7f71

    ld hl, $0003
    add hl, de
    ld a, [hl]
    cp $19
    jr nz, jr_025_7f71

    ld hl, $000e
    add hl, de
    ld a, [hl]
    call $18a6
    jr nz, jr_025_7f71

    ld hl, $0007
    add hl, de
    ld a, [hl]
    cp $ff
    jr nz, jr_025_7f71

    call $3567
    jr c, jr_025_7f7c

jr_025_7f71:
    ld hl, $0028
    add hl, de
    ld d, h
    ld e, l
    pop af
    dec a
    jr nz, jr_025_7f47

    ret


jr_025_7f7c:
    pop af
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
