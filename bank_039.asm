; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    ld a, h

Jump_039_4001:
    db $38, $c6
    ld b, h
    cp d
    sbc d
    and d
    and d
    cp d
    sbc d
    add $44
    ld a, h
    jr c, jr_039_400f

jr_039_400f:
    nop
    nop
    nop
    rst $28
    rst $20
    ld l, l
    ld l, l
    ld l, a
    ld l, a
    ld h, c
    ld h, c
    ld l, a
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    inc e
    or [hl]
    or [hl]
    cp [hl]
    cp [hl]
    add [hl]
    add [hl]
    cp [hl]
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    ret nz

    ret nz

    ei
    ei
    jr jr_039_4052

    ld hl, sp+$70
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, b
    dec c
    dec c
    ld a, l
    dec a
    ld h, c
    ld h, c
    ld a, l
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_4052:
    rst $30
    db $e3
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    rst $30
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $cc9c
    call z, $cccc
    call z, $cccc
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    dec sp
    dec sp
    scf
    scf
    scf
    scf
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rrca
    rrca
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_40c4

    ld a, e
    ld a, e
    or [hl]
    or [hl]
    or a
    or a
    or a
    or e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    cp h
    or [hl]
    or [hl]
    ld [hl], $36
    or [hl]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_40cc

    ld a, e
    ld a, c
    db $db
    db $db
    db $db
    db $db
    ld a, e
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_40c4:
    ldh [$c0], a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh [$c0], a

jr_039_40cc:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $1e
    jr nc, jr_039_4106

    jr nc, @+$32

    jr nc, @+$32

    ld a, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $20
    call $cecd
    adc $cf
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    dec a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld a, $3e
    nop
    nop
    nop

Call_039_40ff:
    nop
    nop
    nop
    ret nz

    ret nz

    db $ed
    db $ed

jr_039_4106:
    call $cdcd
    call $c7cf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    cp l
    or e
    or e
    or e
    or e
    or e
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    rst $08
    ld e, h
    ld e, h
    add a
    add a
    rst $18
    sbc $00
    nop
    nop
    nop
    nop
    nop
    ld a, $1e
    jr nc, jr_039_4166

    ld [hl], $36
    ld [hl], $36
    ld a, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$db72]
    db $db
    ei
    ei
    db $db
    db $db
    db $db
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec de
    dec de
    ei
    cp e
    ld e, e
    ld e, e
    dec de
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    ld b, $06

jr_039_4166:
    rst $00
    rst $00
    ld b, $06
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    cp h
    ld [hl], $36
    cp [hl]
    cp h
    ld [hl], $36
    ld [hl], $36
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    di
    add $c6
    rst $30
    rst $30
    add $c6
    or $f6
    nop
    nop
    nop
    nop
    nop
    nop
    db $db
    sbc e
    sbc $de
    sbc $dc
    db $db
    db $db
    db $db
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_41bc

    inc bc
    inc bc
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc $8e
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, [hl]
    ld c, [hl]

jr_039_41bc:
    nop
    nop
    nop
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

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld hl, $ffaa
    ld a, [hl]
    push af
    ld [hl], $01
    call $31f3
    ld hl, $c4a0
    ld b, $10
    ld c, $12
    call $0fe8
    ld hl, $c4ca
    ld de, $4241
    call $1078
    xor a
    ld [$cf63], a
    ld c, $06

jr_039_41f3:
    push bc
    xor a
    ldh [$a9], a
    call Call_039_42d6
    pop bc
    ld hl, $cf63
    inc [hl]
    dec c
    jr nz, jr_039_41f3

    call Call_039_4512
    xor a
    ld [$cf63], a
    inc a
    ldh [$d4], a
    call $31f6
    ld b, $08
    call $3340
    call $32f9

jr_039_4217:
    call $0a57
    ldh a, [$a7]
    and $0a
    jr nz, jr_039_4234

    call Call_039_452a
    jr c, jr_039_422a

    call Call_039_42d6
    jr c, jr_039_4234

jr_039_422a:
    call Call_039_455c
    ld c, $03
    call $0468
    jr jr_039_4217

jr_039_4234:
    ld de, $0022
    call $3c23
    call $3c55
    pop af
    ldh [$aa], a
    ret


    sub e
    add h
    sub a
    sub e
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    ld [hl+], a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub d
    add d
    add h
    adc l
    add h
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    ld [hl+], a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub d
    sub e
    sbc b
    adc e
    add h
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    ld [hl+], a
    sub d
    adc [hl]
    sub h
    adc l
    add e
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    ld [hl+], a
    adc a
    sub c
    adc b
    adc l
    sub e
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    ld [hl+], a
    adc h
    add h
    adc l
    sub h
    ld a, a
    add b
    add d
    add d
    adc [hl]
    sub h
    adc l
    sub e
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    ld [hl+], a
    add l
    sub c
    add b
    adc h
    add h
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc h
    sub e
    sbc b
    adc a
    add h
    ld [hl+], a
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_039_42d6:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $42e5
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push af
    ld b, d
    ld h, l
    ld b, e
    and b
    ld b, e
    db $dd
    ld b, e
    inc h
    ld b, h
    pop bc
    ld b, h
    ld a, [$2044]
    ld b, l
    call Call_039_4346
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_430d

    bit 4, a
    jr z, jr_039_431f

    ld a, c
    cp $02
    jr c, jr_039_4309

    ld c, $ff

jr_039_4309:
    inc c
    ld a, e
    jr jr_039_4315

jr_039_430d:
    ld a, c
    and a
    jr nz, jr_039_4313

    ld c, $03

jr_039_4313:
    dec c
    ld a, d

jr_039_4315:
    ld b, a
    ld a, [$cfcc]
    and $f0
    or b
    ld [$cfcc], a

jr_039_431f:
    ld b, $00
    ld hl, $4331
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c4e7
    call $1078
    and a
    ret


    scf
    ld b, e
    inc a
    ld b, e
    ld b, c
    ld b, e
    add l
    add b
    sub d
    sub e
    ld d, b
    adc h
    adc b
    add e
    ld a, a
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    ld d, b

Call_039_4346:
    ld a, [$cfcc]
    and $07
    cp $05
    jr z, jr_039_4359

    cp $01
    jr z, jr_039_435f

    ld c, $01
    ld de, $0105
    ret


jr_039_4359:
    ld c, $02
    ld de, $0301
    ret


jr_039_435f:
    ld c, $00
    ld de, $0503
    ret


    ld hl, $cfcc
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_4378

    bit 4, a
    jr z, jr_039_437e

    bit 7, [hl]
    jr nz, jr_039_4384

    jr jr_039_438b

jr_039_4378:
    bit 7, [hl]
    jr z, jr_039_438b

    jr jr_039_4384

jr_039_437e:
    bit 7, [hl]
    jr z, jr_039_4384

    jr jr_039_438b

jr_039_4384:
    res 7, [hl]
    ld de, $4398
    jr jr_039_4390

jr_039_438b:
    set 7, [hl]
    ld de, $439c

jr_039_4390:
    ld hl, $c50f
    call $1078
    and a
    ret


    adc [hl]
    adc l
    ld a, a
    ld d, b
    adc [hl]
    add l
    add l
    ld d, b
    ld hl, $cfcc
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_43b3

    bit 4, a
    jr z, jr_039_43b9

    bit 6, [hl]
    jr nz, jr_039_43bd

    jr jr_039_43c4

jr_039_43b3:
    bit 6, [hl]
    jr z, jr_039_43c4

    jr jr_039_43bd

jr_039_43b9:
    bit 6, [hl]
    jr nz, jr_039_43c4

jr_039_43bd:
    res 6, [hl]
    ld de, $43d1
    jr jr_039_43c9

jr_039_43c4:
    set 6, [hl]
    ld de, $43d7

jr_039_43c9:
    ld hl, $c537
    call $1078
    and a
    ret


    sub d
    add a
    adc b
    add l
    sub e
    ld d, b
    sub d
    add h
    sub e
    ld a, a
    ld a, a
    ld d, b
    ld hl, $cfcc
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_43f0

    bit 4, a
    jr z, jr_039_43f6

    bit 5, [hl]
    jr nz, jr_039_43fc

    jr jr_039_4406

jr_039_43f0:
    bit 5, [hl]
    jr z, jr_039_4406

    jr jr_039_43fc

jr_039_43f6:
    bit 5, [hl]
    jr nz, jr_039_440b

    jr jr_039_4401

jr_039_43fc:
    res 5, [hl]
    call $3d47

jr_039_4401:
    ld de, $4416
    jr jr_039_440e

jr_039_4406:
    set 5, [hl]
    call $3d47

jr_039_440b:
    ld de, $441d

jr_039_440e:
    ld hl, $c55f
    call $1078
    and a
    ret


    adc h
    adc [hl]
    adc l
    adc [hl]
    ld a, a
    ld a, a
    ld d, b
    sub d
    sub e
    add h
    sub c
    add h
    adc [hl]
    ld d, b
    call Call_039_4491
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_443c

    bit 4, a
    jr z, jr_039_4448

    ld a, c
    cp $04
    jr c, jr_039_4438

    ld c, $ff

jr_039_4438:
    inc c
    ld a, e
    jr jr_039_4444

jr_039_443c:
    ld a, c
    and a
    jr nz, jr_039_4442

    ld c, $05

jr_039_4442:
    dec c
    ld a, d

jr_039_4444:
    ld b, a
    ld [$cfd0], a

jr_039_4448:
    ld b, $00
    ld hl, $445a
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c587
    call $1078
    and a
    ret


    ld h, h
    ld b, h
    ld l, l
    ld b, h
    db $76
    ld b, h
    ld a, a
    ld b, h
    adc b
    ld b, h
    adc e
    adc b
    add [hl]
    add a
    sub e
    add h
    sub d
    sub e
    ld d, b
    adc e
    adc b
    add [hl]
    add a
    sub e
    add h
    sub c
    ld a, a
    ld d, b
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc e
    ld a, a
    ld a, a
    ld d, b
    add e
    add b
    sub c
    adc d
    add h
    sub c
    ld a, a
    ld a, a
    ld d, b
    add e
    add b
    sub c
    adc d
    add h
    sub d
    sub e
    ld a, a
    ld d, b

Call_039_4491:
    ld a, [$cfd0]
    and a
    jr z, jr_039_44a9

    cp $20
    jr z, jr_039_44af

    cp $60
    jr z, jr_039_44b5

    cp $7f
    jr z, jr_039_44bb

    ld c, $02
    ld de, $2060
    ret


jr_039_44a9:
    ld c, $00
    ld de, $7f20
    ret


jr_039_44af:
    ld c, $01
    ld de, $0040
    ret


jr_039_44b5:
    ld c, $03
    ld de, $407f
    ret


jr_039_44bb:
    ld c, $04
    ld de, $6000
    ret


    ld hl, $cfd1
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_44d4

    bit 4, a
    jr z, jr_039_44da

    bit 0, [hl]
    jr nz, jr_039_44de

    jr jr_039_44e5

jr_039_44d4:
    bit 0, [hl]
    jr z, jr_039_44e5

    jr jr_039_44de

jr_039_44da:
    bit 0, [hl]
    jr nz, jr_039_44e5

jr_039_44de:
    res 0, [hl]
    ld de, $44f2
    jr jr_039_44ea

jr_039_44e5:
    set 0, [hl]
    ld de, $44f6

jr_039_44ea:
    ld hl, $c5af
    call $1078
    and a
    ret


    adc [hl]
    add l
    add l
    ld d, b
    adc [hl]
    adc l
    ld a, a
    ld d, b
    ld hl, $cfce
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_039_450d

    bit 4, a
    jr nz, jr_039_4509

    and a
    ret


jr_039_4509:
    ld a, [hl]
    inc a
    jr jr_039_450f

jr_039_450d:
    ld a, [hl]
    dec a

jr_039_450f:
    and $07
    ld [hl], a

Call_039_4512:
    ld a, [$cfce]
    ld hl, $c5dc
    add $f7
    ld [hl], a
    call $0e5f
    and a
    ret


    ldh a, [$a7]
    and $01
    jr nz, jr_039_4528

    and a
    ret


jr_039_4528:
    scf
    ret


Call_039_452a:
    ld hl, $cf63
    ldh a, [$a9]
    cp $80
    jr z, jr_039_4539

    cp $40
    jr z, jr_039_454b

    and a
    ret


jr_039_4539:
    ld a, [hl]
    cp $07
    jr nz, jr_039_4542

    ld [hl], $00
    scf
    ret


jr_039_4542:
    cp $05
    jr nz, jr_039_4548

    ld [hl], $05

jr_039_4548:
    inc [hl]
    scf
    ret


jr_039_454b:
    ld a, [hl]
    cp $06
    jr nz, jr_039_4554

    ld [hl], $05
    scf
    ret


jr_039_4554:
    and a
    jr nz, jr_039_4559

    ld [hl], $08

jr_039_4559:
    dec [hl]
    scf
    ret


Call_039_455c:
    ld hl, $c4b5
    ld de, $0014
    ld c, $10

jr_039_4564:
    ld [hl], $7f
    add hl, de
    dec c
    jr nz, jr_039_4564

    ld hl, $c4c9
    ld bc, $0028
    ld a, [$cf63]
    call $30fe
    ld [hl], $ed
    ret


    ld de, $0000
    call $3b97
    call $31f3
    call $0fc8
    ld a, $98
    ldh [$d7], a
    xor a
    ldh [$d6], a
    ldh [$a8], a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $90
    ldh [$d2], a
    call $31f6
    ld b, $19
    call $3340
    call $32f9
    ld c, $0a
    call $0468
    ld hl, $63e2
    ld a, $01
    rst $08
    call $31f6
    ld c, $64
    call $0468
    call $0fc8
    ld a, $13
    ld hl, $6a82
    rst $08
    call Call_039_45e8

jr_039_45c0:
    call $0a57
    ldh a, [$a9]
    and $0f
    jr nz, jr_039_45de

    ld a, [$cf63]
    bit 7, a
    jr nz, jr_039_45e3

    call Call_039_4670
    ld a, $23
    ld hl, $4f69
    rst $08
    call $045a
    jr jr_039_45c0

jr_039_45de:
    call Call_039_465e
    scf
    ret


jr_039_45e3:
    call Call_039_465e
    and a
    ret


Call_039_45e8:
    ld de, $47cc
    ld hl, $9000
    ld bc, $391c
    call $0f9d
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $5407
    ld de, $d000
    ld a, $42
    call $0b40
    ld hl, $8000
    ld de, $d000
    ld bc, $0180
    call $0eba
    ld hl, $8800
    ld de, $d800
    ld bc, $0180
    call $0eba
    pop af
    ldh [rSVBK], a
    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $5458
    ld a, $03
    call $3b2a
    ld hl, $0007
    add hl, bc
    ld [hl], $a0
    ld hl, $000c
    add hl, bc
    ld [hl], $60
    ld hl, $000d
    add hl, bc
    ld [hl], $30
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $01
    ldh [$d4], a
    ld a, $90
    ldh [$d2], a
    ld de, $e4e4
    call $0ccb
    ret


Call_039_465e:
    ld a, $23
    ld hl, $4f53
    rst $08
    call $0fc8
    call $300b
    ld c, $10
    call $0468
    ret


Call_039_4670:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $467f
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc h
    ld b, [hl]
    adc l
    ld b, [hl]
    cp d
    ld b, [hl]
    db $dd
    ld b, [hl]

Call_039_4687:
    ld hl, $cf63
    inc [hl]
    ret


    ret


    ld hl, $cf65
    ld a, [hl]
    cp $20
    jr nc, jr_039_4697

    inc [hl]
    ret


jr_039_4697:
    ld [hl], $00
    ld hl, $46af
    ld de, $c56d
    ld bc, $000a
    call $3026
    call Call_039_4687
    ld de, $00c9
    call $3c23
    ret


    nop
    ld bc, $0302
    dec c
    inc b
    dec b
    inc bc
    ld bc, $5006
    ld hl, $cf65
    ld a, [hl]
    cp $40
    jr nc, jr_039_46c4

    inc [hl]
    ret


jr_039_46c4:
    ld [hl], $00
    ld hl, $46d6
    ld de, $c583
    ld bc, $0006
    call $3026
    call Call_039_4687
    ret


    rlca
    ld [$0a09], sp
    dec bc
    inc c
    ld d, b
    ld hl, $cf65
    ld a, [hl]
    cp $80
    jr nc, jr_039_46e7

    inc [hl]
    ret


jr_039_46e7:
    ld hl, $cf63
    set 7, [hl]
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $46fd
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rlca
    ld b, a
    dec c
    ld b, a
    ld e, c
    ld b, a
    db $76
    ld b, a
    xor e
    ld b, a
    ld hl, $000b
    add hl, bc
    inc [hl]
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_039_4747

    ld d, a
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    and $3f
    cp $20
    jr nc, jr_039_4723

    add $20

jr_039_4723:
    ld e, a
    ld a, $33
    ld hl, $6765
    rst $08
    ld hl, $0007
    add hl, bc
    ld [hl], e
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    dec [hl]
    and $1f
    ret nz

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    sub $30
    ld [hl], a
    ld de, $00c7
    call $3c23
    ret


jr_039_4747:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld hl, $000d
    add hl, bc
    ld [hl], $00
    ld de, $00c1
    call $3c23
    ret


    ld hl, $000d
    add hl, bc
    ld a, [hl]
    cp $20
    jr nc, jr_039_4764

    inc [hl]
    ret


jr_039_4764:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld hl, $000d
    add hl, bc
    ld [hl], $00
    ld de, $00c2
    call $3c23
    ret


    ld hl, $000d
    add hl, bc
    ld a, [hl]
    cp $40
    jr z, jr_039_47a3

    inc [hl]
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $47ac
    add hl, de
    add hl, de
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, [hl+]
    ld [$d0cc], a
    ld a, [hl+]
    ld [$d0cd], a
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


jr_039_47a3:
    ld hl, $000b
    add hl, bc
    inc [hl]
    call Call_039_4687
    ret


    sub a
    ld [hl], c
    sub a
    ld l, l
    or a
    ld l, c
    or a
    ld h, c
    ret c

    ld e, c
    ret c

    ld d, c
    ld hl, sp+$49
    ld hl, sp+$41
    add hl, de
    ld a, [hl-]
    add hl, de
    ld [hl-], a
    add hl, sp
    ld a, [hl+]
    add hl, sp
    ld [hl+], a
    ld e, d
    ld a, [de]
    ld e, d
    ld [de], a
    ld a, d
    ld a, [bc]
    ld a, d
    ld [bc], a
    ld a, $62
    ret nz

    adc $c6
    ld h, [hl]
    ccf
    nop
    jr jr_039_47ee

    inc l
    inc l
    ld a, [hl]
    ld b, [hl]
    rst $28
    nop
    rst $20
    ld h, e
    ld [hl], a
    ld [hl], a
    ld e, e
    ld e, e
    rlc b
    cp $62
    ld a, h
    ld h, h
    ld h, b
    ld h, d
    cp $00
    db $fc
    ld h, d

jr_039_47ee:
    ld h, h
    ld a, h
    ld h, h
    ld h, b
    ldh a, [rP1]
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld l, [hl]
    ld h, [hl]
    or $03
    rst $28
    ld h, [hl]
    ld a, b
    ld l, h
    ld l, [hl]
    ld h, [hl]
    ld h, e
    nop
    nop
    nop
    rra
    dec de
    ld e, $18
    jr jr_039_480c

jr_039_480c:
    nop
    nop
    ld a, l
    ld l, l
    ld a, c
    ld l, l
    ld h, l
    nop
    nop
    nop
    rst $20
    adc h
    rst $28
    add e
    xor $00
    nop
    nop
    ld a, d
    ld h, e
    ld a, e
    ld h, e
    ld a, e
    nop
    nop
    nop
    ld l, a
    ld h, [hl]
    and $66
    ld h, $00
    nop
    nop
    jr c, jr_039_4890

    ld a, b
    jr jr_039_48a3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$30

    ccf
    ld a, a
    ld a, a
    ld a, e
    pop af
    pop af
    nop
    nop
    nop
    nop
    add b
    ret nz

    and b
    and b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $f101
    ldh a, [$e1]
    db $e3
    db $e3
    rst $20
    rst $20
    rst $20
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld bc, $0101
    ld bc, $0101
    ld bc, $ef01
    xor $ee
    xor $ee
    xor $ef
    rst $28
    ld a, b
    cp h
    ld a, h
    inc a
    inc a
    inc a
    inc a
    ld a, h
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    rst $20
    rst $20
    db $e3
    ldh a, [$f0]
    ldh a, [$f8]
    cp c
    db $fc
    db $fc
    ld a, h
    ld a, h

jr_039_4890:
    ld hl, sp-$18
    add sp, -$18
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $0f
    cp l
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld sp, hl

jr_039_48a3:
    db $fc
    ret nc

    ret nc

    add b
    ret nz

    ldh [$f0], a
    ld hl, sp+$7c
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ldh a, [$aa]
    push af
    ldh a, [$9e]
    push af
    call Call_039_4901

Jump_039_48bc:
    call $0a57
    ldh a, [$a9]
    and $0f
    jr nz, jr_039_48db

    ld a, [$cf63]
    bit 7, a
    jr nz, jr_039_48e1

    call Call_039_490f
    ld a, $23
    ld hl, $4f69
    rst $08
    call $045a
    jp Jump_039_48bc


jr_039_48db:
    ld de, $0000
    call $3b97

jr_039_48e1:
    call $31f3
    call $300b
    call $0fc8
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    pop af
    ldh [$9e], a
    pop af
    ldh [$aa], a
    pop af
    ldh [rSVBK], a
    ret


Call_039_4901:
    xor a
    ldh [$9e], a
    ld a, $01
    ldh [$aa], a
    xor a
    ldh [$de], a
    ld [$cf63], a
    ret


Call_039_490f:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $491e
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, e
    ld c, c
    sub $49
    db $fd
    ld c, c
    ld l, c
    ld c, d
    ld a, d
    ld c, d
    rst $30
    ld c, d
    ccf
    ld c, e
    db $d3
    ld c, e
    inc b
    ld c, h
    ld c, a
    ld c, h
    add [hl]
    ld c, h
    ld a, [$6d4c]
    ld c, l
    ld a, [$404d]
    ld c, [hl]
    call c, $f54e
    ld c, [hl]
    ld h, a
    ld c, a
    ld a, [hl]
    ld c, a
    add hl, de
    ld d, b
    ld e, l
    ld d, b
    ld [hl], d
    ld d, b
    add [hl]
    ld d, b
    adc [hl]
    ld d, b
    xor l
    ld d, b
    cp e
    ld d, b
    dec l
    ld d, c
    ld d, d
    ld d, c

Call_039_4956:
    ld hl, $cf63
    inc [hl]
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $641d
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $5f5d
    ld de, $9000
    call Call_039_54c2
    ld hl, $634d
    ld de, $8000
    call Call_039_54c2
    ld hl, $63dd
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $65ad
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $65ad
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $80
    jr nc, jr_039_49f9

    cp $60
    jr nz, jr_039_49f1

    push af
    ld de, $5858
    call Call_039_51dc
    ld de, $00be
    call $3c23
    pop af

jr_039_49f1:
    ld [$cf65], a
    xor a
    call Call_039_5223
    ret


jr_039_49f9:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $5ecd
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $5c7d
    ld de, $9000
    call Call_039_54c2
    ld hl, $5e6d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5edd
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $5edd
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    call Call_039_5516
    call Call_039_549e
    xor a
    ld [$cf64], a
    call Call_039_4956
    ret


    call Call_039_552f
    ld hl, $cf64
    ld a, [hl]
    cp $80
    jr z, jr_039_4a76

    inc [hl]
    ret


jr_039_4a76:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ldh [$c6], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $647d
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $5f5d
    ld de, $9000
    call Call_039_54c2
    ld hl, $634d
    ld de, $8000
    call Call_039_54c2
    ld hl, $642d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $65ad
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $65ad
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $80
    jr nc, jr_039_4b3b

    cp $60
    jr z, jr_039_4b24

    cp $40
    jr nc, jr_039_4b32

    cp $20
    jr z, jr_039_4b0e

    jr jr_039_4b1c

jr_039_4b0e:
    push af
    ld de, $3878
    call Call_039_51dc
    ld de, $00bf
    call $3c23
    pop af

jr_039_4b1c:
    ld [$cf65], a
    xor a
    call Call_039_5223
    ret


jr_039_4b24:
    push af
    ld de, $7030
    call Call_039_51dc
    ld de, $00be
    call $3c23
    pop af

jr_039_4b32:
    ld [$cf65], a
    ld a, $01
    call Call_039_5223
    ret


jr_039_4b3b:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $5ecd
    ld de, $9800
    call Call_039_54fa
    ld hl, $592d
    ld de, $8000
    call Call_039_54c2
    ld a, $00
    ldh [rVBK], a
    ld hl, $555d
    ld de, $8000
    call Call_039_54de
    ld hl, $5c7d
    ld de, $9000
    call Call_039_54c2
    ld hl, $5e6d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5edd
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $5edd
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    call Call_039_5516
    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $6cd8
    ld a, $26
    call $3b2a
    ld a, $f0
    ld [$c3c0], a
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $40
    jr z, jr_039_4be2

    jr nc, jr_039_4be8

    call Call_039_552f
    ret


jr_039_4be2:
    ld de, $00c6
    call $3c23

jr_039_4be8:
    ld a, [$c3c0]
    and a
    jr z, jr_039_4bf4

    sub $08
    ld [$c3c0], a
    ret


jr_039_4bf4:
    ld de, $00c5
    call $3c23
    ld a, $23
    ld hl, $503d
    rst $08
    call Call_039_4956
    ret


    xor a
    ldh [$c6], a
    call $300b
    ld hl, $cdd9
    ld bc, $00f0
    ld a, $01
    call $3041
    ld bc, $003c
    ld a, $02
    call $3041
    ld bc, $003c
    ld a, $03
    call $3041
    ld a, $02
    ldh [$d4], a
    call $045a
    call $045a
    call $045a
    ld a, $0c
    ldh [$d6], a
    call $045a
    call $045a
    call $045a
    xor a
    ldh [$d4], a
    ldh [$d6], a
    ld [$c3c0], a
    xor a
    ld [$cf64], a
    call Call_039_4956
    ret


    call Call_039_546d
    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $c0
    jr z, jr_039_4c82

    cp $20
    jr z, jr_039_4c73

    cp $40
    jr z, jr_039_4c64

    ret


jr_039_4c64:
    ld de, $a980
    ld a, $27
    call $3b2a
    ld de, $00c4
    call $3c23
    ret


jr_039_4c73:
    ld de, $b030
    ld a, $28
    call $3b2a
    ld de, $00c4
    call $3c23
    ret


jr_039_4c82:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ldh [$c6], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $655d
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $5f5d
    ld de, $9000
    call Call_039_54c2
    ld hl, $649d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $65ad
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $65ad
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    call Call_039_4d36
    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $c0
    jr nc, jr_039_4d32

    cp $80
    jr nc, jr_039_4d1d

    ld c, a
    and $1f
    sla a
    ld [$cf65], a
    ld a, c
    and $e0
    srl a
    swap a
    call Call_039_5223
    ret


jr_039_4d1d:
    ld c, a
    and $0f
    sla a
    sla a
    ld [$cf65], a
    ld a, c
    and $70
    or $40
    swap a
    call Call_039_5223
    ret


jr_039_4d32:
    call Call_039_4956
    ret


Call_039_4d36:
    ld a, [$cf64]
    ld c, a
    ld hl, $4d54

jr_039_4d3d:
    ld a, [hl+]
    cp $ff
    ret z

    cp c
    jr z, jr_039_4d48

    inc hl
    inc hl
    jr jr_039_4d3d

jr_039_4d48:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    call $3e21
    pop de
    call $3c23
    ret


    nop
    ret nz

    nop
    jr nz, @-$3f

    nop
    ld b, b
    cp [hl]
    nop
    ld h, b
    cp a
    nop
    add b
    ret nz

    nop
    sub b
    cp a
    nop
    and b
    cp [hl]
    nop
    or b
    cp a
    nop
    rst $38
    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $5ecd
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $555d
    ld de, $8000
    call Call_039_54de
    ld hl, $5c7d
    ld de, $9000
    call Call_039_54c2
    ld hl, $5e6d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $5edd
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $5edd
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $6c58
    ld a, $26
    call $3b2a
    ld de, $0062
    call $3b97
    xor a
    ld [$c3c0], a
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ldh a, [$cf]
    sub $0a
    ldh [$cf], a
    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $80
    jr z, jr_039_4e3c

    cp $60
    jr z, jr_039_4e14

    jr nc, jr_039_4e1a

    cp $40
    jr nc, jr_039_4e33

    ret


jr_039_4e14:
    ld de, $00c8
    call $3c23

jr_039_4e1a:
    ld a, $01
    ld [$cf65], a
    ld a, [$c3c0]
    cp $88
    jr c, jr_039_4e2c

    sub $08
    ld [$c3c0], a
    ret


jr_039_4e2c:
    ld a, $23
    ld hl, $503d
    rst $08
    ret


jr_039_4e33:
    ld a, [$c3c0]
    sub $02
    ld [$c3c0], a
    ret


jr_039_4e3c:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $76ad
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $6ded
    ld de, $9000
    call Call_039_54c2
    ld hl, $785d
    ld de, $8000
    call Call_039_54c2
    ld de, $7a5d
    ld hl, $8800
    ld bc, $3901
    call $0eba
    ld hl, $764d
    ld de, $9800
    call Call_039_54fa
    call Call_039_541b
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $77dd
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $77dd
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ld a, $90
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_039_549e
    ld de, $4028
    ld a, $2a
    call $3b2a
    ld de, $6000
    ld a, $2b
    call $3b2a
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $80
    jr nc, jr_039_4ef1

    call Call_039_5441
    ldh a, [$d0]
    and a
    ret z

    add $08
    ldh [$d0], a
    ret


jr_039_4ef1:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $6d0d
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $681d
    ld de, $8800
    call Call_039_54de
    ld hl, $6c3d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $6d6d
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $6d6d
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $60
    jr nc, jr_039_4f7a

    ldh a, [$cf]
    cp $60
    ret z

    add $08
    ldh [$cf], a
    ret


jr_039_4f7a:
    call Call_039_4956
    ret


    call Call_039_54a3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $778d
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $72ad
    ld de, $9000
    call Call_039_54c2
    ld hl, $5f5d
    ld de, $8800
    call Call_039_54c2
    ld de, $7a5d
    ld hl, $8ff0
    ld bc, $3901
    call $0eba
    ld hl, $76bd
    ld de, $9800
    call Call_039_54fa
    call Call_039_541b
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $77dd
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $77dd
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ld a, $d8
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    ld hl, $c300
    xor a
    ld [hl+], a
    ld [hl], $7f
    call Call_039_549e
    ld de, $6000
    ld a, $2b
    call $3b2a
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $98
    jr nc, jr_039_5059

    cp $58
    ret nc

    cp $40
    jr nc, jr_039_5032

    cp $28
    ret nc

    ldh a, [$d0]
    inc a
    ldh [$d0], a
    ret


jr_039_5032:
    sub $18
    ld c, a
    and $03
    cp $03
    ret nz

    ld a, c
    and $1c
    srl a
    srl a
    ld [$cf65], a
    xor a
    call Call_039_5348
    ret


    ld a, c
    and $1c
    srl a
    srl a
    ld [$cf65], a
    ld a, $01
    call Call_039_5348
    ret


jr_039_5059:
    call Call_039_4956
    ret


    call Call_039_5451
    ld c, $03
    call $0468
    xor a
    ldh [$d4], a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $08
    jr nc, jr_039_507c

    ret


jr_039_507c:
    ld a, $23
    ld hl, $503d
    rst $08
    call Call_039_4956
    ret


    xor a
    ld [$cf64], a
    call Call_039_4956
    ret


    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $20
    jr nc, jr_039_50a4

    ld c, a
    and $03
    ret nz

    ld a, c
    and $1c
    sla a
    call Call_039_5172
    ret


jr_039_50a4:
    ld a, $40
    ld [$cf64], a
    call Call_039_4956
    ret


    ld a, [$cf64]
    dec a
    jr z, jr_039_50b7

    ld [$cf64], a
    ret


jr_039_50b7:
    call Call_039_4956
    ret


    call $31f3
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $676d
    ld de, $9800
    call Call_039_54fa
    ld a, $00
    ldh [rVBK], a
    ld hl, $662d
    ld de, $9000
    call Call_039_54c2
    ld hl, $672d
    ld de, $9800
    call Call_039_54fa
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $679d
    ld de, $d000
    ld bc, $0080
    call $3026
    ld hl, $679d
    ld de, $d080
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_039_549e
    xor a
    ld [$cf64], a
    ld [$cf65], a
    call Call_039_4956
    ret


    ld hl, $cf65
    inc [hl]
    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    cp $80
    jr nc, jr_039_5149

    ld c, a
    and $0f
    ld [$cf65], a
    ld a, c
    and $70
    swap a
    call Call_039_539d
    ret


jr_039_5149:
    call Call_039_4956
    ld a, $80
    ld [$cf64], a
    ret


    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_039_516c

    dec [hl]
    cp $18
    jr z, jr_039_5168

    cp $08
    ret nz

    ld de, $00cb
    call $3c23
    ret


jr_039_5168:
    call $31f3
    ret


jr_039_516c:
    ld hl, $cf63
    set 7, [hl]
    ret


Call_039_5172:
    ld hl, $519c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld de, $d080
    ld b, $08

jr_039_5187:
    push hl
    ld c, $08

jr_039_518a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_039_518a

    pop hl
    dec b
    jr nz, jr_039_5187

    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


    sbc b
    dec h
    rst $38
    ld a, a
    inc c
    ld a, h
    nop
    nop
    ld a, a
    ld d, $ff
    ld a, a
    xor a
    ld a, h
    rst $20
    inc e
    cp a
    ld h, $ff
    ld a, a
    ld [hl-], a
    ld a, l
    ld l, e
    dec l
    rst $38
    ld [hl], $ff
    ld a, a
    or l
    ld a, l
    rst $28
    dec a
    ccf
    ld b, a
    rst $38
    ld a, a
    add hl, sp
    ld a, [hl]
    ld [hl], e
    ld c, [hl]
    ld a, a
    ld d, a
    rst $38
    ld a, a
    cp e
    ld a, [hl]
    rst $30
    ld e, [hl]
    cp a
    ld h, a
    rst $38
    ld a, a
    ld e, l
    ld a, a
    ld a, e
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

Call_039_51dc:
    push de
    ld a, $29
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld [hl], $08
    ld a, $3c
    call $3b3c
    pop de
    push de
    ld a, $29
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld [hl], $18
    ld a, $3b
    call $3b3c
    pop de
    push de
    ld a, $29
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld [hl], $28
    ld a, $39
    call $3b3c
    pop de
    ld a, $29
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld [hl], $38
    ld a, $3a
    call $3b3c
    ret


Call_039_5223:
    add a
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $d080
    add hl, de
    inc hl
    inc hl
    ld a, [$cf65]
    and $3f
    cp $1f
    jr z, jr_039_523e

    jr c, jr_039_523e

    ld c, a
    ld a, $3f
    sub c

jr_039_523e:
    ld c, a
    ld b, $00
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    push hl
    push bc
    ld hl, $d080
    ld bc, $0040
    xor a
    call $3041
    pop bc
    pop hl
    push hl
    ld hl, $5288
    add hl, bc

jr_039_525b:
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld hl, $52c8
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld hl, $5308
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d

jr_039_527f:
    ld [hl+], a
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


    nop
    nop
    ld hl, $4204
    ld [$0c63], sp
    add h
    db $10
    and l
    inc d
    add $18
    rst $20
    inc e
    ld [$2921], sp
    dec h
    ld c, d
    add hl, hl
    ld l, e
    dec l
    adc h
    ld sp, $35ad
    adc $39
    rst $28
    dec a
    db $10
    ld b, d
    ld sp, $5246
    ld c, d
    ld [hl], e
    ld c, [hl]
    sub h
    ld d, d
    or l
    ld d, [hl]
    sub $5a
    rst $30
    ld e, [hl]
    jr jr_039_531d

    add hl, sp
    ld h, a
    ld e, d
    ld l, e
    ld a, e
    ld l, a
    sbc h
    ld [hl], e
    cp l
    ld [hl], a
    sbc $7b
    rst $38
    ld a, a
    nop
    nop
    nop
    inc b
    jr nz, @+$0a

    jr nz, jr_039_52dc

    ld b, b
    db $10
    ld b, b
    inc d
    ld h, b
    jr jr_039_5337

    inc e
    add b
    jr nz, jr_039_525b

    inc h

jr_039_52dc:
    and b
    jr z, jr_039_527f

    inc l
    ret nz

    jr nc, @-$3e

    inc [hl]
    ldh [$38], a
    ldh [$3c], a
    nop
    ld b, c
    nop
    ld b, l
    jr nz, jr_039_5337

    jr nz, jr_039_533d

    ld b, b
    ld d, c
    ld b, b
    ld d, l
    ld h, b
    ld e, c
    ld h, b
    ld e, l
    add b
    ld h, c
    add b
    ld h, l
    and b
    ld l, c
    and b
    ld l, l
    ret nz

    ld [hl], c
    ret nz

    ld [hl], l
    ldh [$79], a
    ldh [$7d], a
    nop
    nop
    nop
    inc b
    nop
    ld [$0c00], sp
    nop
    stop
    inc d
    nop
    jr jr_039_5317

jr_039_5317:
    inc e
    nop
    jr nz, jr_039_531b

jr_039_531b:
    inc h
    nop

jr_039_531d:
    jr z, jr_039_531f

jr_039_531f:
    inc l
    nop
    jr nc, jr_039_5323

jr_039_5323:
    inc [hl]
    nop
    jr c, jr_039_5327

jr_039_5327:
    inc a
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld c, b
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, b
    nop

jr_039_5337:
    ld e, h
    nop
    ld h, b
    nop
    ld h, h
    nop

jr_039_533d:
    ld l, b
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, h

Call_039_5348:
    and a
    jr nz, jr_039_5350

    ld hl, $538d
    jr jr_039_5353

jr_039_5350:
    ld hl, $5395

jr_039_5353:
    ld a, [$cf65]
    and $07
    add a
    add a
    add a
    ld c, a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    push bc
    ld de, $d080
    ld a, c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld bc, $0008
    call $3026
    pop bc
    ld de, $d000
    ld a, c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


    sbc b
    dec h
    rst $38
    ld a, a
    inc c
    ld a, h
    nop
    nop
    sbc b
    dec h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

Call_039_539d:
    add a
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $d080
    add hl, de
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$cf65]
    add a
    ld c, a
    ld b, $00
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    push hl
    ld hl, $53db
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld hl, $53fb
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld a, a
    sbc $7b
    sbc h
    ld [hl], e
    ld a, e
    ld l, a
    add hl, sp
    ld h, a
    jr jr_039_544a

    sub $5a
    or l
    ld d, [hl]
    ld [hl], e
    ld c, [hl]
    ld d, d
    ld c, d
    db $10
    ld b, d
    rst $28
    dec a
    xor l
    dec [hl]
    adc h
    ld sp, $294a
    add hl, hl
    dec h
    rst $38
    ld a, a
    sbc $7b
    cp l
    ld [hl], a
    sbc h
    ld [hl], e
    ld a, e
    ld l, a
    ld e, d
    ld l, e
    add hl, sp
    ld h, a
    jr @+$65

    rst $30
    ld e, [hl]
    sub $5a
    or l
    ld d, [hl]
    sub h
    ld d, d
    ld [hl], e
    ld c, [hl]
    ld d, d
    ld c, d
    ld sp, $1046
    ld b, d

Call_039_541b:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $c4a0
    ld b, $12

jr_039_542a:
    ld c, $14

jr_039_542c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_039_542c

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_039_542a

    pop af
    ldh [rSVBK], a
    ret


Call_039_5441:
    ld a, [$cf64]
    and $03
    jr z, jr_039_5451

    cp $03

jr_039_544a:
    jr z, jr_039_544d

    ret


jr_039_544d:
    xor a
    ldh [$d4], a
    ret


Call_039_5451:
jr_039_5451:
    ld hl, $c4a0
    ld bc, $0168

jr_039_5457:
    ld a, [hl]
    and a
    jr z, jr_039_5462

    cp $80
    jr nc, jr_039_5462

    xor $08
    ld [hl], a

jr_039_5462:
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_039_5457

    ld a, $01
    ldh [$d4], a
    ret


Call_039_546d:
    ld a, [$cf64]
    cp $24
    ret nc

    and $0c
    srl a
    ld e, a
    ld d, $00
    ld hl, $5496
    add hl, de
    ld a, [hl+]
    ld [$cf68], a
    ld a, [hl+]
    ld [$cf69], a
    ld a, $90
    ld [$cf6a], a
    ld a, $90
    ld [$cf6b], a
    ld a, $04
    ld [$cf67], a
    ret


    sbc l
    ld a, c
    db $dd
    ld a, c
    dec e
    ld a, d
    db $dd
    ld a, c

Call_039_549e:
    ld a, $01
    ldh [$e5], a
    ret


Call_039_54a3:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld bc, $0080
    xor a
    call $3041
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    call $045a
    call $045a
    ret


Call_039_54c2:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push de
    ld de, $d000
    call $0b50
    pop hl
    ld de, $d000
    ld bc, $0180
    call $0eba
    pop af
    ldh [rSVBK], a
    ret


Call_039_54de:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push de
    ld de, $d000
    call $0b50
    pop hl
    ld de, $d000
    ld bc, $01ff
    call $0eba
    pop af
    ldh [rSVBK], a
    ret


Call_039_54fa:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push de
    ld de, $d000
    call $0b50
    pop hl
    ld de, $d000
    ld bc, $0140
    call $0eba
    pop af
    ldh [rSVBK], a
    ret


Call_039_5516:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d100
    ld bc, $0090
    xor a
    call $3041
    pop af
    ldh [rSVBK], a
    ld a, $43
    ldh [$c6], a
    ret


Call_039_552f:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, [$cf64]
    and $01
    jr z, jr_039_5548

    ld hl, $d100
    ld a, [hl]
    inc a
    ld bc, $005f
    call $3041

jr_039_5548:
    ld hl, $d15f
    ld a, [hl]
    inc a
    inc a
    ld bc, $0031
    call $3041
    ld a, [$d100]
    ldh [$cf], a
    pop af
    ldh [rSVBK], a
    ret


    db $ec
    ld e, l
    nop
    db $fc
    call z, $0380
    rrca
    rrca
    ld a, a
    ld a, a
    ld l, e
    inc bc
    add b
    add b
    ret nz

    ret nz

    db $ec
    ld b, c
    inc bc
    rlca
    rlca
    rra
    rra
    inc hl
    ccf
    inc hl
    ld a, a
    ld bc, $ffff
    ld h, c
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    inc hl
    ldh a, [rSB]
    di
    di
    inc hl
    rst $38
    ld h, a
    rlca
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ret c

    ret c

    ldh a, [$f0]
    db $ec
    add hl, hl
    and e
    rst $00
    ld bc, $1f1f
    ld h, c
    dec c
    inc c
    inc c
    ld e, $1e
    ld a, h
    ld a, h
    ld hl, sp-$08
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    ld h, l
    ld bc, $1c1c
    daa
    rst $38
    add e
    and l
    and e
    rst $28
    ld bc, $8f8f
    dec a
    rst $38
    inc bc
    ei
    ei
    ldh a, [$f0]
    and e
    nop
    call nz, $8001
    add b
    jp $d700


    ldh a, [rNR44]
    nop
    ld a, [hl]
    inc hl
    ld bc, $0303
    inc bc
    jr @+$1a

    inc hl
    inc a
    ld bc, $7878
    jp $09ba


    ldh a, [$f0]
    db $e3
    db $e3
    ld b, $06
    rra
    rra
    ccf
    ccf
    daa
    ld a, a
    cpl
    rst $38
    nop
    xor $c8
    add b
    dec b
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld h, c
    add e
    or a
    ld bc, $e0e0
    add l
    nop
    ret nc

    inc bc
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    sub a
    ld bc, $0706
    rlca
    rlca
    rrca
    inc c
    rrca
    add hl, bc
    rra
    rra
    add e
    db $d3
    xor e
    rst $10
    inc bc
    rst $00
    rst $00
    ccf
    ccf
    dec [hl]
    rst $38
    ld bc, $f8f8
    ret


    sbc [hl]
    ld bc, $c0c0
    ret


    ld bc, $c341
    ld bc, $051f
    ld bc, $e001
    ldh [$fc], a
    db $fc
    add l
    rst $00
    dec c
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    jp $07c3


    rlca
    ld e, $1e
    ld a, b
    ld a, b
    ret nz

    ret nz

    and l
    ld bc, $0198
    add b
    add b
    ld [hl], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    adc b
    nop
    call nz, Call_039_6f04
    ld a, a
    ld c, a
    rst $28
    rst $28
    inc hl
    rst $18
    add hl, hl
    rst $38
    ld bc, $bfbf
    dec l
    rst $38
    inc bc
    sbc h
    sbc h
    sbc a
    sbc a
    adc e
    ld [bc], a
    ld [hl+], a
    ld h, e
    dec b
    add c
    add c
    rst $20
    rst $20
    db $fc
    db $fc
    and l
    push bc
    dec b
    ld h, b
    ld h, b
    ldh [$e0], a
    ret nz

    ret nz

    sbc c
    rst $28
    inc hl
    ccf
    ld bc, $1c1c
    ld h, c
    rlc b
    rst $20
    ld bc, $3f3f
    add e
    ld [bc], a
    ld d, h
    and l
    nop
    jp nc, $ff3d

    xor l
    ld bc, $03bc
    rst $30
    rst $30
    inc bc
    inc bc
    cpl
    rst $38
    and l
    ld bc, $039a
    ret nz

    ret nz

    db $f4
    db $f4
    and e
    nop
    jp z, $ff01

    rst $38
    sub l
    ld bc, $a988
    ld [bc], a
    and $01
    rst $38
    rst $18
    and a
    ld [bc], a
    ld c, [hl]
    ld bc, $0000
    rlc d
    db $d3
    and e
    ld [bc], a
    ret c

    ld bc, $1f1f
    sbc a
    inc bc
    ld e, $01
    cp a
    cp a
    dec h
    cp $c3
    ld [bc], a
    rst $18
    add l
    ld bc, $ece0
    inc hl
    add e
    ld bc, $011c
    inc e
    inc e
    and l
    nop
    ld a, d
    rlca
    ccf
    ccf
    cp $fe
    ld hl, sp-$08
    add c
    add c
    push bc
    inc bc
    rla
    and e
    add e
    ld bc, $7f7f
    add e
    rst $08
    and l
    ld [bc], a
    ld d, d
    inc bc
    nop
    nop
    ldh [$e0], a
    adc l
    ld [bc], a
    and $cf
    ld bc, $279f
    rst $38
    ld bc, $3c3c
    adc c
    adc a
    rlca
    rst $00
    rst $00
    add a
    add a
    inc bc
    inc bc
    inc bc
    inc bc
    xor c
    ld bc, $a396
    ld [bc], a
    inc b
    add l
    ld bc, $f0ea
    ld hl, $e403
    and l
    ld [bc], a
    db $e4
    and l
    or l
    ld bc, $0000
    and a
    inc bc
    and [hl]
    and l
    ld [bc], a
    ld c, $01
    rst $38
    rst $38
    dec h
    ccf
    rst $00
    inc bc
    xor l
    ld bc, $fbfb
    rst $00
    ret c

    add l
    ld [bc], a
    ld [hl], h
    ld bc, $8080
    ldh a, [rNR42]
    nop
    ld a, [$8fad]

jr_039_5739:
    ldh a, [rSCX]
    nop
    ld a, [hl]
    ld a, e
    nop
    jr nc, jr_039_5739

    ld a, $80
    dec b
    ld a, a
    ld a, a
    dec a
    dec a
    ld e, $1e
    dec h
    ld c, $03
    ld e, $1e
    inc e
    inc e
    and e
    inc b
    call z, $0301
    inc bc
    and a
    inc bc
    ld a, b
    add l
    ld [bc], a
    ld [hl], b
    ld bc, $8080
    db $ec
    ld [hl], a
    ldh a, [$6f]
    dec b
    nop
    db $ec
    ld e, e
    push bc
    ld [bc], a
    ld d, a
    add l
    ld bc, $091a
    ld a, $3e
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $30
    rst $30
    add a
    inc b
    call c, Call_039_7c01
    ld a, h
    add l
    inc b
    cp d
    inc bc
    rrca
    rrca
    ccf
    ccf
    adc e
    ld bc, $07ba
    pop hl
    pop hl
    db $e3
    db $e3
    rst $20
    rst $20
    rst $08
    rst $08
    daa
    rst $38
    add l
    ld [bc], a
    ld e, b
    ld bc, $fdfd
    rst $00
    inc b
    cp a
    add a
    dec b
    jp z, $f003

    ldh a, [$c0]
    ret nz

    ldh a, [rNR42]
    nop
    cp $c3
    inc b
    ld de, $0f0d
    rrca
    ld a, $3e
    db $fd
    db $fd
    ei
    ei
    rst $30
    rst $30
    rst $20
    rst $20
    sbc a
    sbc a
    and a
    inc b
    sbc d
    ld bc, $fcfc
    call $5504
    inc bc
    ld bc, $1f01
    rra
    add a
    adc a
    inc bc
    rlca
    rlca
    di
    di
    add a
    ld [bc], a
    ld a, [hl-]
    and e
    nop
    ld l, d
    ld bc, $f8f8
    adc l
    ld [bc], a
    add $85
    ld bc, $01e6
    ret nz

    ret nz

    jp $aa96


    inc b
    ld l, h
    nop
    ld [bc], a
    add e
    inc bc
    inc e
    adc b
    ld [bc], a
    call nz, $3f02
    rst $38
    ld a, a
    push bc
    rlca
    ld e, e
    rst $10
    inc bc
    rst $08
    ld bc, $fcfc
    and a
    rlca
    ld d, [hl]
    dec b
    rst $28
    rst $28
    add e
    add e
    cp [hl]
    cp [hl]
    add a
    rlca
    ld b, [hl]
    inc bc
    rst $28
    rst $28
    rst $00
    rst $00
    add e
    rlca
    ld [hl-], a
    ld bc, $c1c1
    add e
    ld [bc], a
    sub $0b
    cp $fe
    sbc b
    sbc b
    jr jr_039_5837

    jr c, jr_039_5859

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    sub l
    dec b
    call nc, $0384
    jr jr_039_582e

    ld b, $07

jr_039_582e:
    inc b
    jp $af03


    xor b
    rlca
    db $e4
    nop
    ld a, a

jr_039_5837:
    xor c
    inc bc
    ld [hl], $39
    rst $38
    ld bc, $f8f8
    adc l
    inc bc
    ld a, $03
    rst $28
    rst $28
    ld bc, $2901
    rst $38
    add l
    ld bc, $a372
    inc bc
    call z, $07a5
    sbc h
    dec b
    ld [hl], b
    ld [hl], b
    jr nc, jr_039_5887

    jr c, @+$3a

jr_039_5859:
    adc a
    ld [$af6a], sp
    inc bc
    call c, $0783
    ld a, $85
    inc b
    ld b, b
    push bc
    rlca
    push af
    and l
    inc bc
    jr nc, @-$0e

    inc hl
    ld [$8798], sp
    ld [$03b6], sp
    ld hl, sp-$08
    db $fc
    db $fc
    xor c
    inc b
    ret nz

    ld a, a
    xor a
    inc b
    ld a, [hl]
    jp $9d07


    sub a
    rst $38
    ld bc, $7f7f
    sub c

jr_039_5887:
    ld [bc], a
    ld [hl+], a
    ld bc, $9f9f
    rst $08
    add hl, bc
    dec l
    dec b
    ldh [$e0], a
    di
    di
    cp $fe
    and a
    nop
    add $03
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh a, [$3b]
    dec b
    db $10
    and l
    inc b
    inc h
    add hl, hl
    rrca
    add e
    ld [bc], a
    ld h, b
    add a
    ld [bc], a
    ld e, b
    add e
    inc bc
    inc d
    adc c
    add hl, bc
    and [hl]
    rlca
    rra
    rra
    sbc a
    sbc a
    cp e
    cp e
    ldh a, [$f0]
    add e
    ld [bc], a
    db $e4
    ldh a, [rSTAT]
    nop
    db $76
    and l
    nop
    call nc, $0003
    nop
    ccf
    ccf
    rst $00
    inc bc
    xor e
    ld bc, $dfdf
    and l
    push af
    ld bc, $e1e1
    add l
    inc b
    ld [hl], d
    add l
    rst $20
    rlc a
    ld c, e
    add e
    inc bc
    ld d, $87
    inc bc
    sub $85
    ld bc, $016a
    cp [hl]
    cp [hl]
    db $ec
    ccf
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    xor e
    ld [bc], a
    db $e4
    dec b
    add e
    add e
    add c
    add c
    ret nz

    ret nz

    add e
    rlca
    ld d, b
    adc e
    ld [$018a], sp
    ld hl, sp-$08
    and a
    add hl, bc
    sub h
    inc bc
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$3b]
    add hl, bc
    db $e4
    add l
    inc bc
    jr @-$75

    add hl, bc
    ld [bc], a
    ld bc, $f8f8
    ldh a, [rNR51]
    add hl, bc
    ld [c], a
    add a
    inc b
    xor b
    jp $3b07


    and e
    dec b
    or h
    ldh a, [$27]
    ld bc, $ff72
    nop
    nop
    inc bc
    ld a, b
    ld a, b
    ld a, [hl]
    ld a, [hl]
    dec h
    rst $38
    dec b
    db $ed
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    ld h, e
    dec bc
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    cp $79
    dec b
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld h, a
    ld bc, $3e3e
    dec h
    rst $38
    ld a, e
    inc bc
    ld bc, $0101
    ld bc, $b989
    add hl, bc
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rlca
    rlca
    ld a, a
    ld a, a
    dec h
    rst $38
    rlca
    sbc a
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    add b
    add b
    add hl, hl
    ret nz

    and e
    xor a
    ld a, c
    ld bc, $0303
    inc hl
    rlca
    add e
    call $0701
    rlca
    add e
    call $fe07
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc e
    inc e
    daa
    cp $00
    ld a, [hl]
    ld [hl+], a
    cp $01
    adc $fe
    ld a, a
    ld b, a
    ld [hl], b
    ld a, a
    ld bc, $7f78
    ld b, e
    jr c, jr_039_59e1

    db $10
    inc a
    ccf
    rra
    rst $38
    rrca

jr_039_59a8:
    rst $38
    rlca
    rst $38
    ld b, $fe
    inc b
    db $fc
    dec bc
    ei
    inc c
    rst $38
    db $10
    adc d
    nop
    ld c, a
    ld [$f8f8], sp
    ld b, $fe
    ld bc, $7fff
    ld a, a
    db $fc
    add e
    rst $20
    ld c, b
    rst $38
    add b
    inc b
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    call nz, $a4af
    push bc
    nop
    cp $89
    nop
    ld h, h
    dec b
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$230f], sp
    ld bc, $0f04
    rrca

jr_039_59e1:
    ld h, c
    ld a, a
    add c
    ld b, h
    rst $38
    ld bc, $0002
    rst $38
    ret nz

    ld c, [hl]
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    inc bc
    ld c, b
    rst $38
    rlca
    ld b, e
    rra
    rst $38
    dec h
    add b
    ld bc, $e0e0
    add l
    nop
    jr jr_039_59a8

    nop
    ld a, $10
    ld bc, $0601
    rlca
    ld [$100f], sp
    rra
    jr nz, @+$41

    rlca
    rlca
    inc b
    rlca
    inc a
    ccf
    add h
    ld b, l
    rst $38
    inc b
    ld d, d
    rst $38
    nop
    ld [bc], a
    adc a
    rst $38
    rrca
    ld c, b
    rst $38
    rra
    ld b, e
    ld a, a
    rst $38
    adc c
    rlc c
    cp $fe
    sub e
    nop
    ld c, h
    ld bc, $1f1f
    add e
    ld bc, $8358
    ld bc, $835a
    ld bc, $025c
    ld [$800f], sp
    ld b, h
    rst $38
    nop
    ld [bc], a
    jr nc, @+$01

    ld l, b
    ld b, e
    rst $38
    ld a, b
    ld bc, $30ff
    adc d
    ld bc, $0677
    dec b
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld b, b
    ld b, h
    rst $38
    nop
    ld [$ff08], sp
    rlca
    rst $38
    add h
    db $fc
    add d
    cp $82
    and [hl]
    ld bc, $c909
    ld bc, $832b
    ld bc, $01aa
    db $10
    rra
    ld b, a
    jr nz, jr_039_5ab0

    ld [bc], a
    db $10
    rra
    ld h, b
    and h
    or a
    add hl, bc
    ldh [rIE], a
    ret nz

    rst $38
    jr @-$17

    inc a
    jp $817e


    jp Jump_039_6e01


    nop
    rlca
    ld c, d
    rst $38
    nop
    ld [bc], a
    ccf
    rst $38
    rst $18
    ld b, [hl]
    rst $38
    rrca
    ld bc, $f606
    ld b, e
    db $10
    ldh a, [$c5]
    ld bc, $01e7
    ret nz

    ret nz

    ld h, a
    rrca
    ld h, $3f
    ld c, d
    ld a, a
    ld c, [hl]
    ld a, a
    adc [hl]
    rst $38
    adc h
    rst $38
    add c
    cp $83
    db $fc
    ld b, e
    ld a, h
    adc c

jr_039_5ab0:
    cp c
    ld bc, $7f80
    ld b, e
    ret nz

    ccf
    jp $00c9


    jr c, @+$4c

    rst $38
    nop
    ld [bc], a
    rst $38
    rst $38
    ld a, a
    ld b, [hl]
    rst $38
    ccf
    ld bc, $e727
    ld b, e
    ld b, b
    ret nz

    ld bc, $fefe
    rst $00
    nop
    dec e
    sub l
    nop
    sbc [hl]
    inc bc
    add hl, bc
    ld c, $0b
    inc c
    push bc
    ld [bc], a
    dec bc
    nop
    nop
    add h
    nop
    ld l, a
    add l
    push de
    inc bc
    ret nz

    ccf
    add b
    ld a, a
    and e
    ld [bc], a
    ld [hl], b
    ld bc, $7f60
    and e
    ld bc, $0170
    add b
    rst $38
    ld b, l
    ld bc, $83fe
    rst $18
    ld b, e
    ld [bc], a
    cp $03
    call nz, $e43c
    inc e
    ld b, e
    add sp, $18
    inc bc
    ldh a, [$30]
    ret nz

    ret nz

    ld l, a
    ld b, $14

jr_039_5b0c:
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    xor b
    db $ed
    dec b
    ld a, [hl]
    add c
    inc a
    jp $e718


    add l
    res 4, e
    ld bc, $89e6
    ld [bc], a
    jr nz, @+$09

    inc c
    db $fc
    ldh a, [$f0]
    cp $fe
    jr nz, jr_039_5b0c

    and d
    xor l
    nop
    ret nz

    sbc c
    nop
    sbc [hl]
    add hl, bc
    ld b, e
    ld a, h
    inc hl
    inc a
    ld de, $081e
    rrca
    ld b, $07
    add l
    pop de
    add a
    inc bc

jr_039_5b42:
    inc d
    add e
    pop de
    ld [hl+], a
    ld a, a
    nop
    ld a, a
    and l
    adc c
    add hl, bc
    ld [bc], a
    cp $0c
    db $fc
    jr nc, jr_039_5b42

    ret nz

    ret nz

    db $fc
    db $fc
    add e
    nop
    sbc h
    db $ec
    ld sp, $0285
    ld [bc], a
    add e
    pop hl
    ld d, $1c
    rra
    ccf
    ccf
    ld l, a
    ld a, a

jr_039_5b67:
    add [hl]
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    rlca
    rst $38
    cp $fe
    db $fd
    rst $38
    cp b
    add e
    ld bc, $041d
    rst $38
    ld b, $ff
    inc bc
    rst $38
    and a
    nop
    or h
    rlca
    jr nz, jr_039_5b67

    nop
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ld a, a
    ld b, e
    ld [hl], a
    ld a, a
    nop
    and d
    ld c, b
    rst $38
    add b
    inc bc
    ld b, b
    ld a, a
    add c
    rst $38
    add l
    ld [bc], a
    ld [hl], b
    nop
    ccf
    add h
    ld bc, $0145
    ld b, $fe
    and l
    nop
    ld l, d
    ld bc, $7070
    inc hl
    ld hl, sp+$03
    db $fc
    db $fc
    ld a, h
    ld a, h
    sub a
    nop
    ld e, b
    nop
    ld bc, $80c6
    inc b
    db $fc
    rst $38
    ret c

    rst $38
    sub b
    adc c
    ld [bc], a
    or c
    add hl, bc
    rst $38
    ld [bc], a
    cp $01
    rst $38
    inc bc
    rst $38
    ld c, $fe
    ld a, a
    add h
    ld bc, $00d1
    inc c
    add [hl]
    ld bc, $839f
    ld bc, $83e2
    ld bc, $01e4
    ld hl, sp-$08
    ldh a, [$27]
    inc bc
    ld [c], a
    inc bc
    inc b
    rlca
    inc d
    rla
    ld b, e
    ld e, b
    ld e, a
    ld [bc], a
    rra
    rra
    ld h, b
    rlc d
    cp e
    inc bc
    rst $38
    ldh [$e0], a
    jr @-$51

    sub c
    xor d
    or e
    dec bc
    ld c, b
    ret z

    ld a, [hl+]
    ld_long $fff0, a
    ld d, b
    ld e, a
    db $10
    rra
    ld [$870f], sp
    inc bc
    ld d, d
    adc l
    ld bc, $00c2
    add b
    xor [hl]
    adc l
    dec bc
    ld b, $fe
    ld a, d
    ld_long a, $ff7f
    ld a, [hl+]
    ld [$ea6a], a
    ld c, b
    ret z

    add a
    inc bc
    jp nc, $3809

    jr c, jr_039_5c6a

    ld a, h
    ld b, d
    ld a, [hl]
    ld b, c
    ld a, a
    ld hl, $833f
    rst $00
    inc bc
    ld h, b
    ld a, a
    inc e
    rra
    add l
    ld [bc], a
    ld a, [bc]
    add hl, bc

jr_039_5c38:
    sub b
    sbc a
    ldh [rIE], a
    ld b, b
    rst $38
    jr jr_039_5c38

    ld h, b
    ldh [$a9], a
    ld [bc], a
    ld b, $01
    db $10
    ldh a, [$6f]
    ld bc, $0706
    ret


    nop
    ld [hl], l
    add e
    adc c
    inc d
    jr nz, @+$01

    ld de, $c2ff
    rst $38
    or d
    rst $38
    ld e, $ff
    ld [de], a
    di
    ld hl, $c0e1
    ret nz

    db $10
    ldh a, [$a0]
    ldh [$60], a
    ld b, l
    ldh [rNR41], a

jr_039_5c6a:
    add h
    inc b
    dec sp
    xor $0f
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
    ld l, a
    cpl
    rst $38
    ld d, l
    rst $38
    nop
    inc bc
    xor a
    ld d, b
    ld d, l
    xor d
    and e
    add c
    ld bc, $f50a
    ld sp, $02ff
    xor [hl]
    rst $38
    ld d, l
    add $81
    nop
    jp hl


    ld [hl+], a
    rst $38
    nop
    ld d, l
    and l
    add c
    ret


    cp [hl]
    ld [bc], a
    nop
    rst $38
    ld d, b
    add h
    sub d
    nop
    db $eb
    inc l
    rst $38
    nop
    xor a
    add [hl]
    xor b
    nop
    ld a, [bc]
    ld h, c
    ldh [$2a], a
    db $10
    db $10
    jr nz, jr_039_5ce6

    add hl, bc
    add hl, sp
    ld e, l
    ld a, l
    ld e, e
    ld a, a
    add a
    rst $28
    or e
    rst $30
    ld bc, $1101
    ld de, $1302
    ld hl, $1533
    scf
    ld b, c
    ld h, a
    ld [bc], a
    ld l, [hl]
    or d
    rst $38
    and d
    rst $30
    ld c, c
    rst $18
    ld b, l
    rst $18
    dec h
    cp a
    xor d
    cp a
    xor $ff
    ld a, a
    ld [hl+], a
    rst $38
    dec c
    sub b
    db $dd
    inc b
    ld e, l
    ld h, h
    rst $38

jr_039_5ce6:
    inc h
    cp a
    xor d
    cp a
    rst $28
    rst $38
    cp a
    cp a
    dec hl
    rst $38
    inc b
    db $ec
    rst $38
    ret nz

    rst $38
    ldh [rNR43], a
    rst $38
    dec de
    db $e4
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    db $fc
    add e
    ld a, a
    ret nz

    ld bc, $00fe
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, [hl+]
    push de
    ld e, l
    and d
    db $eb
    inc d
    ld a, a
    add b
    add e
    nop
    ld l, l
    dec c
    ld a, a
    cp a
    rrca
    rst $30
    scf
    rst $08
    rst $38
    rra
    rst $18
    scf
    ccf
    jp $1fe7


    dec h
    rst $38
    add hl, bc
    call c, $e0eb
    rst $18
    jp z, $f5b5

    ld a, [$d1ee]
    and e
    sbc a
    rrca
    ld hl, sp-$09
    ldh [$5f], a
    nop
    rst $38
    xor d
    ld d, l
    ld e, h
    and e
    ld a, [hl]
    add c
    ldh a, [rIE]
    ld [hl], h
    cp e
    add l
    nop
    ld l, d
    add hl, de
    ld bc, $07fe
    ld hl, sp+$1d
    ld [c], a
    ld [bc], a
    db $fd
    add a
    ld a, b
    rst $38
    nop
    ld a, a
    add b
    ld a, b
    add a
    ret nz

    ccf
    db $e3
    inc e
    cp $01
    ld e, d
    and l
    rst $38
    nop
    and l
    adc a
    ld de, $fe01
    ld e, a
    and b
    cp a
    ld b, b
    ld e, $e9
    dec l
    db $d3
    ld bc, $20fe
    rst $18
    ld d, h
    xor e
    ld [$8515], a
    nop
    ld l, e
    dec bc
    cp a
    rst $28
    ccf
    jp $e01f


    ccf
    ret nz

    cp $01
    db $fc
    inc bc
    jp z, $2200

    ld bc, $ff7f
    ld b, h
    rst $38
    ccf
    ld bc, $e4ff
    and e
    adc c
    dec d
    cp $ff
    ld hl, sp-$01
    ret nc

    rst $38
    add h
    rst $38
    pop af
    adc $ff
    nop
    rst $38
    ld b, b
    rst $18
    ldh [rTIMA], a
    ld_long a, $ff00
    add hl, sp
    add $a3
    nop
    db $fc
    dec d
    xor d
    ld d, l
    ld a, l
    add d
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld e, a
    and b
    xor e
    ld d, h
    rst $30
    ld [$807f], sp
    rst $28
    db $10
    db $e3
    inc e
    add e
    nop
    inc [hl]
    and e
    sub e
    dec b
    rst $38
    nop
    rlca
    ld hl, sp-$01
    nop
    and l

jr_039_5dd6:
    adc a
    ld bc, $0ff0
    ld b, l
    rst $38
    nop
    dec bc
    rrca
    ldh a, [$c0]
    ccf
    ret c

    daa
    ldh [$1f], a
    nop
    rst $38
    add e
    ld a, h
    jp $07c2


    rst $38
    nop
    ei
    rlca
    inc c
    di
    inc b
    ei
    add e
    xor c
    ld bc, $3cc3
    push bc
    push af
    and e
    rst $28
    ld b, $87
    ld a, e

Jump_039_5e01:
    rst $18
    ld hl, $00ff
    nop
    ld d, [hl]
    rst $38
    nop
    and e
    nop
    jr c, jr_039_5dd6

    add b
    ld [$00fe], sp
    add sp, $00

jr_039_5e13:
    ld d, h
    nop
    xor [hl]
    nop
    db $fc
    and l
    nop
    ld sp, $0003
    xor b
    nop
    ld d, c
    add a
    nop
    add hl, bc
    dec c
    nop
    rst $38
    nop
    ld e, a
    nop
    adc e
    nop
    rla
    nop
    cp d
    nop
    ld d, h
    nop
    xor b
    adc e
    nop
    dec hl
    inc b
    nop
    rla
    nop
    ld c, a
    nop
    sub l
    rst $08
    ld [bc], a
    rst $38
    nop
    ld d, l
    and [hl]
    add c
    inc b
    ld [$5000], a
    nop
    xor b
    ld l, [hl]
    ld [$0001], sp
    inc b
    nop
    ld bc, $5000
    nop
    jr z, @+$66

    ld b, $29
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    ld h, [hl]
    inc b
    dec b
    nop
    ld c, e
    nop
    and l
    rst $28
    rst $38
    db $ed
    ld a, [hl-]
    rst $38
    nop
    nop
    nop
    nop
    db $e4
    add c
    ld bc, $0d03
    ld c, $0f
    db $10
    daa
    ld bc, $8b91
    add hl, bc
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$03

    ld bc, $8b95
    rlca
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_039_5e13

    xor l
    sub e
    adc e
    ld [bc], a
    ld e, $1b
    inc e
    inc hl
    ld [bc], a
    nop
    dec e
    add e
    xor l
    sub e
    adc e
    ccf
    ld [bc], a
    inc bc
    inc hl
    inc h
    dec h
    ld h, $9b
    add e
    inc bc
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    sbc e
    add e
    ld a, a
    ld e, a
    add hl, bc
    ld a, [bc]
    ld e, a
    dec bc
    inc c
    ccf
    ld [$073f], sp
    ld [hl+], a
    inc b
    nop
    dec b
    sbc e
    add e
    ccf
    ld b, $ed
    cp a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push hl
    ld a, a
    ld bc, $5fe4
    add d
    db $e4
    ld e, a
    add e
    db $ed
    cp a
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    add b
    inc d
    ld bc, $8415
    dec h
    sbc b
    dec h
    add b
    inc d
    ret


    jr nz, jr_039_5efa

    ld d, $45
    ld de, $7fff
    ret


    jr nz, jr_039_5f2c

jr_039_5efa:
    dec h
    dec c
    dec h
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    and d
    ld e, b
    and c
    jr nc, @+$01

    ld a, a
    ld e, a
    ld h, l
    cp a
    ld [bc], a
    nop

jr_039_5f2c:
    nop
    rst $38

jr_039_5f2e:
    ld a, a
    sub h
    ld d, d
    xor e
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    ld l, a
    ld bc, $0101
    ld b, e
    ld [bc], a
    inc bc
    nop
    inc bc
    add h
    add e
    inc hl
    rlca
    and d
    adc a
    jr z, jr_039_5f2e

    inc hl
    ldh [$73], a
    dec bc
    ld bc, $0601
    rlca
    rrca
    rrca
    rra
    rra
    ld e, $1e
    cpl
    ccf

jr_039_5f7e:
    ld h, e
    dec bc
    add e
    add e
    rst $08
    rst $08
    cp a
    db $fc
    ld a, a
    ld [hl], b
    ld a, a
    ld h, c
    rst $38
    jp $0563


    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    inc a
    and h
    adc a
    nop
    ld b, e
    ld l, e
    inc bc
    db $10
    db $10
    jr z, jr_039_5fd6

    ld a, l
    nop
    jr nc, jr_039_5f7e

    add b
    ld bc, $0101
    push bc
    add b
    ld [bc], a
    ld a, b
    ld a, b
    xor h
    ld [hl+], a
    db $fc
    dec b
    ld hl, sp-$08
    ret nz

    ret nz

    ret nz

    ret nz

    or e
    jp $1400


    ld [hl+], a
    inc e
    ld bc, $1e1e
    inc hl
    ld c, $01
    rrca
    rrca
    sbc c
    rlc h
    ld [bc], a
    inc bc
    ld bc, $0403
    ld [hl+], a
    rlca
    dec c
    rra
    rra
    ld a, a
    ld a, a
    cp h
    rst $38
    ld [hl], e
    db $fc

jr_039_5fd6:
    adc a
    ldh a, [$1f]
    ldh [$bf], a
    ret nz

    and l
    adc a
    add hl, bc
    ccf
    rst $38
    rst $08
    ccf
    di
    rrca
    ld sp, hl
    rlca
    db $fd
    inc bc
    xor c
    xor a
    add l
    nop
    jr z, jr_039_5ff6

    ccf
    ccf
    dec sp
    dec sp
    jr c, jr_039_602d

    inc a

jr_039_5ff6:
    inc a
    add e
    pop hl
    inc de
    ld a, [de]
    ld e, $0c
    inc c
    rst $38
    pop bc
    rst $18
    ldh [$ef], a
    ldh a, [$f3]
    db $fc
    ld a, h
    ld a, a
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    and a
    adc a
    ld [bc], a
    ld a, [hl-]
    cp $ec
    and h
    adc a
    inc bc
    inc a
    inc a
    sbc h
    sbc h
    inc hl
    cp $01
    ld a, [hl]

Jump_039_601f:
    ld a, [hl]
    and e
    or l
    dec b
    ld hl, sp-$08
    ld b, $06
    ld [bc], a
    ld b, $c3
    nop
    dec e
    dec bc

jr_039_602d:
    inc sp
    inc sp
    rla
    scf
    ccf
    inc a
    ccf
    jr c, jr_039_6046

    jr nc, @+$3a

    jr c, jr_039_605d

    jr jr_039_603d

    cp b

jr_039_603d:
    cp b
    inc hl
    ldh a, [rSB]
    ld hl, sp+$78
    adc a
    nop
    or b

jr_039_6046:
    and e
    nop
    ld h, h
    dec bc
    rra
    inc e
    rra
    jr jr_039_608e

    jr nc, @+$01

    ldh a, [$7f]
    ld [c], a
    rst $38
    push hl
    add e
    nop
    ld h, h
    inc bc
    ld a, b
    ld hl, sp-$48

jr_039_605d:
    ld a, b
    ld b, e
    call c, $033c
    xor $1e
    db $eb
    rra
    xor a
    nop
    ld a, [$0700]
    add e
    nop
    ld b, a
    ld a, [bc]
    ld e, $2f
    jr c, jr_039_60d2

    ld [hl], b
    ld a, a
    ld h, b
    rst $18
    pop hl
    rst $38
    jp nz, $bfa4

    rrca
    ld a, b
    db $fc
    inc e
    cp $0e
    cp $06
    rst $38
    add a
    rst $38
    jp $0701


    dec bc
    rrca
    ld a, [bc]
    ld b, [hl]

jr_039_608e:
    rrca
    ld c, $c3
    xor b
    ld b, e
    ld a, a
    add b
    dec bc
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, [hl]
    add c
    ld a, a
    add b
    and [hl]
    adc a
    nop
    ret nz

    and a
    adc a
    and d
    rst $08
    ld bc, $70f0
    xor b
    xor a
    ld bc, $e0e0
    ld a, a
    and d
    xor l
    xor h
    and l
    inc bc
    ldh a, [$f0]
    ld h, b
    ldh [$cb], a
    ld bc, $01df
    rla
    jr jr_039_6107

    rra
    ld d, $0a
    db $10
    rrca
    ld [$0f0c], sp
    rlca
    rlca
    ld bc, $b801

jr_039_60d0:
    ld a, b
    ld b, e

jr_039_60d2:
    ld hl, sp+$38
    ld bc, $78b8
    add l
    db $dd
    sub c
    nop
    adc $03
    rst $38
    rst $20
    ccf
    ld [hl+], a
    ld b, e
    ccf
    jr nc, jr_039_60e8

    rra
    jr jr_039_6107

jr_039_60e8:
    inc e
    add e
    ld bc, $095c
    db $ed
    rra
    rst $28
    rra
    rst $18
    ccf
    call c, $b83c
    ld a, b
    jp $f501


    ld [bc], a
    ldh [$e0], a
    ld b, b
    call z, $3c01
    ld h, c
    dec bc
    rst $38
    jp $e1df


jr_039_6107:
    ld a, a
    ld h, b
    ld a, a
    ld [hl], b
    ccf
    jr c, jr_039_612d

    ld e, $84
    ld bc, $015c
    jp $aaff


    adc a
    inc b
    ldh [$e0], a
    rlca
    rlca
    inc bc
    xor h
    or c
    ld [$c0bf], sp
    sbc a
    ldh [$cf], a
    ldh a, [$f3]
    db $fc
    db $fc
    ld h, $ff
    xor a
    adc a

jr_039_612d:
    and a
    xor a
    db $ec
    ld hl, $1f05
    rra
    ld h, a
    ld a, a
    cp h
    db $fc
    adc e
    ld [bc], a
    ld h, [hl]
    inc bc
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
    and a
    nop
    ld h, b
    rlca
    ld d, $1f
    rra
    inc e
    dec hl
    inc a
    ccf
    jr c, jr_039_60d0

    ld bc, $0baa
    jp nz, $f3c3

    di
    jp hl


    add hl, sp
    ld sp, hl
    add hl, de
    db $fc
    inc c
    db $fc
    call z, $01a7
    xor d
    add e
    nop
    ld a, [hl+]
    sub e
    nop
    inc l
    and a
    sbc c
    inc bc
    dec b
    rlca
    inc bc
    inc bc
    xor c
    nop
    cp b
    inc bc
    add b
    add b
    ldh [$e0], a
    add e
    ld [bc], a
    sbc h
    ld h, c
    db $f4
    ld [hl+], a
    ld [bc], a
    ld b, b
    ld [hl+], a
    ld [hl], b
    add hl, bc
    ld a, b
    ld a, b
    jr c, jr_039_61bb

    jr z, jr_039_61bd

    jr nc, @+$32

    nop
    nop
    daa
    ld bc, $0327
    rrca
    cp b
    ld hl, sp+$70
    ldh a, [$b0]
    ldh a, [rSVBK]
    ldh a, [$f8]
    ld hl, sp-$01
    rst $38
    cp $ff
    rst $08
    rst $08
    xor a
    adc a
    xor a
    xor a
    adc a
    ld bc, $13a0
    ldh a, [$f0]
    ld [hl], a
    ld [hl], a
    add hl, sp
    ccf
    ld a, a
    ld a, a
    ld hl, sp-$01
    rst $20
    ld hl, sp+$5f
    ldh [$bf], a
    ret nz

    ld e, $1e
    call c, $23dc

jr_039_61bb:
    ld hl, sp+$0d

jr_039_61bd:
    ld a, h
    db $fc
    sbc [hl]
    ld a, [hl]
    xor $1e
    or $0e
    ccf
    jr c, jr_039_6203

    inc a
    rra
    inc e
    and e
    ld [bc], a
    jp z, $c311

    jp $e7a7


    rst $30
    rst $30
    rst $38
    rst $08
    rst $38
    rrca
    ld hl, sp+$18
    ld sp, hl
    add hl, sp
    db $fd
    db $fd
    rst $18
    rst $18
    and e
    ld [bc], a
    db $fc
    ret


    inc bc
    sbc a
    jp $9703


    ld bc, $8080
    sub e
    nop
    inc [hl]
    dec bc
    dec bc
    rrca
    inc e
    rra
    dec sp
    inc a
    scf
    jr c, jr_039_6259

    ld [hl], b
    ld e, a
    ld [hl], c
    and h
    nop
    ld b, h
    and [hl]
    adc a
    inc bc

jr_039_6203:
    cp $0e
    cp $8f
    adc a
    ld bc, $02d0
    ld bc, $2f01
    ld [hl+], a
    ccf
    add e
    inc bc
    nop
    dec b
    rlca
    rlca
    dec bc
    rrca
    rrca
    ld c, $87
    inc bc
    sbc h
    add e
    ld bc, $04f0
    add sp, -$08
    ld hl, sp+$38
    dec b
    add h
    inc bc
    or l
    ld [hl+], a
    rrca
    and [hl]
    ld [bc], a
    dec sp
    ld bc, $c3c3
    ret


    inc b
    add hl, sp
    ld bc, $0000
    or c
    adc a
    xor l
    xor a
    pop de
    nop
    pop bc
    dec d
    rst $38
    add e
    rst $38
    add l
    rst $38
    jp $e0ff


    ld a, a
    ld a, b
    rra
    rra
    inc sp
    ccf
    ld e, h
    ld a, h
    cp $06
    cp $86
    db $fc
    inc c
    add e
    ld [bc], a
    ld hl, sp-$7b

jr_039_6259:
    rst $30
    dec b
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rrca
    rrca
    xor c
    inc b
    ld a, $01
    rra
    rra
    jp $2501


    ld bc, $e0e0
    db $ec
    dec h
    add hl, bc
    ld bc, $3f01
    ld [hl-], a
    ccf
    ld sp, $181f
    dec c
    ld c, $83
    nop

jr_039_627c:
    ld c, b
    dec b
    ccf
    ccf
    ld a, b
    ld hl, sp-$01
    rst $08
    and l
    adc a
    and l
    inc b
    and $01
    ldh a, [$f0]
    ret nc

jr_039_628d:
    ld bc, $07df
    inc e
    rra
    jr @+$1d

    inc e
    rrca
    inc c
    ld c, $84
    ld [bc], a
    adc e
    ld h, c
    nop
    db $fc
    jp Jump_039_6705


    nop
    adc h
    and e
    ld [bc], a
    cp b
    ld bc, $f0f0
    sbc c
    inc bc
    call z, $03a3
    add $05

jr_039_62b0:
    dec bc
    ld c, $0f
    inc c
    rra
    jr jr_039_627c

    ld [bc], a
    ld l, c
    inc bc
    rst $28
    rst $28
    db $fd
    db $fd
    add e
    cp c
    ld bc, $c6fe
    add l
    nop
    sbc d
    nop
    ret nc

    ld [hl+], a
    ldh a, [rSB]
    ld h, b
    ld h, b
    ld [hl], e
    inc bc
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    jp $cbba


    inc bc
    ld b, c
    sub e
    nop
    call z, $0483
    ld [$1703], a
    inc e
    rla
    jr jr_039_62b0

    ld [bc], a
    and a
    ld [bc], a
    ld [hl], b
    ldh a, [$30]
    sub c
    ld b, $06
    sub c
    inc bc
    ld [c], a
    dec b
    ld l, b
    ld a, b
    scf
    ccf
    rra
    rra
    add l
    nop
    xor $23
    ld [hl], b
    inc bc
    or b
    ldh a, [$60]
    ldh [$83], a
    inc bc
    inc [hl]
    db $ec
    dec sp
    and a
    nop
    jr nz, jr_039_628d

    dec b
    ld [c], a
    dec b
    rra
    inc e
    ld c, $0f
    adc a
    adc a
    add e
    ld b, $26
    dec bc
    inc a
    inc a
    cp $c6
    or $0e
    cp $0e
    call c, $fc3c
    db $fc
    add e
    dec b
    add h
    db $ec
    ld b, c
    rlca
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    rlca
    add a
    dec b
    ld b, b
    dec b
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$60], a
    add e
    ld b, $c8
    dec b
    ret nc

    ldh a, [$f0]
    ldh a, [$c0]
    ret nz

    db $ec
    ld l, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr jr_039_6351

    ld [bc], a
    rrca

jr_039_6351:
    rrca
    rra
    rra
    ld a, $3e
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    rra
    nop
    ld a, $00
    inc a
    nop
    ld a, h
    nop
    ld b, e
    ld a, b
    nop
    nop
    jr nc, jr_039_63d5

    ld [$0001], sp
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    ld h, d
    inc c
    inc e
    nop
    ld a, [hl]
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    ld b, e
    ld [hl], b
    nop
    ld b, e
    ld h, b
    nop
    inc bc
    and b
    nop
    ret nz

    nop
    ld b, e
    ld b, b
    nop
    add hl, bc
    rrca
    nop
    ld c, $00
    ld e, $00
    inc e
    nop
    inc a
    nop
    ld b, e
    jr c, jr_039_63a2

jr_039_63a2:
    nop
    ld a, b
    adc b
    cp [hl]
    add l
    ret nz

    ld [bc], a
    rlca
    nop
    rra
    add h
    jp c, $f004

    nop
    ldh [rP1], a
    ret nz

    and e
    sub l
    ld l, d
    nop
    inc bc
    add h
    sbc l
    add e
    xor e
    ld [de], a
    rrca
    nop
    ccf
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    inc c
    nop
    rst $30
    nop
    ld hl, sp+$00
    ret nz

    db $ec
    ld e, b
    rst $38
    nop

jr_039_63d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    dec h
    rst $38
    push bc
    add b
    ldh a, [$a8]
    sbc a
    ld [bc], a
    ld bc, $0302
    sbc e
    nop
    inc c
    inc bc
    db $10
    ld de, $1312
    sbc e
    sbc a
    inc bc
    jr nz, jr_039_6417

    ld [hl+], a
    inc hl
    sbc e
    sbc a
    inc bc
    jr nc, jr_039_642e

    ld [hl-], a
    inc sp
    sbc e
    sbc a
    inc bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    sbc e
    sbc a
    inc bc
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ldh a, [$bc]
    nop
    inc c
    adc d
    nop
    add hl, bc
    push hl
    set 7, a

jr_039_6417:
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    dec h
    rst $38
    push bc
    add b
    ld a, [c]
    rra
    sbc a
    push hl
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [hl], e

jr_039_642e:
    dec h
    rst $38
    push bc
    add b
    ldh a, [$4c]
    sbc a
    inc bc
    ld c, $0f
    nop
    dec c
    sbc e
    rst $18
    ld bc, $1f1e
    sbc l
    rst $38
    ld bc, $2f2e
    sbc e
    sbc a
    dec b
    inc bc
    nop
    ld a, $3f
    nop
    dec a
    ldh a, [$5b]
    nop
    ld de, $35f0
    nop
    dec c
    inc bc
    inc b
    dec b
    ld b, $07
    sbc e
    sbc a
    inc bc
    inc d
    dec d
    ld d, $17
    sbc e
    sbc a
    inc bc
    inc h
    dec h
    ld h, $27
    ld hl, sp+$7b
    jp c, $0190

    ld b, e
    push hl
    set 7, a
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
    ld [hl], e
    dec h
    rst $38
    push bc
    add b
    pop af
    ld b, d
    sbc a
    inc bc
    ld bc, $0101
    ld bc, $009b
    rlca
    ldh a, [$3f]
    sbc a
    ldh a, [$7c]
    nop
    inc bc
    push hl
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    dec h
    rst $38
    ret nc

    add b
    nop
    ld c, d
    ld h, c
    inc bc
    ld [$0009], sp
    dec c
    sub l
    sbc a
    inc bc
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld h, c
    ld bc, $1918
    jp nz, $949c

    sbc a
    inc bc
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld h, c
    ld bc, $2928
    sub a
    rst $18
    inc bc
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sbc l
    rst $38
    nop
    ld l, l
    sub l
    nop
    dec bc
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $66
    inc bc
    inc bc
    nop
    ld a, $0a
    sub c
    sbc a
    ld [bc], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld h, d
    ld [bc], a
    scf
    jr c, jr_039_651e

    call nz, $0197
    dec bc
    inc c
    adc a
    nop
    ld sp, $5402
    ld d, l
    ld d, [hl]
    ld h, d
    ld [bc], a
    ld b, a
    ld c, b
    ld c, c
    ld h, e
    inc bc
    ld a, [de]
    dec de
    inc e
    dec e
    adc [hl]
    sbc a
    ld [bc], a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, d
    ld [bc], a
    ld d, a
    ld e, b
    ld e, c
    ld h, c
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    sbc b
    nop
    ld [de], a
    ld b, $67
    ld l, b
    ld a, [hl+]
    ld a, [hl-]
    dec sp
    inc a
    dec a
    sbc b
    sbc a
    ld [bc], a
    ld [hl], a

jr_039_651e:
    ld a, b
    ld a, [hl+]
    sub h
    nop
    adc [hl]
    nop
    ld h, b
    ld h, a
    ld bc, $3a3a
    sub a
    nop
    adc [hl]
    nop
    ld [hl], e
    sbc d
    nop
    rlca
    inc bc
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    sbc e
    nop
    ld b, $02
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add h
    cp [hl]
    ld bc, $4f4e
    sbc l
    nop
    adc h
    ld bc, $5f5e
    ld hl, sp+$27
    nop
    daa
    push hl
    set 7, a
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
    ld [hl], e
    dec h
    rst $38
    db $d3
    add b
    ld bc, $0101
    sub a
    sbc a
    inc hl
    inc b
    ldh a, [rSTAT]
    sbc a
    ld hl, sp+$25
    add sp, -$74
    sbc a
    ld [hl+], a
    ld [bc], a
    ldh a, [$29]
    sbc a
    inc hl
    dec b
    ldh a, [$4e]
    sbc a
    ld l, c
    ld bc, $0707
    add h
    rst $18
    sbc b
    nop
    sub d
    ld [bc], a
    rlca
    rlca
    nop
    add h
    nop
    adc [hl]
    ld hl, sp+$34
    nop
    ret nz

    sbc c
    sbc a
    inc hl
    ld b, $f0
    inc hl
    sbc a
    ld bc, $0303
    sbc c
    rst $18
    add l
    sbc a
    ldh a, [$27]
    rst $38
    push hl
    set 7, a
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
    rst $38
    ld a, a
    ld a, [bc]
    jr z, jr_039_6605

    ld c, h
    rra
    ld a, h
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop

jr_039_6605:
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    ld [hl], c
    dec c
    inc b
    ld c, $11
    ld sp, $6e04
    ld b, c
    ld d, c
    nop
    and b
    and h
    and h
    nop
    and b
    ld h, h
    ld [$0080], sp
    ret nz

    ld b, b
    ld b, b
    nop
    and b
    ret nz

    ldh [$c5], a
    add a
    dec bc
    ld bc, $0403
    inc b
    nop
    ld [$0909], sp
    ld [$0c08], sp
    inc c
    add l
    sbc a
    ld [bc], a
    ld b, b
    ld b, b
    nop
    ld [hl+], a
    jr nz, jr_039_6663

    nop
    jr nz, jr_039_66a3

jr_039_6663:
    ld b, b
    add l
    jp nz, $0208

    ld [bc], a
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    and l
    adc a

jr_039_6672:
    ld a, [bc]
    inc b
    ld c, b
    add sp, $10
    stop
    ld [$4848], sp
    nop
    ld [$0266], sp
    ld bc, $0101
    add a
    add l
    dec c
    ld [$3008], sp
    ld a, b
    add b
    add b
    jr nz, jr_039_66fe

    adc b
    adc b
    nop
    inc b
    inc h
    inc h
    ld [hl], e
    ld bc, $f870
    ld h, $20
    add d
    and e
    ld l, d
    add d
    cp l
    and h
    nop
    ld l, $82

jr_039_66a3:
    sbc c
    adc b
    cp l
    jp nc, $1200

    dec c
    nop
    add b
    ld c, b
    ld e, h
    ld [hl+], a
    ld [hl+], a
    nop
    ld b, c
    ld c, c
    ld c, c
    nop
    ld b, c
    ld [hl+], a
    ld [hl+], a
    ld a, a
    add hl, bc
    ld d, c
    ld d, c
    inc b
    ld l, [hl]
    db $10
    jr nc, jr_039_66c9

    inc c
    inc b
    inc b
    sub h
    rlc d
    nop
    add hl, bc

jr_039_66c9:
    dec bc
    dec h
    ld [$0087], sp
    ld l, [hl]
    inc bc
    jr nz, jr_039_6672

    nop
    db $10
    xor h
    db $ec
    nop
    ld bc, $898d
    inc bc
    db $10
    db $10
    ld b, b
    ldh [rNR50], a
    ld b, b
    ld [bc], a
    ldh [rNR10], a
    or b
    and h
    nop
    jr nz, jr_039_66e9

jr_039_66e9:
    ld bc, $008f
    inc bc
    add hl, bc
    adc b
    adc b
    inc h
    ld [hl], h
    ld [$600c], sp
    ldh a, [$80]
    add b
    adc h
    nop
    or [hl]
    adc b
    sbc a
    add e

jr_039_66fe:
    nop
    call z, $8805
    adc b
    jr nz, jr_039_6775

Jump_039_6705:
    nop
    nop
    sub d
    nop
    or b
    jp $ca00


    inc b
    ld hl, sp-$78
    adc b
    ld [hl], b
    db $fc
    sub a
    ld bc, $0118
    ld [$251c], sp
    ld [$0401], sp
    ld c, $75
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
    ld [hl], e
    dec h
    rst $38
    push bc
    add b
    ldh a, [$e2]
    sbc a
    dec c
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $91
    nop
    ld de, $110d
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_039_676a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $f0
    pop af
    nop
    ld de, $0090
    inc bc
    push hl
    set 7, a
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

jr_039_676a:
    nop
    nop
    nop
    ld [hl], e
    dec h
    rst $38
    push bc
    add b
    ldh a, [$e2]
    sbc a

jr_039_6775:
    dec c
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    sub c
    nop
    ld de, $9f8d
    ldh a, [$f1]
    nop
    ld de, $0090
    inc bc
    push hl
    set 7, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d

jr_039_6801:
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    ld l, a
    cpl
    rst $38
    ld h, a
    rlca
    inc bc
    inc bc
    ld c, $0f
    jr c, jr_039_6867

    ldh [rIE], a
    ld h, c
    ld d, $07
    rlca
    inc a
    ccf
    ldh [rIE], a
    add c
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    jr c, @+$01

    pop hl
    rst $38
    add a
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    ret nz

    ld b, l
    rst $38
    nop
    ld bc, $c0ff
    add sp, $2e
    rst $38
    nop
    ld b, e
    ld bc, $0bff

jr_039_6851:
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    jr jr_039_6851

    ld sp, $63f1
    db $e3
    ld h, e
    ld a, [bc]
    rlca
    rlca
    inc e
    rra
    ld [hl], b
    ld a, a
    ret nz

    rst $38

jr_039_6867:
    add b
    rst $38
    nop
    adc h
    rst $38
    inc bc
    jr jr_039_688e

    ld [hl], b
    ld a, a
    add a
    nop
    jr z, jr_039_687b

    add b
    rst $38
    ld bc, $06ff
    rst $38

jr_039_687b:
    jr c, jr_039_6801

    add a
    inc b
    rlca
    rst $38
    ld [$00ff], sp
    add l
    xor l
    inc bc
    rst $38
    ldh [rIE], a
    add b
    add sp, $3c
    rst $38

jr_039_688e:
    nop
    add h
    nop
    ld a, l
    db $10
    inc bc
    rst $38
    rlca
    cp $1f
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    rst $38
    call z, $98cf
    sbc a
    ld [hl], b
    ld a, a
    sbc d
    nop
    ld d, b
    ld l, b
    ld bc, $0101
    add e
    nop
    or b
    ld a, [bc]
    ld bc, $0701
    rlca
    inc c
    rrca
    add hl, de
    rra
    ld a, a
    ld a, a
    ldh a, [rLY]
    rst $38
    nop
    ld b, $c1
    rst $38
    rrca
    rst $38
    inc a
    rst $38
    ldh [rSCX], a
    rst $38
    nop
    sub b
    nop
    rlc d
    rlca
    rst $38
    inc a
    ld c, d
    rst $38
    nop
    inc b
    ldh a, [rIE]
    adc h
    rst $38
    ld [bc], a
    sub e
    nop
    rst $38
    adc c
    add c
    ld [bc], a
    rlca
    db $fc
    ld a, a
    adc b
    nop
    ld a, c
    ld bc, $f80f
    add h
    ld bc, $0625
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    ldh [$f0], a
    inc h
    nop
    ld e, l
    jp nz, $84db

    nop
    pop bc
    inc b
    inc e
    rst $38
    jr nc, @+$01

    ret nz

    adc [hl]
    ld bc, $8539
    ld bc, $0650
    jr c, @+$41

    jr @+$21

    jr nc, jr_039_694d

    ld h, b
    add h
    nop
    sbc c
    nop
    ld b, $ae
    nop
    pop de
    inc b
    inc bc
    rst $38
    sbc [hl]
    rst $38
    ld [hl], b
    add [hl]
    cp a
    ld bc, $ff70
    add [hl]
    nop
    sbc d
    ld bc, $ffff
    adc e
    ld a, [$0302]
    cp $0f
    ld b, h
    rst $38
    ld [bc], a
    inc b
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    add l
    ld bc, $0470
    rst $38
    rlca
    db $fc
    ccf
    ldh [$d2], a
    nop
    ld e, e
    ld [bc], a
    nop
    rst $38

jr_039_6946:
    rrca
    or b
    ld bc, $02db
    ld hl, sp-$01

jr_039_694d:
    rlca
    sbc h
    ld bc, $02cf
    ld b, $ff
    ld a, b
    ld b, h
    rst $38
    nop
    inc b
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    sub a
    nop
    pop de
    add h
    ld bc, $0349
    rlca
    rlca
    ld b, $07
    ld b, e
    inc c
    rrca
    ld [bc], a
    ld [$e00f], sp
    add h
    pop af
    ld [bc], a
    inc bc
    rst $38
    ld b, $84
    nop
    push bc
    and e
    add e
    nop
    ld e, $aa
    ld [bc], a
    add hl, de
    nop
    rra
    ld c, [hl]
    rst $38
    nop
    nop
    adc a
    add l
    ld bc, $840f

jr_039_698b:
    ld [bc], a
    ld d, l
    ld bc, $3ff0
    add e
    cp e
    ld b, $f8
    ld a, a
    ldh [rIE], a
    ld a, b
    rst $38
    ld c, $b0
    nop
    ld c, a
    push bc
    ld [bc], a
    ld a, [hl-]
    nop
    jr jr_039_698b

    jr nc, @+$01

    nop
    nop
    ccf
    rst $00
    nop
    ld e, a
    ldh a, [$36]
    nop
    ld c, c
    ld l, l
    ret


    ld [bc], a
    add hl, bc
    inc c
    ld bc, $0f01
    rrca
    ld a, a
    ld a, [hl]
    rst $38
    ldh [rNR23], a
    rra
    db $10
    rra
    jr nc, jr_039_6946

    nop
    or l
    dec b
    ldh a, [rIE]
    cp $1f
    rst $38
    rlca
    add l
    nop
    ld a, [hl]
    dec bc
    ld b, $fe

jr_039_69d1:
    ld c, $fe
    rrca
    rst $38
    rra
    rst $38
    jr jr_039_69d1

    ldh a, [$f0]
    dec h
    ret nz

    ld c, $81
    add c
    db $e3
    db $e3
    rst $38
    cp $7f
    ld a, b
    rst $38
    ld hl, sp+$3f
    jr nc, jr_039_6a6a

    ld h, b
    ld a, a
    adc b
    ld [bc], a
    cp b
    dec b
    ldh a, [$7f]
    ld hl, sp+$1f
    cp $0f
    xor b
    ld [bc], a
    scf
    nop
    nop
    xor e
    nop
    ld a, b
    inc bc
    ret nz

    rst $38
    ret nz

    ld a, a
    sub c
    inc bc
    ld h, $02
    ret nz

    rst $38
    db $fc
    adc h
    ld [bc], a
    ld a, c
    ld [bc], a
    ld bc, $3cff
    adc d
    inc bc
    ld a, a
    nop
    ccf
    or b
    ld [bc], a
    adc l
    nop
    inc a
    or b
    ld [bc], a
    cp c
    nop
    ldh [$90], a
    ld [bc], a
    db $fd
    ld [bc], a
    add b
    rst $38
    rst $38
    xor h
    sbc a
    nop
    cp $88
    push bc
    ld bc, $0e0f
    ld b, e
    rra
    jr jr_039_6a38

    ccf
    jr nc, @+$41

jr_039_6a38:
    jr nc, jr_039_6a7f

    ld a, a
    ld h, b
    ld e, a
    rst $38
    nop
    ld bc, $e0e0
    ld c, b
    ld bc, $f800
    inc sp
    inc bc
    or h
    ld bc, $e000
    jp $1d01


    and e
    inc bc
    ld d, $02
    rra
    db $fc
    rrca
    jp $1801


    ldh a, [$2d]
    nop
    ld d, h
    adc l
    ld [bc], a
    ld a, d
    ld [bc], a
    ld hl, sp-$01
    rst $10
    xor l
    ld bc, $f0db
    ld [hl-], a
    nop

jr_039_6a6a:
    pop de
    inc bc
    ld a, a
    ld h, b
    ld a, a
    ld [hl], b
    ld b, h
    ccf
    jr nc, jr_039_6a7a

    jr c, @+$21

    jr jr_039_6a97

    inc e
    rrca

jr_039_6a7a:
    ld c, $5e
    rst $38
    nop
    nop

jr_039_6a7f:
    rrca
    ret nc

    ld bc, $0235
    nop
    ld a, a
    nop
    ld b, e
    ccf
    nop
    ld b, $1f
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    ldh a, [rNR51]
    ld bc, $8ac8

jr_039_6a97:
    add c
    and e
    ld [bc], a
    jr nc, @+$03

    ld hl, sp+$3f
    adc c
    rst $10
    add e
    inc b
    and d
    ld bc, $fc3f
    adc c
    inc b
    ld h, c
    rst $08
    ld [bc], a
    adc l
    ld [$ffaa], sp
    push de
    ld a, a
    ld a, [$fd3f]
    rra
    rst $38
    add $01
    rla
    ld b, $f8
    rst $38
    ld e, a
    rst $38
    xor e
    rst $38
    ld [hl], l
    ld [hl+], a
    rst $38
    jp $f903


    ld bc, $e0e0
    add $b4
    inc h
    rst $38
    ld bc, $0f0f
    adc e
    inc b
    db $ed
    ld [bc], a
    ldh a, [rIE]
    rst $08
    xor h
    dec b
    sbc $00
    rra
    and h
    inc b
    add l
    ld bc, $0707
    call $bf03
    rlca
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    cp $1f
    ld e, $c7
    nop
    xor c
    inc bc
    rst $38
    db $fc
    rst $38
    rst $08
    rst $00
    ld bc, $c377
    nop
    xor a
    nop
    rst $38
    and e
    inc bc
    ld [$0400], a
    push bc
    dec b
    call nz, $ff03
    rra
    ld sp, hl
    add hl, sp
    adc [hl]
    inc b
    dec [hl]
    rlca
    ldh a, [rIE]
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    ret nc

    inc bc
    cp b
    inc b
    ld a, a
    nop
    rlca
    nop
    ld bc, $0490
    db $ed
    ld bc, $007f
    add sp, $3f
    rst $38
    nop
    inc bc
    ld hl, sp+$38
    db $fc
    inc c
    add e
    inc b
    ld d, $8d
    inc bc
    xor c
    inc b
    ret nz

    ret nz

    ldh a, [rSVBK]
    db $fc
    call nz, $3402
    inc bc
    ld a, $3f
    rlca
    rlca
    xor c
    nop
    and b
    ld bc, $f0f0
    add e
    ld b, $98

jr_039_6b4c:
    ld bc, $1f1e
    ret


    nop
    xor c
    ld b, h
    rrca
    ld [$0c04], sp
    rlca
    inc b
    rlca
    ld b, $c5
    ld [bc], a
    push de
    ld bc, $30f0
    and l
    adc l
    and a
    adc a
    inc bc
    rra
    inc e
    rlca
    rlca
    ret nc

jr_039_6b6b:
    ld bc, $c64b
    nop
    sbc d
    ld [bc], a
    inc bc
    inc bc
    nop
    sub b
    inc bc
    ld a, [hl+]
    inc b
    rra
    nop
    rlca
    nop
    ld bc, $03d2
    cp d
    nop
    ccf
    add h
    dec b
    ld sp, hl
    nop
    ld bc, $40f0
    rlca
    cpl
    ld bc, $00ff
    sub $03
    dec c
    add [hl]
    add c
    inc bc
    ret nz

    ret nz

    rst $38
    ld a, a
    sbc b
    inc bc
    and l
    ld l, d
    dec b
    inc bc
    inc bc
    rrca
    inc c
    ccf
    jr nc, jr_039_6b6b

    ld [bc], a
    rla
    ld bc, $ecff
    ld b, h
    rst $38
    ld b, $02
    inc bc
    rst $38
    inc bc
    ldh a, [rNR42]
    dec b
    ld l, a
    adc b
    dec b
    or $f0
    ld d, h
    rlca
    dec de
    ld c, a
    rst $38
    nop
    rlca
    ld bc, $0701
    ld b, $1f
    jr @+$41

    jr nz, jr_039_6b4c

    inc b
    ld b, $01
    add b
    ld a, a
    xor c
    ld bc, $068e
    rlca
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    add h
    rlca
    db $76
    ld [bc], a
    rrca
    ldh a, [$f0]
    adc d
    ld b, $b8
    and e
    ld bc, $0015
    ld h, b
    ld b, e
    ccf
    jr nc, @+$04

    rra
    jr jr_039_6c0d

    ldh a, [rNR41]
    inc bc
    ld a, $02
    ccf
    nop
    rrca
    sub d
    ld [$0203], sp
    ld a, a
    nop
    rlca
    ret nc

    ld [$0095], sp
    ccf
    add h
    ld [$f01b], sp
    ld l, $03
    add c
    rst $28
    rst $38
    db $ed
    ld [hl], h

jr_039_6c0d:
    ld bc, $3c3c
    ld [hl+], a
    inc h
    jp z, $0180

    jr @+$1a

    daa
    ld [$8ac7], sp
    ld bc, $0404
    and e
    add e
    ld bc, $3c3c
    adc e
    adc a
    xor c
    adc a
    add a
    cp l
    ld bc, $0404
    cp e
    xor a
    ld bc, $2424
    adc e
    cp a
    dec h
    inc b
    ld h, c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    ld e, a
    add c
    scf
    add b
    rlca
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    dec [hl]
    add b
    add hl, bc
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    inc sp
    add b
    dec bc
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld [hl-], a
    add b
    inc c
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    ld sp, $0d80
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cpl
    add b
    rrca
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $802f

    rrca
    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $802f

    rrca
    db $db
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$802f], a
    rrca
    db $eb
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$8031]
    dec c
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$8033], sp
    dec bc

jr_039_6ce8:
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    inc sp
    add b
    dec bc
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_039_6ce8

    ld e, a
    add c
    push hl
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    db $ec
    ld [hl], a
    ld h, $01
    nop
    ld [bc], a
    ld [hl], l
    ld h, $01
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    sbc c
    sbc l
    ld [hl+], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub [hl]
    sbc [hl]
    add l
    sbc h
    add d
    sbc a
    sub a
    sbc [hl]
    ld bc, $0202
    sub l
    sbc a
    ld [hl+], a
    ld bc, $0422
    ld bc, $0202
    sbc e
    sbc a
    ld bc, $0202
    sbc h
    sbc a
    ld bc, $0401
    sbc [hl]
    sbc a
    add e
    pop hl
    ld bc, $0202
    sbc e
    nop
    jp c, $0102

    inc b
    inc b
    add h
    sbc a
    add e
    nop
    sbc [hl]
    sbc l
    and c
    sbc c
    nop
    and b
    nop
    inc b
    add d
    push hl
    ld bc, $0202
    db $ec
    ld e, a
    push hl
    cp a
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
    sbc b
    dec h
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    sbc b
    dec h
    rst $38
    ld a, a
    jr z, jr_039_6df8

    nop
    nop
    sbc b
    dec h
    adc h
    ld a, [hl]
    inc de
    ld a, l
    nop
    nop
    adc h
    ld a, [hl]
    jr z, jr_039_6e06

    inc de
    ld a, l
    nop
    nop
    rst $38
    ld a, a
    adc h
    ld a, [hl]
    jr z, jr_039_6e10

    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    ld [hl], l
    dec b
    jr jr_039_6e09

    inc h
    inc a
    ld b, d
    ld a, [hl]
    ld b, e
    ld b, c
    ld a, a

jr_039_6df8:
    ld h, a
    rlca
    ld bc, $0201
    inc bc
    inc b
    rlca
    dec b

Jump_039_6e01:
    ld b, $63
    dec bc
    ld e, $1e

jr_039_6e06:
    ld h, c
    ld a, a

jr_039_6e08:
    add a

jr_039_6e09:
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

jr_039_6e10:
    and a
    sbc l
    inc bc
    ld h, b
    ldh [rNR10], a
    ldh a, [rSCX]
    ld [$69f8], sp
    dec b
    rlca
    rlca
    jr @+$21

    ld h, b
    ld a, a
    ld l, e
    inc bc
    ret nz

    ret nz

    jr nz, jr_039_6e08

    ld l, l
    ld bc, $c6c6

jr_039_6e2c:
    ldh a, [rNR44]
    rst $38
    add e
    ei
    inc bc
    dec b
    ld b, $04
    rlca
    ld b, e
    ld [$a50f], sp
    db $fd
    add hl, bc
    dec e
    rst $38
    jr nz, @+$01

    ld c, h
    di
    sbc b
    rst $20
    and h
    db $db
    xor e
    nop
    ld [hl+], a
    inc bc
    jr nz, jr_039_6e2c

    ld de, $67f1
    rlca
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld l, e
    inc bc
    add d
    add d
    add l
    add a
    ld l, l
    ld bc, $3838
    add a
    nop
    ld [hl+], a
    dec h
    ld bc, $0203
    inc bc
    add b
    rst $38
    ld b, e
    ret nz

    cp a
    inc b
    ld d, b
    cp a
    ret nc

    ccf
    sub b
    ld b, h
    ld a, a
    adc b
    ld a, [de]
    adc d
    adc l
    adc b
    adc a
    sub b
    sbc a
    ld d, b
    rst $18
    ld h, c

jr_039_6e82:
    rst $38
    ld b, d
    rst $38
    inc h
    rst $38
    jr c, @+$01

    jr z, jr_039_6e82

    ld e, b
    rst $20
    sub h
    db $eb
    and h
    db $db
    ld [$00f7], sp
    ld b, h
    rst $38
    nop
    inc b
    inc b
    db $fc
    rlca
    rst $38
    inc b
    ld b, h
    rst $38
    ld [bc], a
    and h
    db $ed
    inc bc
    rst $38
    add b
    rst $38
    ld [$0086], sp
    add hl, sp
    nop
    ret nz

    and e
    sbc l
    inc bc
    rst $38
    ld de, $0ef1
    ld c, h
    rst $38
    nop
    rrca
    add hl, sp
    rst $38
    ld h, [hl]
    cp $0c
    db $fc
    ld [de], a
    cp $04
    db $fc
    inc c
    db $fc
    ld [bc], a
    cp $0c
    db $fc
    adc a
    rst $38
    ld bc, $bfc0
    add a
    rst $38
    ld bc, $3fd0
    ld b, e
    adc b
    ld a, a
    ld bc, $8f89
    ld b, e
    sub c
    sbc a
    ld b, e
    ld h, d
    rst $38
    nop
    ld b, h
    add e
    rst $38
    ld d, b
    rst $38
    nop
    ld b, e
    ld [de], a
    di
    ld [$f714], sp
    inc e
    rst $38
    ld [$09ff], sp
    rst $38
    ld b, $43
    rst $38
    nop
    and [hl]
    ld bc, $0045
    add b
    add [hl]
    ld bc, $044b
    ld b, l
    rst $00
    ld c, c
    rst $08
    jr nc, jr_039_6f4d

    rst $38

Call_039_6f04:
    nop
    add hl, bc
    call nz, $18fc
    ld hl, sp+$30
    ldh a, [rOBP0]
    ld hl, sp+$10
    ldh a, [$a3]
    nop
    xor d
    ld bc, $e020
    ld c, c
    inc bc
    ld [bc], a
    ld b, l
    ld [bc], a
    inc bc
    ld b, e
    adc b
    ld a, a
    nop
    ld [$ff46], sp
    inc c
    inc b
    inc e
    rst $38
    inc e
    rst $38
    jr nz, jr_039_6f71

    rst $38
    db $10
    ld b, $11
    rst $38
    ld d, $ff
    jr @+$01

    db $10
    ld b, h
    rst $38
    nop
    dec bc
    rrca
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    ld c, $ff
    ld sp, $ccff
    di
    and e
    db $e3
    ld [bc], a

jr_039_6f48:
    add [hl]
    rst $38
    ld a, b
    add l
    db $ed

jr_039_6f4d:
    xor b
    ld bc, $0045
    inc bc
    add $a3
    jp Jump_039_5e01


    ld [bc], a
    inc a
    rst $38
    jp nz, $0186

    ld c, c
    inc bc
    nop
    rst $38
    inc e
    rst $38
    add e
    di
    ld [bc], a
    jr nz, jr_039_6f48

    ld b, b
    inc h
    ret nz

    ld b, e
    ld b, b
    ret nz

    ld bc, $0203

jr_039_6f71:
    adc l
    ld [bc], a
    nop
    ld b, l
    adc b
    ld a, a
    adc a
    rst $38
    ld [$ff13], sp
    inc d
    rst $38
    jr @+$01

    ld de, $12ff
    add h
    jp $e300


    ld b, h
    rst $38
    nop
    and e
    rst $38
    ld [$cf32], sp
    ld bc, $06ff
    rst $38
    jr @+$01

    ldh [rWY], a
    rst $38
    nop
    add d
    sub c
    add h
    ld bc, $0053
    nop
    add h
    ld [bc], a
    ld c, a
    ld [$ff70], sp
    adc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc bc
    ld b, h
    rst $38
    ld bc, $e107
    rst $38
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    adc e
    nop
    ld d, b
    db $10
    add hl, bc
    rrca
    add hl, de
    rra
    add hl, hl
    ccf
    dec h
    ccf
    ld b, l
    ld a, a
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    inc e
    rst $38
    ld e, $48
    rst $38
    ld c, $02
    ld b, $ff
    add [hl]
    add h
    di
    rrca
    ld d, h
    cp a
    sbc b
    ld a, a
    ld d, b
    cp a
    or b
    ld e, a
    ld d, d
    cp a
    or l
    ld e, a
    db $10
    rst $28
    inc b
    ei
    xor e
    db $eb
    ld [bc], a
    jr c, @+$01

    scf
    call z, $00e9
    ret nz

    add h
    ld [bc], a
    rst $08
    inc de
    ld de, $62ff
    cp $82
    cp $03
    cp $0f
    ldh a, [$62]
    rst $38
    add d
    rst $38
    ld b, b
    ld a, a
    ld sp, $0e3f
    ld c, $61
    inc bc
    ldh a, [rP1]
    rst $38
    nop
    adc a
    rst $38
    rrca
    inc bc
    inc bc
    dec c
    rrca
    ld de, $311f
    ccf
    ld d, c
    ld a, a
    ld c, c
    ld a, a
    adc c
    rst $38
    add a
    rst $38
    adc a
    rst $38
    inc bc
    ld [de], a
    rst $38
    sub h
    ld a, a
    add l
    rst $38
    rlca
    sub b
    ld a, a
    ld d, d
    cp a
    sub l
    ld a, a
    ld b, c
    cp a
    adc c
    db $fd
    ld [$fff0], sp
    db $ec
    rst $38
    db $e3
    rst $38
    call c, Call_039_40ff
    add e
    ld bc, $015d
    rst $38
    ld c, $a6
    rst $38
    dec b
    inc b
    rst $38
    ld c, d
    ei
    sub c
    pop af
    add l
    ld [bc], a
    ld [hl], b
    dec bc
    ld h, c
    ldh [rNR12], a
    cp $02
    cp $04
    db $fc
    adc b
    ld hl, sp+$70
    ld [hl], b
    jp $8301


    nop
    db $fc
    ld [hl], b
    and e
    sbc l
    dec b
    inc hl
    ccf
    ld e, $1d
    inc b
    rlca
    push bc
    inc bc
    add c
    ld [bc], a
    add [hl]
    rst $38
    add d
    ld b, h
    rst $38
    jp nz, Jump_039_601f

    rst $38
    ld [hl+], a
    rst $38
    sub b
    rst $38
    ld d, b
    ld a, a
    ld e, b
    cp a
    sub l
    ld a, e
    xor c
    ld [hl], a
    inc hl
    rst $38
    ld h, [hl]
    rst $18
    ld b, h
    cp a
    inc c
    rst $38
    inc e
    rst $30
    cp b
    rst $38
    rst $30
    rst $38
    rst $08
    ldh a, [rTAC]
    ld hl, sp-$79
    inc bc
    or h
    add hl, bc
    ld a, h
    rst $38
    db $e3
    sbc a
    push af
    ld c, $f3
    inc c
    pop hl
    ld e, $a3
    inc bc
    ld [hl-], a
    inc d
    inc [hl]
    rst $08
    ccf
    ret nz

    ld a, b
    add b
    ld hl, sp+$08
    call nz, $843c
    ld a, h
    ld b, $fa
    rrca
    di
    rrca
    pop af
    nop
    inc bc
    ld bc, $096c
    add b
    nop
    ld b, b
    add b
    and b
    ld b, b
    ld h, b
    nop
    ld [hl], b
    nop
    ld b, l
    jr nc, jr_039_70d0

jr_039_70d0:
    add hl, bc
    add b
    rst $38
    ld b, b
    ld a, a
    ld b, e

jr_039_70d6:
    ld a, a
    ld h, $3d
    dec e
    ld e, $95
    rst $38
    ld b, $18
    rst $38
    sub l
    ld a, e
    and c
    ld a, a
    ld [hl+], a
    adc b
    rst $38
    inc bc
    jp $07ff


    ld hl, sp+$43
    rrca
    ldh a, [rSB]
    ld bc, $87fe
    inc b
    jr c, jr_039_70d6

    inc hl
    jp $fcff


    ccf
    ldh a, [rIF]
    ldh [$1f], a
    ld b, c
    cp [hl]
    inc bc
    db $fc
    scf
    call z, $f097
    rra
    ldh [$7c], a
    add b
    db $f4
    inc c
    call nz, $863c
    ld a, d
    adc a
    ld [hl], e
    rrca
    pop af
    cp $00
    ld bc, $0206
    ld bc, $0491
    ld h, d
    ld b, $c0
    nop
    ldh [rP1], a
    ld h, b
    nop
    ld h, b
    ld [hl], b
    dec b
    jr c, @+$41

    ld [$060f], sp
    rlca
    xor c
    inc bc
    ld [hl], b
    add hl, de
    jr @-$07

    add hl, de
    rst $38
    dec e
    di
    rst $38
    db $e3
    rst $38
    add e
    db $fd
    dec b
    db $fd
    add l
    ld hl, sp-$78
    ld hl, sp-$19
    rst $38
    ld a, [c]
    rst $38
    ld_long a, $ffac
    ld d, h
    rst $38
    add l
    add e
    ld bc, $07fc
    ld b, e
    cp $03
    add hl, bc
    ei
    rlca
    ld [hl], e
    adc a
    ld l, a
    sbc a
    rra
    rst $38
    rla
    rst $38
    ld b, l
    rlca
    ld hl, sp+$01
    inc bc
    db $fc
    and e
    inc b
    jp z, $c043

    cp a
    inc hl
    add b
    dec bc
    ld b, c
    ret nz

    ld b, a
    ret nz

    ld c, [hl]
    ret nz

    call z, $cc80
    add d
    push hl
    add d
    jp $00f3


    ret nz

    add a
    inc b
    db $eb
    ld bc, $8000
    ldh a, [$2e]
    rst $38
    nop
    ld sp, hl
    sub b
    rst $38
    ld bc, $04ff
    add l
    rst $38
    add hl, bc
    ei
    rlca
    ld a, a
    adc a
    ld e, a
    cp a
    rla
    rst $38
    rrca
    ldh a, [rLYC]
    rlca
    ld hl, sp+$03
    add d
    ld a, l
    jp nz, $873d

    rst $38
    ld b, e
    ld b, b
    ret nz

    rlca
    ld b, c
    ret nz

    rst $00
    add b
    call nz, $e68a
    adc b
    ld b, e
    ld h, b
    nop
    inc b
    ret nz

    nop
    ret nz

jr_039_71b8:
    nop
    add b
    ld a, [hl]
    ld [bc], a
    ld bc, $0100
    and h
    and a
    ld b, $70
    ld [hl], b
    ld bc, $1f00
    nop
    db $fc
    adc b
    or c
    rrca
    ret z

    ld a, a
    ret c

    ld a, a
    ld a, [hl]
    ld h, c
    rst $38
    add b
    rst $38
    and b
    cp a
    db $e4
    ld [hl], h
    ld a, a
    dec de
    rra
    and e
    dec b
    cp h
    dec b
    ld e, d
    rst $18
    call $c7cf
    ld b, a
    ld b, e
    ld b, c
    pop bc
    inc bc
    add b
    add b
    pop hl
    sbc [hl]
    ld b, e
    db $e3
    sbc h
    inc de
    pop af
    adc $78
    rst $20
    jr @+$01

    inc d
    rst $30
    sub [hl]
    push af
    or l
    add d
    cp d
    add c
    sbc a
    add b
    ld b, a
    ret nz

    ld b, b
    ret nz

    add l
    inc bc
    ld [hl], b
    ld b, e
    ret nz

    nop
    ld [bc], a
    ld b, b
    add b
    add b
    db $ec
    jr nz, jr_039_71b8

    inc b
    ld hl, sp+$08
    inc c
    nop
    ld [hl], e
    ld [hl], b
    inc bc
    nop
    ld e, $00
    ld hl, sp-$78
    dec b
    rst $30
    ld [bc], a
    ret z

    ld a, a
    ld e, b
    sub h
    rst $38
    nop
    add $86
    rst $38
    ld bc, $9fe0
    add e
    ld b, $50
    inc b
    di
    call z, $e679
    jr c, @-$7a

    rst $38
    add hl, bc
    xor e
    add h
    or e
    adc h
    sbc c
    add [hl]
    ld e, [hl]
    pop bc
    ld b, a
    ret nz

    add a
    inc bc
    ld [hl], b
    and h
    ld b, $1a
    nop
    nop
    sub a
    dec b
    rst $30
    or c
    dec b
    db $f4
    inc b
    add b
    nop
    rst $00
    nop
    ld a, h
    ld l, b
    ld bc, $0f08
    and l
    inc bc
    ret c

    nop
    inc b
    add h
    dec b
    sub l
    and e
    ld bc, $8784
    nop
    add $00
    and b
    and h
    inc b
    add hl, bc
    add hl, bc
    ld h, l
    ld h, [hl]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld [$070f], sp
    rlca

Jump_039_727b:
    xor e
    ld bc, $0180
    add b
    add b
    db $ec
    daa
    inc b
    inc c
    nop
    ld c, $00
    rlca
    or b
    ld b, $f8
    ld [bc], a
    ldh a, [rP1]
    inc a
    ld h, [hl]
    ld bc, $1f11
    ld b, l
    ld [$030f], sp
    dec b
    rlca
    inc bc
    inc bc
    adc c
    nop
    ret nz

    add l
    ld b, $68
    ld h, c
    ldh a, [$31]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    nop
    ld bc, $80ca
    dec e
    rlca
    rlca
    jr c, jr_039_72f6

    ret nz

    rst $38
    inc bc
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld [hl-], a
    ccf
    ret nz

    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr c, @+$01

    inc e
    inc e
    ld h, d
    ld a, [hl]
    add h
    db $fc
    ld a, [bc]
    cp $43
    inc b
    db $fc
    inc bc
    dec bc
    rst $38
    db $10
    rst $38
    ld l, c
    dec b
    ret c

    ld hl, sp+$06
    cp $01
    rst $38
    db $ec
    ld d, l
    inc hl
    ld bc, $0305
    inc bc
    rrca
    rrca
    ccf
    ccf
    add a
    nop
    inc h
    rlca
    ld e, $1e
    ld a, a
    ld a, a
    rst $38
    rst $38

jr_039_72f6:
    db $fc
    db $fc
    xor l
    nop
    ld [de], a
    db $ec
    dec h
    dec b
    ld bc, $0601
    rlca
    ld [$430f], sp
    db $10
    rra
    ld b, $20
    ccf
    ld c, $0f
    jr nc, @+$41

    ret nz

    ld b, h
    rst $38
    nop
    nop
    ld bc, $ff44
    ld [bc], a
    ld [$ff01], sp
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add b
    ld b, h
    rst $38
    nop
    ld [bc], a
    inc bc
    db $fc
    ret nz

    ld b, [hl]
    rst $38
    nop
    add e
    sub a
    inc b
    jr c, @+$01

    ldh [$1f], a
    db $10
    ld b, h
    rst $38
    jr nz, jr_039_7337

jr_039_7337:
    ld b, b
    add h
    sbc a
    inc bc
    ld bc, $03fe
    db $fc
    add h
    sbc e
    ld a, [de]
    cp $1f
    ldh [$7f], a

jr_039_7346:
    add b
    ld hl, sp+$07
    ldh [$1f], a
    jp $8e3f


    adc [hl]
    or c
    cp a
    ldh a, [rIF]
    ld hl, sp+$07
    ld c, h
    di
    ld c, [hl]
    ld sp, hl
    adc d
    db $fd
    inc de
    db $fc
    add e
    nop
    jp c, Jump_039_4001

    ret nz

    ld b, a
    jr nz, jr_039_7346

    ld bc, $c040
    sub l
    nop
    db $10
    dec b
    ld bc, $0701
    rlca
    ccf
    ccf
    ld [hl+], a
    rst $38
    add h
    nop
    ld e, a
    ld bc, $0f0f
    add hl, hl
    rst $38
    ld bc, $7f7f
    dec l
    rst $38
    nop

jr_039_7383:
    ld sp, hl
    adc $80
    rlca
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc

jr_039_738d:
    cp $fe
    and [hl]
    and a
    adc b
    nop
    ld e, a
    ld bc, $7878
    add l
    sub l
    ld l, a
    rlca
    ld [hl+], a
    ccf
    ld [de], a
    rra
    ld de, $081f
    rrca
    rst $00
    nop
    rst $00
    ld b, e
    inc b
    rst $38
    rlca
    add d
    rst $38
    ld b, d
    rst $38
    ld hl, $a1ff
    rst $38
    ld b, e
    ld h, b
    ld a, a
    rlca
    rrca
    ldh a, [rNR34]
    pop hl
    jr c, jr_039_7383

    jr c, jr_039_738d

    ld b, e
    ld l, b
    sbc a
    ldh [rNR52], a
    call nz, $c33f
    ccf
    ld hl, sp+$07
    inc a
    jp $f906


    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    rlca
    rst $38
    jr @+$01

    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    adc h
    ld [hl], e
    cp $73
    reti


    daa
    ld e, b
    and a
    sbc h
    ld a, a
    ldh [$83], a
    ld bc, $022b
    rst $38
    inc c
    rst $38
    add e
    ld bc, $1340
    and c
    rst $38
    ld de, $21fe
    cp $c3
    cp $0d
    db $fc
    inc sp
    ldh a, [rSCX]
    ret nz

    add d
    add b
    add [hl]
    add b
    ld b, b
    ret nz

    adc l
    nop
    call c, $0083
    cp b
    rlc b
    cp e
    dec hl
    rst $38
    inc bc
    rra
    rra
    rrca
    rrca
    db $e4
    dec a
    rst $38
    daa
    cp $c3
    ld bc, $05d5
    ld hl, sp-$08
    jr c, jr_039_745e

    jr jr_039_7440

    sub c
    nop
    db $f4
    and a
    ld bc, $a574
    ld [bc], a
    ld [hl], b
    inc b
    sub b
    rst $38
    dec c
    cp $03
    ld b, [hl]
    cp $01
    inc bc
    ret nz

    rst $38
    jr c, jr_039_747e

jr_039_743f:
    and e

jr_039_7440:
    ld [bc], a
    ld [hl], $0c
    ldh [$7f], a
    sub b
    ld a, a
    adc l
    ld a, a
    ld b, c
    cp a
    ld b, e
    cp a
    ld b, d
    cp a
    ldh [$83], a
    ld bc, $0145
    rst $38
    add b
    ld c, b
    rst $38
    nop
    dec b
    ld d, b
    xor a
    jr nc, @-$2f

jr_039_745e:
    jr nz, jr_039_743f

    add l
    adc e
    ld b, $30
    rst $08
    db $fc
    inc bc
    ld b, c
    rst $38
    ld b, c
    ld b, h
    rst $38
    ld [hl+], a
    ld [$ff14], sp
    jr @+$01

    ld de, $0eff
    cp $46
    ld b, h
    ret nz

    ld c, h
    ld [$c05c], sp
    sbc h

jr_039_747e:
    add b
    cp b
    add b
    jr c, jr_039_7483

jr_039_7483:
    jr nc, jr_039_74f1

    ld [bc], a
    ld h, b
    nop
    ldh a, [rSVBK]
    add e
    nop
    cp h
    add l
    ld bc, $a3b0
    ld [bc], a
    db $e4
    ld bc, $0707
    ldh a, [$31]
    ld [bc], a
    xor [hl]
    adc c
    adc c
    add e
    ld [bc], a
    and $23
    jr nc, @+$25

    jr nz, @+$25

jr_039_74a4:
    ld h, b
    inc bc
    jp $c7c3


    rst $00
    or [hl]
    nop
    db $10
    inc b
    ld bc, $0001
    ld bc, $4302
    inc bc
    nop
    add e
    inc bc
    ld [$e410], sp
    rlca
    ld [hl], h
    add a
    or d
    ld b, e
    cp d
    inc bc
    cp c
    ld bc, $011c
    and $1f
    ld a, [$e21f]
    ld b, h
    rra
    rst $20
    dec b
    rst $28
    rra
    rst $30
    rla
    jp nz, $c603

    inc bc
    ld a, [de]
    ld b, h
    db $fc
    inc bc
    inc bc
    add e
    db $fc
    add c
    cp $43
    cp $01
    dec b
    di
    inc c
    rst $38
    jr nc, @+$01

    ld c, b
    ld b, l

jr_039_74eb:
    rst $38
    add h
    ld c, l
    ld [$0bf8], sp

jr_039_74f1:
    jr c, jr_039_74eb

    ld [hl], c
    nop
    ld h, e
    db $10
    ld l, a
    db $10
    cpl
    db $10
    jr nc, jr_039_7509

    rst $00
    inc bc
    add h
    inc c
    ret nz

    jr nc, jr_039_74a4

    ld d, b
    jr nc, jr_039_7507

jr_039_7507:
    jr nz, jr_039_7509

jr_039_7509:
    ld h, b
    nop
    ld b, b
    nop
    ret nz

    sub h
    nop
    dec c
    inc bc
    dec e
    dec e
    ccf
    ccf
    inc hl
    db $76
    inc hl
    ld h, e
    adc e
    ld bc, $03a6
    ld [hl], c
    ld [hl], c
    pop af
    pop af
    ccf
    rst $38
    dec h
    pop hl
    add hl, hl
    ldh [$03], a
    rst $08
    rst $08
    rst $18
    rst $18
    add e
    ld bc, $07be
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    inc hl
    add b
    xor c
    ld [bc], a
    add [hl]
    ld bc, $0000
    ld b, a
    inc bc
    nop
    ld b, l
    ld bc, $6100
    ld [$021d], sp
    dec bc
    inc b
    rlca
    nop
    add e
    nop
    add b
    and h
    sub l
    ld b, $e0
    nop
    jp $8103


    ld bc, $aa81
    or c
    ld [$fe41], sp
    pop bc
    cp $41
    cp $c0
    rst $38
    ld b, b
    ld b, h
    rst $38
    and b
    dec d
    sub b
    rst $38
    rst $38
    cp h
    sbc $fd
    xor $fd
    jp c, $ea7b

    ld a, e
    jp c, Jump_039_727b

    di
    ld d, c
    pop af
    ld a, b
    ret z

    ld l, b
    ret c

    ld b, l
    ld b, h
    db $fc
    ld b, e
    add h
    db $fc
    ld [bc], a
    inc b
    db $fc
    nop
    add $d5
    ld b, $06
    nop
    inc c
    nop
    ld [$0000], sp
    and d
    push hl
    sbc l
    nop
    db $dd
    inc hl
    ld h, c
    ld bc, $7070
    inc hl
    jr c, jr_039_75a8

    inc e
    inc e
    ld c, $0e
    inc bc

jr_039_75a8:
    inc bc
    inc hl
    ldh [rSB], a
    ret nz

    ret nz

    adc c
    inc bc
    or $ab
    ld [bc], a
    ret c

    ld bc, $3f3f
    add l
    ld bc, $259a
    rst $30
    ld bc, $f3f3
    inc hl
    db $e3
    ld bc, $e0e0
    add hl, hl
    ldh a, [rNR44]
    ldh [rTAC], a
    inc c
    inc c
    ld [$1808], sp
    jr @+$22

    jr nz, @-$12

    daa
    inc b
    ld a, b
    nop

jr_039_75d6:
    ld e, $00
    rlca
    ret nc

    dec b
    add c
    adc c
    nop
    rst $08
    rrca
    ld d, b
    ld a, a
    ld e, b
    ld a, a
    adc h
    rst $38
    adc [hl]
    rst $38
    ld b, [hl]
    ld a, a
    ld c, d
    ld a, e
    ld [hl-], a
    inc sp
    ld bc, $4501
    ld hl, $01e1
    jr nz, jr_039_75d6

    ld b, e
    db $10
    ldh a, [$03]
    ld [$28f8], sp
    ret c

    ld b, e
    ld [$05f8], sp
    ld c, b
    ld hl, sp-$30
    ldh a, [$60]
    ld h, b
    db $ec
    dec [hl]
    xor a
    nop
    call c, $e003
    ldh [$3e], a
    ld a, $6b
    inc hl
    ld a, a
    inc bc
    dec sp
    dec sp
    dec de
    dec de
    and a
    inc b
    ld a, [c]
    inc bc
    db $e3
    db $e3
    pop hl
    pop hl
    dec h
    ldh a, [rNR51]
    ld hl, sp+$03
    ldh [$e0], a
    ret nz

    ret nz

    db $ec
    ld e, e
    rst $08
    nop
    cp c
    dec b
    ld d, h
    xor h
    inc h
    call c, $bcc4
    ld b, l
    add h
    db $fc
    inc bc
    xor b
    ld hl, sp+$70
    ld [hl], b
    db $ec
    ld l, a
    push bc
    ld b, $cd
    ldh a, [$39]
    rst $30
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $ec
    xor d
    ld b, $01
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [hl], a
    rlca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld [hl], a
    rlca
    jr nz, jr_039_7686

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld [hl], a
    rlca
    jr nc, jr_039_76a0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [hl], a
    rlca
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [hl], a
    rlca
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_039_7686:
    ld d, l
    ld d, [hl]
    ld d, a
    ld [hl], a
    rlca
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    rlca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    xor $6d
    rst $38

jr_039_76a0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    xor c
    inc hl
    ld bc, $80cf
    res 0, b
    ldh a, [$df]
    sbc a
    xor $55
    rst $38
    nop
    nop
    db $ec
    dec h
    inc bc
    jp z, $cccb

    call $037b
    jp c, $dcdb

    db $dd
    ld h, c
    ld bc, $cfce
    ld [hl], e
    rlca
    or h
    or l
    or [hl]
    nop
    ld [$eceb], a
    db $ed
    ld h, c
    ld bc, $dfde
    ld [hl], e
    ld [bc], a
    call nz, $c6c5
    ld a, h
    ld [bc], a
    call nc, $d6d5
    ld h, c
    add hl, bc
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    adc b
    adc c
    ld [hl], b
    ld c, $e4
    push hl
    and $00
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    sbc b
    sbc c
    ld [hl], h
    ld a, [bc]
    jr nz, jr_039_7728

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    xor b
    xor c
    ld l, a
    ld [bc], a
    or a
    cp b
    cp c
    ld h, c
    rlca
    jr nc, jr_039_774a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld h, c
    inc bc
    adc d
    adc e
    adc h
    adc l
    ld l, h
    ld [bc], a
    rst $00

jr_039_7728:
    ret z

    ret


    ld h, c
    rlca
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, c
    inc bc
    sbc d
    sbc e
    sbc h
    sbc l
    ld l, h
    ld [bc], a
    rst $10
    ret c

    reti


    ld h, c
    rlca
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, c

jr_039_774a:
    inc bc
    xor d
    xor e
    xor h
    xor l
    ld [hl], c
    rlca
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, c
    inc bc
    cp d
    cp e
    cp h
    cp l
    ld [hl], c
    rlca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, b
    ld h, a
    ld a, h
    inc bc
    ldh [$e1], a
    ld [c], a
    db $e3
    ld [hl], e
    inc bc
    add h
    add l
    add [hl]
    add a
    ld h, e
    ld [bc], a
    ldh a, [$f1]
    ld a, [c]
    or h
    nop
    ld c, l
    inc bc
    sub h
    sub l
    sub [hl]
    sub a
    ld a, e
    inc bc
    and h
    and l
    and [hl]
    and a
    db $ed
    ld hl, sp-$01
    nop
    nop
    db $ec
    dec h
    inc bc
    inc b
    inc b
    inc b
    inc b
    ldh a, [rNR42]
    sbc a
    ld bc, $0606
    ld [hl], e
    ld [hl+], a
    rlca
    ldh a, [rNR41]
    sbc a
    ld a, e
    add e
    sbc a
    daa
    ld bc, $0002
    rlca
    rlca
    ldh a, [$30]
    sbc a
    ld h, d
    sbc e
    sbc a
    ld [hl+], a
    ld [bc], a
    adc d
    sbc a
    nop
    nop
    inc hl
    inc bc
    ldh a, [$4c]
    sbc a
    add d
    rst $38
    sbc h
    rst $18
    add d
    sbc a
    nop
    nop
    db $dd
    nop
    xor $c9
    nop
    ld [hl], l
    sub l
    nop
    ld l, h
    inc bc
    dec b
    dec b
    dec b
    dec b
    ldh a, [rNR44]
    sbc a
    ld h, e
    sub a
    sbc a
    db $ed
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    sbc b
    dec h
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    sbc b
    dec h
    rst $38
    ld a, a
    jr z, jr_039_7868

    nop
    nop
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    sbc b
    dec h
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc c
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    dec [hl]
    ld bc, $0135
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld l, e
    dec l
    nop
    nop
    ld h, c
    dec b
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ld b, e
    ccf
    nop

jr_039_7868:
    ld [bc], a
    ld a, a
    nop
    ld a, a
    ld h, h
    ld [bc], a
    ld bc, $0700
    add h
    sub e
    add e
    sub l
    inc bc
    rrca
    nop
    ld a, a
    nop
    ld c, e
    rst $38
    nop
    add e
    sbc l
    ld bc, $0001
    ld b, e
    inc bc
    nop
    ld b, a
    rlca
    nop
    ld b, a
    rrca
    nop
    ld c, a
    rra
    nop
    ld b, h
    ccf
    nop
    db $ec
    ld [hl], $89
    nop
    inc d
    ld h, e
    nop
    ld a, [hl]
    adc c
    rst $38
    or h
    sbc a
    ret


    db $dd
    nop
    ld a, a
    add a
    nop
    rlca
    ld [bc], a
    nop
    ld a, a
    nop
    ld d, l
    rst $38
    nop
    and e
    sbc a
    ld c, e
    cp $00
    ld b, e
    ld a, a
    nop
    inc b
    inc a
    nop
    ld a, $00
    ld e, $c6
    db $eb
    ld [bc], a
    rst $38
    nop
    cp a
    add $f3
    nop
    rra
    and e
    adc c
    ret nc

    or a
    ld [bc], a
    db $fc
    nop
    db $fc
    ret z

    di
    inc b
    ret nz

    nop
    add b
    nop
    inc bc
    ld l, [hl]
    add d
    sbc c
    ld l, h
    ld [bc], a
    rlca
    nop
    rra
    add [hl]
    nop
    rst $10
    nop
    rst $20
    and h
    or c
    ld [bc], a
    add b
    nop
    add b
    xor b
    nop
    ld sp, $c000
    ret nc

    xor e
    ld [bc], a
    nop
    nop
    inc bc
    adc b
    nop
    rla
    ld [bc], a
    ld a, $00
    inc e
    ld h, c
    xor b
    nop
    rst $10
    nop
    adc [hl]
    ldh a, [$2d]
    nop
    ld l, c
    rlca
    ld bc, $0707
    dec bc
    rrca
    rra
    rra
    inc de
    add h
    nop
    sbc [hl]
    ld bc, $7e7e
    add hl, hl
    rst $38
    xor c
    sbc a
    ld bc, $f0f0
    ld [hl+], a
    ld hl, sp-$74
    ld bc, $037e
    ccf
    ccf
    ld c, e
    ld a, a
    ld b, e
    ld hl, $083f
    ld b, d
    ld a, a
    ld b, l
    ld a, a
    ld l, d
    ld a, a
    push de
    rst $38
    db $eb
    ld [hl-], a
    rst $38
    inc hl
    db $fc
    dec hl
    cp $00
    ld c, a
    ld [hl+], a
    ld a, a
    rrca
    inc a
    inc a
    ld a, $3e
    ld e, $1e
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rst $38
    rst $38
    cp a
    cp a
    inc hl
    rra
    and e
    db $dd
    and e
    adc c
    dec l
    rst $38
    ld bc, $7f7f
    inc hl
    db $fc
    rst $00
    db $f4
    inc b
    ret nz

    ret nz

    add b
    add b
    inc bc
    adc [hl]
    ld bc, $8240
    sbc c
    adc h
    ld bc, $0652
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, a
    cp a
    ld [hl+], a
    rst $38
    ld bc, $e7e7
    and e
    or c
    daa
    add b
    dec h
    ret nz

    ld bc, $f8f8
    ld a, a
    ld bc, $0303
    add e
    ld [bc], a
    ld e, b
    rlca
    rla
    rra
    daa
    ccf
    ld l, $3e
    inc e
    inc e
    ld h, c
    ld [bc], a
    cp $fe
    ei
    inc h
    rst $38
    nop
    adc [hl]
    add [hl]
    ld bc, $ffa8
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr nz, jr_039_79d3

    add hl, bc
    add hl, sp
    ld e, l
    ld a, l
    ld e, e
    ld a, a
    add a
    rst $28
    or e
    rst $30
    ld bc, $1101
    ld de, $1302
    ld hl, $1533
    scf
    ld b, c
    ld h, a
    ld [bc], a
    ld l, [hl]
    or d
    rst $38
    and d
    rst $30
    ld c, c
    rst $18
    ld b, l
    rst $18
    dec h
    cp a
    xor d
    cp a
    xor $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    sub b
    db $dd
    inc b
    ld e, l
    ld h, h
    rst $38

jr_039_79d3:
    inc h
    cp a
    xor d
    cp a
    rst $28
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    adc b
    call z, $ce42
    ld d, a
    rst $18
    ld d, [hl]
    rst $18
    and c
    cp e
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    inc b
    ld c, b
    ld c, h
    ld b, l
    ld c, l
    ret nc

    reti


    ret nz

    db $db
    ld d, c
    ei
    inc h
    rst $28
    ld [hl+], a
    rst $28
    ld [de], a
    rst $18
    xor d
    rst $38
    xor $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ld c, b
    xor $82
    xor [hl]
    or d
    rst $38
    sub d
    rst $18
    xor d
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld b, h
    ld h, [hl]
    ld hl, $ab67
    rst $28
    ld c, e
    rst $08
    ld d, b
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2401
    ld h, $a2
    and [hl]
    ld c, b

jr_039_7a3a:
    call z, $d9c0
    jr z, jr_039_7a3a

    inc d
    rst $38
    ld de, $02ff
    rst $38
    xor d
    rst $38
    xor $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ret z

    ld_long a, $ff41
    ld h, c
    rst $38
    sub d
    rst $18
    cp d
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    jr c, jr_039_7a61

jr_039_7a61:
    jr c, jr_039_7a63

jr_039_7a63:
    jr c, jr_039_7a65

jr_039_7a65:
    jr c, jr_039_7a67

jr_039_7a67:
    jr c, jr_039_7a69

jr_039_7a69:
    jr c, jr_039_7a6b

jr_039_7a6b:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7c01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
