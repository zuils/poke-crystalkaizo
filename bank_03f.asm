; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    ld a, [$d1e2]
    ld e, a
    ld a, [$d1e3]
    ld d, a
    ldh a, [$df]
    ld l, a
    inc a
    ldh [$df], a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, b
    sub c
    ld [bc], a
    ld b, h
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    ld l, l
    ld b, l
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    rst $38
    ld b, d
    nop
    nop
    ei
    ld b, d
    ld b, b
    sub c
    ld [bc], a
    ld b, h
    nop
    nop
    cp $42
    ldh a, [$95]
    add a
    ld b, e
    nop
    nop
    cp $42
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    ld l, l
    ld b, l
    nop
    nop
    cp $42
    nop
    nop

jr_03f_4069:
    cp $42
    nop
    nop
    rst $38
    ld b, d
    nop
    nop

jr_03f_4071:
    ei
    ld b, d
    nop
    nop
    ld e, h
    ld b, h
    nop
    nop
    call nz, $0044
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ld a, [c]
    ld b, h
    nop
    nop
    inc e
    ld b, l
    nop
    nop
    ld l, l
    ld b, l
    ld b, b
    sub c
    ld [bc], a
    ld b, h
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    rst $38
    ld b, d
    nop
    nop
    ei
    ld b, d
    ld b, b
    sub c
    ld [bc], a
    ld b, h
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    ld l, l
    ld b, l
    sbc b
    ld c, d
    ld a, b
    ld b, [hl]
    sbc h
    ld c, d
    ld a, b
    ld b, [hl]
    and b
    ld c, d
    ld a, b
    ld b, [hl]
    and h
    ld c, d
    ld a, b
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    rst $38
    ld b, d
    nop
    nop
    ei
    ld b, d
    jr nc, jr_03f_4069

    and d
    ld b, [hl]
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    jr nc, jr_03f_4071

    sub [hl]
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ld l, l
    ld b, l
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ei
    ld b, d
    ld b, b
    sub c
    and d
    ld b, [hl]
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    ld b, b
    sub c
    sub [hl]
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop

jr_03f_4121:
    cp $42
    nop
    nop
    cp $42
    nop
    nop

jr_03f_4129:
    cp $42
    nop
    nop
    ei
    ld b, d
    ld b, b
    sub c
    ld [bc], a

jr_03f_4132:
    ld b, h
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop

jr_03f_4155:
    cp $42
    nop
    nop
    rst $38
    ld b, d
    nop
    nop

jr_03f_415d:
    ei
    ld b, d
    nop
    nop
    db $eb
    ld b, l
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    call z, $0045
    nop
    cp $42
    nop
    nop
    rst $38
    ld b, d
    nop
    nop
    ei
    ld b, d
    jr nc, @-$69

    and d
    ld b, [hl]
    ld b, c
    rst $08
    ld l, d
    ld b, e
    ld b, c
    rst $08
    ld l, d
    ld b, e
    jr nc, @-$69

    sub [hl]
    ld b, [hl]
    jr nc, jr_03f_4121

    and d
    ld b, [hl]
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    jr nc, jr_03f_4129

    sub [hl]
    ld b, [hl]
    jr nc, jr_03f_4132

    and d
    ld b, [hl]
    ld b, c
    rst $08
    ld l, d
    ld b, e
    ld b, c
    rst $08
    ld l, d
    ld b, e
    jr nc, @-$69

    sub [hl]
    ld b, [hl]
    nop
    nop
    ei
    ld b, d
    ld b, b
    sub l
    and d
    ld b, [hl]
    ld b, c
    rst $08
    ld l, d
    ld b, e
    ld b, c
    rst $08
    ld l, d
    ld b, e
    ld b, b
    sub l
    sub [hl]
    ld b, [hl]
    nop
    nop
    cp $42
    jr nc, jr_03f_4155

    and d
    ld b, [hl]
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    jr nc, jr_03f_415d

    sub [hl]
    ld b, [hl]
    nop
    nop
    cp $42
    ld b, b
    sub l
    and d
    ld b, [hl]
    ld b, c
    rst $08
    ld l, d
    ld b, e
    ld b, c
    rst $08
    ld l, d
    ld b, e
    ld b, b
    sub l
    sub [hl]
    ld b, [hl]
    nop
    nop
    ei
    ld b, d
    ld b, b
    sub c
    and d
    ld b, [hl]
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    nop
    nop
    ld e, $47
    ld b, b
    sub c
    sub [hl]
    ld b, [hl]
    nop
    nop
    ld e, $47
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    ld e, $47
    nop
    sub h
    and d
    ld b, [hl]
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    ld l, d
    ld b, e
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    ld l, d
    ld b, e
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    ld l, d
    ld b, e
    nop
    nop
    ld e, $47
    nop
    sub h
    sub [hl]
    ld b, [hl]
    nop
    nop
    ld e, $47
    nop
    nop
    ei
    ld b, d
    ld d, b
    sub e
    and d
    ld b, [hl]
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    nop
    nop
    ld e, $47
    ld d, b
    sub e
    sub [hl]
    ld b, [hl]
    nop
    nop
    ld e, $47
    nop
    nop
    rst $10
    ld b, [hl]
    nop
    nop
    ld e, $47
    db $10
    sub e
    and d
    ld b, [hl]
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    ld l, d
    ld b, e
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    ld l, d
    ld b, e
    nop
    nop
    ld e, $47
    ld b, c
    rst $08
    ld l, d
    ld b, e
    nop
    nop
    ld e, $47
    db $10
    sub e
    sub [hl]
    ld b, [hl]
    nop
    nop
    ld e, $47
    nop
    nop
    ei
    ld b, d
    ld [hl], b
    ld b, a
    ld b, l
    ld b, [hl]
    ld [hl], h
    ld b, a
    ld b, l
    ld b, [hl]
    ld l, b
    ld b, a
    ld b, l
    ld b, [hl]
    ld l, h
    ld b, a
    ld b, l
    ld b, [hl]
    ld h, b
    ld b, a
    ld b, l
    ld b, [hl]
    ld h, h
    ld b, a
    ld b, l
    ld b, [hl]
    ld e, b
    ld b, a
    ld b, l
    ld b, [hl]
    ld e, h
    ld b, a
    ld b, l
    ld b, [hl]
    ld d, b
    ld b, a
    ld b, l
    ld b, [hl]
    ld d, h
    ld b, a
    ld b, l
    ld b, [hl]
    nop
    nop
    ld [hl], e
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ei
    ld b, d
    ldh a, [$94]
    and d
    ld b, [hl]
    ld b, c
    rst $08
    add hl, bc
    ld b, e
    ldh a, [$94]
    sub [hl]
    ld b, [hl]
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ei
    ld b, d
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ei
    ld b, d
    xor a
    ldh [$df], a
    ret


    ld a, [$cfc6]
    inc a
    and $07
    ld [$cfc6], a
    ret


    ld a, [$cfc6]
    inc a
    and $07
    ld [$cfc6], a
    and $04
    jr nz, jr_03f_4327

    jr jr_03f_433b

    ld a, [$cfc6]
    inc a
    and $07
    ld [$cfc6], a
    and $04
    jr nz, jr_03f_436a

    jr jr_03f_434f

jr_03f_4327:
    ld h, d
    ld l, e
    ld c, $04

jr_03f_432b:
    ld a, [hl]
    rlca
    ld [hl+], a
    ld a, [hl]
    rlca
    ld [hl+], a
    ld a, [hl]
    rlca
    ld [hl+], a
    ld a, [hl]
    rlca
    ld [hl+], a
    dec c
    jr nz, jr_03f_432b

    ret


jr_03f_433b:
    ld h, d
    ld l, e
    ld c, $04

jr_03f_433f:
    ld a, [hl]
    rrca
    ld [hl+], a
    ld a, [hl]
    rrca
    ld [hl+], a
    ld a, [hl]
    rrca
    ld [hl+], a
    ld a, [hl]
    rrca
    ld [hl+], a
    dec c
    jr nz, jr_03f_433f

    ret


jr_03f_434f:
    ld h, d
    ld l, e
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld bc, $000e
    add hl, bc
    ld a, $04

jr_03f_435a:
    ld c, [hl]
    ld [hl], e
    dec hl

jr_03f_435d:
    ld b, [hl]
    ld [hl], d
    dec hl
    ld e, [hl]
    ld [hl], c
    dec hl
    ld d, [hl]
    ld [hl], b
    dec hl
    dec a
    jr nz, jr_03f_435a

    ret


jr_03f_436a:
    ld h, d
    ld l, e
    ld de, $000e
    push hl
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop hl
    ld a, $04

jr_03f_4377:
    ld b, [hl]
    ld [hl], d
    inc hl
    ld c, [hl]
    ld [hl], e
    inc hl
    ld d, [hl]
    ld [hl], b
    inc hl
    ld e, [hl]
    ld [hl], c
    inc hl
    dec a
    jr nz, jr_03f_4377

    ret


    ld hl, sp+$00
    ld b, h
    ld c, l
    ld hl, $43a2
    ld a, [$cfc6]
    and $07
    add a
    add l

jr_03f_4395:
    ld l, a
    jr nc, jr_03f_4399

    inc h

jr_03f_4399:
    ld a, [hl+]
    ld h, [hl]

jr_03f_439b:
    ld l, a
    ld sp, hl
    ld l, e
    ld h, d
    jp Jump_03f_46ac


    or d
    ld b, e
    jp nz, $d243

    ld b, e
    ld [c], a
    ld b, e
    jp nc, $e243

    ld b, e
    ld a, [c]
    ld b, e
    or d
    ld b, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h

jr_03f_43bb:
    cp e
    nop
    rst $38
    add d
    ld a, l
    db $10
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
    rst $10
    jr z, jr_03f_4395

    nop
    rst $28
    db $10
    rst $38
    jr c, jr_03f_439b

    ld b, h
    add e
    nop
    add e
    jr z, jr_03f_435d

    ld b, h
    xor e
    nop
    rst $28
    nop
    rst $28
    db $10
    rst $38
    jr c, @-$37

    ld b, h
    add e
    jr z, jr_03f_442d

    add d
    ld a, l
    nop
    rst $28
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $38
    jr z, jr_03f_43bb

    ld b, h
    cp e
    nop
    rst $38
    add d
    ld l, l
    sub d
    ld l, l
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$cfc6]
    and $06
    add a
    add a
    add a
    add $1c
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    ld sp, hl
    ld l, e
    ld h, d
    jp Jump_03f_46ac


    nop
    cp $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop

jr_03f_442d:
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$dbf3]
    bit 2, a
    jr nz, jr_03f_446c

    ld hl, $4484
    jr jr_03f_447d

jr_03f_446c:
    ld a, [$cfc6]
    call Call_03f_454c
    add a
    add a
    add a
    add $84
    ld l, a
    ld a, $00
    adc $44
    ld h, a

jr_03f_447d:
    ld sp, hl
    ld hl, $90c0
    jp Jump_03f_46ac


    xor e
    inc bc
    ld d, a
    inc h
    xor h
    ld c, $13
    ld [hl-], a
    cp [hl]
    jr nc, jr_03f_44ea

    ld c, h
    ld b, a
    ld h, b
    db $ed
    ld a, [c]
    xor e
    inc bc
    ld d, l
    ld h, $aa
    ld a, [bc]
    inc de
    ld a, [hl-]
    cp [hl]
    jr z, jr_03f_44d2

    inc h
    ld l, [hl]
    ld [hl], c
    rst $18
    or b
    xor b
    nop
    push hl
    ldh [$9a], a
    db $fc
    db $f4
    inc l
    cp $4c
    and e
    ld e, [hl]
    add $3a
    xor e
    ld c, l
    xor b
    nop
    or l
    or b
    sbc $e8
    db $fc
    inc e
    cp d
    ld h, [hl]
    rst $30
    ld c, $ba
    ld e, [hl]
    ld b, e
    cp l
    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$dbf3]
    bit 2, a
    jr nz, jr_03f_44d4

    ld hl, $44a4

jr_03f_44d2:
    jr jr_03f_44eb

jr_03f_44d4:
    ld a, [$cfc6]
    call Call_03f_454c
    add a
    add a
    add a
    add $84
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    push bc
    ld bc, $0020
    add hl, bc

jr_03f_44ea:
    pop bc

jr_03f_44eb:
    ld sp, hl
    ld hl, $90f0
    jp Jump_03f_46ac


    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$dbf3]
    bit 2, a
    jr nz, jr_03f_4502

    ld hl, $4484
    jr jr_03f_4515

jr_03f_4502:
    ld a, [$cfc6]
    call Call_03f_454c
    xor $02
    add a
    add a
    add a
    add $84
    ld l, a
    ld a, $00
    adc $44
    ld h, a

jr_03f_4515:
    ld sp, hl
    ld hl, $90c0
    jp Jump_03f_46ac


    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$dbf3]
    bit 2, a
    jr nz, jr_03f_452c

    ld hl, $44a4
    jr jr_03f_4545

jr_03f_452c:
    ld a, [$cfc6]
    call Call_03f_454c
    xor $02
    add a
    add a
    add a
    add $84
    ld l, a
    ld a, $00
    adc $44
    ld h, a

jr_03f_453f:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc

jr_03f_4545:
    ld sp, hl
    ld hl, $90f0
    jp Jump_03f_46ac


Call_03f_454c:
    and a
    jr z, jr_03f_456b

jr_03f_454f:
    cp $01
    jr z, jr_03f_4567

    cp $02
    jr z, jr_03f_456b

    cp $03
    jr z, jr_03f_4567

    cp $04
    jr z, jr_03f_456b

jr_03f_455f:
    cp $05
    jr z, jr_03f_4567

    cp $06
    jr z, jr_03f_456b

jr_03f_4567:
    ld a, $02
    scf
    ret


jr_03f_456b:
    xor a
    ret


    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$cfc6]
    and $02
    ld e, a
    ldh a, [$e6]
    and $01
    add e
    swap a
    ld e, a
    ld d, $00
    ld hl, $458c
    add hl, de
    ld sp, hl
    ld hl, $9030
    jp Jump_03f_46ac


    and d
    inc c
    ld b, c
    ld [de], a
    adc h
    ld hl, $610c
    jr nz, @-$6c

    ld sp, $828c
    ld c, b
    ld b, l
    jr nc, jr_03f_453f

    inc c
    ld c, l
    ld [de], a
    sub d
    dec l
    ld [de], a
    ld l, l
    ld c, h
    or d
    ld b, c
    cp h
    or d
    ld c, b
    ld b, l
    jr nc, jr_03f_454f

    jr @+$43

    inc h
    sbc b
    ld b, d
    add hl, de
    ld b, d
    add b
    ld h, [hl]
    ld bc, $825a
    inc h
    ld b, l
    jr jr_03f_455f

    jr @+$5b

    inc h
    and h
    ld e, d
    dec h
    ld e, d
    sbc b

jr_03f_45c5:
    ld h, [hl]
    dec h
    ld e, d
    sbc d
    inc h
    ld b, l
    jr jr_03f_45c5

    nop
    ld b, h
    ld c, l
    ld a, [$cfc6]
    and $06
    srl a
    inc a
    inc a
    and $03
    swap a
    ld e, a
    ld d, $00
    ld hl, $4605
    add hl, de
    ld sp, hl
    ld hl, $95b0
    jp Jump_03f_46ac


    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$cfc6]
    and $06
    add a
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $4605
    add hl, de
    ld sp, hl
    ld hl, $9380
    jp Jump_03f_46ac


    nop
    rst $38
    add b
    ld a, a
    add hl, de
    rst $20
    inc h
    jp $e718


    ld b, d
    rst $38
    dec a
    cp $72
    rst $38
    ld b, b
    cp a
    ld [$32f7], sp
    db $fd
    db $fc
    ld a, a
    ld a, [hl]
    ei
    ld a, [$2caf]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $80fe
    ld a, a
    ld [de], a
    db $ed
    inc l
    rst $38
    ld [$00ff], sp
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
    ld [$42f7], sp
    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld hl, sp+$00
    ld b, h
    ld c, l
    ld a, [$cfc6]
    and $07
    ld hl, $466b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    add [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld sp, hl
    ld l, e
    ld h, d
    jr jr_03f_46ac

    nop
    db $10
    jr nz, jr_03f_469f

    ld b, b
    jr nc, jr_03f_4692

    db $10
    ld hl, $cfc6
    inc [hl]
    ret


    ld hl, sp+$00
    ld b, h
    ld c, l
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$cfc6]
    and $03
    swap a
    add [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld sp, hl

jr_03f_4692:
    ld l, e
    ld h, d
    jr jr_03f_46ac

    ld hl, sp+$00
    ld b, h
    ld c, l
    ld hl, $cf41
    ld sp, hl
    ld h, d

jr_03f_469f:
    ld l, e
    jr jr_03f_46ac

    ld hl, sp+$00
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    ld sp, hl
    ld hl, $cf41

Jump_03f_46ac:
jr_03f_46ac:
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld h, b
    ld l, c
    ld sp, hl
    ret


    ldh a, [$e6]
    and a
    ret z

    ldh a, [rBGP]
    cp $e4
    ret nz

    ld a, [$cfc6]
    ld l, a
    and $01
    ret nz

    ld a, $98
    ldh [rBCPS], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, l
    and $06
    jr z, jr_03f_4706

    cp $04
    jr z, jr_03f_4711

    ld hl, $d01a
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl+]
    ldh [rBCPD], a
    jr jr_03f_471a

jr_03f_4706:
    ld hl, $d018
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl+]
    ldh [rBCPD], a
    jr jr_03f_471a

jr_03f_4711:
    ld hl, $d01c
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl+]
    ldh [rBCPD], a

jr_03f_471a:
    pop af
    ldh [rSVBK], a
    ret


    ldh a, [$e6]
    and a
    ret z

    ldh a, [rBGP]
    cp $e4
    ret nz

    ld a, [$d847]
    cp $ff
    ret nz

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, $a0
    ldh [rBCPS], a
    ldh a, [$9b]
    and $02
    jr nz, jr_03f_4743

    ld hl, $d020
    jr jr_03f_4746

jr_03f_4743:
    ld hl, $d022

jr_03f_4746:
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl+]
    ldh [rBCPD], a
    pop af
    ldh [rSVBK], a
    ret


    ret nc

    sub d
    ld a, b
    ld b, a
    ldh a, [$92]
    ret z

    ld b, a
    ret nc

    sub e
    jr jr_03f_47a4

    ldh a, [$93]
    ld l, b
    ld c, b
    ret nz

    sub e
    cp b
    ld c, b
    ret nz

    sub d
    ld [$d049], sp
    sub h
    ld e, b
    ld c, c
    ldh a, [$94]
    xor b
    ld c, c
    ret nc

    sub l
    ld hl, sp+$49
    ldh a, [$95]
    ld c, b
    ld c, d
    add b
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ret nz

    ld a, a
    ld e, a
    rst $38
    ld e, a
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    ldh [$3f], a
    cpl
    rst $38
    cpl
    ccf
    rst $28
    ccf
    xor a
    ld a, a
    rst $28
    ccf

jr_03f_47a4:
    xor a
    ld a, a
    rst $28
    ccf
    ldh a, [$1f]
    rla
    rst $38
    rla
    rra
    rst $30
    rra
    or a
    ld e, a
    rst $30
    rra
    sub a
    ld a, a
    rst $30
    rra
    ld hl, sp+$0f
    dec bc
    rst $38
    dec bc
    rrca
    db $eb
    rra
    cp e
    ld c, a
    ei
    rrca
    sbc e
    ld l, a
    ei
    rrca
    rra
    ldh a, [$d0]
    rst $38
    ret nc

    ldh a, [$df]
    ldh a, [$d9]
    or $df
    ldh a, [$df]
    ldh a, [$de]
    pop af
    rrca
    ld hl, sp-$18
    rst $38
    add sp, -$08
    rst $28
    ld hl, sp-$17
    cp $ef
    ld hl, sp-$11
    ld hl, sp-$12
    ld sp, hl
    rlca
    db $fc
    db $f4
    rst $38
    db $f4
    db $fc
    rst $30
    db $fc
    push af
    cp $f7
    db $fc
    rst $30
    db $fc
    or $fd
    inc bc
    cp $fa
    rst $38
    ld a, [$fbfe]
    cp $fb
    cp $fb
    cp $fb
    cp $fa
    rst $38
    ld bc, $fdff
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    ld a, a
    ld e, a
    rst $38
    ld e, a
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $28
    ccf
    cpl
    rst $38
    cpl
    ccf
    rst $28
    ccf
    xor a
    ld a, a
    rst $28
    ccf
    xor a
    ld a, a
    rst $28
    ccf
    rst $30
    rra
    rla
    rst $38
    rla
    rra
    rst $30
    rra
    or a
    ld e, a
    rst $30
    rra
    sub a
    ld a, a
    rst $30
    rra
    ei
    rrca
    dec bc
    rst $38
    dec bc
    rrca
    db $eb
    rra
    cp e
    ld c, a
    ei
    rrca
    sbc e
    ld l, a
    ei
    rrca
    rst $18
    ldh a, [$d8]
    rst $30
    ret nc

    ldh a, [$df]
    ldh a, [$d9]
    or $df
    ldh a, [$df]
    ldh a, [$de]
    pop af
    rst $28
    ld hl, sp-$18
    rst $38
    add sp, -$08
    rst $28
    ld hl, sp-$17
    cp $ef
    ld hl, sp-$11
    ld hl, sp-$12
    ld sp, hl
    rst $30
    db $fc
    db $f4
    rst $38
    db $f4
    db $fc
    rst $30
    db $fc
    push af
    cp $f7
    db $fc
    rst $30
    db $fc
    or $fd
    ei
    cp $fa
    rst $38
    ld a, [$fbfe]
    cp $fb
    cp $fb
    cp $fb
    cp $fa
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    ld a, a
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    ccf
    cpl
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rra
    rla
    rst $38
    ld d, a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rrca
    dec bc
    rst $38
    ld e, e
    rst $38
    xor e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $18
    ldh a, [$d8]
    rst $38
    push de
    rst $38
    jp c, $dfff

    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    ld hl, sp-$18
    rst $38
    db $ed
    rst $38
    ld [$efff], a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    db $fc
    db $f4
    rst $38
    push af
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    cp $fa
    rst $38
    ei
    rst $38
    ld a, [$fbff]
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
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
    add h
    ei
    add h
    ei
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    cp $d1
    xor $d0
    rst $28
    ret nz

    rst $38
    jp nz, $c2fd

    db $fd
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$09
    add sp, -$09
    ldh [rIE], a
    pop hl
    cp $e1
    cp $e0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    ei
    db $f4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fafd]
    db $fd
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rra
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    ld e, a
    cp a
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $18
    cpl
    rst $18
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $28
    rla
    rst $28
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    ei
    rlca
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $30
    dec bc
    rst $30
    inc bc
    rst $38
    ld bc, $03ff
    db $fd
    inc bc
    db $fd
    ld bc, $01ff
    rst $38
    dec b
    ei
    dec b
    ei
    ld bc, $a0ff
    rst $38
    push bc
    rst $38
    xor d
    rst $38
    db $dd
    rst $38
    ld [$ddff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    ld [c], a
    rst $38
    push de
    rst $38
    xor $ff
    push af
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    pop af
    rst $38
    ld [$f7ff], a
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    push af

jr_03f_4a2d:
    rst $38
    ei
    rst $38
    db $fd

jr_03f_4a31:
    rst $38
    ei
    rst $38
    rst $38
    rst $38

jr_03f_4a36:
    rst $38
    rst $38
    ld a, [$fcff]
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff

jr_03f_4a42:
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca

jr_03f_4a79:
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    db $eb
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld [hl], l
    rst $38
    xor e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_03f_4a2d

    xor b
    ld c, d
    jr nc, jr_03f_4a31

    add sp, $4a
    jr nz, jr_03f_4a36

    jr z, @+$4d

    jr nc, @-$6a

    ld l, b
    ld c, e
    nop
    ld [hl], d
    nop
    rst $08
    nop
    or b
    rrca
    ld b, b
    jr jr_03f_4a79

    jr nc, jr_03f_4a42

    ld hl, $2498
    inc de
    nop
    cp a
    nop
    ret c

    rlca
    jr nc, jr_03f_4ac7

    ld b, a
    db $10
    adc $11
    inc c
    ld [de], a

jr_03f_4ac5:
    ret


    ld [hl+], a

jr_03f_4ac7:
    sbc c
    nop

jr_03f_4ac9:
    xor a

jr_03f_4aca:
    nop
    ld [hl], b
    rlca
    ret nz

    inc a
    add e
    ld b, b
    ccf
    nop
    ldh a, [rP1]

jr_03f_4ad5:
    rst $20

jr_03f_4ad6:
    jr @-$39

    nop
    xor a
    nop
    cp b

jr_03f_4adc:
    rlca
    ret nc

    rrca
    ld h, b
    jr jr_03f_4b29

    db $10
    adc h
    db $10
    call $0b10
    nop
    ld h, a
    nop
    ld e, h
    nop
    dec bc
    ldh a, [rTMA]
    jr jr_03f_4ad5

    inc c
    ld [hl], c
    inc c
    sub c
    inc c
    pop de
    nop
    halt
    dec de
    ldh [rTIMA], a
    jr nc, jr_03f_4ac5

    jr jr_03f_4b64

    adc b
    ld [hl-], a
    ld [$48b3], sp
    sub d
    nop
    db $d3
    nop
    ld e, d
    add b

jr_03f_4b0d:
    dec b
    ld [hl], b
    add a
    ld [$04f3], sp
    add hl, sp
    call nz, $2419

jr_03f_4b17:
    ret


    nop
    db $ed
    db $10
    and $08
    ld [hl], e
    adc b
    ld [hl-], a
    adc b
    ld de, $d10c
    inc b
    ld e, c
    inc b
    reti


    inc h

jr_03f_4b29:
    sub e
    inc hl
    sbc b
    jr nz, jr_03f_4aca

    db $10
    rst $08
    ld c, $e1
    ld bc, $00a0
    ld e, d
    nop
    sla b
    sbc e
    jr nz, jr_03f_4ad6

    jr nc, jr_03f_4ac9

    ld de, $1188
    ld c, h
    db $10
    adc $08
    ld h, a
    nop
    or a
    jr nc, jr_03f_4ad5

    jr nc, jr_03f_4ad5

    jr nc, jr_03f_4adc

    jr jr_03f_4b17

    rrca
    ld h, b
    nop
    ret nc

    nop
    ld a, [hl-]
    nop
    and $12
    ld c, c
    db $10
    call Call_03f_4c11
    jr jr_03f_4ba6

    inc c
    and e
    rlca
    and b

jr_03f_4b64:
    nop
    ret c

    nop
    ld l, [hl]
    jr jr_03f_4b0d

    nop
    rst $20
    nop
    rrca
    ld [bc], a
    db $fc
    inc a
    pop bc
    ldh [$03], a
    nop
    ld c, $00
    push af
    ld [$08d0], sp
    or e
    ld [$1831], sp
    ld [c], a
    ldh a, [rTMA]
    ldh [$0b], a
    nop
    dec e
    nop
    push af
    inc h
    ret z

    add h
    add hl, de
    inc c
    ld [hl], c
    jr @-$1b

    ldh a, [rSC]
    nop
    dec c
    nop
    di
    nop
    ld c, [hl]
    ld b, h
    sbc c
    ld c, b
    sub e
    adc b
    jr nc, jr_03f_4ba7

    ld [hl], e
    db $10
    ld [c], a
    ldh [$0c], a
    nop
    dec de

jr_03f_4ba6:
    nop

jr_03f_4ba7:
    db $fd
    ld a, e
    ld [$cf63], a
    call Call_03f_4c59
    ld b, $02
    call Call_03f_4c4a
    ld a, $04
    jr nz, jr_03f_4c03

    ld a, $00
    call Call_03f_4f38
    call $1dcf
    ld a, $01
    jr c, jr_03f_4c03

    ld b, $06
    ld a, $14
    ld hl, $401d
    rst $08
    ld a, $01
    jr c, jr_03f_4c03

    ld e, $01
    call Call_03f_4dc2
    ld a, [$d108]
    cp [hl]
    ld a, $02
    jr nz, jr_03f_4c03

    call Call_03f_4c23
    ld a, $02
    jr c, jr_03f_4c03

    ld b, $01
    call Call_03f_4c4a
    ld hl, $4f7b
    call $1057
    call Call_03f_4c63
    call Call_03f_4c07
    call Call_03f_4e1b
    ld hl, $4f80
    call $1057
    call $3d47
    ld a, $03

jr_03f_4c03:
    call Call_03f_4f38
    ret


Call_03f_4c07:
    call $2ed3
    ld a, [$cf63]
    push af
    ld a, [$cf64]

Call_03f_4c11:
    push af
    ld a, $1e
    call $2d83
    pop af
    ld [$cf64], a
    pop af
    ld [$cf63], a
    call $2b74
    ret


Call_03f_4c23:
    xor a
    ld [$cf5f], a
    ld e, $1e
    call Call_03f_4dc2
    ld a, [hl]
    and a
    jr z, jr_03f_4c46

    cp $01
    jr z, jr_03f_4c3e

    ld a, $14
    ld hl, $4bdd
    rst $08
    jr nz, jr_03f_4c48

    jr jr_03f_4c46

jr_03f_4c3e:
    ld a, $14
    ld hl, $4bdd
    rst $08
    jr z, jr_03f_4c48

jr_03f_4c46:
    and a
    ret


jr_03f_4c48:
    scf
    ret


Call_03f_4c4a:
    ld hl, $d960
    ld a, [$cf63]
    ld c, a
    ld a, $03
    call $2d83
    ld a, c
    and a
    ret


Call_03f_4c59:
    ld e, $00
    call Call_03f_4dc2
    ld a, [hl]
    ld [$cf64], a
    ret


Call_03f_4c63:
    ld e, $01
    call Call_03f_4dc2
    ld a, [hl]
    ld [$c6d0], a
    ld e, $02
    call Call_03f_4dc2
    ld a, [hl]
    ld [$c702], a
    ld a, [$c6d0]
    ld de, $c6d1
    call Call_03f_4de8
    call Call_03f_4df4
    ld a, [$c702]
    ld de, $c703
    call Call_03f_4de8
    call Call_03f_4df4
    ld hl, $ddff
    ld bc, $000b
    call Call_03f_4dd7
    ld de, $c6f2
    call Call_03f_4df4
    ld hl, $d47d
    ld de, $c6e7
    call Call_03f_4df4
    ld hl, $dce5
    ld bc, $0030
    call Call_03f_4dd7
    ld de, $c6ff
    call Call_03f_4e0f
    ld hl, $dcf4
    ld bc, $0030
    call Call_03f_4dd7
    ld de, $c6fd
    call Call_03f_4e0f
    ld hl, $dcdf
    ld bc, $0030
    call Call_03f_4dd7
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c701], a
    ld e, $00
    call Call_03f_4dc2
    ld a, [hl]
    cp $03
    ld a, $01
    jr c, jr_03f_4ce6

    ld a, $02

jr_03f_4ce6:
    ld [$c733], a
    ld hl, $dcfe
    ld bc, $0030
    call Call_03f_4dd7
    ld a, [hl]
    ld [$d143], a
    ld a, [$c702]
    ld [$d108], a
    xor a
    ld [$cf5f], a
    ld [$d10b], a
    ld hl, $6039
    ld a, $03
    rst $08
    ld a, $06
    call $2d83
    ld e, $00
    call Call_03f_4dc2
    ld a, [hl]
    cp $03
    ld b, $00
    jr c, jr_03f_4d1c

    ld b, $01

jr_03f_4d1c:
    ld a, $13
    ld hl, $5ba3
    rst $08
    ld e, $03
    call Call_03f_4dc2
    ld de, $c70e
    call Call_03f_4df4
    ld hl, $de41
    ld bc, $000b
    call Call_03f_4dde
    ld hl, $c70e
    call Call_03f_4df4
    ld e, $13
    call Call_03f_4dc2
    push hl
    ld de, $c724
    call Call_03f_4df4
    pop hl
    ld de, $c719
    call Call_03f_4df4
    ld hl, $ddff
    ld bc, $000b
    call Call_03f_4dde
    ld hl, $c724
    call Call_03f_4df4
    ld e, $0e
    call Call_03f_4dc2
    ld de, $c72f
    call Call_03f_4e0f
    ld hl, $dcf4
    ld bc, $0030
    call Call_03f_4dde
    ld hl, $c72f
    call Call_03f_4e0f
    ld e, $11
    call Call_03f_4dc2
    ld de, $c732
    call Call_03f_4e15
    ld hl, $dce5
    ld bc, $0030
    call Call_03f_4dde
    ld hl, $c731
    call Call_03f_4e0f
    ld e, $10
    call Call_03f_4dc2
    push hl
    ld hl, $dce0
    ld bc, $0030
    call Call_03f_4dde
    pop hl
    ld a, [hl]
    ld [de], a
    push af
    push bc
    push de
    push hl
    ld a, [$d109]
    push af
    ld a, [$dcd7]
    dec a
    ld [$d109], a
    ld a, $03
    ld hl, $6134
    rst $08
    pop af
    ld [$d109], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03f_4dc2:
    ld d, $00
    push de
    ld a, [$cf63]
    and $0f
    swap a
    ld e, a
    ld d, $00
    ld hl, $4e58
    add hl, de
    add hl, de
    pop de
    add hl, de
    ret


Call_03f_4dd7:
    ld a, [$d109]
    call $30fe
    ret


Call_03f_4dde:
    ld a, [$dcd7]
    dec a
    call $30fe
    ld e, l
    ld d, h
    ret


Call_03f_4de8:
    push de
    ld [$d265], a
    call $3420
    ld hl, $d073
    pop de
    ret


Call_03f_4df4:
    ld bc, $000b
    call $3026
    ret


    ld bc, $0004
    call $3026
    ld a, $50
    ld [de], a
    ret


    ld bc, $0003
    call $3026
    ld a, $50
    ld [de], a
    ret


Call_03f_4e0f:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_03f_4e15:
    ld a, [hl+]
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    ret


Call_03f_4e1b:
    ld e, $02
    call Call_03f_4dc2
    ld a, [hl]
    call Call_03f_4de8
    ld de, $d086
    call Call_03f_4df4
    ld e, $01
    call Call_03f_4dc2
    ld a, [hl]
    call Call_03f_4de8
    ld de, $d050
    call Call_03f_4df4
    ld hl, $d073

jr_03f_4e3c:
    ld a, [hl+]
    cp $50
    jr nz, jr_03f_4e3c

    dec hl
    push hl
    ld e, $1e
    call Call_03f_4dc2
    ld a, [hl]
    pop hl
    and a
    ret z

    cp $01
    ld a, $ef
    jr z, jr_03f_4e54

    ld a, $f5

jr_03f_4e54:
    ld [hl+], a
    ld [hl], $50
    ret


    nop
    adc [hl]
    sub c
    sbc c
    add b
    adc a
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    scf
    ld h, [hl]
    xor [hl]
    ld d, h
    sub d
    adc h
    adc b
    adc d
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    nop
    ld b, l
    ld e, a
    sub c
    adc [hl]
    add d
    adc d
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    ld h, [hl]
    ld d, e
    ld e, $bf
    adc d
    sbc b
    adc e
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    ld bc, $90e3
    add b
    sub c
    sub e
    adc b
    add d
    sub h
    adc l
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    sbc b
    adc b
    ld c, [hl]
    dec b
    ld [hl], d
    sub e
    adc b
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    inc bc
    pop af
    sub d
    adc h
    adc [hl]
    adc e
    sub e
    sub c
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl], a
    ld h, [hl]
    ld l, d
    dec de
    ld bc, $8c84
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [bc], a
    nop
    ld [bc], a
    ld [hl], c
    sub a
    adc h
    add h
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    add [hl]
    sub [hl]
    nop
    dec a
    add d
    add a
    sub c
    adc b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    inc bc
    ld a, [c]
    ei
    add d
    add h
    adc e
    add h
    add c
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    ld h, [hl]
    xor [hl]
    ld a, e
    ld h, a
    adc d
    adc b
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    nop
    adc a
    sub [hl]
    adc h
    add h
    sub [hl]
    sub e
    sub [hl]
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    ld h, [hl]
    adc a
    and d
    jp $8e85


    sub c
    add h
    sub d
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop

Call_03f_4f38:
    push af
    call Call_03f_4e1b
    pop af
    ld bc, $0008
    ld hl, $4f53
    call $30fe
    ld a, [$cf64]
    ld c, a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1057
    ret


    sub a
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    ret


    ld c, a
    sbc h
    ld c, a
    or l
    ld c, a
    or l
    ld c, a
    adc $4f
    and c
    ld c, a
    cp d
    ld c, a
    cp d
    ld c, a
    db $d3
    ld c, a
    and [hl]
    ld c, a
    cp a
    ld c, a
    ld [c], a
    ld c, a
    ret c

    ld c, a
    xor e
    ld c, a
    call nz, $e74f
    ld c, a
    db $dd
    ld c, a
    ld d, $07
    ld d, h
    ld l, a
    ld d, b
    ld d, $29
    ld d, h
    ld l, a
    ld [$0011], sp
    nop
    call $3b97
    call $045a
    ld hl, $4f92
    ret


    ld d, $45
    ld d, h
    ld l, a
    ld d, b
    ld d, $49
    ld d, h
    ld l, a
    ld d, b
    ld d, $8c
    ld d, h
    ld l, a
    ld d, b
    ld d, $aa
    ld d, h
    ld l, a
    ld d, b
    ld d, $d2
    ld d, h
    ld l, a
    ld d, b
    ld d, $f4
    ld d, h
    ld l, a
    ld d, b
    ld d, $12
    ld d, l
    ld l, a
    ld d, b
    ld d, $65
    ld d, l
    ld l, a
    ld d, b
    ld d, $a1
    ld d, l
    ld l, a
    ld d, b
    ld d, $cc
    ld d, l
    ld l, a
    ld d, b
    ld d, $f4
    ld d, l
    ld l, a
    ld d, b
    ld d, $21
    ld d, [hl]
    ld l, a
    ld d, b
    ld d, $73
    ld d, [hl]
    ld l, a
    ld d, b
    ld d, $96
    ld d, [hl]
    ld l, a
    ld d, b
    ld d, $cd
    ld d, [hl]
    ld l, a
    ld d, b
    ld d, $f5
    ld d, [hl]
    ld l, a
    ld d, b
    ld d, $31
    ld d, a
    ld l, a
    ld d, b
    ld d, $45
    ld d, a
    ld l, a
    ld d, b
    ld a, [$d45c]
    and a
    ret nz

    call $2d05
    and a
    ret nz

    xor a
    ld [$dc18], a
    call Call_03f_5044
    ret nc

    call Call_03f_50c3
    ret nc

    ld b, $3f
    ld de, $500f
    ld a, $25
    ld hl, $7c4f
    rst $08
    scf
    ret


    ld c, $3f
    rla
    ld d, b
    inc b
    inc h
    ld b, c
    ld b, d
    call Call_03f_50a6
    call Call_03f_50eb
    ld a, [$dc18]
    and a
    jr nz, jr_03f_5027

    ld hl, $dc17
    inc [hl]

jr_03f_5027:
    ld a, $01
    ld [$dbf9], a
    ld bc, $d03f
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    inc hl
    ld [hl], $01
    ld hl, $0009
    add hl, bc
    ld a, $3f
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


Call_03f_5044:
    ld a, [$dc17]
    cp $0a
    jr nc, jr_03f_5065

    call Call_03f_5117
    ld a, [hl+]
    ldh [$c3], a
    ld a, [hl+]
    ldh [$c4], a
    ld a, [hl+]
    ldh [$c5], a
    ld de, $d851
    ld bc, $ffc3
    ld a, $05
    ld hl, $600b
    rst $08
    jr nc, jr_03f_5067

jr_03f_5065:
    jr jr_03f_5069

jr_03f_5067:
    scf
    ret


jr_03f_5069:
    ld hl, $ffc3
    ld [hl], $00
    inc hl
    ld [hl], $08
    inc hl
    ld [hl], $fc

jr_03f_5074:
    ld de, $dc19
    ld bc, $d851
    ld a, $05
    ld hl, $600b
    rst $08
    jr z, jr_03f_508b

    jr nc, jr_03f_5089

    call Call_03f_5099
    jr jr_03f_5074

jr_03f_5089:
    xor a
    ret


jr_03f_508b:
    call Call_03f_5099
    ld a, $05
    call $2fb1
    inc a
    ld [$dc18], a
    scf
    ret


Call_03f_5099:
    ld de, $dc19
    ld bc, $ffc3
    ld a, $05
    ld hl, $6053
    rst $08
    ret


Call_03f_50a6:
    call Call_03f_5117
    ld de, $0003
    add hl, de
    ld a, [hl+]
    ldh [$c3], a
    ld a, [hl+]
    ldh [$c4], a
    ld a, [hl+]
    ldh [$c5], a
    ld de, $d851
    ld bc, $ffc3
    ld a, $05
    ld hl, $5ffa
    rst $08
    ret


Call_03f_50c3:
    call Call_03f_5117
    ld de, $0006
    add hl, de
    ld a, [hl+]
    cp $01
    jr z, jr_03f_50db

    ld a, [hl]
    ld c, a
    ld b, $01
    ld a, $09
    ld hl, $6ef1
    rst $08
    scf
    ret


jr_03f_50db:
    ld a, [hl]
    ld [$d106], a
    ld a, $01
    ld [$d10c], a
    ld hl, $d8f1
    call $2f66
    ret


Call_03f_50eb:
    call Call_03f_5117
    ld de, $0006
    add hl, de
    ld a, [hl+]
    ld de, $50fd
    cp $01
    ret z

    ld de, $510a
    ret


    ld c, h
    or c
    ld d, c
    ld c, h
    or [hl]
    ld d, c
    ld c, h
    cp e
    ld d, c
    ld c, h
    ret nz

    ld d, c
    sub c
    ld c, h
    or c
    ld d, c
    ld c, h
    push bc
    ld d, c
    ld c, h
    cp e
    ld d, c
    ld c, h
    jp z, $9151

Call_03f_5117:
    ld a, [$dc18]
    and a
    jr z, jr_03f_5123

    dec a
    ld de, $5136
    jr jr_03f_512e

jr_03f_5123:
    ld a, [$dc17]
    cp $0a
    jr c, jr_03f_512b

    xor a

jr_03f_512b:
    ld de, $515e

jr_03f_512e:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ret


    nop
    nop
    nop
    nop
    ld [bc], a
    ld e, b
    ld bc, $0011
    nop
    nop
    nop
    nop
    ld e, d
    ld bc, $0009
    nop
    nop
    nop
    nop
    or h
    ld bc, $0005
    nop
    nop
    nop
    ld bc, $01c2
    inc de
    nop
    nop
    nop
    nop
    ld bc, $01f4
    inc b
    nop
    inc bc
    add h
    nop
    ld [bc], a
    ld e, b
    ld bc, $0011
    rrca
    and b
    nop
    ld bc, $010e
    inc d
    nop
    dec de
    ld e, b
    nop
    ld [bc], a
    ld e, b
    ld bc, $0011
    daa
    stop
    rlca
    ld [$2302], sp
    nop
    ld a, [hl-]
    sbc b
    nop
    dec bc
    cp b
    ld bc, $0008
    ld c, d
    jr c, jr_03f_518a

jr_03f_518a:
    ld [bc], a
    ld e, b
    ld bc, $0011
    ld [hl], l
    jr nc, jr_03f_5192

jr_03f_5192:
    ld [de], a
    ret nz

    ld [bc], a
    jr nz, jr_03f_5197

jr_03f_5197:
    sbc h
    ld b, b
    nop
    inc bc
    add h
    ld bc, $0010
    jp TimerOverflowInterrupt


    rra
    ld b, b
    ld [bc], a
    ld e, $01
    add [hl]
    and b
    nop
    ld e, c
    db $10
    ld [bc], a
    ld a, [de]
    nop
    nop
    nop
    ld d, $15
    ld b, [hl]
    ld l, a
    ld d, b
    ld d, $2a
    ld b, [hl]
    ld l, a
    ld d, b
    ld d, $4e
    ld b, [hl]
    ld l, a
    ld d, b
    ld d, $73
    ld b, [hl]
    ld l, a
    ld d, b
    ld d, $93
    ld b, [hl]
    ld l, a
    ld d, b
    ld d, $c7
    ld b, [hl]
    ld l, a
    ld d, b
    nop
    ret


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
