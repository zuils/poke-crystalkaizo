; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld a, $0a
    ld [$0000], a
    call $059c
    ld a, $0c
    ld [$4000], a
    ld a, [$a000]
    set 6, a
    ld [$a000], a
    call $2fe1
    ret


Call_005_4019:
    ld a, $0a
    ld [$0000], a
    call $059c
    ld a, $0c
    ld [$4000], a
    ld a, [$a000]
    res 6, a
    ld [$a000], a
    call $2fe1
    ret


    ldh a, [$94]
    ld hl, $4044

jr_005_4037:
    cp [hl]
    jr c, jr_005_403e

    inc hl
    inc hl
    jr jr_005_4037

jr_005_403e:
    inc hl
    ld a, [hl]
    ld [$d269], a
    ret


    inc b
    ld [bc], a
    ld a, [bc]
    nop
    ld [de], a
    ld bc, $0218
    rst $38
    nop
    inc d
    ld [bc], a
    jr z, jr_005_4052

jr_005_4052:
    inc a
    ld bc, $00ff
    call $05a7
    ld hl, $d4ba
    ld a, [$d4cb]
    ld [hl+], a
    ldh a, [$94]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$98]
    ld [hl+], a
    ret


    ld a, $0a
    ld [$0000], a
    call $059c
    ld hl, $a000
    ld a, $0c
    ld [$4000], a
    res 7, [hl]
    ld a, $00
    ld [$4000], a
    xor a
    ld [$ac60], a
    call $2fe1
    ret


    call $05b7
    call Call_005_409b
    call $05e8
    jr nc, jr_005_4097

    call $06d3

jr_005_4097:
    call Call_005_4019
    ret


Call_005_409b:
    ld hl, $ff8d
    bit 7, [hl]
    jr nz, jr_005_40a8

    bit 6, [hl]
    jr nz, jr_005_40a8

    xor a
    ret


jr_005_40a8:
    ld a, $80
    call $06d3
    ret


    call $06e3
    ld c, a
    and $c0
    jr nz, jr_005_40c8

    ld a, c
    and $20
    jr z, jr_005_40eb

    call $05a7
    ld a, [$d4ba]
    ld b, a
    ld a, [$d4cb]
    cp b
    jr c, jr_005_40eb

jr_005_40c8:
    ld a, $04
    ld hl, $53da
    rst $08
    ld a, $5c
    ld hl, $4923
    rst $08
    ld a, $05
    call $2fcb
    ld a, [$aa8c]
    inc a
    ld [$aa8c], a
    ld a, [$b2fa]
    inc a
    ld [$b2fa], a
    call $2fe1
    ret


jr_005_40eb:
    xor a
    ret


    call $05b7
    call $05e8
    ld hl, $ff91
    ld de, $d4b9
    ld a, [$d089]
    sub [hl]
    dec hl
    jr nc, jr_005_4102

    add $3c

jr_005_4102:
    ld [de], a
    dec de
    ld a, [$d088]
    sbc [hl]
    dec hl
    jr nc, jr_005_410d

    add $3c

jr_005_410d:
    ld [de], a
    dec de
    ld a, [$d087]
    sbc [hl]
    dec hl
    jr nc, jr_005_4118

    add $18

jr_005_4118:
    ld [de], a
    dec de
    ld a, [$d086]
    sbc [hl]
    dec hl
    jr nc, jr_005_4128

    add $8c
    ld c, $07
    call $3110

jr_005_4128:
    ld [de], a
    ret


Call_005_412a:
    ld a, $01
    ldh [rVBK], a
    call $0f82
    xor a
    ldh [rVBK], a
    ret


    call Call_005_4183
    ld a, [$d154]
    ldh [$bd], a
    ld a, [$d155]
    ldh [$be], a
    call Call_005_43c8
    ret


    ld hl, $d13e
    ld a, [hl]
    push af
    res 7, [hl]
    set 6, [hl]
    call Call_005_4209
    pop af
    ld [$d13e], a
    ret


    ld hl, $d13e
    ld a, [hl]
    push af
    set 7, [hl]
    res 6, [hl]
    call Call_005_4209
    pop af
    ld [$d13e], a
    ret


    call Call_005_416f
    call Call_005_4209
    ret


Call_005_416f:
    xor a
    ld bc, $0040
    ld hl, $d154
    call $3041
    call Call_005_4183
    call Call_005_41c9
    call Call_005_42db
    ret


Call_005_4183:
    ld hl, $41b7
    ld a, [$d45b]
    bit 2, a
    jr nz, jr_005_4197

    ld a, [$d472]
    bit 0, a
    jr z, jr_005_4197

    ld hl, $41c0

jr_005_4197:
    ld a, [$d95d]
    ld c, a

jr_005_419b:
    ld a, [hl+]
    cp c
    jr z, jr_005_41ac

    inc hl
    cp $ff
    jr nz, jr_005_419b

    xor a
    ld [$d95d], a
    ld a, $01
    jr jr_005_41ad

jr_005_41ac:
    ld a, [hl]

jr_005_41ad:
    ld [$d154], a
    ld [$d4d6], a
    ld [$d71f], a
    ret


    nop
    ld bc, $0201
    inc b
    ld d, e
    ld [$ff34], sp
    nop
    ld h, b
    ld bc, $0461
    ld d, e
    ld [$ff34], sp

Call_005_41c9:
    call $2c8a
    call $22ee
    jr z, jr_005_41d5

    call Call_005_41d9
    ret


jr_005_41d5:
    call Call_005_41ee
    ret


Call_005_41d9:
    ld hl, $d72f
    ld a, $01

jr_005_41de:
    push af
    ld a, [hl]
    call Call_005_42e5
    ld de, $0010
    add hl, de
    pop af
    inc a
    cp $10
    jr nz, jr_005_41de

    ret


Call_005_41ee:
    ld a, [$dcb5]
    dec a
    ld c, a
    ld b, $00
    ld hl, $44b8
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $17

jr_005_41ff:
    push bc
    ld a, [hl+]
    call Call_005_42e5
    pop bc
    dec c
    jr nz, jr_005_41ff

    ret


Call_005_4209:
    ld a, $04
    call $263b
    call Call_005_439b
    call Call_005_4215
    ret


Call_005_4215:
    ld a, [$d13e]
    bit 6, a
    ret nz

    ld c, $08
    ld a, $05
    ld hl, $442f
    rst $08
    call $2c8a
    call $22ee
    ld c, $0b
    jr z, jr_005_422f

    ld c, $0a

jr_005_422f:
    ld a, $05
    ld hl, $442f
    rst $08
    ret


Call_005_4236:
    push hl
    call Call_005_423c
    pop hl
    ret


Call_005_423c:
    call Call_005_4259
    ret c

    ld hl, $4736
    dec a
    ld c, a
    ld b, $00
    ld a, $06
    call $30fe
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    swap a
    ld c, a
    ld b, [hl]
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ret


Call_005_4259:
Jump_005_4259:
    cp $80
    jr c, jr_005_426b

    cp $e0
    jr z, jr_005_4279

    cp $e1
    jr z, jr_005_427e

    cp $f0
    jr nc, jr_005_4291

    jr jr_005_426d

jr_005_426b:
    and a
    ret


jr_005_426d:
    sub $80
    ld e, a
    ld d, $00
    ld hl, $4495
    add hl, de
    ld a, [hl]
    jr jr_005_4281

jr_005_4279:
    ld a, [$df0c]
    jr jr_005_4281

jr_005_427e:
    ld a, [$df45]

jr_005_4281:
    ld e, a
    and a
    jr z, jr_005_429f

    ld a, $23
    ld hl, $682b
    rst $08
    ld l, $01
    ld h, $00
    scf
    ret


jr_005_4291:
    sub $f0
    ld e, a
    ld d, $00
    ld hl, $d82e
    add hl, de
    ld a, [hl]
    and a
    jp nz, Jump_005_4259

jr_005_429f:
    ld a, $01
    ld l, $01
    ld h, $00
    and a
    ret


Call_005_42a7:
    cp $80
    jr nc, jr_005_42c2

    push hl
    push bc
    ld hl, $473a
    dec a
    ld c, a
    ld b, $00
    ld a, $06
    call $30fe
    ld a, [hl]
    pop bc
    pop hl
    cp $03
    jr nz, jr_005_42c2

    scf
    ret


jr_005_42c2:
    and a
    ret


    ld a, c
    call Call_005_4259
    jr c, jr_005_42d8

    ld hl, $473b
    dec a
    ld c, a
    ld b, $00
    ld a, $06
    call $30fe
    ld c, [hl]
    ret


jr_005_42d8:
    xor a
    ld c, a
    ret


Call_005_42db:
    call Call_005_4306
    call Call_005_431e
    call Call_005_4355
    ret


Call_005_42e5:
    push hl
    push bc
    ld b, a
    ld hl, $d156
    ld c, $1f

jr_005_42ed:
    ld a, [hl]
    cp b
    jr z, jr_005_42fd

    and a
    jr z, jr_005_4301

    inc hl
    inc hl
    dec c
    jr nz, jr_005_42ed

    pop bc
    pop hl
    scf
    ret


jr_005_42fd:
    pop bc
    pop hl
    and a
    ret


jr_005_4301:
    ld [hl], b
    pop bc
    pop hl
    and a
    ret


Call_005_4306:
    ld hl, $d154
    ld b, $20

jr_005_430b:
    ld a, [hl+]
    and a
    jr z, jr_005_4318

    push hl
    call Call_005_4319
    pop hl
    ld [hl+], a
    dec b
    jr nz, jr_005_430b

jr_005_4318:
    ret


Call_005_4319:
    call Call_005_423c
    ld a, l
    ret


Call_005_431e:
    ld c, $20
    ld de, $d192

jr_005_4323:
    ld a, [de]
    and a
    jr nz, jr_005_432c

    dec de
    dec de
    dec c
    jr nz, jr_005_4323

jr_005_432c:
    dec c
    jr z, jr_005_4354

    inc de
    ld hl, $d155

jr_005_4333:
    push bc
    push de
    push hl

jr_005_4336:
    ld a, [de]
    cp [hl]
    jr nc, jr_005_4347

    ld b, a
    ld a, [hl]
    ld [hl], b
    ld [de], a
    dec de
    dec hl
    ld a, [de]
    ld b, a
    ld a, [hl]
    ld [hl], b
    ld [de], a
    inc de
    inc hl

jr_005_4347:
    dec de
    dec de
    dec c
    jr nz, jr_005_4336

    pop hl
    inc hl
    inc hl
    pop de
    pop bc
    dec c
    jr nz, jr_005_4333

jr_005_4354:
    ret


Call_005_4355:
    ld hl, $d154
    ld c, $20
    ld b, $00

jr_005_435c:
    ld a, [hl+]
    and a
    jr z, jr_005_4385

    ld a, [hl]
    call Call_005_4386
    add b
    cp $80
    jr z, jr_005_436b

    jr nc, jr_005_4371

jr_005_436b:
    ld [hl], b
    inc hl
    ld b, a
    dec c
    jr nz, jr_005_435c

jr_005_4371:
    ld b, $80
    dec hl

jr_005_4374:
    ld a, [hl+]
    and a
    jr z, jr_005_4385

    ld a, [hl]
    call Call_005_4386
    add b
    jr c, jr_005_4385

    ld [hl], b
    ld b, a
    inc hl
    dec c
    jr nz, jr_005_4374

jr_005_4385:
    ret


Call_005_4386:
    cp $01
    jr z, jr_005_4395

    cp $02
    jr z, jr_005_4395

    cp $03
    jr z, jr_005_4398

    ld a, $0c
    ret


jr_005_4395:
    ld a, $0c
    ret


jr_005_4398:
    ld a, $04
    ret


Call_005_439b:
    ld hl, $d154
    ld c, $20

jr_005_43a0:
    ld a, [$d13e]
    res 5, a
    ld [$d13e], a
    ld a, [hl+]
    and a
    jr z, jr_005_43c7

    ldh [$bd], a
    ld a, [hl+]
    ldh [$be], a
    bit 7, a
    jr z, jr_005_43bd

    ld a, [$d13e]
    set 5, a
    ld [$d13e], a

jr_005_43bd:
    push bc
    push hl
    call Call_005_43c8
    pop hl
    pop bc
    dec c
    jr nz, jr_005_43a0

jr_005_43c7:
    ret


Call_005_43c8:
    ldh a, [$bd]
    call Call_005_4236
    ldh a, [$be]
    call Call_005_4406
    push hl
    push de
    push bc
    ld a, [$d13e]
    bit 7, a
    jr nz, jr_005_43df

    call Call_005_4418

jr_005_43df:
    pop bc
    ld l, c
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    pop de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [$d13e]
    bit 5, a
    jr nz, jr_005_4405

    bit 6, a
    jr nz, jr_005_4405

    ldh a, [$bd]
    call Call_005_42a7
    jr c, jr_005_4405

    ld a, h
    add $08
    ld h, a
    call Call_005_4418

jr_005_4405:
    ret


Call_005_4406:
    and $7f
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $80
    ld h, a
    ret


Call_005_4418:
    ldh a, [rVBK]
    push af
    ld a, [$d13e]
    bit 5, a
    ld a, $01
    jr z, jr_005_4426

    ld a, $00

jr_005_4426:
    ldh [rVBK], a
    call $0f82
    pop af
    ldh [rVBK], a
    ret


    ld a, c
    ld bc, $0006
    ld hl, $444d
    call $30fe
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    swap c
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    and a
    ret z

    call Call_005_412a
    ret


    ld d, b
    ld b, e
    ld b, b
    ld b, c
    add b
    adc a
    sub b
    ld b, e
    ld b, b
    ld b, c
    add b
    adc a
    ret nc

    ld b, e
    ld b, b
    ld b, c
    add b
    adc a
    db $10
    ld b, h
    ld b, b
    ld b, c
    add b
    adc a
    ld d, b
    ld b, h
    ld b, b
    ld b, c
    add b
    adc a
    sub b
    ld b, h
    ld b, b
    ld b, c
    add b
    adc a
    ret nc

    ld b, h
    ld b, b
    ld b, c
    add b
    adc a
    db $10
    ld b, l
    ld b, b
    ld b, c
    add b
    adc a
    ld d, b
    ld b, l
    db $10
    ld b, c
    ret nz

    adc a
    ld h, b
    ld b, l
    jr nz, jr_005_44c8

    ret nz

    adc a
    add b
    ld b, l
    jr nz, jr_005_44ce

    ldh [$8f], a
    and b
    ld b, l
    db $10
    ld b, c
    ldh [$8f], a
    ret


    ld c, d
    ld a, [hl-]
    dec c
    ld e, d
    dec hl
    ld e, [hl]
    add hl, hl
    add c
    rlca
    xor a
    inc c
    ld [hl-], a
    inc a
    add hl, de
    inc hl
    inc b
    ld a, h
    ld a, c
    ld bc, $5827
    rla
    ld l, $48
    add b
    ld b, d
    ld h, h
    add e
    ld [hl], b
    sub d
    adc a
    add d
    ld sp, hl
    ld a, [$46a1]
    rst $08
    ld b, [hl]
    db $fd
    ld b, [hl]
    ld b, l
    ld b, [hl]
    and $46
    ld sp, $4845
    ld b, l
    ld e, h
    ld b, [hl]

jr_005_44c8:
    cp b
    ld b, [hl]
    ld l, $46
    ld [hl], e
    ld b, [hl]

jr_005_44ce:
    and h
    ld b, l
    db $ec
    ld b, h
    ld a, [de]
    ld b, l
    inc d
    ld b, a
    jp nc, $bb45

    ld b, l
    adc l
    ld b, l
    rla
    ld b, [hl]
    dec hl
    ld b, a
    db $76
    ld b, l
    adc d
    ld b, [hl]
    inc bc
    ld b, l
    jp hl


    ld b, l
    ld e, a
    ld b, l
    nop
    ld b, [hl]
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    add hl, hl
    ld a, [hl-]
    daa
    rlca
    cpl
    dec h
    inc h
    ld [hl-], a
    ld sp, $5d54
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    add hl, hl
    ld a, [hl-]
    daa
    rlca
    cpl
    dec h
    inc h
    ld [hl-], a
    ld sp, $5d54
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    add hl, hl
    ld a, [hl-]
    daa
    rlca
    cpl
    dec h
    inc h
    ld [hl-], a
    ld sp, $5d54
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    add hl, hl
    ld a, [hl-]
    daa
    rlca
    cpl
    dec h
    inc h
    ld [hl-], a
    ld sp, $5d54
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    inc hl
    dec hl
    inc h
    ld a, [hl-]
    daa
    jr z, @+$2f

    dec [hl]
    dec e
    ld d, h
    ld b, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    inc hl
    dec hl
    inc h
    ld a, [hl-]
    daa
    jr z, jr_005_459f

    dec [hl]
    dec e
    ld d, h
    ld b, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    ld a, [hl-]
    adc l
    add hl, hl
    cpl
    daa
    jr z, jr_005_45d3

    inc b
    rlca
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    dec l
    sbc d
    cpl
    daa
    ld a, [hl-]
    add hl, hl

jr_005_459f:
    dec hl
    inc sp
    ld c, d
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    dec l
    sbc d
    cpl
    daa
    ld a, [hl-]
    add hl, hl
    dec hl
    inc sp
    ld c, d
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    dec l
    sbc d
    cpl
    daa
    ld a, [hl-]
    add hl, hl
    dec hl
    inc sp
    ld c, d
    ld d, h
    ld e, l
    ld h, e

jr_005_45d3:
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    dec l
    ld a, [hl+]
    cpl
    daa
    ld a, [hl-]
    add hl, hl
    dec hl
    sbc d
    ld c, d
    ld d, h
    ld e, d
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    inc b
    add hl, hl
    ld a, [hl-]
    inc hl
    daa
    ld c, h
    cpl
    dec h
    inc h
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    inc b
    add hl, hl
    ld a, [hl-]
    inc hl
    daa
    ld c, h
    cpl
    dec h
    inc h
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    inc b
    add hl, hl
    ld a, [hl-]
    inc hl
    daa
    ld c, h
    cpl
    dec h
    inc h
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    ld a, [hl-]
    jr z, jr_005_4680

    cpl
    daa
    inc hl
    dec h
    dec hl
    db $f4
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    ld a, [hl-]
    jr z, jr_005_4697

    cpl
    daa
    inc hl
    dec h
    dec hl
    db $f4
    ld d, h
    ld e, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld h, d
    ld d, b
    ld d, d
    inc sp
    cpl

jr_005_4669:
    daa
    ld b, e
    dec l
    ld b, c
    add hl, hl
    or $28
    inc b
    ld e, l
    ld b, l
    ld h, e
    ld e, a
    ld d, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    cpl

jr_005_4680:
    daa
    ld b, e
    dec l
    ldh [rNR50], a
    dec [hl]
    jr z, jr_005_4669

    ld e, l
    ld b, l
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld h, [hl]
    ld d, b
    ld d, d
    inc sp
    push af

jr_005_4697:
    dec l
    jr z, jr_005_46c4

    ld [hl-], a
    ld c, c
    ld l, $2b
    sbc c
    ld e, l
    ld e, c
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld h, [hl]
    ld d, b
    ld d, d
    inc sp
    push af
    dec l
    jr z, jr_005_46db

    ld [hl-], a
    ld c, c
    ld l, $2b
    sbc c
    ld e, l
    ld e, c
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp

jr_005_46c4:
    ld e, $2f
    dec hl
    inc h
    ld a, [hl-]
    inc hl
    jr z, jr_005_46f3

    and b
    ld e, l
    ld d, h
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp

jr_005_46db:
    cpl
    daa
    jr z, @+$2d

    inc hl
    dec l
    ld b, c
    inc h
    ld a, [hl-]
    ld e, l
    ld d, h
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    cpl

jr_005_46f3:
    daa
    jr z, jr_005_4721

    inc hl
    dec l
    ld b, c
    inc h
    ld a, [hl-]
    ld e, l
    ld d, h
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    inc bc
    ld d, b
    ld d, d
    inc sp
    jr z, jr_005_4739

    add hl, hl
    daa
    add d
    dec l
    inc l
    ld a, [hl-]
    inc a
    ld d, h
    ld e, d
    ld h, e
    ld e, a
    ld e, h
    ld d, l
    ld de, $371b
    ld e, b
    ld b, a
    ld d, b
    ld d, d
    inc sp
    ld c, c

jr_005_4721:
    dec sp
    ld b, b
    dec hl
    and d
    add hl, hl
    inc h
    daa
    ld c, l
    ld d, h
    ld e, c
    dec b
    ld a, [hl-]
    add hl, hl
    ld h, $2d
    cpl
    ld c, l
    inc b
    dec sp
    ld d, h
    ld d, l
    nop
    ld b, b
    ret nz

jr_005_4739:
    jr nc, jr_005_473c

    nop

jr_005_473c:
    add b
    ld b, c
    ret nz

    jr nc, jr_005_4742

    nop

jr_005_4742:
    nop
    ld b, e
    ret nz

    jr nc, jr_005_4749

    ld [bc], a
    ret nz

jr_005_4749:
    ld b, e
    ret nz

    jr nc, jr_005_474e

    nop

jr_005_474e:
    ld b, b
    ld b, l
    ret nz

    jr nc, jr_005_4754

    inc bc

jr_005_4754:
    ret nz

    ld b, [hl]
    ret nz

    jr nc, jr_005_475a

    nop

jr_005_475a:
    ld b, b
    ld c, b
    ret nz

    jr nc, jr_005_4760

    nop

jr_005_4760:
    ret nz

    ld c, c
    ret nz

    jr nc, jr_005_4766

    nop

jr_005_4766:
    ld b, b
    ld c, e
    ret nz

    jr nc, jr_005_476c

    inc bc

jr_005_476c:
    ret nz

    ld c, h
    ret nz

    jr nc, jr_005_4772

    nop

jr_005_4772:
    ld b, b
    ld c, [hl]
    ret nz

    jr nc, jr_005_4778

    inc bc

jr_005_4778:
    ret nz

    ld c, a
    ret nz

    jr nc, jr_005_477e

    nop

jr_005_477e:
    ld b, b
    ld d, c
    ret nz

    jr nc, jr_005_4784

    inc bc

jr_005_4784:
    ret nz

    ld d, d
    ret nz

    jr nc, jr_005_478a

    nop

jr_005_478a:
    ld b, b
    ld d, h
    ret nz

    jr nc, @+$03

    ld bc, $55c0
    ret nz

    jr nc, jr_005_4796

    inc bc

jr_005_4796:
    ld b, b
    ld d, a
    ret nz

    jr nc, jr_005_479d

    nop
    nop

jr_005_479d:
    ld e, b
    ret nz

    jr nc, @+$03

    ld bc, $5980
    ret nz

    jr nc, jr_005_47a8

    nop

jr_005_47a8:
    nop
    ld e, e
    ret nz

    jr nc, jr_005_47ae

    ld [bc], a

jr_005_47ae:
    add b
    ld e, h
    ret nz

    jr nc, jr_005_47b4

    inc bc

jr_005_47b4:
    nop
    ld e, [hl]
    ret nz

    jr nc, jr_005_47ba

    nop

jr_005_47ba:
    add b
    ld e, a
    ret nz

    jr nc, jr_005_47c0

    ld [bc], a

jr_005_47c0:
    nop
    ld h, c
    ret nz

    jr nc, jr_005_47c6

    inc bc

jr_005_47c6:
    add b
    ld h, d
    ret nz

    jr nc, jr_005_47cc

    nop

jr_005_47cc:
    nop
    ld h, h
    ret nz

    jr nc, jr_005_47d2

    inc bc

jr_005_47d2:
    add b
    ld h, l
    ret nz

    jr nc, @+$04

    ld bc, $6640
    ret nz

    jr nc, jr_005_47de

    nop

jr_005_47de:
    ret nz

    ld h, a
    ret nz

    jr nc, @+$03

    ld bc, $6940
    ret nz

    jr nc, jr_005_47ea

    nop

jr_005_47ea:
    ret nz

    ld l, d
    ret nz

    jr nc, jr_005_47f0

    ld [bc], a

jr_005_47f0:
    ld b, b
    ld l, h
    ret nz

    jr nc, jr_005_47f6

    ld [bc], a

jr_005_47f6:
    ret nz

    ld l, l
    ret nz

    jr nc, jr_005_47fc

    inc bc

jr_005_47fc:
    ld b, b
    ld l, a
    ret nz

    jr nc, jr_005_4802

    nop

jr_005_4802:
    ret nz

    ld [hl], b
    ret nz

    jr nc, @+$03

    ld bc, $7240
    ret nz

    jr nc, @+$03

    ld bc, $73c0
    ret nz

    jr nc, @+$03

    ld bc, $7540
    ret nz

    jr nc, jr_005_481a

    nop

jr_005_481a:
    ret nz

    db $76
    ret nz

    jr nc, @+$03

    ld bc, $7840
    ret nz

    jr nc, jr_005_4826

    nop

jr_005_4826:
    ret nz

    ld a, c
    ret nz

    jr nc, jr_005_482c

    nop

jr_005_482c:
    ld b, b
    ld a, e
    ret nz

    jr nc, @+$03

    ld bc, $7cc0
    ret nz

    jr nc, @+$03

    ld bc, $7e40
    ret nz

    jr nc, jr_005_483e

    ld [bc], a

jr_005_483e:
    nop
    ld b, b
    ret nz

    ld sp, $0301
    add b
    ld b, c
    ret nz

    ld sp, $0301
    nop
    ld b, e
    ret nz

    ld sp, $0301
    add b
    ld b, h
    ret nz

    ld sp, $0301
    nop
    ld b, [hl]
    ret nz

    ld sp, $0101
    add b
    ld b, a
    ret nz

    ld sp, $0101
    nop
    ld c, c
    ret nz

    ld sp, $0102
    add b
    ld c, c
    ret nz

    ld sp, $0001
    nop
    ld c, e
    ret nz

    ld sp, $0301
    add b
    ld c, h
    ret nz

    ld sp, $0301
    nop
    ld c, [hl]
    ret nz

    ld sp, $0002
    ret nz

    ld c, [hl]
    ret nz

    ld sp, $0001
    ld b, b
    ld d, b
    ret nz

    ld sp, $0201
    ret nz

    ld d, c
    ret nz

    ld sp, $0101
    ld b, b
    ld d, e
    ret nz

    ld sp, $0101
    ret nz

    ld d, h
    ret nz

    ld sp, $0101
    ld b, b
    ld d, [hl]
    ret nz

    ld sp, $0001
    ret nz

    ld d, a
    ret nz

    ld sp, $0301
    ld b, b
    ld e, c
    ret nz

    ld sp, $0002
    ret nz

    ld e, d
    ret nz

    ld sp, $0101
    ld b, b
    ld e, h
    ret nz

    ld sp, $0301
    ret nz

    ld e, l
    ret nz

    ld sp, $0101
    ld b, b
    ld e, a
    ret nz

    ld sp, $0101
    ret nz

    ld h, b
    ret nz

    ld sp, $0301
    ld b, b
    ld h, d
    ld b, b
    ld sp, $0003
    add b
    ld h, d
    ret nz

    ld sp, $0301
    nop
    ld h, h
    ret nz

    ld sp, $0102
    add b
    ld h, h
    ret nz

    ld sp, $0101
    nop
    ld h, [hl]
    ret nz

    ld sp, $0101
    add b
    ld h, a
    ret nz

    ld sp, $0301
    nop
    ld l, c
    ret nz

    ld sp, $0101
    add b
    ld l, d
    ret nz

    ld sp, $0001
    nop
    ld l, h
    ret nz

    ld sp, $0001
    add b
    ld l, l
    ret nz

    ld sp, $0001
    nop
    ld l, a
    ret nz

    ld sp, $0001
    add b
    ld [hl], b
    ret nz

    ld sp, $0302
    ld b, b
    ld [hl], c
    ld b, b
    ld sp, $0303
    add b
    ld [hl], c
    ret nz

    ld sp, $0202
    nop
    ld [hl], d
    ret nz

    ld sp, $0101
    add b
    ld [hl], e
    ld b, b
    ld sp, $0003
    nop
    ld [hl], l
    ld b, b
    ld sp, $0303
    add b
    db $76
    ld b, b
    ld sp, $0103
    nop
    ld a, b
    ld b, b
    ld sp, $0003
    ld b, b
    ld a, b
    ret nz

    ld sp, $0002
    add b
    ld a, b
    ld b, b
    ld sp, $0703
    ret nz

    ld a, b
    ld b, b
    ld sp, $0703
    nop
    ld a, c
    ld b, b
    ld sp, $0103
    ld b, b
    ld a, c
    ld b, b
    ld sp, $0003
    add b
    ld a, c
    ld b, b
    ld sp, $0603
    ret nz

    ld a, c
    ld b, b
    ld sp, $0303
    nop
    ld a, d
    ld b, b
    ld sp, $0503
    ld b, b
    ld a, d
    ret nz

    ld sp, $0101
    ret nz

    ld a, e
    ret nz

    ld sp, $0101
    ld b, b
    ld a, l
    ret nz

    ld sp, $0302
    nop
    ld a, [hl]
    ld b, b
    ld sp, $0103
    ld b, b
    ld a, [hl]
    ld b, b
    ld sp, $0003
    add b
    ld a, [hl]
    ld b, b
    ld sp, $0003
    ret nz

    ld a, [hl]
    ret nz

    ld sp, $0102
    ld a, [$d4e4]
    cp $60
    jr z, jr_005_49ad

    cp $68
    jr z, jr_005_49ad

    and $f0
    cp $70
    jr z, jr_005_49ad

    and a
    ret


jr_005_49ad:
    scf
    ret


    ld a, [$d4e4]
    cp $70
    jr z, jr_005_49c4

    cp $76
    jr z, jr_005_49c4

    cp $78
    jr z, jr_005_49c4

    cp $7e
    jr z, jr_005_49c4

    scf
    ret


jr_005_49c4:
    xor a
    ret


    ld de, $0001
    ld hl, $49d3
    ld a, [$d4e4]
    call $30e1
    ret


    ld [hl], c
    ld a, c
    ld a, d
    ld [hl], e
    ld a, e
    ld [hl], h
    ld a, h
    ld [hl], l
    ld a, l
    rst $38
    ld a, [$d4e4]
    ld hl, $49ea
    ld de, $0001
    call $30e1
    ret


    ld [$1418], sp
    jr z, @+$2b

    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    rst $38
    ld a, c
    ld hl, $4a00
    ld de, $0001
    call $30e1
    ret


    ld [de], a
    ld a, [de]
    db $10
    jr jr_005_4a19

    inc e
    rst $38
    ld a, [$d4e4]
    ld de, $001f
    cp $71
    ret z

    ld de, $0013
    cp $7c
    ret z

    ld de, $0023

jr_005_4a19:
    ret


    call $1d6e
    ld a, $01
    ld hl, $5e9a
    rst $08
    call $103e
    call $1ad2
    ld a, $13
    ld hl, $4f45
    rst $08
    ld hl, $5283
    call Call_005_4baf
    jr nz, jr_005_4a4a

    call Call_005_4b89
    jr c, jr_005_4a4a

    call Call_005_4b54
    call Call_005_4be3
    call Call_005_4b5a
    call $1c07
    and a
    ret


jr_005_4a4a:
    call $1c07
    call $0d90
    ld a, $13
    ld hl, $4f45
    rst $08
    scf
    ret


    call Call_005_4b54
    ld a, $05
    ld hl, $4056
    rst $08
    ld a, $41
    ld hl, $50d9
    rst $08
    call Call_005_4df7
    call Call_005_4e13
    call Call_005_4e76
    call Call_005_4e8b
    ld a, $11
    ld hl, $4725
    rst $08
    ld a, $05
    ld hl, $406a
    rst $08
    call Call_005_4b5a
    ret


    push de
    ld hl, $52a1
    call $1d4f
    call $1dcf
    call $1c07
    jr c, jr_005_4ab0

    call Call_005_4b89
    jr c, jr_005_4ab0

    call Call_005_4b54
    call Call_005_4c99
    call Call_005_4e0c
    pop de
    ld a, e
    ld [$db72], a
    call Call_005_5021
    call Call_005_4be6
    call Call_005_4b5a
    and a
    ret


jr_005_4ab0:
    pop de
    ret


    call Call_005_4b89
    jr c, jr_005_4ac1

    call Call_005_4b54
    call Call_005_4be3
    call Call_005_4b5a
    and a

jr_005_4ac1:
    ret


    call Call_005_4b54
    push de
    call Call_005_4e0c
    pop de
    ld a, e
    ld [$db72], a
    call Call_005_5021
    call Call_005_4b5a
    ret


    call Call_005_4b54
    push de
    call Call_005_4e0c
    pop de
    ld a, e
    ld [$db72], a
    ld a, $01
    ld [$cfcd], a
    ld a, $05
    ld hl, $4056
    rst $08
    ld a, $41
    ld hl, $50d9
    rst $08
    call Call_005_4da9
    call Call_005_4dbb
    call Call_005_4dd7
    call Call_005_4df7
    call Call_005_4e13
    call Call_005_4e2d
    call Call_005_4e40
    call Call_005_4e55
    call Call_005_4e76
    call Call_005_4e8b
    ld a, $11
    ld hl, $4725
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08
    ld a, $05
    ld hl, $406a
    rst $08
    call Call_005_5021
    call Call_005_4b5a
    ld de, $0025
    call $3c23
    ld c, $18
    call $0468
    ret


    ld hl, $52a6
    call $1d4f
    call $1dcf
    call $1c07
    jr c, jr_005_4b52

    call Call_005_4b89
    jr c, jr_005_4b52

    call Call_005_4b54
    call Call_005_4be3
    call Call_005_4b5a
    and a
    ret


jr_005_4b52:
    scf
    ret


Call_005_4b54:
    ld a, $01
    ld [$c2cd], a
    ret


Call_005_4b5a:
    xor a
    ld [$c2cd], a
    ret


    ld a, $01
    call $2fcb
    ld hl, $bdd9
    ld de, $be3b
    ld bc, $0b1a

jr_005_4b6d:
    ld a, [hl-]
    ld [de], a
    dec de
    dec bc
    ld a, c
    or b
    jr nz, jr_005_4b6d

    ld hl, $c800
    ld de, $b2c0
    ld bc, $0062
    call $3026
    call $2fe1
    ret


    call Call_005_4c10
    ret


Call_005_4b89:
    ld a, [$cfcd]
    and a
    jr z, jr_005_4ba8

    call Call_005_4bcb
    jr z, jr_005_4b9e

    ld hl, $5297
    call Call_005_4baf
    jr nz, jr_005_4bad

    jr jr_005_4ba8

jr_005_4b9e:
    ld hl, $5292
    call Call_005_4baf
    jr nz, jr_005_4bad

    jr jr_005_4bab

jr_005_4ba8:
    call Call_005_4cbb

jr_005_4bab:
    and a
    ret


jr_005_4bad:
    scf
    ret


Call_005_4baf:
    ld b, $05
    call $269a
    call $1d58
    ld bc, $0007
    call $1dd2
    ld a, [$cfa9]
    dec a
    call $1c17
    push af
    call $0d90
    pop af
    and a
    ret


Call_005_4bcb:
    ld a, $01
    call $2fcb
    ld hl, $a009
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $2fe1
    ld a, [$d47b]
    cp b
    ret nz

    ld a, [$d47c]
    cp c
    ret


Call_005_4be3:
    call Call_005_4c99

Call_005_4be6:
    call Call_005_4c10
    ld c, $20
    call $0468
    ld a, [$cfcc]
    push af
    ld a, $03
    ld [$cfcc], a
    ld hl, $528d
    call $1057
    pop af
    ld [$cfcc], a
    ld de, $0025
    call $3c4e
    call $3c55
    ld c, $1e
    call $0468
    ret


Call_005_4c10:
    ld a, $01
    ld [$cfcd], a
    ld a, $05
    ld hl, $4056
    rst $08
    ld a, $41
    ld hl, $50d9
    rst $08
    call Call_005_4da9
    call Call_005_4dbb
    call Call_005_4dd7
    call Call_005_4df7
    call Call_005_4e0c
    call Call_005_4e13
    call Call_005_4e2d
    call Call_005_4e40
    call Call_005_4e55
    call Call_005_4e76
    call Call_005_4e8b
    call Call_005_4c6b
    ld a, $11
    ld hl, $4725
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08
    ld a, $05
    ld hl, $406a
    rst $08
    ld a, $01
    call $2fcb
    ld a, [$be45]
    cp $04
    jr nz, jr_005_4c67

    xor a
    ld [$be45], a

jr_005_4c67:
    call $2fe1
    ret


Call_005_4c6b:
    call Call_005_4c90
    ld a, $00
    call $2fcb
    ld a, [$bf10]
    ld e, a
    ld a, [$bf11]
    ld d, a
    or e
    jr z, jr_005_4c84

    ld a, e
    sub l
    ld a, d
    sbc h
    jr c, jr_005_4c8c

jr_005_4c84:
    ld a, l
    ld [$bf10], a
    ld a, h
    ld [$bf11], a

jr_005_4c8c:
    call $2fe1
    ret


Call_005_4c90:
    ld hl, $c000

jr_005_4c93:
    ld a, [hl]
    or a
    ret nz

    inc hl
    jr jr_005_4c93

Call_005_4c99:
    xor a
    ldh [$a2], a
    ldh [$a3], a
    ldh [$a5], a
    ldh [$a4], a
    ld a, [$cfcc]
    push af
    ld a, $03
    ld [$cfcc], a
    ld hl, $5288
    call $1057
    pop af
    ld [$cfcc], a
    ld c, $10
    call $0468
    ret


Call_005_4cbb:
    call Call_005_51fb
    call Call_005_4d06
    call Call_005_4ce2
    call Call_005_4cf4
    call Call_005_4d68
    call Call_005_4d5c
    ld a, $00
    call $2fcb
    xor a
    ld [$bf10], a
    ld [$bf11], a
    call $2fe1
    ld a, $01
    ld [$d4b4], a
    ret


Call_005_4ce2:
    ld a, $01
    call $2fcb
    ld hl, $b260
    ld bc, $0060
    xor a
    call $3041
    jp $2fe1


Call_005_4cf4:
    ld a, $00
    call $2fcb
    ld hl, $abe4
    ld bc, $004c
    xor a
    call $3041
    jp $2fe1


Call_005_4d06:
    ld a, $01
    call $2fcb
    ld hl, $b2c0
    ld bc, $0b7c
    xor a
    call $3041
    jp $2fe1


    ld a, $04
    call $2fcb
    ld hl, $4d2c
    ld de, $a007
    ld bc, $0030
    call $3026
    jp $2fe1


    dec c
    ld [bc], a
    nop
    dec b
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ld bc, $0005
    nop
    inc bc
    inc b
    dec b
    ld [$0503], sp
    ld c, $06
    inc bc
    ld [bc], a
    nop
    nop
    add hl, sp
    rlca
    rlca
    inc b
    nop
    dec b
    inc b
    rlca
    ld bc, $0005
    nop
    rrca
    dec b
    inc d
    rlca
    dec b
    dec b
    ld de, $0c0c
    ld b, $06
    inc b

Call_005_4d5c:
    ld a, $01
    call $2fcb
    xor a
    ld [$be45], a
    jp $2fe1


Call_005_4d68:
    call Call_005_509a
    ret


    ld a, $04
    call $2fcb
    ld a, [$a60b]
    ld b, $00
    and a
    jr z, jr_005_4d7b

    ld b, $02

jr_005_4d7b:
    ld a, b
    ld [$a60b], a
    call $2fe1
    ret


    ld a, $04
    call $2fcb
    xor a
    ld [$a60c], a
    ld [$a60d], a
    call $2fe1
    ret


    ld a, $07
    call $2fcb
    xor a
    ld [$a000], a
    call $2fe1
    ret


    ld a, [$d4b4]
    and a
    ret nz

    call Call_005_4cbb
    ret


Call_005_4da9:
    ld a, $01
    call $2fcb
    ld a, $63
    ld [$a008], a
    ld a, $7f
    ld [$ad0f], a
    jp $2fe1


Call_005_4dbb:
    ld a, $01
    call $2fcb
    ld hl, $cfcc
    ld de, $a000
    ld bc, $0008
    call $3026
    ld a, [$cfcc]
    and $ef
    ld [$a000], a
    jp $2fe1


Call_005_4dd7:
    ld a, $01
    call $2fcb
    ld hl, $d47b
    ld de, $a009
    ld bc, $082a
    call $3026
    ld hl, $dca5
    ld de, $a833
    ld bc, $0032
    call $3026
    jp $2fe1


Call_005_4df7:
    ld a, $01
    call $2fcb
    ld hl, $dcd7
    ld de, $a865
    ld bc, $031e
    call $3026
    call $2fe1
    ret


Call_005_4e0c:
    call Call_005_50d8
    call Call_005_50f9
    ret


Call_005_4e13:
    ld hl, $a009
    ld bc, $0b7a
    ld a, $01
    call $2fcb
    call Call_005_5273
    ld a, e
    ld [$ad0d], a
    ld a, d
    ld [$ad0e], a
    call $2fe1
    ret


Call_005_4e2d:
    ld a, $00
    call $2fcb
    ld a, $63
    ld [$b208], a
    ld a, $7f
    ld [$bf0f], a
    call $2fe1
    ret


Call_005_4e40:
    ld a, $00
    call $2fcb
    ld hl, $cfcc
    ld de, $b200
    ld bc, $0008
    call $3026
    call $2fe1
    ret


Call_005_4e55:
    ld a, $00
    call $2fcb
    ld hl, $d47b
    ld de, $b209
    ld bc, $082a
    call $3026
    ld hl, $dca5
    ld de, $ba33
    ld bc, $0032
    call $3026
    call $2fe1
    ret


Call_005_4e76:
    ld a, $00
    call $2fcb
    ld hl, $dcd7
    ld de, $ba65
    ld bc, $031e
    call $3026
    call $2fe1
    ret


Call_005_4e8b:
    ld hl, $b209
    ld bc, $0b7a
    ld a, $00
    call $2fcb
    call Call_005_5273
    ld a, e
    ld [$bf0d], a
    ld a, d
    ld [$bf0e], a
    call $2fe1
    ret


    call Call_005_5028
    jr nz, jr_005_4ed6

    call Call_005_4fd7
    call Call_005_500c
    call Call_005_5021
    ld a, $11
    ld hl, $4745
    rst $08
    ld a, $41
    ld hl, $619d
    rst $08
    ld a, $41
    ld hl, $50ea
    rst $08
    call Call_005_4e2d
    call Call_005_4e40
    call Call_005_4e55
    call Call_005_4e76
    call Call_005_4e8b
    and a
    ret


jr_005_4ed6:
    call Call_005_507c
    jr nz, jr_005_4f07

    call Call_005_5046
    call Call_005_5067
    call Call_005_5021
    ld a, $11
    ld hl, $4745
    rst $08
    ld a, $41
    ld hl, $619d
    rst $08
    ld a, $41
    ld hl, $50ea
    rst $08
    call Call_005_4da9
    call Call_005_4dbb
    call Call_005_4dd7
    call Call_005_4df7
    call Call_005_4e13
    and a
    ret


jr_005_4f07:
    ld a, [$cfcc]
    push af
    set 4, a
    ld [$cfcc], a
    ld hl, $529c
    call $1057
    pop af
    ld [$cfcc], a
    scf
    ret


    xor a
    ld [$cfcd], a
    call Call_005_4f84
    ld a, [$cfcd]
    and a
    jr z, jr_005_4f46

    ld a, $01
    call $2fcb
    ld hl, $a044
    ld de, $d4b6
    ld bc, $0008
    call $3026
    ld hl, $a3da
    ld de, $d84c
    ld a, [hl]
    ld [de], a
    call $2fe1
    ret


jr_005_4f46:
    call Call_005_4faf
    ld a, [$cfcd]
    and a
    jr z, jr_005_4f6c

    ld a, $00
    call $2fcb
    ld hl, $b244
    ld de, $d4b6
    ld bc, $0008
    call $3026
    ld hl, $b5da
    ld de, $d84c
    ld a, [hl]
    ld [de], a
    call $2fe1
    ret


jr_005_4f6c:
    ld hl, $4f7c
    ld de, $cfcc
    ld bc, $0008
    call $3026
    call $067e
    ret


    inc bc
    nop
    nop
    ld bc, $0140
    nop
    nop

Call_005_4f84:
    ld a, $01
    call $2fcb
    ld a, [$a008]
    cp $63
    jr nz, jr_005_4fab

    ld a, [$ad0f]
    cp $7f
    jr nz, jr_005_4fab

    ld hl, $a000
    ld de, $cfcc
    ld bc, $0008
    call $3026
    call $2fe1
    ld a, $01
    ld [$cfcd], a

jr_005_4fab:
    call $2fe1
    ret


Call_005_4faf:
    ld a, $00
    call $2fcb
    ld a, [$b208]
    cp $63
    jr nz, jr_005_4fd3

    ld a, [$bf0f]
    cp $7f
    jr nz, jr_005_4fd3

    ld hl, $b200
    ld de, $cfcc
    ld bc, $0008
    call $3026
    ld a, $02
    ld [$cfcd], a

jr_005_4fd3:
    call $2fe1
    ret


Call_005_4fd7:
    ld a, $01
    call $2fcb
    ld hl, $a009
    ld de, $d47b
    ld bc, $082a
    call $3026
    ld hl, $a833
    ld de, $dca5
    ld bc, $0032
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld a, [$be45]
    cp $04
    jr nz, jr_005_5008

    ld a, $03
    ld [$be45], a

jr_005_5008:
    call $2fe1
    ret


Call_005_500c:
    ld a, $01
    call $2fcb
    ld hl, $a865
    ld de, $dcd7
    ld bc, $031e
    call $3026
    call $2fe1
    ret


Call_005_5021:
    call Call_005_50d8
    call Call_005_517d
    ret


Call_005_5028:
    ld hl, $a009
    ld bc, $0b7a
    ld a, $01
    call $2fcb
    call Call_005_5273
    ld a, [$ad0d]
    cp e
    jr nz, jr_005_5040

    ld a, [$ad0e]
    cp d

jr_005_5040:
    push af
    call $2fe1
    pop af
    ret


Call_005_5046:
    ld a, $00
    call $2fcb
    ld hl, $b209
    ld de, $d47b
    ld bc, $082a
    call $3026
    ld hl, $ba33
    ld de, $dca5
    ld bc, $0032
    call $3026
    call $2fe1
    ret


Call_005_5067:
    ld a, $00
    call $2fcb
    ld hl, $ba65
    ld de, $dcd7
    ld bc, $031e
    call $3026
    call $2fe1
    ret


Call_005_507c:
    ld hl, $b209
    ld bc, $0b7a
    ld a, $00
    call $2fcb
    call Call_005_5273
    ld a, [$bf0d]
    cp e
    jr nz, jr_005_5094

    ld a, [$bf0e]
    cp d

jr_005_5094:
    push af
    call $2fe1
    pop af
    ret


Call_005_509a:
    ld a, $01
    call $2fcb
    ld hl, $d472
    ld de, $be3d
    ld bc, $0007
    call $3026
    ld hl, $d479
    ld a, [hl+]
    ld [$a60e], a
    ld a, [hl+]
    ld [$a60f], a
    jp $2fe1


    ld a, $01
    call $2fcb
    ld hl, $be3d
    ld de, $d472
    ld bc, $0007
    call $3026
    ld hl, $d479
    ld a, [$a60e]
    ld [hl+], a
    ld a, [$a60f]
    ld [hl+], a
    jp $2fe1


Call_005_50d8:
    ld a, [$db72]
    cp $0e
    jr c, jr_005_50e3

    xor a
    ld [$db72], a

jr_005_50e3:
    ld e, a
    ld d, $00
    ld hl, $522d
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ret


Call_005_50f9:
    push hl
    push af
    push de
    ld a, $01
    call $2fcb
    ld hl, $ad10
    ld de, $c608
    ld bc, $01e0
    call $3026
    call $2fe1
    pop de
    pop af
    push af
    push de
    call $2fcb
    ld hl, $c608
    ld bc, $01e0
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld hl, $aef0
    ld de, $c608
    ld bc, $01e0
    call $3026
    call $2fe1
    pop de
    pop af
    ld hl, $01e0
    add hl, de
    ld e, l
    ld d, h
    push af
    push de
    call $2fcb
    ld hl, $c608
    ld bc, $01e0
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld hl, $b0d0
    ld de, $c608
    ld bc, $008e
    call $3026
    call $2fe1
    pop de
    pop af
    ld hl, $01e0
    add hl, de
    ld e, l
    ld d, h
    call $2fcb
    ld hl, $c608
    ld bc, $008e
    call $3026
    call $2fe1
    pop hl
    ret


Call_005_517d:
    push hl
    ld l, e
    ld h, d
    push af
    push hl
    call $2fcb
    ld de, $c608
    ld bc, $01e0
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld hl, $c608
    ld de, $ad10
    ld bc, $01e0
    call $3026
    call $2fe1
    pop hl
    pop af
    ld de, $01e0
    add hl, de
    push af
    push hl
    call $2fcb
    ld de, $c608
    ld bc, $01e0
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld hl, $c608
    ld de, $aef0
    ld bc, $01e0
    call $3026
    call $2fe1
    pop hl
    pop af
    ld de, $01e0
    add hl, de
    call $2fcb
    ld de, $c608
    ld bc, $008e
    call $3026
    call $2fe1
    ld a, $01
    call $2fcb
    ld hl, $c608
    ld de, $b0d0
    ld bc, $008e
    call $3026
    call $2fe1
    pop hl
    ret


Call_005_51fb:
    ld hl, $522d
    ld c, $0e

jr_005_5200:
    push bc
    ld a, [hl+]
    call $2fcb
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    inc de
    ld bc, $044c

jr_005_5213:
    xor a
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_005_5213

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $ff
    ld [de], a
    inc de
    xor a
    ld [de], a
    call $2fe1
    pop bc
    dec c
    jr nz, jr_005_5200

    ret


    ld [bc], a
    nop
    and b
    ld c, [hl]
    and h
    ld [bc], a
    ld d, b
    and h
    sbc [hl]
    xor b
    ld [bc], a
    and b
    xor b
    xor $ac
    ld [bc], a
    ldh a, [$ac]
    ld a, $b1
    ld [bc], a
    ld b, b
    or c
    adc [hl]
    or l
    ld [bc], a
    sub b
    or l
    sbc $b9
    ld [bc], a
    ldh [$b9], a
    ld l, $be
    inc bc
    nop
    and b
    ld c, [hl]
    and h
    inc bc
    ld d, b
    and h
    sbc [hl]
    xor b
    inc bc
    and b
    xor b
    xor $ac
    inc bc
    ldh a, [$ac]
    ld a, $b1
    inc bc
    ld b, b
    or c
    adc [hl]
    or l
    inc bc
    sub b
    or l
    sbc $b9
    inc bc
    ldh [$b9], a
    ld l, $be

Call_005_5273:
    ld de, $0000

jr_005_5276:
    ld a, [hl+]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_005_5276

    ret


    ld d, $4b
    ld b, l
    ld [hl], c
    ld d, b
    ld d, $6d
    ld b, l
    ld [hl], c
    ld d, b
    ld d, $90
    ld b, l
    ld [hl], c
    ld d, b
    ld d, $a3
    ld b, l
    ld [hl], c
    ld d, b
    ld d, $d9
    ld b, l
    ld [hl], c
    ld d, b
    ld d, $0d
    ld b, [hl]
    ld [hl], c
    ld d, b
    ld d, $2a
    ld b, [hl]
    ld [hl], c
    ld d, b
    ld d, $5f
    ld b, [hl]
    ld [hl], c
    ld d, b
    jr jr_005_52b4

    inc bc
    inc bc
    rla
    add hl, bc
    dec b
    inc bc
    dec c

jr_005_52b4:
    ld [bc], a
    dec b
    ld b, $17
    inc bc
    rla
    ld a, [de]
    ld c, $02
    dec c
    ld a, [de]
    rlca
    ld de, $1613
    rlca
    ld c, $0b
    ld [bc], a
    inc c
    inc bc
    add hl, bc
    ld b, $12
    inc b
    dec b
    ld b, $19
    ld [bc], a
    add hl, bc
    ld e, $15
    inc b
    dec e
    ld a, [bc]
    ld de, $1305
    inc e
    ld b, $08
    dec bc
    inc c
    db $10
    ld bc, $0609
    jr jr_005_52e9

    dec c
    ld b, $1a
    inc bc

jr_005_52e9:
    dec e
    inc b
    ld a, [bc]
    dec b
    rra
    ld a, [de]
    ld a, [bc]
    ld bc, $4a0b
    ld [$0f07], sp
    ld a, [bc]
    ld d, $03
    rla
    inc l
    dec bc
    ld [bc], a
    rrca
    inc e
    ld bc, $0d0e
    ld d, $04
    add hl, bc
    rla
    inc e
    ld [bc], a
    rlca
    rrca
    ld c, $09
    ld b, $15
    dec e
    dec b
    ld a, [bc]
    dec d
    ld e, $13
    ld [bc], a
    rla
    inc d
    rrca
    dec b
    ld b, $02
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    push de
    ld a, [$d001]
    cp $ff
    jr z, jr_005_5341

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $52ab
    add hl, de
    ld a, [hl+]
    ld [$dcb5], a
    ld a, [hl+]
    ld [$dcb6], a
    ld a, [hl+]
    ld [$dcb8], a
    ld a, [hl+]
    ld [$dcb7], a

jr_005_5341:
    pop de
    pop hl
    ret


    ld hl, $52ab
    ld c, $00

jr_005_5349:
    ld a, [hl]
    cp $ff
    jr z, jr_005_535f

    cp d
    jr nz, jr_005_5356

    inc hl
    ld a, [hl-]
    cp e
    jr z, jr_005_5361

jr_005_5356:
    push bc
    ld bc, $0004
    add hl, bc
    pop bc
    inc c
    jr jr_005_5349

jr_005_535f:
    and a
    ret


jr_005_5361:
    scf
    ret


    ldh a, [$9f]
    and $0f
    dec a
    ld c, a
    ld b, $00
    ld hl, $5377
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_005_541d
    ret


    sub d
    ld d, e
    ld [$e754], sp
    ld d, e
    adc a
    ld d, e
    pop de
    ld d, e
    ret nc

    ld d, e
    cp a
    ld d, e
    rst $30
    ld d, e
    jp nc, $1a53

    ld d, h
    xor c
    ld d, e
    sub b
    ld d, e
    inc h
    dec e
    daa
    ld bc, $1702
    ld a, [de]
    inc d
    ld [hl+], a
    inc hl
    rra
    ld a, [bc]
    dec c
    ld c, $10
    ld d, $00
    ld de, $1321
    rlca
    add hl, bc
    ld e, $29
    ld [de], a
    rst $38
    rla
    ld a, [de]
    inc d
    ld [hl+], a
    inc hl
    rra
    ld a, [bc]
    dec c
    ld bc, $100e
    jr z, jr_005_53b6

jr_005_53b6:
    ld d, $11
    ld hl, $0513
    ld e, $29
    ld [de], a
    rst $38
    ld a, [hl+]
    jr jr_005_53dc

    inc d
    inc hl
    ld a, [bc]
    rrca
    inc c
    ld d, $05
    ld de, $2b2d
    ld [de], a
    ld h, $29
    rst $38
    inc h
    dec e
    add hl, de
    ld a, [de]
    jr nz, @+$16

    inc hl
    ld a, [bc]
    dec c
    ld bc, $100e

jr_005_53dc:
    jr z, jr_005_53de

jr_005_53de:
    ld d, $11
    inc de
    dec b
    ld e, $29
    ld [de], a
    ld h, $ff
    ld b, $1c
    ld bc, $0a02
    dec bc
    ld c, $10
    nop
    ld de, $0813
    ld e, $29
    ld [de], a
    rst $38
    ld b, $01
    ld [bc], a
    inc d
    ld a, [bc]
    dec c
    ld c, $10
    nop
    ld de, $0713
    ld e, $29
    ld [de], a
    inc l
    rst $38
    ld bc, $1b02
    rra
    dec d
    ld a, [bc]
    dec bc
    dec c
    ld c, $10
    nop
    ld de, $0713
    ld e, $29
    ld [de], a
    rst $38
    ld a, [bc]
    dec bc
    rst $38

Call_005_541d:
jr_005_541d:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld c, a
    ld b, $00
    ld hl, $5440
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, b
    jr z, jr_005_5439

    pop de
    ld a, [de]
    ld c, a
    inc de
    push de

jr_005_5439:
    ld a, b
    and $7f
    rst $08
    pop hl
    jr jr_005_541d

    nop
    adc d
    dec b
    nop
    ld l, b
    dec b
    nop
    ld c, [hl]
    dec sp
    nop
    rst $18
    inc a
    nop
    ld b, a
    dec a
    nop
    cp h
    inc a
    dec b
    ld [hl], h
    ld d, l
    nop
    inc bc
    dec a
    dec b
    add a
    ld d, l
    nop
    xor [hl]
    inc a
    nop
    call $0024
    db $e3
    jr z, jr_005_5465

jr_005_5465:
    sbc l
    jr z, jr_005_5468

jr_005_5468:
    ld a, c
    jr z, jr_005_54ac

    rst $08
    ld b, a
    nop
    daa
    dec l
    ld b, c
    ld d, b
    ld b, a
    ld b, c
    db $eb
    ld b, a
    ld a, [bc]
    ld hl, sp+$5f
    ld b, c
    ldh a, [rBGP]
    ld b, c
    or b
    ld b, l
    ld b, c
    call nz, $0545
    ret c

    ld d, h
    dec b
    rra
    ld d, e
    ld b, c
    sub $45
    ld b, c
    add $46
    nop
    add hl, bc
    inc hl
    nop
    rla
    inc hl
    nop
    di
    ld sp, $8423
    ld b, b
    inc hl
    ld a, c
    ld b, b
    ld b, c
    ld l, l
    ld c, b
    nop
    adc d
    inc h
    ld bc, $57d9
    ld [bc], a
    add hl, hl
    ld b, b
    ld [bc], a
    cp b
    ld b, b

jr_005_54ac:
    dec b
    db $eb
    ld d, h
    dec b
    pop af
    ld d, h
    ld a, [bc]
    dec c
    ld h, e
    ld a, [bc]
    sub h
    ld h, e
    dec b
    ld h, a
    ld d, l
    dec b
    rst $08
    ld d, h
    dec b
    call nc, $0554
    ld l, l
    ld d, l
    dec b
    jp z, $2e54

    nop
    ld b, b
    xor a
    ld [$c2d7], a
    ret


    ld a, $01
    ldh [$de], a
    ret


    xor a
    ldh [$de], a
    ret


    ld a, $02
    call $263b
    ld a, $09
    ld hl, $454f
    rst $08
    ld a, $02
    ld hl, $4177
    rst $08
    ret


    ret


    ld hl, $d45b
    set 7, [hl]
    ret


    ld hl, $d45b
    set 6, [hl]
    ret


    nop
    call Call_005_550c
    jr c, jr_005_5508

    call Call_005_554e
    jr c, jr_005_5508

    call Call_005_551a
    jr c, jr_005_5508

    ret


jr_005_5508:
    call $0e4a
    ret


Call_005_550c:
    and a
    ld hl, $dbf5
    bit 1, [hl]
    ret z

    ld a, $01
    ld [$d95d], a
    scf
    ret


Call_005_551a:
    ld a, [$d95d]
    cp $00
    jr z, jr_005_554c

    cp $02
    jr z, jr_005_554c

    cp $04
    jr z, jr_005_5545

    cp $08
    jr z, jr_005_5545

    call $2c8a
    cp $03
    jr z, jr_005_553e

    cp $05
    jr z, jr_005_553e

    cp $07
    jr z, jr_005_553e

    jr jr_005_554c

jr_005_553e:
    ld a, [$d95d]
    cp $01
    jr nz, jr_005_554c

jr_005_5545:
    ld a, $00
    ld [$d95d], a
    scf
    ret


jr_005_554c:
    and a
    ret


Call_005_554e:
    call $1852
    jr nz, jr_005_5565

    ld a, [$d95d]
    cp $04
    jr z, jr_005_5563

    cp $08
    jr z, jr_005_5563

    ld a, $04
    ld [$d95d], a

jr_005_5563:
    scf
    ret


jr_005_5565:
    and a
    ret


    ld a, $06
    call $3cb4
    ret


    ld a, $23
    ld hl, $4070
    rst $08
    ret


    ld e, $00
    ld a, [$c2a9]
    ld d, $00
    ld a, [$c2aa]
    ld a, $04
    ld [$c2a7], a
    call $04b6
    ret


    ld a, [$d95d]
    cp $01
    jr nz, jr_005_5596

    call $3ca3
    ld a, $88
    ld [$c2a7], a

jr_005_5596:
    call $3d2f
    ret


    call Call_005_5650
    ret c

    call Call_005_56b3
    ld hl, $5a27
    call $5a20
    ld hl, $5a2c
    call Call_005_57bb
    ld hl, $55d6
    call $1d35

jr_005_55b3:
    xor a
    ldh [$d4], a
    call Call_005_563e
    ld [$cf76], a
    call $1e5d
    jr c, jr_005_55cc

    ld a, [$cf74]
    ld hl, $55e6
    call $1fa7
    jr nc, jr_005_55b3

jr_005_55cc:
    call Call_005_56b8
    call $1c07
    call $1c17
    ret


    ld c, b
    nop
    nop
    inc c
    rrca
    sbc $55
    ld bc, $00a0
    inc l
    ld d, [hl]
    adc l
    rra
    and $55
    ld a, c
    ld d, [hl]
    ld a, [$6855]
    ld d, [hl]
    nop
    ld d, [hl]
    adc c
    ld d, [hl]
    add hl, bc
    ld d, [hl]
    sbc d
    ld d, [hl]
    ld d, $56
    xor e
    ld d, [hl]
    inc hl
    ld d, [hl]
    ld d, d
    call nc, $8f7f
    add d
    ld d, b
    add c
    adc b
    adc e
    adc e
    call nc, $8f7f
    add d
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    call nc, $8f7f
    add d
    ld d, b
    add a
    add b
    adc e
    adc e
    ld a, a
    adc [hl]
    add l
    ld a, a
    add l
    add b
    adc h
    add h
    ld d, b
    sub e
    sub h
    sub c
    adc l
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    inc bc
    ld bc, $0400
    rst $38
    inc b
    ld bc, $0200
    inc b
    rst $38
    dec b
    ld bc, $0200
    inc bc
    inc b
    rst $38

Call_005_563e:
    call $2ead
    jr nz, jr_005_5646

    ld a, $00
    ret


jr_005_5646:
    ld a, [$d95e]
    and a
    ld a, $01
    ret z

    ld a, $02
    ret


Call_005_5650:
    ld a, [$dcd7]
    and a
    ret nz

    ld de, $000f
    call $3c23
    ld hl, $5663
    call $5a20
    scf
    ret


    ld d, $28
    ld d, e
    ld [hl], b
    ld d, b
    call Call_005_56c2
    ld hl, $5a31
    call $5a20
    ld a, $03
    ld hl, $63fd
    rst $08
    and a
    ret


    call Call_005_56c2
    ld hl, $5a36
    call $5a20
    ld b, $00
    call Call_005_5704
    and a
    ret


    call Call_005_56c2
    ld hl, $5a3b
    call $5a20
    ld a, $09
    ld hl, $65d3
    rst $08
    and a
    ret


    call Call_005_56c2
    call $2b29
    ld a, $21
    ld hl, $6650
    rst $08
    call $2b3c
    and a
    ret


    ld hl, $5a40
    call $1057
    scf
    ret


Call_005_56b3:
    ld de, $000d
    jr jr_005_56d0

Call_005_56b8:
    ld de, $000e
    call Call_005_56d0
    call $3c55
    ret


Call_005_56c2:
    ld de, $000f
    jr jr_005_56d0

Call_005_56c7:
    ld de, $0020
    call Call_005_56d0
    ld de, $0020

Call_005_56d0:
jr_005_56d0:
    push de
    call $3c55
    pop de
    call $3c23
    ret


    call Call_005_56b3
    ld hl, $56ff
    call $5a20
    ld b, $01
    call Call_005_5704
    and a
    jr nz, jr_005_56f9

    call $2173
    call $321c
    call $1ad2
    call Call_005_56b8
    ld c, $00
    ret


jr_005_56f9:
    call $31f3
    ld c, $01
    ret


    ld d, $53
    ld d, e
    ld [hl], b
    ld d, b

Call_005_5704:
    ld a, b
    ld [$cf76], a
    ld hl, $57cc
    call Call_005_57bb
    call Call_005_5715
    call $1c07
    ret


Call_005_5715:
    xor a
    ld [$d0d7], a
    ld [$d0dd], a
    ld hl, $5736
    call $1d35

jr_005_5722:
    call $0485
    call $1e5d
    jr c, jr_005_5731

    call $1fa7
    jr nc, jr_005_5722

    jr jr_005_5732

jr_005_5731:
    xor a

jr_005_5732:
    call $1c07
    ret


    ld b, b
    nop
    nop
    inc c
    rrca
    ld a, $57
    ld bc, $00a0
    xor h
    ld d, a
    adc l
    rra
    ld b, [hl]
    ld d, a
    pop de
    ld d, a
    ld h, d
    ld d, a
    adc e
    ld e, b
    ld [hl], b
    ld d, a
    ld e, a
    ld e, b
    ld a, l
    ld d, a
    ld a, l
    ld e, c
    add a
    ld d, a
    ld a, l
    ld e, b
    sub b
    ld d, a
    adc b
    ld e, b
    and h
    ld d, a
    adc b
    ld e, b
    sbc e
    ld d, a
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld d, b
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld d, b
    sub e
    adc [hl]
    sub d
    sub d
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld d, b
    adc h
    add b
    adc b
    adc e
    ld a, a
    add c
    adc [hl]
    sub a
    ld d, b
    add e
    add h
    add d
    adc [hl]
    sub c
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    sub e
    sub h
    sub c
    adc l
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    adc e
    adc [hl]
    add [hl]
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    dec b
    nop
    ld bc, $0302
    dec b
    rst $38
    ld b, $00
    ld bc, $0302
    inc b
    ld b, $ff

Call_005_57bb:
    ld a, [$cfcc]
    push af
    set 4, a
    ld [$cfcc], a
    call $1d4f
    pop af
    ld [$cfcc], a
    ret


    ld d, $68
    ld d, e
    ld [hl], b
    ld d, b
    call $1d6e
    ld a, $03
    ld hl, $658b
    rst $08

jr_005_57da:
    call Call_005_5985
    jr c, jr_005_57e4

    call Call_005_57e9
    jr jr_005_57da

jr_005_57e4:
    call $2b3c
    xor a
    ret


Call_005_57e9:
    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    and a
    jr z, jr_005_57fc

    ld a, $01
    ld [$d10c], a
    jr jr_005_5810

jr_005_57fc:
    ld hl, $5850
    call $1d4f
    ld a, $09
    ld hl, $4fbf
    rst $08
    call $1c07
    call $1c07
    jr c, jr_005_584f

jr_005_5810:
    ld a, [$d10c]
    ld [$d1ea], a
    ld a, [$d107]
    ld [$d1eb], a
    ld hl, $d892
    call $2f66
    jr nc, jr_005_5848

    ld a, [$d1ea]
    ld [$d10c], a
    ld a, [$d1eb]
    ld [$d107], a
    ld hl, $d8f1
    call $2f53
    ld a, $3b
    call $2d83
    ld hl, $5855
    call $1d4f
    xor a
    ldh [$d4], a
    call $1c07
    ret


jr_005_5848:
    ld hl, $585a
    call $1d67
    ret


jr_005_584f:
    ret


    ld d, $81
    ld d, e
    ld [hl], b
    ld d, b
    ld d, $a4
    ld d, e
    ld [hl], b
    ld d, b
    ld d, $bf
    ld d, e
    ld [hl], b
    ld d, b
    call $1d6e
    ld a, $03
    ld hl, $658b
    rst $08

jr_005_5868:
    call Call_005_5985
    jr c, jr_005_5878

    ld de, $d8f1
    ld a, $04
    ld hl, $69f4
    rst $08
    jr jr_005_5868

jr_005_5878:
    call $2b3c
    xor a
    ret


    ld a, $09
    ld hl, $675c
    rst $08
    ld a, c
    and a
    ret z

    scf
    ret


    xor a
    scf
    ret


    call Call_005_58b8
    jr c, jr_005_58b6

    call $2ed3
    call $1d6e
    ld a, $04
    ld hl, $46a5
    rst $08

jr_005_589c:
    ld a, $04
    ld hl, $46be
    rst $08
    ld a, [$cf66]
    and a
    jr z, jr_005_58b3

    call Call_005_58cc
    ld a, $04
    ld hl, $7345
    rst $08
    jr jr_005_589c

jr_005_58b3:
    call $2b3c

jr_005_58b6:
    xor a
    ret


Call_005_58b8:
    ld a, $04
    ld hl, $69d5
    rst $08
    ret nc

    ld hl, $58c7
    call $1d67
    scf
    ret


    ld d, $df
    ld d, e
    ld [hl], b
    ld d, b

Call_005_58cc:
    ld a, [$c2ce]
    push af
    ld a, $00
    ld [$c2ce], a
    ld a, $03
    ld hl, $5453
    rst $08
    ld a, [$d142]
    ld hl, $58e7
    rst $28
    pop af
    ld [$c2ce], a
    ret


    or $58
    push af
    ld e, b
    push af
    ld e, b
    push af
    ld e, b
    or $58
    or $58
    or $58
    ret


    ld a, [$d1ea]
    push af
    ld a, [$d1eb]
    push af
    call Call_005_590a
    pop af
    ld [$d1eb], a
    pop af
    ld [$d1ea], a
    ret


Call_005_590a:
    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    and a
    jr z, jr_005_591d

    ld a, $01
    ld [$d10c], a
    jr jr_005_5933

jr_005_591d:
    ld hl, $596e
    call $1d4f
    ld a, $09
    ld hl, $4fbf
    rst $08
    push af
    call $1c07
    call $1c07
    pop af
    jr c, jr_005_596c

jr_005_5933:
    ld a, [$d10c]
    ld [$d1ea], a
    ld a, [$d107]
    ld [$d1eb], a
    ld hl, $d8f1
    call $2f66
    jr nc, jr_005_5965

    ld a, [$d1ea]
    ld [$d10c], a
    ld a, [$d1eb]
    ld [$d107], a
    ld hl, $d892
    call $2f53
    ld a, $3b
    call $2d83
    ld hl, $5973
    call $1057
    ret


jr_005_5965:
    ld hl, $5978
    call $1057
    ret


jr_005_596c:
    and a
    ret


    ld d, $ef
    ld d, e
    ld [hl], b
    ld d, b
    ld d, $11
    ld d, h
    ld [hl], b
    ld d, b
    ld d, $2d
    ld d, h
    ld [hl], b
    ld d, b
    ld a, $11
    ld hl, $47a0
    rst $08
    xor a
    ret


Call_005_5985:
    xor a
    ld [$d0e3], a

Jump_005_5989:
    ld a, [$c2ce]
    push af
    ld a, $00
    ld [$c2ce], a
    ld hl, $5a08
    call $1d3c
    ld hl, $c4a0
    ld b, $0a
    ld c, $12
    call $0fe8
    ld a, [$d0d7]
    ld [$cf88], a
    ld a, [$d0dd]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0dd], a
    ld a, [$cfa9]
    ld [$d0d7], a
    pop af
    ld [$c2ce], a
    ld a, [$d0e3]
    and a
    jr nz, jr_005_59d8

    ld a, [$cf73]
    cp $02
    jr z, jr_005_5a06

    cp $01
    jr z, jr_005_59fb

    cp $04
    jr z, jr_005_59f2

    jr jr_005_59f8

jr_005_59d8:
    ld a, [$cf73]
    cp $02
    jr z, jr_005_59e9

    cp $01
    jr z, jr_005_59ef

    cp $04
    jr z, jr_005_59ef

    jr jr_005_59f8

jr_005_59e9:
    xor a
    ld [$d0e3], a
    jr jr_005_59f8

jr_005_59ef:
    call Call_005_56c7

jr_005_59f2:
    ld a, $09
    ld hl, $490c
    rst $08

jr_005_59f8:
    jp Jump_005_5989


jr_005_59fb:
    ld a, $09
    ld hl, $4706
    rst $08
    call $1bee
    and a
    ret


jr_005_5a06:
    scf
    ret


    ld b, b
    ld bc, $0a04
    ld [de], a
    db $10
    ld e, d
    ld bc, $04b0
    ld [$0002], sp
    pop af
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp $cd44


    ld c, a
    dec e
    call $1c07
    ret


    ld d, $4d
    ld d, h
    ld [hl], b
    ld d, b
    ld d, $62
    ld d, h
    ld [hl], b
    ld d, b
    ld d, $74
    ld d, h
    ld [hl], b
    ld d, b
    ld d, $a4
    ld d, h
    ld [hl], b
    ld d, b
    ld d, $d2
    ld d, h
    ld [hl], b
    ld d, b
    ld d, $05
    ld d, l
    ld [hl], b
    ld d, b
    call Call_005_5b31
    ld a, c
    ld [$d03e], a
    call Call_005_5b10
    ld a, [$d03e]
    ld hl, $5a57
    rst $28
    ret


    ld h, c
    ld e, d
    ld l, [hl]
    ld e, d
    add h
    ld e, d
    xor [hl]
    ld e, d
    call nz, $3e5a
    nop
    ld [$d03e], a
    xor a
    ld [$d042], a
    call Call_005_5b47
    ret


    call Call_005_5bbb
    call $1d6e
    ld hl, $5e4a
    call Call_005_5fcd
    call Call_005_5c62
    ld hl, $5e68
    call Call_005_5fcd
    ret


    ld b, $05
    ld de, $5c51
    call Call_005_5b10
    call Call_005_5c25
    call $1d6e
    ld hl, $5e6d
    call Call_005_5fcd
    call Call_005_5c62
    ld hl, $d043
    ld a, [hl+]
    or [hl]
    jr z, jr_005_5aa7

    ld hl, $dc1e
    set 6, [hl]

jr_005_5aa7:
    ld hl, $5e8b
    call Call_005_5fcd
    ret


    call Call_005_5bbb
    call $1d6e
    ld hl, $5e90
    call Call_005_5fcd
    call Call_005_5c62
    ld hl, $5eae
    call Call_005_5fcd
    ret


    ld b, $05
    ld de, $5aee
    ld hl, $d84c
    bit 6, [hl]
    jr z, jr_005_5ad5

    ld b, $05
    ld de, $5aff

jr_005_5ad5:
    call Call_005_5b10
    call Call_005_5c25
    call $1d6e
    ld hl, $5f83
    call Call_005_5fcd
    call Call_005_5c62
    ld hl, $5fb4
    call Call_005_5fcd
    ret


    dec b
    dec b
    sub [hl]
    nop
    inc b
    db $f4
    ld bc, $f411
    ld bc, $f426
    ld bc, $b027
    inc b
    rst $38
    dec b
    db $10
    add sp, $03
    ld c, $d0
    rlca
    ld h, $f4
    ld bc, $e802
    inc bc
    dec de
    ld a, b
    ld e, $ff

Call_005_5b10:
    ld a, b
    ld [$d03f], a
    ld a, e
    ld [$d040], a
    ld a, d
    ld [$d041], a
    ld hl, $d0f0
    xor a
    ld bc, $0010
    call $3041
    xor a
    ld [$d042], a
    ld [$d043], a
    ld [$d044], a
    ret


Call_005_5b31:
    ld a, e
    cp $22
    jr c, jr_005_5b3c

    ld b, $05
    ld de, $6214
    ret


jr_005_5b3c:
    ld hl, $60a9
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $05
    ret


Call_005_5b47:
jr_005_5b47:
    ld a, [$d042]
    ld hl, $5b56
    rst $28
    ld [$d042], a
    cp $ff
    jr nz, jr_005_5b47

    ret


    ld h, d
    ld e, e
    ld l, [hl]
    ld e, e
    adc l
    ld e, e
    sbc d
    ld e, e
    and e
    ld e, e
    xor a
    ld e, e
    call $1d6e
    ld hl, $5f83
    call $1057
    ld a, $01
    ret


    ld hl, $5f88
    call $1d3c
    call $1d81
    jr c, jr_005_5b84

    ld a, [$cfa9]
    cp $01
    jr z, jr_005_5b87

    cp $02
    jr z, jr_005_5b8a

jr_005_5b84:
    ld a, $04
    ret


jr_005_5b87:
    ld a, $02
    ret


jr_005_5b8a:
    ld a, $03
    ret


    call $1c07
    call Call_005_5bbb
    call Call_005_5c62
    and a
    ld a, $05
    ret


    call $1c07
    call Call_005_5eb3
    ld a, $05
    ret


    call $1c07
    ld hl, $5fb4
    call Call_005_5fcd
    ld a, $ff
    ret


    call $1d6e
    ld hl, $5fb9
    call $1057
    ld a, $01
    ret


Call_005_5bbb:
    ld hl, $d040
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d0f0

jr_005_5bc4:
    ld a, [$d03f]
    call $304d
    ld [de], a
    inc hl
    inc de
    cp $ff
    jr nz, jr_005_5bc4

    ld hl, $d002
    ld de, $d0f1

jr_005_5bd7:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_005_5be4

    push de
    call Call_005_5be5
    pop de
    jr jr_005_5bd7

jr_005_5be4:
    ret


Call_005_5be5:
    push hl
    ld [$d106], a
    ld a, $03
    ld hl, $5486
    rst $08
    pop hl

Call_005_5bf0:
    push hl
    ld a, d
    ld [$d086], a
    ld a, e
    ld [$d087], a
    ld hl, $d073
    ld de, $d086
    ld bc, $8206
    call $3198
    pop hl
    ld de, $d073
    ld c, $03

jr_005_5c0b:
    call Call_005_5c1a
    swap a
    ld b, a
    call Call_005_5c1a
    or b
    ld [hl+], a
    dec c
    jr nz, jr_005_5c0b

    ret


Call_005_5c1a:
    ld a, [de]
    inc de
    cp $7f
    jr nz, jr_005_5c22

    ld a, $f6

jr_005_5c22:
    sub $f6
    ret


Call_005_5c25:
    ld hl, $d040
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    inc hl
    ld bc, $d002
    ld de, $d0f1

jr_005_5c33:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    jr z, jr_005_5c4b

    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, b
    ld l, c
    call Call_005_5bf0
    ld b, h
    ld c, l
    pop hl
    pop de
    jr jr_005_5c33

jr_005_5c4b:
    pop hl
    ld a, [hl]
    ld [$d0f0], a
    ret


    dec b
    inc h
    sub h
    ld de, $8a6e
    ld [bc], a
    ld l, a
    xor h
    dec c
    add e
    add h
    inc bc
    add h
    ld hl, sp+$11
    rst $38

Call_005_5c62:
    call $2b29
    ld a, $02
    ld hl, $4000
    rst $08
    xor a
    ld [$d046], a
    ld a, $01
    ld [$d045], a

jr_005_5c74:
    call Call_005_5cef
    jr nc, jr_005_5c74

    call $2b3c
    ret


Call_005_5c7d:
    push af
    call Call_005_5ca3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1057
    ret


Call_005_5c91:
    call Call_005_5ca3
    inc hl
    inc hl
    ld a, [hl]
    and a
    jp z, Jump_005_5d83

    cp $01
    jp z, Jump_005_5da5

    jp Jump_005_5de2


Call_005_5ca3:
    ld a, [$d03e]
    ld e, a
    ld d, $00
    ld hl, $5cb0
    add hl, de
    add hl, de
    add hl, de
    ret


    cp a
    ld e, h
    nop
    bit 3, h
    nop
    rst $10
    ld e, h
    ld bc, $5ce3
    nop
    cp a
    ld e, h
    ld [bc], a
    ld c, $5e
    inc de
    ld e, [hl]
    and l
    ld e, a
    xor d
    ld e, a
    and b
    ld e, a
    rst $28
    ld e, h
    ld c, a
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, c
    ld e, [hl]
    rst $28
    ld e, h
    rst $28
    ld e, h
    ld [hl], d
    ld e, [hl]
    add [hl]
    ld e, [hl]
    ld a, h
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    add c
    ld e, [hl]
    sub l
    ld e, [hl]
    sbc d
    ld e, [hl]
    xor c
    ld e, [hl]
    and h
    ld e, [hl]
    sbc a
    ld e, [hl]
    rst $28
    ld e, h

Call_005_5cef:
    ld a, $09
    ld hl, $4ae8
    rst $08
    call $1ad2
    ld hl, $5e18
    call $1d3c
    ld a, [$d045]
    ld [$cf88], a
    ld a, [$d046]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d046], a
    ld a, [$cfa9]
    ld [$d045], a
    call $103e
    ld a, [$cf73]
    cp $02
    jr z, jr_005_5d6d

    cp $01
    jr z, jr_005_5d27

jr_005_5d27:
    call Call_005_5c91
    jr c, jr_005_5d68

    call Call_005_5d97
    jr c, jr_005_5d68

    ld de, $d84e
    ld bc, $ffc3
    ld a, $03
    call Call_005_600b
    jr c, jr_005_5d79

    ld hl, $d892
    call $2f66
    jr nc, jr_005_5d6f

    ld a, [$d107]
    ld e, a
    ld d, $00
    ld b, $01
    ld hl, $d043
    call $2e76
    call Call_005_5fc3
    ld de, $d84e
    ld bc, $ffc3
    call Call_005_5ffa
    ld a, $04
    call Call_005_5c7d
    call $0a36

jr_005_5d68:
    call $103e
    and a
    ret


jr_005_5d6d:
    scf
    ret


jr_005_5d6f:
    ld a, $03
    call Call_005_5c7d
    call $0a36
    and a
    ret


jr_005_5d79:
    ld a, $02
    call Call_005_5c7d
    call $0a36
    and a
    ret


Jump_005_5d83:
    ld a, $63
    ld [$d10d], a
    ld a, $00
    call Call_005_5c7d
    ld a, $09
    ld hl, $4fc9
    rst $08
    call $1c07
    ret


Call_005_5d97:
    ld a, $3b
    call $2d83
    ld a, $01
    call Call_005_5c7d
    call $1dcf
    ret


Jump_005_5da5:
    ld a, $01
    ld [$d10c], a
    ld a, [$d107]
    ld e, a
    ld d, $00
    ld b, $02
    ld hl, $d043
    call $2e76
    ld a, c
    and a
    jr nz, jr_005_5dd8

    ld a, [$d107]
    ld e, a
    ld d, $00
    ld hl, $d040
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    add hl, de
    add hl, de
    add hl, de
    inc hl
    ld a, [hl+]
    ldh [$c5], a
    ld a, [hl]
    ldh [$c4], a
    xor a
    ldh [$c3], a
    and a
    ret


jr_005_5dd8:
    ld a, $05
    call Call_005_5c7d
    call $0a36
    scf
    ret


Jump_005_5de2:
    ld a, $00
    call Call_005_5c7d
    call Call_005_5df9
    ld a, $63
    ld [$d10d], a
    ld a, $09
    ld hl, $4fcf
    rst $08
    call $1c07
    ret


Call_005_5df9:
    ld a, [$d107]
    ld e, a
    ld d, $00
    ld hl, $d040
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    add hl, de
    add hl, de
    add hl, de
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    ld d, $fd
    ld c, e
    ld [hl], c
    ld d, b
    ld d, $08
    ld c, h
    ld [hl], c
    ld d, b
    ld b, b
    inc bc
    ld bc, $130b
    jr nz, @+$60

    ld bc, $0430
    ld [$0001], sp
    ldh a, [$d0]
    add hl, bc
    or h
    ld c, d
    dec b
    jr nc, jr_005_5e8b

    add hl, bc
    jp $fa44


    ld [hl], a
    rst $08
    ld c, a
    ld b, $00
    ld hl, $d002
    add hl, bc
    add hl, bc
    add hl, bc
    push de
    ld d, h
    ld e, l
    pop hl
    ld bc, $0014
    add hl, bc
    ld c, $a3
    call $38bb
    ret


    ld d, $28
    ld c, h
    ld [hl], c
    ld d, b
    ld d, $a3
    ld c, h
    ld [hl], c
    ld d, b
    ld d, $ae
    ld c, h
    ld [hl], c
    ld d, b
    ld d, $ce
    ld c, h
    ld [hl], c
    ld d, b
    ld d, $ea
    ld c, h
    ld [hl], c
    ld d, b
    ld d, $08
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $2a
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $47
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $b0
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $cd
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $d6
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $f7
    ld c, l
    ld [hl], c
    ld d, b
    ld d, $28
    ld c, [hl]
    ld [hl], c
    ld d, b

jr_005_5e8b:
    ld d, $46
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $5f
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $7e
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $89
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $ab
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $b9
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $d8
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld d, $f6
    ld c, [hl]
    ld [hl], c
    ld d, b

Call_005_5eb3:
    call $2ed3
    ld a, $04
    ld hl, $46a5
    rst $08

jr_005_5ebc:
    ld a, $04
    ld hl, $46be
    rst $08
    ld a, [$cf66]
    and a
    jp z, Jump_005_5ece

    call Call_005_5ee0
    jr jr_005_5ebc

Jump_005_5ece:
    call $2b74
    and a
    ret


    ld hl, $5edb
    call $1d67
    and a
    ret


    ld d, $12
    ld c, a
    ld [hl], c
    ld d, b

Call_005_5ee0:
    ld a, $03
    ld hl, $5453
    rst $08
    ld a, [$d142]
    ld hl, $5eee
    rst $28
    ret


    db $fd
    ld e, [hl]
    db $fc
    ld e, [hl]
    db $fc
    ld e, [hl]
    db $fc
    ld e, [hl]
    db $fd
    ld e, [hl]
    db $fd
    ld e, [hl]
    db $fd
    ld e, [hl]
    ret


    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    and a
    jr z, jr_005_5f11

    ld hl, $5faf
    call $1057
    and a
    ret


jr_005_5f11:
    ld hl, $5f73
    call $1057
    ld a, $09
    ld hl, $4af8
    rst $08
    ld a, $09
    ld hl, $4fe1
    rst $08
    call $1c07
    jr c, jr_005_5f6e

    ld hl, $c5b9
    ld bc, $0312
    call $0fb6
    ld hl, $5f78
    call $1065
    call $1dcf
    jr c, jr_005_5f6e

    ld de, $d84e
    ld bc, $ffc3
    call Call_005_5fd7
    ld a, [$d107]
    ld hl, $d892
    call $2f53
    ld a, $3b
    call $2d83
    ld hl, $c5b9
    ld bc, $0312
    call $0fb6
    ld hl, $5fbe
    call $1065
    call Call_005_5fc3
    ld a, $09
    ld hl, $4af0
    rst $08
    call $0a36

jr_005_5f6e:
    call $1c07
    and a
    ret


    ld d, $33
    ld c, a
    ld [hl], c
    ld d, b
    ld d, $3e
    ld c, a
    ld [hl], c
    ld d, b
    rst $20
    rrca
    sbc [hl]
    db $e3
    rst $20
    ld d, b
    ld d, $62
    ld c, a
    ld [hl], c
    ld d, b
    ld b, b
    nop
    nop
    ld [$9007], sp
    ld e, a
    ld bc, $0380
    add c
    sub h
    sbc b
    ld d, b
    sub d
    add h
    adc e
    adc e
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, $80
    ld c, a
    ld [hl], c
    ld d, b
    ld d, $9a
    ld c, a
    ld [hl], c
    ld d, b
    ld d, $b7
    ld c, a
    ld [hl], c
    ld d, b
    ld d, $d7
    ld c, a
    ld [hl], c
    ld d, b
    ld d, $f9
    ld c, a
    ld [hl], c
    ld d, b
    ld d, $0d
    ld d, b
    ld [hl], c
    ld d, b
    ld d, $2e
    ld d, b
    ld [hl], c
    ld d, b

Call_005_5fc3:
    call $3c55
    ld de, $0022
    call $3c23
    ret


Call_005_5fcd:
    call $1d4f
    call $0a36
    call $1c07
    ret


Call_005_5fd7:
    ld a, $03
    call Call_005_6053
    ld bc, $5ff7
    ld a, $03
    call Call_005_600b
    jr z, jr_005_5ff5

    jr c, jr_005_5ff5

    ld hl, $5ff7
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    scf
    ret


jr_005_5ff5:
    and a
    ret


    rrca
    ld b, d
    ccf

Call_005_5ffa:
    ld a, $03
    call Call_005_6035
    jr nc, jr_005_6009

    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    scf
    ret


jr_005_6009:
    and a
    ret


Call_005_600b:
    ld a, $03

Call_005_600d:
Jump_005_600d:
    push hl
    push de
    push bc
    ld h, b
    ld l, c
    ld c, $00
    ld b, a

jr_005_6015:
    dec a
    jr z, jr_005_601c

    inc de
    inc hl
    jr jr_005_6015

jr_005_601c:
    and a

jr_005_601d:
    ld a, [de]
    sbc [hl]
    jr z, jr_005_6022

    inc c

jr_005_6022:
    dec de
    dec hl
    dec b
    jr nz, jr_005_601d

    jr c, jr_005_602d

    ld a, c
    and a
    jr jr_005_6031

jr_005_602d:
    ld a, $01
    and a
    scf

jr_005_6031:
    pop bc
    pop de
    pop hl
    ret


Call_005_6035:
    ld a, $03

Call_005_6037:
    push hl
    push de
    push bc
    ld h, b
    ld l, c
    ld b, a
    ld c, $00

jr_005_603f:
    dec a
    jr z, jr_005_6046

    inc de
    inc hl
    jr jr_005_603f

jr_005_6046:
    and a

jr_005_6047:
    ld a, [de]
    sbc [hl]
    ld [de], a
    dec de
    dec hl
    dec b
    jr nz, jr_005_6047

    pop bc
    pop de
    pop hl
    ret


Call_005_6053:
    ld a, $03

Call_005_6055:
    push hl
    push de
    push bc
    ld h, b
    ld l, c
    ld b, a

jr_005_605b:
    dec a
    jr z, jr_005_6062

    inc de
    inc hl
    jr jr_005_605b

jr_005_6062:
    and a

jr_005_6063:
    ld a, [de]
    adc [hl]
    ld [de], a
    dec de
    dec hl
    dec b
    jr nz, jr_005_6063

    pop bc
    pop de
    pop hl
    ret


    ld a, $02
    ld de, $d855
    call Call_005_6055
    ld a, $02
    ld bc, $608d
    call Call_005_600d
    jr c, jr_005_608b

    ld hl, $608d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    scf
    ret


jr_005_608b:
    and a
    ret


    daa
    rrca
    ld a, $02
    ld de, $d855
    call Call_005_6037
    jr nc, jr_005_609f

    xor a
    ld [de], a
    inc de
    ld [de], a
    scf
    ret


jr_005_609f:
    and a
    ret


    ld a, $02
    ld de, $d855
    jp Jump_005_600d


    db $ed
    ld h, b
    di
    ld h, b
    ld a, [$0660]
    ld h, c
    ld de, $1861
    ld h, c
    ld hl, $2b61
    ld h, c
    inc [hl]
    ld h, c
    dec sp
    ld h, c
    ld b, b
    ld h, c
    ld b, [hl]
    ld h, c
    ld c, h
    ld h, c
    ld d, e
    ld h, c
    ld e, [hl]
    ld h, c
    ld l, d
    ld h, c
    ld [hl], b
    ld h, c
    ld a, e
    ld h, c
    add [hl]
    ld h, c
    sub c
    ld h, c
    sbc d
    ld h, c
    and l
    ld h, c
    xor a
    ld h, c
    cp c
    ld h, c
    jp nz, $ce61

    ld h, c
    push de
    ld h, c
    jp c, $e161

    ld h, c
    ld [$f361], a
    ld h, c
    db $fd
    ld h, c
    dec b
    ld h, d
    ld c, $62
    inc b
    ld [hl], d
    add hl, bc
    dec c
    inc c
    rst $38
    dec b
    dec b
    ld [hl], d
    add hl, bc
    dec c
    inc c
    rst $38
    ld a, [bc]
    dec b
    ld [de], a
    inc de
    add hl, bc
    dec c
    inc c
    ld a, [bc]
    dec bc
    dec h
    sbc [hl]
    rst $38
    add hl, bc
    adc d
    dec b
    ld [de], a
    ld de, $1413
    add hl, bc
    dec c
    sbc [hl]
    rst $38
    dec b
    dec hl
    ld de, $3f10
    daa
    rst $38
    rlca
    ccf
    ld de, $0d09
    inc c
    ld a, [bc]
    dec bc
    rst $38
    ld [$0405], sp
    inc de
    inc d
    daa
    ld h, a
    dec h
    sbc [hl]
    rst $38
    rlca
    ld d, $18
    rla
    ld [hl+], a
    ld [$70a9], sp
    rst $38
    dec b
    dec de
    inc e
    dec e
    rra
    ld a, [de]
    rst $38
    inc bc
    jp hl


    ldh a, [$e1]
    rst $38
    inc b
    jp hl


    ldh a, [$e1]
    ret nz

    rst $38
    inc b
    jp hl


    ldh a, [$e1]
    rst $00
    rst $38
    dec b
    jp hl


    ldh a, [$e1]
    ret nz

    rst $00
    rst $38
    add hl, bc
    inc b
    ccf
    db $10
    add hl, bc
    dec c
    inc c
    dec bc
    ld a, [hl+]
    or l
    rst $38
    ld a, [bc]
    ld a, [hl+]
    inc b
    ccf
    ld de, $0d09
    inc c
    ld a, [bc]
    dec bc
    daa
    rst $38
    inc b
    ld d, [hl]
    ld h, a
    dec b
    ld [de], a
    rst $38
    add hl, bc
    ld [hl], d
    inc b
    ld a, [hl]
    db $10
    add hl, bc
    dec c
    ld a, [hl+]
    daa
    sbc [hl]
    rst $38
    add hl, bc
    ccf
    ld [bc], a
    db $10
    ld c, b
    xor l
    daa
    dec hl
    ld a, [hl]
    sub a
    rst $38
    add hl, bc
    ld [bc], a
    db $10
    rrca
    daa
    add hl, bc
    dec c
    inc c
    ld a, [bc]
    ccf
    rst $38
    rlca
    inc b
    ccf
    ld a, [hl+]
    add hl, bc
    dec c
    inc c
    ld a, [bc]
    rst $38
    add hl, bc
    inc b
    ld [bc], a
    ccf
    ld a, [hl+]
    db $10
    ld a, h
    ld a, d
    ld e, a
    or l
    rst $38
    ld [$4804], sp
    ld de, $092b
    dec c
    inc c
    ld a, [bc]
    rst $38
    ld [$3f02], sp
    db $10
    daa
    dec c
    inc c
    ld a, [bc]
    or [hl]
    rst $38
    rlca
    db $10
    dec c
    inc c
    ld a, [bc]
    daa
    ld a, [hl+]
    dec hl
    rst $38
    ld a, [bc]
    dec b
    inc b
    ld [bc], a
    inc de
    ld h, a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    rst $38
    dec b
    ret


    jp z, $d1d0

    push hl
    rst $38
    inc bc
    dec h
    cp b
    or l
    rst $38
    dec b
    ld a, [de]
    dec de
    inc e
    dec e
    rra
    rst $38
    rlca
    ld d, $18
    ld [hl+], a
    rla
    xor c
    ld [$ff7d], sp
    rlca
    inc b
    ld [bc], a
    ccf
    db $10
    ld [hl], b
    dec hl
    sbc [hl]
    rst $38
    ld [$0204], sp
    db $10
    rrca
    daa
    dec hl
    inc de
    sbc [hl]
    rst $38
    ld b, $25
    ld l, $2f
    jr nc, jr_005_6217

    or a
    rst $38
    rlca
    ld [bc], a
    ccf
    db $10
    rrca
    ld c, b
    daa
    ld a, [hl]
    rst $38
    inc b
    ld a, c
    ld a, d
    ld c, e
    ld a, h
    rst $38
    ld [bc], a
    dec b
    ld [de], a

jr_005_6217:
    rst $38
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    xor a
    ld [$cf63], a

jr_005_6223:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_005_622f

    call Call_005_6233
    jr jr_005_6223

jr_005_622f:
    pop af
    ldh [$aa], a
    ret


Call_005_6233:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $6242
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, h
    ld h, d
    ld l, d
    ld h, d
    sub b
    ld h, d
    xor b
    ld h, d
    ldh [$62], a
    ld [hl], e
    ld h, e
    ld b, $64
    dec l
    ld h, h
    inc sp
    ld h, h
    ld a, [$d854]
    bit 7, a
    jr nz, jr_005_6264

    set 7, a
    ld [$d854], a
    ld a, $01
    jr jr_005_6266

jr_005_6264:
    ld a, $02

jr_005_6266:
    ld [$cf63], a
    ret


    ld hl, $6649
    call $1057
    call $1dcf
    jr c, jr_005_627f

    ld hl, $664e
    call $1057
    ld a, $81
    jr jr_005_6281

jr_005_627f:
    ld a, $80

jr_005_6281:
    ld [$d854], a
    ld hl, $6653
    call $1057
    ld a, $08
    ld [$cf63], a
    ret


    ld hl, $6658
    call $1057
    call $1dcf
    jr c, jr_005_629f

    ld a, $03
    jr jr_005_62a4

jr_005_629f:
    call Call_005_6439
    ld a, $07

jr_005_62a4:
    ld [$cf63], a
    ret


    ld hl, $665d
    call $1057
    call $1d6e
    ld hl, $66b5
    call $1d3c
    call $1d81
    call $1c17
    jr c, jr_005_62ce

    ld a, [$cfa9]
    cp $01
    jr z, jr_005_62d2

    cp $02
    jr z, jr_005_62d6

    cp $03
    jr z, jr_005_62da

jr_005_62ce:
    ld a, $07
    jr jr_005_62dc

jr_005_62d2:
    ld a, $05
    jr jr_005_62dc

jr_005_62d6:
    ld a, $04
    jr jr_005_62dc

jr_005_62da:
    ld a, $06

jr_005_62dc:
    ld [$cf63], a
    ret


    ld hl, $6662
    call $1057
    xor a
    ld hl, $d086
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    ld [$cf64], a
    call $1d6e
    call Call_005_6517
    call Call_005_656b
    call Call_005_6571
    call $1c17
    jr c, jr_005_636d

    ld hl, $d086
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_005_636d

    ld de, $d84e
    ld bc, $d086
    ld a, $05
    ld hl, $600b
    rst $08
    jr c, jr_005_635f

    ld hl, $d086
    ld de, $d089
    ld bc, $0003
    call $3026
    ld bc, $d851
    ld de, $d086
    ld a, $05
    ld hl, $5fd7
    rst $08
    jr c, jr_005_6366

    ld bc, $d089
    ld de, $d84e
    ld a, $05
    ld hl, $5ffa
    rst $08
    ld hl, $d086
    ld de, $d851
    ld bc, $0003
    call $3026
    ld de, $0022
    call $3c23
    call $3c55
    ld hl, $668a
    call $1057
    ld a, $08
    jr jr_005_636f

jr_005_635f:
    ld hl, $667b
    call $1057
    ret


jr_005_6366:
    ld hl, $6680
    call $1057
    ret


jr_005_636d:
    ld a, $07

jr_005_636f:
    ld [$cf63], a
    ret


    ld hl, $6667
    call $1057
    xor a
    ld hl, $d086
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    ld [$cf64], a
    call $1d6e
    call Call_005_6512
    call Call_005_656b
    call Call_005_6571
    call $1c17
    jr c, jr_005_6400

    ld hl, $d086
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_005_6400

    ld hl, $d086
    ld de, $d089
    ld bc, $0003
    call $3026
    ld de, $d851
    ld bc, $d086
    ld a, $05
    ld hl, $600b
    rst $08
    jr c, jr_005_63f2

    ld bc, $d84e
    ld de, $d086
    ld a, $05
    ld hl, $5fd7
    rst $08
    jr c, jr_005_63f9

    ld bc, $d089
    ld de, $d851
    ld a, $05
    ld hl, $5ffa
    rst $08
    ld hl, $d086
    ld de, $d84e
    ld bc, $0003
    call $3026
    ld de, $0022
    call $3c23
    call $3c55
    ld hl, $668f
    call $1057
    ld a, $08
    jr jr_005_6402

jr_005_63f2:
    ld hl, $6671
    call $1057
    ret


jr_005_63f9:
    ld hl, $6676
    call $1057
    ret


jr_005_6400:
    ld a, $07

jr_005_6402:
    ld [$cf63], a
    ret


    ld hl, $666c
    call $1057
    call $1dcf
    jr c, jr_005_6422

    ld a, $81
    ld [$d854], a
    ld hl, $6685
    call $1057
    ld a, $08
    ld [$cf63], a
    ret


jr_005_6422:
    ld a, $80
    ld [$d854], a
    ld a, $07
    ld [$cf63], a
    ret


    ld hl, $6694
    call $1057
    ld hl, $cf63
    set 7, [hl]
    ret


Call_005_6439:
    ld a, [$d4c2]
    bit 7, a
    ldh a, [$94]
    jr z, jr_005_6447

    and a
    jr z, jr_005_644b

    jr jr_005_6468

jr_005_6447:
    cp $17
    jr nz, jr_005_6468

jr_005_644b:
    call Call_005_64ea
    ld bc, $c5b9
    ld hl, $64f4
    call $13e5
    call $1dcf
    ret c

    call Call_005_64ea
    ld bc, $c5b9
    ld hl, $64f9
    call $13e5
    ret


jr_005_6468:
    call Call_005_64ea
    ld bc, $c5b9
    ld a, [$d4c2]
    bit 7, a
    jr z, jr_005_6497

    ld hl, $6508
    call $13e5
    call $1dcf
    ret c

    ld a, [$d4c2]
    res 7, a
    ld [$d4c2], a
    call Call_005_64d1
    call Call_005_64ea
    ld bc, $c5b9
    ld hl, $650d
    call $13e5
    ret


jr_005_6497:
    ld hl, $64fe
    call $13e5
    call $1dcf
    ret c

    ld a, [$d4c2]
    set 7, a
    ld [$d4c2], a
    call Call_005_64b9
    call Call_005_64ea
    ld bc, $c5b9
    ld hl, $6503
    call $13e5
    ret


Call_005_64b9:
    ld a, [$d4b7]
    add $01
    sub $18
    jr nc, jr_005_64c4

    add $18

jr_005_64c4:
    ld [$d4b7], a
    ccf
    ld a, [$d4b6]
    adc $00
    ld [$d4b6], a
    ret


Call_005_64d1:
    ld a, [$d4b7]
    sub $01
    jr nc, jr_005_64da

    add $18

jr_005_64da:
    ld [$d4b7], a
    ld a, [$d4b6]
    sbc $00
    jr nc, jr_005_64e6

    add $07

jr_005_64e6:
    ld [$d4b6], a
    ret


Call_005_64ea:
    ld hl, $c5b9
    ld bc, $0312
    call $0fb6
    ret


    ld d, $95
    ld h, b
    ld [hl], c
    ld d, b
    ld d, $d1
    ld h, b
    ld [hl], c
    ld d, b
    ld d, $00
    ld h, b
    ld [hl], c
    ld d, b
    ld d, $30
    ld h, b
    ld [hl], c
    ld d, b
    ld d, $56
    ld h, b
    ld [hl], c
    ld d, b
    ld d, $75
    ld h, b
    ld [hl], c
    ld d, b

Call_005_6512:
    ld de, $669f
    jr jr_005_651a

Call_005_6517:
    ld de, $66a8

jr_005_651a:
    push de
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0612
    call $0fe8
    ld hl, $c4c9
    ld de, $6699
    call $1078
    ld hl, $c4d4
    ld de, $d851
    ld bc, $2306
    call $3198
    ld hl, $c4f1
    ld de, $66b0
    call $1078
    ld hl, $c4fc
    ld de, $d84e
    ld bc, $2306
    call $3198
    ld hl, $c519
    pop de
    call $1078
    ld hl, $c524
    ld de, $d086
    ld bc, $a306
    call $3198
    call $1ad2
    call $3238
    ret


Call_005_656b:
    ld c, $0a
    call $0468
    ret


Call_005_6571:
jr_005_6571:
    call $0a57
    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_005_65b5

    ld a, [hl]
    and $01
    jr nz, jr_005_65b7

    call Call_005_65b9
    xor a
    ldh [$d4], a
    ld hl, $c524
    ld bc, $0007
    ld a, $7f
    call $3041
    ld hl, $c524
    ld de, $d086
    ld bc, $a306
    call $3198
    ldh a, [$9b]
    and $10
    jr nz, jr_005_65b0

    ld hl, $c525
    ld a, [$cf64]
    ld c, a
    ld b, $00
    add hl, bc
    ld [hl], $7f

jr_005_65b0:
    call $31f6
    jr jr_005_6571

jr_005_65b5:
    scf
    ret


jr_005_65b7:
    and a
    ret


Call_005_65b9:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_005_65e3

    ld a, [hl]
    and $80
    jr nz, jr_005_65f5

    ld a, [hl]
    and $20
    jr nz, jr_005_65d2

    ld a, [hl]
    and $10
    jr nz, jr_005_65da

    and a
    ret


jr_005_65d2:
    ld hl, $cf64
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


jr_005_65da:
    ld hl, $cf64
    ld a, [hl]
    cp $05
    ret nc

    inc [hl]
    ret


jr_005_65e3:
    ld hl, $6613
    call Call_005_6607
    ld c, l
    ld b, h
    ld de, $d086
    ld a, $05
    ld hl, $5fd7
    rst $08
    ret


jr_005_65f5:
    ld hl, $6613
    call Call_005_6607
    ld c, l
    ld b, h
    ld de, $d086
    ld a, $05
    ld hl, $5ffa
    rst $08
    ret


Call_005_6607:
    ld a, [$cf64]
    push de
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    pop de
    ret


    ld bc, $a086
    nop
    daa
    stop
    inc bc
    add sp, $00
    nop
    ld h, h
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld bc, $8601
    and b
    nop
    daa
    stop
    inc bc
    add sp, $00
    nop
    ld h, h
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld bc, $bb0d
    and b
    ld bc, $905f
    nop
    inc hl
    jr z, jr_005_6641

jr_005_6641:
    inc bc
    add h
    nop
    nop
    ld e, d
    nop
    nop
    add hl, bc
    ld d, $7f
    ld d, a
    ld l, a
    ld d, b
    ld d, $68
    ld e, b
    ld l, a
    ld d, b
    ld d, $8e
    ld e, b
    ld l, a
    ld d, b
    ld d, $da
    ld e, b
    ld l, a
    ld d, b
    ld d, $42
    ld e, c
    ld l, a
    ld d, b
    ld d, $5b
    ld e, c
    ld l, a
    ld d, b
    ld d, $7a
    ld e, c
    ld l, a
    ld d, b
    ld d, $99
    ld e, c
    ld l, a
    ld d, b
    ld d, $ba
    ld e, c
    ld l, a
    ld d, b
    ld d, $d7
    ld e, c
    ld l, a
    ld d, b
    ld d, $f1
    ld e, c
    ld l, a
    ld d, b
    ld d, $0b
    ld e, d
    ld l, a
    ld d, b
    ld d, $25
    ld e, d
    ld l, a
    ld d, b
    ld d, $5b
    ld e, d
    ld l, a
    ld d, b
    ld d, $7e
    ld e, d
    ld l, a
    ld d, b
    ld d, $90
    ld e, d
    ld l, a
    ld d, b
    sub d
    add b
    sub l
    add h
    add e
    ld d, b
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld d, b
    add a
    add h
    adc e
    add e
    ld d, b
    ld b, b
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    cp l
    ld h, [hl]
    ld bc, $0480
    add [hl]
    add h
    sub e
    ld d, b
    sub d
    add b
    sub l
    add h
    ld d, b
    add d
    add a
    add b
    adc l
    add [hl]
    add h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld hl, $def5
    bit 0, [hl]
    jr nz, jr_005_66fe

    ld hl, $def5
    ld a, $00
    call Call_005_678f
    jr c, jr_005_6724

    call Call_005_6798
    jr c, jr_005_6721

    ld a, $03
    ld hl, $5e2a
    rst $08
    ld hl, $def5
    set 0, [hl]
    call Call_005_67f6
    call Call_005_6a3b
    ret


jr_005_66fe:
    ld a, $03
    ld hl, $6698
    rst $08
    ld hl, $def6
    call Call_005_686d
    call Call_005_6807
    jr c, jr_005_6721

    ld a, $03
    ld hl, $5d21
    rst $08
    call Call_005_6850
    ld hl, $def5
    res 0, [hl]
    res 5, [hl]
    jr jr_005_6724

jr_005_6721:
    call Call_005_689b

jr_005_6724:
    ld a, $13
    call Call_005_689b
    ret


    ld hl, $df2c
    bit 0, [hl]
    jr nz, jr_005_6752

    ld hl, $df2c
    ld a, $02
    call Call_005_6781
    jr c, jr_005_677b

    call Call_005_6798
    jr c, jr_005_6778

    ld a, $03
    ld hl, $5e37
    rst $08
    ld hl, $df2c
    set 0, [hl]
    call Call_005_67f6
    call Call_005_6a3b
    ret


jr_005_6752:
    ld a, $03
    ld hl, $66b3
    rst $08
    ld hl, $df2f
    call Call_005_686d
    call Call_005_6807
    jr c, jr_005_6778

    ld a, $03
    ld hl, $5d42
    rst $08
    call Call_005_6850
    ld hl, $df2c
    res 0, [hl]
    ld hl, $def5
    res 5, [hl]
    jr jr_005_677b

jr_005_6778:
    call Call_005_689b

jr_005_677b:
    ld a, $13
    call Call_005_689b
    ret


Call_005_6781:
    bit 7, [hl]
    jr nz, jr_005_6788

    set 7, [hl]
    inc a

jr_005_6788:
    call Call_005_689b
    call $1dcf
    ret


Call_005_678f:
    set 7, [hl]
    call Call_005_689b
    call $1dcf
    ret


Call_005_6798:
    ld a, [$dcd7]
    cp $02
    jr c, jr_005_67e5

    ld a, $04
    call Call_005_689b
    ld b, $06
    ld a, $14
    ld hl, $401d
    rst $08
    jr c, jr_005_67dd

    ld a, [$d108]
    cp $fd
    jr z, jr_005_67e1

    ld a, $03
    ld hl, $6538
    rst $08
    jr c, jr_005_67e9

    ld hl, $dce0
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld d, [hl]
    ld a, $2e
    ld hl, $5e76
    rst $08
    jr c, jr_005_67ed

    ld hl, $de41
    ld a, [$d109]
    call $38a2
    and a
    ret


jr_005_67dd:
    ld a, $12
    scf
    ret


jr_005_67e1:
    ld a, $06
    scf
    ret


jr_005_67e5:
    ld a, $07
    scf
    ret


jr_005_67e9:
    ld a, $08
    scf
    ret


jr_005_67ed:
    ld a, $0a
    scf
    ret


    ld d, $a7
    ld e, d
    ld l, a
    ld d, b

Call_005_67f6:
    ld a, $05
    call Call_005_689b
    ld a, [$d108]
    call $37ce

Call_005_6801:
    ld a, $09
    call Call_005_689b
    ret


Call_005_6807:
    ld a, [$d087]
    and a
    jr nz, jr_005_6819

    ld a, $0f
    call Call_005_689b
    call $1dcf
    jr c, jr_005_6844

    jr jr_005_682d

jr_005_6819:
    ld a, $0b
    call Call_005_689b
    call $1dcf
    jr c, jr_005_6844

    ld a, $0c
    call Call_005_689b
    call $1dcf
    jr c, jr_005_6844

jr_005_682d:
    ld de, $d84e
    ld bc, $d088
    ld a, $05
    ld hl, $600b
    rst $08
    jr c, jr_005_6848

    ld a, [$dcd7]
    cp $06
    jr nc, jr_005_684c

    and a
    ret


jr_005_6844:
    ld a, $12
    scf
    ret


jr_005_6848:
    ld a, $11
    scf
    ret


jr_005_684c:
    ld a, $10
    scf
    ret


Call_005_6850:
    ld bc, $d088
    ld de, $d84e
    ld a, $05
    ld hl, $5ffa
    rst $08
    ld a, $0d
    call Call_005_689b
    ld a, [$d108]
    call $37ce
    ld a, $0e
    call Call_005_689b
    ret


Call_005_686d:
    ld a, b
    ld [$d086], a
    ld a, d
    ld [$d087], a
    ld de, $d073
    ld bc, $000b
    call $3026
    ld hl, $0000
    ld bc, $0064
    ld a, [$d087]
    call $30fe
    ld de, $0064
    add hl, de
    xor a
    ld [$d088], a
    ld a, h
    ld [$d089], a
    ld a, l
    ld [$d08a], a
    ret


Call_005_689b:
    ld e, a
    ld d, $00
    ld hl, $68aa
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1057
    ret


    jp nc, $d768

    ld l, b
    call c, $e168
    ld l, b
    and $68
    rst $38
    ld l, b
    ldh a, [rBCPS]
    db $eb
    ld l, b
    ld a, [$0468]
    ld l, c
    push af
    ld l, b
    add hl, bc
    ld l, c
    ld c, $69
    inc de
    ld l, c
    jr jr_005_6931

    dec e
    ld l, c
    ld [hl+], a
    ld l, c
    daa
    ld l, c
    inc l
    ld l, c
    ld sp, $1669
    xor c
    ld e, d
    ld l, a
    ld d, b
    ld d, $d8
    ld e, d
    ld l, a
    ld d, b
    ld d, $85
    ld e, e
    ld l, a
    ld d, b
    ld d, $bb
    ld e, e
    ld l, a
    ld d, b
    ld d, $79
    ld e, h
    ld l, a
    ld d, b
    ld d, $97
    ld e, h
    ld l, a
    ld d, b
    ld d, $b8
    ld e, h
    ld l, a
    ld d, b
    ld d, $da
    ld e, h
    ld l, a
    ld d, b
    ld d, $ff
    ld e, h
    ld l, a
    ld d, b
    ld d, $30
    ld e, l
    ld l, a
    ld d, b
    ld d, $4b
    ld e, l
    ld l, a
    ld d, b
    ld d, $64
    ld e, l
    ld l, a
    ld d, b
    ld d, $96
    ld e, l
    ld l, a
    ld d, b
    ld d, $04
    ld e, [hl]
    ld l, a
    ld d, b
    ld d, $1f
    ld e, [hl]
    ld l, a
    ld d, b
    ld d, $32
    ld e, [hl]
    ld l, a
    ld d, b
    ld d, $a2
    ld e, [hl]
    ld l, a
    ld d, b
    ld d, $bc
    ld e, [hl]
    ld l, a
    ld d, b
    ld d, $d9
    ld e, [hl]
    ld l, a
    ld d, b

jr_005_6931:
    ld d, $e9
    ld e, [hl]
    ld l, a
    ld d, b
    ld hl, $def5
    bit 6, [hl]
    jr nz, jr_005_6949

    ld hl, $6944
    call $1057
    ret


    ld d, $f6
    ld e, [hl]
    ld l, a
    ld d, b

jr_005_6949:
    ld hl, $6993
    call $1057
    call $1dcf
    jr c, jr_005_697c

    ld a, [$dcd7]
    cp $06
    jr nc, jr_005_6987

    call Call_005_69ac
    ld hl, $def5
    res 6, [hl]
    call Call_005_6a3b
    ld hl, $6998
    call $1057
    ld de, $0096
    call $3c23
    ld c, $78
    call $0468
    ld hl, $699d
    jr jr_005_697f

jr_005_697c:
    ld hl, $69a2

jr_005_697f:
    call $1057
    xor a
    ld [$c2dd], a
    ret


jr_005_6987:
    ld hl, $69a7
    call $1057
    ld a, $01
    ld [$c2dd], a
    ret


    ld d, $00
    ld e, a
    ld l, a
    ld d, b
    ld d, $a5
    ld e, a
    ld l, a
    ld d, b
    ld d, $ba
    ld e, a
    ld l, a
    ld d, b
    ld d, $d1
    ld e, a
    ld l, a
    ld d, b
    ld d, $f2
    ld e, a
    ld l, a
    ld d, b

Call_005_69ac:
    ld a, [$df9a]
    ld [$d143], a
    ld hl, $dcd7
    ld a, [hl]
    cp $06
    jr nc, jr_005_6a2f

    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, $fd
    ld [hl+], a
    ld a, [$df7b]
    ld [$cf60], a
    ld [$d108], a
    ld a, $ff
    ld [hl], a
    ld hl, $de41
    ld bc, $000b
    call Call_005_6a31
    ld hl, $df65
    call $3026
    ld hl, $ddff
    ld bc, $000b
    call Call_005_6a31
    ld hl, $df70
    call $3026
    ld hl, $dcdf
    ld bc, $0030
    call Call_005_6a31
    ld hl, $df7b
    ld bc, $0020
    call $3026
    call $3856
    ld a, [$dcd7]
    dec a
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld b, h
    ld c, l
    ld hl, $0007
    add hl, bc
    push hl
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    push bc
    ld b, $00
    ld a, $0c
    call $2d83
    pop bc
    ld hl, $0022
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    and a
    ret


jr_005_6a2f:
    scf
    ret


Call_005_6a31:
    ld a, [$dcd7]
    dec a
    call $30fe
    ld d, h
    ld e, l
    ret


Call_005_6a3b:
    ld a, [$df2c]
    bit 0, a
    ret z

    ld a, [$def5]
    bit 0, a
    ret z

    ld hl, $6e1d
    ld a, $05
    rst $08
    ld a, [$d265]
    and a
    ret z

    inc a
    ret z

    ld hl, $def5
    set 5, [hl]

jr_005_6a59:
    call $2f8c
    cp $96
    jr c, jr_005_6a59

    ld [$df2d], a
    jp Jump_005_6a66


Jump_005_6a66:
    xor a
    ld hl, $df7b
    ld bc, $0020
    call $3041
    ld hl, $df65
    ld bc, $000b
    call $3041
    ld hl, $df70
    ld bc, $000b
    call $3041
    ld a, [$df21]
    ld [$d123], a
    ld a, [$df22]
    ld [$d124], a
    ld a, [$df0c]
    ld [$d108], a
    ld a, $03
    ld [$cf5f], a
    ld a, [$df0c]
    cp $84
    ld a, $01
    jr z, jr_005_6ab6

    ld a, [$df45]
    cp $84
    ld a, $00
    jr z, jr_005_6ab6

    ld a, $14
    ld hl, $4bdd
    rst $08
    ld a, $00
    jr z, jr_005_6ab6

    inc a

jr_005_6ab6:
    ld [$df2e], a
    and a
    ld a, [$df0c]
    jr z, jr_005_6ac2

    ld a, [$df45]

jr_005_6ac2:
    ld [$d108], a
    ld hl, $6581
    ld a, $10
    rst $08
    ld hl, $6581
    ld a, $10
    rst $08
    ld a, $05
    ld [$d143], a
    ld a, [$d108]
    cp $1d
    jr nz, jr_005_6ae8

    call $2f8c
    cp $80
    ld a, $1d
    jr c, jr_005_6ae8

    ld a, $20

jr_005_6ae8:
    ld [$d108], a
    ld [$cf60], a
    ld [$df7b], a
    call $3856
    ld hl, $df65
    ld de, $6be0
    call $30d9
    ld hl, $d47d
    ld de, $df70
    ld bc, $000b
    call $3026
    xor a
    ld [$df7c], a
    ld de, $df7d
    xor a
    ld [$d1ea], a
    ld a, $1b
    call $2d83
    ld a, $05
    ld hl, $70bf
    rst $08
    ld hl, $df81
    ld a, [$d47b]
    ld [hl+], a
    ld a, [$d47c]
    ld [hl], a
    ld a, [$d143]
    ld d, a
    ld hl, $4e47
    ld a, $14
    rst $08
    ld hl, $df83
    ldh a, [$b4]
    ld [hl+], a
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    xor a
    ld b, $0a
    ld hl, $df86

jr_005_6b46:
    ld [hl+], a
    dec b
    jr nz, jr_005_6b46

    ld hl, $df90
    call $2f8c
    ld [hl+], a
    ld [$d123], a
    call $2f8c
    ld [hl-], a
    ld [$d124], a
    ld de, $df21
    ld a, [$df0c]
    cp $84
    jr z, jr_005_6b98

    ld de, $df5a
    ld a, [$df45]
    cp $84
    jr z, jr_005_6b98

    ld a, $03
    ld [$cf5f], a
    push hl
    ld a, $14
    ld hl, $4bdd
    rst $08
    pop hl
    ld de, $df21
    ld bc, $df5a
    jr c, jr_005_6bab

    jr z, jr_005_6b90

    ld a, [$df2e]
    and a
    jr z, jr_005_6b98

    ld d, b
    ld e, c
    jr jr_005_6b98

jr_005_6b90:
    ld a, [$df2e]
    and a
    jr nz, jr_005_6b98

    ld d, b
    ld e, c

jr_005_6b98:
    ld a, [de]
    inc de
    and $0f
    ld b, a
    ld a, [hl]
    and $f0
    add b
    ld [hl+], a
    ld a, [de]
    and $07
    ld b, a
    ld a, [hl]
    and $f8
    add b
    ld [hl], a

jr_005_6bab:
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026
    ld hl, $df7d
    ld de, $df92
    ld a, $05
    call $2d83
    ld hl, $d050
    ld de, $d073
    ld bc, $000b
    call $3026
    ld a, [$d245]
    ld hl, $df96
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$d143]
    ld [$df9a], a
    ret


    add h
    add [hl]
    add [hl]
    ld d, b
    ld a, [$ded9]
    and a
    ret z

    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld a, [$cfcc]
    push af
    set 4, a
    ld [$cfcc], a
    call $31f3
    call $0fc8
    ld de, $6d9c
    ld hl, $8ef0
    ld bc, $0501
    call $0f1e
    ld de, $6da4
    ld hl, $8f50
    ld bc, $0501
    call $0f1e
    ld hl, $c4a0
    ld bc, $0312
    call $0fe8
    ld hl, $c504
    ld bc, $0707
    call $0fe8
    ld hl, $c5b8
    ld bc, $0212
    call $0fe8
    ld hl, $c4c9
    ld de, $6d57
    call $1078
    ld hl, $c5e1
    ld de, $6d69
    call $1078
    ld hl, $c522
    ld de, $6d72
    call $1078
    xor a
    ld [$cf63], a
    call Call_005_6cc8
    call $31f6
    ld a, $c9
    ld [$d108], a
    xor a
    ld [$d123], a
    ld [$d124], a
    ld b, $1c
    call $3340
    call $32f9

jr_005_6c6b:
    call $0a57
    ldh a, [$a7]
    and $02
    jr nz, jr_005_6c95

    ldh a, [$a7]
    and $01
    jr nz, jr_005_6c82

    call Call_005_6ca0
    call $045a
    jr jr_005_6c6b

jr_005_6c82:
    ld a, [$cf63]
    push af
    ld a, $21
    ld hl, $4560
    rst $08
    call $3d47
    pop af
    ld [$cf63], a
    jr jr_005_6c6b

jr_005_6c95:
    pop af
    ld [$cfcc], a
    pop af
    ldh [$aa], a
    call $222a
    ret


Call_005_6ca0:
    ldh a, [$a9]
    and $10
    jr nz, jr_005_6cb9

    ldh a, [$a9]
    and $20
    jr nz, jr_005_6cad

    ret


jr_005_6cad:
    ld hl, $cf63
    ld a, [hl]
    and a
    jr nz, jr_005_6cb6

    ld [hl], $1b

jr_005_6cb6:
    dec [hl]
    jr jr_005_6cc4

jr_005_6cb9:
    ld hl, $cf63
    ld a, [hl]
    cp $1a
    jr c, jr_005_6cc3

    ld [hl], $ff

jr_005_6cc3:
    inc [hl]

jr_005_6cc4:
    call Call_005_6cc8
    ret


Call_005_6cc8:
    ld a, [$cf63]
    cp $1a
    jr z, jr_005_6d20

    inc a
    ld [$d234], a
    ld a, $c9
    ld [$d108], a
    xor a
    ld [$c2c6], a
    ld de, $9000
    ld a, $3c
    call $2d83
    call Call_005_6cff
    ld hl, $c519
    xor a
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    ld de, $9310
    ld a, $38
    ld hl, $4000
    rst $08
    ret


Call_005_6cff:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld a, $00
    call $2fcb
    ld de, $d000
    ld hl, $a000
    ldh a, [$9d]
    ld b, a
    ld c, $31
    call $0f82
    call $2fe1
    pop af
    ldh [rSVBK], a
    ret


jr_005_6d20:
    ld hl, $c519
    ld bc, $0707
    call $0fb6
    ld hl, $c555
    ld de, $6d95
    call $1078
    xor a
    call $2fcb
    ld hl, $a000
    ld bc, $0310
    xor a
    call $3041
    ld hl, $9310
    ld de, $a000
    ld c, $31
    ldh a, [$9d]
    ld b, a
    call $0f82
    call $2fe1
    ld c, $14
    call $0468
    ret


    ld a, a
    add b
    adc e
    adc a
    add a
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    sub d
    sub e
    add b
    adc h
    adc a
    ld d, b
    add e
    xor [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $50
    rst $28
    ld a, a
    adc a
    sub c
    adc b
    adc l
    sub e
    ld c, [hl]
    push af
    ld a, a
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld c, [hl]
    rst $18
    ld a, a
    adc a
    sub c
    add h
    sub l
    adc b
    adc [hl]
    sub h
    sub d
    ld c, [hl]
    db $eb
    ld a, a
    adc l
    add h
    sub a
    sub e
    ld d, b
    sub l
    add b
    add d
    add b
    adc l
    sub e
    ld d, b
    nop
    ld e, $36
    ld h, [hl]
    ld h, [hl]
    cp $c6
    add $00
    ld hl, sp-$34
    call z, $ccf8
    call z, $21f8
    and b
    call nz, Call_005_6801
    ld bc, $7f3e
    call $3041
    ld hl, $c583
    ld a, $31
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    ret


    ld hl, $6e04
    call $1057
    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_005_6df8

    ld a, [$d108]
    cp $fd
    jr z, jr_005_6dfd

    ld hl, $6e09
    call $1057
    call $2ed3
    ld a, $21
    ld hl, $461a
    rst $08
    call $2b74
    ldh a, [$ac]
    and a
    jr nz, jr_005_6df8

    ld hl, $6e0e
    jr jr_005_6e00

jr_005_6df8:
    ld hl, $6e13
    jr jr_005_6e00

jr_005_6dfd:
    ld hl, $6e18

jr_005_6e00:
    call $1057
    ret


    ld d, $24
    ld h, b
    ld l, a
    ld d, b
    ld d, $47
    ld h, b
    ld l, a
    ld d, b
    ld d, $6a
    ld h, b
    ld l, a
    ld d, b
    ld d, $00
    ld b, b
    ld [hl], b
    ld d, b
    ld d, $21
    ld b, b
    ld [hl], b
    ld d, b

Call_005_6e1d:
    call Call_005_6ed6
    ld c, $00
    jp nc, Jump_005_6eb7

    ld a, [$df0c]
    ld [$d108], a
    ld a, [$df21]
    ld [$d123], a
    ld a, [$df22]
    ld [$d124], a
    ld a, $03
    ld [$cf5f], a
    ld a, $24
    call $2d83
    jr c, jr_005_6e70

    ld b, $01
    jr nz, jr_005_6e48

    inc b

jr_005_6e48:
    push bc
    ld a, [$df45]
    ld [$d108], a
    ld a, [$df5a]
    ld [$d123], a
    ld a, [$df5b]
    ld [$d124], a
    ld a, $03
    ld [$cf5f], a
    ld a, $24
    call $2d83
    pop bc
    jr c, jr_005_6e70

    ld a, $01
    jr nz, jr_005_6e6d

    inc a

jr_005_6e6d:
    cp b
    jr nz, jr_005_6e89

jr_005_6e70:
    ld c, $00
    ld a, [$df0c]
    cp $84
    jr z, jr_005_6e82

    ld a, [$df45]
    cp $84
    jr nz, jr_005_6eb7

    jr jr_005_6e89

jr_005_6e82:
    ld a, [$df45]
    cp $84
    jr z, jr_005_6eb7

jr_005_6e89:
    call Call_005_6ebc
    ld c, $ff
    jp z, Jump_005_6eb7

    ld a, [$df45]
    ld b, a
    ld a, [$df0c]
    cp b
    ld c, $fe
    jr z, jr_005_6e9f

    ld c, $80

jr_005_6e9f:
    ld a, [$df12]
    ld b, a
    ld a, [$df4b]
    cp b
    jr nz, jr_005_6eb7

    ld a, [$df13]
    ld b, a
    ld a, [$df4c]
    cp b
    jr nz, jr_005_6eb7

    ld a, c
    sub $4d
    ld c, a

Jump_005_6eb7:
jr_005_6eb7:
    ld a, c
    ld [$d265], a
    ret


Call_005_6ebc:
    ld a, [$df21]
    and $0f
    ld b, a
    ld a, [$df5a]
    and $0f
    cp b
    ret nz

    ld a, [$df22]
    and $07
    ld b, a
    ld a, [$df5b]
    and $07
    cp b
    ret


Call_005_6ed6:
    ld a, [$df45]
    ld [$cf60], a
    call $3856
    ld a, [$d24d]
    cp $ff
    jr z, jr_005_6f3a

    ld a, [$df0c]
    ld [$cf60], a
    call $3856
    ld a, [$d24d]
    cp $ff
    jr z, jr_005_6f3a

    ld a, [$df45]
    cp $84
    jr z, jr_005_6f3c

    ld [$cf60], a
    call $3856
    ld a, [$d24d]
    push af
    and $0f
    ld b, a
    pop af
    and $f0
    swap a
    ld c, a
    ld a, [$df0c]
    cp $84
    jr z, jr_005_6f3c

    ld [$cf60], a
    push bc
    call $3856
    pop bc
    ld a, [$d24d]
    push af
    and $0f
    ld d, a
    pop af
    and $f0
    swap a
    ld e, a
    ld a, d
    cp b
    jr z, jr_005_6f3c

    cp c
    jr z, jr_005_6f3c

    ld a, e
    cp b
    jr z, jr_005_6f3c

    cp c
    jr z, jr_005_6f3c

jr_005_6f3a:
    and a
    ret


jr_005_6f3c:
    scf
    ret


    ld de, $dcd8
    ld hl, $dcfa
    ld c, $00

jr_005_6f46:
    ld a, [de]
    inc de
    cp $ff
    ret z

    cp $fd
    jr nz, jr_005_6f56

    dec [hl]
    jr nz, jr_005_6f56

    ld a, $01
    and a
    ret


jr_005_6f56:
    push de
    ld de, $0030
    add hl, de
    pop de
    jr jr_005_6f46

    call $2dba
    call $1d6e
    call Call_005_6f70
    call $2b4d
    call $3d47
    jp $2dcf


Call_005_6f70:
    ld de, $dcd8
    ld hl, $dcfa
    xor a
    ld [$d109], a

Jump_005_6f7a:
    ld a, [de]
    inc de
    cp $ff
    jp z, Jump_005_708a

    push de
    push hl
    cp $fd
    jp nz, Jump_005_707d

    ld a, [hl]
    and a
    jp nz, Jump_005_707d

    ld [hl], $78
    push de
    ld a, $13
    ld hl, $5bb8
    rst $08
    ld a, $41
    ld hl, $608d
    rst $08
    ld a, [$d109]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld a, [hl]
    ld [$d108], a
    dec a
    call $3380
    ld a, [$d108]
    cp $af
    jr nz, jr_005_6fbf

    ld de, $0054
    ld b, $01
    call $2e6f

jr_005_6fbf:
    pop de
    ld a, [$d108]
    dec de
    ld [de], a
    ld [$d265], a
    ld [$cf60], a
    call $343b
    xor a
    ld [$d26b], a
    call $3856
    ld a, [$d109]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    push hl
    ld bc, $0024
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    push hl
    ld bc, $001f
    add hl, bc
    ld a, [hl]
    ld [$d143], a
    pop hl
    push hl
    ld bc, $0020
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    pop hl
    push hl
    ld bc, $000a
    add hl, bc
    ld b, $00
    ld a, $0c
    call $2d83
    pop bc
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $0022
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld hl, $0006
    add hl, bc
    ld a, [$d47b]
    ld [hl+], a
    ld a, [$d47c]
    ld [hl], a
    ld a, [$d109]
    ld hl, $ddff
    ld bc, $000b
    call $30fe
    ld d, h
    ld e, l
    ld hl, $d47d
    call $3026
    ld hl, $708b
    call $1057
    ld a, [$d109]
    ld hl, $de41
    ld bc, $000b
    call $30fe
    ld d, h
    ld e, l
    push de
    ld hl, $70ba
    call $1057
    call $1dcf
    pop de
    jr c, jr_005_7074

    ld a, $01
    ld [$d26b], a
    xor a
    ld [$cf5f], a
    push de
    ld b, $00
    ld a, $04
    ld hl, $56c1
    rst $08
    pop hl
    ld de, $d073
    call $2ef9
    jr jr_005_707d

jr_005_7074:
    ld hl, $d073
    ld bc, $000b
    call $3026

Jump_005_707d:
jr_005_707d:
    ld hl, $d109
    inc [hl]
    pop hl
    ld de, $0030
    add hl, de
    pop de
    jp Jump_005_6f7a


Jump_005_708a:
    ret


    ld d, $b0
    ld c, l
    ld [hl], b
    ld [$ed21], sp
    ret nc

    res 0, [hl]
    push hl
    push de
    push bc
    ld a, [$d108]
    push af
    call Call_005_728f
    ld hl, $70b0
    call $1057
    pop af
    ld [$d108], a
    pop bc
    pop de
    pop hl
    ld hl, $70b5
    ret


    ld d, $b8
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $ba
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $d8
    ld c, l
    ld [hl], b
    ld d, b
    call Call_005_7197
    ld d, h
    ld e, l
    ld b, $04

jr_005_70c6:
    ld a, [de]
    and a
    jr z, jr_005_70e3

    ld hl, $df7d
    ld c, $04

jr_005_70cf:
    ld a, [de]
    cp [hl]
    jr z, jr_005_70df

    inc hl
    dec c
    jr nz, jr_005_70cf

    call Call_005_70e4
    jr nc, jr_005_70df

    call Call_005_7169

jr_005_70df:
    inc de
    dec b
    jr nz, jr_005_70c6

jr_005_70e3:
    ret


Call_005_70e4:
    push bc
    ld a, [$df7b]
    dec a
    ld c, a
    ld b, $00
    ld hl, $7b11
    add hl, bc
    add hl, bc
    ld a, $08
    call $305d

jr_005_70f6:
    ld a, $08
    call $304d
    cp $ff
    jr z, jr_005_7107

    ld b, a
    ld a, [de]
    cp b
    jr z, jr_005_7163

    inc hl
    jr jr_005_70f6

jr_005_7107:
    call Call_005_720b
    ld b, $04

jr_005_710c:
    ld a, [de]
    cp [hl]
    jr z, jr_005_7116

    inc hl
    dec b
    jr z, jr_005_7146

    jr jr_005_710c

jr_005_7116:
    ld a, [$df7b]
    dec a
    ld c, a
    ld b, $00
    ld hl, $65b1
    add hl, bc
    add hl, bc
    ld a, $10
    call $305d

jr_005_7127:
    ld a, $10
    call $304d
    inc hl
    and a
    jr nz, jr_005_7127

jr_005_7130:
    ld a, $10
    call $304d
    and a
    jr z, jr_005_7146

    inc hl
    ld a, $10
    call $304d
    ld b, a
    ld a, [de]
    cp b
    jr z, jr_005_7163

    inc hl
    jr jr_005_7130

jr_005_7146:
    ld hl, $567a

jr_005_7149:
    ld a, $04
    call $304d
    inc hl
    and a
    jr z, jr_005_7166

    ld b, a
    ld a, [de]
    cp b
    jr nz, jr_005_7149

    ld [$d262], a
    ld a, $0e
    call $2d83
    ld a, c
    and a
    jr z, jr_005_7166

jr_005_7163:
    pop bc
    scf
    ret


jr_005_7166:
    pop bc
    and a
    ret


Call_005_7169:
    push de
    push bc
    ld a, [de]
    ld b, a
    ld hl, $df7d
    ld c, $04

jr_005_7172:
    ld a, [hl+]
    and a
    jr z, jr_005_7187

    dec c
    jr nz, jr_005_7172

    ld de, $df7d
    ld hl, $df7e
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

jr_005_7187:
    dec hl
    ld [hl], b
    ld hl, $df7d
    ld de, $df92
    ld a, $05
    call $2d83
    pop bc
    pop de
    ret


Call_005_7197:
    ld hl, $df47
    ld a, [$df0c]
    cp $84
    jr z, jr_005_71b1

    ld a, [$df45]
    cp $84
    jr z, jr_005_71d7

    ld a, [$df2e]
    and a
    ret z

    ld hl, $df0e
    ret


jr_005_71b1:
    ld a, [$d108]
    push af
    ld a, [$df45]
    ld [$d108], a
    ld a, [$df5a]
    ld [$d123], a
    ld a, [$df5b]
    ld [$d124], a
    ld a, $03
    ld [$cf5f], a
    ld a, $24
    call $2d83
    jr c, jr_005_71fb

    jr nz, jr_005_71fb

    jr jr_005_7203

jr_005_71d7:
    ld a, [$d108]
    push af
    ld a, [$df0c]
    ld [$d108], a
    ld a, [$df21]
    ld [$d123], a
    ld a, [$df22]
    ld [$d124], a
    ld a, $03
    ld [$cf5f], a
    ld a, $24
    call $2d83
    jr c, jr_005_7203

    jr nz, jr_005_7203

jr_005_71fb:
    ld hl, $df47
    pop af
    ld [$d108], a
    ret


jr_005_7203:
    ld hl, $df0e
    pop af
    ld [$d108], a
    ret


Call_005_720b:
    ld hl, $df0e
    ld a, [$df0c]
    cp $84
    ret z

    ld a, [$df45]
    cp $84
    jr z, jr_005_7220

    ld a, [$df2e]
    and a
    ret z

jr_005_7220:
    ld hl, $df47
    ret


Call_005_7224:
    push de
    ld [$d108], a
    ld [$cf60], a
    call $3856
    ld hl, $c632
    ld a, $2d
    call $2d83
    pop de
    ld a, $3c
    jp $2d83


Call_005_723c:
    push de
    ld [$d108], a
    ld [$cf60], a
    call $3856
    ld hl, $c632
    ld a, $2d
    call $2d83
    pop de
    ld a, $3e
    jp $2d83


Call_005_7254:
    push af
    call $163a
    push hl
    push bc
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    pop bc
    pop hl
    ld a, b
    ldh [$d7], a
    ld a, c
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    pop af
    call Call_005_7363
    call $32f9
    jp $31f6


Call_005_727f:
    push hl
    push de
    push bc
    ld hl, $4f69
    ld a, $23
    rst $08
    call $045a
    pop bc
    pop de
    pop hl
    ret


Call_005_728f:
    ld a, [$d265]
    ld [$cf63], a
    ld a, [$cf60]
    push af
    ld de, $0000
    call $3b97
    ld a, $02
    ld hl, $4000
    rst $08
    call $0568
    ld hl, $7393
    ld de, $8000
    ld bc, $0020
    ld a, $05
    call $0e8d
    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $9000
    ld a, [$cf63]
    call Call_005_723c
    ld de, $9310
    ld a, $fd
    call Call_005_7224
    ld de, $0022
    call $3b97
    call $058a
    ld hl, $c4f7
    ld b, $98
    ld c, $31
    ld a, $fd
    call Call_005_7254
    ld c, $50
    call $0468
    xor a
    ld [$cf64], a
    ldh a, [$cf]
    ld b, a

jr_005_72ee:
    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $08
    jr nc, jr_005_7327

    ld e, [hl]

jr_005_72f8:
    ld a, $02
    ldh [$cf], a
    ld a, $fe
    ld [$c3c0], a
    call Call_005_727f
    ld c, $02
    call $0468
    ld a, $fe
    ldh [$cf], a
    ld a, $02
    ld [$c3c0], a
    call Call_005_727f
    ld c, $02
    call $0468
    dec e
    jr nz, jr_005_72f8

    ld c, $10
    call $0468
    call Call_005_736d
    jr jr_005_72ee

jr_005_7327:
    ld de, $00a6
    call $3c23
    xor a
    ldh [$cf], a
    ld [$c3c0], a
    call $300b
    call Call_005_73b3
    ld hl, $c4e2
    ld b, $98
    ld c, $00
    ld a, [$cf63]
    call Call_005_7254
    call Call_005_7418
    call $3c55
    ld a, [$cf63]
    ld [$d108], a
    ld hl, $c4e2
    ld d, $00
    ld e, $05
    ld a, $47
    call $2d83
    pop af
    ld [$cf60], a
    ret


Call_005_7363:
    ld [$cd99], a
    ld b, $0b
    ld c, $00
    jp $3340


Call_005_736d:
    ld a, [$cf64]
    dec a
    and $07
    cp $07
    ret z

    srl a
    ret nc

    swap a
    srl a
    add $4c
    ld d, a
    ld e, $58
    ld a, $19
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ld de, $009e
    jp $3c23


    jr nz, jr_005_73b5

    jr @+$1a

    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr @+$1a

    jr nz, jr_005_73c1

    ld b, b
    ld b, b
    ld c, $0e
    ccf
    ld sp, $417f
    rst $38
    add c
    rst $38
    add e
    rst $38
    jp Jump_005_7e7e


    inc a
    inc a

Call_005_73b3:
    ld a, $23

jr_005_73b5:
    ld hl, $4f53
    rst $08
    ld hl, $73ef

jr_005_73bc:
    ld a, [hl+]
    cp $ff
    jr z, jr_005_73e5

jr_005_73c1:
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    push bc
    ld a, $1c
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    pop de
    ld a, e
    ld hl, $0001
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], d
    pop hl
    jr jr_005_73bc

jr_005_73e5:
    ld de, $00a6
    call $3c23
    call Call_005_727f
    ret


    ld d, h
    ld c, b
    nop
    inc a
    ld e, h
    ld c, b
    ld bc, $5404
    ld d, b
    nop
    jr nc, @+$5e

    ld d, b
    ld bc, $5410
    ld e, b
    ld [bc], a
    inc h
    ld e, h
    ld e, b
    inc bc
    inc e
    ld d, b
    ld c, h
    nop
    ld [hl], $60
    ld c, h
    ld bc, $500a
    ld d, h
    ld [bc], a
    ld a, [hl+]
    ld h, b
    ld d, h
    inc bc
    ld d, $ff

Call_005_7418:
    ld c, $81

jr_005_741a:
    call Call_005_727f
    dec c
    jr nz, jr_005_741a

    ret


    ld hl, $7467
    call $1057
    ld a, [$df0c]
    call $37ce
    ld a, [$df2c]
    bit 0, a
    jr z, jr_005_745f

    call $0aaf
    ld hl, $df2f
    call Call_005_746c
    jp $1057


    ld hl, $7462
    call $1057
    ld a, [$df45]
    call $37ce
    ld a, [$def5]
    bit 0, a
    jr z, jr_005_745f

    call $0aaf
    ld hl, $def6
    call Call_005_746c
    jp $1057


jr_005_745f:
    jp $0a80


    ld d, $f3
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $24
    ld c, [hl]
    ld [hl], b
    ld d, b

Call_005_746c:
    push bc
    ld de, $d073
    ld bc, $000b
    call $3026
    call Call_005_6e1d
    pop bc
    ld a, [$d265]
    ld hl, $749c
    cp $ff
    jr z, jr_005_749b

    ld hl, $74a1
    and a
    jr z, jr_005_749b

    ld hl, $74a6
    cp $e6
    jr nc, jr_005_749b

    cp $46
    ld hl, $74ab
    jr nc, jr_005_749b

    ld hl, $74b0

jr_005_749b:
    ret


    ld d, $54
    ld c, [hl]
    ld [hl], b
    ld d, b
    ld d, $6f
    ld c, [hl]
    ld [hl], b
    ld d, b
    ld d, $8d
    ld c, [hl]
    ld [hl], b
    ld d, b
    ld d, $ac
    ld c, [hl]
    ld [hl], b
    ld d, b
    ld d, $c6
    ld c, [hl]
    ld [hl], b
    ld d, b
    ld hl, $74b9
    ret


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_005_7e7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
