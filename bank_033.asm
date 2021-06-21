; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    call $31f3
    call $0fc8
    call $300b
    call $0e58
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ld hl, $c4a0
    ld b, $04
    ld c, $0d
    call $0fe8
    ld hl, $c518
    ld b, $04
    ld c, $0d
    call $0fe8
    ld hl, $c4a2
    ld de, $40ae
    call $1078
    ld hl, $c51a
    ld de, $40b8
    call $1078
    ld hl, $c4f5
    ld de, $40a7
    call $1078
    ld hl, $c56d

Call_033_4045:
    ld de, $40a7
    call $1078
    ld a, [$df9c]
    ld [$d265], a
    call $343b
    ld de, $d073
    ld hl, $c4c9
    call $1078
    ld h, b
    ld l, c
    ld a, [$dfbb]
    ld [$d12d], a
    call $382d
    ld de, $c616
    ld hl, $c541
    call $1078
    ld h, b
    ld l, c
    ld a, [$d213]
    ld [$d12d], a
    call $382d
    ld hl, $c4fb
    ld de, $dfc0
    ld bc, $0203
    call $3198
    ld hl, $c573
    ld de, $d218
    call $3198
    ld hl, $40c2
    call $1057
    pop af
    ld [$cfcc], a
    call $31f6
    ld b, $08
    call $3340
    call $32f9
    ret


    add a
    add h
    add b
    adc e
    sub e
    add a
    ld d, b
    ld a, a
    sub d
    sub e
    adc [hl]
    add d
    adc d
    ld a, a
    ld c, d
    ld a, a
    ld d, b
    ld a, a
    sub e
    add a
    adc b
    sub d
    ld a, a
    ld c, d
    ld a, a
    ld a, a
    ld d, b
    ld d, $cf
    ld d, b
    ld [hl], b
    ld d, b
    call $343b
    ld hl, $40d0
    jp $1057


    ld d, $dd
    ld d, b
    ld [hl], b
    ld d, b
    ret


    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_033_40e4
    pop af
    ldh [rSVBK], a
    ret


Call_033_40e4:
    ld c, $06

jr_033_40e6:
    call Call_033_41fb
    dec c
    jr nz, jr_033_40e6

    call Call_033_48a4
    call Call_033_41e2
    call Call_033_41fb
    ld c, $01
    ldh a, [rKEY1]
    bit 7, a
    jr nz, jr_033_40ff

    ld c, $03

jr_033_40ff:
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], c
    call Call_033_411c
    pop af
    ldh [$9e], a
    ld a, $01
    ldh [$d4], a
    call Call_033_41fb
    call Call_033_41fb
    call Call_033_41fb
    call $3c55
    ret


Call_033_411c:
    ld a, [$cfc3]
    and a
    jr nz, jr_033_4156

    ld a, $13
    ld hl, $6a44
    rst $08
    jr c, jr_033_4141

    call Call_033_41a1
    call Call_033_4163
    call Call_033_48a4
    call Call_033_41e2
    xor a
    ldh [$cf], a
    ldh [$d0], a
    call Call_033_41fb
    call Call_033_41bb

jr_033_4141:
    ld a, [$cfca]
    and a
    jr z, jr_033_415f

    ld l, a
    ld h, $00
    ld de, $010e
    add hl, de
    ld a, l
    ld [$cfc2], a
    ld a, h
    ld [$cfc3], a

jr_033_4156:
    call $3c55
    call Call_033_4881
    call Call_033_4163

jr_033_415f:
    call Call_033_48f6
    ret


Call_033_4163:
    call Call_033_48d3

jr_033_4166:
    call Call_033_425f
    call Call_033_4b48
    call Call_033_496e
    call $3b0c
    call Call_033_41e2
    ld a, [$cfc3]
    or a
    jr nz, jr_033_4193

    ld a, [$cfc2]
    cp $cd
    jr nz, jr_033_4193

    ld a, $2e
    ld b, $05
    ld de, $0004
    ld hl, $d3fa

jr_033_418c:
    cp [hl]
    jr z, jr_033_4196

    add hl, de
    dec b
    jr nz, jr_033_418c

jr_033_4193:
    call Call_033_41fb

jr_033_4196:
    ld a, [$d40f]
    bit 0, a
    jr z, jr_033_4166

    call Call_033_423d
    ret


Call_033_41a1:
    call Call_033_41fb
    call $163a
    call Call_033_4207
    ld a, $01
    ldh [$d4], a
    call Call_033_41fb
    call Call_033_41fb
    call Call_033_41fb
    call $163a
    ret


Call_033_41bb:
    call Call_033_41fb
    call $163a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, $39d4
    ld a, $0f
    rst $08
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$d4], a
    call Call_033_41fb
    call Call_033_41fb
    call Call_033_41fb
    call $163a
    ret


Call_033_41e2:
    ldh a, [$e6]
    and a
    ret z

    ldh a, [rBGP]
    ld b, a
    ld a, [$cfc7]
    cp b
    call nz, Call_033_491a
    ldh a, [rOBP0]
    ld b, a
    ld a, [$cfc8]
    cp b
    call nz, Call_033_494b
    ret


Call_033_41fb:
    ld a, $01
    ld [$cfb3], a

jr_033_4200:
    ld a, [$cfb3]
    and a
    jr nz, jr_033_4200

    ret


Call_033_4207:
    ldh a, [$e4]
    and a
    jr z, jr_033_4216

    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    ret


jr_033_4216:
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ret


    xor a
    ldh [$d4], a
    ld a, $80
    ldh [$d6], a
    ld a, $9a
    ldh [$d7], a
    call $3200
    ld a, $60
    ldh [$d2], a
    xor a
    ldh [$d6], a
    ld a, $98
    ldh [$d7], a
    call Call_033_41fb
    ret


Call_033_423d:
    ld a, [$d40f]
    bit 3, a
    jr z, jr_033_4254

    ld hl, $c403
    ld c, $28

jr_033_4249:
    ld a, [hl]
    and $f0
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_033_4249

    ret


jr_033_4254:
    ld hl, $c400
    ld c, $a0
    xor a

jr_033_425a:
    ld [hl+], a
    dec c
    jr nz, jr_033_425a

    ret


Call_033_425f:
    call Call_033_4267
    ret nc

    call Call_033_4275
    ret


Call_033_4267:
    ld a, [$d412]
    and a
    jr z, jr_033_4273

    dec a
    ld [$d412], a
    and a
    ret


jr_033_4273:
    scf
    ret


Call_033_4275:
jr_033_4275:
    call $3af0
    cp $ff
    jr nz, jr_033_4286

    ld hl, $d40f
    bit 1, [hl]
    jr nz, jr_033_428e

    set 0, [hl]
    ret


jr_033_4286:
    cp $d0
    jr nc, jr_033_428e

    ld [$d412], a
    ret


jr_033_428e:
    call Call_033_4293
    jr jr_033_4275

Call_033_4293:
    ld a, [$d417]
    sub $d0
    ld e, a
    ld d, $00
    ld hl, $42a4
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rra
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    ret nz

    ld b, h
    ld b, $45
    db $e3
    ld b, h
    inc l
    ld b, l
    ld a, [hl]
    ld b, l
    ret nc

    ld b, l
    call c, Call_033_4045
    ld b, [hl]
    ld d, b
    ld b, a
    ld l, h
    ld b, h
    call $0747
    ld c, b
    rst $08
    ld b, [hl]
    cp e
    ld b, a
    cp a
    ld b, a
    ld a, c
    ld b, h
    db $76
    ld b, a
    db $db
    ld b, l
    ld [hl+], a
    ld b, [hl]
    dec [hl]
    ld b, a
    inc b
    ld b, e
    inc b
    ld b, e
    inc b
    ld b, e
    inc b
    ld b, e
    ld a, [$8343]
    ld b, e
    dec sp
    ld b, h
    ld d, a
    ld b, h
    ld e, [hl]
    ld b, h
    ld h, l
    ld b, h
    call nz, $ca47
    ld b, a
    bit 0, a
    call z, $d647
    ld b, e
    and [hl]
    ld b, e
    xor l
    ld b, e
    or d
    ld b, e
    add hl, sp
    ld b, e
    ld c, b
    ld b, e
    rla
    ld b, e
    dec b
    ld b, e
    ret


    ld hl, $d40f
    res 1, [hl]
    ld hl, $d413
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    call $3af0
    ld e, a
    call $3af0
    ld d, a
    push de
    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $d413
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $d40f
    set 1, [hl]
    ret


    call $3af0
    ld e, a
    call $3af0
    ld d, a
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    call $3af0
    ld hl, $d40f
    bit 2, [hl]
    jr nz, jr_033_435b

    and a
    jr z, jr_033_4363

    dec a
    set 2, [hl]
    ld [$d415], a

jr_033_435b:
    ld hl, $d415
    ld a, [hl]
    and a
    jr z, jr_033_4372

    dec [hl]

jr_033_4363:
    call $3af0
    ld e, a
    call $3af0
    ld d, a
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_033_4372:
    ld hl, $d40f
    res 2, [hl]
    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


    ld hl, $c689
    ld a, [hl]
    and a
    jr z, jr_033_439a

    dec [hl]
    call $3af0
    ld e, a
    call $3af0
    ld d, a
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_033_439a:
    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


    call $3af0
    ld [$d416], a
    ret


    ld hl, $d416
    inc [hl]
    ret


    call $3af0
    ld hl, $d416
    cp [hl]
    jr z, jr_033_43c7

    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


jr_033_43c7:
    call $3af0
    ld e, a
    call $3af0
    ld d, a
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    call $3af0
    ld hl, $c689
    cp [hl]
    jr z, jr_033_43eb

    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


jr_033_43eb:
    call $3af0
    ld e, a
    call $3af0
    ld d, a
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    call $3af0
    ld e, a
    ld a, [$c689]
    and e
    jr nz, jr_033_4410

    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


jr_033_4410:
    call $3af0
    ld e, a
    call $3af0
    ld d, a
    ld hl, $d410
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    call $3af0
    ld [$d419], a
    call $3af0
    ld [$d41a], a
    call $3af0
    ld [$d41b], a
    call $3af0
    ld [$d41c], a
    call Call_033_49a1
    ret


    call $3af0
    ld [$d419], a
    call $3af0
    ld [$d41a], a
    call $3af0
    ld [$d41b], a
    call $3af0
    ld [$d41c], a
    call Call_033_4b4f
    ret


    call $3af0
    ld [$cfc7], a
    ret


    call $3af0
    ld [$cfc8], a
    ret


    call $3af0
    ld [$cfc9], a
    ret


    ldh a, [$e7]
    and a
    ld a, $e0
    jr z, jr_033_4475

    ld a, $f0

jr_033_4475:
    ld [$cfc8], a
    ret


    ld hl, $d30a
    ld a, $a0

jr_033_447e:
    ld [hl], $00
    inc hl
    dec a
    jr nz, jr_033_447e

    ret


    ld a, [$d417]
    and $0f
    ld c, a
    ld hl, $d300
    xor a
    ld [$d419], a

jr_033_4492:
    ld a, [$d419]
    cp $4f
    ret nc

    call $3af0
    ld [hl+], a
    ld a, [$d419]
    ld [hl+], a
    push bc
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8310
    add hl, de
    ld a, [$d417]
    call Call_033_6846
    ld a, [$d419]
    add c
    ld [$d419], a
    pop hl
    pop bc
    dec c
    jr nz, jr_033_4492

    ret


    call $3af0
    ld e, $0a
    ld bc, $d30a

jr_033_44c8:
    ld hl, $0000
    add hl, bc
    ld d, [hl]
    ld a, [$d417]
    cp d
    jr z, jr_033_44dd

    ld hl, $0018
    add hl, bc
    ld c, l
    ld b, h
    dec e
    jr nz, jr_033_44c8

    ret


jr_033_44dd:
    ld hl, $000e
    add hl, bc
    inc [hl]
    ret


    call $3af0
    ld e, $05
    ld bc, $d3fa

jr_033_44eb:
    ld hl, $0000
    add hl, bc
    ld d, [hl]
    ld a, [$d417]
    cp d
    jr z, jr_033_4500

    ld hl, $0004
    add hl, bc
    ld c, l
    ld b, h
    dec e
    jr nz, jr_033_44eb

    ret


jr_033_4500:
    ld hl, $0001
    add hl, bc
    inc [hl]
    ret


    call $3af0
    ld e, $0a
    ld bc, $d30a

jr_033_450e:
    ld hl, $0000
    add hl, bc
    ld d, [hl]
    ld a, [$d417]
    cp d
    jr z, jr_033_4523

    ld hl, $0018
    add hl, bc
    ld c, l
    ld b, h
    dec e
    jr nz, jr_033_450e

    ret


jr_033_4523:
    call $3af0
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ret


    ld hl, $d300

jr_033_452f:
    ld a, [hl]
    and a
    jr z, jr_033_4537

    inc hl
    inc hl
    jr jr_033_452f

jr_033_4537:
    ld a, $28
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    ld a, $49
    ld [hl], a
    ld hl, $8730
    ld de, $9060
    ld a, $70
    ld [$d419], a
    ld a, $07
    call Call_033_4561
    ld de, $9310
    ld a, $60
    ld [$d419], a
    ld a, $06
    call Call_033_4561
    ret


Call_033_4561:
jr_033_4561:
    push af
    push hl
    push de
    ld bc, $3301
    call $0eba
    pop de
    ld a, [$d419]
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld bc, $0010
    add hl, bc
    pop af
    dec a
    jr nz, jr_033_4561

    ret


    ld hl, $d300

jr_033_4581:
    ld a, [hl]
    and a
    jr z, jr_033_4589

    inc hl
    inc hl
    jr jr_033_4581

jr_033_4589:
    ld a, $28
    ld [hl+], a
    ld a, $35
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    ld a, $43
    ld [hl], a
    ld hl, $8660
    ld de, $9050
    ld a, $70
    ld [$d419], a
    ld a, $07
    call Call_033_45b3
    ld de, $9310
    ld a, $60
    ld [$d419], a
    ld a, $06
    call Call_033_45b3
    ret


Call_033_45b3:
jr_033_45b3:
    push af
    push hl
    push de
    ld bc, $3302
    call $0eba
    pop de
    ld a, [$d419]
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld bc, $0020
    add hl, bc
    pop af
    dec a
    jr nz, jr_033_45b3

    ret


    ld hl, $7971
    ld a, $03
    rst $08
    ld a, c
    ld [$d416], a
    ret


    ret


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d108]
    push af
    ldh a, [$e4]
    and a
    jr z, jr_033_4604

    ld a, [$d205]
    ld [$d108], a
    ld hl, $c632
    ld a, $2d
    call $2d83
    ld de, $8000
    ld a, $3c
    call $2d83
    jr jr_033_461a

jr_033_4604:
    ld a, [$d204]
    ld [$d108], a
    ld hl, $d20c
    ld a, $2d
    call $2d83
    ld de, $8000
    ld a, $3d
    call $2d83

jr_033_461a:
    pop af
    ld [$d108], a
    pop af
    ldh [rSVBK], a
    ret


    ld de, $8000
    ldh a, [$e4]
    and a
    jr z, jr_033_4635

    ld hl, $9000
    ld b, $00
    ld c, $31
    call $0eba
    ret


jr_033_4635:
    ld hl, $9310
    ld b, $00
    ld c, $24
    call $0eba
    ret


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    xor a
    call $2fcb
    ld hl, $a000
    ld bc, $0310

jr_033_4651:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_033_4651

    ldh a, [$e4]
    and a
    jr z, jr_033_468f

    ld hl, $6a80
    ld de, $a130
    call Call_033_46c6
    ld hl, $6a90
    ld de, $a1a0
    call Call_033_46c6
    ld hl, $6aa0
    ld de, $a140
    call Call_033_46c6
    ld hl, $6ab0
    ld de, $a1b0
    call Call_033_46c6
    ld hl, $9000
    ld de, $a000
    ld bc, $3331
    call $0eba
    jr jr_033_46bf

jr_033_468f:
    ld hl, $6ac0
    ld de, $a100
    call Call_033_46c6
    ld hl, $6ad0
    ld de, $a160
    call Call_033_46c6
    ld hl, $6ae0
    ld de, $a110
    call Call_033_46c6
    ld hl, $6af0
    ld de, $a170
    call Call_033_46c6
    ld hl, $9310
    ld de, $a000
    ld bc, $3324
    call $0eba

jr_033_46bf:
    call $2fe1
    pop af
    ldh [rSVBK], a
    ret


Call_033_46c6:
    ld bc, $0010
    ld a, $31
    call $0e8d
    ret


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    xor a
    call $2fcb
    call Call_033_46e7
    call $0eba
    call $2fe1
    pop af
    ldh [rSVBK], a
    ret


Call_033_46e7:
    ld hl, $a000
    ld bc, $0310

jr_033_46ed:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_033_46ed

    ldh a, [$e4]
    and a
    jr z, jr_033_4709

    ld de, $a1a0
    call Call_033_4719
    ld hl, $9000
    ld de, $a000
    ld bc, $3331
    ret


jr_033_4709:
    ld de, $a160
    call Call_033_4719
    ld hl, $9310
    ld de, $a000
    ld bc, $3324
    ret


Call_033_4719:
    ld hl, $4725
    ld bc, $0010
    ld a, $33
    call $0e8d
    ret


    nop
    nop
    nop
    nop
    jr jr_033_4743

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    inc h
    inc h
    nop
    nop
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    xor a
    call $2fcb
    call Call_033_46e7

jr_033_4743:
    ld hl, $8000
    call $0eba
    call $2fe1
    pop af
    ldh [rSVBK], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d108]
    push af
    ldh a, [$e4]
    and a
    jr z, jr_033_4768

    ld hl, $7486
    ld a, $0f
    rst $08
    jr jr_033_476e

jr_033_4768:
    ld hl, $7447
    ld a, $0f
    rst $08

jr_033_476e:
    pop af
    ld [$d108], a
    pop af
    ldh [rSVBK], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d108]
    push af
    ld a, [$c689]
    ld [$d108], a
    ldh a, [$e4]
    and a
    jr z, jr_033_479e

    ld hl, $c632
    ld a, $2d
    call $2d83
    ld de, $9000
    ld a, $3c
    call $2d83
    jr jr_033_47ae

jr_033_479e:
    ld hl, $d20c
    ld a, $2d
    call $2d83
    ld de, $9310
    ld a, $3d
    call $2d83

jr_033_47ae:
    pop af
    ld [$d108], a
    ld b, $01
    call $3340
    pop af
    ldh [rSVBK], a
    ret


    xor a
    ldh [$d8], a
    ret


    ld a, $01
    ldh [$d8], a
    ret


    ld hl, $d40f
    set 3, [hl]
    ret


    ret


    ret


    ret


    call $3af0
    ld e, a
    srl a
    srl a
    ld [$c2be], a
    call Call_033_47fc
    and $03
    ld [$c2bd], a
    ld e, a
    ld d, $00
    ld hl, $47f8
    add hl, de
    ld a, [hl]
    ld [$c2bc], a
    call $3af0
    ld e, a
    ld d, $00
    ld hl, $4ca6
    ld a, $3a
    rst $08
    ret


    ldh a, [rIF]
    ldh a, [rIF]

Call_033_47fc:
    ldh a, [$e4]
    and a
    jr nz, jr_033_4803

    ld a, e
    ret


jr_033_4803:
    ld a, e
    xor $01
    ret


    call $3af0
    and $03
    ld e, a
    ld d, $00
    ld hl, $4871
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ldh a, [$e4]
    and a
    jr nz, jr_033_482c

    ld a, $f0
    ld [$c2bd], a
    ld a, [$c62c]
    jr jr_033_4834

jr_033_482c:
    ld a, $0f
    ld [$c2bd], a
    ld a, [$d206]

jr_033_4834:
    push hl
    call $37f3
    pop hl
    jr c, jr_033_486d

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $c2b0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld [$c2b0], a
    ld a, h
    ld [$c2b1], a
    pop hl
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $c2b2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld [$c2b2], a
    ld a, h
    ld [$c2b3], a
    ld a, $01
    ld [$c2bc], a
    ld hl, $4b79
    ld a, $3a
    rst $08

jr_033_486d:
    pop af
    ldh [rSVBK], a
    ret


    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_033_4881:
    ld a, [$cfca]
    cp $01
    jr z, jr_033_488b

    cp $04
    ret nz

jr_033_488b:
    ld a, [$c665]
    and $7f
    ret z

    cp $0a
    ld de, $00ac
    jr z, jr_033_48a0

    ld de, $00ad
    jr nc, jr_033_48a0

    ld de, $00ab

jr_033_48a0:
    call $3c23
    ret


Call_033_48a4:
    ldh a, [$e6]
    and a
    jr nz, jr_033_48be

    ldh a, [$e7]
    and a
    ld a, $e0
    jr z, jr_033_48b2

    ld a, $f0

jr_033_48b2:
    ld [$cfc8], a
    ld a, $e4
    ld [$cfc7], a
    ld [$cfc9], a
    ret


jr_033_48be:
    ld a, $e4
    ld [$cfc7], a
    ld [$cfc8], a
    ld [$cfc9], a
    call $0c9f
    ld de, $e4e4
    call $0ccb
    ret


Call_033_48d3:
    ld hl, $d100
    ld bc, $0354

jr_033_48d9:
    ld [hl], $00
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_033_48d9

    ld hl, $cfc2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $506f
    add hl, de
    add hl, de
    call $3ae1
    call Call_033_48a4
    call Call_033_41fb
    ret


Call_033_48f6:
    call $163a
    ld a, $e4
    ld [$cfc7], a
    ld [$cfc8], a
    ld [$cfc9], a
    call $0c9f
    ld de, $e4e4
    call $0ccb
    xor a
    ldh [$cf], a
    ldh [$d0], a
    call Call_033_41fb
    ld a, $01
    ldh [$d4], a
    ret


Call_033_491a:
    ldh [rBGP], a
    ldh a, [$e6]
    and a
    ret z

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld de, $d000
    ldh a, [rBGP]
    ld b, a
    ld c, $07
    call $0d50
    ld hl, $d0c0
    ld de, $d040
    ldh a, [rBGP]
    ld b, a
    ld c, $02
    call $0d50
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_033_494b:
    ldh [rOBP0], a
    ldh a, [$e6]
    and a
    ret z

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d0d0
    ld de, $d050
    ldh a, [rOBP0]
    ld b, a
    ld c, $02
    call $0d50
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_033_496e:
    ld a, $00
    ld [$d418], a
    ld hl, $d30a
    ld e, $0a

jr_033_4978:
    ld a, [hl]
    and a
    jr z, jr_033_498a

    ld c, l
    ld b, h
    push hl
    push de
    call $4fbe
    call Call_033_4a09
    pop de
    pop hl
    jr c, jr_033_49a0

jr_033_498a:
    ld bc, $0018
    add hl, bc
    dec e
    jr nz, jr_033_4978

    ld a, [$d418]
    ld l, a
    ld h, $c4

jr_033_4997:
    ld a, l
    cp $a0
    jr nc, jr_033_49a0

    xor a
    ld [hl+], a
    jr jr_033_4997

jr_033_49a0:
    ret


Call_033_49a1:
    ld hl, $d30a
    ld e, $0a

jr_033_49a6:
    ld a, [hl]
    and a
    jr z, jr_033_49b3

    ld bc, $0018
    add hl, bc
    dec e
    jr nz, jr_033_49a6

    scf
    ret


jr_033_49b3:
    ld c, l
    ld b, h
    ld hl, $d40e
    inc [hl]
    call Call_033_49c4
    ret


Call_033_49bd:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


Call_033_49c4:
    ld a, [$d419]
    ld e, a
    ld d, $00
    ld hl, $4b56
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0000
    add hl, bc
    ld a, [$d40e]
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    call Call_033_4b31
    ld [hl+], a
    ld a, [$d41a]
    ld [hl+], a
    ld a, [$d41b]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [$d41c]
    ld [hl+], a
    xor a
    ld [hl+], a
    dec a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_033_4a09:
    call Call_033_4aaa
    call Call_033_67d1
    cp $fd
    jp z, Jump_033_4aa5

    cp $fc
    jp z, Jump_033_4aa2

    push af
    ld hl, $d419
    ld a, [$d420]
    xor [hl]
    and $e0
    ld [hl], a
    pop af
    push bc
    call Call_033_683c
    ld a, [$d41b]
    add [hl]
    ld [$d41b], a
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d418]
    ld e, a
    ld d, $c4

jr_033_4a3c:
    ld a, [$d41d]
    ld b, a
    ld a, [$d41f]
    add b
    ld b, a
    push hl
    ld a, [hl]
    ld hl, $d419
    bit 6, [hl]
    jr z, jr_033_4a53

    add $08
    xor $ff
    inc a

jr_033_4a53:
    pop hl
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [$d41c]
    ld b, a
    ld a, [$d41e]
    add b
    ld b, a
    push hl
    ld a, [hl]
    ld hl, $d419
    bit 5, [hl]
    jr z, jr_033_4a6f

    add $08
    xor $ff
    inc a

jr_033_4a6f:
    pop hl
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [$d41b]
    add $31
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$d419]
    ld b, a
    ld a, [hl]
    xor b
    and $e0
    ld b, a
    ld a, [hl]
    and $10
    or b
    ld b, a
    ld a, [$d421]
    and $0f
    or b
    ld [de], a
    inc hl
    inc de
    ld a, e
    ld [$d418], a
    cp $a0
    jr nc, jr_033_4aa7

    dec c
    jr nz, jr_033_4a3c

    pop bc
    jr jr_033_4aa5

Jump_033_4aa2:
    call Call_033_49bd

Jump_033_4aa5:
jr_033_4aa5:
    and a
    ret


jr_033_4aa7:
    pop bc
    scf
    ret


Call_033_4aaa:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and $80
    ld [$d419], a
    xor a
    ld [$d420], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$d421], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld [$d41a], a
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld [$d41b], a
    ld a, [hl+]
    ld [$d41c], a
    ld a, [hl+]
    ld [$d41d], a
    ld a, [hl+]
    ld [$d41e], a
    ld a, [hl+]
    ld [$d41f], a
    ldh a, [$e4]
    and a
    ret z

    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ld [$d419], a
    bit 0, [hl]
    ret z

    ld hl, $0007
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld a, $b4
    sub d
    ld [$d41c], a
    ld a, [hl+]
    ld d, a
    ld a, [$d41a]
    cp $ff
    jr nz, jr_033_4b09

    ld a, $28
    add d
    jr jr_033_4b26

jr_033_4b09:
    sub d
    push af
    ld a, [$cfc3]
    or a
    jr nz, jr_033_4b25

    ld a, [$cfc2]
    cp $86
    jr z, jr_033_4b20

    cp $87
    jr z, jr_033_4b20

    cp $d0
    jr nz, jr_033_4b25

jr_033_4b20:
    pop af
    sub $08
    jr jr_033_4b26

jr_033_4b25:
    pop af

jr_033_4b26:
    ld [$d41d], a
    ld a, [hl+]
    xor $ff
    inc a
    ld [$d41e], a
    ret


Call_033_4b31:
    push hl
    push bc
    ld hl, $d300
    ld b, a
    ld c, $05

jr_033_4b39:
    ld a, [hl+]
    cp b
    jr z, jr_033_4b44

    inc hl
    dec c
    jr nz, jr_033_4b39

    xor a
    jr jr_033_4b45

jr_033_4b44:
    ld a, [hl]

jr_033_4b45:
    pop bc
    pop hl
    ret


Call_033_4b48:
    ld hl, $4000
    ld a, $32
    rst $08
    ret


Call_033_4b4f:
    ld hl, $401a
    ld a, $32
    rst $08
    ret


    ld bc, $00ff
    nop
    ld [bc], a
    ld bc, $ff01
    ld bc, $0200
    ld bc, $ff01
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $9001
    nop
    nop
    ld [bc], a
    ld bc, $9001
    ld bc, $0200
    ld bc, $9001
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $ff01
    inc bc
    nop
    ld [bc], a
    ld bc, $ff01
    inc b
    dec de
    ld [bc], a
    ld bc, $ff01
    dec b
    nop
    ld [bc], a
    ld bc, $ff01
    ld b, $00
    ld [bc], a
    ld bc, $9001
    rlca
    add hl, bc
    ld [bc], a
    ld bc, $aa01
    db $10
    db $10
    inc b
    inc bc
    ld bc, $0e90
    inc b
    inc b
    inc bc
    ld bc, $0f90
    inc bc
    inc b
    inc bc
    ld bc, $1090
    ld [$0304], sp
    ld bc, $0f90
    ld a, [bc]
    inc b
    inc bc
    ld bc, $1190
    inc bc
    inc b
    inc bc
    ld bc, $1290
    ld [$0a06], sp
    ld bc, $1390
    nop
    ld b, $0a
    ld bc, $1490
    ld bc, $0a06
    ld hl, $1678
    dec bc
    dec b
    ld b, $00
    nop
    add hl, bc
    ld [de], a
    inc b
    dec bc
    nop
    nop
    add hl, bc
    inc de
    inc b
    dec bc
    ld bc, $1890
    nop
    inc b
    ld [$ff01], sp
    jr jr_033_4bea

jr_033_4bea:
    inc b
    ld [$9001], sp
    dec e
    ld b, $02
    inc c
    ld bc, $1fb4
    jr c, @+$04

    inc c
    ld bc, $0890
    nop

Jump_033_4bfc:
    ld [bc], a
    rlca
    ld bc, $08a0
    nop
    ld [bc], a
    rlca
    ld bc, $19ff
    rlca
    rlca
    add hl, bc
    ld bc, $1aff
    rlca
    rlca
    add hl, bc
    ld bc, $1bb0
    ld [hl], $07
    add hl, bc
    ld bc, $84b0
    ld [hl], $06
    ld hl, $9001
    ld hl, $060c
    dec c
    nop
    nop
    inc hl
    dec c
    ld b, $0d
    ld bc, $2490
    ld c, $02
    ld c, $61
    add b
    daa
    rrca
    ld b, $04
    ld bc, $2ab4
    nop
    ld b, $04
    ld bc, $2b40
    ld de, $0f05
    ld h, c
    sbc b
    inc l
    nop
    inc bc
    db $10
    ld h, c
    sbc b
    dec l
    add hl, bc
    inc bc
    db $10
    ld bc, $2eb8
    nop
    ld b, $0a
    ld bc, $2fb8
    nop
    ld b, $0a
    ld bc, $30b8
    inc d
    rlca
    ld de, $9001
    ld hl, $0314
    dec c
    ld hl, $31b0
    nop
    inc bc
    dec b
    ld hl, $32b0
    nop
    inc bc
    dec b
    ld hl, $33b0
    nop
    inc bc
    dec b
    ld hl, $3490
    dec d
    inc bc
    dec b
    ld hl, $3690
    nop
    inc bc
    dec b
    ld hl, $3790
    inc bc
    ld [bc], a
    ld [$9021], sp
    jr c, jr_033_4c8c

jr_033_4c8c:
    inc bc
    dec b
    ld hl, $3990
    inc bc
    ld [bc], a
    ld [$9021], sp
    ld a, [hl-]
    ld d, $02
    ld [bc], a
    ld bc, $3c90
    rla
    ld [bc], a
    ld [bc], a
    ld hl, $3eff
    nop
    ld [bc], a
    ld [bc], a
    ld hl, $3fff
    nop
    ld [bc], a
    ld [bc], a
    ld hl, $40ff
    nop
    ld [bc], a
    ld [bc], a
    ld hl, $41ff
    nop
    ld [bc], a
    ld [bc], a
    ld hl, $42ff
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $4388
    jr jr_033_4cc8

    ld [de], a
    ld bc, $4488
    nop

jr_033_4cc8:
    dec b
    ld [de], a
    ld hl, $45b8
    add hl, de
    ld [bc], a
    inc de
    ld hl, $46ff
    nop
    ld [bc], a
    inc d
    ld hl, $47ff
    nop
    ld [bc], a
    inc d
    ld hl, $48ff
    ld a, [de]
    ld [bc], a
    inc d
    ld hl, $49ff
    ld a, [de]
    ld [bc], a
    inc d
    ld hl, $4a98
    ld bc, $1402
    ld hl, $4b80
    nop
    inc bc
    ld de, $8801
    ld c, h
    inc e
    dec b
    ld [de], a
    ld hl, $4db0
    dec e
    ld [bc], a
    dec d
    ld bc, $51b0
    ld e, $03
    ld de, $ff21
    ld d, d
    rra
    dec b
    ld d, $21
    rst $38
    ld d, h
    rra
    dec b
    ld d, $21
    ld l, b
    ld d, [hl]
    jr nz, @+$07

    ld b, $21
    sub b
    ld e, c
    ld hl, $0e02
    ld hl, $5c90
    ld [bc], a
    ld [bc], a
    rla
    ld bc, $5d90
    ld [hl+], a
    inc bc
    ld de, $8861
    ld e, a
    nop
    inc bc
    db $10
    ld h, c
    adc b
    dec l
    add hl, bc
    inc bc
    db $10
    ld hl, $6088
    nop
    inc bc
    jr @+$23

    add b
    ld h, b
    nop
    ld [bc], a
    jr jr_033_4d64

    ld d, b
    ld h, c
    inc hl
    inc bc
    add hl, de
    ld bc, $6380
    inc h
    ld [bc], a
    add hl, de
    ld bc, $6680
    dec h
    ld [bc], a
    add hl, de
    ld bc, $1c50
    nop
    ld [bc], a
    inc c
    ld hl, $67a8
    ld h, $07
    ld a, [de]
    ld hl, $68a8
    nop

jr_033_4d64:
    rlca
    ld a, [de]
    ld hl, $6990
    ld bc, $1a02
    ld hl, $6d90
    jr z, @+$05

    add hl, de
    ld hl, $6a90
    daa
    ld [bc], a
    dec de
    nop
    nop
    ld l, a
    add hl, hl
    ld [bc], a
    inc e
    ld hl, $7048
    add hl, hl
    ld [bc], a
    inc e
    ld hl, $6f48
    add hl, hl
    ld [bc], a
    inc e
    ld hl, $6f78
    ld a, [hl+]
    ld [bc], a
    inc e
    ld h, c
    sub b
    ld [hl], c
    dec hl
    ld [bc], a
    dec e
    ld h, c
    sub b
    ld [hl], d
    inc l
    ld [bc], a
    dec e
    ld bc, $7348
    dec l
    inc b
    ld e, $01
    sub b
    ld [hl], h
    ld b, $02
    dec d
    ld bc, $75ff
    ld l, $07
    add hl, de
    ld hl, $4a90
    ld [bc], a
    ld [bc], a
    inc d
    ld bc, $3080
    cpl
    ld [bc], a
    ld de, $7801
    db $76
    ld a, [hl+]
    inc b
    inc hl
    ld bc, $7780
    jr nc, @+$04

    rra
    ld bc, $7790
    ld [bc], a
    ld [bc], a
    rra
    ld bc, $77ff
    nop
    ld [bc], a
    rra
    ld bc, $7880
    ld [$2303], sp
    ld hl, $7990
    nop
    ld [bc], a
    rra
    ld bc, $7aff
    ld sp, $1103
    ld bc, $7a88
    ld sp, $1103
    ld hl, $7b88
    ld [hl-], a
    ld [bc], a
    jr nz, jr_033_4e12

    sbc b
    ld a, h
    nop
    ld [bc], a
    inc b
    ld hl, $7d80
    nop
    ld [bc], a
    jr jr_033_4dfe

    add b

jr_033_4dfe:
    ld hl, $062f
    dec c
    ld bc, $7eb0
    inc sp
    inc bc
    ld [de], a
    ld bc, $7f80
    cpl
    ld [bc], a
    ld [$a021], sp
    ld l, a
    inc [hl]

jr_033_4e12:
    ld [bc], a
    inc e
    ld hl, $74a0
    dec [hl]
    ld [bc], a
    dec d
    ld hl, $80b0
    inc sp
    ld [bc], a
    inc d
    ld bc, $8188
    scf
    ld [bc], a
    ld de, $8801
    add l
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $8688
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $8790
    add hl, sp
    ld [bc], a
    rra
    ld bc, $3080
    ld a, [hl-]
    inc bc
    ld de, $9021
    inc [hl]
    nop
    inc bc
    dec b
    and c
    adc b
    adc b
    dec sp
    ld b, $13
    ld bc, $7680
    dec h
    inc b
    inc hl
    ld bc, $1098
    inc [hl]
    inc b
    inc bc
    ld bc, $0fa8
    inc a
    inc b
    inc bc
    ld hl, $8968
    add hl, hl
    ld [bc], a
    rra
    ld hl, $8ab0
    nop
    ld [bc], a
    rra
    ld hl, $8c80
    nop
    ld [bc], a
    rra
    ld hl, $8d50
    nop
    inc bc
    rra
    ld bc, $2440
    ld b, b
    ld [bc], a
    ld c, $21
    xor b
    adc [hl]
    ld b, c
    inc b
    rra
    ld hl, $8f88
    ld a, $02
    rra
    ld hl, $9388
    ld a, $02
    rra
    ld hl, $9790
    dec a
    ld [bc], a
    rra
    ld hl, $7890
    dec a
    inc bc
    inc hl
    ld bc, $99ff
    ld l, $02
    add hl, de
    ld hl, $74a0
    ld [bc], a
    ld [bc], a
    dec d
    ld hl, $99a0
    dec [hl]
    inc b
    add hl, de
    ld hl, $8b70
    ccf
    ld [bc], a
    rra
    ld bc, $1590
    ld [$0a02], sp
    ld bc, $1190
    ld [bc], a
    inc b
    inc bc
    ld bc, $7f80
    ld b, d
    ld [bc], a
    ld [$9001], sp
    sbc d
    nop
    ld [bc], a
    dec de
    ld hl, $9ba0
    dec [hl]
    inc b
    inc hl
    ld hl, $9c80
    inc hl
    ld [bc], a
    dec h
    ld hl, $9d80
    dec h
    ld [bc], a
    dec h
    ld hl, $9c80
    nop
    ld [bc], a
    dec h
    ld hl, $9e80
    nop
    ld b, $25
    ld h, c
    add b
    sbc a
    ld a, [hl-]
    dec b
    inc hl
    ld hl, $a080
    ld d, $02
    inc hl
    ld hl, $7870
    ld b, e
    inc bc
    inc hl
    ld hl, $a2c0
    ld bc, $2502
    ld hl, $a340
    ld b, h
    inc bc
    inc h
    ld bc, $a480
    nop
    ld [bc], a
    inc h
    ld bc, $a580
    nop
    inc bc
    inc h
    ld bc, $4388
    ld b, l
    inc b
    ld [de], a
    ld hl, $a6ff
    nop
    ld [bc], a
    ld [bc], a
    ld hl, $a7ff
    nop
    ld [bc], a
    ld [bc], a
    ld hl, $b400
    ld c, d
    rlca
    rrca
    ld hl, $a890
    ld [bc], a
    inc bc
    dec b
    ld hl, $9c40
    ld de, $2502
    ld h, c
    sub b
    xor c
    ld b, [hl]
    ld [bc], a
    inc hl
    nop
    nop
    inc h
    ld b, a
    ld [bc], a
    ld c, $01
    add b
    xor d
    nop
    ld [bc], a
    inc h
    ld hl, $abb8
    ld c, b
    ld [bc], a
    inc de
    ld hl, $ac90
    ld b, h
    ld [bc], a
    inc de
    ld bc, $05a8
    nop
    ld [bc], a
    ld bc, $9001
    inc h
    ld b, e
    ld [bc], a
    ld c, $01
    adc b
    xor l
    nop
    ld b, $17
    ld bc, $aea8
    ld c, c
    ld [bc], a
    ld bc, $9021
    xor a
    ld bc, $1103
    ld hl, $b000
    ld c, d
    ld [bc], a
    inc b
    nop
    nop
    ld [hl], b
    ld c, e
    inc b
    inc e
    ld bc, $b188
    ld c, h
    ld [bc], a
    add hl, de
    ld bc, $19b8
    ld c, l
    rlca
    add hl, bc
    ld h, c
    sbc b
    or e
    nop
    inc bc
    daa
    ld h, c
    sbc b
    ld [hl], h
    inc b
    ld b, $15
    ld hl, $19ff
    ld c, [hl]
    rlca
    add hl, bc
    ld bc, $7390
    ld [$1e04], sp
    ld bc, $89ff
    ld c, a
    inc b
    rra
    nop
    nop
    or l
    nop
    nop
    jr z, jr_033_4fad

jr_033_4fad:
    nop
    or [hl]
    nop
    ld bc, $0029
    nop
    or a
    nop
    nop
    jr z, jr_033_4fb9

jr_033_4fb9:
    nop
    cp b
    nop
    ld bc, $2129
    inc b
    nop
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $4fce
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, [hl]
    ld d, b
    ld a, [hl+]
    ld d, c
    ld b, [hl]
    ld d, c
    db $e3
    ld d, b
    and [hl]
    ld d, b
    add c
    ld d, b
    ld a, c
    ld d, b
    cp [hl]
    ld d, d
    ld b, $53
    xor [hl]
    ld d, e
    ld a, [c]
    ld d, e
    ld a, b
    ld d, h
    jp hl


    ld d, l
    ld l, d
    ld d, [hl]
    db $e3
    ld d, [hl]
    ld a, [de]
    ld d, a
    add h
    ld d, d
    ld [hl], a
    ld d, a
    ld e, h
    ld d, c
    ld [de], a
    ld d, d
    and h
    ld d, a
    inc c
    ld e, b
    inc h
    ld e, b
    sbc d
    ld e, b
    nop
    ld e, c
    ld d, h
    ld e, c
    ld a, [$065a]
    ld e, e
    ld a, [bc]
    ld e, d
    add b
    ld e, e
    and [hl]
    ld e, h
    ld sp, $4d5a
    ld e, d
    jp $2a5c


    ld e, l
    sub b
    ld e, l
    ld sp, hl
    ld e, l
    jr z, jr_033_5078

    ld d, h
    ld e, [hl]
    ld l, e
    ld e, [hl]
    adc c
    ld e, [hl]
    db $dd
    ld e, [hl]
    ld e, c
    ld e, a
    ld h, e
    ld h, b
    push bc
    ld h, b
    dec de
    ld e, a
    ld c, $61
    ld e, h
    ld h, c
    rst $20
    ld h, c
    ld h, $62
    ld d, l
    ld h, d
    call z, $8c62
    ld e, a
    dec bc
    ld h, b
    db $fd
    ld h, d
    ld e, a
    ld h, e
    adc c
    ld h, e
    or h
    ld h, e
    jp nc, $ff63

    ld h, e
    bit 3, a
    ld d, $64
    ld a, [hl-]
    ld h, h
    sub $5a
    sbc h
    ld h, h
    call c, $b064
    ld h, c
    ld [$3265], sp
    ld h, l
    ld e, e
    ld h, l
    sub e
    ld h, l
    or h
    ld h, l
    call c, $ee65
    ld h, l
    cpl
    ld h, [hl]
    adc b
    ld h, [hl]
    or e
    ld h, [hl]
    jp nc, $8a66

    ld d, l
    cp a
    ld h, [hl]
    call Call_033_671e
    ld a, b
    ld d, b
    ld [hl], l
    ld d, b
    call Call_033_49bd

jr_033_5078:
    ret


    call Call_033_5081
    ret c

    call Call_033_49bd
    ret


Call_033_5081:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $88
    ret nc

    add $02
    ld [hl], a
    ld hl, $0008
    add hl, bc
    dec [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    ld hl, $000b
    add hl, bc
    ld d, [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    scf
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $88
    jr c, jr_033_50b3

    call Call_033_49bd
    ret


jr_033_50b3:
    add $02
    ld [hl], a
    ld hl, $0008
    add hl, bc
    dec [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, $10
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    sra a
    sra a
    sra a
    sra a
    ld [hl], a
    ret


Call_033_50e3:
    call Call_033_671e
    ld [$0650], a
    ld d, c
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    bit 7, [hl]
    ld a, $00
    jr z, jr_033_50f9

    ld a, $20

jr_033_50f9:
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $7f
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    ld d, [hl]
    push af

Call_033_5111:
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    ret


    call Call_033_671e
    dec [hl]
    ld d, c
    ld sp, $cd51
    cp l
    ld c, c
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $84
    ret nc

    ld hl, $000b
    add hl, bc
    ld a, [hl]
    call Call_033_670a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $84
    jr nc, jr_033_5158

    ld hl, $000b
    add hl, bc

Call_033_5153:
    ld a, [hl]
    call Call_033_670a
    ret


jr_033_5158:
    call Call_033_49bd
    ret


    call Call_033_671e
    ld [hl], a
    ld d, c
    ld a, [hl]
    ld d, c
    call c, $9651
    ld d, c
    and a
    ld d, c
    call c, $d251
    ld d, c
    db $dd
    ld d, c
    xor $51
    call c, $ee51
    ld d, c
    ld c, $52
    call Call_033_5249
    call Call_033_672c
    ret


    call Call_033_5081
    ret c

    ld hl, $000a
    add hl, bc
    ld a, [hl]
    ld hl, $0008
    add hl, bc
    add [hl]
    ld [hl], a
    ld a, $0b
    call Call_033_67bf
    call Call_033_672c
    ret


    call Call_033_672c
    ld a, $09
    call Call_033_67bf
    ld hl, $000f
    add hl, bc
    ld [hl], $00
    inc hl
    ld [hl], $10
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    and $1f
    ret nz

    ld [hl], a
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    sub $04
    ld [hl], a
    ret nz

    ld a, $0c
    call Call_033_67bf
    call Call_033_672c
    ret


    ld a, $0d
    call Call_033_67bf
    ld hl, $000e
    add hl, bc
    dec [hl]
    ret


    call Call_033_5249
    ld a, $0a
    call Call_033_67bf
    call Call_033_672c
    ld hl, $0010
    add hl, bc
    ld [hl], $20
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    and $1f
    jr z, jr_033_520e

    and $0f
    ret nz

    call Call_033_672c
    ret


jr_033_520e:
    call Call_033_49bd
    ret


    call Call_033_671e
    dec de
    ld d, d
    ld [hl+], a
    ld d, d
    ld [hl-], a
    ld d, d
    call Call_033_5249
    call Call_033_672c
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $70
    jr nc, jr_033_522f

    call Call_033_5081
    ret


jr_033_522f:
    call Call_033_672c
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    cp $80
    jr nc, jr_033_5245

    add $04
    ld [hl], a
    ld hl, $0007
    add hl, bc
    dec [hl]
    dec [hl]
    ret


jr_033_5245:
    call Call_033_49bd
    ret


Call_033_5249:
    ld hl, $526c
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d106]
    ld e, a
    pop af
    ldh [rSVBK], a

jr_033_525a:
    ld a, [hl+]
    cp $ff
    jr z, jr_033_5265

    cp e
    jr z, jr_033_5265

    inc hl
    jr jr_033_525a

jr_033_5265:
    ld a, [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ret


    ld bc, $0205
    inc bc
    inc b
    ld b, $05
    inc b
    sbc l
    ld [bc], a
    sbc a
    rlca
    and b
    ld b, $a1
    ld b, $a4
    inc bc
    and l
    ld [bc], a
    and [hl]
    inc b
    rst $38
    ld [bc], a
    call Call_033_671e
    sub c
    ld d, d
    and b
    ld d, d
    or c
    ld d, d
    or l
    ld d, d
    cp l
    ld d, d
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    swap a
    and $0f
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $88
    ret nc

    ld hl, $000b
    add hl, bc
    ld a, [hl]
    call Call_033_670a
    ret


    call Call_033_49bd
    ret


    call Call_033_672c
    ld a, $0f
    call Call_033_67bf
    ret


    call Call_033_671e
    push bc
    ld d, d
    pop de
    ld d, d
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $30
    inc hl
    ld [hl], $48
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $3f
    ret nz

    ld hl, $000f
    add hl, bc
    ld [hl], $20
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    sub [hl]
    jr z, jr_033_5302

    jr c, jr_033_5302

    ld hl, $0010
    add hl, bc
    ld [hl], a
    ret


jr_033_5302:
    call Call_033_49bd
    ret


    call Call_033_671e
    ld de, $2153
    ld d, e
    ld a, [hl+]
    ld d, e
    ld a, l
    ld d, e
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $80
    jr nc, jr_033_531e

    call Call_033_538e
    ret


jr_033_531e:
    call Call_033_672c
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $00
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $40
    jr nc, jr_033_5363

    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $18
    call Call_033_6732
    sub $18
    sra a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $18
    call Call_033_6734
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    ld hl, $000f
    add hl, bc
    add [hl]
    ld [hl], a
    ret


jr_033_5363:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $f0
    jr z, jr_033_537a

    sub $10
    ld d, a
    ld a, [hl]
    and $0f
    or d
    ld [hl], a
    ld hl, $000e
    add hl, bc
    dec [hl]
    ret


jr_033_537a:
    call Call_033_672c
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $b0
    jr c, jr_033_538a

    call Call_033_49bd
    ret


jr_033_538a:
    call Call_033_538e
    ret


Call_033_538e:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    ld hl, $0007
    add hl, bc
    add [hl]
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    ld e, a
    srl e
    ld hl, $0008
    add hl, bc

jr_033_53a9:
    dec [hl]
    dec e
    jr nz, jr_033_53a9

    ret


    call Call_033_671e
    or a
    ld d, e
    call z, $ee53
    ld d, e
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $00
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_53d6

    dec [hl]
    ret


jr_033_53d6:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    swap a
    and $0f
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld [hl], a
    ret


    call Call_033_49bd
    ret


    call Call_033_671e
    add hl, bc
    ld d, h
    ld e, h
    ld d, h
    ld h, a
    ld d, h
    ld [hl], d
    ld d, h
    ld h, d
    ld d, h
    ld l, l
    ld d, h
    ld [hl], a
    ld d, h
    dec e
    ld d, h
    scf
    ld d, h
    ld e, b
    ld d, h
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    cp $07
    jr z, jr_033_541d

    ld a, $11
    call Call_033_67bf
    ret


jr_033_541d:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $88
    jr nc, jr_033_542f

    add $02
    ld [hl], a
    ld hl, $0008
    add hl, bc
    dec [hl]
    ret


jr_033_542f:
    call Call_033_672c
    ld a, $10
    call Call_033_67bf
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $10
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    ret


    call Call_033_49bd
    ret


    ld hl, $000a
    add hl, bc
    dec [hl]
    ret


    ld hl, $000a
    add hl, bc
    inc [hl]
    ld hl, $0009
    add hl, bc
    dec [hl]
    ret


    ld hl, $000a
    add hl, bc
    inc [hl]
    ld hl, $0009
    add hl, bc
    inc [hl]
    ret


    call Call_033_671e
    adc l
    ld d, h
    sub [hl]
    ld d, h
    xor $54
    ld a, [hl-]
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    ld d, l
    ld c, c
    ld d, l
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $40
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $30
    jr nc, jr_033_54bc

    call Call_033_672c
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld a, $17
    call Call_033_67bf
    ld hl, $000b
    add hl, bc
    bit 6, [hl]
    ret z

    ld hl, $000d
    add hl, bc
    ld [hl], $05
    ret


jr_033_54bc:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $3f
    ld d, a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    call Call_033_5557
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0007
    add hl, bc
    ld [hl], d
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $20
    jr nz, jr_033_54fb

    call Call_033_49bd
    ret


jr_033_54fb:
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $10
    call Call_033_6734
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    bit 6, [hl]
    jr nz, jr_033_5519

    ld hl, $000f
    add hl, bc
    inc [hl]
    jr jr_033_551e

jr_033_5519:
    ld hl, $000f
    add hl, bc
    dec [hl]

jr_033_551e:
    ld de, $0080
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $000a
    add hl, bc
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000a
    add hl, bc
    ld [hl], d
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ret


    ld a, $16
    call Call_033_67bf
    ld hl, $0001
    add hl, bc
    res 5, [hl]
    call Call_033_672c
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $c0
    ret nc

    ld a, $08
    call Call_033_670a
    ret


Call_033_5557:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_033_5574

    cp $20
    jr nc, jr_033_5570

    cp $18
    jr nc, jr_033_556c

    ld de, $0200
    ret


jr_033_556c:
    ld de, $0180
    ret


jr_033_5570:
    ld de, $0100
    ret


jr_033_5574:
    and $3f
    cp $20
    jr nc, jr_033_5586

    cp $18
    jr nc, jr_033_5582

    ld de, $fe00
    ret


jr_033_5582:
    ld de, $fe80
    ret


jr_033_5586:
    ld de, $ff00
    ret


    call Call_033_671e
    sub c
    ld d, l
    xor d
    ld d, l
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $40
    rlca
    rlca
    add $19
    ld hl, $0003
    add hl, bc
    ld [hl], a
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $40
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $30
    jr nc, jr_033_55b7

    call Call_033_49bd
    ret


jr_033_55b7:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $3f
    ld d, a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    call Call_033_5557
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0007
    add hl, bc
    ld [hl], d
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ret


    call Call_033_671e
    ld a, [c]
    ld d, l
    ei
    ld d, l
    dec de
    ld d, [hl]
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $0c
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_560d

    dec [hl]
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    call Call_033_670a
    ret


jr_033_560d:
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $00
    ld a, $22
    call Call_033_67bf
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $98
    jr nc, jr_033_563f

    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    ld h, [hl]
    ld l, a
    ld de, $0060
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000f
    add hl, bc
    ld [hl], e
    ld hl, $0007
    add hl, bc
    ld [hl], d

jr_033_563f:
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    cp $20
    ret c

    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $f0
    ld e, a
    ld d, $ff
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0008
    add hl, bc
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ld hl, $0008
    add hl, bc
    ld [hl], d
    ret


    call Call_033_671e
    ld [hl], a
    ld d, [hl]
    add a
    ld d, [hl]
    push bc
    ld d, [hl]
    add $56
    sub $56
    call Call_033_672c
    ld a, $42
    ldh [$c6], a
    ld a, $58
    ldh [$c7], a
    ld a, $5e
    ldh [$c8], a
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    cp e
    jr nc, jr_033_569b

    call Call_033_672c
    xor a
    ldh [$c7], a
    ret


jr_033_569b:
    dec a
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $10
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0008
    add hl, bc
    add [hl]
    sub $10
    ret c

    ldh [$c7], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    inc a
    and $07
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    inc [hl]
    ret


    ld hl, $0008
    add hl, bc
    ld a, [hl]
    cp $70
    jr c, jr_033_56da

    xor a
    ldh [$c6], a
    ldh [$c7], a
    ldh [$c8], a
    call Call_033_49bd
    ret


jr_033_56da:
    inc a
    inc a
    ld [hl], a
    sub $10
    ret c

    ldh [$c7], a
    ret


    call Call_033_671e
    ld [$f756], a
    ld d, [hl]
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld a, $24
    add [hl]
    call Call_033_67bf
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $b8
    jr c, jr_033_5704

    call Call_033_49bd
    ret


jr_033_5704:
    ld a, $02
    call Call_033_670a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    ld d, $08
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ret


    call Call_033_671e
    dec h
    ld d, a
    jr z, @+$59

    ld h, e
    ld d, a
    db $76
    ld d, a
    call Call_033_672c
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    cp $30
    jr c, jr_033_5747

    ld a, $02
    call Call_033_670a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    ld d, $08
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ret


jr_033_5747:
    call Call_033_672c
    ld a, $28
    call Call_033_67bf
    ld hl, $000a
    add hl, bc
    ld [hl], $00
    ld hl, $0008
    add hl, bc
    ld [hl], $30
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and $01
    ld [hl], a
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $18
    jr nc, jr_033_576e

    inc [hl]
    ret


jr_033_576e:
    call Call_033_672c
    ld a, $29
    call Call_033_67bf
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $38
    jr c, jr_033_5784

    call Call_033_49bd
    ret


jr_033_5784:
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld l, [hl]
    ld h, a
    ld de, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000f
    add hl, bc
    ld [hl], e
    ld hl, $000a
    add hl, bc
    ld [hl], d
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    xor $10
    ld [hl], a
    ret


    call Call_033_671e
    xor e
    ld d, a
    jp nc, $cd57

    inc l
    ld h, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $f0
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    sla a
    sla a
    sla a
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_033_57de

    call Call_033_49bd
    ret


jr_033_57de:
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc

Jump_033_57fc:
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    ret z

    ld hl, $0010
    add hl, bc
    dec [hl]
    ret


    call Call_033_671e
    rra
    ld e, b
    rla
    ld e, b
    rra
    ld e, b
    jr nz, @+$5a

    call Call_033_672c
    ld a, $35
    call Call_033_67bf
    ret


    call Call_033_49bd
    ret


    call Call_033_671e
    dec [hl]
    ld e, b
    ld h, b
    ld e, b
    adc a
    ld e, b
    adc a
    ld e, b
    adc a
    ld e, b
    adc a
    ld e, b
    sub e
    ld e, b
    call Call_033_672c
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    bit 7, [hl]
    jr nz, jr_033_5852

    ld hl, $000f
    add hl, bc
    ld [hl], $10
    jr jr_033_5858

jr_033_5852:
    ld hl, $000f
    add hl, bc
    ld [hl], $30

jr_033_5858:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $7f
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    ld d, [hl]
    call Call_033_6734
    ld hl, $0009
    add hl, bc
    ld [hl], a
    bit 7, a
    jr nz, jr_033_587e

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    inc a
    jr jr_033_5883

jr_033_587e:
    ld hl, $0010
    add hl, bc
    ld a, [hl]

jr_033_5883:
    call Call_033_67bf
    ld hl, $000f
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $1f
    ret nz

    call Call_033_672c
    ret


    ld hl, $000e
    add hl, bc
    ld [hl], $01
    ret


    call Call_033_671e
    xor e
    ld e, b
    call z, $f558
    ld e, b
    push af
    ld e, b
    push af
    ld e, b
    push af
    ld e, b
    ld sp, hl
    ld e, b
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    bit 7, [hl]
    jr nz, jr_033_58be

    ld hl, $000f
    add hl, bc
    ld [hl], $10
    jr jr_033_58c4

jr_033_58be:
    ld hl, $000f
    add hl, bc
    ld [hl], $30

jr_033_58c4:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $7f
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    ld d, [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    bit 7, a
    jr nz, jr_033_58e6

    ld a, $3d
    jr jr_033_58e8

jr_033_58e6:
    ld a, $3c

jr_033_58e8:
    call Call_033_67bf
    ld hl, $000f
    add hl, bc
    inc [hl]
    inc [hl]
    ld a, [hl]
    and $1f
    ret nz

    call Call_033_672c
    ret


    ld hl, $000e
    add hl, bc
    ld [hl], $01
    ret


    call Call_033_671e
    rlca
    ld e, c
    inc de
    ld e, c
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $28
    inc hl
    ld [hl], $00
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld d, [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5950

    ld d, a
    ld hl, $0010
    add hl, bc
    ld e, [hl]
    ld hl, $ff80
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ld hl, $000f
    add hl, bc
    ld [hl], d
    ret


jr_033_5950:
    call Call_033_49bd
    ret


    call Call_033_671e
    ld h, c
    ld e, c
    ld l, d
    ld e, c
    ld l, [hl]
    ld e, c
    ld l, d
    ld e, c
    ld a, e
    ld e, c
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld [hl], $00
    call Call_033_599a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $88
    jr c, jr_033_5988

    call Call_033_672c
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $b8
    jr c, jr_033_5988

    call Call_033_49bd
    ret


jr_033_5988:
    call Call_033_599a
    ld hl, $0007
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $0008
    add hl, bc
    dec [hl]
    ret


Call_033_599a:
    call Call_033_59f4
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    sra a
    sra a
    ld hl, $000b
    add hl, bc
    add [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    sub $08
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_59d7

    cp $c2
    jr c, jr_033_59e2

jr_033_59d7:
    dec a
    ld [hl], a
    and $07
    ret nz

    ld hl, $0010
    add hl, bc
    inc [hl]
    ret


jr_033_59e2:
    xor a
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ret


Call_033_59f4:
    ld hl, $0010
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $5a01
    add hl, de
    ld d, [hl]
    ret


    ld [$0506], sp
    inc b
    dec b
    ld b, $08
    inc c
    db $10
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $30
    jr nc, jr_033_5a17

    call Call_033_49bd
    ret


jr_033_5a17:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    ld e, a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    sub e
    ld [hl], a
    srl e
    ld hl, $0008
    add hl, bc

jr_033_5a2c:
    inc [hl]
    dec e
    jr nz, jr_033_5a2c

    ret


    call Call_033_671e
    ld c, h
    ld e, d
    ld a, [hl-]
    ld e, d
    ld c, h
    ld e, d
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc a
    call Call_033_67bf
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $08
    ret


    call Call_033_671e
    ld e, b
    ld e, d
    ld h, d
    ld e, d
    ld a, d
    ld e, d
    adc h
    ld e, d
    call Call_033_672c
    ld hl, $0010
    add hl, bc
    ld [hl], $40
    ret


    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_033_5a6f

    call Call_033_5a8d
    ret


jr_033_5a6f:
    ld [hl], $40
    ld a, $57
    call Call_033_67bf
    call Call_033_672c
    ret


    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5a84

    dec [hl]
    ret


jr_033_5a84:
    call Call_033_672c
    ld a, $58
    call Call_033_67bf
    ret


Call_033_5a8d:
    dec [hl]
    ld d, $20
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld e, [hl]
    ld hl, $0007
    add hl, bc
    ld d, [hl]
    ld hl, $000b
    add hl, bc
    ld h, [hl]
    ld a, h
    and $0f
    swap a
    ld l, a
    ld a, h
    and $f0
    swap a
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000f
    add hl, bc
    ld [hl], e
    ld hl, $0007
    add hl, bc
    ld [hl], d
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and $01
    ret nz

    ld hl, $0008
    add hl, bc
    dec [hl]
    ret


    call Call_033_671e
    rst $18
    ld e, d
    jp hl


    ld e, d
    ld sp, hl
    ld e, d
    call Call_033_672c
    ld hl, $0010
    add hl, bc
    ld [hl], $40
    ret


    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_033_5af6

    call Call_033_5a8d
    ret


jr_033_5af6:
    call Call_033_672c
    ret


    call Call_033_50e3
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    add $0f
    ld [hl], a
    ret


    call Call_033_671e
    inc de
    ld e, e
    inc d
    ld e, e
    jr z, jr_033_5b6a

    ld d, b
    ld e, e
    ld h, l
    ld e, e
    ret


    ld hl, $0008
    add hl, bc
    ld a, [hl]
    cp $30
    jr c, jr_033_5b24

    ld hl, $000e
    add hl, bc
    ld [hl], $00
    ret


jr_033_5b24:
    add $04
    ld [hl], a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $98
    ret nc

    inc [hl]
    inc [hl]
    ld hl, $0001
    add hl, bc
    set 0, [hl]
    ld hl, $0002
    add hl, bc
    ld [hl], $90
    ld hl, $000d
    add hl, bc
    ld [hl], $00
    ld hl, $000c
    add hl, bc
    ld [hl], $02
    ld hl, $0008
    add hl, bc
    dec [hl]
    ret


    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $2c
    ld hl, $000d
    add hl, bc
    ld [hl], $00
    ld hl, $000c
    add hl, bc
    ld [hl], $80
    ld hl, $0007
    add hl, bc
    ld a, [hl]

jr_033_5b6a:
    cp $98
    ret nc

    inc [hl]
    inc [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld d, $08
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ret


    call Call_033_671e
    sbc a
    ld e, e
    or e
    ld e, e
    rst $08
    ld e, e
    db $eb
    ld e, e
    ld [hl], h
    ld e, h
    ld a, [de]
    ld e, h
    pop bc
    ld e, e
    ld e, $5c
    daa
    ld e, h
    add hl, sp
    ld e, h
    ld [hl], h
    ld e, h
    ld c, b
    ld e, h
    ld d, a
    ld e, h
    ld [hl], h
    ld e, h
    ld hl, $000f
    add hl, bc
    ld [hl], $28
    inc hl
    ld [hl], $10
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $40
    jr nc, jr_033_5bbd

    inc [hl]

jr_033_5bbd:
    call Call_033_5c75
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $4b
    jr nc, jr_033_5bcb

    inc [hl]

jr_033_5bcb:
    call Call_033_5c75
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $88
    jr nc, jr_033_5be6

    and $0f
    jr nz, jr_033_5bfa

    ld hl, $0010
    add hl, bc
    ld [hl], $10
    call Call_033_672c
    ret


jr_033_5be6:
    call Call_033_672c
    inc [hl]
    ret


    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5bf5

    dec [hl]
    ret


jr_033_5bf5:
    ld hl, $000e
    add hl, bc
    dec [hl]

jr_033_5bfa:
    ld hl, $0007
    add hl, bc
    inc [hl]
    ld hl, $0008
    add hl, bc
    ld d, [hl]
    ld hl, $000f
    add hl, bc
    ld e, [hl]
    ld hl, $ff80
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0008
    add hl, bc
    ld [hl], d
    ld hl, $000f
    add hl, bc
    ld [hl], e
    ret


    call Call_033_49bd
    ret


    ld a, $4e
    call Call_033_67bf
    call Call_033_672c
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    ld d, $02
    call Call_033_6734
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


    ld a, $50
    call Call_033_67bf
    ld hl, $000a
    add hl, bc
    ld [hl], $04
    call Call_033_672c
    ret


    ld a, $4f
    call Call_033_67bf
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $40
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $20
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $30
    jr c, jr_033_5c71

    dec [hl]
    ret


jr_033_5c71:
    call Call_033_672c
    ret


Call_033_5c75:
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $3f
    ret nz

    ld hl, $000f
    add hl, bc
    ld [hl], $20
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    sub $08
    ld [hl], a
    ret nz

    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    call Call_033_672c
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5cb6

    cp $d8
    jr nc, jr_033_5cb6

    call Call_033_49bd
    ret


jr_033_5cb6:
    ld hl, $000b
    add hl, bc
    ld d, [hl]
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    ret


    call Call_033_671e
    jp z, $ed5c

    ld e, h
    ldh a, [$e4]
    and a
    jr z, jr_033_5cd9

    ld hl, $000b
    add hl, bc
    ld a, [hl]
    xor $ff
    add $03
    ld [hl], a

jr_033_5cd9:
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $08
    ld hl, $000b
    add hl, bc
    ld a, $59
    add [hl]
    call Call_033_67bf
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5cfa

    dec [hl]
    call Call_033_5cfe
    ret


jr_033_5cfa:
    call Call_033_49bd
    ret


Call_033_5cfe:
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    ld d, $10
    call Call_033_6734
    ld d, a
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5d20

    dec a
    ret z

    ld hl, $000a
    add hl, bc
    ld [hl], d
    ret


jr_033_5d20:
    ld hl, $000a
    add hl, bc
    ld a, d
    xor $ff
    inc a
    ld [hl], a
    ret


    call Call_033_671e
    ld sp, $4f5d
    ld e, l
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $3f
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $80
    rlca
    ld [hl], a
    add $5d
    call Call_033_67bf
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    swap a
    ld d, a
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    inc [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $80
    ret nc

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and $03
    jr nz, jr_033_5d87

    ld hl, $0008
    add hl, bc
    dec [hl]

jr_033_5d87:
    and $01
    ret nz

    ld hl, $0007
    add hl, bc
    inc [hl]
    ret


    call Call_033_671e
    sub a
    ld e, l
    cp h
    ld e, l
    call Call_033_672c
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $80
    rlca
    ld hl, $000f
    add hl, bc
    add [hl]
    call Call_033_67bf
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $7f
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $10
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    and $3f
    jr z, jr_033_5df0

    and $1f
    ret nz

    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc a
    jr jr_033_5df5

jr_033_5df0:
    ld hl, $000f
    add hl, bc
    ld a, [hl]

jr_033_5df5:
    call Call_033_67bf
    ret


    call Call_033_671e
    ld [bc], a
    ld e, [hl]
    jr nz, @+$60

    ld hl, $cd5e
    inc l
    ld h, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    add $63
    call Call_033_67bf
    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $5e25
    add hl, de
    ld a, [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ret


    call Call_033_49bd
    ret


    db $ec
    ld hl, sp+$00
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    ld d, $04
    call Call_033_6734
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    ld d, [hl]
    ld hl, $0010
    add hl, bc
    ld e, [hl]
    ld hl, $ffa0
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000a
    add hl, bc
    ld [hl], d
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    dec [hl]
    ld d, $10
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, bc
    inc [hl]
    ret


    call Call_033_671e
    ld [hl], d
    ld e, [hl]
    adc b
    ld e, [hl]
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_033_5e83

    ld hl, $0001
    add hl, bc
    set 6, [hl]

jr_033_5e83:
    add $6a
    call Call_033_67bf
    ret


    call Call_033_671e
    sub b
    ld e, [hl]
    cp a
    ld e, [hl]
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $00
    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld a, e
    and $70
    swap a
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld a, e
    and $80
    jr nz, jr_033_5eb2

    ld a, e
    and $0f
    ld [hl], a
    ret


jr_033_5eb2:
    ld a, e
    and $0f
    xor $ff
    inc a
    ld [hl], a
    ld a, $6e
    call Call_033_67bf
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_5ec9

    dec [hl]
    ret


jr_033_5ec9:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld [hl], a
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $18
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    sra a
    ld hl, $0010
    add hl, bc
    add [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $07
    ret nz

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $28
    jr nc, jr_033_5f17

    inc [hl]
    ret


jr_033_5f17:
    call Call_033_49bd
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $18
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    sra a
    ld hl, $0010
    add hl, bc
    add [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $03
    ret nz

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $28
    jr nc, jr_033_5f55

    inc [hl]
    ret


jr_033_5f55:
    call Call_033_49bd
    ret


    call Call_033_671e
    ld h, b
    ld e, a
    db $dd
    ld e, [hl]
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $84
    jr nc, jr_033_5f88

    inc [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld d, $18
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and $01
    ret nz

    ld hl, $0008
    add hl, bc
    dec [hl]
    ret


jr_033_5f88:
    call Call_033_672c
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $18
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    sra a
    ld hl, $0010
    add hl, bc
    add [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    inc [hl]
    inc [hl]
    ld a, [hl]
    and $07
    ret nz

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $e8
    jr z, jr_033_5fc7

    dec [hl]
    ret


jr_033_5fc7:
    call Call_033_49bd
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $18
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    sra a
    ld hl, $0010
    add hl, bc
    add [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    inc [hl]
    inc [hl]
    ld a, [hl]
    and $03
    ret nz

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $d0
    jr z, jr_033_6007

    dec [hl]
    dec [hl]
    ret


jr_033_6007:
    call Call_033_49bd
    ret


    call Call_033_671e
    inc d
    ld h, b
    inc hl
    ld h, b
    ld e, a
    ld h, b
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $34
    ld hl, $0010
    add hl, bc
    ld [hl], $10
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $6c
    jr c, jr_033_602d

    ret


jr_033_602d:
    ld a, $02
    call Call_033_670a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    call Call_033_6734
    bit 7, a
    jr nz, jr_033_6046

    xor $ff
    inc a

jr_033_6046:
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    sub $04
    ld [hl], a
    and $1f
    cp $20
    ret nz

    ld hl, $0010
    add hl, bc
    srl [hl]
    ret


    call Call_033_49bd
    ret


    call Call_033_671e
    ld l, [hl]
    ld h, b
    add e
    ld h, b
    sub c
    ld h, b
    sbc [hl]
    ld h, b
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $58
    ret nc

    ld a, $02
    call Call_033_670a
    ret


    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_033_609e

    call Call_033_49bd
    ret


jr_033_609e:
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld d, $08
    call Call_033_6734
    ld hl, $0009
    add hl, bc
    ld [hl], a
    sra a
    xor $ff
    inc a
    ld hl, $000f
    add hl, bc
    add [hl]
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    add $08
    ld [hl], a
    ret


    call Call_033_671e
    adc $60
    ld hl, sp+$60
    db $dd
    ld h, b
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $f0
    swap a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, $10
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    bit 7, a
    jr z, jr_033_60f0

    ld [hl], a

jr_033_60f0:
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    sub $04
    ld [hl], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $84
    jr c, jr_033_6105

    call Call_033_49bd
    ret


jr_033_6105:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    call Call_033_670a
    ret


    call Call_033_671e
    dec d
    ld h, c
    ld a, [hl+]
    ld h, c
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $28
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    sub $28
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    call Call_033_6734

Call_033_6133:
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    and [hl]
    jr nz, jr_033_6149

    ld hl, $0007
    add hl, bc
    dec [hl]

jr_033_6149:
    ld hl, $000f
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $3f
    ret nz

    ld hl, $000f
    add hl, bc
    ld [hl], $20
    inc hl
    srl [hl]
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld d, [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $01
    jr nz, jr_033_6189

    ld hl, $0007
    add hl, bc
    dec [hl]

jr_033_6189:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $03
    jr nz, jr_033_6197

    ld hl, $0008
    add hl, bc
    inc [hl]

jr_033_6197:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    cp $5a
    jr nc, jr_033_61aa

    ld a, [hl]
    and a
    jr z, jr_033_61ac

    dec [hl]
    ret


jr_033_61aa:
    inc [hl]
    ret


jr_033_61ac:
    call Call_033_49bd
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld hl, $000f
    add hl, bc
    ld d, [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld hl, $000f
    add hl, bc
    cp $40
    jr nc, jr_033_61df

    inc [hl]
    ret


jr_033_61df:
    ld a, [hl]
    dec [hl]
    and a
    ret nz

    call Call_033_49bd
    ret


    call Call_033_671e
    xor $61
    ei
    ld h, c
    call Call_033_672c
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $30
    call Call_033_6734
    ld hl, $0010
    add hl, bc
    add [hl]
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    add $08
    ld d, $30
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    inc [hl]
    ret


    call Call_033_671e
    dec l
    ld h, d
    ld d, h
    ld h, d
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $10
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $10
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0010
    add hl, bc
    ld [hl], $0f
    ret


    call Call_033_671e
    ld h, b
    ld h, d
    ld [hl], h
    ld h, d
    ld a, b
    ld h, d
    adc c
    ld h, d
    call Call_033_672c
    ldh a, [$e4]
    and a
    jr nz, jr_033_626c

    ld a, $f0
    jr jr_033_626e

jr_033_626c:
    ld a, $cc

jr_033_626e:
    ld hl, $000f
    add hl, bc
    ld [hl], a
    ret


    call Call_033_629f
    ret


    call Call_033_629f
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $84
    ret nc

    ld a, $04
    call Call_033_670a
    ret


    call Call_033_629f
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $d0
    jr nc, jr_033_629b

    ld a, $04
    call Call_033_670a
    ret


jr_033_629b:
    call Call_033_49bd
    ret


Call_033_629f:
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and $07
    inc [hl]
    srl a
    ld e, a
    ld d, $00
    ldh a, [$e7]
    and a
    jr nz, jr_033_62b6

    ld hl, $62c4
    jr jr_033_62b9

jr_033_62b6:
    ld hl, $62c8

jr_033_62b9:
    add hl, de
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    and [hl]
    ld [$cfc8], a
    ret


    rst $38
    xor d
    ld d, l
    xor d
    rst $38
    rst $38
    nop
    nop
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $18
    call Call_033_6734
    sra a
    sra a
    sra a
    ld hl, $0010
    add hl, bc
    add [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld d, $18
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0010
    add hl, bc
    dec [hl]
    dec [hl]
    ret


    call Call_033_671e
    ld b, $63
    jr nc, @+$65

    ld c, h
    ld h, e
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $e0
    jr nz, jr_033_6319

    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $02
    ret


jr_033_6319:
    ld d, a
    ld hl, $000f
    add hl, bc
    ld e, [hl]
    ld hl, $ff80
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000a
    add hl, bc
    ld [hl], d
    ld hl, $000f
    add hl, bc
    ld [hl], e
    ret


    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_633a

    dec [hl]
    ret


jr_033_633a:
    ld [hl], $04
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld [hl], a
    ld hl, $000a
    add hl, bc
    add [hl]
    ld [hl], a
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $84
    jr nc, jr_033_635b

    ld a, $04
    call Call_033_670a
    ret


jr_033_635b:
    call Call_033_49bd
    ret


    call Call_033_671e
    ld h, [hl]
    ld h, e
    ld [hl], l
    ld h, e
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $7f
    add $81
    call Call_033_67bf
    ld hl, $000b
    add hl, bc
    bit 7, [hl]
    jr nz, jr_033_6383

    ld hl, $0009
    add hl, bc
    inc [hl]
    ret


jr_033_6383:
    ld hl, $0009
    add hl, bc
    dec [hl]
    ret


    call Call_033_671e
    sub d
    ld h, e
    sbc h
    ld h, e
    xor [hl]
    ld h, e
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $0c
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_63a6

    dec [hl]
    ret


jr_033_63a6:
    call Call_033_672c
    ld a, $20
    call Call_033_67bf
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    push af
    ld d, $02
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop af
    ld d, $08
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_033_63df

    call Call_033_49bd
    ret


jr_033_63df:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $08
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    and $07
    ret nz

    ld hl, $000a
    add hl, bc
    inc [hl]
    ret


    call Call_033_671e
    ld b, $64
    ld [de], a
    ld h, h
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    add [hl]
    ld [hl], a
    ret


    call Call_033_49bd
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld d, $18
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    sra a
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    ret


    call Call_033_671e
    ld b, e
    ld h, h
    ld h, l
    ld h, h
    sub b
    ld h, h
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $28
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $0f
    ld hl, $0003
    add hl, bc
    add [hl]
    call Call_033_67bf
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_648b

    dec [hl]
    add $08
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


jr_033_648b:
    ld [hl], $10
    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    dec [hl]
    and a
    ret nz

    call Call_033_49bd
    ret


    call Call_033_671e
    and e
    ld h, h
    or b
    ld h, h
    call Call_033_672c
    ld hl, $000b
    add hl, bc
    ld a, $24
    add [hl]
    call Call_033_67bf
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $38
    jr nc, jr_033_64d8

    inc [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld d, $18
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $01
    ret nz

    ld hl, $0007
    add hl, bc
    dec [hl]
    ret


jr_033_64d8:
    call Call_033_49bd
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ld d, a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_033_6734
    bit 7, a
    jr nz, jr_033_64f4

    xor $ff
    inc a

jr_033_64f4:
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and $1f
    ret nz

    ld hl, $000b
    add hl, bc
    srl [hl]
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $10
    jr nc, jr_033_652e

    inc [hl]
    inc [hl]
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


jr_033_652e:
    call Call_033_49bd
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld hl, $000f
    add hl, bc
    ld d, [hl]
    ld a, e
    and $c0
    rlca
    rlca
    add [hl]
    ld [hl], a
    ld a, e
    and $3f
    push af
    push de
    call Call_033_6734
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


    call Call_033_671e
    ld h, h
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld h, l
    ld d, $18
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    jr jr_033_658f

    call Call_033_672c
    ld hl, $000f
    add hl, bc
    ld [hl], $18
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $80
    jr nc, jr_033_658b

    ld d, a
    add $08
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    jr jr_033_658f

jr_033_658b:
    call Call_033_49bd
    ret


jr_033_658f:
    call Call_033_66f1
    ret


    call Call_033_671e
    or e
    ld h, l
    sbc d
    ld h, l
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $30
    jr c, jr_033_65b0

    ld hl, $0007
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $0008
    add hl, bc
    inc [hl]
    inc [hl]
    ret


jr_033_65b0:
    call Call_033_49bd
    ret


    ld d, $50
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    ld hl, $000f
    add hl, bc
    add [hl]
    inc [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $d0
    jr z, jr_033_65ea

    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ret


jr_033_65ea:
    call Call_033_49bd
    ret


    call Call_033_671e
    ld sp, hl
    ld h, l
    ld a, [bc]
    ld h, [hl]
    ld [hl+], a
    ld h, [hl]
    jr jr_033_665f

    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_033_661c

    call Call_033_672c
    ld hl, $000a
    add hl, bc
    ld [hl], $ec
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_033_6618

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ret


jr_033_6618:
    call Call_033_49bd
    ret


jr_033_661c:
    call Call_033_672c
    call Call_033_672c
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $d8
    ret z

    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ret


    call Call_033_671e
    ld a, [hl-]
    ld h, [hl]
    ld c, b
    ld h, [hl]
    ld e, h
    ld h, [hl]
    ld [hl], d
    ld h, [hl]
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    call Call_033_672c
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    add $04
    cp $70
    jr c, jr_033_6654

    xor a

jr_033_6654:
    ld [hl], a
    ld hl, $0009
    add hl, bc
    inc [hl]
    inc [hl]
    ret


    ld hl, $000a

jr_033_665f:
    add hl, bc
    ld a, [hl]
    add $04
    cp $70
    jr c, jr_033_6668

    xor a

jr_033_6668:
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    add $08
    ld [hl], a
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    add $04
    cp $70
    jr c, jr_033_667e

    xor a

jr_033_667e:
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    add $04
    ld [hl], a
    ret


    ld hl, $0007
    add hl, bc
    ld d, [hl]
    ld hl, $000f
    add hl, bc
    ld e, [hl]
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld l, a
    and $f0
    ld h, a
    swap a
    or h
    ld h, a
    ld a, l
    and $0f
    swap a
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0007
    add hl, bc
    ld [hl], d
    ld hl, $000f
    add hl, bc
    ld [hl], e
    ret


    ld d, $18
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_033_66f1
    ret


    ld d, $18
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    inc [hl]
    srl a
    ld hl, $000b
    add hl, bc
    add [hl]
    call Call_033_66f1
    ret


    ld hl, $000f
    add hl, bc
    ld a, [hl]
    cp $20
    jr nc, jr_033_66ed

    inc [hl]
    ld hl, $000b
    add hl, bc
    ld d, [hl]
    call Call_033_6734
    xor $ff
    inc a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ret


jr_033_66ed:
    call Call_033_49bd
    ret


Call_033_66f1:
    push af
    push de
    call Call_033_6734
    sra a
    sra a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_033_6732
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ret


Call_033_670a:
    and $0f
    ld e, a
    ld hl, $0007
    add hl, bc
    add [hl]
    ld [hl], a
    srl e
    ld hl, $0008
    add hl, bc

jr_033_6719:
    dec [hl]
    dec e
    jr nz, jr_033_6719

    ret


Call_033_671e:
    pop de
    ld hl, $000e
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_033_672c:
    ld hl, $000e
    add hl, bc
    inc [hl]
    ret


Call_033_6732:
    add $10

Call_033_6734:
    and $3f
    cp $20
    jr nc, jr_033_673f

    call Call_033_6749
    ld a, h
    ret


jr_033_673f:
    and $1f
    call Call_033_6749
    ld a, h
    xor $ff
    inc a
    ret


Call_033_6749:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $677f
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_033_6758:
    srl a
    jr nc, jr_033_675d

    add hl, de

jr_033_675d:
    sla e
    rl d
    and a
    jr nz, jr_033_6758

    ret


    ld a, e
    call Call_033_6734
    ld e, a
    ret


    ld a, e
    call Call_033_6732
    ld e, a
    ret


    ld a, e
    call Call_033_6734
    ld e, l
    ld d, h
    ret


    ld a, e
    call Call_033_6732
    ld e, l
    ld d, h
    ret


    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    nop
    ld c, d
    nop
    ld h, d
    nop
    ld a, c
    nop
    adc [hl]
    nop
    and d
    nop
    or l
    nop
    add $00
    push de
    nop
    ld [c], a
    nop
    db $ed
    nop
    push af
    nop
    ei
    nop
    rst $38
    nop
    nop
    ld bc, $00ff
    ei
    nop
    push af
    nop
    db $ed
    nop
    ld [c], a
    nop
    push de
    nop
    add $00
    or l
    nop
    and d
    nop
    adc [hl]
    nop
    ld a, c
    nop
    ld h, d
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    add hl, de
    nop

Call_033_67bf:
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $000d
    add hl, bc
    ld [hl], $ff
    ret


Call_033_67d1:
jr_033_67d1:
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_033_67e1

    dec [hl]
    call Call_033_6823
    ld a, [hl+]
    push af
    jr jr_033_67fd

jr_033_67e1:
    ld hl, $000d
    add hl, bc
    inc [hl]
    call Call_033_6823
    ld a, [hl+]
    cp $fe
    jr z, jr_033_6815

    cp $ff
    jr z, jr_033_6807

    push af
    ld a, [hl]
    push hl
    and $3f
    ld hl, $000c
    add hl, bc
    ld [hl], a
    pop hl

jr_033_67fd:
    ld a, [hl]
    and $c0
    srl a
    ld [$d420], a
    pop af
    ret


jr_033_6807:
    xor a
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ld hl, $000d
    add hl, bc
    dec [hl]
    dec [hl]
    jr jr_033_67d1

jr_033_6815:
    xor a
    ld hl, $000c
    add hl, bc
    ld [hl], a
    dec a
    ld hl, $000d
    add hl, bc
    ld [hl], a
    jr jr_033_67d1

Call_033_6823:
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $685e
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000d
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ret


Call_033_683c:
    ld l, a
    ld h, $00
    ld de, $6eae
    add hl, hl
    add hl, hl
    add hl, de
    ret


Call_033_6846:
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $7cf6
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    push bc
    call $0e73
    pop bc
    ret


    ret nc

    ld l, c
    db $d3
    ld l, c
    sub $69
    reti


    ld l, c
    call c, $df69
    ld l, c
    ld [c], a
    ld l, c
    push hl
    ld l, c
    ld l, e
    ld l, d
    ld [hl], h
    ld l, d
    ld a, l
    ld l, d
    add b
    ld l, d
    add e
    ld l, d
    add [hl]
    ld l, d
    sub c
    ld l, d
    sub h
    ld l, d
    sbc c
    ld l, d
    sbc [hl]
    ld l, d
    xor a
    ld l, d
    cp h
    ld l, d
    db $d3
    ld l, d
    sub $6a
    db $db
    ld l, d
    sbc $6a
    ld b, $6b
    dec c
    ld l, e
    db $10
    ld l, e
    inc de
    ld l, e
    ld d, $6b
    add hl, de
    ld l, e
    inc e
    ld l, e
    rra
    ld l, e
    ld h, $6b
    dec hl
    ld l, e
    ld l, $6b
    scf
    ld l, e
    ld a, [hl-]
    ld l, e
    dec a
    ld l, e
    ld b, b
    ld l, e
    ld b, e
    ld l, e
    ld b, [hl]
    ld l, e
    ld c, e
    ld l, e
    ld d, b
    ld l, e
    ld h, e
    ld l, e
    ld l, b
    ld l, e
    ld l, l
    ld l, e
    ld [hl], b
    ld l, e
    ld a, b
    ld l, e
    adc c
    ld l, e
    adc [hl]
    ld l, e
    sub a
    ld l, e
    and b
    ld l, e
    xor c
    ld l, e
    or b
    ld l, e
    pop bc
    ld l, e
    jp z, $cf6b

    ld l, e
    call nc, $d96b
    ld l, e
    call c, $df6b
    ld l, e
    ld [c], a
    ld l, e
    or $69
    dec bc
    ld l, d
    jr nz, jr_033_694a

    dec [hl]
    ld l, d
    ld d, b
    ld l, d
    push hl
    ld l, e
    di
    ld l, e
    rrca
    ld l, h
    jr nz, jr_033_6958

    dec h
    ld l, h
    ld a, [hl+]
    ld l, h
    scf
    ld l, h
    ld b, h
    ld l, h
    ld c, l
    ld l, h
    db $ec
    ld l, e
    ld d, [hl]
    ld l, h
    ld h, a
    ld l, h
    ld [hl], d
    ld l, h
    ld [hl], a
    ld l, h
    ld a, h
    ld l, h
    ld a, a
    ld l, h
    add [hl]
    ld l, h
    adc e
    ld l, h
    sub d
    ld l, h
    di
    ld l, d
    or $6a
    ld bc, $976b
    ld l, h
    sbc d
    ld l, h
    sbc l
    ld l, h
    and b
    ld l, h
    xor e
    ld l, h
    or b
    ld l, h
    ret


    ld l, h
    call z, $e76c
    ld l, h
    db $ec
    ld l, h
    pop af
    ld l, h
    db $f4
    ld l, h
    rst $30
    ld l, h
    ld a, [$096c]
    ld l, l
    inc c
    ld l, l
    add hl, de
    ld l, l
    ld [hl+], a
    ld l, l
    dec hl
    ld l, l
    ld [hl-], a
    ld l, l
    add hl, sp
    ld l, l
    inc a
    ld l, l
    ccf
    ld l, l
    ld b, h
    ld l, l
    ld c, c
    ld l, l
    ld c, h
    ld l, l
    ld c, a
    ld l, l
    ld d, h
    ld l, l
    ld d, a
    ld l, l

jr_033_694a:
    ld e, d
    ld l, l
    ld e, l
    ld l, l
    ld h, d
    ld l, l
    ld h, l
    ld l, l
    or e
    ld l, h
    ld [hl], d
    ld l, l
    ld [hl], l
    ld l, l

jr_033_6958:
    adc b
    ld l, l
    ld [$8b6c], sp
    ld l, l
    adc [hl]
    ld l, l
    sub c
    ld l, l
    sub e
    ld l, l
    sub l
    ld l, l
    sbc b
    ld l, l
    sbc e
    ld l, l
    xor b
    ld l, l
    or l
    ld l, l
    cp b
    ld l, l
    cp e
    ld l, l
    cp [hl]
    ld l, l
    pop bc
    ld l, l
    call nz, $c76d
    ld l, l
    call z, $cf6d
    ld l, l
    jp nc, $d56d

    ld l, l
    ret c

    ld l, l
    db $db
    ld l, l
    sbc $6d
    pop hl
    ld l, l
    db $e4
    ld l, l
    rst $20
    ld l, l
    ld [$ed6d], a
    ld l, l
    ldh a, [$6d]
    di
    ld l, l
    or $6d
    ld sp, hl
    ld l, l
    db $fc
    ld l, l
    rst $38
    ld l, l
    ld [bc], a
    ld l, [hl]
    dec b
    ld l, [hl]
    ld [$0b6e], sp
    ld l, [hl]
    ld [de], a
    ld l, [hl]
    add hl, de
    ld l, [hl]
    ld e, $6e
    dec a
    ld l, [hl]
    ld e, h
    ld l, [hl]
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld [hl], b
    ld l, [hl]
    ld [hl], l
    ld l, [hl]
    ld a, [hl]
    ld l, [hl]
    cp [hl]
    ld l, h
    add c
    ld l, [hl]
    add h
    ld l, [hl]
    adc l
    ld l, [hl]
    sub [hl]
    ld l, [hl]
    sbc a
    ld l, [hl]
    and d
    ld l, [hl]
    and l
    ld l, [hl]
    xor b
    ld l, [hl]
    xor e
    ld l, [hl]
    nop
    ld b, $fc
    ld bc, $fc06
    ld [bc], a
    ld b, $fc
    inc bc
    ld b, $fc
    inc b
    ld b, $fc
    dec b
    ld b, $fc
    ld b, $06
    db $fc
    inc bc
    inc b
    ld bc, $0301
    inc b
    ld bc, $0301
    inc b
    ld bc, $0301
    inc b
    ld bc, $fc01
    ld c, e
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, l
    inc b
    ld c, [hl]
    ld [bc], a
    db $fd
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    db $fd
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    db $fd
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    db $fc
    ld c, e
    ld b, d
    ld c, h
    ld b, d
    ld c, l
    ld b, h
    ld c, [hl]
    ld b, d
    db $fd
    ld [bc], a
    ld c, [hl]
    ld b, d
    db $fd
    ld [bc], a
    ld c, [hl]
    ld b, d
    db $fd
    ld [bc], a
    ld c, [hl]
    ld b, d
    db $fc
    ld c, e
    jp nz, $c24c

    ld c, l
    call nz, $c24e
    db $fd
    ld [bc], a
    ld c, [hl]
    jp nz, $02fd

    ld c, [hl]
    jp nz, $02fd

    ld c, [hl]
    jp nz, Jump_033_4bfc

    ld bc, HeaderMaskROMVersion
    ld c, l
    ld bc, $014f
    ld d, b
    ld bc, $0151
    ld d, d
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, d
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, d
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, d
    ld [bc], a
    db $fc
    ld c, e
    ld b, c
    ld c, h
    ld b, c
    ld c, l
    ld b, c
    ld c, a
    ld b, c
    ld d, b
    ld b, c
    ld d, c
    ld b, c
    ld d, d
    ld b, d
    db $fd
    ld [bc], a
    ld d, d
    ld b, d
    db $fd
    ld [bc], a
    ld d, d
    ld b, d
    db $fd
    ld [bc], a
    ld d, d
    ld b, d
    db $fc
    nop
    inc bc
    rlca
    inc bc
    ld [$0903], sp
    inc bc
    db $fc
    ld a, [bc]
    rlca
    dec bc
    rlca
    ld a, [bc]
    rlca
    dec bc
    ld b, a
    cp $0c
    ld [$0dff], sp
    ld [$0aff], sp
    ld [$0aff], sp
    rlca
    dec bc
    rlca
    ld a, [bc]
    rlca
    dec bc
    ld b, a
    ld a, [bc]
    rlca
    rst $38
    ld a, [bc]
    ld [$0aff], sp
    inc b
    ld c, $04
    cp $0f
    inc b
    db $10
    inc b
    cp $10
    inc b
    rrca
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    db $fc
    db $10
    ld bc, $010f
    ld [de], a
    ld bc, $0111
    ld [de], a
    ld bc, $010f
    cp $10
    inc bc
    rrca
    inc bc
    ld [de], a
    ld bc, $01fd
    ld [de], a
    ld bc, $01fd
    ld [de], a
    ld bc, $01fd
    ld [de], a
    ld bc, $01fd
    ld [de], a
    inc bc
    db $fc
    inc de
    inc d
    db $fc
    db $10
    ld bc, $010f
    cp $14
    ld [$17ff], sp
    inc b
    ld d, $08
    dec d
    ld [$0816], sp
    rla
    inc b
    rla
    inc b
    ld d, $48
    dec d
    ld c, b
    ld d, $48
    rla
    inc b
    cp $69
    ld [$69ff], sp
    jr nz, jr_033_6b63

    inc b
    ld l, e
    inc b
    ld l, l
    inc b
    ld l, h
    inc b
    rst $38
    ld l, h
    ld [$086d], sp
    cp $18
    inc b
    add hl, de
    inc b
    ld a, [de]
    inc b
    db $fc
    dec de
    ld [$0fff], sp
    ld [$1cff], sp
    ld [$0aff], sp
    ld [$1dfc], sp
    ld [$17ff], sp
    ld [$0fff], sp
    inc bc
    db $10
    inc bc
    ld e, $03
    rst $38
    rra
    db $10
    jr nz, jr_033_6b2d

    db $fc
    jr nz, @+$0a

jr_033_6b2d:
    rst $38
    jr nz, jr_033_6b38

    ld hl, $1b08
    ld [$0821], sp
    cp $22

jr_033_6b38:
    ld [$1bff], sp
    ld [$23ff], sp
    ld [$24ff], sp
    ld [$25ff], sp
    ld [$26ff], sp
    ld [$0827], sp
    rst $38
    jr z, jr_033_6b55

    add hl, hl
    ld [$2afc], sp
    ld bc, $012b
    inc l

jr_033_6b55:
    ld bc, $012d
    ld l, $01
    dec l
    ld bc, $012c
    dec hl
    ld bc, $012a
    db $fc

jr_033_6b63:
    inc d
    ld bc, $0115
    cp $2f
    inc b
    jr nc, jr_033_6b94

    db $fc
    ld sp, $ff08
    ld [hl-], a
    jr nz, jr_033_6ba6

    jr nz, jr_033_6ba9

    jr nz, jr_033_6bac

    jr nz, @-$01

    ld [bc], a
    dec [hl]
    inc b
    db $fd
    ld [bc], a
    dec [hl]
    inc b
    db $fd
    ld [bc], a
    dec [hl]
    inc b
    db $fd
    ld [bc], a
    dec [hl]
    inc b
    db $fc
    inc d
    inc b
    dec d
    inc b
    cp $36
    ld [bc], a
    scf
    ld [bc], a
    jr c, @+$04

jr_033_6b94:
    add hl, sp
    jr nz, @-$02

    ld a, [hl-]
    ld [bc], a
    dec sp
    ld [bc], a
    inc a

jr_033_6b9c:
    ld [bc], a
    dec a
    jr nz, jr_033_6b9c

    ld a, [hl-]
    ld b, d
    dec sp
    ld b, d
    inc a
    ld b, d

jr_033_6ba6:
    dec a
    ld h, b
    db $fc

jr_033_6ba9:
    ld a, $08
    ccf

jr_033_6bac:
    ld [$0840], sp
    rst $38
    ld b, b
    ld [bc], a
    db $fd
    ld [bc], a
    ld b, b
    ld [bc], a
    db $fd
    ld [bc], a
    ld b, c
    ld [bc], a
    db $fd
    ld [bc], a
    ld b, c
    ld [bc], a
    db $fd
    ld [bc], a
    cp $42
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, l
    ld [bc], a
    cp $19
    ld [bc], a
    db $fd
    ld [bc], a
    cp $46
    inc b
    ld b, a
    inc b
    cp $18
    ld [bc], a
    db $fd
    ld [bc], a
    cp $48
    ld [$48ff], sp
    ld c, b
    rst $38
    ld c, c
    ld [$4aff], sp
    ld [$20ff], sp
    db $10
    rra
    db $10
    ld e, $10
    rst $38
    jr nz, jr_033_6bf6

    rra
    ld [$081e], sp
    rst $38
    db $fd
    inc d
    ld d, l

jr_033_6bf6:
    jr z, jr_033_6c4c

    jr z, @+$55

    inc d
    db $fd
    inc b
    ld d, e
    inc b
    db $fd
    inc b
    ld d, e
    inc b
    db $fd
    inc b
    ld d, e
    inc b
    db $fc
    ld e, $08
    rra
    ld [$0820], sp
    db $fc
    db $fd
    nop
    inc d
    nop
    dec d
    nop
    inc d
    ld b, b
    db $fd
    nop
    ld d, $40
    dec d
    nop
    ld d, $00
    cp $56
    ld [bc], a
    ld d, a
    inc b
    db $fc
    ld d, [hl]
    jp nz, $c457

    db $fc
    ld d, [hl]
    ld bc, $0157
    ld e, b
    ld bc, $c157
    ld e, b
    pop bc
    ld d, a
    ld [bc], a
    db $fc
    ld d, [hl]
    pop bc
    ld d, a
    pop bc
    ld e, b
    pop bc
    ld d, a
    ld bc, $0158
    ld d, a
    jp nz, Jump_033_57fc

    pop bc
    ld e, b
    pop bc
    ld d, a
    ld bc, $0158

jr_033_6c4c:
    cp $59
    ld bc, $015a
    ld e, e
    ld bc, $025c
    db $fc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld b, e
    ld e, l
    ld b, e
    dec bc
    jp $820a


    dec bc
    add c
    ld e, l
    ld bc, $010b
    cp $0a
    inc bc
    dec bc
    ld b, a
    ld a, [bc]
    rlca
    dec bc
    rlca
    ld a, [bc]
    inc bc
    cp $5e

jr_033_6c73:
    jr nz, @+$60

    jr nz, jr_033_6c73

    ld e, a

jr_033_6c78:
    jr nz, jr_033_6cd9

    jr nz, jr_033_6c78

    ld h, b
    ld [$61ff], sp
    ld bc, $0162
    ld h, e
    ld bc, $63ff
    rlca
    ld h, h
    rlca
    cp $65
    ld bc, $0166
    ld h, a
    ld bc, $67ff
    rlca
    ld l, b
    rlca
    cp $6e
    ld [$6fff], sp
    ld [$6eff], sp
    adc b
    rst $38
    jr jr_033_6ca6

    ld [hl], b
    inc b
    ld [hl], c
    inc b

jr_033_6ca6:
    ld [hl], d
    inc b
    ld [hl], e
    inc b
    db $fc
    ld [hl], h
    inc b
    ld [hl], l
    inc b
    cp $14
    ld [$74ff], sp
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    db $fc
    inc d
    nop
    dec d
    nop
    inc d
    nop
    dec d
    nop
    ld [hl], h
    inc c
    db $fc
    db $76
    ld [$77ff], sp
    ld bc, $0178
    ld a, c
    ld bc, $017a
    ld a, e
    ld bc, $017c
    ld a, l

jr_033_6cd9:
    ld bc, $c17c
    ld a, e
    pop bc
    ld a, d
    pop bc
    ld a, c
    pop bc
    ld a, b
    pop bc
    ld [hl], a
    pop bc
    db $fc
    dec de
    inc b
    ld a, [hl]
    inc b
    cp $1b
    ld b, h
    ld a, [hl]
    ld b, h
    cp $7f
    ld [$25ff], sp
    ld [$80ff], sp
    ld [$83ff], sp
    rlca
    add d
    rlca
    add c
    rlca
    add d

jr_033_6d01:
    rlca
    add e

jr_033_6d03:
    rlca
    add d

jr_033_6d05:
    rlca
    add c

jr_033_6d07:
    rlca
    db $fc
    dec de

jr_033_6d0a:
    db $10
    db $fc
    db $fd
    rrca
    add h
    rrca
    add l
    rrca
    add hl, hl
    rrca
    jr z, jr_033_6d25

    add [hl]
    jr nz, @-$02

    dec de
    inc bc
    add a
    inc bc
    adc b
    inc bc
    adc c
    inc bc
    db $fc
    adc d
    ld [bc], a
    adc e

jr_033_6d25:
    ld [bc], a
    adc h
    ld [bc], a
    adc l
    ld [bc], a
    db $fc
    ld h, c
    ld [bc], a
    ld h, d
    ld [bc], a
    ld h, e
    ld [bc], a
    rst $38
    ld h, l
    ld [bc], a
    ld h, [hl]
    ld [bc], a
    ld h, a
    ld [bc], a
    rst $38
    adc [hl]
    ld [$8eff], sp
    ld c, b
    rst $38
    adc a
    db $10
    sub b
    db $10
    cp $91
    db $10
    sub d
    db $10
    cp $93
    ld [$1eff], sp
    ld [$1bff], sp
    rlca
    sub h
    rlca
    cp $95
    ld [$96ff], sp
    ld [$95ff], sp
    ld [$97ff], sp
    ld bc, $4197
    cp $98
    ld [$99ff], sp
    jr nz, jr_033_6d01

    jr nz, jr_033_6d03

    jr nz, jr_033_6d05

    jr nz, jr_033_6d07

    jr nz, jr_033_6d0a

    ld [$9bff], sp
    ld [$9cff], sp
    ld [bc], a
    sbc l
    ld [bc], a
    sbc [hl]
    ld [$02fd], sp
    sbc [hl]
    ld [bc], a
    db $fd
    ld [bc], a
    sbc [hl]
    ld [bc], a
    db $fd
    ld [bc], a
    sbc [hl]
    ld [bc], a
    db $fc
    sbc a
    ld [$0fff], sp
    ld [$6bff], sp
    jr @-$02

    and b
    ld bc, $01a1
    and d
    ld bc, $a3fc
    ld [$a4ff], sp
    inc b
    and l
    inc b
    and [hl]
    inc b
    and a
    inc b
    and [hl]
    ld b, h
    and l
    ld b, h
    cp $a8
    inc b
    xor c
    inc b
    xor d
    inc b
    xor e
    inc b
    xor d
    ld b, h
    xor c
    ld b, h
    cp $1b
    ld [$acff], sp
    ld [$adff], sp
    ld [$aeff], sp
    ld [$afff], sp
    ld [$b0ff], sp
    jr nz, @-$02

    or c
    rlca
    or c
    ld b, a
    cp $b2
    ld [$b3ff], sp
    ld [$b3ff], sp
    ld c, b
    rst $38
    or e
    adc b
    rst $38
    or e
    ret z

    rst $38
    or l
    ld [$b5ff], sp
    ld c, b
    rst $38
    or l
    adc b
    rst $38
    or l
    ret z

    rst $38
    or h
    ld [$6bff], sp
    ld [$b6ff], sp
    ld [$b7ff], sp
    jr nz, @+$01

    dec de
    jr nz, @+$01

    cp b
    jr nz, @+$01

    cp b
    ld h, b
    rst $38
    cp c
    jr nz, @+$01

    cp d
    jr nz, @+$01

    cp e
    ld h, b
    rst $38
    cp e
    jr nz, @+$01

    cp h
    jr nz, @+$01

    cp l
    dec bc
    cp [hl]
    dec bc
    dec de
    dec bc
    db $fc
    cp a
    inc b
    ret nz

    inc b
    pop bc
    inc b
    db $fc
    jp nz, $c220

    jr nz, @-$02

    ld c, e
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, l
    jr nz, jr_033_6e72

    jr nz, jr_033_6e74

    jr nz, jr_033_6e78

    ld bc, $0150
    ld d, c
    ld bc, $0252
    db $fd
    ld [bc], a
    ld d, d
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, d
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, d
    ld [bc], a
    db $fc
    ld c, e
    jp nz, $c24c

    ld c, l
    ldh [rKEY1], a
    ldh [rKEY1], a
    ldh [rVBK], a
    pop bc
    ld d, b
    pop bc
    ld d, c
    pop bc
    ld d, d
    jp nz, $02fd

    ld d, d
    jp nz, $02fd

    ld d, d
    jp nz, $02fd

    ld d, d
    jp nz, $c3fc

    ld bc, $c1c3
    cp $c4
    jr nz, @+$01

    push bc
    inc b
    add $04
    rst $00
    inc b
    db $fc
    ret z

    ld bc, $41c8
    cp $c9
    inc bc

jr_033_6e72:
    dec b
    inc bc

jr_033_6e74:
    db $fc
    jp z, $cb20

jr_033_6e78:
    inc bc
    jp z, $cb03

    inc bc
    cp $03
    and b
    rst $38
    call z, $ff20
    ld a, a
    ld [bc], a
    dec h
    ld [bc], a
    add b
    ld [bc], a
    dec h
    ld [bc], a
    cp $cd
    inc b
    adc $04
    call $cec4
    call nz, $cffe
    inc b
    ret nc

    inc b
    pop de
    inc b
    jp nc, $fc04

    db $d3
    jr nz, @+$01

    call nc, $ff08
    push de
    ld [$d6ff], sp
    ld [$d7ff], sp
    ld [$00ff], sp
    db $10
    or $72
    inc b
    add hl, bc
    ld h, d
    ld [hl], d
    ld [$2e04], sp
    ld [hl], d
    add hl, bc
    inc b
    ld e, $72
    dec c
    inc b
    add [hl]
    ld [hl], e
    rrca
    inc b
    ld e, $72
    inc de
    inc b
    add [hl]
    ld [hl], e
    inc b
    db $10
    or $72
    ld [$f610], sp
    ld [hl], d
    ld [$3610], sp
    ld [hl], e
    nop
    inc b
    add [hl]
    ld [hl], e
    ld [bc], a
    inc b
    ld e, $72
    ld b, $02
    db $76
    ld [hl], e
    rlca
    ld [bc], a
    db $76
    ld [hl], e
    ld [bc], a
    inc b
    add [hl]
    ld [hl], e
    inc b
    ld bc, $7736
    dec b
    ld bc, $7736
    nop
    ld [bc], a
    ld c, $72
    ld [bc], a
    ld [bc], a
    ld c, $72
    nop
    inc b
    and [hl]
    ld [hl], e
    nop
    ld bc, $7736
    ld bc, $3601
    ld [hl], a
    ld [bc], a
    ld bc, $7736
    inc bc
    ld bc, $7736
    nop
    inc b
    ld l, $72
    ld bc, $f610
    ld [hl], d
    dec b
    db $10
    or $72
    nop
    inc b
    ld e, $72
    dec b
    inc c
    or [hl]
    ld [hl], d
    ld [bc], a
    inc b
    ld l, $72
    ld b, $01
    ld [hl], $77
    rlca
    ld bc, $7736
    ld [$3601], sp
    ld [hl], a
    inc b
    inc b
    ld e, $72
    add hl, bc
    ld d, $b6
    ld [hl], e
    inc b
    ld [bc], a
    ld c, $72
    ld b, $02
    ld c, $72
    inc c
    ld bc, $7736
    ld a, [bc]
    ld bc, $7736
    dec bc
    inc b
    ld l, $72
    ld [$8604], sp
    ld [hl], e
    ld b, $04
    add [hl]
    ld [hl], e
    nop
    dec b
    ld c, $74
    inc bc
    ld b, $22
    ld [hl], h
    nop
    rlca
    ld a, [hl-]
    ld [hl], h
    inc bc
    ld [$7456], sp
    nop
    add hl, bc
    db $76
    ld [hl], h
    nop
    inc b
    sbc d
    ld [hl], h
    ld [bc], a
    inc b
    xor d
    ld [hl], h
    inc b
    ld b, $ba
    ld [hl], h
    nop
    ld [bc], a
    jp c, $0074

    rlca
    ld [de], a
    ld [hl], l
    nop
    ld c, $da
    ld [hl], h
    nop
    dec d
    ld [de], a
    ld [hl], l
    nop
    ld [bc], a
    ld h, [hl]
    ld [hl], l
    nop
    ld b, $66
    ld [hl], l
    nop
    ld a, [bc]
    ld h, [hl]
    ld [hl], l
    nop
    ld c, $66
    ld [hl], l
    nop
    ld [bc], a
    sbc [hl]
    ld [hl], l
    nop
    ld b, $9e
    ld [hl], l
    nop
    ld a, [bc]
    sbc [hl]
    ld [hl], l
    nop
    ld c, $9e
    ld [hl], l
    nop
    inc b
    sub $75
    nop
    db $10
    sub $75
    nop
    ld a, [de]
    sub $75
    nop
    ld a, [de]
    ld a, $76
    ld c, $04
    and [hl]
    db $76
    ld c, $08
    and [hl]
    db $76
    ld c, $04
    add $76
    ld c, $08
    add $76
    ld c, $04
    and $76
    ld c, $04
    or $76
    nop
    ld b, $06
    ld [hl], a
    inc bc
    inc b
    ld e, $77
    inc bc
    ld [bc], a
    ld l, $77
    ld bc, $3605
    ld [hl], a
    ld bc, $4a06
    ld [hl], a
    ld bc, $6207
    ld [hl], a
    ld bc, $6203
    ld [hl], a
    ld bc, $7e08
    ld [hl], a
    ld bc, $9e09
    ld [hl], a
    ld bc, $c20a
    ld [hl], a
    ld bc, $c206
    ld [hl], a
    nop
    add hl, bc
    ld h, d
    ld [hl], d
    inc b
    inc b
    ld l, $72
    dec b
    inc b
    ld l, $72
    nop
    ld [bc], a
    ld d, $72
    ld [bc], a
    ld [bc], a
    ld d, $72
    inc b
    ld [bc], a
    ld d, $72
    ld [bc], a
    inc b
    ld [$0277], a
    inc b
    ld a, [$0277]
    ld [bc], a
    db $76
    ld [hl], e
    inc b
    ld [bc], a
    db $76
    ld [hl], e
    ld b, $04
    sub [hl]
    ld [hl], e
    ld [$7602], sp
    ld [hl], e
    add hl, bc
    ld [bc], a
    db $76
    ld [hl], e
    dec b
    ld [bc], a
    ld a, [bc]
    ld a, b
    nop
    ld [bc], a
    ld [de], a
    ld a, b
    nop
    dec b
    ld [de], a
    ld a, b
    nop
    add hl, bc
    ld [de], a
    ld a, b
    add hl, bc
    add hl, bc
    ld [de], a
    ld a, b
    nop
    inc b
    ld [hl], $78
    nop
    rlca
    ld [hl], $78
    nop
    add hl, bc
    ld [hl], $78
    add hl, bc
    add hl, bc
    ld [hl], $78
    inc b
    ld bc, $780e
    dec b
    ld [bc], a
    ld a, [hl]
    ld [hl], e
    ld b, $04
    ld e, $72
    ld a, [bc]
    inc b
    ld e, $72
    ld c, $04
    ld e, $72
    ld [$f605], sp
    ld a, b
    dec c
    inc bc
    ld a, [bc]
    ld a, c
    ld bc, $0608
    ld a, d
    inc bc
    ld [$7a06], sp
    dec b
    ld [$7a06], sp
    rlca
    ld [$7a06], sp
    ld b, $04
    ld l, $72
    rlca
    inc b
    ld l, $72
    ld a, [bc]
    ld [bc], a
    jp nc, $0074

    ld bc, $7916
    nop
    inc bc
    ld a, [de]
    ld a, c
    nop
    ld b, $26
    ld a, c
    nop
    add hl, bc
    ld a, $79
    nop
    inc c
    ld h, d
    ld a, c
    nop
    ld c, $92
    ld a, c
    nop
    rrca
    jp z, $0479

    inc b
    ld e, $72
    ld [$1e04], sp
    ld [hl], d
    dec c
    ld bc, $7736
    ld c, $04
    ld h, $7a
    db $10
    ld bc, $7736
    ld de, $3601
    ld [hl], a
    inc b
    ld [bc], a
    ld a, [hl]
    ld [hl], e
    dec b
    ld [bc], a
    ld a, [hl]
    ld [hl], e
    ld a, [bc]
    inc b
    add [hl]
    ld [hl], e
    nop
    ld [$7a36], sp
    nop
    inc c
    db $76
    ld a, d
    nop
    db $10
    ld [hl], $7a
    add hl, bc
    ld [bc], a
    and [hl]
    ld a, d
    add hl, bc
    inc b
    and [hl]
    ld a, d
    add hl, bc
    ld b, $a6
    ld a, d
    add hl, bc
    ld [$7aa6], sp
    ld [de], a
    dec b
    add $7a
    nop
    inc b
    jp c, $047a

    inc b
    jp c, $087a

    inc b
    jp c, $0c7a

    inc b
    jp c, $007a

    ld b, $ea
    ld a, d
    inc b
    inc b
    ld e, $72
    ld a, [bc]
    inc b
    add [hl]
    ld [hl], e
    dec d
    inc b
    xor d
    ld [hl], h
    inc b
    inc b
    xor d
    ld [hl], h
    inc c
    inc b
    add [hl]
    ld [hl], e
    ld a, [bc]
    inc b
    ld [bc], a
    ld a, e
    inc c
    inc b
    ld e, $72
    nop
    inc h
    ld [de], a
    ld a, e
    dec c
    ld [bc], a
    and d
    ld a, e
    dec c
    inc b
    and d
    ld a, e
    dec c
    ld b, $a2
    ld a, e
    ld [bc], a
    ld [$7bba], sp
    ld [$da07], sp
    ld a, e
    ld [$da05], sp
    ld a, e
    ld [$da03], sp
    ld a, e
    nop
    db $10
    or [hl]
    ld [hl], d
    nop
    add hl, bc
    or $7b
    ld b, $09
    or $7b
    inc c
    add hl, bc
    or $7b
    ld [de], a
    add hl, bc
    or $7b
    jr @+$0b

    or $7b
    ld e, $09
    or $7b
    inc h
    add hl, bc
    or $7b
    ld a, [hl+]
    add hl, bc
    or $7b
    inc bc
    inc b
    ld a, [de]
    ld a, h
    ld [de], a
    inc b
    ld e, $72
    db $10
    inc b
    add [hl]
    ld [hl], e
    ld d, $01
    ld [hl], $77
    rla
    inc b
    ld l, $72
    jr jr_033_7178

    ld e, $72
    inc e
    inc b

jr_033_7178:
    ld e, $72
    jr nz, jr_033_717f

    ld e, $72
    inc hl

jr_033_717f:
    inc b
    add [hl]
    ld [hl], e
    dec h
    inc bc
    ld e, $72
    rla
    inc b
    ld e, $72
    ld a, [bc]
    db $10
    or $72
    db $10
    db $10
    or [hl]
    ld [hl], d
    nop
    db $10
    or [hl]
    ld [hl], d
    inc b
    inc b
    ld e, $72
    ld [$0e02], sp
    ld [hl], d
    jr nz, jr_033_71a6

    ld a, [hl+]
    ld a, h
    ld [$3601], sp
    ld [hl], a

jr_033_71a6:
    inc b
    inc b
    ld e, $72
    ld a, [de]
    inc b
    xor d
    ld [hl], h
    ld d, $09
    ld h, d
    ld [hl], d
    db $10
    db $10
    ld b, d
    ld a, h
    add hl, bc
    ld b, $82
    ld a, h
    ld de, $3e09
    ld [hl], d
    ld c, $04
    ld e, $72
    dec bc
    inc b
    xor d
    ld [hl], h
    inc e
    ld b, $2e
    ld [hl], d
    jr nz, jr_033_71dc

    ld b, d
    ld a, h
    dec b
    ld b, $9a
    ld a, h
    dec bc
    inc b
    ld e, $72
    add hl, bc
    inc b
    or d
    ld a, h
    dec bc
    inc b

jr_033_71dc:
    add [hl]
    ld [hl], e
    ld de, $c20d
    ld a, h
    nop
    add hl, bc
    ld a, $72
    add hl, bc
    add hl, bc
    ld a, $72
    nop
    inc c
    add [hl]
    ld [hl], d
    ld b, $0c
    add [hl]
    ld [hl], d
    inc c
    inc c
    add [hl]
    ld [hl], d
    ld [de], a
    inc c
    add [hl]
    ld [hl], d
    nop
    dec c
    jp nz, $007c

    rlca
    ld e, d
    ld a, b
    nop
    ld b, $ae
    ld a, b
    nop
    ld c, $76
    ld a, b
    nop
    inc c
    add $78
    ld hl, sp-$04
    nop
    nop
    nop
    db $fc
    ld bc, $fc00
    ld hl, sp+$00
    nop
    db $fc
    nop
    ld bc, $f800
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$02
    nop
    nop
    nop
    inc bc
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_033_7237

jr_033_7237:
    ld hl, sp+$00
    ld b, b
    nop
    nop
    nop
    ld h, b
    db $f4
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $f400
    inc b
    ld [bc], a
    nop
    db $fc
    db $f4
    inc bc
    nop
    db $fc
    db $fc
    inc b
    nop
    db $fc
    inc b
    dec b
    nop
    inc b
    db $f4
    ld b, $00
    inc b
    db $fc
    rlca
    nop
    inc b
    inc b
    ld [$f400], sp
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $f400

jr_033_726b:
    inc b
    nop
    jr nz, jr_033_726b

    db $f4
    ld [bc], a
    nop
    db $fc
    db $fc
    inc bc
    nop
    db $fc
    inc b
    ld [bc], a
    ld h, b
    inc b
    db $f4
    nop
    ld b, b
    inc b
    db $fc
    ld bc, $0460
    inc b
    nop
    ld h, b
    ldh a, [$f4]
    nop
    nop
    ldh a, [$fc]
    ld bc, $f000
    inc b
    ld [bc], a
    nop
    ld hl, sp-$0c
    inc bc
    nop
    ld hl, sp-$04
    inc b
    nop
    ld hl, sp+$04
    dec b
    nop
    nop
    db $f4
    dec b
    ld h, b
    nop
    db $fc
    inc b
    ld h, b
    nop
    inc b
    inc bc
    ld h, b
    ld [$02f4], sp
    ld h, b
    ld [$01fc], sp
    ld h, b
    ld [$0004], sp
    ld h, b
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    ld bc, $f000
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    inc bc
    nop
    ld hl, sp-$10
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    ld b, $00
    ld hl, sp+$08
    rlca
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp+$09
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld [$000b], sp
    ld [$0cf0], sp
    nop
    ld [$0df8], sp
    nop
    ld [$0e00], sp
    nop
    ld [$0f08], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    ld bc, $f800
    ldh a, [rSC]
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rP1]
    ld bc, $f020

jr_033_730b:
    ld [$2000], sp
    ld hl, sp+$00
    inc bc
    jr nz, jr_033_730b

    ld [$2002], sp
    nop
    ldh a, [rSC]
    ld b, b
    nop
    ld hl, sp+$03
    ld b, b
    ld [$00f0], sp
    ld b, b
    ld [$01f8], sp
    ld b, b
    nop
    nop
    inc bc
    ld h, b
    nop
    ld [$6002], sp
    ld [$0100], sp
    ld h, b
    ld [$0008], sp
    ld h, b
    db $ec
    db $ec
    nop
    nop
    db $ec
    db $f4
    ld bc, $f400
    db $ec
    ld [bc], a
    nop
    db $f4

jr_033_7343:
    db $f4
    inc bc
    nop
    db $ec

jr_033_7347:
    inc b
    ld bc, $ec20
    inc c
    nop
    jr nz, jr_033_7343

    inc b
    inc bc
    jr nz, jr_033_7347

    inc c
    ld [bc], a
    jr nz, jr_033_735b

    db $ec
    ld [bc], a
    ld b, b
    inc b

jr_033_735b:
    db $f4
    inc bc
    ld b, b
    inc c
    db $ec
    nop
    ld b, b
    inc c
    db $f4
    ld bc, $0440
    inc b
    inc bc
    ld h, b
    inc b
    inc c
    ld [bc], a
    ld h, b
    inc c
    inc b
    ld bc, $0c60
    inc c
    nop
    ld h, b
    db $fc
    ld hl, sp+$00
    nop
    db $fc
    nop
    nop
    jr nz, jr_033_737f

jr_033_737f:
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    jr nz, jr_033_737f

    ld hl, sp+$00
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_033_738f

jr_033_738f:
    ld hl, sp+$01
    nop
    nop
    nop
    ld bc, $f820
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$00
    ld b, b
    nop
    nop
    ld bc, $fa40
    ld hl, sp+$02
    nop
    ld [bc], a
    ld hl, sp+$03
    nop
    or $00
    ld [bc], a
    nop
    cp $00
    inc bc
    nop
    ld [$01a8], sp
    nop
    nop
    or b
    ld [bc], a
    nop
    nop
    cp b
    inc bc
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret z

    inc bc
    nop
    nop
    ret nc

    nop
    nop
    nop
    ret c

    inc bc
    nop
    nop
    ldh [rP1], a
    nop
    nop
    add sp, $03
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    ld hl, sp+$08
    inc bc
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$18
    inc bc
    nop
    ld hl, sp+$20
    nop
    nop
    ld hl, sp+$28
    inc bc
    nop
    ld hl, sp+$30
    nop
    nop
    ld hl, sp+$38
    inc bc
    nop
    ld hl, sp+$40
    nop
    nop
    ld hl, sp+$48
    ld bc, $f000

jr_033_740b:
    ld d, b
    ld [bc], a
    nop
    db $ec
    ld hl, sp+$00
    nop
    db $ec
    nop
    nop
    jr nz, jr_033_740b

jr_033_7417:
    ld hl, sp+$01
    nop
    db $f4
    nop
    ld bc, $fc20
    db $fc
    ld [bc], a
    nop
    db $e4
    ld hl, sp+$00
    nop
    db $e4

jr_033_7427:
    nop
    nop
    jr nz, jr_033_7417

    ld hl, sp+$01
    nop
    db $ec
    nop
    ld bc, $f420
    db $fc
    ld [bc], a
    nop
    db $fc
    db $fc
    ld [bc], a
    nop
    call c, $00f8
    nop
    call c, RST_00
    jr nz, jr_033_7427

    ld hl, sp+$01
    nop
    db $e4
    nop
    ld bc, $ec20

jr_033_744b:
    db $fc
    ld [bc], a
    nop
    db $f4
    db $fc
    ld [bc], a
    nop
    db $fc

jr_033_7453:
    db $fc
    ld [bc], a
    nop
    call nc, $00f8
    nop
    call nc, RST_00
    jr nz, @-$22

    ld hl, sp+$01
    nop
    call c, Boot
    jr nz, jr_033_744b

    db $fc
    ld [bc], a
    nop
    db $ec
    db $fc
    ld [bc], a
    nop
    db $f4
    db $fc
    ld [bc], a
    nop
    db $fc
    db $fc
    ld [bc], a
    nop
    call z, $00f8
    nop
    call z, RST_00
    jr nz, jr_033_7453

    ld hl, sp+$01
    nop
    call nc, Boot
    jr nz, @-$22

    db $fc
    ld [bc], a
    nop
    db $e4
    db $fc
    ld [bc], a
    nop
    db $ec
    db $fc
    ld [bc], a
    nop
    db $f4
    db $fc
    ld [bc], a
    nop
    db $fc
    db $fc
    ld [bc], a
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_033_74a3

jr_033_74a3:
    ld hl, sp+$01
    nop
    nop
    nop
    nop
    ld h, b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$01
    ld h, b
    nop
    nop
    nop
    ld h, b
    db $f4
    ld hl, sp+$00
    nop
    db $f4
    nop
    ld bc, $fc00
    ld hl, sp+$02
    nop
    db $fc
    nop
    inc bc
    nop
    inc b
    ld hl, sp+$04
    nop
    inc b
    nop
    dec b
    nop
    db $fd
    ld hl, sp+$00
    nop
    ld sp, hl
    nop
    nop
    nop
    ld hl, sp-$0c
    nop
    nop
    ld hl, sp+$04
    nop
    nop
    add sp, -$0c
    nop
    nop
    add sp, $04
    nop
    nop
    ldh a, [$ec]
    nop
    nop
    ldh a, [$f4]
    ld bc, $f000
    db $fc
    nop
    nop
    ldh a, [rDIV]
    ld bc, $f000
    inc c
    nop
    nop
    ld hl, sp-$1c
    nop
    nop
    ld hl, sp-$14
    ld bc, $f800
    db $fc
    ld bc, $f800
    inc c
    ld bc, $f800
    inc d
    nop
    nop
    ldh a, [$f4]
    nop
    nop
    ldh a, [rDIV]
    nop
    nop
    ld hl, sp-$14
    nop
    nop
    ld hl, sp-$0c
    ld bc, $f800
    db $fc
    nop
    nop
    ld hl, sp+$04
    ld bc, $f800
    inc c
    nop
    nop
    ldh [$f4], a
    nop
    nop
    ldh [rDIV], a
    nop
    nop
    add sp, -$14
    nop
    nop
    add sp, -$0c
    ld bc, $e800
    db $fc
    nop
    nop
    add sp, $04
    ld bc, $e800
    inc c
    nop
    nop
    ldh a, [$e4]
    nop
    nop
    ldh a, [$ec]
    ld bc, $f000
    db $fc
    ld bc, $f000
    inc c
    ld bc, $f000
    inc d
    nop
    nop
    ld hl, sp-$1c
    ld bc, $f800
    inc d
    ld bc, $cc00
    ld hl, sp+$00
    nop
    call z, Boot
    nop
    call nc, $02f8
    nop
    call nc, $0300
    nop
    call c, $04f8
    nop
    call c, $0500
    nop
    db $e4
    ld hl, sp+$06
    nop
    db $e4
    nop
    rlca
    nop
    db $ec
    ld hl, sp+$08
    nop
    db $ec
    nop
    add hl, bc
    nop
    db $f4
    ld hl, sp+$0a
    nop
    db $f4
    nop
    dec bc
    nop
    db $fc
    ld hl, sp+$0c
    nop
    db $fc
    nop
    dec c
    nop
    call z, $0cf8
    nop
    call z, $0d00
    nop
    call nc, $08f8
    nop
    call nc, $0900
    nop
    call c, $04f8
    nop
    call c, $0500
    nop
    db $e4
    ld hl, sp+$00
    nop
    db $e4
    nop
    ld bc, $ec00
    ld hl, sp+$02
    nop
    db $ec
    nop
    inc bc
    nop
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld [$0003], sp
    db $fc
    nop
    ld a, [bc]
    nop
    db $fc
    ld [$000b], sp
    inc c
    ldh a, [rP1]
    ld b, b
    inc c
    ld hl, sp+$02
    ld b, b
    inc c
    nop
    ld [bc], a
    ld h, b
    inc c
    ld [$6000], sp
    db $fc

jr_033_75e7:
    add sp, $09
    jr nz, jr_033_75e7

jr_033_75eb:
    ldh a, [$08]
    jr nz, jr_033_75eb

    ld hl, sp+$06
    nop
    db $fc
    nop
    rlca
    nop
    db $fc
    ld [$0008], sp
    db $fc
    db $10
    add hl, bc
    nop
    inc b
    add sp, $01
    jr nz, jr_033_7607

    ldh a, [rP1]
    jr nz, jr_033_760b

jr_033_7607:
    ld hl, sp+$0c
    nop
    inc b

jr_033_760b:
    nop
    dec c
    nop
    inc b

jr_033_760f:
    ld [$0000], sp
    inc b
    db $10
    ld bc, $ec00
    ldh a, [rP1]
    nop
    db $ec
    ld hl, sp+$02
    nop
    db $ec

jr_033_761f:
    nop
    ld [bc], a
    jr nz, jr_033_760f

jr_033_7623:
    ld [$2000], sp
    db $f4
    add sp, $03
    jr nz, jr_033_761f

    ldh a, [rSC]
    jr nz, jr_033_7623

    ld hl, sp+$04
    nop
    db $f4
    nop
    dec b
    nop
    db $f4

jr_033_7637:
    ld [$0002], sp
    db $f4
    db $10
    inc bc
    nop
    db $ec
    ldh a, [rP1]
    nop
    db $ec
    ld hl, sp+$02
    nop
    db $ec
    nop
    ld [bc], a
    jr nz, jr_033_7637

    ld [$2000], sp
    db $f4

jr_033_764f:
    db $ec
    nop
    nop
    db $f4

jr_033_7653:
    db $f4
    ld bc, $f400
    ld hl, sp+$05
    jr nz, jr_033_764f

    nop
    inc b
    jr nz, jr_033_7653

    inc b
    ld bc, $f420

jr_033_7663:
    inc c
    nop
    jr nz, jr_033_7663

    db $ec
    ld [bc], a
    nop
    db $fc
    db $f4
    inc bc
    nop
    db $fc

jr_033_766f:
    ld hl, sp+$07
    jr nz, jr_033_766f

    nop
    ld b, $20
    db $fc

jr_033_7677:
    inc b
    inc bc
    jr nz, jr_033_7677

    inc c
    ld [bc], a
    jr nz, jr_033_7683

    db $ec
    inc b
    nop
    inc b

jr_033_7683:
    db $f4
    dec b
    nop
    inc b
    ld hl, sp+$0d
    jr nz, jr_033_768f

    nop
    inc c
    jr nz, jr_033_7693

jr_033_768f:
    inc b
    dec b
    jr nz, jr_033_7697

jr_033_7693:
    inc c
    inc b
    jr nz, jr_033_76a3

jr_033_7697:
    ldh a, [rP1]
    ld b, b
    inc c
    ld hl, sp+$02
    ld b, b
    inc c
    nop
    ld [bc], a
    ld h, b
    inc c

jr_033_76a3:
    ld [$6000], sp
    add sp, -$04
    ld [bc], a
    nop
    db $10
    db $fc
    ld [bc], a
    ld h, b
    db $fc
    add sp, $01
    nop
    db $fc
    db $10
    ld bc, $e060
    db $fc

jr_033_76b8:
    ld [bc], a
    nop
    jr jr_033_76b8

    ld [bc], a
    ld h, b
    db $fc
    ldh [rSB], a
    nop
    db $fc
    jr jr_033_76c6

    ld h, b

jr_033_76c6:
    db $ed
    db $ed
    nop
    jr nz, jr_033_76b8

    dec bc
    nop
    nop
    dec bc
    db $ed
    nop
    ld h, b
    dec bc
    dec bc
    nop
    ld b, b
    push hl
    push hl
    nop
    jr nz, @-$19

    inc de
    nop
    nop
    inc de
    push hl
    nop
    ld h, b
    inc de
    inc de
    nop
    ld b, b
    db $ec
    db $fc
    ld [bc], a
    nop
    inc c

jr_033_76eb:
    db $fc
    ld [bc], a
    ld h, b
    db $fc
    db $ec
    ld bc, $fc00
    inc c
    ld bc, $f060
    ldh a, [rP1]
    jr nz, jr_033_76eb

    ld [$0000], sp
    ld [$00f0], sp
    ld h, b
    ld [$0008], sp
    ld b, b
    add sp, -$04
    nop
    nop
    ldh a, [$fa]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld [$00fa], sp
    nop
    db $10
    db $fc
    nop

jr_033_771d:
    nop
    db $fc
    ldh a, [rP1]

jr_033_7721:
    jr nz, jr_033_771d

    ld hl, sp+$00
    jr nz, jr_033_7721

    nop
    nop
    nop
    db $fc
    ld [$0000], sp
    db $fc
    ld hl, sp+$00
    ld h, b
    db $fc
    nop
    nop
    ld b, b
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $f4
    ld bc, $fc00
    db $fc
    ld bc, $0420
    db $f4
    ld bc, $0440
    db $fc
    ld bc, $fc60
    db $fc
    nop
    nop
    ld [bc], a
    or $00
    nop
    ld [bc], a
    xor $01
    nop
    ld [bc], a
    or $01
    jr nz, jr_033_7765

    xor $01
    ld b, b
    ld a, [bc]
    or $01
    ld h, b
    db $fc
    db $fc
    nop

jr_033_7765:
    nop
    ld [bc], a
    or $00
    nop
    ld [$00f0], sp
    nop
    ld [$01e8], sp
    nop
    ld [$01f0], sp
    jr nz, @+$12

    add sp, $01
    ld b, b
    db $10
    ldh a, [rSB]
    ld h, b
    db $fc
    db $fc
    nop
    nop
    ld [bc], a
    or $00
    nop
    ld [$00f0], sp
    nop
    ld c, $ea
    nop
    nop
    ld c, $e2
    ld bc, $0e00
    ld [$2001], a
    ld d, $e2
    ld bc, $1640
    ld [$6001], a
    db $fc
    db $fc
    nop
    nop
    ld [bc], a
    or $00
    nop
    ld [$00f0], sp
    nop
    ld c, $ea
    nop
    nop
    inc d
    db $e4
    nop
    nop
    inc d
    call c, $0001
    inc d
    db $e4
    ld bc, $1c20
    call c, $4001
    inc e
    db $e4
    ld bc, $fc60
    db $fc
    nop
    nop
    ld [bc], a
    or $00
    nop
    ld [$00f0], sp
    nop
    ld c, $ea
    nop
    nop
    inc d
    db $e4
    nop
    nop
    ld a, [de]
    sbc $00
    nop
    ld a, [de]
    sub $01
    nop
    ld a, [de]
    sbc $01
    jr nz, @+$24

    sub $01
    ld b, b
    ld [hl+], a
    sbc $01
    ld h, b
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    ld hl, sp+$01
    nop
    db $fc
    nop
    ld bc, $fc20
    ld [$2000], sp
    db $fc
    ldh a, [rSC]
    nop
    db $fc
    ld hl, sp+$01
    nop
    db $fc
    nop
    ld bc, $fc20
    ld [$2002], sp
    ld hl, sp-$04
    nop
    nop
    nop
    db $fc
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    db $ec
    ld bc, $fc00
    db $f4
    ld [bc], a
    nop
    db $fc
    db $fc
    inc bc
    nop
    db $fc
    inc b
    inc b
    nop
    db $fc
    inc c
    dec b
    nop
    db $fc
    inc d
    ld b, $00
    db $f4
    inc c
    rlca
    nop
    db $f4
    inc d
    ld [$f400], sp
    db $e4
    ld [$f420], sp

jr_033_783b:
    db $ec
    rlca
    jr nz, jr_033_783b

    db $e4
    ld b, $20
    db $fc

jr_033_7843:
    db $ec
    dec b
    jr nz, jr_033_7843

jr_033_7847:
    db $f4
    inc b
    jr nz, jr_033_7847

jr_033_784b:
    db $fc
    inc bc
    jr nz, jr_033_784b

jr_033_784f:
    inc b
    ld [bc], a
    jr nz, jr_033_784f

    inc c
    ld bc, $fc20
    inc d
    nop
    jr nz, jr_033_785b

jr_033_785b:
    db $e4
    nop
    stop
    db $ec
    ld bc, $0010
    db $f4
    ld [bc], a
    stop
    db $fc
    inc bc
    stop
    inc b
    inc b
    stop
    inc c
    dec b
    stop
    inc d
    ld b, $10
    ld hl, sp-$1c
    nop
    stop
    db $e4
    ld bc, $f810
    db $ec
    ld [bc], a
    stop
    db $ec
    inc bc
    db $10
    ld hl, sp-$0c
    inc b
    stop
    db $f4
    dec b
    db $10
    ld hl, sp-$04
    ld b, $10
    nop
    db $fc
    rlca
    db $10
    ld hl, sp+$04
    ld [$0010], sp
    inc b
    add hl, bc
    db $10
    ld hl, sp+$0c
    ld a, [bc]
    stop
    inc c
    dec bc
    db $10
    ld hl, sp+$14
    inc c
    stop
    inc d
    dec c
    stop
    add sp, $00
    ld de, $f000
    ld bc, $0011
    ld hl, sp+$02
    ld de, $0000
    inc bc
    ld de, $0800
    inc b
    ld de, $1000
    dec b
    ld de, $e800
    nop
    ld de, $e808
    ld bc, $0011
    ldh a, [rSC]
    ld de, $f008
    inc bc
    ld de, $f800
    inc b
    ld de, $f808
    dec b
    ld de, $0000
    ld b, $11
    ld [$0700], sp
    ld de, $0800
    ld [$0811], sp
    ld [$1109], sp
    nop
    db $10
    ld a, [bc]
    ld de, $1008
    dec bc
    ld de, $04f4
    nop
    nop
    db $fc
    db $f4
    ld bc, $fc00
    db $fc
    ld [bc], a
    nop
    db $fc
    inc b
    inc bc
    nop
    inc b
    db $f4
    inc b
    nop
    db $fc
    db $f4
    nop
    nop
    db $fc
    db $fc
    ld bc, $fc00
    inc b
    ld [bc], a
    nop
    db $e4
    inc c
    ld bc, $e460
    inc c
    nop
    nop
    db $e4
    inc b
    ld bc, $ec60
    inc c
    ld bc, $e460
    inc c
    ld bc, $e400
    inc b
    nop
    nop
    db $e4
    db $fc
    ld bc, $ec60
    inc c
    nop
    nop
    db $ec
    inc b
    ld bc, $f460
    inc c
    ld bc, $e460
    db $f4
    ld bc, $e460
    db $fc
    nop
    nop
    db $e4
    inc b
    ld bc, $ec00
    db $fc
    ld bc, $ec60
    inc b
    nop
    nop
    db $ec
    inc c
    ld bc, $f400
    inc b
    ld bc, $f460
    inc c
    nop
    nop
    db $fc
    inc c
    ld bc, $e460
    db $ec
    ld bc, $e460
    db $f4
    nop
    nop
    db $e4
    db $fc
    ld bc, $ec00
    db $f4
    ld bc, $ec60
    db $fc
    nop
    nop
    db $ec
    inc b
    ld bc, $f400
    db $fc
    ld bc, $f460
    inc b
    nop
    nop
    db $f4
    inc c
    ld bc, $fc00
    inc b
    ld bc, $fc60
    inc c
    nop
    nop
    inc b
    inc c
    ld bc, $e460
    db $ec
    nop
    nop
    db $e4
    db $f4
    ld bc, $ec00
    db $ec
    ld bc, $ec60
    db $f4
    nop
    nop
    db $ec
    db $fc
    ld bc, $f400
    db $f4
    ld bc, $f460
    db $fc
    nop
    nop
    db $f4
    inc b
    ld bc, $fc00
    db $fc
    ld bc, $fc60
    inc b
    nop
    nop
    db $fc
    inc c
    ld bc, $0400
    inc b
    ld bc, $0460
    inc c
    nop
    nop
    inc c
    inc c
    ld bc, $e460
    db $ec
    ld bc, $ec00
    db $ec
    nop
    nop
    db $ec
    db $f4
    ld bc, $f400
    db $ec
    ld bc, $f460
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $fc00
    db $f4
    ld bc, $fc60
    db $fc
    nop
    nop
    db $fc
    inc b
    ld bc, $0400
    db $fc
    ld bc, $0460
    inc b
    nop
    nop
    inc b
    inc c
    ld bc, $0c00
    inc b
    ld bc, $0c60
    inc c
    nop
    nop
    inc d
    inc c
    ld bc, $f060
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    ld bc, $f000
    nop
    nop
    jr nz, @-$06

    nop
    ld bc, $0020
    ld hl, sp+$01
    ld b, b
    ld [$00f8], sp
    ld b, b
    nop
    nop
    ld bc, $0860
    nop
    nop
    ld h, b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$01
    ld h, b
    nop
    nop
    nop
    ld h, b
    db $f4
    ld hl, sp+$00
    nop
    db $f4
    nop
    ld bc, $fc00
    ld hl, sp+$02
    nop
    db $fc
    nop
    inc bc
    nop
    db $fc
    ld hl, sp+$00
    nop
    db $fc
    nop
    ld bc, $0400
    ld hl, sp+$02
    nop
    inc b
    nop
    inc bc
    nop
    db $ec
    ld hl, sp+$00
    nop
    db $ec
    nop
    ld bc, $f400
    ld hl, sp+$02
    nop
    db $f4
    nop
    inc bc
    nop
    inc b
    ld hl, sp+$00
    nop
    inc b
    nop
    ld bc, $0c00
    ld hl, sp+$02
    nop
    inc c
    nop
    inc bc
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$02
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $0800
    ld hl, sp+$02
    nop
    ld [$0300], sp
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp+$04
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ldh a, [rNR14]
    nop
    nop
    db $ec
    inc e
    nop
    nop
    add sp, $24
    nop
    nop
    ldh [$2c], a
    nop
    nop
    call c, $0034
    nop
    db $ec
    db $fc
    nop
    nop
    db $f4
    db $fc
    ld bc, $fc00
    db $fc
    ld [bc], a
    nop
    inc b
    db $fc
    ld bc, $0c40
    db $fc
    nop
    ld b, b
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    ld hl, sp+$01
    nop
    db $fc
    nop
    ld [bc], a
    nop
    db $fc
    ld [$0003], sp
    ld hl, sp-$0c
    nop
    nop
    ld hl, sp-$04
    ld bc, $f800
    inc b
    ld [bc], a
    nop
    nop
    db $f4
    inc bc
    nop
    nop
    db $fc
    inc b
    nop
    nop
    inc b
    dec b
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    dec b
    nop
    nop
    ld hl, sp+$01
    nop
    nop
    nop
    dec b
    nop
    db $e4
    ld [$0000], sp
    db $e4
    db $10
    ld bc, $ec00
    ld hl, sp+$02
    nop
    db $ec
    nop
    inc bc
    nop
    db $ec
    ld [$0004], sp
    db $ec
    db $10
    dec b
    nop
    db $ec
    jr jr_033_7b33

    nop
    db $f4
    ldh a, [rTAC]
    nop
    db $f4

jr_033_7b33:
    ld hl, sp+$08
    nop
    db $f4
    nop
    add hl, bc
    nop
    db $f4
    ld [$000a], sp
    db $f4
    db $10
    dec bc
    nop
    db $f4
    jr jr_033_7b51

    nop
    db $f4
    jr nz, jr_033_7b56

    nop
    db $fc
    add sp, $0e
    nop
    db $fc
    ldh a, [rIF]

jr_033_7b51:
    nop
    db $fc
    ld hl, sp+$10
    nop

jr_033_7b56:
    db $fc
    nop
    ld de, $fc00
    ld [$0012], sp
    db $fc
    db $10
    inc de
    nop
    inc b
    ret c

    inc d
    nop
    inc b
    ldh [$15], a
    nop
    inc b
    add sp, $16
    nop
    inc b
    ldh a, [rNR22]
    nop
    inc b
    ld hl, sp+$18
    nop
    inc b
    nop
    add hl, de
    nop
    inc b
    ld [$001a], sp
    inc b
    db $10
    dec de
    nop
    inc b
    jr jr_033_7ba1

    nop
    inc c
    ret c

    dec e
    nop
    inc c
    ldh [rNR34], a
    nop
    inc c
    ldh a, [$1f]
    nop
    inc c
    ld hl, sp+$20
    nop
    inc c
    nop
    ld hl, $0c00
    ld [$0022], sp
    inc d
    nop
    inc hl

jr_033_7ba1:
    nop
    inc b
    ld hl, sp+$02
    nop
    inc b
    nop
    inc bc
    nop
    db $fc
    ld hl, sp+$01
    nop
    db $fc
    nop
    ld bc, $f420

jr_033_7bb3:
    ld hl, sp+$00
    nop
    db $f4
    nop
    nop
    jr nz, jr_033_7bb3

    ldh a, [rP1]
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    ld hl, sp+$08
    inc bc
    nop
    nop
    ldh a, [rDIV]
    nop
    nop
    ld hl, sp+$05
    nop
    nop
    nop
    ld b, $00
    nop
    ld [$0007], sp
    db $f4
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    db $f4
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $f400
    inc b
    ld [bc], a
    nop
    db $fc
    db $f4
    inc bc
    nop
    db $fc
    db $fc
    inc b
    nop
    db $fc
    inc b
    dec b
    nop
    inc b
    db $f4
    nop
    ld b, b
    inc b
    db $fc
    ld bc, $0440
    inc b
    ld [bc], a
    ld b, b
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    ld hl, sp+$01
    nop
    db $fc
    nop
    ld bc, $fc20
    ld [$2000], sp
    db $fc
    add sp, $00
    nop
    db $fc
    ldh a, [rSB]
    nop
    db $fc

jr_033_7c33:
    ld hl, sp+$02
    nop
    db $fc

jr_033_7c37:
    nop
    ld [bc], a
    jr nz, jr_033_7c37

    ld [$2001], sp
    db $fc
    stop
    jr nz, jr_033_7c33

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    ld bc, $f000

jr_033_7c4b:
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    nop
    jr nz, jr_033_7c4b

    ldh a, [$03]
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    inc b
    jr nz, @-$06

    ld [$0005], sp
    nop
    ldh a, [rTIMA]
    ld h, b
    nop
    ld hl, sp+$04
    ld b, b
    nop
    nop
    inc b
    ld h, b
    nop
    ld [$6003], sp
    ld [$00f0], sp
    ld b, b
    ld [$02f8], sp
    ld h, b
    ld [$0100], sp
    ld h, b
    ld [$0008], sp
    ld h, b
    ld hl, sp-$10
    nop
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    nop
    ld h, b
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $0000
    ld [$6000], sp
    ld hl, sp+$0c
    nop
    nop
    ld hl, sp+$14
    ld bc, $0000
    db $fc
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc c
    inc b
    nop
    nop
    inc d
    dec b
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0060
    ld hl, sp+$01
    nop
    nop
    nop
    ld bc, $f020
    sbc h
    nop
    nop
    ldh [$ac], a
    nop
    nop
    ld hl, sp-$44
    nop
    nop
    ret c

    call z, RST_00
    add sp, -$24
    nop
    nop
    ret c

    db $ec
    nop
    nop
    add sp, -$04
    nop
    nop
    add sp, $04
    nop
    nop
    ret c

    inc d
    nop
    nop
    nop
    inc h
    nop
    nop
    ldh a, [$34]
    nop
    nop
    ldh [rLY], a
    nop
    nop
    ldh a, [rHDMA4]
    nop
    nop
    nop
    ld hl, $4a2e
    dec d
    ld hl, $4a2e
    ld b, $21
    ld e, $4b
    ld b, $21
    ld a, [hl]
    ld c, e
    inc d
    ld hl, $4bde
    ld a, [de]
    ld hl, $4cae
    ld [de], a
    ld hl, $507e
    inc c
    ld hl, $4dee
    add hl, bc
    ld hl, $4e7e
    ld de, $1e21
    ld c, a
    ld b, $21
    sbc $4e
    ld a, [bc]
    ld hl, $515e
    add hl, bc
    ld hl, $500e
    dec c
    ld hl, $51ae
    db $10
    ld hl, $524e
    ld [bc], a
    ld hl, $537e
    dec bc
    ld hl, $539e
    add hl, bc
    ld hl, $542e
    add hl, bc
    ld hl, $547e
    inc de
    ld hl, $54ee
    ld a, [bc]
    ld hl, $55ae
    inc c
    ld hl, $56ee
    ld [de], a
    ld hl, $562e
    dec c
    ld hl, $576e
    ld a, [bc]
    ld hl, $530e
    dec de
    ld hl, $5e9e
    inc c
    ld hl, $57de
    ld c, $21
    ld a, $58
    db $10
    ld hl, $58be
    rlca
    ld hl, $594e
    ld [$ae21], sp
    ld e, c
    jr z, jr_033_7d95

    ld c, $5a
    inc h
    ld hl, $5bae
    db $10
    ld hl, $5d0e
    jr nc, jr_033_7da1

    cp $5d
    ld [de], a
    ld hl, $5fbe
    ld h, $21
    sbc [hl]
    ld h, b
    inc hl
    ld hl, $617e
    ld [de], a
    ld hl, $62ee
    jr @+$23

    adc [hl]

jr_033_7d95:
    ld h, e
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld b, b
    and l
    ld a, l

jr_033_7da1:
    ld bc, $7e48
    ld [bc], a
    jp c, $0f01

    push hl
    ld [hl], a
    reti


    inc bc
    db $db
    ld [bc], a
    ret c

    inc c
    sub e
    rlca
    push de
    ld de, $8151
    call nc, Call_033_5111
    call c, $5173
    call c, Call_033_5153
    call c, $5143
    call c, $d693
    pop bc
    push de
    ld sp, $c181
    call nc, $dc31
    ld [hl], e
    ld sp, $53dc
    ld sp, $43dc
    ld sp, $93dc
    sub $b1
    push de
    ld sp, $b181
    call nc, $dc31
    ld [hl], e
    ld sp, $53dc
    ld sp, $43dc
    ld sp, $93dc
    sub $a1
    push de
    ld de, $a161
    call nc, $dc11
    ld [hl], e
    ld de, $53dc
    ld de, $43dc
    ld de, $93dc
    sub $91
    push de
    ld de, $9161
    call nc, $dc11
    ld [hl], e
    ld de, $53dc
    ld de, $43dc
    ld de, $93dc
    sub $81
    push de
    ld de, $8151
    call nc, $dc11
    ld [hl], e
    ld de, $63dc
    ld de, $43dc
    ld de, $93dc
    sub $71
    and c
    push de
    ld sp, $a171
    call c, $a173
    call c, $a163
    call c, $a143
    call c, $d693
    add c
    push de
    ld de, $8131
    add c
    call c, $8173
    call c, $3193
    sub $81
    db $fd
    nop
    or d
    ld a, l
    reti


    inc bc
    db $db
    ld [bc], a
    ret c

    inc c
    and e
    db $d3
    ld d, c
    call c, $5173
    call c, $61a3
    call c, $6173
    call c, $81a3
    call c, $8173
    call c, $8153
    call c, $8143
    call c, $d293
    ld sp, $d311
    pop bc
    jp nc, $d311

    add c
    call c, $8173
    call c, $8153
    call c, $8143
    call c, $8133
    call c, $51a3
    call c, $5173
    call c, $61a3
    add c
    call c, $8173
    call c, $8153
    call c, $8143
    call c, $8133
    call c, $a1a3
    call c, $a173
    call c, $51a3
    add c
    call c, $8173
    call c, $8153
    call c, $61a3
    call c, $6173
    call c, $6153
    call c, $31a3
    ld d, c
    ld h, c
    call c, $6173
    call c, $6153
    call c, $6143
    call c, Call_033_6133
    call c, $81a3
    call c, $8173
    call c, $61a3
    ld d, c
    ld b, c
    ld d, c
    pop bc
    call c, $c173
    call c, $c153
    call c, $a1a3
    call c, $a173
    call c, $31a3
    call c, $3173
    call c, $3153
    call c, $3143
    call c, $3133
    ld sp, $23dc
    ld sp, $dc31
    and e
    add c
    call c, $d473
    add c
    call c, $d3a3
    ld sp, $dc81
    ld [hl], e
    add c
    call c, $8153
    call c, $51a3
    ld h, c
    db $fd
    nop
    ld e, d
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
