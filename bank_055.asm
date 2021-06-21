; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

    db $ec

Jump_055_4001:
    add hl, sp
    rlca
    inc c
    inc c
    inc sp
    ccf
    ld b, b
    ld h, a
    ld b, b
    ld b, a
    ld b, e
    add b
    rst $08
    ld b, e
    ld b, b
    ld a, a
    dec c
    inc sp
    ccf
    dec c
    dec c
    ld b, $07
    ld [$080c], sp
    ld [$1910], sp
    db $10
    rra
    ld b, e
    ld [$030f], sp
    ld b, $07
    ld bc, $6701
    ld [bc], a
    ld bc, $0007
    ld b, h
    ld [$010f], sp
    rlca
    rlca
    ld [hl], d
    ld c, $01
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc b
    ld b, $04
    dec c
    inc c
    ld [hl], $34
    ld b, e
    ld b, a
    ld h, h
    ld b, e
    add a
    db $fc
    add hl, de
    ld b, e
    ld a, [hl]
    jp $f3fe


    cp [hl]
    rst $38
    ld c, $d1
    ld de, $91d1
    ld sp, hl
    adc c
    ld a, h
    ld e, h
    di
    jp $c07f


    ccf
    ldh [$1f], a
    db $fc
    dec bc
    ei
    or d
    rst $18
    inc b
    add b
    pop af
    ld [hl], c
    ld a, $0e
    ld b, h
    rst $38
    nop
    ld [bc], a
    ldh [rNR31], a
    inc e
    ld b, l
    rlca
    inc b
    ld b, e
    rrca
    ld [$330a], sp
    inc a
    ld l, e
    ret nz

Jump_055_407f:
    ld b, l
    nop
    dec hl
    nop
    ld e, a
    nop
    cp a
    add h
    add e
    nop
    ld a, a
    add h
    add e
    ld d, h
    rst $38
    nop
    ld bc, $fd80
    ld b, e
    add b
    ld hl, sp+$0e
    ld b, b
    ld hl, sp+$40
    db $fc
    ret nz

    ld a, h
    ld b, b
    ld a, $20
    ccf
    jr nz, jr_055_40b9

    db $10
    inc de
    db $10
    ld h, c
    inc de
    inc b
    inc e
    ld [bc], a
    ld [hl+], a
    ld b, c
    ld b, c
    add c
    add c
    ld hl, $f201
    ld [bc], a
    db $fc
    inc c
    ldh a, [rNR10]
    ldh [rNR41], a

jr_055_40b9:
    ldh [$60], a
    ld b, e
    ldh [rNR41], a
    dec c
    jp $cc43


    ld c, a
    ret nc

    ld e, c
    ret nc

    ret nc

    ldh [$30], a
    ldh [$39], a
    ldh [$3f], a
    ld b, e
    ldh a, [$1f]
    inc bc
    db $fc
    rrca
    rst $38
    inc bc
    ld b, l
    cp $02
    ld bc, $03fc
    ld b, [hl]
    rst $38
    ld bc, $0005
    rst $38
    rlca
    rst $38
    ld [$a8fc], sp
    pop hl
    push bc
    push af
    ld b, e
    ld a, a
    nop
    ld b, $fb
    nop
    di
    nop
    pop af
    nop
    ld sp, hl
    ld l, [hl]
    ldh [rNR44], a
    inc bc
    inc bc
    inc b
    ld b, $04
    inc b
    ld [$080c], sp
    ld c, $08
    rrca
    add h
    add a
    ld h, h
    rst $20
    inc de
    di
    inc de
    ld a, [c]
    dec c
    db $fc
    dec de
    ld hl, sp+$13
    pop hl
    ld [hl], $c3
    ld a, $e2
    ld a, h
    or $9c
    sub a
    inc e
    rla
    ld b, e
    ld c, $0b
    inc bc
    rrca
    add hl, bc
    rrca
    ld [$1f43], sp
    ld de, $fe04
    ld [c], a
    adc $82
    ld e, $a4
    ld bc, $0517
    ld hl, sp+$18
    ldh [$60], a
    ldh [$a0], a
    and l
    nop
    jp c, $f843

    ld [$fc43], sp
    inc b
    ld b, e
    cp $02
    ld l, e
    nop
    ldh [$c3], a
    and d
    ld b, $7c
    inc b
    inc a
    ld [bc], a

jr_055_414c:
    ld a, $02
    ld a, [hl]
    push bc
    sbc d
    inc de
    jr jr_055_414c

    ldh [$e0], a
    add b
    add b
    ldh a, [rSVBK]
    adc h
    db $fc
    ld [bc], a
    ld a, $02
    ld e, $01
    rra
    ld bc, HeaderManufacturerCode
    rst $38
    ld b, e
    ld [bc], a
    cp $03
    adc h
    db $fc
    ldh a, [$f0]
    db $ec
    dec h
    rst $38
    db $ec
    dec l
    ld [de], a
    inc c
    ld e, $27
    ld hl, $4043
    ld b, c
    add d
    pop bc
    and [hl]
    pop bc
    cp [hl]
    ld h, e

jr_055_4181:
    sbc h
    ld a, a
    ld b, b
    ccf
    ld hl, $240c
    ld e, $10
    inc de
    dec e
    ld c, $09
    rrca
    ld [$090e], sp
    ld bc, $070f
    rlca
    ld b, $07
    rlca
    inc b
    inc bc
    ld b, e
    ld [bc], a
    ld bc, $0102
    nop
    ld bc, $25ec
    ld bc, $0101
    res 0, b
    inc de
    add b
    add c
    add b
    ld b, d
    jp nz, $c442

    ld b, h
    add b
    ld c, b
    ld [$0888], sp
    ld [$080a], sp
    ld bc, $0604
    inc b
    add h
    pop de
    ld [bc], a
    add c
    add b
    add b
    inc hl
    ret nz

    dec c
    ldh a, [$30]
    db $fc
    inc e
    db $db
    ccf
    cp a
    ld a, e
    rst $30
    ld sp, hl
    rst $38
    pop af
    ld e, l
    db $e3
    sub c
    sla e
    ld [bc], a
    nop
    nop
    inc hl
    inc b
    ld d, $05
    ld [bc], a
    ld [bc], a
    inc c
    inc e
    jr c, @+$7a

    ld [hl], b
    ret z

    jr z, jr_055_41f9

    db $fc
    ret nc

jr_055_41eb:
    adc $f0
    db $76
    ld l, b
    ld e, $18
    inc [hl]
    inc [hl]
    ld b, b
    ret nz

    ld h, e
    ld [bc], a
    ld a, [bc]
    nop

jr_055_41f9:
    dec d
    add a
    db $ed
    inc b
    nop
    ld d, b
    jr nz, jr_055_4181

    ld b, b
    and e
    nop
    add e
    dec d
    ret nz

    add b
    ld hl, $3f40
    ld sp, $2f3f
    ccf
    jr nz, @+$01

    ret nz

    adc a
    ldh a, [$57]
    ld hl, sp+$6f
    cp h
    db $fd
    sbc [hl]
    rst $38
    sbc [hl]
    ld l, e
    inc bc
    inc e
    inc a
    ld b, e
    jp $e283


    dec b
    ld [bc], a
    ld bc, $0f17
    jr nz, jr_055_41eb

    or a
    nop
    ld e, h
    ld [bc], a
    ld bc, $0200
    add e
    db $dd
    sub h
    sbc [hl]
    add hl, bc
    xor b
    nop
    push af
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38

jr_055_4240:
    rra
    ld b, l
    rst $38
    nop
    nop
    rst $38
    ld l, d
    rlca
    ld b, $0e
    ld de, $4031
    ld b, b
    add b
    add b
    xor b
    call nz, $001e
    dec b
    nop
    dec bc
    nop
    rlca
    nop
    dec bc
    ld bc, $0307
    ld c, $07
    ld d, h
    ld c, $ac
    ld c, $5e
    rrca
    rst $30
    rrca
    ld a, a
    rlca
    ld a, a
    inc bc
    cp a
    ld bc, $007f
    rst $38
    nop
    ld b, e
    ld a, a
    nop
    ld [bc], a
    scf
    nop
    ld a, [hl+]
    call nz, $f900
    add hl, de
    dec b
    nop
    ld a, [bc]
    nop
    cpl
    nop
    ld d, a
    nop
    cp a
    nop
    ld l, a
    inc d
    db $fd
    dec de
    rst $18
    ldh [rIE], a
    nop
    db $fd
    inc bc
    rst $38
    dec b
    rst $38
    ld bc, $02fe
    xor a
    nop
    call nz, $2023
    inc h
    db $10
    dec b
    ld h, b
    ld [hl], b
    db $10
    ldh a, [$08]
    ld hl, sp+$43
    ld [$e0f0], sp
    ld hl, $b0d0
    ldh a, [$78]
    inc c
    ld c, $1e
    ld [bc], a
    rlca
    rst $38
    rra
    cp $1e
    ld l, b
    sbc h
    or b
    ldh a, [$e0]
    ret nc

    ret nz

    jr nz, jr_055_4240

    ld b, b
    ldh a, [$30]
    xor b
    ld [$04d4], sp
    xor h
    inc b
    sub $02
    ld a, [$0244]
    cp $0f
    call c, $fe26
    dec d
    rst $28
    add hl, de
    rst $38
    ld hl, $c2bc
    ld hl, sp+$04
    ld hl, sp+$18
    ret nz

    ldh [$65], a
    rst $38
    db $ec
    ld [hl], l
    rlca
    rlca
    rlca
    dec c
    dec bc
    rrca
    ld de, $161b
    ld b, l
    rra
    db $10
    add hl, bc
    rrca
    ld [$090e], sp
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $7701
    add hl, bc
    ld bc, $0601
    rlca
    ld [$120f], sp
    jr jr_055_431b

    db $10
    ld b, a
    ccf
    jr nz, @-$1e

    dec hl
    rra
    db $10
    rla
    jr jr_055_431d

    rrca
    inc bc
    inc bc
    jr jr_055_432e

    inc a
    inc a
    ld h, $3e
    ld [de], a

jr_055_431b:
    ld e, $0b

jr_055_431d:
    rrca
    rlca
    ld c, $09
    db $10
    rla
    jr z, jr_055_43a4

    ld c, b
    ccf
    ld b, d
    db $fd
    add a
    ld a, a
    add b
    xor a
    nop

jr_055_432e:
    ld e, a
    nop
    or b
    nop
    ld b, b
    nop
    add b
    nop
    adc [hl]
    nop
    ld b, l
    rra
    nop
    dec bc
    rrca
    add b
    add a
    add b
    ret nz

    ret nz

    jr nz, jr_055_4364

Call_055_4344:
    jr nc, jr_055_437e

    add hl, sp
    daa
    ld b, e
    ld e, $12
    dec d
    dec c
    dec c
    ld bc, $0301
    ld [bc], a
    dec b
    ld b, $08
    rrca
    jr c, jr_055_438f

    sub $c1
    dec bc
    ldh [rTAC], a
    ld hl, sp-$7d
    ld a, h
    ld b, e
    inc a
    ld b, a
    pop hl

jr_055_4364:
    ld e, $1c
    jp $833c


    ld a, l
    ld b, $fe
    ld hl, sp-$08
    jr nc, jr_055_43a0

    ld a, b
    ld a, b
    ld c, h
    ld a, h
    inc h

jr_055_4375:
    inc a
    db $e4
    db $fc
    add sp, $38
    db $fc
    inc [hl]
    cp [hl]
    ld b, d

jr_055_437e:
    cp $42
    rst $38
    ld bc, $44fe
    ld bc, $04ff
    cp $01
    rst $38
    nop
    ccf
    add l
    reti


    nop

jr_055_438f:
    nop

jr_055_4390:
    ld b, l
    adc a
    nop

jr_055_4393:
    ld b, e
    rra
    ld bc, $3a15

jr_055_4398:
    ld b, $e6
    ld a, [de]
    rst $38
    pop af
    sbc a
    ld sp, hl
    sbc e

jr_055_43a0:
    db $fd
    ld d, $f6
    db $10

jr_055_43a4:
    ldh a, [$c8]
    jr c, jr_055_4390

    jr jr_055_4422

    adc b
    jr c, jr_055_4375

    ld b, e
    jr jr_055_4398

    ld b, e
    sub b
    ld [hl], b
    ld bc, $30d0
    ld b, e
    ldh [rNR41], a
    ld bc, $40c0
    cp e
    nop
    adc d
    ld h, c
    ld bc, $e0e0
    and e
    nop
    add h
    inc bc
    ld hl, sp+$08
    jr c, jr_055_4393

    and e

jr_055_43cc:
    nop
    add d
    ld bc, $10f0
    add e
    or e
    add e
    or c
    db $ec
    sbc l
    dec c
    inc bc
    inc bc
    ccf
    inc a
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ccf

Jump_055_43e3:
    jr nc, jr_055_4404

    db $10
    rst $00
    ld bc, $6303
    ld [$0303], sp
    rlca
    rlca
    dec b
    rlca
    add hl, bc
    rrca
    add hl, bc
    adc d
    nop
    ret


    dec b
    rst $38
    add a
    ld sp, hl
    rlca
    xor a
    ld [bc], a
    sub e
    nop
    jp c, Jump_055_4001

    ld b, b

jr_055_4404:
    add a
    nop
    ldh a, [$0d]
    rra
    inc de
    dec c
    dec c
    inc bc
    ld [bc], a
    inc b
    rlca
    ld [$f40f], sp
    di
    ld a, [bc]
    pop hl
    add l
    ld bc, $630a
    dec b
    inc c
    inc c
    sbc [hl]
    sbc [hl]
    sub d
    sbc [hl]
    adc l

jr_055_4422:
    ld bc, $4726
    rst $38
    nop
    sbc e
    ld bc, $033c
    dec de
    db $fd
    ld d, $f6
    jp $a201


    adc l
    ld bc, $0162
    ret nc

    jr nc, jr_055_43cc

    ld bc, $05a4
    add b
    add b
    ldh [$60], a
    db $fc
    inc e
    and a
    ld [bc], a
    ld c, [hl]
    adc c
    ld bc, $05a2
    ld a, a
    ld c, d
    ccf
    ld b, l
    rst $38
    add b
    adc c
    nop
    sub $ff
    db $ec
    dec h
    inc bc
    jr nc, jr_055_44d0

    ld b, $87
    dec h
    add b
    dec b
    nop
    ld a, b
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, c
    inc hl
    jr nz, jr_055_4489

    db $10
    ld bc, $0808
    inc hl
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $ec01
    ld b, c
    dec b
    add b
    ret nz

    jr nz, jr_055_44a8

    ld [$840c], sp
    rrc b
    add b
    nop
    ld b, b
    ld b, b
    jr nz, jr_055_4483

jr_055_4483:
    stop
    db $10
    and h
    add e
    inc e

jr_055_4489:
    inc b
    jr nz, jr_055_4490

    ld d, h
    ld [bc], a
    xor b
    add d

jr_055_4490:
    dec d
    ld b, b
    ld a, [hl+]
    jr nz, jr_055_44aa

    db $10
    ld c, $0c
    ld [bc], a
    inc bc
    dec b
    ld b, $0e
    ld [$1018], sp
    jr nc, @+$22

    jr nc, jr_055_44e4

    ld h, b
    ld b, b
    ld l, e
    rrca

jr_055_44a8:
    inc bc
    ccf

jr_055_44aa:
    ld bc, $1f40
    ld c, b

Jump_055_44ae:
    ld a, a
    ld c, b
    ccf
    inc h
    ccf
    ld [hl+], a
    rra
    inc de
    rra
    ld de, $0f45
    ld [$0745], sp
    inc b
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101
    add l
    nop
    ld b, [hl]
    ld bc, $8080
    inc hl
    ld b, b

Call_055_44cc:
    adc c
    nop
    ld [hl], $23

jr_055_44d0:
    ld [$0c1b], sp
    inc b
    dec d
    dec b
    xor a
    ld b, $57
    inc b
    xor a

jr_055_44db:
    nop
    ld e, a
    nop
    ccf
    add b
    rrca
    nop
    rlca
    nop

jr_055_44e4:
    dec bc
    nop
    ld d, a
    nop
    xor a
    nop
    ld [bc], a
    ld b, $01
    add hl, bc
    push bc
    pop bc
    ld b, e

jr_055_44f1:
    rra
    db $10
    rla
    add $ff
    rst $38
    jr jr_055_44f1

    jr nz, jr_055_44db

    ld b, b
    ret nz

    add b
    ldh [$80], a
    push de
    add b
    db $eb
    add b
    rst $38
    ld b, b
    rst $38
    ld hl, $12ff
    rst $30
    inc c
    ld c, d
    rst $38
    nop
    inc b
    add b
    rst $38
    add b
    ld a, a
    add b
    ld c, a
    ld a, a
    ld b, b
    nop
    rst $38
    call nz, $4793
    rst $38
    ld bc, $fe0b
    ld [bc], a
    db $fc
    ld [bc], a

jr_055_4524:
    cp $00
    db $e3
    inc e
    add c
    ld a, [hl]
    inc e
    db $e3
    add h
    nop
    ldh a, [rNR23]
    ret nz

    and c
    ld hl, $11d1
    db $e3

jr_055_4536:
    ld a, [bc]
    ei
    ld b, $ff
    inc b
    rst $08
    jr c, @+$81

    ld [$10bf], sp
    ld a, a
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    ccf
    ret nz

    call z, $00cb
    nop
    add h
    cp c
    ld [bc], a
    rlca
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    and l
    nop
    sbc $01
    ret nz

    jr nz, jr_055_45a0

    ret nz

    ld b, c
    dec de
    pop bc
    ld b, d
    add b
    add d
    add c
    add h
    adc d
    add b
    add l
    nop
    dec bc
    ld bc, $0216
    inc c
    inc b
    jr jr_055_458a

    inc a
    ld l, $71
    ld c, c
    or $08
    ei

jr_055_4579:
    inc b
    rst $38
    inc b
    and l
    nop
    rst $00
    nop
    nop
    ld b, h
    jr nz, jr_055_4524

    nop
    ret nz

    ld b, e
    db $10
    ret nc

    ld [bc], a

jr_055_458a:
    db $10
    ldh a, [rNR10]
    ld c, a
    ld hl, sp+$08
    ldh [rNR52], a
    db $fc
    inc e
    ld a, [c]
    ld [hl-], a
    pop bc
    ld b, c
    add c
    add c
    ld bc, $0901
    ld bc, $0115

jr_055_45a0:
    ld a, [hl+]
    add d
    ld d, $42
    ld a, [hl+]
    ld b, d
    inc d
    ld b, h
    inc l
    ld b, h
    ld d, h
    add h
    jr z, jr_055_4536

    ld e, b
    ld [$10b0], sp
    ld d, b
    db $10
    and b
    jr nz, @+$62

    jr nz, jr_055_4579

    xor h
    nop
    ld b, l
    ld bc, $c0c0
    and l
    nop
    db $e4
    rst $38
    ld [hl], e
    inc hl
    ld bc, $0001
    ld bc, $024d
    inc bc
    ld bc, $0100
    jp $ec92


    ld c, a
    dec b
    jr nc, jr_055_4606

    ld c, b
    ld a, b
    add h
    call z, $0243
    add [hl]
    ld bc, $0200
    ld b, l
    ld bc, $0003
    nop
    ld c, c
    ld [bc], a
    nop
    ld e, $84
    nop
    add l
    add h
    adc $4c
    ld a, c
    inc a
    ld [hl], $3c
    dec h
    inc e
    ld d, $1d
    ld de, $0a0e
    rrca
    rrca
    inc de
    ld [de], a
    dec de
    ld d, $16
    ld de, $0e09
    rrca
    add hl, bc

jr_055_4606:
    rlca
    rlca
    add hl, hl
    dec b
    jr z, jr_055_460e

    nop
    inc bc

jr_055_460e:
    ret


    nop
    inc hl
    sub l
    nop
    inc l
    rlca
    ld bc, $0301
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$1e43], sp
    ld de, $2511
    dec sp
    ld hl, $193f
    rra
    sub d
    sbc a
    and e
    cp [hl]
    xor d
    cp [hl]
    sbc b
    sbc [hl]
    add h
    add a
    add e
    add e
    inc hl
    add b
    ld bc, $8383
    ld b, e
    add h
    add a
    dec d
    adc c
    adc a
    add hl, bc
    rrca
    dec e
    rra
    cp [hl]
    or e
    adc $c3
    ld a, l
    add l
    ei
    ld e, e
    ld [c], a
    db $e3
    add h
    add a
    inc b
    rlca
    inc b
    inc b
    add a
    rst $18
    inc b
    add b
    add d
    add h
    add h
    add l
    ld b, h
    add h
    add a
    rrca
    add [hl]
    add l
    add d
    add d
    add a
    add a
    add h
    add a
    adc e
    adc a
    jr jr_055_4681

    db $10
    rra
    rrca
    rrca
    ld l, l
    dec d
    inc sp
    ld [hl], a
    ld c, a
    cp b
    add [hl]
    ld a, c
    add h
    ld a, e
    ld b, b
    rst $38
    and h
    rst $18
    ldh a, [$9f]
    ld a, [c]
    ccf
    or d

jr_055_4681:
    ld l, a
    db $fd
    ld c, a
    cp c
    rst $00
    ld b, e
    ld a, l
    ld b, l
    ld b, e
    ccf
    nop
    ld a, [de]
    ld c, $91
    ld a, [hl]
    ld h, [hl]
    reti


    db $dd
    jr jr_055_46b9

    db $10
    jr z, jr_055_46a6

    ld a, $5b
    ei
    ld sp, $1bf1
    ei
    ld l, $ff
    inc h
    ei
    ld hl, $cfff

jr_055_46a6:
    rst $08
    ld bc, $ff44
    jr nz, jr_055_46b1

    ld h, b
    rst $38
    db $10
    db $10
    jp hl


jr_055_46b1:
    ld l, $45
    rst $28
    jr z, jr_055_46b8

    rst $00
    inc b

jr_055_46b8:
    rst $00

jr_055_46b9:
    ld b, h
    ld b, h
    push bc
    rrca

jr_055_46bd:
    ld b, c
    call nz, $2320
    and d
    ld [c], a
    ld b, e
    jp $e3a2


    inc hl
    db $e3
    ld b, d
    jp $8181


    ld l, a
    nop
    ret nz

    and e
    nop
    ld a, [c]
    ld [bc], a
    ldh a, [rNR10]
    ldh a, [rSCX]
    ld [$43f8], sp
    ld b, h

jr_055_46dc:
    db $fc
    inc bc
    call nz, $04fc
    db $fc

jr_055_46e2:
    ld b, e
    ld [bc], a
    cp $05
    inc d
    db $fc
    jr jr_055_46e2

    jr nc, jr_055_46dc

    jp $049c


    ret nz

    ret nz

    and b
    ldh [$90], a
    add [hl]
    and c
    dec bc
    ld [$98f8], sp
    ld hl, sp+$78
    ld l, b
    ld a, b
    ld c, b
    cp b
    ret z

    cp b
    and h
    ld b, e
    ld l, h
    db $e4
    dec e
    ld c, [hl]
    ld b, d
    xor $d2
    cp c
    and a
    ret nz

    rst $08
    add b
    add a
    add b
    rlca
    rst $00
    ld c, a
    ld hl, sp+$78
    ldh [rNR41], a
    and b
    ld h, b
    jr nz, jr_055_46bd

    ld d, b
    ld [hl], b
    sub b
    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp-$5d
    ld bc, $ec4a
    ld d, e
    nop
    add b
    db $f4
    ld d, h
    nop
    add hl, hl
    db $ec
    scf
    rst $38
    db $ec
    dec a
    inc b
    inc bc
    inc bc
    inc b
    rlca
    ld [$0f44], sp
    ld a, [bc]
    inc bc
    add hl, bc
    rrca
    inc b
    rlca
    rst $00
    adc h
    inc bc
    ld bc, $0301
    ld [bc], a
    dec h
    inc b
    ld bc, $0202
    ld h, e
    rrca
    ld c, $06
    inc de
    ld bc, $1011
    add hl, bc
    ld [$080f], sp
    rlca
    dec b
    ld b, $04
    ld b, $06
    dec h
    inc b
    inc hl
    ld [$1104], sp
    db $10
    ld h, $20
    ld c, a
    ld b, h
    ld b, b
    ld e, a
    ld bc, $203f
    ld b, e
    rra
    db $10
    inc bc
    rrca
    ld [$0707], sp
    adc c
    db $db
    ld [bc], a
    inc a
    ccf
    ret nz

jr_055_477f:
    ld b, [hl]
    rst $38
    nop
    add hl, bc
    inc bc
    rst $38
    adc h
    db $fc
    ld [hl], c
    pop af
    add c
    add c
    ld bc, $4301
    ld [bc], a
    inc bc
    ld a, [bc]
    jp nz, $ffe3

    rra
    ldh a, [rP1]
    inc bc
    nop
    ld d, l
    nop
    ld l, e
    add [hl]
    pop af
    rlca
    add a
    add a
    db $fc
    ld a, b
    pop hl
    ld hl, $8181
    inc hl
    ld [bc], a
    nop
    inc bc
    ld [hl+], a
    ld [bc], a
    dec c
    dec b
    inc b
    ld a, [bc]
    ld [$1011], sp
    or e
    db $10
    ld e, a
    inc c
    xor a
    inc bc
    ld e, a
    nop
    ld c, b
    rst $38
    nop
    inc b
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    add e
    jp hl


    dec c
    ccf
    inc a
    jp $10ff


jr_055_47cd:
    rst $38
    jr nz, jr_055_47cd

    inc h
    cp $48
    db $fd
    ld c, b
    ld a, [$9043]
    rst $38
    nop
    and b
    ld b, [hl]
    rst $38
    jr nz, jr_055_47df

jr_055_47df:
    ld b, b
    ld c, b
    rst $38
    add b
    dec b
    pop bc
    ld a, a
    ld [c], a
    ld a, a
    sbc l
    rst $38
    ld h, c
    ld d, $60
    jr nz, jr_055_477f

    db $10
    adc b
    adc b
    sbc b
    adc b
    rra
    ld b, $1c
    inc b
    inc a
    nop
    ld a, $00
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc l
    push de
    ld [bc], a
    ld b, b
    rst $38
    nop
    add $85
    nop
    inc c
    and e
    db $e3
    ldh [$29], a
    rst $38
    inc e
    rst $38
    db $fc
    ld a, e
    cp $02
    ld a, [hl]
    ld [bc], a
    cp [hl]
    nop
    ld a, a
    ld bc, $21ff
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    adc [hl]
    cp $f0
    ldh a, [rSCX]
    ret nz

    ld c, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    rst $18
    ld [hl], c
    rst $38
    sub c
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    xor h
    nop
    ld [hl-], a
    nop
    add b
    and e
    nop
    ld a, b
    inc de
    ld [$8408], sp
    inc b
    db $e4
    inc b
    cp $82
    cp $62
    rst $18
    ld e, c
    adc a
    ld c, l
    adc e
    ld c, a
    adc a
    ld l, [hl]
    rst $20
    rra
    ld c, h
    rst $38
    nop
    ldh [rNR50], a
    inc c
    rst $38
    inc de
    rst $38
    ldh [$9f], a
    sbc a
    ld b, b
    ld b, b
    jr nz, jr_055_4888

    db $10
    ld [hl], b
    ld [$0888], sp
    ld [$7474], sp
    call nz, $86c4
    add d
    ld b, $02
    rrca
    ld bc, $017f
    db $eb
    ld bc, $01f5
    ld [$1ee2], a
    ld e, $22
    ld [bc], a
    inc b
    ld c, $04
    db $f4

jr_055_4888:
    add h
    add h
    db $ec
    ld hl, $00a3
    ld d, h
    dec b
    ldh [$a0], a

jr_055_4892:
    ldh a, [$90]
    ldh a, [$50]
    ld b, h
    cp b
    ld l, b
    ld [bc], a
    ld c, b
    ldh a, [rNR10]
    and e
    nop
    adc [hl]
    db $ec
    daa
    rst $38
    db $ec
    ld [hl-], a
    ld [hl+], a
    ld bc, $0002
    ld [bc], a
    inc bc
    ld [hl+], a
    ld [bc], a
    nop
    ld bc, $87c4
    inc hl
    ld bc, $0343
    ld [bc], a
    ld de, $0c07
    rra
    db $10
    ld e, $21
    jr c, jr_055_48e6

    nop
    ld a, a
    ld a, c
    ld b, a
    db $76
    ld c, a
    jr nz, jr_055_4906

    rra
    rra
    ldh a, [rNR50]
    call z, $27e0
    inc bc
    ld b, $0c
    dec b
    db $10
    dec de
    db $10
    dec d
    db $10
    ld a, [hl+]
    ld hl, $213f
    ld a, a

jr_055_48dc:
    ld b, c
    rst $38
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_055_4892

    ld [hl], c
    db $dd

jr_055_48e6:
    ld [hl], d
    xor d
    ld a, l
    ret nc

    ccf
    ei
    rrca
    rst $38
    add b
    ccf
    ret nz

    inc e
    db $e3
    ld b, b
    rst $38
    ld b, h
    ld b, h
    rst $38
    ld [hl+], a
    ld b, $19
    rst $38

Call_055_48fc:
    inc [hl]
    rst $38
    db $eb
    rst $38
    ld d, l
    and h
    add c
    inc bc
    db $eb
    rst $38

jr_055_4906:
    inc a
    inc a
    ld a, a
    rra
    rrca
    rra
    db $eb
    ldh [$f7], a
    jr nz, jr_055_48dc

jr_055_4911:
    jr nz, jr_055_4911

    ld b, c
    db $fc
    add e
    db $fc
    inc bc
    ld [hl], c
    adc a
    nop
    rst $38
    inc bc
    cp $83
    ld a, [hl]
    ld b, a
    cp h
    and a
    ld e, h
    ld c, a
    cp b
    cp a
    ld [hl], b
    rst $38
    ret nz

    ld b, l
    rst $38
    nop
    dec d
    rra
    ldh [$27], a
    ld hl, sp+$28
    rst $30
    dec [hl]
    ld [$f51a], a
    ld e, l
    ld_long a, $ffa8
    ld d, a
    rst $38
    ld [$fdff], a
    rst $38
    add a
    adc a
    adc c
    nop
    ld a, b
    nop
    nop
    inc hl
    inc b
    ld [$0d0a], sp
    ld a, [bc]
    rrca
    ld [de], a
    rra
    inc d
    dec de
    jr jr_055_4999

    ld de, $0510
    dec bc
    ld [$0407], sp
    inc bc
    inc bc
    ld h, c
    rrca
    call z, $fecc
    ld [hl-], a
    rst $38
    pop bc
    jr c, @-$37

    ld [hl], h
    adc e
    ld a, d
    add l
    ld [hl], l
    adc e
    ei
    inc b
    ld b, e
    rst $38
    nop
    rlca
    cp $01
    cp $03
    rst $38
    ld bc, $01fe
    add e
    add e
    inc bc
    db $fd
    ld [bc], a
    ld a, [$8305]
    add e
    ld bc, $1be4
    add e
    add sp, $01
    add b
    ld a, a
    add e
    add l
    rlca
    ld d, a
    rst $38
    cp b
    db $fc
    ldh [$f0], a
    add b
    ret nz

jr_055_4999:
    ld h, a
    ldh [$2b], a
    ldh [$f0], a
    ld e, h
    ld c, $2f
    ld bc, $005f
    cp l
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld a, [$fc05]
    rrca
    cp $03
    rst $18
    ld hl, $e11f
    sbc $e1
    ld a, $21
    ld e, $11
    inc e
    inc de
    inc c
    rrca
    add e
    add e
    ld b, a
    push bc
    ld a, a

jr_055_49c3:
    ld hl, sp-$32
    ld sp, $27d8
    add l
    pop bc
    ld de, $ff03
    adc h
    db $fc
    db $f4
    db $fc
    ld d, h
    db $fc

jr_055_49d3:
    and h
    db $fc
    ld b, h
    cp h
    xor b
    ld e, b
    ld c, b
    cp b
    ld [$45f8], sp
    db $10
    ldh a, [rTIMA]
    jr nz, jr_055_49c3

    ld b, b
    ret nz

    add b
    add b
    or a
    nop
    dec e
    rlca
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld h, b
    and b
    jr nz, jr_055_49d3

    ld b, a
    db $10
    ldh a, [rSCX]
    adc b
    ld hl, sp+$43
    add h
    db $fc
    ld de, $bc44
    jp nz, $823e

    ld a, [hl]
    ld [bc], a
    cp $24
    call c, $a858
    xor b
    ld e, b
    ld [hl], b
    or b
    ret nz

    ret nz

    db $ec
    dec hl
    rst $38
    db $ec
    add hl, sp
    inc bc
    ld bc, $0301
    ld [bc], a
    ld b, e
    ld b, $04
    ld b, l
    rrca
    ld [$0717], sp
    dec b
    ld b, $06
    rlca
    inc b
    ld c, $09
    inc d
    inc de
    jr jr_055_4a43

    jr z, jr_055_4a55

    jr nc, @+$31

    ld [hl], b
    ld c, l
    ld h, b
    ld e, d
    ldh [$95], a
    ret nz

    cp d
    ld l, a
    dec b
    rlca
    ld b, $0c
    ld [$0406], sp
    ld b, e
    inc bc
    ld [bc], a

jr_055_4a43:
    dec d
    add hl, sp
    add hl, sp
    ld a, a
    ld b, a
    ccf
    jr nz, jr_055_4a6a

    db $10
    rrca
    add hl, bc
    ld a, [hl]
    ld a, $80
    nop
    ld a, a
    ld h, b
    rra

jr_055_4a55:
    jr @+$09

    ld b, $03
    ld [bc], a
    ld b, e
    rlca
    inc b
    jp $15d8


    ld [hl], c
    ld [hl], c
    db $fd
    adc l
    ccf
    ld [bc], a
    ld a, $0c
    ld a, h
    db $10

jr_055_4a6a:
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    ret z

    ccf
    inc b
    ld a, a
    inc b
    adc a
    ld a, b
    ld b, e
    rra
    ldh a, [rLYC]
    ccf
    pop hl
    rlca
    ld a, e
    ld a, l
    ld a, a
    jp Jump_055_407f


    rst $38
    add b
    ld [hl], c
    dec bc
    ret nz

    add b
    jr nc, jr_055_4abb

    adc h
    inc c
    rst $20
    inc bc
    rst $38
    ld bc, $86ff
    ld b, e
    rst $38
    add b
    dec b
    ccf
    nop
    rrca
    nop
    ccf
    nop
    ld c, b
    rst $38
    nop
    ld c, $30
    rst $38
    ld c, h
    rst $38
    jp nz, $f1ff

    sbc a
    dec c
    sbc a
    ld [bc], a
    rra
    ld bc, HeaderManufacturerCode
    ld b, [hl]

Jump_055_4ab1:
    rst $38
    nop
    inc c
    ld h, c
    rst $38
    sbc d
    rst $38
    adc d
    rst $38
    ld h, h

jr_055_4abb:
    sbc a
    ld a, [c]
    adc a
    ld sp, hl
    rrca
    ld sp, hl
    ld b, h
    rlca
    db $fc
    ld b, $dc
    inc bc
    xor [hl]
    add e
    sub $83
    xor [hl]
    ld l, l
    ld bc, $3030
    ld b, l
    ld l, b
    ld c, b
    nop
    db $e4
    ld b, e
    add h
    db $f4
    ld a, [bc]
    inc b
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    inc b
    db $fd
    dec b
    db $fc
    inc b
    ld b, e
    cp $02
    ld b, $fb
    ld bc, $00fd
    ld a, [$fd00]
    add e
    call $0312
    rst $38
    inc b
    rst $38
    ld [$93ff], sp
    db $ec
    ld l, h
    ret nz

    ret nz

    add b
    add b
    ld hl, sp+$78
    cp $c6
    rst $00
    ld bc, $8343
    nop
    nop
    rst $00
    add a
    nop
    jp hl


    ld a, [bc]
    add b
    rst $38
    add c
    cp $c7
    rst $38
    ld a, h
    jp $c142


    ld b, c
    db $f4
    ld hl, $1c00
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$a0], a
    ldh a, [$d0]
    ret nc

    ldh a, [$b8]
    ret z

    db $fc
    inc b
    or $0a
    cp $02
    xor $f2
    db $ec
    inc l
    ldh a, [rNR10]
    pop hl
    ld hl, $c2c2
    inc b
    nop
    inc b
    inc b
    ld b, $04
    rlca
    add h
    nop
    ld [hl], l
    ld b, e
    add e
    add d
    ld bc, $42c3
    ld b, e
    rst $00
    ld b, h
    dec c
    add a
    add h
    sbc a
    sbc b
    ld h, a
    db $e4
    ld [hl], e
    and d
    rst $38
    ld [de], a
    rst $38
    ld de, $21ff
    db $ec
    dec [hl]
    dec c
    ret nz

    ld b, b
    jr nz, @+$22

    jr nc, jr_055_4b74

    ld [hl], b
    db $10
    ld hl, sp+$08
    add sp, $28
    db $e4
    inc h
    ld b, e
    call nz, Call_055_4344
    jp nz, $2542

    add d

jr_055_4b74:
    dec b
    jp nz, $c1c2

    pop bc
    and c
    and c
    inc hl
    sub c
    inc hl
    add hl, bc
    rst $38
    db $ec
    jr nc, @-$1e

    add hl, hl
    ld bc, $0603
    dec c
    ld [$101a], sp
    dec d
    jr nz, @+$2d

    jr nz, jr_055_4ba7

    ld b, b
    ld h, e
    ld b, b
    ld b, a
    add b
    rst $28
    add b
    sub $80
    db $eb
    add b
    rst $30
    add b
    ld [$7580], a
    ld b, b
    ld a, e
    ld b, b
    dec a
    ld hl, $223f

jr_055_4ba7:
    rra
    ld d, $0e
    inc c
    rlca
    inc b
    ld b, $43
    inc b
    inc bc
    nop
    ld [bc], a
    ldh a, [rNR43]
    ret nc

    nop
    ld bc, $0344
    ld [bc], a
    ld b, h
    inc b
    rlca
    dec bc
    rra
    inc a
    rst $38
    add $ff
    ld [bc], a
    adc a
    ld bc, $001f
    ld a, a
    nop
    ld b, a
    rst $38
    ld bc, $3f00
    add l
    adc e
    dec d
    ld c, $ff
    jr nc, @+$01

    ld b, b
    ld hl, sp-$80
    pop de
    nop
    cp a
    nop
    ld d, a
    nop
    xor e
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    sbc d
    nop
    add hl, de
    ld [$080e], sp
    dec [hl]
    jr nc, jr_055_4c5c

    ld b, b
    push bc
    add b
    xor d
    add [hl]
    xor a
    rla
    sbc a
    nop
    ccf
    nop
    rst $38
    ld bc, $0efe
    ldh a, [$30]
    jp $8f47


    sbc a
    sbc a
    cp [hl]
    ccf
    ld a, b
    ld a, a
    ld [hl], b
    ccf
    ld [hl], c
    inc e
    ld a, $23
    add b
    dec b
    ldh a, [$f0]
    db $fc
    inc c
    cp $03
    ld c, b
    rst $38
    ld bc, $0009
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    call nc, $06c7
    rra
    ccf
    rst $38
    ret nz

    rst $10
    nop
    and e
    call nz, $b500
    inc b
    ld a, a
    nop
    db $e3
    nop
    rst $00
    add e
    nop
    and l
    nop
    ld [bc], a
    ld b, h
    rst $38
    inc b
    add hl, bc
    ret z

    ccf
    jr c, @+$11

    ld [$c487], sp
    rst $20
    db $e4
    db $e3
    ld b, e
    ld [hl+], a
    jp $431c


    add a
    add [hl]
    rrca
    ld [$1017], sp
    dec hl
    jr nz, @+$59

jr_055_4c5c:
    ld b, b
    db $eb
    add b
    rst $10
    add b
    xor a
    nop
    rst $10
    nop
    xor a
    nop
    rst $18
    nop
    cp $80
    db $fc
    add b
    cp $80
    ld b, h
    rst $38
    ret nz

    nop
    ldh [$b5], a
    nop
    ld l, [hl]
    db $10
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$09
    rst $38
    ld c, $ff
    jr @+$01

    ld h, b
    cp $80
    adc $86
    ld bc, $0217
    db $fc
    nop
    ld hl, sp-$5b
    ld bc, $0619
    nop
    rst $38
    rrca
    rst $38
    ld [hl], b
    rst $38
    add b
    ld b, l
    rst $38
    nop
    inc bc
    adc $00
    sbc [hl]
    nop
    ld c, c
    rst $38
    nop
    ld [bc], a
    cp a
    nop
    rra
    jp $a300


    ld b, $03
    db $fd
    rlca
    ld a, [$f41f]
    rst $38
    ld a, e
    inc c
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    ld a, $02
    ld e, $01
    rra
    ld c, d
    ld bc, $44ff
    cp $02
    rlca
    jp nz, $3cfc

    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $44
    ld [bc], a
    ld a, $03
    ld a, h
    inc b
    db $fc
    inc b
    ld b, e
    ld hl, sp+$08
    dec b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    rst $00
    ld bc, $0395
    ret nz

    ret nz

    jr nz, @-$1e

    rst $38
    db $ec
    cpl
    dec bc
    inc bc
    rlca
    dec bc
    ld [$1005], sp
    ld a, [de]
    db $10
    dec e
    db $10
    rra
    db $10
    ld b, e
    rrca
    ld [$0707], sp
    inc b
    rrca
    dec bc
    rrca
    add hl, bc
    ld e, $13
    ld b, e
    ld a, $23
    ld b, l
    ld a, h
    ld b, a
    inc bc
    inc a
    daa
    inc e
    rra
    inc hl
    inc bc
    ld bc, $0707
    jp $949a


    jp $030c


    inc b
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    dec c
    dec c
    rla
    inc de
    rla
    db $10
    ld b, e
    cpl
    jr nz, jr_055_4d73

    rla
    db $10
    rra
    ld de, $090f
    rrca
    ld [$888f], sp
    or a
    ld [hl], h
    rst $38

jr_055_4d3c:
    inc c
    rst $38
    ld b, $ff
    inc bc
    db $fc
    inc c
    ldh a, [$30]
    ret nz

    ld b, b
    add b
    add l
    nop
    dec hl
    nop
    ld d, l
    nop
    xor e
    nop
    rst $18
    nop
    ld c, d
    rst $38
    nop
    ld [bc], a
    ldh [rIE], a
    ld hl, sp+$22
    rst $38
    inc bc
    ld a, a
    rst $38
    rrca
    rst $38
    ld l, a
    ld [$0707], sp
    ret z

    ret z

    ccf
    jr c, @-$2f

    ld [$43f7], sp
    inc b
    rst $38
    inc de
    nop
    rst $38
    inc bc
    db $fd

jr_055_4d73:
    inc c
    ld a, [c]
    jr nc, jr_055_4d3c

    ld b, b
    adc d
    add b
    sub l
    add b
    dec bc
    nop
    rra
    nop
    cpl
    nop
    sbc a
    add a
    jp nz, $8008

    ccf
    ld hl, sp+$03
    ccf
    ld bc, $03ff
    cp $43
    inc b
    db $fc
    dec b
    ld [$0df8], sp
    ld hl, sp+$0a
    ld hl, sp+$44
    rrca
    db $fc
    ld [bc], a
    cp $07
    rst $38
    jp $06b4


    ld bc, $02ff
    cp $cc
    db $fc
    ldh a, [$b0]
    nop
    ld e, a
    ld [$8080], sp
    ld e, b
    ld e, b
    and $66
    ld sp, hl
    ld hl, $43fe
    db $10
    rst $38
    ld [$ff08], sp
    ret nz

    rst $38
    ld sp, $09ff
    ld a, [hl]
    ld b, $c4
    xor d
    nop
    ld bc, $ff48
    nop
    ld b, h
    ld bc, $11ff
    rst $28
    rra
    ldh [$60], a
    add c
    add b
    rlca
    nop
    rrca
    nop
    rra
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    ld bc, $00a4
    or l
    ld [$cf3e], sp
    call z, $c4c4
    add d
    add d
    ld bc, $7d01
    inc hl
    add b
    inc bc
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, e
    ld h, b
    jr nz, jr_055_4e41

    ldh a, [rNR10]
    ldh [$29], a
    di
    sub e
    db $fc
    sbc h
    di
    or a
    ldh [$b8], a
    ldh [$34], a
    ret nz

    ld a, d
    ret nz

    ld [hl], l
    add b
    rst $38
    ld h, b
    ld a, a
    ld hl, sp+$1f
    db $fc
    rlca
    db $fc
    ld b, $fc
    inc b
    ld hl, sp+$18
    ldh [$7e], a
    ldh [rIE], a
    db $fc
    rst $38
    cp $63
    cp $43
    rst $38
    inc hl

jr_055_4e26:
    db $fc
    inc b

jr_055_4e28:
    ld b, e
    ld a, b
    ld [$f003], sp
    sub b
    ld h, b
    ld h, b
    db $f4
    ld l, $00
    ld [bc], a
    ld c, $c0
    jr nc, jr_055_4e28

    xor b
    ld hl, sp+$68
    ld hl, sp+$04
    db $fc
    inc b
    ld a, h
    inc b

jr_055_4e41:
    db $fc
    ld [bc], a
    ld a, [hl]
    ld b, [hl]
    ld [bc], a
    cp $02
    ld a, $02
    cp $43
    inc b
    ld a, h
    rlca
    ld [$0878], sp
    ld hl, sp+$10
    ldh a, [$60]
    ldh [$ad], a
    ld bc, $ff78
    ld [hl], l
    nop
    ld bc, $8283
    dec b
    inc bc
    nop
    ld bc, $0001
    nop
    res 1, b
    add hl, bc
    ld bc, $1102
    nop
    inc c
    nop
    ld d, b
    nop
    jr nz, jr_055_4eb4

    ld h, c
    nop
    ld b, b
    and h
    and e
    ld [de], a
    add b
    jr z, @-$7e

    ld d, l
    add b
    xor e
    nop
    rra
    ld b, b
    ld a, a
    nop
    dec d
    jr nz, jr_055_4e92

    db $10
    ld bc, $010c
    inc de
    inc hl
    ld bc, $0249
    inc bc

jr_055_4e92:
    ld h, e
    add hl, bc
    ld [bc], a
    add hl, bc
    ld bc, $1204
    ld [$4025], sp
    ld [bc], a
    jr nz, jr_055_4e26

    or l
    ld h, l
    rla
    and b
    nop
    ld d, l
    nop
    ld a, [hl+]
    add b
    ld d, l
    add b
    ld l, e
    add b
    ccf
    ld b, b
    ld e, $a0
    rra
    jr nz, jr_055_4ec2

    db $10

jr_055_4eb4:
    inc bc
    db $f4
    nop
    rrca
    nop
    ld [bc], a
    add e
    pop af
    jr jr_055_4ed2

    nop
    dec hl
    nop
    dec d

jr_055_4ec2:
    nop
    cpl
    inc bc
    ld e, h
    rlca
    ld hl, sp+$0e
    ldh a, [rNR32]
    ldh [$3c], a
    ret nz

    ld a, d
    ret nz

    ld a, l
    add b

jr_055_4ed2:
    ld a, [$fd80]
    nop
    ld c, a
    rst $38
    nop
    ld [bc], a
    db $10
    ld b, c
    ld a, $83
    rst $08
    ld [bc], a
    and b
    nop
    ld b, b
    xor b
    nop
    ld [hl+], a
    ld [bc], a
    jr z, jr_055_4ee9

jr_055_4ee9:
    ld d, b
    add $81
    ldh [rNR41], a
    inc bc
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $18
    nop
    xor a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $10
    nop
    dec hl
    add b
    nop
    ld a, a
    inc b
    inc b
    add h
    inc b
    ld a, [de]
    cp [hl]
    rst $00
    ld b, [hl]
    pop hl
    pop hl
    dec e
    jp $0c92


    ccf
    nop
    rra
    nop
    rrca
    nop
    dec bc
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    sub b
    rst $18
    ld h, c
    ld [$2020], sp
    ret z

    nop
    db $10
    inc b
    ld [$0002], sp
    xor d
    ld [c], a
    ld [bc], a
    nop
    dec b
    nop
    jp $8000


    nop
    xor d
    call nz, $03cf
    rst $38
    nop
    cp $01
    ld b, e
    db $fc
    ld [bc], a
    ld d, $f0
    inc c
    ldh [rNR10], a
    nop
    ldh [rP1], a
    add b
    adc h
    sbc h
    ld b, d
    ld h, d
    call nz, $ce44
    rst $08
    ld sp, $103f
    ld e, $90
    sbc [hl]
    ld [hl], b
    ld b, h
    cp $00
    ld [bc], a
    ld bc, $00fe
    ld d, l
    rst $38
    nop
    or b
    nop
    ld a, [bc]
    ld bc, $8000
    call nz, $3b00
    ld [$8060], sp
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    nop
    ldh [$84], a
    nop
    ld [hl], d
    nop
    ld b, b
    ld l, b
    ld b, $02
    ld [$0007], sp
    jr nc, jr_055_4f83

jr_055_4f83:
    ld b, b
    call $19a9
    and b
    nop
    ret nz

    nop
    and b
    nop
    jp nc, Jump_055_7d00

    add b
    ld a, $c0
    dec c
    ldh a, [rP1]
    rst $38
    inc b
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld bc, $0eff
    rst $38
    db $ec
    ld sp, $00a4
    ld l, $02
    ld [$0400], sp
    add h
    ld bc, $482a
    ld bc, $0e00
    jr z, jr_055_4fb4

    ld d, h

jr_055_4fb4:
    ld [bc], a
    cp h
    ld [bc], a
    ld e, b
    inc b
    and b
    ld [$3040], sp
    nop
    ret z

    ld b, b
    and e
    nop
    dec de
    ld b, h
    ret nz

    ld b, b
    rst $38
    db $ec
    adc l
    inc de
    rrca
    rrca
    rla
    ld de, $1917
    dec de
    ld d, $2d
    ld [hl-], a
    ld sp, $3b2e
    dec h
    inc de
    dec e
    rrca
    rrca
    ld bc, $ec01
    ld d, a
    ld bc, $6060
    ld b, e
    ldh a, [$90]
    add hl, bc
    ldh [rNR41], a
    ldh a, [rSVBK]
    call z, $e37c
    rst $38
    ldh [rIE], a
    add e
    add e
    inc bc
    db $fc
    rst $38
    add e
    jp $3dec


    ldh [$35], a
    inc bc
    inc bc
    nop
    inc b
    ld b, $06
    jr c, jr_055_507c

    nop
    add b
    ld b, c
    ld b, c
    inc hl
    ld [hl-], a
    inc hl
    ld h, $4f
    ld c, h
    scf
    inc a
    rlca
    ld c, $09
    dec c
    dec b
    ld bc, $0506
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0701
    rlca
    add hl, sp
    ccf
    ret nc

    rst $38
    inc c
    rst $38
    ld bc, $c1ff
    rst $38
    ld hl, $f9ff
    rst $38
    ld c, $0f
    inc b
    rlca
    ld c, e
    ld [bc], a
    inc bc
    ld a, [bc]
    inc b
    inc b
    ld b, $06
    add hl, bc
    rrca
    db $10
    rla
    db $10
    inc e
    add hl, bc
    call nz, $0186
    ld [$4508], sp
    ld [$010f], sp
    ld bc, $430f
    ld [de], a
    rra
    inc de
    inc d
    rra
    inc h
    ccf
    ld [hl+], a
    ccf
    inc l
    ccf
    inc sp
    inc sp
    ld e, h
    ld e, h
    ld a, c
    ld a, a
    ld a, $3e
    add b
    add b
    inc a
    ld a, h
    call nz, $22f2
    add b
    dec d
    ret nz

    ld d, b
    ret nc

    ld d, b
    ld hl, sp+$28
    db $fc
    ld c, $da
    ld a, $f3
    dec d
    di
    inc d
    cp $01
    cp $f1
    sbc l

jr_055_507c:
    inc de

jr_055_507d:
    adc [hl]
    ld d, [hl]
    ld [hl+], a
    rst $38
    inc bc
    rst $28
    ld a, a
    rst $38
    ld [bc], a
    ld b, e
    di
    nop
    inc bc
    sbc e
    nop
    sbc c
    nop
    ld c, a
    ld sp, hl
    nop
    ld a, [bc]
    ldh [$3f], a
    ccf
    ret nz

    rst $38
    ld b, $7f
    adc h
    rst $38
    adc b
    rst $38
    ld b, h
    inc d
    ld [hl], a
    nop
    rst $30
    ld b, l

jr_055_50a3:
    inc h
    rst $20
    ld [bc], a
    xor c

jr_055_50a7:
    rst $28
    ld c, c
    ld b, h
    rst $08
    ld c, d
    ld b, e
    ld c, b
    rst $08
    rlca
    adc c

jr_055_50b1:
    adc a
    adc [hl]
    adc a
    add hl, bc
    add hl, bc
    add a
    add a
    ld l, c
    inc bc
    add b
    add b
    ld b, b
    ld b, b
    and h
    ld bc, $02a0
    stop
    adc b
    ld b, e
    ld [HeaderROMSize], sp
    adc b
    ret z

    ld b, e
    ret nc

    ld d, b
    ld bc, $60e0
    and e
    nop
    and b
    ld [bc], a
    ret nz

    ret nz

    jr nc, jr_055_507d

    ld bc, $e0ab

jr_055_50dc:
    dec h
    ld b, $fe
    ld b, c
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    ld c, c

jr_055_50e6:
    rst $38
    ld h, $ff
    jr c, @+$01

    jr z, jr_055_50dc

    inc a
    rst $38
    inc a
    rst $28
    dec a
    rst $28
    ld a, $2a
    ld a, $02
    db $fc
    db $ec
    inc [hl]
    cp h
    inc h
    and h
    jr z, jr_055_50a7

    jr nc, jr_055_50b1

    jr nz, jr_055_50a3

    ld b, e
    jr nz, jr_055_50e6

    ld [bc], a
    nop
    ret nz

    ret nz

    and a
    ld bc, $0e8b
    ldh [rNR41], a
    ldh [$60], a
    ldh [$90], a
    ldh a, [$78]
    ld hl, sp-$3c
    call nz, $3c1c
    ld hl, sp-$08
    db $ec
    cpl
    ld b, $80
    add b
    ld b, b
    ret nz

    and b
    ldh [rSVBK], a
    ld b, [hl]
    ldh a, [rNR10]
    ld bc, $e060
    db $f4
    ld sp, $a000
    rst $38
    db $ec
    dec l
    ld [$0301], sp
    inc b
    inc c
    ld bc, $1110
    db $10
    ld bc, $2048
    ld hl, $2715
    cpl
    rla
    jr nc, jr_055_514e

    ld b, b
    ld c, a
    ld b, b
    rrca
    add c
    adc a
    add d

jr_055_514e:
    sbc a
    add l
    sbc a
    add [hl]
    sbc h
    adc b
    sbc h
    sub b
    jr @-$6e

    ld b, e
    jr c, jr_055_51bb

    dec b
    ld sp, $7260
    ld b, b
    ld [hl], c
    ld b, b
    db $ec
    dec l
    ldh [$2c], a
    ret nz

    ret nz

    jr nz, jr_055_519a

    nop
    ret z

    ld [$04e8], sp
    call nc, $ec04
    inc b
    call nc, $ed04
    rlca
    rst $10
    ld b, $ec
    db $fc
    ldh a, [$f0]
    ld b, b
    pop hl
    add b
    jp nz, $f900

    ld a, h
    rst $00
    add a
    dec b
    nop
    dec bc
    nop
    rla
    nop
    dec hl
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    add e
    add e
    db $ec
    jr nz, @+$07

    rrca

jr_055_5199:
    rra

jr_055_519a:
    nop
    daa
    jr nz, @+$31

    ld b, e
    jr nz, jr_055_51e0

    ld c, c
    db $10
    rra
    rlca
    jr jr_055_51c6

    ld e, $1f
    ld hl, $8061
    add b
    ld h, c
    add hl, bc
    ldh [$f0], a
    cp h
    ld c, $7f
    ld bc, $00bf
    ld a, a
    nop
    ld b, e
    rst $38

jr_055_51bb:
    nop
    inc de
    cp a
    ret nz

    rst $20
    ld a, e
    db $fc
    ld e, $fc
    inc c
    db $fc

jr_055_51c6:
    inc b
    pop af
    ld [$08f9], sp
    ei
    ld [$10e3], sp
    rst $30
    db $10
    sbc d
    nop
    inc d
    ld de, $1807
    jr c, jr_055_5199

    ret nz

    nop
    add b
    nop
    add c
    nop
    ld [bc], a

jr_055_51e0:
    nop
    dec d
    nop
    xor e
    nop
    rst $18
    nop
    ld c, d
    rst $38
    nop
    ld e, $c0
    rst $38
    ld sp, $093f
    rrca
    ld b, $06
    ld a, [bc]
    ld [bc], a
    sub h
    add h
    db $ec
    ld h, h
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [$f0]
    jr jr_055_521b

    inc c
    inc c
    ld b, $06
    pop hl
    inc bc
    ld hl, sp-$5a
    pop af
    nop
    rst $38
    sbc h
    nop
    ld [hl], e
    inc b
    inc sp
    rst $38
    inc c
    ld a, [hl]
    inc bc
    add e
    ld bc, $0b04

jr_055_521b:
    cp $3c
    db $fc
    ld [bc], a
    cp $00
    rst $08
    ld d, $8f
    ld l, [hl]
    sbc a
    inc c
    ld b, h
    rst $38
    nop
    ldh [$29], a
    ld [hl], b
    rst $38
    adc h
    adc a
    inc sp
    ld [hl], e
    inc a
    inc a
    ld e, $1e
    rrca
    rrca
    inc bc
    rlca
    db $10
    add hl, bc
    nop
    inc e
    jr nz, jr_055_525a

    nop
    inc [hl]
    ld b, b
    ld a, [hl+]
    nop
    ld [hl], h
    add c
    ld l, c
    ld bc, $83d5
    db $eb
    ld h, a
    rst $20
    ld e, [hl]
    ccf
    db $f4
    ld c, $fe
    ld [bc], a
    cp $03
    sbc l
    nop
    ld [hl], d
    dec c

jr_055_525a:
    jr nc, jr_055_52cc

    ld [$c4f8], sp
    db $fc
    ld [bc], a
    ld a, [hl]
    ld [de], a
    ld a, [hl]

jr_055_5264:
    jr c, jr_055_5264

    pop af
    rst $38
    ld b, e
    sub c
    sbc a
    ld b, e
    ld hl, $e0bf
    dec h
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    dec b
    db $fd
    dec c
    ld sp, hl
    sbc [hl]
    ld a, [c]
    ld e, [hl]
    ld [hl], d
    ld a, h
    ld h, d
    cp h
    and h
    inc a
    and h
    jr c, @+$2a

    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ret nz

    ldh [$a0], a
    and b
    ld d, b
    db $10
    xor b
    ld [$0858], sp
    db $e4
    call nz, $f434
    ld b, e
    inc c
    ld a, h
    ld bc, $fc04
    rst $38
    db $ec
    cpl
    inc b
    ld bc, $0301
    ld [bc], a
    dec b
    ld [hl+], a
    inc b
    dec b
    add hl, bc
    nop
    dec bc
    ld [$080f], sp
    ld b, h
    rlca
    inc b
    ld [$0b06], sp
    ld c, $09
    rrca
    ld de, $211f
    ccf
    ld b, e
    ld b, e
    ld a, [hl]
    ld b, e
    add a
    db $fc
    ld bc, $f88f
    ld b, e
    ld c, a
    ld a, b
    nop
    cpl
    ld b, e
    inc a
    ccf

jr_055_52cc:
    nop
    ld a, $91
    cp a
    ld bc, $0909
    ld b, e
    rra
    ld d, $01
    ccf
    ld [hl+], a
    ld b, e
    ccf
    jr nz, jr_055_52e5

    scf
    jr z, jr_055_52f3

    inc e
    add hl, de
    ld d, $08
    rrca

jr_055_52e5:
    inc b
    ld [hl+], a
    rlca
    rrca
    ld c, $0f
    ld a, $39
    rst $38
    ret nz

    rst $38
    nop
    rst $18
    nop

jr_055_52f3:
    cp a
    nop
    ld a, [hl]
    ld bc, $037c
    ld b, e
    ld hl, sp+$07
    add hl, bc
    ldh a, [rIF]
    cp $01
    ld hl, sp+$07
    di
    inc c
    db $fc
    inc bc
    add e
    adc e
    inc de
    ldh [$1f], a
    pop hl
    ld e, $c3
    inc a
    rst $00
    add hl, sp
    adc a
    ld [hl], c
    adc a
    ld [hl], e
    sbc a
    ld h, e
    sbc $23
    rst $18
    ld hl, $01ff
    or c
    nop
    ld [hl+], a
    rlca
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$50]
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    dec b
    ld a, h
    add h
    ccf
    jp Jump_055_708f


    jp $0bc0


    ldh a, [rIE]
    ld c, $ff
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    ldh a, [rIF]
    add d
    add l
    ld c, d
    rst $38
    nop
    add l
    adc l
    ld [$ff03], sp
    ld c, $ff
    jr c, @+$01

    ldh [$7f], a
    ret nz

    ld b, h
    rst $38
    add b
    ld [bc], a
    ld bc, $01ff
    ld b, [hl]
    rst $38
    inc bc
    or d
    db $dd
    nop
    inc b
    ld b, e
    dec b
    ld b, $01
    add hl, bc
    ld c, $47
    ld [$0a0f], sp
    add h
    add a
    db $e4
    ld h, a
    ld a, [$7a1f]
    add a
    ld bc, $80ff
    ld d, [hl]
    rst $38
    nop
    ld [bc], a
    db $10
    rst $38
    ld h, b
    add h
    sbc e
    dec c
    ld [$30ff], sp
    rst $38
    ld h, e
    db $fc
    rst $20
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [$8f]
    pop af
    ld b, e
    sbc [hl]
    db $e3
    ld bc, $e39c
    ld l, c
    add hl, bc
    jr nz, jr_055_53b9

    ld [hl], b
    ld d, b
    ldh a, [$d0]
    db $fc
    adc h
    cp $9a
    ld b, e
    cp $12
    add hl, bc
    xor $12
    cp $02
    xor $12
    adc $32
    ld b, a
    cp c
    ld b, e
    rlca
    ld sp, hl
    ld b, e
    inc bc
    db $fc
    ld bc, $fe01
    sub l

jr_055_53b9:
    db $dd
    ld b, e
    ld [bc], a
    db $fd
    dec b
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$c3], a
    nop
    rst $28
    rrca
    cp $07
    ld hl, sp+$1f
    pop bc
    ld a, a
    inc bc
    rst $38
    ld b, $fe
    inc b
    db $fc
    inc c
    db $fc
    ld [$f4f8], sp
    add hl, hl
    nop
    ld a, [bc]
    rlca
    ldh a, [$30]
    ld hl, sp+$08
    inc a
    call nz, $f40c
    ld b, l
    ld [bc], a
    cp $43
    inc b
    db $fc
    add hl, bc
    ld [$18f8], sp
    ld hl, sp+$58
    cp b
    add sp, $38
    db $e4
    inc a
    ld b, e
    call nz, $027c
    add h
    db $fc
    adc b
    call nz, $dc00
    inc bc
    ld h, b
    ldh [$c0], a
    ret nz

    ld l, c
    rst $38
    ld l, a
    ld bc, $0101
    add $80
    inc bc
    ld bc, $0200
    nop
    ld [hl+], a
    inc b
    nop
    nop
    ld [hl+], a
    ld [$0006], sp
    db $10
    ld a, [bc]
    db $10
    dec d
    db $10
    dec de
    ld b, h
    db $10
    rra
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $7e01
    nop
    ld bc, $c8cd
    add hl, bc
    jr jr_055_544e

    ld h, h
    ld h, h
    adc h
    add b
    ld a, $02
    ld a, a
    ld bc, $ff43
    add b
    ld b, e
    ld a, a
    ld b, b
    dec b
    ccf
    jr nz, jr_055_5467

    jr nz, jr_055_5489

    nop
    ld b, e
    ld a, a
    nop

jr_055_544e:
    ld d, h
    rst $38
    nop
    rrca
    add b
    ld a, a
    ld h, b
    rra
    jr jr_055_545d

    ld b, $0f
    ld c, $1d
    ld [de], a

jr_055_545d:
    dec de
    inc h
    ccf
    jr nz, jr_055_54a1

    push bc
    xor l
    ld c, $40
    ccf

jr_055_5467:
    ld b, b
    rra
    and b
    add b
    sbc a
    add c
    add b
    ld [bc], a
    ld h, b
    nop
    rra
    dec b
    add b
    ld h, c
    inc bc
    jr jr_055_54b0

    ld b, $46
    ld b, e
    ld e, a
    ld b, c
    nop
    sbc a
    ld b, h
    add c
    cp a
    inc bc
    rst $08
    cp c
    ei
    rlca
    ld d, c
    rst $38

jr_055_5489:
    nop
    ld [$01fe], sp
    rst $38
    ld [bc], a
    ei
    inc b
    rst $38
    inc b
    rst $30
    ld b, a
    ld [$43ff], sp
    inc b
    rst $38
    dec c
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $28

jr_055_54a1:
    rra
    sbc $3f
    pop af

jr_055_54a5:
    ld [hl], c
    ldh [rP1], a
    pop af
    add a
    xor e
    ld c, $18
    rst $38
    inc b
    adc a

jr_055_54b0:
    ld a, [hl]
    add hl, sp
    adc c
    ld a, b
    ld [$7888], sp
    ld [hl], b
    adc b
    db $fc
    inc b
    ld l, e
    rrca

jr_055_54bd:
    ld [bc], a
    ld b, $01
    add hl, bc

jr_055_54c1:
    inc de
    db $10
    daa
    jr nz, jr_055_54a5

    ret nz

    rst $18
    jr nz, jr_055_54c1

    add hl, bc
    ei
    dec b
    ld b, e
    cp $02
    ld b, e
    rst $38
    ld bc, $bb05
    ld a, h
    rst $38
    add d
    rst $38
    ld bc, $00b0
    adc h
    ld c, $03

jr_055_54df:
    cp $8d
    rst $38
    ld [hl], b
    cp a
    ret nz

    ld a, a

jr_055_54e6:
    add e
    db $fc
    sbc h
    rst $20
    ld h, a
    xor $29

jr_055_54ed:
    ld b, e
    db $ed
    ld a, [hl+]
    dec bc
    call nz, $f227
    inc de
    pop af
    ld de, $0bfa
    cp $06
    rst $38
    add c
    add e
    nop
    db $76
    ld bc, $203f
    or c
    nop
    ld c, e
    ld bc, $40c0
    and e
    nop
    jr c, jr_055_54bd

    nop
    ld c, a
    db $10
    add b
    add c

jr_055_5512:
    add c
    ld bc, $c381
    ld b, d
    push bc
    ld b, [hl]
    rst $00
    ld b, h
    sbc a
    sbc b
    rst $20
    add sp, -$7d
    and h
    ld b, e
    inc bc
    inc d
    ldh [rNR42], a
    rrca
    sbc h
    or e
    or e
    ld a, b
    ret z

    sbc b
    add sp, $48
    jr jr_055_54ed

    inc b
    ei
    rlca
    ei
    inc b
    db $fd
    ld [bc], a
    dec a
    jp $221e


    ld c, $92
    inc c
    ld d, h
    ld [$1028], sp
    or b
    jr nz, jr_055_54e6

    add b
    ret nz

    db $ec
    dec h
    dec e
    jr nz, @+$62

    jr nc, jr_055_54df

    ldh a, [rNR10]
    ld h, b
    and b
    cp b
    ld a, b
    db $fc
    inc h
    db $fc
    ld b, h
    ld hl, sp+$58
    ldh [$60], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_055_5512

    ld d, b
    cp b
    ld c, b
    ld hl, sp-$38
    jr nc, @+$32

    xor c
    nop
    ld [$00b1], sp
    ld a, [hl-]
    rst $38
    ld h, a
    dec d
    inc bc
    inc bc
    ld b, $0c
    inc b
    ld de, $101b
    rla
    inc l
    ccf
    ld [hl+], a
    ccf
    ld hl, $2f39
    ld b, $7f
    ld b, c
    ld a, a
    ld h, c
    ld e, a
    ld b, e
    ld a, [c]
    adc [hl]
    add hl, bc
    ld [hl], d
    adc [hl]
    ld h, l
    ld e, a
    ld e, b
    ld a, a

jr_055_5592:
    ld [hl], $39
    ld c, $0f
    db $ec
    add hl, hl
    ldh [$35], a
    ldh a, [$f0]
    jr c, @-$36

    cp h
    inc h
    ld [hl], d
    ld e, $ca
    cp [hl]
    call z, $aa7c
    ld a, [hl]
    ld [hl-], a
    cp $64
    db $fc
    ld hl, sp-$07
    add e
    add d
    inc bc
    inc b
    rlca
    inc b
    rrca
    ld [$7e7c], sp
    call Call_055_69b1
    sub b
    rra
    ld hl, sp-$21
    ld [hl], $f9
    push af
    jr jr_055_55d8

    inc c
    ld [de], a
    ld c, $09
    rlca
    ld [$0707], sp
    ld [bc], a
    inc bc
    ld bc, $ec01
    daa
    ldh [$2a], a
    rlca
    rrca
    ccf
    ld [hl], b

jr_055_55d8:
    rst $10
    add b
    dec hl
    add b
    rst $10
    add c
    rst $28
    ld b, [hl]
    ld [hl], a
    jr c, jr_055_5592

    nop
    ld d, a
    add c
    xor l
    add [hl]
    db $db
    ld [$8075], sp
    ld h, e
    sub c
    xor [hl]
    sub $88
    ld hl, sp+$68
    sbc c
    ld hl, sp+$07
    ld a, h
    add e
    rst $38
    rst $38
    xor h
    jp Jump_055_7f70


jr_055_55fe:
    rrca
    ldh a, [rNR52]
    nop
    dec hl
    ld d, $e0
    ldh [$b8], a
    ld e, b
    call nc, $aa2c
    sub $d5
    dec hl
    xor e
    ld d, l
    sub $2b
    xor d
    rst $10
    ld [hl], h
    rst $28
    cp b
    ld e, a
    ld b, d
    cp a
    push bc
    ld b, e
    rst $38
    ld [bc], a
    ld d, $fc
    dec sp
    db $fc
    ld e, l
    rst $00
    ld [hl], d
    rst $08
    scf
    db $fc
    rst $18
    db $fc
    daa
    rst $20
    call z, $10cf
    ccf
    jr jr_055_5679

    ld a, [hl]
    ld b, a
    add hl, sp
    add hl, sp
    db $ec
    add hl, hl
    dec hl
    add b
    add hl, de
    ret nz

    ld b, b
    and b
    jr nz, @+$52

    jr jr_055_55fe

    sbc h
    ld a, d
    and $71
    rst $08
    or c
    rst $38
    ld c, c
    rst $38
    db $ed
    sbc a
    ld a, [c]
    sbc [hl]
    ld [hl], d
    cp $1c
    ld a, [c]
    db $ec
    db $ec
    ld h, a
    add l
    nop
    add b
    inc bc
    ld [bc], a
    rlca
    ld bc, $8501
    nop
    adc d
    adc c
    nop
    ret nc

    rlca
    ld a, a
    rst $38
    cp a
    rst $38
    ld c, a
    ld a, a
    jr nc, jr_055_56ac

    adc l
    nop
    sbc $89
    ld bc, $0920
    rst $38
    db $fc
    rst $10
    rst $38
    sbc h

jr_055_5679:
    rst $38
    ld d, b
    rst $38
    sbc b
    rst $00
    sub l
    ld bc, $e034
    jr nz, jr_055_5687

    inc bc
    inc c
    rrca

jr_055_5687:
    ld a, [de]
    jr nc, jr_055_569b

    ld b, h
    ld l, a
    ld b, d
    ld e, a
    or c
    cp $89
    cp h
    rst $00
    and l
    rst $38
    sbc d
    rst $38
    ld b, l
    cp a
    ld [c], a
    sbc [hl]

jr_055_569b:
    and e
    rst $18
    ld d, h
    ld l, a
    ld b, h
    ld a, a
    ld [hl], $39
    ld b, $8e
    nop
    rst $18
    inc de
    add b
    ret nz

jr_055_56aa:
    ldh [rNR41], a

jr_055_56ac:
    ldh a, [$90]
    ret z

    ld a, b
    jr z, jr_055_56aa

    jr nc, @-$0e

    xor b
    ld hl, sp-$38
    ld sp, hl
    sub e
    ld a, [c]
    db $e3
    db $e4
    adc l
    nop
    ld l, [hl]
    ld b, $fb
    push af
    rra
    inc d
    rrca
    ld [de], a
    rrca
    adc h
    nop
    add e
    adc l
    nop
    ret nz

    ld b, $af
    sub $8f
    ld a, b
    ld l, a
    sub c
    cp $8a
    nop
    push de
    rst $38
    ld [hl], a
    rlca
    ld bc, $1a01
    ld a, [de]
    daa
    inc h
    ld c, a
    ld b, e
    ld b, l
    ld c, a
    ld b, b
    inc bc
    cpl
    jr nz, jr_055_5711

    jr nz, jr_055_572f

    rla
    db $10
    ld b, e
    dec sp
    jr z, @+$0d

    dec a
    inc h
    ccf
    ld [hl+], a
    ld a, $22
    ccf
    ld hl, $101f
    jr jr_055_5715

    ld b, e
    rrca
    ld [$1f44], sp
    db $10
    inc d
    ld d, $0f
    add hl, bc
    dec bc
    ld [$1017], sp
    rla
    inc de
    ccf
    inc l
    ld l, a

jr_055_5711:
    ld d, b
    ld c, a
    ld h, b
    ld e, a

jr_055_5715:
    ld h, c
    ld a, $26
    jr jr_055_5732

    ld [hl], e
    rla
    rlca
    rlca
    rra
    ld [$2067], sp
    add a
    nop
    rrca
    nop
    rra
    ld bc, HeaderManufacturerCode
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_055_572f:
    ld b, b
    rst $38
    inc l

jr_055_5732:
    di
    ld e, $43
    ld sp, hl
    rrca
    ld bc, $07fc
    ld b, e
    cp $03
    ld b, h
    rst $38
    ld bc, $0000
    add l
    sbc c
    dec bc
    ld a, a
    and b
    rst $38
    jr @+$01

    inc e
    rst $30
    ld [hl-], a
    jp $c641


    add d
    ld b, h
    db $fc
    add h
    ld c, $48
    db $fc
    ld c, b
    cp $28
    rst $38
    ld a, b
    add a
    add h
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $cb01
    nop
    add hl, de
    ld a, [de]
    jr nc, jr_055_577a

    ld c, h
    ld [$4262], sp
    add hl, sp
    ld hl, $d0de
    rst $28
    jr z, @-$07

    inc d

jr_055_5776:
    rst $30
    call nc, $3273

jr_055_577a:
    rst $38
    rrca
    db $fc
    add h
    ld sp, hl
    ld c, b
    ei
    jr c, jr_055_5776

    ld b, l
    db $10
    rst $30
    ld [bc], a
    jr nc, @+$01

    jr nc, jr_055_57d0

    rst $38
    ld d, b
    ld b, e
    rst $28
    xor b
    ld de, $c8cf
    rst $08
    ld c, b
    rst $00
    ld b, h
    rst $20
    inc h

jr_055_5799:
    rst $38
    inc a
    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    add d
    ld a, a
    ld [bc], a
    ld b, e
    ccf
    nop
    ld [bc], a
    ld a, $01
    ld a, a
    add d
    db $fd
    ld c, d
    rst $38
    nop
    nop
    inc bc
    ld l, a
    rlca
    add c
    add b
    ld b, c
    ld b, c
    pop af
    ld sp, $0dfd
    ld b, h
    rst $38
    ld [bc], a
    inc b
    add d
    db $fd
    ld b, d
    ei
    ld b, h
    ld d, [hl]
    rst $38
    jr nz, jr_055_57ca

    jr c, @-$37

jr_055_57ca:
    ld a, h
    ld b, e
    jp $0c7e


    rst $00

jr_055_57d0:
    ld a, a
    db $f4
    cp h
    cp $8e
    ei
    ld sp, $40c5
    add d
    add b
    dec d
    and h
    reti


    ld bc, $06fd
    ld b, h
    rst $38
    adc b
    inc b
    ld h, h
    rst $38
    ld e, $e1
    pop hl
    ld l, a
    ld bc, $40c0
    inc hl
    jr nz, jr_055_5799

    nop
    ld a, $06
    ld [$04fc], sp
    cp $06
    rst $38
    dec b
    add a
    ld bc, $0e12
    db $fd
    ld [bc], a
    ld sp, hl
    dec b
    ld sp, hl
    ld bc, $09f0
    pop af
    add hl, bc
    ld hl, sp+$05
    ld hl, sp+$04
    db $fc
    push bc
    ld bc, $021f
    ld bc, $fefe
    ld h, c
    inc bc
    ret nz

    ret nz

    ldh [rNR41], a
    ld b, a
    ldh a, [rNR10]
    dec b
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ld b, b
    add e
    adc a
    inc bc
    db $fc
    adc h
    ld a, a
    ld d, e
    db $ec
    dec h
    inc hl
    add b
    ld b, l
    ret nz

    ld b, b
    ld bc, $c040
    ld b, l
    ldh [$a0], a
    ld b, e
    ld h, b
    and b
    ld b, e
    ret nz

    ld b, b
    rst $18
    sbc b
    rst $38
    db $ec
    inc sp
    ld a, [bc]
    ld bc, $0603
    rlca
    dec c
    rrca
    ld e, $1f
    dec e
    rra
    ld a, $22
    ccf
    dec h
    ld a, a
    ld bc, $7f1f
    inc hl
    ld c, b
    add hl, bc
    jr nz, jr_055_5888

    inc d
    inc [hl]
    inc c
    ld e, $07
    rrca
    ld bc, $ec03
    scf
    ld [de], a
    rrca
    rra
    ld a, a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, $fe
    inc c
    db $fc
    ld e, l
    db $fd
    cp a
    db $fd
    db $fd
    cp $fe
    ld h, $ff
    ld h, $42
    add hl, bc
    ld b, e
    ld b, a
    ld c, a
    rst $38
    rst $38
    cp $ff
    dec b
    rlca

jr_055_5888:
    ld [bc], a
    ld [hl+], a
    inc bc
    ld bc, $0706
    rst $08
    reti


    ld b, $00
    inc b
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $00ca
    inc [hl]
    rlca
    ld bc, $0201
    ld b, $04
    dec b
    ld [bc], a
    inc bc
    add e
    sub e
    dec d
    ld bc, $0601
    add [hl]
    ret c

    ld sp, hl
    ldh a, [$f7]
    ld hl, sp-$01
    inc a
    rra
    db $fc
    rst $08
    ld a, [hl]
    ld l, a
    cp $ef
    cp $cf
    rst $38
    rra
    inc hl
    rst $38
    ld a, [bc]
    ld c, [hl]
    rst $18
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld a, a
    ld a, h
    ld a, a
    db $fc
    rst $38
    ld hl, sp+$44
    rst $38
    ldh a, [rTAC]
    ld [hl], b
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ei
    cp $86
    jp nz, $cf84

    dec c
    rra
    ccf
    jp z, $15c6

    dec bc
    ld a, [hl]
    ld de, $20ff
    rst $38
    and b
    rst $38
    ret nz

    ld b, e
    ld a, a
    ld b, b
    inc c
    ld l, a
    ld e, h
    ld h, c
    ld a, [hl]
    add e
    sbc [hl]
    inc bc
    ld a, [hl]
    inc bc
    cp $05
    cp $07
    ld b, h
    db $fc
    add a
    inc bc
    dec bc
    db $fc
    rrca

jr_055_5902:
    ld sp, hl
    ld b, e
    dec c
    ei
    inc bc
    dec d
    ei
    ld e, $f1
    ld b, e
    rra
    ldh a, [rSB]
    ld a, [hl-]
    rst $20
    ld b, l
    scf
    rst $28
    ldh [$35], a
    ld e, a
    rst $20
    ld a, e
    rst $00
    ld a, a
    jp $c976


    ld l, e
    call c, $bcdf
    db $fd
    cp [hl]
    rst $38
    cp [hl]
    cp $bf
    cp $3f
    rst $18
    ld a, $ed
    ld e, $00
    ld h, b
    db $10
    sub b
    jr @+$0b

    add hl, de
    add hl, bc
    or b
    sub b
    ret


    ld sp, hl
    ld b, $06
    ld bc, $0003
    inc c
    ld l, l
    ldh a, [$fa]
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fd
    ld d, c
    rst $38
    nop
    dec b
    dec a
    jp nz, $e4db

    ei
    db $e4
    ld b, e
    rst $28
    db $f4
    inc bc
    rst $38
    and $59
    jp hl


    ld b, e
    ld hl, sp+$08
    inc bc
    ld a, b
    adc b
    ldh a, [$90]
    ld b, l
    or b
    ret nc

    ld bc, $9070
    ld c, c
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    add h
    rst $18
    dec b
    ld [$0818], sp
    or b
    sub b
    jr nz, jr_055_5902

    sub e
    ld c, $c0
    jr nc, jr_055_59c0

    ld c, $02
    cp [hl]
    ld [bc], a
    db $fc
    inc c
    ldh a, [rSVBK]
    sbc b
    add sp, $78
    adc b
    ld b, e
    db $fc
    inc b
    ld b, a
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld bc, $02fa
    ld b, [hl]
    ld a, [c]
    ld a, [bc]
    ld b, $02
    db $e4
    inc d
    ld hl, sp+$18
    ldh [$e0], a
    db $ec
    ld hl, $63ff
    dec de
    jr nc, jr_055_5a1e

    ld [$1888], sp
    adc b
    sbc b
    adc b
    sub b
    adc b
    ld e, b
    ld b, h
    ld a, b
    ld e, h
    ld h, h
    ld h, h
    ld b, h
    ld b, h
    ld h, d
    ld h, d

jr_055_59c0:
    ld [de], a
    sub d
    add hl, bc
    adc c
    add l
    add c
    ld c, l
    ld b, b
    ld b, e
    ld a, $20
    rrca
    inc e
    stop
    db $10
    ld [$0008], sp
    ld [$0404], sp
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $6d01
    add hl, bc
    ld bc, $0403
    inc c
    dec b
    db $10
    rrca
    inc c
    inc bc
    inc bc
    ld l, a
    inc bc
    ld bc, $0701
    ld b, $7b
    ld bc, $c0c0
    ld b, e
    and b
    ldh [$03], a
    ret nc

    ld d, b
    ld d, b
    ld [hl], b
    ld b, e
    ld h, b
    jr nz, jr_055_5a00

    jr nz, jr_055_5a20

jr_055_5a00:
    jr nc, jr_055_5a25

    db $10
    ldh [$2d], a
    ld [$0818], sp
    inc a
    call nz, $435e
    ld l, $22
    dec h
    inc h
    ld a, [de]
    jr jr_055_5a30

    jr z, @+$79

    ret z

    rst $28
    db $10
    rst $38
    db $10
    rst $18
    jr nc, @+$01

    ld [hl], b

jr_055_5a1e:
    adc a
    sub b

jr_055_5a20:
    ccf
    jr nz, @+$39

    jr nz, @+$31

jr_055_5a25:
    jr nz, jr_055_5a3e

    jr nz, jr_055_5a98

    ld b, b
    rla
    ld b, b
    xor a
    add b
    ld e, a
    add b

jr_055_5a30:
    xor a
    nop
    ld e, a
    db $ec
    inc sp
    ld [$0e01], sp
    ld a, [hl]
    add [hl]
    add d
    inc l
    ld [bc], a
    ld e, [hl]

jr_055_5a3e:
    ld bc, $ff58
    nop
    ld b, h
    ld bc, $00ff
    db $fc
    ld b, h
    ld [bc], a
    cp $66
    inc b
    inc e
    ld b, $22
    ld h, $22
    ld b, e
    inc de
    ld de, $0211
    ld [$1010], sp
    ld bc, $2210
    ld hl, $2206
    ld c, h
    ld b, h
    ld c, b
    ld b, h
    ld de, $9849
    adc e
    ld b, e
    sbc h
    adc h
    inc d
    add h
    adc a
    adc a
    add a
    dec b
    ld b, c
    ld b, c
    ld b, b
    ld h, b
    ld b, b
    cp b
    add b
    ld e, a
    rlca
    cp b
    jr jr_055_5af4

    inc l
    ld a, a
    ld b, e
    ld a, a
    and e
    rst $18
    ld b, $10
    rst $28
    inc e
    di
    rrca
    rst $38
    inc bc
    ld b, e
    cp $02
    push bc
    db $d3
    add hl, bc
    sbc a
    ld h, b
    rst $38
    add c
    ld a, a
    ld bc, $879b

jr_055_5a98:
    ld a, h
    ld a, [hl]
    xor b
    nop
    ld [hl], h
    ld [de], a
    rlca
    ld [$0108], sp
    ld [$1110], sp
    inc bc
    ld de, $6143
    ld h, d
    add d
    ld e, $02
    ld l, h
    inc e
    and b
    ld h, b
    and a
    nop
    ld [hl-], a
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ld b, e
    ld [hl], b
    ldh a, [$0d]
    ldh a, [$f0]
    db $e3
    db $e3
    call z, $71cc
    ldh a, [rTAC]
    ld bc, $061e
    ldh [$f8], a
    and l
    nop
    xor $0b
    ldh [rSVBK], a
    db $fc
    ld c, $f4
    ld bc, $02ea
    db $fc
    inc c
    ldh [$f0], a
    and a
    nop
    ld d, [hl]
    ld b, l
    ld b, b
    ret nz

    or b
    nop
    ld [hl-], a
    ld [hl+], a
    add b
    ld [de], a
    inc c
    inc c
    ld [de], a
    ld [de], a
    inc hl
    ld hl, $4147
    ld c, [hl]
    ld b, d
    sbc h
    add h
    sbc b

jr_055_5af4:
    adc b
    ret z

    adc b
    ld h, b
    ld b, h
    inc b
    inc h
    inc h
    ld de, $2428
    ld c, b
    ld c, b
    jr jr_055_5b4b

    db $10
    sub b
    db $10
    db $10
    inc c
    inc c
    add [hl]
    ld [bc], a
    cp $e2
    inc e
    inc e
    db $ec
    dec l
    rst $38
    ld a, h
    dec e
    ld bc, $0200
    inc b
    inc b
    ld [$080c], sp
    ld [$1000], sp
    ld de, $1810
    db $10
    rrca
    ld [$0c0b], sp
    dec e
    ld e, $23
    ccf
    ld b, c
    ld a, a
    ld h, e
    ld a, a
    rst $10
    rst $38
    xor a
    ld [hl+], a
    rst $38
    inc bc
    ld a, a
    ld a, a
    inc a
    ld a, $92
    or [hl]
    ld [hl+], a
    ld bc, $0307
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    inc b
    ld l, l
    dec de
    ld [bc], a
    ld b, $09

jr_055_5b4b:
    add hl, bc
    ld bc, $0908
    ld [$1819], sp
    ld hl, $5330
    ret nc

    inc bc
    jr nz, jr_055_5b60

    nop
    rrca
    nop
    cpl
    nop
    ld d, a
    nop

jr_055_5b60:
    xor a
    nop
    ld e, a
    nop
    ld b, a
    rst $38
    nop
    inc bc
    ld a, a
    add b
    rst $38
    rst $38
    add [hl]
    add a
    ldh [rNR43], a
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nc, @+$21

    rra
    ld hl, $203f
    ccf
    ld b, c
    ld a, a
    ld e, d
    ld a, a
    ccf
    ld h, b
    ld c, a
    ld b, b
    sub a
    add b
    cpl
    nop
    ld e, a
    jr nc, jr_055_5b4b

    jr nc, @+$01

    add [hl]
    ld a, a
    or [hl]
    rst $38
    ld a, b
    or e
    db $fd
    rlca
    ldh [$60], a
    add sp, $58
    db $db
    daa
    rst $20
    jr jr_055_5bee

    rst $38
    nop
    rrca
    cp $01
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $ff48
    nop
    ld a, [bc]
    ret nz

    ei
    db $fc
    cp [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp $7e
    adc d
    sub l
    inc b
    nop
    rst $30
    ld [$0cff], sp
    ld a, c
    ld bc, $c040
    ld b, e
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    add h
    adc c
    rlca
    ld a, b
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    rst $38
    and h
    ret


    add hl, bc
    ld a, [$f5ff]
    rst $38
    ld_long a, $ff7f
    rra
    cp $02
    ld b, e
    db $fc
    inc b

jr_055_5bee:
    dec b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    jp $d300


    and e
    nop
    ld d, [hl]
    ld bc, $40c0
    inc hl
    jr nz, jr_055_5c06

    sub b
    db $10
    add sp, $08
    db $fc

jr_055_5c06:
    inc b
    db $ec
    add hl, hl
    inc hl
    ld bc, $21e0
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$880e], sp
    adc b
    sub b
    sub b
    ret nc

    ret nc

    ld d, b
    ret nc

    ret nc

    call nc, $9491
    ld a, [bc]
    ld [$080f], sp
    rra
    ld de, $323e
    ld c, [hl]
    ld c, [hl]
    adc a
    add b
    sbc a
    add b
    cp a
    add b
    ld b, e
    ld a, a
    ld b, b
    dec bc

jr_055_5c33:
    dec sp
    inc a
    ccf
    ld a, $5f
    ld a, a
    ld a, a
    ld b, a
    rst $28
    ld a, [c]
    rst $38
    ld a, [$23ec]
    inc c
    ld b, b
    ld b, b
    and b
    ldh [$90], a
    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    ld [bc], a
    cp $02
    and l
    nop
    sbc d
    nop
    ld e, a
    ld b, e
    ld [bc], a
    ld e, $1d
    inc b
    inc e
    ld [$9008], sp
    db $10
    ld h, b
    ld h, b
    add b
    add b
    ld b, b
    ld b, b
    ldh a, [$30]
    ldh [rNR50], a
    jp z, $c044

    ld c, [hl]
    ldh [$2e], a
    ld [$e024], a
    jr nz, jr_055_5c33

    ld c, b
    ldh [$a0], a
    add l
    ld bc, $ff3e
    db $ec
    ld d, c
    dec c
    ld bc, $0100
    ld bc, $0202
    dec b
    inc b
    ld a, [bc]
    ld [$3030], sp
    jp Jump_055_72c0


    ld a, [bc]
    ld bc, $7e1e
    nop
    add b
    cp a
    add b
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    ld h, e
    dec bc
    inc bc
    rlca
    ld [$0318], sp
    jr nz, @+$31

    jr nz, jr_055_5ce2

    inc hl
    inc e
    inc e
    adc [hl]
    xor b
    ld [hl+], a
    ld bc, $0301
    ld [bc], a
    add l
    rl a
    inc d
    db $10
    ld a, [de]
    nop
    dec [hl]
    jr nz, @+$6d

    ld b, b
    rst $10
    add b
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    inc bc
    rst $38
    inc b
    rst $38
    ld [$b18e], sp
    ld b, $03
    inc b
    inc c
    rst $30
    ldh a, [$1f]
    nop
    ld b, h
    rst $38
    nop
    rlca
    ret z

    ccf
    jr z, @+$41

    jr nc, @+$01

    ret nz

    ld a, a
    add l
    adc l
    dec c
    ld a, [hl]

jr_055_5ce2:
    sbc a
    sub c
    rra
    db $10
    cpl
    jr nz, jr_055_5d20

    jr nz, @+$31

    jr nz, jr_055_5d44

    ld b, b
    ld l, a
    add e
    rst $00
    dec b
    add b
    ld c, a
    nop
    sbc a
    nop
    rra
    add l
    rlc d
    nop
    ld a, a
    nop
    ld c, b
    rst $38
    nop
    dec bc
    inc bc
    rst $38
    inc c
    cp $70
    db $fd
    add b
    cp $00
    push af
    nop
    ld [$008b], a
    ld l, c
    inc bc
    ld a, $47
    ret nz

    rra
    add a
    and a
    ld [$fe01], sp
    ld b, $fc
    inc e
    db $fc
    inc h

jr_055_5d20:
    rst $38
    ld b, $4e
    rst $38
    nop
    ld a, [bc]
    inc bc
    db $fc
    inc b
    ld hl, sp+$08
    ld sp, hl
    ld [$08f1], sp
    db $fd
    inc b
    ld b, l
    db $fd
    inc c
    ld b, e
    push af

jr_055_5d36:
    inc d
    ld de, $18f9
    ld [$f128], a
    jr nc, @-$04

    jr nc, jr_055_5d36

    ld h, b
    db $eb
    ld b, b

jr_055_5d44:
    push de
    add b
    xor e
    nop
    ld d, a
    nop
    add e
    add e
    db $10
    xor a
    nop
    ld b, a
    ld bc, $018f
    inc bc
    rlca
    add hl, bc
    jr jr_055_5d83

    jr nz, jr_055_5db1

    ld b, b
    xor a
    add b
    ld e, a
    add e
    cp a
    nop
    ld b, b
    ld b, h
    rst $38
    jr nz, jr_055_5d74

    ld h, b
    cp a
    pop hl
    ld a, $82
    ld a, h
    call nz, $88f8
    ld hl, sp+$08
    ldh a, [rNR10]
    ld sp, hl

jr_055_5d74:
    dec e
    ld b, [hl]
    rst $38
    ccf
    ld [bc], a
    ld a, a
    rst $38
    ld c, a
    and e
    ld sp, hl
    ld c, $ff
    add c
    cp $7e

jr_055_5d83:
    ldh [$60], a
    ldh [rNR41], a
    ldh a, [$30]
    db $fc
    inc l
    ei
    inc bc
    db $fc
    add e
    or l
    nop
    db $10
    jp Jump_055_4ab1


    rst $38
    ld b, b
    ld b, a
    add b
    rst $38
    ld bc, $ff00
    and e
    nop
    ld a, a
    ld [$20c0], sp
    jr nz, @+$72

    db $10
    ld hl, sp+$28
    ld hl, sp+$68
    add h
    rst $08
    ld b, $30
    ret nc

    ld d, b
    ret nc

jr_055_5db1:
    ret nc

    jr nz, jr_055_5dd4

    xor c
    nop
    sub h
    ld [hl+], a
    ld b, b
    ld [$e850], sp
    add sp, -$38
    ret z

    db $fc
    db $f4
    db $fc
    call nz, $ef83
    ld bc, $e0e0
    call z, Call_055_6b00
    inc b
    ret nz

    jr nz, jr_055_5def

    and b
    jr nz, @+$45

    ldh a, [rNR10]

jr_055_5dd4:
    ld b, l
    ld hl, sp+$08
    ld b, e
    db $fc
    inc b
    ld b, e
    cp $02
    nop
    cp $a6
    push hl
    rst $38
    db $ec
    dec [hl]
    dec bc
    ld bc, $3f01
    ld a, $4a
    ld a, l
    add c
    cp $82
    db $fd

jr_055_5def:
    ld b, b
    ld a, a
    ld b, l
    jr nz, jr_055_5e33

    ld b, e
    db $10
    rra
    ld bc, $0f08
    ld [hl+], a
    rlca
    nop
    inc b
    ld b, e
    rrca
    add hl, bc
    add hl, bc
    ld e, $16
    jr jr_055_5e1e

    jr nc, jr_055_5e28

    ld [hl], b
    ld b, b
    ld hl, sp-$80
    ld [hl], e
    ld a, [bc]
    db $10
    jr nc, @+$0a

    ld c, b
    ld c, h
    ld b, h
    ld a, $42
    ccf
    ld hl, $433f
    jr nz, jr_055_5e3b

    ld [bc], a
    db $10

jr_055_5e1e:
    rra
    db $10
    ld b, e
    rrca
    ld [$0743], sp
    inc b
    ldh [$29], a

jr_055_5e28:
    ld b, $04
    dec b
    ld [$383e], sp
    db $fd
    ret z

    ld [$d518], a

jr_055_5e33:
    inc l
    xor e
    ld d, [hl]
    ld d, c
    xor a
    xor d
    ld d, a
    ld d, a

jr_055_5e3b:
    xor h
    ld b, $fd
    dec c
    ld a, [$f90e]
    dec c
    ld a, [$f51a]
    inc e
    di
    ld a, [hl-]
    push hl
    db $f4
    res 7, [hl]
    rst $38
    ld sp, hl
    rst $00
    ld e, $01
    ld b, e
    rrca
    nop
    ld [bc], a
    rra
    nop
    ld a, a
    cp [hl]
    nop
    jr jr_055_5e64

    ret nz

    ld b, b
    ld [c], a
    ld hl, $1cf0
    ret nc

jr_055_5e64:
    jr nz, @+$45

    ldh [rP1], a
    inc b
    ldh a, [rP1]
    ld a, a
    nop
    cp a
    add [hl]
    add e
    nop
    rst $38
    add h
    add e
    dec bc
    rst $38
    add b
    ld a, a
    rst $38
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    add b
    ld a, a
    add d
    adc h
    ld bc, $007f
    ld b, [hl]
    rst $38
    nop
    dec bc
    ret nz

    rst $38
    jr nc, @+$01

    adc b
    ld a, a
    call nz, $c63f
    ccf
    ld [c], a
    rra
    cp l
    sbc $0b
    inc b
    inc b
    ld a, b
    ld hl, sp+$38
    nop
    add hl, de
    nop
    rra
    nop
    ccf
    nop
    ld d, b
    rst $38
    nop
    ld [$f30f], sp
    ld a, [hl]
    add [hl]
    db $fd
    add hl, bc
    cp $0a
    db $fd
    ld c, c
    db $10
    rst $38
    ld [bc], a
    add hl, de
    rst $38
    inc c
    ld b, h
    rst $38
    rrca
    ld [bc], a
    rlca
    rst $38
    inc bc
    and h
    cp $01
    inc bc
    rst $38
    sub e
    push de
    dec c
    rrca
    dec c
    rla
    ld sp, $431d
    ld a, [de]
    add [hl]
    ld a, [hl-]
    ld b, $36
    ld a, [bc]
    ld [hl], h
    ld a, [bc]
    ld b, e
    db $ec
    inc d
    ld bc, $34c8
    ld b, e
    ret c

    jr z, jr_055_5ee5

    reti


    add hl, hl
    jp hl


    add hl, de
    pop af

jr_055_5ee5:
    add hl, bc

Call_055_5ee6:
    ld b, h
    db $fc
    inc b
    ld a, [bc]
    inc a
    db $d3
    rst $28
    add sp, $17
    db $f4
    dec bc
    add sp, $17
    ld d, h
    xor e
    add e
    ld bc, $8902
    db $f4
    rrca
    add b
    rst $38
    rst $00
    cp $ff
    ld hl, sp-$01
    ldh a, [$cf]
    ret c

    rst $00
    ld b, h
    add a
    add h
    inc bc
    ld [bc], a
    db $ec
    inc hl
    rlca
    db $10
    jr c, jr_055_5f5d

    ld b, h
    adc [hl]
    add d
    add [hl]
    add d
    ld b, e
    rlca
    ld bc, $3701
    ld bc, $fe43
    add d
    dec bc
    ld [hl], h
    ld c, h
    jr c, jr_055_5f4c

    cp b
    xor b
    ld e, h
    call nc, $fc3c
    ld [bc], a
    cp $45
    ld bc, $10ff
    dec c
    rst $38
    ld e, $fe
    ccf
    ld sp, hl
    ld a, a
    pop af
    rst $20
    ld sp, hl
    ei
    ld b, l
    ld a, [$fc46]
    ld b, h
    sbc $43
    ld [hl+], a
    cp $02
    ld [de], a
    cp $0a
    rst $38
    db $ec
    inc hl
    add hl, bc

jr_055_5f4c:
    rrca
    rra
    nop
    jr nz, jr_055_5f69

    inc e
    ld [$0708], sp
    ld b, $23
    ld bc, $020e
    ld [bc], a
    inc b
    inc c

jr_055_5f5d:
    db $10
    db $10
    daa
    ld h, b
    sbc [hl]
    add b
    ld a, h
    ld a, b
    ld [$0008], sp
    ld [hl+], a

jr_055_5f69:
    stop
    nop
    ld [hl+], a
    jr nz, jr_055_5f86

    nop
    ld b, b
    ld e, h
    ld b, b
    ld hl, sp-$64
    ld [hl], b
    ld [hl], b
    inc l
    jr nz, @+$1e

    inc h
    ld a, b
    ld e, b
    ld l, h
    ld l, h
    add hl, bc
    ld [$1013], sp
    rla
    db $10
    cpl

jr_055_5f86:
    inc hl
    ld l, l
    add e
    cp l
    ld de, $0202
    inc b
    inc b
    dec b
    inc b
    nop
    inc b
    add hl, bc
    ld [$080a], sp
    rrca
    ld [$101f], sp
    ld h, a
    ldh [$c3], a
    sub $09
    rlca
    inc b
    inc bc
    inc bc
    ret nz

    nop
    add b
    nop
    nop
    add b
    ld a, c
    inc de
    ld bc, $0200
    nop
    ld bc, $0a00
    nop
    dec d
    nop
    xor d
    nop
    sub a
    nop
    db $eb
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ld l, l
    add hl, de
    ld b, b
    ld b, b
    ldh [$a0], a
    ld h, b
    jr nz, @-$4e

    jr nc, jr_055_6034

    add hl, hl
    rst $20
    ld h, [hl]
    di
    add d
    ei
    ld b, c
    cp $21
    rst $38
    nop
    cp a
    ret nz

    rra
    nop
    ld a, a
    nop
    ld b, e
    rst $38
    nop
    ld c, $bf
    ret nz

    ld e, a
    jr nz, jr_055_6004

    nop
    ccf
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    dec hl
    adc d
    add e
    nop
    xor a
    add h
    add e
    ld [bc], a
    ld e, a
    nop
    cp a
    add e
    add e
    add d
    xor l
    ld b, a
    rst $38
    nop
    nop
    rst $38
    cp c
    nop

jr_055_6004:
    sub e
    dec bc
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    rst $38
    rrca
    rst $38
    add c
    cp [hl]
    ld b, d
    cp $43
    ld [bc], a
    db $fc
    inc b
    inc b
    ld a, [$fe04]
    nop
    ld e, h
    rst $38
    nop
    rlca
    ld e, $e1
    ccf
    pop bc
    ld a, a
    add $7f
    sbc b
    ld b, h
    rst $38
    and c
    ld bc, $ff81
    ld b, e
    pop bc
    ld a, a
    ld bc, $3ff0
    ld l, a

jr_055_6034:
    ld de, $1010
    jr z, @+$2a

    ld h, $26
    ld b, a
    ld b, l
    dec bc
    ld b, c
    add a
    add c
    dec bc
    add c
    ld d, $01
    rrca
    nop
    ld b, e
    ccf
    nop
    ld [bc], a
    ld a, a
    nop
    ld a, a
    add [hl]
    ld bc, $0013
    cp $a4
    ld bc, $0011
    db $fd
    adc l
    reti


    db $10
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$3f
    ldh a, [$7f]
    sub b
    sbc a
    add c
    sbc [hl]
    inc hl
    inc a
    ld h, a
    ld a, b
    ld b, e
    and $f9
    dec b
    ld [c], a
    db $fd
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    daa
    add b
    ld de, $c040
    db $ec
    inc l
    or d
    ld [hl], d
    ld c, h
    inc b
    cp b
    ld [$1868], sp
    cp b
    ld [$045c], sp
    or h
    inc c
    ld b, e
    cp $02
    dec d
    db $fc
    inc b
    cp $02
    cp $fa
    inc a
    call nz, $8e72
    ld h, d
    sbc [hl]
    ld b, c
    cp a
    pop bc
    ccf
    add c
    ld a, a
    add d
    ld a, [hl]
    ld [bc], a
    cp $45
    inc b
    db $fc
    ld b, e
    ld [$01f8], sp
    db $10
    ldh a, [rIE]
    db $ec
    dec sp
    ldh [rNR44], a
    ld bc, $0601
    rlca
    dec c
    ld a, [bc]
    ld a, [de]
    dec d
    dec d
    ld a, [hl+]
    ld a, [hl-]
    dec h
    ld sp, $6c46
    ld b, e
    db $76
    ld b, c
    ld l, e
    add b
    rst $10
    add b
    xor a
    ret nz

    rst $10
    add b
    xor a
    ret nc

    rst $10
    xor b
    xor e
    call nc, $6f50
    ld l, b
    ld d, a
    ld l, d
    ld [bc], a
    rlca
    rlca
    ld [$aed5], sp
    ldh [rNR43], a
    db $10
    ld sp, $4d0c
    daa
    inc hl
    inc de
    ld de, $100b
    rrca
    ld [$080b], sp
    dec c
    ld [$100b], sp
    dec e
    db $10
    ccf
    jr nz, @+$61

    ld h, b
    rst $08
    or b
    and c

Jump_055_60fc:
    ld e, [hl]
    ld b, b
    cp a
    and b
    ld e, a
    ld b, b
    cp a
    nop
    ld b, [hl]
    rst $38
    nop
    inc bc
    add b
    ld a, a
    ld hl, sp+$07
    ld c, c
    rst $38
    nop
    inc bc
    ld a, a
    add b
    rlca
    ld hl, sp+$69
    dec bc
    ccf
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    rst $38
    jr c, jr_055_615f

    rlca
    rlca
    xor a
    nop
    dec l
    inc b
    ret nz

    ld h, b
    ldh a, [rNR10]
    ldh a, [rSCX]
    adc b
    ld hl, sp+$02
    inc b
    db $fc
    inc b
    ld b, l
    cp $02
    ld b, e
    rst $38
    ld bc, $fd03
    inc bc
    ldh a, [rIF]
    ret


    call nz, $0109
    cp $03
    db $fc
    rlca
    ld sp, hl
    rra
    pop hl
    rst $38
    ld bc, $ff44
    ld [bc], a
    ldh [$2c], a
    inc b
    db $fc
    rlca
    ld hl, sp+$0f
    ret z

    ccf
    ld b, $1e
    rra
    ld hl, $101f
    add hl, bc
    ld c, $1c

jr_055_615f:
    rra
    ld [c], a
    rst $38
    rlca
    ld sp, hl
    rra
    ldh a, [$3d]
    ld [c], a
    ld a, [hl+]
    push af
    ld d, h
    db $eb
    ld [$94d5], a
    db $eb
    xor b
    rst $10
    call nc, $a0ab
    rst $18
    ret nc

    xor a
    ld h, b
    ld e, a
    ld d, b
    ld l, a
    add l
    add e
    ld b, l
    ld b, b
    ld a, a
    ld b, a
    add b
    rst $38
    ld bc, $ff00
    rst $00
    add c
    add hl, bc
    xor b
    rst $10
    push de
    xor d
    ld [$fd95], a
    add d
    rst $38
    add b
    ld c, e
    rst $38
    nop
    dec b
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    cp $83
    nop
    db $e3
    dec b
    ldh [$30], a
    ld hl, sp+$0c
    ccf
    jp $9483


    inc bc
    ret nz

    rst $38
    nop
    rst $38
    ld b, a
    ld bc, $00fe
    nop
    ld d, d
    rst $38
    nop
    ld b, a
    ld bc, $45fe
    inc bc
    db $fc
    ld b, l
    rlca
    ld hl, sp+$0b
    inc bc
    db $fc
    add c
    ld a, [hl]
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    ldh [$1f], a
    jp $cc90


    ld bc, $000d
    ld bc, $00ab
    inc [hl]
    ld [de], a
    db $10
    sub b
    cp b
    jr c, jr_055_6201

    inc l
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    add c
    ld bc, $7181
    rst $38
    inc bc
    ld c, [hl]
    or l
    ld a, [hl]
    ld b, e
    add d
    ld a, h
    inc b

jr_055_61ef:
    add h
    ld hl, sp+$04
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    ld bc, $10e0
    ld d, h
    ldh [rNR41], a
    db $10
    db $10
    ldh a, [rNR10]

jr_055_6201:
    ld hl, sp+$08
    ld [hl], h
    adc h

jr_055_6205:
    ld a, [hl-]
    add $32
    adc $34
    db $ec
    jr c, jr_055_6205

    jr nz, jr_055_61ef

    ld b, l
    ld b, b
    ret nz

    inc hl
    add b
    ld h, c
    rst $38
    ld [hl], b
    ld [hl+], a
    ld bc, $0101
    ld bc, $24ec
    dec b
    ld bc, $0202
    inc b
    inc b
    nop
    ld [hl+], a
    ld [$0000], sp
    ld h, $10
    ld a, [bc]
    nop
    db $10
    ld [$0408], sp
    inc b
    dec bc
    dec bc
    db $10
    stop
    ld [hl+], a
    jr nz, jr_055_623a

jr_055_623a:
    nop
    inc h
    ld b, b
    ld l, l
    inc bc
    ld h, b
    ldh [rNR23], a
    jr @-$3b

    or d
    inc bc
    add c
    add c
    add b
    add b
    and e
    cp a
    ld de, $4000
    ld hl, $1220
    db $10
    dec d
    db $10
    ld [hl+], a
    jr z, jr_055_6279

    daa
    dec hl
    ld hl, $1316
    ld c, $0f
    ld b, l
    ld [bc], a
    inc bc
    dec b
    ld bc, $3901
    ld a, c
    add [hl]
    add [hl]
    add l
    nop
    inc d
    rlca
    jr z, jr_055_626f

jr_055_626f:
    ld d, h
    nop
    jr @+$3a

    ld d, h
    ld b, h
    and h
    call $0210

jr_055_6279:
    inc b
    inc b
    add hl, de
    jr jr_055_62c8

    ldh [rTIMA], a
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld l, $1c
    ld [hl], $63
    cp c
    nop
    ld [hl+], a
    ld [de], a
    add e
    add e
    ld c, h
    ld c, [hl]
    ld d, b
    ld e, b
    jr nz, jr_055_62b5

    ret nz

    ld h, c
    add b
    jp nz, $d580

    nop
    xor e
    nop
    rst $10
    nop
    ld c, h
    rst $38
    nop
    ldh [rNR51], a
    cp [hl]
    rst $38
    ld bc, $f001
    ld hl, sp+$7e
    ld b, a
    ld a, l
    ld b, b
    ld a, [hl-]
    jr nz, jr_055_62e7

    jr nc, jr_055_62c6

    db $10

jr_055_62b5:
    ld de, $0210
    db $10
    dec c
    ld [$0b0b], sp
    ld c, [hl]
    rrca
    xor d
    ld [$084d], sp
    xor a
    db $10
    ld e, a

jr_055_62c6:
    db $10
    cp a

jr_055_62c8:
    db $10
    ld a, a
    jr nz, jr_055_6333

    inc bc
    ld [bc], a
    ld b, $01
    add hl, bc
    add e
    nop
    ld c, [hl]
    inc b
    inc b
    ld b, $00
    add hl, bc
    ld [$8984], sp
    inc bc
    db $fc
    db $fc
    inc b
    ld a, h
    ld b, h
    ld [bc], a
    ld a, $04
    ld a, [hl]
    ld [bc], a

jr_055_62e7:
    cp [hl]
    inc b
    ld a, l
    ld b, e
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $00
    ld bc, $ff4a
    nop
    rla
    ret nz

    rst $38
    jr nc, jr_055_6339

    ld [$c70f], sp
    rst $00
    ld h, e
    inc hl
    ld [hl], c
    ld de, $09b9
    ld a, b
    ld [$04bc], sp
    ld a, h
    ld a, h
    call c, Call_055_5ee6
    ld [bc], a
    jp nz, Jump_055_44ae

    ld [bc], a
    cp $03
    ld hl, sp+$06
    db $fc
    inc b
    xor a
    nop
    dec b
    inc hl
    ld b, b
    ld [hl+], a
    jr nz, jr_055_6322

    and b
    db $10

jr_055_6322:
    sub b
    ld b, e
    db $10
    ld d, b
    ld bc, $4808

jr_055_6329:
    ld b, [hl]
    ld [$0228], sp
    jr @+$0a

    adc b
    ld b, e
    inc d
    inc e

jr_055_6333:
    ld [bc], a
    inc h
    inc a
    jp nz, $fe46

jr_055_6339:
    ld [bc], a
    add hl, de

jr_055_633b:
    inc e
    db $fc
    inc h
    db $e4
    jr z, jr_055_6329

    jr jr_055_633b

    ld h, b
    ldh [$f8], a
    ld hl, sp+$56
    cp $a1
    rst $38
    ld b, b
    cp $80
    db $fd
    ret nz

    ld a, [$fd80]
    ret nz

    rst $38
    ld b, e
    ld b, b
    ld a, a
    dec b
    jr nc, @+$41

    ld a, $3f
    ld hl, $8321
    nop
    ld e, h
    db $ec
    ld b, l
    nop
    add b
    and h
    nop
    dec sp
    rrca
    db $10
    sub b
    ld [$0448], sp
    xor h
    ld [bc], a
    jp c, $fa02

    inc b
    db $fc
    ld [$f0e8], sp
    ldh a, [$63]
    rst $38
    db $ec
    ld hl, $0107
    ld bc, $0203
    inc bc
    inc b
    rlca
    rlca
    ld b, e
    inc c
    dec c
    ld bc, $0a09
    ld b, e
    rra
    db $10
    dec b
    rla
    jr jr_055_639f

    inc e
    rra
    db $10
    ld b, l
    rrca
    ld [$070d], sp
    inc b
    rlca
    dec b

jr_055_639f:
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$101f], sp
    rrca
    db $10
    ld b, e
    ccf
    jr nz, jr_055_63b2

    ld a, e
    ld b, h
    ld [hl], l
    ld c, d
    ld a, d

jr_055_63b2:
    ld b, l
    ld b, a
    rst $38
    add b
    ld a, e
    ld de, $1f07
    ccf
    ld h, b
    jp $8180


    nop
    ld bc, $0300
    nop
    dec bc
    nop
    rst $10
    add b
    db $eb
    nop
    ld b, l
    rst $38
    nop
    ld b, e
    cp $01
    ld b, e
    db $fd
    ld [bc], a
    rlca
    ei
    inc b
    rst $38
    rra
    ldh [rSVBK], a
    ld b, b
    add b
    ld b, e
    add b
    nop
    inc b
    pop bc
    nop
    xor d
    nop
    push de
    xor b
    sbc a
    ld bc, $40bf
    ld b, l
    rst $38
    nop
    nop
    rst $38
    ld a, [hl]
    dec b
    ret nz

    ret nz

    ld [hl], b
    or b
    ld a, b
    adc b
    ld b, e
    cp h
    ld b, h
    dec bc
    cp [hl]
    ld b, d
    sbc [hl]
    ld h, d
    adc [hl]

jr_055_6400:
    ld [hl], d
    scf
    ret


    ld a, e
    add l
    ld a, a
    add c
    ld b, l
    rst $38

jr_055_6409:
    ld bc, $fe44
    ld [bc], a
    ld [$bcc2], sp
    ld [hl], h
    ld [hl], h
    inc c
    ld a, [hl]
    ld [bc], a
    rst $38
    ld bc, $ff4f
    nop
    dec b
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    sub a
    ldh [$0e], a
    ld bc, $0303
    inc b
    ld b, $08
    inc c
    db $10
    inc e
    db $10
    ld e, $10
    rra
    jr nz, jr_055_6452

    ld c, d
    jr nz, @+$41

    ld bc, $101f
    add l
    nop
    jr c, jr_055_6400

    nop
    jr z, jr_055_6409

    nop
    inc hl
    dec bc
    rlca
    rrca
    sbc a
    or b
    ld hl, sp+$40

jr_055_6449:
    ldh a, [rLCDC]
    ld hl, sp+$20
    rst $38
    jr nz, @+$47

    rst $38
    db $10

jr_055_6452:
    inc bc
    ld a, a
    adc b
    ccf
    ret z

    ld b, e
    jr jr_055_6449

    ld [hl], e
    dec b
    ld a, h
    db $fc
    rst $38
    inc bc
    ccf
    nop
    ld b, e
    rra
    nop
    inc bc
    scf
    ld [$047b], sp
    ld b, e
    db $fd

jr_055_646c:
    ld [bc], a
    ld bc, $3fcf
    ld b, e
    ldh a, [$08]
    rlca
    ld hl, sp+$04
    db $fc
    inc bc
    db $fd
    ld [bc], a
    pop bc
    ld a, $c5
    nop
    or l
    rlca
    add b
    ld a, a
    add b
    rst $38
    ld [hl], b
    ld a, a
    rrca
    rrca
    and h
    rst $18
    jr jr_055_646c

    ld hl, sp+$18
    ld a, h
    ld b, $3f
    ld bc, $613e
    cp $11
    db $f4
    dec bc
    db $fc
    rlca
    pop af
    rrca
    add $3f
    ld a, b
    rst $38
    ld bc, $06ff
    cp $99
    nop
    add $1b
    ret nz

    ld h, b
    ret nz

    ld d, b
    ldh [$28], a
    add sp, $28
    call nc, $ec3c
    inc d
    cp $02
    cp $e2
    ld e, [hl]
    ld h, d
    ld a, $c6
    cp $1e
    ld a, [$b21e]
    ld a, [hl]
    ld [hl+], a
    cp $43
    inc b
    db $fc
    inc bc
    ld [$30f8], sp
    ldh a, [$cf]
    and h
    ld bc, $8080
    and e
    nop
    dec h
    ld bc, $e020
    ld b, e
    db $10
    ldh a, [rTIMA]
    ret z

    ld hl, sp+$48
    ld a, b
    ld [$ff78], sp
    ld a, h
    inc hl
    ld bc, $0245
    inc bc
    ld c, d
    inc b
    rlca
    rlca
    inc bc
    rlca
    rlca
    ld [$080f], sp
    ld b, $07
    db $db
    sbc c
    inc b
    inc bc
    inc bc
    rrca
    inc c
    rla
    ld b, h
    db $10
    rra
    ld de, $0b0d
    ld b, $0c
    jr @+$12

    jr nz, jr_055_6528

    ld b, b
    ld b, b
    pop bc
    add b
    add c
    nop
    add b
    ld bc, $00c7
    ld b, [hl]
    rst $38
    nop
    ld [$df38], sp
    ld e, h
    rst $30
    ld a, h
    rst $00
    ld a, h
    rst $38
    jr c, jr_055_6569

    rst $38
    nop
    jr jr_055_65a3

    add b
    rst $38

jr_055_6526:
    add b
    ld a, a

jr_055_6528:
    ld b, b
    ccf
    jr nz, jr_055_654b

    db $10
    dec c
    ld c, $09
    rrca
    rra
    ld de, $121e
    ld [$0c0c], sp
    inc e
    daa
    ld h, e
    rra
    add e
    sub a
    ld [bc], a
    add c
    db $fd
    ld b, d
    ld b, e
    rst $38
    nop
    ld bc, $818f
    ld b, e
    rlca
    nop

jr_055_654b:
    dec c
    rrca
    nop
    daa
    jr jr_055_65ac

    inc b
    dec hl
    ld d, h
    dec bc
    inc [hl]
    ld [hl], a
    adc b
    adc a
    ld [hl], b
    ld b, [hl]
    rst $38
    nop
    ld b, l
    ld bc, $04ff
    nop
    rst $38
    adc b
    rst $38
    ld [hl], b
    ld d, d
    rst $38
    nop

jr_055_6569:
    ld [bc], a
    add c
    inc a
    ld a, [hl]
    xor c
    nop
    dec d
    inc b
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp-$5a
    nop
    ld e, e
    add hl, bc
    ldh [$30], a
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $ff4c
    nop
    ld [$7fe0], sp
    ld [hl], b
    rst $18
    ldh a, [$1f]
    ldh a, [rIE]
    db $e3
    ld b, e
    rst $38
    nop
    ld bc, $07fb
    add a
    db $e3
    add hl, bc
    cp $02
    db $fd
    rlca
    ei
    inc c
    rst $38
    jr c, jr_055_6526

jr_055_65a3:
    rst $00
    ld h, l
    db $f4
    jr nc, jr_055_65a8

jr_055_65a8:
    nop
    ld [bc], a
    and b
    add b

jr_055_65ac:
    ld h, b
    ld [hl+], a
    ret nz

    ld b, e
    ld b, b
    add b
    ld [bc], a
    add b
    nop
    add b
    add l
    and [hl]
    xor e
    nop
    ld a, [hl-]
    rlca
    rst $28
    ld hl, sp-$31
    ld a, b
    rst $08
    jr c, @+$01

    jr nc, @+$49

    rst $38
    nop
    ld bc, $1c1b
    ld b, e
    ccf
    jr nz, jr_055_65cf

    dec e

jr_055_65cf:
    ld e, $cd
    nop
    ld [hl+], a
    inc b
    ld bc, $0301
    ld b, $03
    ld b, h
    ld [$0b0f], sp
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld h, a
    sbc b
    push af
    adc [hl]
    ld sp, hl
    sbc c
    ld b, b
    ld h, b
    ld h, e
    ld c, $06
    ld c, $13
    ld sp, $400f
    rst $38
    ret nz

    cp a
    ld b, b
    cp $21
    rst $38
    nop
    rst $38
    and l
    xor e
    inc b
    ld b, b
    ldh a, [rSVBK]
    ld hl, sp-$78
    ld b, l
    db $fc
    inc b
    inc bc
    cp h
    call nz, $38e8
    adc h
    ld bc, $0004
    ldh [$86], a
    add a
    add h
    adc a
    and a
    nop
    adc [hl]
    dec c
    ld hl, sp+$38
    ret z

    ld hl, sp-$68
    add sp, $78
    ld c, b
    jr nc, @+$32

    ldh [rNR41], a
    ret nz

    and b
    add l
    ld bc, $0164
    ret nz

    ret nz

    add e
    ld bc, $007c
    rst $00
    adc d
    ld bc, $070d
    cp e
    ld b, h
    rst $38
    ld b, h
    ld [hl], a
    adc b
    adc a
    ld [hl], b
    ret


    ld bc, $8e16
    ld bc, $020a
    nop
    rst $38
    db $10
    rst $38
    db $ec
    jr nz, jr_055_6660

    ld bc, $0202
    inc b
    inc b
    ld bc, $0b08
    add hl, bc
    inc de
    dec e
    dec d
    inc de
    ld e, $22
    ld a, [hl+]
    ld h, $26
    ld [hl+], a
    ld [hl], $4a
    ld b, h

jr_055_6660:
    ld c, h
    ld b, e
    ld c, h
    ld b, h
    ldh [rNR44], a
    inc c
    add h
    adc l
    add l
    sbc a
    add [hl]
    sbc [hl]
    add a
    db $dd
    add l
    db $fd
    add l
    ld a, [$7687]
    ld c, e
    ld c, [hl]
    ld [hl], e
    ld a, [hl]
    ld b, e
    ld a, e
    ld b, l
    daa
    add hl, sp
    ld a, $21
    ld a, l
    ld h, d
    ld d, e
    ld a, h
    ld e, a
    ld [hl], b
    ld c, a
    ld a, b
    jr z, jr_055_66c9

    ld [hl], e
    ldh [$32], a
    ld [bc], a
    ld c, $07
    add hl, bc
    ld c, $0d
    dec c
    ld a, [bc]
    ld a, [de]
    dec d
    inc d
    dec de
    xor b
    or a
    and h
    ld a, e
    xor b
    or a
    and b
    cp a
    ld hl, $133f
    ld e, $16
    dec e
    dec c
    ld c, $12
    dec e
    add hl, de
    ld e, $10
    rra
    jr nz, jr_055_66f0

    ld [hl], b
    ld c, a
    ldh [$9f], a
    ret nc

    xor a
    xor b
    ld e, a
    nop
    rst $38
    sub h
    rst $38
    jr @+$01

    nop
    ld b, h
    rst $38
    ld [bc], a
    nop
    ld bc, $ff46
    nop
    ld b, e

jr_055_66c9:
    add b
    rst $38
    rlca
    ret nz

    ld a, a
    and b
    ld a, a
    ld [hl], b
    sbc a
    ld hl, sp+$0f
    ld [hl], l
    inc e
    ret nz

    ret nz

    or [hl]
    db $76
    add hl, bc
    rst $38
    inc b
    rst $38
    jr @+$01

    ld l, b
    rst $30
    ret nc

    xor a
    ld a, b
    rst $30
    db $f4
    adc e
    add sp, $17
    db $f4
    dec bc
    xor b
    ld d, a
    ld d, b
    xor a

jr_055_66f0:
    and b

jr_055_66f1:
    ld e, a
    nop
    ld d, h
    rst $38
    nop
    ld b, $90
    rst $38
    xor b
    rst $38
    ld c, d
    rst $38
    inc b
    ld c, a
    rst $38
    nop
    nop
    rst $38
    ld [hl], e

jr_055_6704:
    ld b, $30
    jr nc, jr_055_6704

    call z, $fba7
    ld de, $00aa
    xor l
    and e
    nop
    or [hl]
    inc b
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    sub b
    pop bc
    ld [$ff03], sp
    rlca
    db $fc
    dec bc
    ld sp, hl
    ld d, $f7
    jr jr_055_66f1

    adc l
    ld bc, $ff03
    ld b, e
    ld bc, $03fe
    inc bc
    db $fc
    rlca
    ld hl, sp+$77
    ldh [$33], a
    add [hl]
    add [hl]
    ld e, c
    rst $18
    ld hl, $62ff
    sbc $c2
    cp [hl]
    and a
    ld e, a
    ld c, d
    cp a
    sbc h
    ld [hl], a
    inc e
    rst $30
    inc a
    rst $30
    ld c, h
    rst $08
    ld a, $e3
    rra
    ld sp, hl

jr_055_674e:
    daa
    db $fc
    rlca
    db $fc
    ccf
    ld hl, sp+$4f
    ret nz

    ccf
    db $fc
    cpl
    ldh a, [$bd]
    add $ff
    jr jr_055_674e

    ld a, b
    adc a
    ldh a, [rIF]
    ldh a, [rTMA]
    ld sp, hl
    ld c, $fd
    add e
    push de
    rrca
    inc bc
    db $fc
    rrca
    db $fc
    ld a, a
    ld a, [c]
    rst $38
    add e
    cp $02
    db $fc
    inc b
    db $f4
    inc b
    ld hl, sp+$08
    db $ec
    inc hl
    inc hl
    add b
    ld b, $40
    ret nz

    jr nz, @-$1e

    ld h, b
    and b
    add b
    ld b, h
    db $10
    sub b
    nop
    ret nc

    ld b, [hl]
    db $10
    ldh a, [rDIV]
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret z

    sub [hl]
    rlca
    ld hl, sp-$04
    ret z

    ld [hl-], a
    ld a, [c]
    ld a, [bc]
    db $fc
    inc c
    ld b, e
    db $fc
    inc h
    dec b
    call nc, $9034
    or h
    ld d, b
    ret c

    ld h, e
    rst $38
    db $ec
    ld c, c
    db $10
    ld bc, $0601
    rlca
    ld [$0f0f], sp
    db $10
    rra
    jr nz, jr_055_6839

    ld b, b
    ld b, [hl]
    ld a, c
    add b
    rst $38
    add b
    ld b, h
    rst $38
    add c
    ld [hl], c
    ld bc, $0101
    ld b, l
    inc bc
    ld [bc], a
    inc hl
    ld bc, $2bf8
    or d
    dec c
    ldh a, [$f0]
    rrca

jr_055_67d3:
    rst $38
    inc bc
    cp $81
    ld a, a
    adc a
    ld a, a
    jr c, jr_055_67d3

    ld a, [hl]
    pop bc
    ld b, e
    rst $38
    add b
    inc bc
    ld c, $f1
    inc bc
    db $fd
    add a
    db $d3
    ldh [rNR44], a
    ld [bc], a
    inc bc
    inc bc
    dec b
    ld b, $05
    rrca
    add hl, bc
    add hl, bc
    rrca
    ld hl, sp-$01
    db $f4
    rrca
    db $fc
    rlca
    sub $2b
    xor e
    ld d, l
    ld d, h
    xor e
    nop
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_055_6847

    add hl, de
    ld e, $05
    ld b, $03
    ld [bc], a
    adc c
    rst $30
    ret


    ldh a, [rSCX]
    inc bc
    ld [bc], a
    rlca
    rlca
    inc b
    rrca
    ld [$303f], sp
    rst $38
    ret nz

    ld b, [hl]
    rst $38
    nop
    inc b
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rSCX]
    rrca
    ld hl, sp+$02
    push bc
    cp $04
    add h
    nop
    ld e, a
    ldh [rNR42], a
    ccf
    ccf
    call z, $9cff
    di

jr_055_6839:
    reti


    daa
    jp c, $6227

    cp a
    db $10
    rst $38
    adc b
    rst $38
    add a
    rst $38
    ld h, b
    rst $38

jr_055_6847:
    add hl, de
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    call nz, $d5bf
    cp [hl]
    sbc $79
    rst $38
    jr nz, jr_055_689d

    rst $38
    nop
    ld bc, $7f80
    add [hl]
    jp nz, $ff0a

    add b
    rst $38
    xor b
    rst $10
    ld d, h
    xor e
    xor d
    ld d, l

jr_055_6867:
    db $fd
    ld [bc], a
    ld d, d
    rst $38
    nop
    ld a, [bc]
    ld bc, $02fc
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], c
    add c
    add e
    ld b, a
    ld h, l
    dec c
    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ldh a, [rHDMA1]
    pop af
    ld d, [hl]
    rst $30
    ld e, b
    rst $38
    and b
    rst $38
    jp $e200


    inc bc
    ld bc, $03fe
    db $fc
    and e
    ld bc, $0415
    ld e, a
    and b
    cp a
    ld b, b
    cp $43
    ld bc, $c6ff

jr_055_689d:
    or e
    ld e, $3f
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    inc bc
    rst $38
    inc c
    db $fc
    db $10
    ldh a, [$90]
    ld [hl], b
    ld c, b
    cp b
    xor b
    ld e, b
    call nc, $f43c
    inc e
    db $f4
    inc c
    ld hl, sp+$08
    db $fc
    inc b
    cp $a4
    ld bc, $0b0b
    jp Jump_055_60fc


    ld a, a
    jr jr_055_6867

    add a
    add a
    add b
    ret nz

    ret nz

    ret nz

    ld l, c
    inc b
    inc a
    ld a, h
    cp $82
    ld a, [hl]
    ld b, e
    add d
    ld a, h
    ld bc, $fc84
    ld b, e
    inc b
    ld hl, sp+$43
    ld [$0ef0], sp
    db $10
    ldh a, [rNR10]
    ldh [rNR41], a
    ld b, b
    ret nz

    add b
    ldh [$a0], a
    and b
    or b
    or b
    ret c

    add sp, $43
    db $fc
    inc b
    rlca
    db $f4
    inc c
    add sp, $18
    sub b
    ld [hl], b
    ld h, b
    ldh [$b7], a
    nop
    ld a, [hl]
    ld [$e0c0], sp
    ld hl, sp+$18
    call z, $163c
    cp $2a
    ld [hl+], a
    cp $01
    ld a, h
    ld a, h
    ld h, c
    rst $38
    db $ec
    ld l, $01
    ld bc, $2200
    ld [bc], a
    ld b, $00
    inc b
    rlca
    inc b
    inc bc
    ld a, [bc]
    ld bc, $1122
    ld b, $13
    ld de, $111f
    ld c, $2a
    inc b
    ld [hl+], a
    ld b, h
    rla
    ld c, h
    ld b, h
    ld a, h
    ld b, h
    jr c, @+$2a

    inc d
    ld d, h
    ld b, h
    ld b, h
    ld b, $82
    add [hl]
    add d
    adc [hl]
    add d
    ld a, h
    ld b, h
    ld a, h
    ld e, h
    ld [hl+], a
    ld [hl+], a
    ld b, c
    ld b, c
    ldh a, [rNR42]
    pop de
    nop
    ld bc, $d384
    ld de, $0202
    nop
    dec b
    nop
    ld b, $06
    inc b
    add [hl]
    add h
    add e
    add d
    jp $c142


    ld b, d
    add c
    add c
    ld hl, sp+$21
    jp hl


    inc bc
    ld bc, $0201
    ld b, $92
    adc $0e
    ld bc, $0602
    ld [$1008], sp
    db $10
    inc sp
    jr nz, jr_055_69db

    ld e, b
    add c
    and $00
    add c
    ld h, [hl]
    ld [$3070], sp
    adc h
    inc a
    ld [bc], a
    ld a, $01
    ld a, a
    nop
    ld b, a
    rst $38
    nop
    dec bc
    db $fc

jr_055_6989:
    nop
    db $fc
    add b
    ld a, [hl]
    ld b, b
    ccf
    jr nz, jr_055_69a0

    jr jr_055_6996

    ld b, $8f
    db $eb

jr_055_6996:
    ld [$0301], sp
    inc c
    inc e
    ld hl, $8f60
    add b
    ccf

jr_055_69a0:
    add [hl]
    adc [hl]
    rrca
    ld [bc], a
    ld b, $08
    jr @+$32

    jr nz, @+$72

    ld b, b
    ld hl, sp-$80
    rst $38
    nop
    rra
    add b

Call_055_69b1:
    ccf
    nop
    adc c
    push bc
    dec bc
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, $19
    ld a, $2c
    ccf
    ld b, e
    ld b, e
    dec h
    add b
    ldh [$2c], a
    ret nz

    ld b, b
    ldh a, [$30]
    cp $0e
    rst $38
    ld bc, $03fc
    inc sp
    inc c
    rrca
    db $10
    rlca
    jr nz, @-$3d

    jr nz, jr_055_6989

    ld b, b
    cp h

jr_055_69db:
    ret nz

    ld a, [hl]
    ld h, c
    inc e
    ld a, [de]
    inc b
    ld b, $04
    inc b
    add hl, bc
    ld [$1013], sp
    cpl
    ld h, b
    rst $38
    add b
    rrca
    ld [hl], b
    di
    inc c
    db $fd
    ld [bc], a
    cp $84
    rst $30
    dec bc
    ldh [$f0], a
    inc a
    inc c
    rra
    inc bc
    rra
    nop
    scf
    ld c, $e1
    dec d
    ld b, e
    ret nz

    ld [hl+], a
    inc bc
    pop af
    dec d
    rst $38
    ld c, $a5
    db $db
    inc b
    rst $38
    inc bc
    rst $38
    rlca
    db $f4
    ld b, h
    rrca

jr_055_6a14:
    ld hl, sp+$07
    ld a, [hl]
    add a
    sbc a
    ldh [$7f], a
    ld [hl], c
    ld c, $0e
    ld h, a
    inc de
    ret nz

    ret nz

    jr nc, jr_055_6a14

    db $fc
    inc c
    cp $02
    rst $38
    ld bc, $00ff
    jp $3c3c


    jp $007f


    ld a, a
    nop
    ld c, [hl]
    rst $38
    nop
    inc b
    ld bc, $02fe
    db $fc
    inc c
    xor h
    nop
    add $0a
    ld b, b
    ldh [rNR41], a
    ldh a, [$b0]
    ret c

    add sp, -$04
    inc b
    or $0a
    ld b, e
    cp $02
    dec b
    db $fc
    db $f4
    jr c, jr_055_6a8c

    nop
    nop
    add a
    ld bc, $034c
    ret nz

    ld b, b
    add b
    add b
    or l
    nop
    xor b
    ld b, e
    ret nz

    ld b, b
    ld bc, $a040
    ld b, e
    and b
    ld h, b
    ld bc, $20e0
    add h
    and a
    ld bc, $8040
    ret z

    jp z, $ecff

    ld b, a
    inc c
    rlca
    rlca
    jr @+$1a

    jr nz, jr_055_6a9e

    ld b, b
    nop
    ld b, c
    ld b, b
    ld b, d
    ld b, b
    ld hl, $2043
    ld [hl+], a
    ld b, $22
    ld c, h
    ld c, h

jr_055_6a8c:
    ld [hl], b
    ld [hl], b
    add b
    add b
    ld a, a
    ldh [$3f], a
    ld bc, $0201
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $04
    rlca
    inc b
    rrca

jr_055_6a9e:
    ld [$090e], sp
    ld e, $11
    dec d
    db $10
    ld a, [de]
    db $10
    dec d
    jr jr_055_6acc

    inc b
    ld hl, $2124
    ld [hl+], a
    dec h

jr_055_6ab0:
    inc hl
    inc hl
    ld sp, $0927
    dec de
    rla
    rla
    inc de
    ld l, $3e
    xor h
    cp l
    ld l, b
    ld a, d
    ld [hl], b
    dec e
    ldh a, [rNR30]

jr_055_6ac3:
    ld l, a
    inc e
    rst $38
    nop
    adc a

jr_055_6ac8:
    add b
    rrca
    nop
    rla

jr_055_6acc:
    nop
    dec sp
    jr nc, jr_055_6b47

    ld [hl], b
    rst $28
    ld h, b
    ld [hl], l
    add e
    nop
    ld c, b
    add hl, de
    ld [hl+], a
    jr nz, jr_055_6b20

    ld b, b
    xor d
    add b
    dec d
    ld b, b
    xor d
    ld b, b
    ld d, l
    jr nz, @-$6f

    jr nz, jr_055_6b46

    jr nz, jr_055_6ac8

    inc hl
    rst $28
    rla
    rst $28
    rra
    ld a, a
    sbc a
    ld a, a
    cp a
    ld b, e
    rst $38
    ld a, a
    ld [bc], a
    db $fc
    rst $38
    cp $24
    rst $38
    ld [bc], a
    cp $ff
    ret nz

    ld b, e

Call_055_6b00:
    rst $38
    nop
    jr jr_055_6ac3

    inc c
    ld a, a
    ld c, $bf
    ld b, $7f
    nop
    rst $38
    db $10
    rst $28
    xor b
    ld d, a
    ret nc

    cpl
    add sp, $17
    db $f4
    dec bc
    rst $38
    rlca
    ld hl, sp+$18
    ldh a, [$60]
    or l
    db $dd
    ld [hl+], a
    db $10

jr_055_6b20:
    db $10
    sub b
    jr nc, @-$6e

    ld d, b
    sub b
    jr z, jr_055_6ab0

    jr jr_055_6b72

    xor b
    ld c, b
    cp a
    ld c, a
    or b
    ld a, a
    ld hl, sp-$01
    add l
    pop de
    ld a, [bc]
    ccf
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ld h, b
    ld b, [hl]
    rst $38
    nop
    ld [$ff18], sp

jr_055_6b46:
    inc a

jr_055_6b47:
    rst $38
    ld a, $ff
    ld e, $ff
    inc c
    ret z

    adc c
    ld a, [bc]
    ld [hl], b
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    ld e, $0f
    rra
    ld bc, $ec7f
    inc h
    dec c
    add b
    ret nz

    dec de
    dec sp
    ld b, $0e
    ld bc, $009f
    db $fc
    ld bc, $0af9
    ld a, [$8b43]
    ei
    ld [de], a
    push bc
    db $fd

jr_055_6b72:
    call nz, $c2fc
    cp $e0
    rst $38
    ld h, h
    rst $38
    ld h, e
    rst $38
    ld sp, $30ff
    rst $38
    inc de
    rst $38
    db $10
    ld c, c
    rst $38
    nop
    inc b
    db $eb
    add c
    push af
    add b
    add sp, $43
    db $10
    ldh a, [$03]
    adc d
    ld hl, sp-$33
    ld a, b
    ld a, l
    inc de
    ld [bc], a
    ld [bc], a
    dec c
    dec c
    inc sp
    ld sp, $c2c2
    ld b, $02
    inc c
    inc b
    inc e
    inc b
    cp b
    adc b
    ld hl, sp-$38
    ldh a, [$d0]
    inc hl
    ldh a, [$e0]
    add hl, hl
    add sp, -$08
    ret z

    ret c

    inc h
    inc a
    call nz, $0afc
    ld a, [$f6d6]
    sub d
    ld a, [$ea00]
    and h
    db $ec
    ld [hl+], a
    db $e3
    ld de, $01d1
    ret


    ld [bc], a
    adc d
    inc b
    add h
    inc b
    inc b
    add b
    add h
    ld l, b
    ld l, b
    jr c, jr_055_6bea

    ld e, b
    ld [$64fc], sp
    cp $e2
    rst $38
    db $ec
    adc a
    ldh [$27], a
    ld bc, $0301
    ld [bc], a
    ld b, $05
    dec c
    ld a, [bc]
    ld a, [de]
    dec d
    dec d
    ld a, [de]
    ld a, [hl+]

jr_055_6bea:
    dec [hl]
    inc [hl]
    dec hl
    ld b, b
    ld a, a
    ld b, b
    ld h, e
    ld b, b
    ld e, l
    ld b, b
    db $76
    ld b, b
    ld l, [hl]
    ld b, b
    ld l, l
    jr nz, jr_055_6c2e

    jr nz, jr_055_6c3c

    ld de, $101f
    rra
    ld [$040f], sp
    rlca
    ld hl, sp+$3d
    and h
    inc bc
    ld bc, $0403
    inc b
    inc hl
    ld [$31e0], sp
    ld [hl], b
    ld a, b
    sub b
    cp $b8
    ld a, b
    ld b, b
    ret nz

    add a
    adc a
    ld a, b
    rst $38
    cp [hl]
    ld a, a
    inc sp
    di
    rla
    or $2e
    rst $38
    ld hl, $21e2
    ldh [rNR11], a
    di
    rrca
    db $fc
    inc bc

jr_055_6c2e:
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld e, $ff
    ld [$089c], sp
    ld l, [hl]
    ld [$087e], sp

jr_055_6c3c:
    cp a
    sub d
    rst $38
    ld [hl], c
    ld a, a
    dec bc
    rrca
    add e
    ei
    dec b
    inc bc

jr_055_6c47:
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, l
    inc b
    dec b
    ld b, e
    ld [bc], a
    inc bc
    sbc a
    nop
    cp b
    dec bc
    ld a, $ff
    nop
    ld bc, $7000
    nop
    add b
    nop
    and b
    nop
    ld h, b
    ld h, c
    ldh [$34], a
    inc c
    rra
    inc bc
    inc bc
    ret nz

    ldh [$1f], a
    rst $38
    inc a
    rst $38
    adc $cf
    rst $18
    ld e, a
    rst $38
    inc a
    rst $38
    nop
    rst $30
    ld c, $f3
    ld a, [c]
    rlca
    add l
    cp $0a
    ld sp, hl
    ld hl, sp+$25
    db $fc
    rst $38
    db $fc
    inc de
    cp $0d
    ld a, l
    jr nc, jr_055_6cc3

    ld b, b
    ld d, c
    nop
    add e
    nop
    rst $00
    add c
    rst $38
    ld b, [hl]
    rst $38
    jr c, @+$01

    daa
    rst $38
    ld hl, sp+$44
    rst $38
    nop
    ld bc, $ff03
    ld b, e
    inc b
    db $fc
    dec bc
    ld b, $fe

jr_055_6ca6:
    ld a, [bc]
    cp $1a
    cp $f4
    db $fc
    adc b
    sbc b
    ld [hl], b
    ld [hl], b
    ld [hl], a
    dec b
    ret nz

    ret nz

    jr nc, jr_055_6ca6

    ld [$4378], sp
    inc b
    ld a, h
    ld bc, $7f03
    ld b, e
    ld [bc], a
    rst $38
    jr jr_055_6c47

jr_055_6cc3:
    rst $38
    db $ec
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $28
    rst $30
    rst $08
    xor $d7
    cp $0b
    rst $38
    rla
    rst $38
    ld hl, $e1ff
    rst $38
    ld sp, $0afe
    db $fc
    ld b, e
    rrca
    ld a, [$1f1b]
    jp hl


    cp a
    ld h, $fe
    ld b, a
    rst $38
    ld c, h

jr_055_6ce7:
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ld d, d
    cp $54
    db $fc
    dec c
    db $fd
    rst $38
    rst $38
    ld [bc], a
    inc bc
    inc bc
    ldh a, [$32]
    nop
    cp c
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld b, e
    jr nz, jr_055_6ce7

    ld b, e
    db $10
    ldh a, [rNR24]
    ld [$58f8], sp
    ld hl, sp-$58
    ld hl, sp+$58
    ld hl, sp-$50
    ldh a, [rSVBK]
    ldh a, [$08]
    ld a, b
    ld [$0418], sp
    adc h
    inc b
    db $e4
    inc b
    db $f4
    ld [$f0f8], sp
    ldh a, [$89]
    and l
    ld b, $d0
    ldh a, [$30]
    jr nc, jr_055_6d3d

    db $10
    ret z

    ld [hl+], a
    add sp, $07
    ld [$e8e8], sp
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$ec], a
    ld a, e
    rst $38

jr_055_6d3d:
    ld a, l
    ld b, $01
    ld bc, $0203
    rlca
    inc b
    rlca
    ld b, l
    ld [$440f], sp
    db $10
    rra
    rlca
    rla
    jr jr_055_6d6a

    dec d
    dec d
    ld a, [de]
    ld a, [bc]
    dec c
    ld b, e
    ld [$010f], sp
    dec b
    rlca
    ld b, h
    rlca
    ld b, $03
    inc b
    rlca
    inc b
    rrca
    add a
    and c
    nop
    ld de, $1f43
    ld [de], a

jr_055_6d6a:
    inc bc
    ld d, $1b
    ld a, [bc]
    rla
    ld b, l
    add hl, bc
    rrca
    ld bc, $0704
    ld [hl], e
    add hl, bc
    ld b, $06
    rlca
    add hl, bc
    rrca
    ld a, [bc]
    rra
    inc [hl]
    ld a, a
    call nz, $ff44
    ld [$1002], sp
    rst $38
    db $10
    ld b, e
    rst $30
    jr jr_055_6d8f

    di
    inc e
    pop af

jr_055_6d8f:
    ld e, $43
    ld hl, sp+$0f
    dec bc
    db $f4
    rrca
    ld a, b
    add a
    db $fc
    ld b, e
    ld a, [hl]
    pop bc
    rst $38
    add b
    cp $01
    ld c, [hl]
    rst $38
    nop
    inc c
    ret nz

    ccf
    jr nc, jr_055_6de7

    inc c
    cp $03
    ld [hl], l
    adc d
    ld a, [bc]
    push af
    ld bc, $83fe
    sub b
    ld bc, $ff80
    ld h, l
    ld [de], a
    inc bc
    rlca
    rrca
    rrca
    rlca
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ld sp, $c0ff
    pop hl
    nop
    add b
    ld h, d
    ld b, $40
    nop
    add d
    nop
    ld d, l
    nop
    xor e
    adc d
    pop bc
    dec b
    ld a, a
    add b
    ld e, $e1
    ld bc, $87fe
    adc [hl]
    rlca
    and b
    ld e, a
    ld d, h
    xor e
    xor d
    ld d, l
    push de

jr_055_6de7:
    ld a, [hl+]
    adc a
    rst $20
    ld b, $7f
    add b
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    and l
    cp b
    ld [bc], a
    nop
    ld de, $2231
    ld [hl], c
    ld b, $73
    inc sp
    dec sp
    dec sp
    cp e
    sbc e
    sbc e
    ld [hl+], a
    rst $38
    inc c
    sbc $df
    db $fc
    rst $18
    ldh [rIE], a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld d, c
    rst $38
    nop
    adc d
    cp c
    ld b, e
    rst $38
    ld bc, $fe00
    add e
    adc a
    ld bc, $50af
    xor l
    db $dd
    ld bc, $0af5
    and e
    and e
    ld bc, $5fa0
    add l
    rst $18
    dec h
    add b
    ld bc, $8000
    and l
    nop
    ld a, [de]
    ld b, $f0
    ld [hl], b
    db $fc
    inc c
    cp $02
    rst $38
    adc a
    nop
    sbc l
    inc d
    inc b
    rst $38
    dec bc
    rst $38
    ld [$18f7], sp
    rst $38
    jr nz, @-$3f

    ld e, b
    ld c, a
    cp b
    sbc a
    ld [hl], b
    rra
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    rst $00
    nop
    cp a
    rrca
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    inc bc
    rst $38
    ld b, $fe
    cp d
    ld a, [hl]
    ld b, e
    ld [bc], a
    cp $45
    inc b
    db $fc
    ld bc, $f808
    cp e
    nop
    ld b, $01
    ret nz

    ld b, b
    and a
    nop
    ld b, d
    ld bc, $d8e8
    ld b, e
    add sp, $38
    ld b, e
    ld hl, sp+$18
    ld bc, $10f0
    ld b, l
    ld hl, sp+$08
    dec b
    db $fc
    inc c
    ld a, [$f20a]
    ld [bc], a
    ld b, e
    pop af
    ld de, $7307
    sub c
    cpl
    pop hl
    ld a, $e6
    ld a, b
    ld hl, sp-$2b
    xor [hl]
    rst $38
    ld l, a
    inc bc
    ld bc, $0101
    ld bc, $0872
    ld bc, $1e0e
    ld h, b
    ldh [$87], a
    add b
    sbc a
    add b
    ld b, e
    ld e, a
    ld b, b
    ld bc, $404f
    ld b, e
    cpl
    jr nz, jr_055_6ebd

    daa

jr_055_6ebd:
    jr nz, jr_055_6f02

    rla
    db $10
    ld bc, $1013
    ld b, l
    dec bc
    ld [$0543], sp
    inc b
    ld b, l
    inc bc
    ld [bc], a
    ld bc, $0101
    ld a, e
    dec c
    ldh [$f0], a
    ld e, h
    cp $af
    rst $38
    rst $38
    cp $7f
    ld a, [hl]
    dec e
    ld e, $0d
    ld c, $87
    xor l
    inc bc
    ldh [$e0], a
    jr nz, jr_055_6f07

    ld b, l
    ldh a, [rNR10]
    ld bc, $08f8
    ld b, l
    ld sp, hl
    add hl, bc
    ld b, [hl]
    rst $38
    ld b, $e0
    jr nz, jr_055_6efa

    rst $38
    inc b
    db $fd
    rlca

jr_055_6efa:
    db $fd
    inc b
    rst $38
    nop
    rst $38
    ld bc, $03fe

jr_055_6f02:
    rst $38
    inc b
    rst $38
    add hl, de
    ei

jr_055_6f07:
    ld [hl], c
    sub c
    sub a
    ld [de], a
    ld e, $12
    rra
    dec bc

jr_055_6f0f:
    rrca
    ld c, $09
    rrca
    ld [$0407], sp
    ld [hl], e
    add hl, bc
    add b
    ret nz

    jr nc, jr_055_6f54

    add [hl]
    ld b, $f1
    ld bc, $00fc
    and e
    or a
    inc de
    ld a, e
    ld b, h
    ld [hl], $38
    ld a, [de]
    db $10
    inc [hl]
    jr nz, jr_055_6f98

    ld b, b
    ld d, l
    ld b, b
    xor d
    add b
    push de
    add b
    xor e
    nop
    rst $10
    nop
    ld b, a
    rst $38
    nop
    inc b
    rst $18
    jr c, jr_055_6f0f

    ret z

    jr c, jr_055_6f88

    rrca
    ld hl, sp+$16
    adc a
    ldh a, [$9f]
    rst $38
    sub b
    ld a, a
    db $10
    ld e, a
    inc a
    call nz, $143f
    rst $38
    ld h, h

jr_055_6f54:
    rst $38
    xor b
    rst $38
    jr z, @+$01

    rst $08
    ld a, b
    rst $00
    ld a, b
    ld a, c
    inc de
    add b
    add b
    ld b, b
    ld b, b
    jr nc, @+$32

    rst $20
    rra
    inc bc
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    ld d, e
    rst $38
    nop
    ld [bc], a
    rrca
    ldh a, [rSB]
    and h
    sbc b
    ld bc, $e01f
    add a
    adc a
    dec b
    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc

jr_055_6f88:
    add h
    adc a
    call z, $5c00
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, e
    add hl, bc
    ld [$1343], sp
    db $10

jr_055_6f98:
    ld b, e
    daa
    jr nz, jr_055_6fdf

    ld c, a
    ld b, b
    dec b
    sbc a
    add b
    cp a
    add c
    cp a
    ld bc, $fe43
    ld [bc], a
    ld b, e
    rst $38
    ld bc, $fe01
    ld [bc], a
    ld b, h
    rst $38
    inc bc
    ld [bc], a
    ld bc, $06f9
    ld b, l
    ldh a, [rIF]
    ld bc, $06f9
    ld b, h
    rst $38
    nop
    ld [bc], a
    ld bc, $807f
    ld d, h
    rst $38
    nop
    ld [bc], a
    ld bc, $01ff
    ld h, c
    rlca
    jr nc, @+$32

    ld [hl], b

jr_055_6fce:
    ld [hl], b
    or b
    ldh a, [rSVBK]
    ldh a, [$83]
    add e
    ld bc, $f0e0
    inc h
    ldh [rSC], a
    ld h, b
    ret nz

    ld h, b
    and l

jr_055_6fdf:
    nop
    ld c, [hl]
    xor a
    nop
    db $10
    inc hl
    add b
    ld [hl+], a
    ret nz

    ld bc, $c040
    ld b, [hl]
    jr nz, jr_055_6fce

    and a
    nop
    ld c, [hl]
    dec b
    add b
    add b
    ret nz

    ld h, h
    cp $1a
    add h
    rst $38
    inc b
    ld bc, $86fe
    ld hl, sp-$08
    adc c
    cp c
    rst $38
    ld [hl], c
    ldh [$31], a
    ld bc, $0301
    ld [bc], a
    ld b, $04
    dec c
    ld [$101f], sp
    inc c
    inc de
    add hl, sp
    daa
    ld [hl-], a
    cpl
    ld [hl], h
    ld c, [hl]
    ld h, h
    ld e, [hl]

jr_055_701a:
    ld c, [hl]
    ld a, a
    cpl
    ccf
    daa
    ccf
    rrca
    rra
    add hl, de
    rra
    jr z, jr_055_704d

    ld [$1147], sp
    adc a
    and e
    sbc a
    push hl
    sbc l
    xor c
    reti


    ld c, b
    ld a, d
    ld a, [hl+]
    ld a, [hl-]
    inc de
    ld a, [de]
    ld bc, $7801
    inc d
    inc bc
    inc c
    inc e
    jr nz, @+$62

    add b
    add b
    inc bc
    nop
    ccf
    nop
    rst $38
    nop
    cp $01
    jr nc, jr_055_701a

    add b
    rst $38

jr_055_704d:
    ld [hl], c
    ld a, a
    ld b, e
    rrca
    rra
    ld [bc], a
    rra
    ccf
    ccf
    inc l
    rst $38
    ld c, $bf
    rst $38
    rra
    rst $38
    add a
    ld a, a
    sub e
    ld a, a
    xor c
    ld l, a
    add $47
    pop bc
    ld b, c
    ret nz

    or [hl]
    pop de
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    add l
    rlc e
    rst $38
    nop
    jp $833c


    add [hl]
    inc bc
    inc a
    rst $38
    jp Jump_055_43e3


    add b
    pop bc
    ld [bc], a

jr_055_7081:
    pop bc
    db $e3
    db $e3
    ld [hl-], a
    rst $38
    dec b
    sbc a
    rst $38
    ldh [rIE], a
    ld e, a
    rst $18
    cp d
    nop

Jump_055_708f:
    ld b, d
    ld a, [bc]
    nop
    add b
    add b
    ldh a, [rSVBK]
    db $fc
    inc c
    cp $02
    rst $38
    ld bc, $d1c4
    ldh [$2a], a
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp-$3d
    db $fc
    pop af
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    add $ff
    add e
    rst $38
    add c
    di
    jp nz, $e9f1

    ldh a, [$f5]
    ld hl, sp-$05
    db $fc
    add sp, -$01
    jr nc, @+$01

    pop de
    rst $38
    inc hl
    ccf
    ld c, l
    ld a, a
    ld [hl-], a
    ld [hl], e
    ld bc, $7f01
    and e
    nop
    ld [de], a
    ld de, $60a0
    ldh [rNR41], a
    ldh a, [rNR10]
    ret nc

    jr nc, jr_055_7081

    ld e, b
    ld e, b
    xor b
    jr z, @-$26

    inc d
    db $ec
    inc h
    call c, $0443
    db $fc
    ld [bc], a
    add d
    cp $82
    ld b, h
    cp $c2
    add hl, bc
    ld [c], a
    cp $a2
    cp $94
    db $fc
    inc d
    db $fc
    ld l, b
    xor b
    res 5, b
    rrca
    ld [$0c0f], sp
    dec bc
    inc b
    dec bc
    ld b, $05
    rlca
    inc b
    ld bc, $0204
    ld [bc], a
    nop
    ld bc, $7f45
    rst $38
    dec c
    ccf
    rst $38
    dec de
    rst $38
    add e
    ld a, a
    add $3f
    adc c
    cp $3f
    ld sp, $0f0f
    ld l, e
    inc de
    adc e
    rst $30
    sbc a
    db $e3
    sub a
    db $e3
    and e
    rst $00
    xor a
    rst $00
    scf
    rst $08
    ld c, h
    cp a
    or c
    cp $fb
    db $fc
    rlca
    rlca
    ld l, e
    inc bc
    sub h
    sbc h
    ld [$6b08], sp
    adc h
    nop
    jr nc, jr_055_7141

    ld a, b
    jr z, @+$3a

    db $10

jr_055_7141:
    jr jr_055_71b0

    adc c
    nop
    call nc, $0f0b
    rst $38
    add $bf
    ld [hl], c
    ld c, [hl]
    inc hl
    ld a, $4f
    ld a, a
    jr nc, @+$72

    ld l, c
    ld b, $33
    cpl
    ld [hl], a
    ld c, a
    ld h, a
    ld e, a
    ld c, a
    adc b
    nop
    daa
    nop
    pop af
    ld a, $ff
    rst $38
    ld h, e
    inc b
    ld bc, $0203
    inc b
    inc b
    ld b, e
    ld [$000c], sp
    ld [de], a
    ld b, e
    inc e
    inc de
    rra
    ld c, $09
    rrca
    ld [$0407], sp
    rlca
    rlca
    dec bc
    rrca
    inc de
    rra
    ld d, $1e
    ld h, $3e
    inc l
    inc a
    ld c, h
    ld a, h
    ld e, h
    ld a, h
    ld e, c
    ld a, c
    sbc c
    ld sp, hl
    cp d
    ld a, [$fadb]
    xor e
    cp [hl]
    ld [hl+], a
    add a
    ldh [rNR41], a
    add h
    rlca
    add h
    ld c, a
    ld c, [hl]
    ld d, a
    ld a, [hl]
    ld l, e
    ld a, a
    db $f4
    cp h
    ret nz

    and b
    ldh a, [$90]
    ldh [$90], a
    ld hl, sp-$78
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, e
    ccf

jr_055_71b0:
    jr nz, jr_055_71d1

    db $10
    rra
    jr jr_055_71d3

    ld d, $1f
    db $10
    ld b, e
    rrca
    ld [$0705], sp
    inc b
    inc bc
    ld [bc], a
    ld bc, $6101
    dec bc
    ld h, b
    ldh [$f8], a
    jr @+$7e

    inc b
    ld e, $22
    ld c, $32
    rlca
    ld a, c

jr_055_71d1:
    ld b, e

jr_055_71d2:
    rlca

jr_055_71d3:
    ld sp, hl
    add hl, bc
    ld c, $f2
    ld e, $e2
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$e0], a
    add h
    ei
    ld b, $01
    rrca
    ld e, $62
    ld h, c
    add b
    add b
    add h
    adc e
    inc d
    nop
    ld a, [bc]
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    cp $00
    db $fd
    nop
    ld a, [$f504]
    ld [$88fa], sp
    ld e, l
    ld [hl], b
    ld b, h
    ccf
    jr nc, jr_055_720b

    jr c, jr_055_7266

    ld a, b
    xor a
    db $fc
    rst $38

jr_055_720b:
    jp nc, $ff4b

    nop
    dec b
    rst $18
    jr nz, jr_055_71d2

    ld e, b
    rst $10
    xor a
    ld a, d
    dec e
    ld bc, $0602
    ld a, b
    ld a, b
    ldh [$90], a
    add sp, $10
    ld [hl], l
    add b
    xor d
    ld b, b
    ld d, a
    jr nz, jr_055_71d3

    nop
    ld d, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    jp $c381


    add l
    nop
    nop
    ld e, h
    rst $38
    nop
    nop
    add b
    ld [hl], a
    ld a, [bc]
    ld b, $0f
    xor $fe
    ccf
    inc c
    rrca
    ld [bc], a
    rla
    ld bc, $c32b
    push de
    add d
    rst $00
    add sp, $32
    rst $38
    nop
    ld [bc], a
    ld bc, $07ff
    ld [hl], l
    ld b, $30
    ld [hl], b
    adc h
    adc h
    ld b, $02
    rrca
    jp $0d9f


jr_055_7266:
    ld bc, $c3be
    db $fc
    or a
    cp $0f
    rst $38
    rlca
    ei
    rlca
    db $eb
    ld bc, $a4d5
    db $eb
    ld [bc], a
    ld [$f500], a
    adc [hl]
    ret


    ld bc, $01fe
    and [hl]
    rst $08
    ld [bc], a
    add b
    rst $38
    ld b, b
    ld b, l
    db $fd
    ld b, d
    rlca
    ei
    add h
    rst $38
    add a
    ld sp, hl
    rrca
    ld a, [c]
    ld a, $7d
    rla
    add b
    add b
    ret nz

    ldh [$60], a
    ldh a, [rNR32]
    adc h
    ld [bc], a
    adc [hl]
    pop de
    rra
    rst $38
    rra
    cp $8e
    db $fc
    add h
    ld hl, sp+$58
    ld a, b
    ld a, b
    db $f4
    ld a, h
    ld b, l
    db $e4
    inc a
    ld b, e
    ld hl, sp+$38
    inc bc
    ldh a, [rSVBK]
    ldh [$60], a
    ld [hl+], a
    ret nz

    nop
    ld b, b
    ld c, e
    ldh [rNR41], a
    inc bc
    ret nz

    ld b, b

Jump_055_72c0:
    ret nz

    ld b, b
    rst $00
    cp b
    rst $38
    ld a, c
    inc c
    inc a
    ld a, h
    ld a, l
    add e
    inc bc
    call z, $2100
    nop
    jr nz, jr_055_72d2

jr_055_72d2:
    stop
    ld b, e
    ld [$4300], sp
    inc b
    nop
    ld b, e
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0100
    ld h, l
    add e
    adc c
    ld [hl], e
    ld [$0301], sp
    inc b
    inc b
    ld [$1008], sp
    stop
    ld [hl+], a
    jr nz, jr_055_736f

    dec c
    ret nz

    ret nz

    ldh [rNR41], a
    jr nc, jr_055_7349

    jr jr_055_7323

    inc c
    inc d
    ld b, $0a
    rlca
    add hl, bc
    ld b, e
    inc bc
    dec b
    ld b, e
    ld bc, $1002
    nop
    ld bc, $8001
    ld bc, $0781
    add d
    dec de
    ld [bc], a
    rst $20
    inc b
    rrca
    adc [hl]
    ld [de], a
    ld [hl], e
    ld bc, $e586
    rlca
    ld bc, $0201
    ld b, $18
    jr c, @+$42

jr_055_7323:
    ret nz

    ld h, c
    ld [$0003], sp
    ld c, $00
    inc e
    nop
    jr nc, jr_055_732e

jr_055_732e:
    ld h, b
    db $ec
    jr nz, jr_055_733d

    ld bc, $0e01
    rrca
    inc sp
    ccf
    ld l, a
    ld a, h
    rst $38
    add b
    rst $38

jr_055_733d:
    nop
    ld b, h
    rst $38
    ld bc, $8002
    rst $38
    ld h, b
    ld b, h
    rst $38
    nop
    nop

jr_055_7349:
    add b
    ld c, c
    rst $38
    nop
    ld a, [de]
    rra
    ldh [$e0], a
    sbc a
    ld a, a
    ld h, b
    ld [hl], a
    ld c, b
    sbc h
    add e
    rra
    ld bc, $0137
    ld h, l
    ld bc, $0185
    inc c
    ld bc, $0008
    jr jr_055_7366

jr_055_7366:
    stop
    jr nc, @+$80

    ldh [$29], a
    inc c
    ld e, $e1

jr_055_736f:
    pop hl
    ld [hl], h

jr_055_7371:
    ldh a, [$fa]
    add b
    rst $38
    inc bc
    ld hl, sp+$1f
    ret nz

    rst $38
    add e
    rst $38
    rrca
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    pop hl
    ccf
    rst $20
    ld a, $ff
    jr @+$01

    nop
    db $fc
    inc bc
    jp $3f3c


    ret nz

    add e
    db $fd
    inc bc
    cp $1e
    ldh [$e0], a
    add [hl]
    nop
    db $db
    ld [bc], a
    ld bc, $8181
    inc hl
    add b
    ld bc, $4040
    sub l
    nop
    ld b, b
    nop
    ld bc, $0444
    dec b
    ldh [$39], a
    inc bc
    ld [$080b], sp
    db $db
    ldh a, [rIF]
    nop
    rlca
    nop
    inc bc
    nop
    add e
    add b
    add l
    add b
    dec hl
    nop
    rst $10
    nop
    rst $38
    ld bc, $63fc
    sbc d
    db $f4
    dec de
    db $f4
    ld a, a
    db $e3
    db $fd
    add d
    ei
    inc b
    rst $20
    jr @-$5f

    ld h, b
    ld a, l
    add e
    cp $06
    db $fc
    inc c
    db $f4
    inc h
    call nc, $58e4
    ld c, b
    jr jr_055_742f

    jr z, jr_055_7371

    xor b
    adc b
    jr z, jr_055_73f5

    ld b, e
    ld d, b
    db $10
    inc bc
    ret nc

    sub b
    ld h, b
    ld h, b

jr_055_73f5:
    cp c
    nop
    ret z

    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    dec d
    or b
    ld [hl], b
    ld hl, sp+$08
    db $fc
    inc b
    ret z

    inc [hl]
    add [hl]
    ld c, d
    add [hl]
    ld [bc], a
    sub c
    ld d, a
    add e
    ld b, l
    jp nz, $c4c6

    inc l
    ld [$23f8], sp
    inc b
    dec bc
    ld hl, sp+$08
    db $fc
    db $f4
    ld hl, sp+$08
    ldh a, [rNR10]
    and b
    ld h, b
    add b
    add b
    ld a, e
    rst $38
    ld [hl], a
    inc hl
    ld bc, $0345
    ld [bc], a
    rrca
    rlca
    inc b

jr_055_742f:
    dec b
    inc b
    add hl, bc
    ld [$1013], sp
    inc hl
    jr nz, jr_055_7467

    jr nz, jr_055_7479

    jr nz, jr_055_7453

    jr jr_055_7481

    dec bc
    inc c
    dec c
    rla
    jr @+$21

    db $10
    ccf
    jr nz, @+$40

    ld hl, $332c
    ld de, $0e1f
    ld c, $7b
    rlca
    jr c, jr_055_748b

jr_055_7453:
    ld e, [hl]
    ld b, [hl]
    add c
    adc a
    sbc h
    add e
    ld c, b
    rst $38
    nop
    ld b, $08
    rst $38
    nop
    rst $38
    ld bc, $0efd
    ld d, c
    rst $38
    nop

jr_055_7467:
    dec b
    add c
    ld a, [hl]
    jr c, @+$01

    add $c7
    reti


    or $61
    dec bc
    inc bc
    inc bc
    inc b
    inc b
    ld [$3908], sp

jr_055_7479:
    jr nc, @-$2f

    ldh a, [$3f]
    ret nz

    xor b
    rlc h

jr_055_7481:
    nop
    db $fd
    ld e, $df
    ldh [rHDMA5], a
    rst $38
    nop
    dec c
    ccf

jr_055_748b:
    ret nz

    rrca
    ldh a, [rP1]
    rst $38
    ret nz

    rst $38
    jr nz, jr_055_74d3

    jr jr_055_74b5

    rlca
    rlca
    or e
    rst $08
    dec bc
    and b
    ld h, b
    sub b
    ld [hl], b
    adc b
    ld a, b
    add $3e
    pop bc
    ccf
    db $e3
    inc e
    xor c
    or l
    ld bc, $03fc
    ld b, e
    ld hl, sp+$07
    dec bc
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fc

jr_055_74b5:
    inc bc
    cp $01
    db $fd
    ld [bc], a
    ld a, [$8305]
    add e
    ld bc, $0bf4

jr_055_74c1:
    jp $07ce


    ld b, $fe
    ld [$10f8], sp

jr_055_74c9:
    ldh a, [$60]
    ldh [$bb], a
    nop
    sub b
    ld h, c
    inc bc
    ldh [$e0], a

jr_055_74d3:
    ldh a, [rNR10]
    ld b, e
    add sp, $18
    ld bc, $38c8
    ld b, e
    db $10
    ldh a, [rSC]
    jr nz, jr_055_74c1

    ld b, b
    ld [hl+], a
    ret nz

    rrca
    ld b, b
    ret nz

    jr nz, jr_055_74c9

    db $10
    ldh a, [rBCPS]
    sbc b
    ld a, b
    adc b
    or h
    ld c, h
    ld d, h
    xor h
    add h
    ld a, h
    or l
    nop
    db $e4
    inc bc
    rra
    db $10
    rla
    jr @+$49

    rrca
    ld [$0700], sp
    call z, $ae00
    inc bc
    jr nc, jr_055_7538

    jr c, jr_055_7552

    ld b, e
    ld d, h
    ld c, h
    dec b
    ld e, d
    ld b, [hl]
    cp c
    add a
    cp $81
    adc e
    nop
    ld l, b
    ld [bc], a
    db $fd
    inc bc
    rst $30
    ld b, h
    rrca
    rst $38
    ld [bc], a
    or $0f
    rst $38
    adc c
    nop
    ld de, $0224
    ld [bc], a
    inc b
    inc b
    add hl, bc
    sub b

jr_055_752c:
    nop
    or c
    ld [$7cbb], sp
    rst $38
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$41

jr_055_7538:
    add d
    sub e
    xor c
    xor a
    ld b, e
    ret nz

    ld b, b
    ld b, e
    and b
    ld h, b
    dec b
    db $10
    ldh a, [$50]
    or b
    sub b
    ld [hl], b
    ld b, e
    jr nz, jr_055_752c

    call z, $828e
    and c
    add l
    sbc a

jr_055_7552:
    add a
    sub a
    add a
    sbc c
    dec bc
    add b
    add b
    ld h, b
    ldh [$98], a
    ld a, b
    ld b, h
    cp h
    add d
    ld a, [hl]
    ld [bc], a
    cp $43
    ld bc, $03ff
    rst $30
    inc c
    rst $28
    db $10
    add e
    ld bc, $01c2
    ei
    inc b
    ld b, l
    rst $38
    nop
    adc e
    nop
    or b
    inc bc
    rst $28
    db $10
    rst $18
    ld h, b
    ld b, e
    rst $38
    nop
    ld bc, $f06f
    ld c, c
    rst $38
    nop
    rst $38
    ld l, [hl]
    nop
    ld bc, $0222
    inc c
    inc bc
    ld bc, $3001
    ld [hl], b
    rrca
    sbc a
    add b
    cp a
    ld [hl], b
    ld a, a
    rrca
    rrca
    add [hl]
    sub [hl]
    ld bc, $0101
    add e
    sbc c
    ld bc, $0102
    rst $08
    sbc a
    rrca
    nop
    db $10
    db $10
    jr z, @+$3b

    jr z, jr_055_75e7

    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    add hl, de
    add hl, de
    inc e
    inc e
    inc c
    ld [hl+], a
    ld c, $06
    rla
    rla
    ld de, $0011
    jr nz, jr_055_75e1

    inc hl
    jr nz, jr_055_75c5

    ld l, $10

jr_055_75c5:
    ld de, $dc8c
    ldh [$28], a
    inc bc
    ret nz

    push bc
    inc h
    ld h, a
    ld e, $ff
    add e
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    ei
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    cp $ff
    ld [bc], a
    inc bc

jr_055_75e1:
    ld b, c
    pop bc
    ld sp, $0e71
    ld a, a

jr_055_75e7:
    nop
    cp $04
    db $fd
    adc b
    ld a, [$7f68]
    inc de
    rra
    inc d
    rra
    ld b, e
    jr z, jr_055_7635

jr_055_75f6:
    ld b, e
    db $10
    rra
    rrca
    ld c, b
    ld c, a
    cp b
    rst $38

jr_055_75fe:
    and l
    rst $20
    and d
    ld a, [$6666]
    ld l, c
    jp hl


    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ld [hl+], a
    jr nc, jr_055_761b

    jr c, jr_055_7627

    sbc b
    ret c

    ret c

jr_055_7612:
    ld hl, sp-$04
    ld a, h
    ld a, [hl]
    cp a
    rra
    rra
    rlca
    dec hl

jr_055_761b:
    add c
    adc e
    db $dd
    ld bc, $0500
    ld b, e
    add h
    add a
    inc de
    sbc [hl]
    sbc a

jr_055_7627:
    ldh [rIE], a
    nop
    rst $38

jr_055_762b:
    ld e, $ff
    db $e4
    rst $20
    ld b, d
    jp $f332


    ld c, d
    db $db

jr_055_7635:
    ld b, a
    rst $18
    ld b, c
    rst $18
    ld b, e
    jr nz, jr_055_762b

    inc bc
    jr jr_055_75fe

    inc b
    ld e, a
    ld b, e
    ld [bc], a
    rst $38
    dec de
    pop bc

jr_055_7646:
    rst $38
    ld sp, $08ff
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    jr nc, jr_055_7646

    ret nz

    call nz, $1901
    ld [bc], a
    inc hl
    inc b
    rst $00
    jr jr_055_767c

    ldh a, [rIE]
    db $10
    rra
    ld b, h

Jump_055_7662:
    ld [$430f], sp
    dec bc
    nop
    ld [$1015], sp
    dec de
    jr nz, jr_055_7612

    ld hl, sp-$01
    db $fc
    rst $38
    xor h
    nop
    ld h, b
    jr z, jr_055_75f6

    ld b, a
    ld b, b
    ret nz

    ld b, e
    jr nz, @-$1e

jr_055_767c:
    ld b, e
    db $10
    ldh a, [rSC]
    call z, $03fc
    add h
    nop
    ld a, e
    inc b
    nop
    rst $38
    dec b
    db $fd
    nop
    ld b, e
    ld hl, sp+$00
    ld bc, $00fe
    ld b, h
    rst $38
    nop
    dec bc
    add b
    rst $38
    db $e3
    rst $38
    inc e
    rst $38
    ld bc, $06ff
    cp $08
    ld hl, sp-$5a
    db $dd
    call nz, $0983
    inc c
    db $fc
    ld c, $fa
    rlca
    db $fd
    rlca
    db $fc
    inc bc
    cp $ec
    add hl, hl
    add e
    push af
    dec bc
    and b
    ldh [$90], a
    ldh a, [$d0]
    ldh a, [$ac]
    cp h
    ld h, e
    ld a, a
    nop
    db $fc
    add a
    pop hl
    dec b
    ld b, c
    rst $38
    ld a, [c]
    cp $0c
    inc c
    sub l
    or c
    ld bc, $40c0
    db $ec
    ld [hl], $10
    add b
    ld h, b
    ld [hl], b
    inc c
    inc c
    ld [bc], a
    ld [c], a
    ld bc, $c1ff
    rst $38
    add [hl]
    cp $48
    ld a, b
    jr nc, jr_055_7714

    ld [hl], a
    rst $38
    db $ec
    add e
    ld bc, $0101
    call $1780
    inc bc
    inc bc
    dec b
    ld b, $09
    ld a, [bc]
    ld [de], a
    ld de, $2027
    ld c, a
    ld b, e
    ld c, h
    ld b, h
    sub h
    adc h
    cp [hl]
    add d
    ld [hl], d
    ld c, [hl]
    inc a
    inc h
    jr jr_055_771e

    db $ec
    dec sp
    rlca
    rlca
    rlca
    jr jr_055_772c

    jr nz, jr_055_774e

    ld b, b
    ld a, a
    ld b, e
    add b
    rst $38

jr_055_7714:
    ldh [rNR42], a
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    add b
    rst $38

jr_055_771e:
    ld a, a
    ld a, a
    ei
    rst $30
    push af
    rst $20
    rst $30
    db $e4
    db $e3
    ld h, b
    pop de
    ld [hl-], a
    ret


    ld e, c

jr_055_772c:
    jp $c55e


    rst $08
    ld h, l
    ld l, a
    ld hl, $1a2f
    rra
    ld b, $07
    adc a
    nop
    add h
    dec h
    ld bc, $0213
    ld [bc], a
    inc b
    inc b
    ld bc, $0908
    ld [$080b], sp
    inc bc
    db $10
    rra
    db $10
    ld d, $19

jr_055_774e:
    db $10
    ld d, $00
    db $10
    inc hl
    ld [$0c09], sp
    inc c
    inc de
    rra
    inc hl
    cpl
    ccf
    ccf
    inc e
    inc e
    xor l
    rst $28
    inc b
    ld b, $fe
    ld bc, $00cf
    ld b, e
    or a
    nop
    dec b
    rst $08
    add b
    rst $38
    ld [hl], b
    rst $38
    inc c
    ld [hl+], a
    rst $38
    ldh [$33], a
    sbc a
    or $6e
    push hl
    db $ed
    ld [hl+], a
    ld sp, hl
    ld b, $ff
    rlca
    ld a, [$f98f]
    ccf
    ld sp, hl
    rst $28
    ld [hl], c
    rst $18
    add hl, sp
    rst $38
    xor [hl]
    rst $38
    add sp, -$01
    jr z, @+$01

    rla
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    ld a, a
    ld a, a
    ld d, e
    ld [hl], e
    ld b, b
    ld a, a
    adc b
    rst $38
    ld [$883f], sp
    sbc a
    ld b, [hl]
    ld b, [hl]
    ld [hl], h
    inc [hl]
    cp $0e
    pop af
    ld de, $e043
    jr nz, jr_055_77b0

    ret nz

    ld b, b
    add b

jr_055_77b0:
    ld b, b
    daa
    add b
    ld bc, $4040
    inc hl
    ret nz

    ld bc, $8080
    ld [hl], l
    add e
    and c
    ld b, l
    ld b, b
    ret nz

    dec h
    add b
    dec b
    ret nz

    ld b, b
    pop bc
    ld b, c
    cp a
    cp $43
    ld [$0ac8], sp
    rrca
    ret z

    rrca
    db $eb
    ld b, $e6
    ld b, $f6
    sbc b
    ld hl, sp-$20
    ld b, h
    ldh [$a0], a
    ldh [$27], a
    ld [hl], b
    ldh a, [$88]
    ret c

    adc b
    ld hl, sp-$78
    adc b
    ld [hl], b
    ldh a, [$08]
    ld hl, sp+$04
    call nz, $0404
    jr nc, jr_055_7828

    ld a, b
    ld b, h
    sbc h
    add h
    sbc h
    add d
    adc [hl]
    add d
    ld c, [hl]
    ld b, d
    ld c, [hl]
    ld b, c
    ccf
    ld hl, $203f
    ld e, $11
    ld [$080e], sp
    ld [$01c3], sp
    cpl
    jp $2d01


    ld hl, sp+$27
    nop
    add a
    ld de, $c0c0
    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    db $10
    ld hl, sp-$78
    ld a, b
    ld c, b
    ld a, h
    ld e, h
    ld a, $3a
    ld l, $32
    ld b, e
    ld c, a
    ld b, c
    dec b
    ld b, [hl]

jr_055_7828:
    ld e, d
    ld a, $32
    inc c
    inc c
    ld a, e
    ld [bc], a
    add b
    add b
    nop
    ld [hl+], a
    ld b, b
    nop

jr_055_7835:
    nop
    inc h
    jr nz, @+$0b

    ldh a, [$f0]
    jr nc, jr_055_7835

    jr jr_055_78b7

    ld hl, sp-$08
    ldh a, [$f0]
    db $ec
    ld l, a
    rst $38
    ld [hl], d
    ld d, $08
    ld b, h
    ld c, h
    ld b, h
    ld c, l
    push bc
    call $fe87
    ld [hl], e
    ld a, [hl]
    db $dd
    sbc $8d
    adc [hl]
    dec bc
    ld a, [bc]
    dec de
    ld a, [de]
    ld de, $0011
    ld bc, $32ec
    ld d, $01
    rlca
    ld c, $1c
    jr nc, jr_055_78e0

    ld b, b
    ld hl, sp-$80
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $18
    ld h, b
    rst $28
    rra
    ld b, [hl]
    rst $38
    nop
    ld b, $80
    ld a, a
    ld b, b
    ccf
    jr nc, jr_055_7890

    ld c, $22
    inc bc
    nop
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld bc, $090e
    ld b, e
    rrca

jr_055_7890:
    ld [$060b], sp
    dec b
    inc bc
    ld [bc], a
    ld b, $0f
    ld c, $11
    rra
    db $10
    rrca
    rrca
    ld l, a
    ld b, $fc
    db $fc
    rst $38
    inc bc
    ld a, a
    nop
    ld a, a
    add l
    cp l
    nop
    inc b
    and l
    rst $08
    nop
    db $fd
    and d
    rst $08
    ld c, e
    rst $38
    nop
    dec c
    db $fd
    inc bc

jr_055_78b7:
    rst $38
    ld bc, $f807
    adc a
    ld [hl], b
    rst $38
    nop
    ld [hl], e
    adc h
    rlca
    ld hl, sp-$7a
    add l
    rlca
    add c
    ld a, [hl]
    rst $38
    add c
    add d
    inc bc
    ld [bc], a
    ld bc, $0090
    add hl, hl
    rlca
    add b
    add b
    ldh [$61], a
    ldh a, [rNR11]
    ld hl, sp+$09
    ld b, e
    db $fc
    inc b
    rlca
    cp $03

jr_055_78e0:
    ld hl, sp+$0f
    ei
    rrca
    cp $06
    ld b, e
    cp $02
    ld b, e
    db $fc
    inc b
    dec b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    and e
    or e
    add hl, bc
    add b
    add b
    pop bc
    ld b, c
    jp $ee42


    inc l
    rst $38
    jr nc, jr_055_7944

    rst $38
    jr nz, jr_055_7909

    rst $18
    ld a, b
    add a
    add a
    ld h, b

jr_055_7909:
    ldh [rSCX], a
    ldh a, [rNR10]
    ld bc, $e0e0
    or d
    nop
    ld c, e
    ld c, $80
    sub b
    sub b

jr_055_7917:
    ret nc

    ret nc

    ld d, d
    sbc $4c
    db $fc
    jr nc, jr_055_7917

    call z, Call_055_44cc
    call nz, $a043
    ldh [rSB], a
    ld b, b
    ld h, b
    ld l, e
    inc bc
    jr c, jr_055_7965

    call nz, $23c4
    ld [bc], a
    inc b
    add d
    ld [bc], a
    ld d, d
    ld [bc], a
    xor h
    add e
    push hl
    ld [bc], a
    jr nc, @-$3e

    ret nz

    ld l, c
    rlca
    rst $28
    ld [hl], b
    rst $38
    ccf
    rst $28

jr_055_7944:
    rra
    ei
    rlca
    add a
    nop
    ld a, b
    ld bc, $1eef
    xor b
    adc a
    add h
    add c
    inc de
    sub b
    sub b
    ld d, b
    jp nc, Jump_055_7662

    inc [hl]
    ld [hl], l
    db $dd
    db $fd
    dec bc
    ld e, $1f
    ld e, $37
    inc [hl]
    ld b, a
    ld h, h
    inc bc

jr_055_7965:
    ld [bc], a
    add e
    nop
    ld [$0087], a
    jr z, jr_055_7972

    db $e4
    ld h, h
    ld a, [c]
    ld d, $fa

jr_055_7972:
    dec bc
    ld b, e
    db $fd
    dec b
    inc b
    cp $03
    db $fd
    rrca
    ei
    adc l
    nop
    sbc e
    ld [de], a
    add h
    adc h
    adc h
    sub b
    ret c

    ld e, b
    ld e, b
    ld d, b
    ld [hl], b
    or b
    ld hl, sp+$4c
    sbc $c0
    ret nz

    ld b, b
    ldh a, [$30]
    jr c, @-$77

    nop
    ld h, b
    ld bc, $38df
    add l
    nop
    ld l, d
    add a
    nop
    or b
    ld bc, $0efd
    add l
    nop
    cp d
    rst $38
    ld [hl], l
    ld [hl+], a
    ld bc, $0202
    inc bc
    ld [bc], a
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld bc, $c801
    adc d
    ld [bc], a
    inc bc
    rlca
    nop
    ld b, h
    ld [$450b], sp
    rlca
    inc b
    ld [$080f], sp
    ld c, $11
    dec e
    ld d, $18
    jr jr_055_79ca

jr_055_79ca:
    ld [hl+], a
    stop
    nop
    inc hl
    jr nz, jr_055_79d8

    ld b, b
    ld h, b
    ld b, b
    ld [hl], c
    ld b, b
    ld l, d
    ld b, b

jr_055_79d8:
    ld [hl], l
    ld b, h
    ld b, b
    ld a, a
    ld b, e
    ccf
    jr nz, jr_055_79e3

jr_055_79e0:
    rra
    db $10
    rrca

jr_055_79e3:
    ld [$0b75], sp
    db $fc
    cp $c3
    dec a
    adc a
    ld [hl], b
    rra
    ldh [$3e], a
    pop bc
    ccf
    ret nz

    ld b, e
    ld a, a
    add b
    rrca
    rst $30
    adc b
    rst $28
    sub b
    ld l, a
    ld d, b
    ld e, a
    ld h, b
    rst $18
    ldh [rIE], a
    jr nc, @+$01

    inc c
    rst $38
    ld [bc], a
    ld b, e
    rst $38
    nop
    dec b
    rst $28
    ld e, $df
    pop hl
    rra
    nop
    ld b, e
    rrca
    nop
    inc c
    rra
    nop
    ccf
    nop
    ld [hl], a
    rrca
    ld a, a
    db $10
    rst $18
    jr nz, @+$01

    jr nz, jr_055_79e0

    ld b, l
    ld b, b
    rst $38
    ld b, e
    jr nz, @+$01

    inc b
    jr @+$01

    rlca
    rst $38
    nop
    sub a
    nop
    nop
    ld de, $ce84
    ldh [$30], a
    nop
    ret nz

    ret nz

    nop
    add b
    nop
    add c
    nop
    rst $00
    nop
    xor e
    nop
    rst $10
    nop
    ld c, h
    rst $38
    nop
    nop
    inc bc
    ld b, h

jr_055_7a49:
    rst $38
    nop
    rrca
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld [$05fe], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    ld a, a
    add d
    cp a
    ld b, h
    ld b, d
    rst $38
    dec c
    db $fd
    ld b, d
    ld a, e
    add h
    rst $38
    inc b
    rst $38
    ld [$34fb], sp
    push af
    jp z, $1ce3

    ld [hl], l
    ld a, [bc]
    ld hl, sp-$08
    ld a, $07
    rra
    nop
    dec de
    rlca
    ccf
    nop
    ld a, a
    adc l
    rst $10
    ld [de], a
    nop
    ld a, [$e007]
    jr jr_055_7a49

jr_055_7a84:
    ld h, b
    dec hl
    add c
    ld d, l
    inc bc
    xor a
    ld [bc], a
    ld d, e

jr_055_7a8c:
    ld b, $af
    inc b
    rst $18
    inc b
    add h
    db $db
    inc b
    jp nz, $36fb

    rst $38

jr_055_7a98:
    inc c
    ld d, c
    rst $38
    nop
    nop
    rst $38
    ld a, b
    ld c, $07
    rrca
    push af
    ld a, [c]
    adc c
    ld b, $00
    rrca
    ldh a, [rIF]
    db $e3
    rra
    rst $20
    rra
    rst $28
    ld b, e
    rra
    rst $38
    ld bc, $bf3f
    ld b, h
    ld a, a
    rst $38
    inc bc
    ld l, [hl]
    sbc [hl]
    cp $86
    ld b, l
    cp $02
    ld a, [bc]
    xor $12
    xor $0e
    db $e3
    inc bc
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    adc b
    rst $08
    inc bc
    rst $20
    jr @+$01

    rrca
    ld b, e
    ldh a, [rNR10]
    rlca
    ldh [rNR41], a
    ret nc

    jr nc, jr_055_7a8c

    ld d, b
    ld a, b
    adc b
    ld [hl], a
    add hl, bc
    ldh a, [$f0]
    add sp, $18

jr_055_7ae5:
    adc b
    ld a, b
    ld l, b
    ld hl, sp-$10
    ldh a, [rNR44]
    ldh [rNR44], a
    ret nz

    and e
    nop
    ld [hl+], a
    ld [hl], c
    add hl, bc
    ld b, b
    ld b, b
    jr nz, jr_055_7a98

    jr nc, jr_055_7b6a

    ret z

    jr z, jr_055_7ae5

    jr jr_055_7a84

    push de
    ld bc, $c0c0
    ld l, l
    rst $38
    db $ec
    inc hl
    ld bc, $0302
    inc hl
    ld bc, $0315
    inc bc
    inc b
    rlca
    db $10
    rra
    ld c, $0f
    rlca
    rlca
    ld a, [bc]
    rrca
    dec d
    rra
    ld a, [hl+]
    ccf
    dec e
    rra
    ld c, $0f
    dec c
    rrca
    inc hl
    rra
    dec b
    ccf
    ccf
    ld a, a
    ld a, a
    rra
    rra
    inc hl
    rrca
    ld [bc], a
    dec de
    dec de
    inc bc
    ld [hl+], a
    rlca
    inc b
    ld b, $07
    add hl, bc
    add hl, bc
    ld bc, $0324
    ld h, l
    ld [bc], a
    inc bc
    rlca
    nop
    ld [hl+], a
    ld [$0401], sp
    inc b
    add e
    adc a
    ld bc, $0705
    add e
    call $e061
    ld h, $16
    ld e, $0f
    rrca
    rlca
    rlca
    inc c
    rrca
    jr c, @+$41

    ldh [rIE], a
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    dec bc
    rst $38

jr_055_7b6a:
    rla
    rst $38
    dec bc
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ld a, a
    jr nc, @+$01

    nop
    xor a
    add h
    sbc e
    add hl, bc
    ld d, l
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, d
    ld a, a
    rra
    rra
    ld h, h
    rra
    add b
    ld b, b
    ld h, b
    db $10
    jr jr_055_7b94

    inc b
    jp nz, $1fe2

jr_055_7b94:
    add hl, de
    rlca
    add h
    jp $b9e2


    db $fd
    ld a, a
    ld a, a
    dec sp
    ccf
    push af
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec hl
    add l
    set 4, h
    ld l, $ff
    add l
    xor a

jr_055_7bb1:
    and l
    nop
    rra
    ld bc, $4040
    inc hl
    ld h, b
    ld [de], a
    jr nc, @+$72

    jr nc, @+$32

    sbc b
    cp b
    add sp, -$08
    call c, $ef3c
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ld a, a
    db $f4
    ld h, $c7
    nop
    ld a, [$00c4]
    cp e
    nop
    db $fd
    ld [hl-], a
    rst $38
    and e
    nop
    jp nz, $0418

    ld b, $08
    ld [$1010], sp
    nop
    ld hl, $2626
    ld [$5048], sp
    ld d, b
    ld [hl], b
    sub b
    ldh [$a0], a
    ld hl, sp+$38
    cp [hl]
    ld a, [hl]
    ld hl, sp+$78
    cp $a6
    sbc $03
    db $fd
    cp $ff
    db $fc
    add [hl]
    add e
    ld [bc], a
    cp $ff
    cp $ad
    di
    and a
    reti


    inc de
    ld e, a
    rst $38
    or b
    ld sp, hl
    ld h, b
    ldh [$c0], a
    ret nz

    jp nz, $81c2

    pop bc
    add c
    add b
    add e
    add b
    add a
    rst $08
    rst $08
    db $e3
    add l
    rst $18
    ld bc, $e0e0
    and e
    db $dd
    inc bc
    ld [$f008], sp
    ldh a, [$71]
    and e
    nop
    jr z, jr_055_7bb1

    add l
    ld e, $40
    ld h, b
    and b
    and b
    jr nz, jr_055_7c35

jr_055_7c35:
    sub b
    sub b
    stop
    xor b
    ret nc

    ld [$a858], sp
    ld hl, sp+$08
    ret c

    cp b
    db $fc
    sub h
    ld a, [$fef2]
    ld [c], a
    db $ed
    push af
    pop af
    ld sp, hl
    ld sp, hl
    pop af
    inc hl
    ld a, [$fc08]
    db $fc
    ldh a, [$f0]
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld hl, sp-$5c
    nop
    ld a, c
    ld bc, $c0c0
    add e
    add e
    ld h, c
    rst $38
    ld [hl], c
    rrca
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    rlca
    inc b
    dec bc
    ld [$080f], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    inc hl
    ld bc, $0703
    ld b, $0f
    ld [$8f83], sp
    ld b, $0b
    ld [$0407], sp
    dec b

jr_055_7c85:
    inc b
    inc bc
    adc $a0
    ld bc, $0303
    call nz, $0094
    add hl, bc
    rst $00
    and d
    dec bc
    inc bc
    ld [bc], a
    ld b, $04
    dec c
    ld [$080f], sp
    rra
    db $10
    rra
    ld de, $db8f
    add hl, bc
    ld [hl], d
    ld [hl], d
    sbc e
    adc d
    rst $38
    ld b, $ff
    ld bc, $01fe
    ld b, [hl]
    rst $38
    nop
    ld [$fe01], sp
    inc bc
    cp h
    rst $00
    db $fc
    ld b, $f8
    ld c, $43
    ld hl, sp+$0c
    dec c
    ldh a, [rNR32]
    ldh a, [rNR33]
    ldh a, [rNR34]
    sub b
    ld a, a
    ld hl, sp-$31
    jr c, jr_055_7cf8

    jr jr_055_7cea

    ld b, e
    inc b
    rlca
    inc b
    ld c, $0f
    ld [hl-], a
    ccf
    jp nz, $ff44

    ld bc, $0314
    rst $38
    rrca
    rst $38
    add hl, sp
    ld sp, hl
    jp $86c3


    add [hl]
    ld e, b
    jr jr_055_7c85

    jr nz, @+$52

    ld b, b
    xor d
    add b

jr_055_7cea:
    push de
    add b
    xor d
    ld l, h
    dec b
    ldh a, [$f0]
    ld e, b
    ld [$04fc], sp
    ld b, l
    cp $02

jr_055_7cf8:
    inc b
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$a7], a
    db $e4

Jump_055_7d00:
    ld b, $1f
    nop
    cpl
    nop
    ld e, a
    nop
    xor a
    add [hl]
    add e
    ld bc, $00bf
    ld d, h
    rst $38
    nop
    dec d
    add b
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    push de
    rst $38
    dec sp
    ccf
    ld b, $06
    ld [$5d08], sp
    ld [$10ba], sp
    ld d, l
    db $10
    cp d
    db $10
    ld l, e
    rlca
    rlca
    rlca
    ld a, [bc]
    ld [$1017], sp
    rra
    db $10
    ld b, e
    ccf
    jr nz, @+$04

    rst $38
    ldh [$3f], a
    and e
    rst $18
    add sp, $2a
    rst $38
    nop
    add hl, bc
    ld [$56ff], sp
    rst $38
    xor e
    rst $38
    ld a, a
    cp $81
    add c
    add h
    nop
    ld l, d
    ld bc, $aa00
    and d
    add c
    nop
    xor d
    xor [hl]
    nop
    ld h, c
    and e
    nop
    ld h, $09
    rst $30
    rla
    xor $28
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld b, b
    and a
    nop
    ld a, h
    dec b
    ld a, a
    ret nz

    ccf
    db $e3
    ccf
    ldh [rWY], a
    rra
    ldh a, [$08]
    ld hl, sp+$3f
    rst $20
    ld a, $e2
    inc [hl]
    db $e4
    jr c, @-$06

    ld b, e
    ld b, b
    ret nz

    inc b
    ret nz

    ret nz

    jr nc, @-$0e

    rrca
    ld b, l
    rst $38
    nop
    ld [de], a
    cp $80
    db $fc
    ldh a, [$7f]
    rst $28
    adc a
    ld [hl], l
    ld h, c
    ld a, [hl+]
    jr nz, jr_055_7de9

    db $10
    cp e
    db $10
    ld e, a
    ld [$08af], sp
    ld [hl], e
    ld [bc], a
    add b
    add b
    ret nz

    xor b
    nop
    dec d
    and h
    nop
    inc e
    nop
    ret nz

    and e
    nop
    ld b, d
    ld bc, $20e0
    or a
    nop
    inc l
    add $8a
    inc b
    ldh [rNR41], a
    ld h, b
    jr nz, @-$1e

    push bc
    cp b
    and l
    nop
    ld d, b
    ld b, e
    ret nz

    ld b, b
    rst $38
    db $ec
    ld hl, $0709
    rlca
    dec bc
    ld [$0f08], sp
    rlca
    inc b
    inc bc
    inc bc
    db $ec
    ld h, c
    inc de
    ld a, $3e
    rst $00
    pop de
    bit 2, h
    rst $38
    ld e, l
    ld h, e
    cp a
    db $ed
    rst $18
    ld [hl], a
    ld [hl], a
    ld c, l
    ld c, l
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    db $ec
    ld c, e
    add hl, hl

jr_055_7de9:
    ld bc, $0000
    call nz, $108a
    ld a, b
    ld a, b
    add [hl]
    adc [hl]
    ld bc, $0e87
    adc a
    add c
    adc a
    adc h
    adc a
    rst $38
    rst $38
    rlca
    rlca
    nop
    call nz, $0796
    ld [bc], a
    inc bc
    ld bc, $0403
    rlca
    inc bc
    rlca
    ld [hl+], a
    rrca
    inc b
    ld c, $0f
    inc c
    dec c
    dec c
    ld [hl+], a
    dec b
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld hl, sp+$27
    cp d
    add hl, de
    ld bc, $3f01
    ld a, $47
    ld a, h
    add e
    db $fc
    add c
    cp $03
    cp [hl]
    ld [bc], a
    cp a
    rlca
    db $ed
    rrca
    ld sp, hl
    adc a
    ld a, b
    sbc a
    ld a, h
    sub e
    ld a, d
    sbc a
    ld a, [c]
    ld b, e
    sub c
    ldh a, [$0a]
    ld c, c
    ld a, d
    and $fd
    ld a, e
    sbc a
    rst $30
    rst $28
    ld hl, sp-$01
    ccf
    inc h
    rst $38
    ldh [$2f], a
    db $e3
    rst $38
    ld b, h
    db $fd
    push bc
    db $fd
    ld b, [hl]
    db $fd
    ret


    ei
    adc d
    ei
    add c
    add e
    xor d
    db $fc
    rst $10
    rst $38
    xor a
    rst $38
    ld e, [hl]
    cp $ae
    cp $1f
    rlca
    ldh [$f0], a
    ld a, a
    ld c, a
    ld b, l
    ld b, d
    inc b
    ld b, d
    daa
    ld hl, $2123
    ld bc, $133f
    ld de, $1f10
    rla
    jr jr_055_7e84

    ld [$0f23], sp
    rlca
    rra
    rra
    inc sp
    ccf
    ld a, h
    ld a, a
    ld h, l

jr_055_7e84:
    ld e, a
    jp $8f00


    rlca
    ld h, b
    ldh [$98], a
    ld a, b
    add $3e
    pop bc
    ccf
    ld b, e
    add b
    ld a, a
    inc e
    nop
    rst $38
    nop
    rst $38
    ld b, b
    push af
    ld b, b
    rst $38
    ldh [$bf], a
    ldh a, [$1f]
    cp c
    ld e, a
    jp hl


    ld l, a
    add sp, $2f
    db $fc
    rlca
    call c, $3c2f
    rst $38
    adc $ff
    ld b, $ff
    rst $28
    add [hl]
    rst $28
    inc b
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    ld [hl+], a
    cp $83
    add e
    ld [$fffe], sp
    rra
    ld bc, $ffff
    ccf
    ccf
    cp a
    ld b, e
    sbc a
    rst $38
    ldh [rNR52], a
    ccf
    rst $38
    ld bc, $fefe
    ld c, h
    ld d, $28
    ld d, $16
    ld a, [bc]
    ld h, $0a
    ld [de], a
    ld c, $0a
    ld a, [c]
    ld d, $82

jr_055_7ee0:
    add e
    db $fd
    add a
    adc c
    rst $30
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld d, c
    rst $38
    xor $ff
    cp $df
    ld sp, $1e2f
    ld e, $a9
    ld bc, $434a
    ld b, b
    ret nz

    ld bc, $6020
    ld b, e
    jr nz, jr_055_7ee0

    ld b, l
    db $10
    ldh a, [rNR11]
    ld [$88f8], sp
    ld hl, sp-$7c
    db $fc
    add d
    cp $44
    db $fc
    ld c, b
    ld hl, sp+$28
    ld hl, sp+$50
    ret nc

    add b
    add b
    db $ec
    dec sp
    inc bc
    add b
    add b
    add b
    add b
    db $ec
    ld [hl], e
    rst $38
    db $ec
    ld b, l
    inc bc
    ld bc, $0301
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld b, e
    dec bc
    inc c
    dec c
    rla
    jr @+$11

    jr @+$39

    jr c, jr_055_7f64

    jr c, @+$39

    inc a
    ld a, e
    ld e, h
    ld a, a
    ld e, h
    db $ec
    ld a, [hl-]
    ld a, [de]
    ld bc, $0602
    ld [$0018], sp
    jr nz, jr_055_7f47

jr_055_7f47:
    ld b, c
    pop bc
    add e
    add d
    rlca
    ld b, l
    rrca
    adc d
    rra
    ld d, l
    rra
    sbc [hl]
    ccf

jr_055_7f54:
    rst $38
    ld a, $ff
    inc a
    cp a
    ld a, h
    ld b, h
    rst $38
    ld a, b
    inc b
    ld [hl], b
    cp a
    ld [hl], b
    rst $38
    jr nz, jr_055_7f54

jr_055_7f64:
    ld [hl], $da
    ldh [$28], a
    rlca
    jr jr_055_7fe3

    add h
    add e
    ld de, $4a0f

Jump_055_7f70:
    ccf
    ld d, l
    rst $38
    xor d
    db $fc
    ld d, l
    ldh a, [$ab]
    ldh [$57], a
    ret nz

    cp a
    add b
    ld a, a
    nop
    db $fd
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $fb
    ld a, h
    rst $28
    ld [hl], b
    cp a
    ret nz

    db $ec
    dec [hl]
    ldh [$29], a
    ldh a, [$f8]
    add [hl]
    ld a, a
    jr z, @+$01

    ld d, l
    ld hl, sp-$55
    ret nz

    ld d, a
    nop
    cp a
    nop
    ld a, a
    nop
    db $fd
    rlca
    ld [$d51f], a
    ld a, a
    xor d
    rst $38
    ld e, l
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    ld a, a
    add b
    db $fd
    inc bc
    ei
    rlca
    rst $28
    rra
    rst $18
    ccf
    db $ec
    add hl, sp
    ld de, $e0c0
    ldh a, [rNR23]
    db $fc
    ld b, $ff
    ld bc, $1ff4
    xor e
    cp $57
    ld hl, sp-$51
    ldh a, [$7f]
    ret nz

    ld b, e
    rst $38
    nop
    rrca
    db $fc
    inc bc
    rst $30
    rrca
    rst $18
    ccf
    ld a, a
    rst $38
    db $fd
    cp $f7

jr_055_7fe3:
    ld hl, sp-$21
    ldh [$7f], a
    add b
    db $ec
    ld b, c
    and l
    nop
    ld b, [hl]
    ld b, e
    ldh a, [rNR10]
    ld a, [bc]
    ret z

    jr c, @+$3a

    ld hl, sp-$18
    db $f4
    call c, $bce4
    call nz, Call_055_48fc
    ld [bc], a
    cp $ff
