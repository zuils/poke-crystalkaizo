; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    xor a
    ldh [$d4], a
    ld a, $2e
    ld hl, $400a
    rst $08
    ret


    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    ld [$c2d9], a
    call Call_02e_4089
    jr z, jr_02e_4024

    call $2c8a
    cp $06
    jr nz, jr_02e_4029

jr_02e_4024:
    ld a, $ff
    ld [$c2d9], a

jr_02e_4029:
    ld hl, $d83e
    bit 1, [hl]
    res 1, [hl]
    jr nz, jr_02e_4054

    call Call_02e_4064
    jr z, jr_02e_4054

    ld a, [$c2d9]
    ld [$c2d8], a
    call Call_02e_4070
    jr z, jr_02e_4054

    ld a, $3c
    ld [$c2da], a
    call Call_02e_40c6
    call Call_02e_40d3
    ld a, $41
    ld hl, $4303
    rst $08
    ret


jr_02e_4054:
    ld a, [$c2d9]
    ld [$c2d8], a
    ld a, $90
    ldh [rWY], a
    ldh [$d2], a
    xor a
    ldh [$c6], a
    ret


Call_02e_4064:
    ld a, [$c2d9]
    ld c, a
    ld a, [$c2d8]
    cp c
    ret z

    cp $00
    ret


Call_02e_4070:
    cp $ff
    ret z

    cp $00
    ret z

    cp $11
    ret z

    cp $46
    ret z

    cp $3b
    ret z

    cp $5a
    ret z

    cp $44
    ret z

    ld a, $01
    and a
    ret


Call_02e_4089:
    ld a, [$dcb5]
    cp $0a
    ret nz

    ld a, [$dcb6]
    cp $0f
    ret z

    cp $11
    ret


    ld hl, $c2da
    ld a, [hl]
    and a
    jr z, jr_02e_40bc

    dec [hl]
    cp $3c
    ret z

    cp $3b
    jr nz, jr_02e_40b3

    call Call_02e_40d3
    call Call_02e_40e1
    ld a, $41
    ld hl, $4303
    rst $08

jr_02e_40b3:
    ld a, $80
    ld a, $70
    ldh [rWY], a
    ldh [$d2], a
    ret


jr_02e_40bc:
    ld a, $90
    ldh [rWY], a
    ldh [$d2], a
    xor a
    ldh [$c6], a
    ret


Call_02e_40c6:
    ld de, $5344
    ld hl, $9600
    ld bc, $3e0e
    call $0f82
    ret


Call_02e_40d3:
    ld hl, $c4a0
    ld b, $02
    ld c, $12
    call Call_02e_4115
    call Call_02e_412f
    ret


Call_02e_40e1:
    ld a, [$c2d9]
    ld e, a
    ld a, $72
    ld hl, $68a5
    rst $08
    call Call_02e_4101
    ld a, $14
    sub c
    srl a
    ld b, $00
    ld c, a
    ld hl, $c4c8
    add hl, bc
    ld de, $d073
    call $1078
    ret


Call_02e_4101:
    ld c, $00
    push hl
    ld hl, $d073

jr_02e_4107:
    ld a, [hl+]
    cp $50
    jr z, jr_02e_4113

    cp $25
    jr z, jr_02e_4107

    inc c
    jr jr_02e_4107

jr_02e_4113:
    pop hl
    ret


Call_02e_4115:
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    ld a, $87

jr_02e_411f:
    push bc
    push hl

jr_02e_4121:
    ld [hl+], a
    dec c
    jr nz, jr_02e_4121

    pop hl
    ld de, $0014
    add hl, de
    pop bc
    dec b
    jr nz, jr_02e_411f

    ret


Call_02e_412f:
    ld hl, $c4a0
    ld a, $61
    ld [hl+], a
    ld a, $62
    call Call_02e_4164
    ld a, $64
    ld [hl+], a
    ld a, $65
    ld [hl+], a
    call Call_02e_415b
    ld a, $6b
    ld [hl+], a
    ld a, $66
    ld [hl+], a
    call Call_02e_415b
    ld a, $6c
    ld [hl+], a
    ld a, $67
    ld [hl+], a
    ld a, $68
    call Call_02e_4164
    ld a, $6a
    ld [hl], a
    ret


Call_02e_415b:
    ld c, $12
    ld a, $6d

jr_02e_415f:
    ld [hl+], a
    dec c
    jr nz, jr_02e_415f

    ret


Call_02e_4164:
    ld c, $05
    jr jr_02e_416a

jr_02e_4168:
    ld [hl+], a
    ld [hl+], a

jr_02e_416a:
    inc a
    ld [hl+], a
    ld [hl+], a
    dec a
    dec c
    jr nz, jr_02e_4168

    ret


    call $2c57
    ld [$d1ea], a
    ld a, [$dcb8]
    add $05
    ld [$d1ed], a
    ld a, [$dcb7]
    add $04
    ld [$d1ec], a
    ld hl, $dc02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$dc01]
    and a
    jr z, jr_02e_41dd

jr_02e_4194:
    ld [$d1eb], a
    push hl
    call Call_02e_41e2
    ld e, a
    ld a, [$d1ec]
    sub e
    jr c, jr_02e_41d2

    cp $09
    jr nc, jr_02e_41d2

    call Call_02e_41e2
    ld d, a
    ld a, [$d1ed]
    sub d
    jr c, jr_02e_41d2

    cp $0a
    jr nc, jr_02e_41d2

    call Call_02e_41e2
    cp $07
    jr nz, jr_02e_41d2

    ld a, [$d1ea]
    call $305d
    ld a, [$d1ea]
    call $305d
    ld d, h
    ld e, l
    ld b, $02
    call $2e6f
    ld a, c
    and a
    jr z, jr_02e_41df

jr_02e_41d2:
    pop hl
    ld bc, $0005
    add hl, bc
    ld a, [$d1eb]
    dec a
    jr nz, jr_02e_4194

jr_02e_41dd:
    xor a
    ret


jr_02e_41df:
    pop hl
    scf
    ret


Call_02e_41e2:
    ld a, [$d1ea]
    call $304d
    inc hl
    ret


    ld a, $41
    ld hl, $60ef
    rst $08
    xor a
    ld [$d22e], a
    ld [$d143], a
    ld hl, $425e
    call Call_02e_423f
    jr nc, jr_02e_4214

    call Call_02e_42d2
    jr nc, jr_02e_4214

    call Call_02e_43e5
    jr nc, jr_02e_4214

    ld a, $08
    ld [$d230], a
    ld a, $01
    ld [$c2dd], a
    ret


jr_02e_4214:
    xor a
    ld [$c2dd], a
    ret


    xor a
    ld [$d22e], a
    ld [$d143], a
    ld hl, $42c5
    call Call_02e_423f
    jr nc, jr_02e_423c

    call Call_02e_42d2
    jr nc, jr_02e_423c

    ld a, $0a
    call $2fb1
    cp $04
    jr nc, jr_02e_423c

    call Call_02e_441f
    jr nc, jr_02e_423c

    ret


jr_02e_423c:
    xor a
    ret


    dec b

Call_02e_423f:
    ld a, [$dcb6]
    ld e, a
    ld a, [$dcb5]
    ld d, a

jr_02e_4247:
    ld a, [hl+]
    cp $ff
    jr z, jr_02e_4259

    cp d
    jr nz, jr_02e_4255

    ld a, [hl+]
    cp e
    jr nz, jr_02e_4256

    jr jr_02e_425b

jr_02e_4255:
    inc hl

jr_02e_4256:
    inc hl
    jr jr_02e_4247

jr_02e_4259:
    xor a
    ret


jr_02e_425b:
    ld a, [hl]
    scf
    ret


    jr jr_02e_4261

    inc b

jr_02e_4261:
    jr jr_02e_4265

    inc b
    inc de

jr_02e_4265:
    ld bc, $1800
    inc bc
    inc bc
    ld a, [de]
    ld bc, $1a03
    ld [bc], a
    inc bc
    ld a, [bc]
    ld bc, $0804
    ld b, $02
    dec bc
    ld bc, $0a03
    ld [bc], a
    inc bc
    ld a, [bc]
    inc bc
    inc bc
    ld a, [bc]
    inc b
    inc bc
    ld bc, $030c
    ld bc, $030d
    ld d, $01
    nop
    ld d, $02
    nop
    ld [bc], a
    dec b
    ld [bc], a
    add hl, bc
    dec b
    dec b
    ld [bc], a
    ld b, $01
    dec b
    ld [$0501], sp
    add hl, bc
    ld bc, $0418
    nop
    ld a, [de]
    inc bc
    nop
    ld a, [bc]
    dec b
    nop
    ld [$0207], sp
    ld d, $03
    nop
    dec bc
    ld [bc], a
    nop
    ld bc, $000e
    inc b
    add hl, bc
    nop
    ld [bc], a
    rlca
    nop
    add hl, bc
    ld b, $05
    dec b
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    nop
    inc bc
    inc [hl]
    ld b, $ff
    ld d, $03
    rlca
    ld d, $01
    rlca
    inc bc
    ld c, [hl]
    rlca
    inc bc
    jr z, @+$09

    rst $38

Call_02e_42d2:
    cp $08
    jr nc, jr_02e_42e6

    and a
    jr z, jr_02e_42e6

    ld e, a
    ld d, $00
    ld hl, $42e8
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    scf
    ret


jr_02e_42e6:
    xor a
    ret


    ld a, [$fa42]
    ld b, d
    jr nz, jr_02e_4331

    ld b, [hl]
    ld b, e
    ld l, h
    ld b, e
    sub d
    ld b, e
    cp b
    ld b, e
    sbc $43
    ld a, [$3242]
    dec d
    ld a, [bc]
    rrca
    dec d
    ld a, [bc]
    rrca
    dec d
    ld a, [bc]
    ld a, [bc]
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    dec d
    ld a, [bc]
    rrca
    sub $0a
    rrca
    sub $0a
    ld a, [bc]
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    dec d
    ld a, [bc]
    rrca
    rla
    ld a, [bc]
    rrca
    dec d
    ld a, [bc]
    ld a, [bc]
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]

jr_02e_4331:
    ld a, [bc]
    rst $38
    ld [hl-], a
    dec d
    ld a, [bc]
    rrca
    sub $0a
    rrca
    sub $0a
    ld a, [bc]
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    dec b
    cp [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    and a
    ld a, [bc]
    rrca
    and l
    ld a, [bc]
    ld a, [bc]
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    call z, $0f0a
    call z, $0a0a
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    rla
    ld a, [bc]
    rrca
    and e
    ld a, [bc]
    ld a, [bc]
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    call z, $0f0a
    call z, $0a0a
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    jr nc, jr_02e_43a2

    rrca
    and e
    ld a, [bc]
    ld a, [bc]
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    dec b

jr_02e_43a2:
    ld h, [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    call z, $0f0a
    call z, $0a0a
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    dec b
    ld h, [hl]
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    call z, $0f0a
    call z, $0a0a
    and h
    ld a, [bc]
    dec b
    inc c
    ld a, [bc]
    dec b
    rrca
    ld a, [bc]
    rst $38
    ld [hl-], a
    and e
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    dec c
    ld a, [bc]
    ld a, [bc]
    and e
    ld a, [bc]
    dec b
    dec bc
    ld a, [bc]
    dec b
    ld c, $0a
    rst $38
    ld e, d
    ld h, d
    rrca
    ld a, [bc]
    push de
    rrca
    rst $38

Call_02e_43e5:
    push hl
    call Call_02e_4443
    pop hl
    and a
    jr z, jr_02e_43f6

    cp $01
    jr z, jr_02e_4400

    cp $02
    jr z, jr_02e_440b

    ret


jr_02e_43f6:
    ld a, $0a
    call $2fb1
    and a
    jr nz, jr_02e_443b

    jr jr_02e_441f

jr_02e_4400:
    ld a, $0a
    call $2fb1
    cp $05
    jr nc, jr_02e_443b

    jr jr_02e_441f

jr_02e_440b:
    ld a, $0a
    call $2fb1
    cp $08
    jr nc, jr_02e_443b

    jr jr_02e_4416

jr_02e_4416:
    ld a, [hl+]
    cp $ff
    jr nz, jr_02e_4416

    call Call_02e_441f
    ret


Call_02e_441f:
jr_02e_441f:
    ld a, $64
    call $2fb1

jr_02e_4424:
    sub [hl]
    jr c, jr_02e_442c

    inc hl
    inc hl
    inc hl
    jr jr_02e_4424

jr_02e_442c:
    ld a, [hl+]
    cp $ff
    jr z, jr_02e_443b

    ld a, [hl+]
    ld [$d22e], a
    ld a, [hl]
    ld [$d143], a
    scf
    ret


jr_02e_443b:
    xor a
    ld [$d22e], a
    ld [$d143], a
    ret


Call_02e_4443:
    call Call_02e_4466
    ld [$d1ea], a
    call Call_02e_449d
    ld [$d1eb], a
    ld c, a
    ld a, [$d1ea]
    sub c
    jr z, jr_02e_4463

    jr nc, jr_02e_445a

    add $0a

jr_02e_445a:
    cp $05
    jr c, jr_02e_4460

    xor a
    ret


jr_02e_4460:
    ld a, $01
    ret


jr_02e_4463:
    ld a, $02
    ret


Call_02e_4466:
    call $2a07
    ld hl, $0000
    ld c, e
    ld b, $00
    ld a, d
    and a
    jr z, jr_02e_4477

jr_02e_4473:
    add hl, bc
    dec a
    jr nz, jr_02e_4473

jr_02e_4477:
    add hl, bc
    ld c, d
    add hl, bc
    ld a, h
    ldh [$b3], a
    ld a, l
    ldh [$b4], a
    ld a, $05
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b5]
    ldh [$b3], a
    ldh a, [$b6]
    ldh [$b4], a
    ld a, $0a
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b7]
    ret


Call_02e_449d:
    ld a, [$d47b]
    ldh [$b3], a
    ld a, [$d47c]
    ldh [$b4], a
    ld a, $0a
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b7]
    ret


    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld de, $44f2
    ld a, [$d472]
    bit 0, a
    jr z, jr_02e_44c7

    ld de, $4582

jr_02e_44c7:
    ld hl, $8020
    call Call_02e_44e3
    ld hl, $8060
    call Call_02e_44e3
    ld hl, $80a0
    call Call_02e_44e3
    ld hl, $8fc0
    call Call_02e_44e3
    pop af
    ldh [rVBK], a
    ret


Call_02e_44e3:
    ld bc, $2e02
    push de
    call $0f82
    pop de
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    ret


    ccf
    ld [hl-], a
    rrca
    ld [$1f17], sp
    rla
    rra
    rrca
    add hl, bc
    rra
    add hl, de
    rla
    rra
    rrca
    rrca
    db $fc
    ld c, h
    ldh a, [rNR10]
    add sp, -$08
    add sp, -$08
    ldh a, [$90]
    ld hl, sp-$68
    add sp, -$08
    ldh a, [$f0]
    ccf
    ccf
    dec hl
    scf
    cpl
    inc a
    inc e
    rra
    rrca
    inc c
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    db $fc
    call nc, $f4ec
    inc a
    jr c, @-$06

    ldh a, [$30]
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rst $18
    ret nc

    ld l, e
    ld l, h
    ccf
    ccf
    ld e, $13
    rra
    inc de
    rrca
    ld c, $04
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp-$38
    ld c, b
    ld hl, sp-$08
    ret z

    ldh a, [rSVBK]
    jr nz, @-$1e

    ret nz

    ret nz

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1f1f
    ld h, b
    ld h, b
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
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rlca
    dec b
    adc l
    adc e
    db $ed
    db $eb
    sbc $d6
    cp b
    cp b
    ld h, b
    ld h, b
    sbc a
    ld a, [c]
    ld a, a
    ld a, b
    rra
    rra
    rla
    rra
    rrca
    add hl, bc
    rra
    add hl, de
    rla
    rra
    rrca
    rrca
    ld sp, hl
    ld c, a
    cp $1e
    ld hl, sp-$08
    add sp, -$08
    ldh a, [$90]
    ld hl, sp-$68
    add sp, -$08
    ldh a, [$f0]
    add [hl]
    rst $38
    ld h, e
    ld a, a
    rra
    inc e
    inc e
    rra
    rrca
    inc c
    rla
    rra
    ld de, $0e1f
    ld c, $61
    rst $38
    add $fe
    ld hl, sp+$38
    jr c, @-$06

    ldh a, [$30]
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rst $18
    pop de
    ld l, a
    ld l, c
    ccf
    ccf
    ld e, $13
    rra
    inc de
    rrca
    ld c, $04
    rlca
    inc bc
    inc bc
    inc b
    db $fc
    add h
    db $fc
    ld hl, sp-$08
    ld c, b
    ld hl, sp-$08
    ret z

    ldh a, [rSVBK]
    jr nz, @-$1e

    ret nz

    ret nz

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1f1f
    ld h, b
    ld h, b
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
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rlca
    dec b
    adc l
    adc e
    db $ed
    db $eb
    sbc $d6
    cp b
    cp b
    ld h, b
    ld h, b
    ld a, [$d002]
    cp $08
    jr nc, jr_02e_462b

    ld a, [$d84d]
    bit 0, a
    jr z, jr_02e_462b

    call $2f17
    and a
    jr nz, jr_02e_462b

    ld a, $07
    ld [$d002], a

jr_02e_462b:
    ld a, [$d002]
    ld e, a
    ld d, $00
    ld hl, $463a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, d
    ld b, a
    ld b, [hl]
    ld c, d
    dec [hl]
    ld c, e
    call c, $124b
    ld c, a
    cp a
    ld c, h
    ld d, b
    ld c, e
    ld [hl], d
    ld c, [hl]
    rst $30
    ld c, [hl]
    nop
    ld c, a
    add hl, bc
    ld c, a
    ld d, d
    ld b, a
    ld e, d
    ld b, a
    ld h, d
    ld b, a
    db $10
    ld c, b
    jr jr_02e_46a2

    ld a, $48
    ld d, h
    ld c, b
    reti


    ld c, b
    ld l, h
    ld c, d
    and h
    ld c, d
    xor h
    ld c, d
    or h
    ld c, d
    ld b, b
    ld c, e
    ld c, b
    ld c, e
    ld h, e
    ld c, e
    ld l, e
    ld c, e
    ld a, l
    ld c, e
    adc a
    ld c, e
    ld e, e
    ld c, e
    push af
    ld c, e
    db $fd
    ld c, e
    dec b
    ld c, h
    dec c
    ld c, h
    dec d
    ld c, h
    dec e
    ld c, h
    dec h
    ld c, h
    ld a, $4c
    ld b, [hl]
    ld c, h
    ld c, [hl]
    ld c, h
    ld d, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    db $76
    ld c, h
    jp z, $d24c

    ld c, h
    ld a, [c]
    ld c, h
    ld d, [hl]
    ld c, l
    db $ed
    ld c, l
    jr z, @+$50

    ld a, l
    ld c, [hl]
    add l
    ld c, [hl]

jr_02e_46a2:
    adc l
    ld c, [hl]
    sub l
    ld c, [hl]
    sbc l
    ld c, [hl]
    and l
    ld c, [hl]
    xor l
    ld c, [hl]
    or l
    ld c, [hl]
    cp l
    ld c, [hl]
    ld l, [hl]
    ld c, c
    sub h
    ld c, c
    xor c
    ld c, c
    add $49
    rst $10
    ld c, c
    ccf
    ld c, a
    ld b, a
    ld c, a
    ld d, l
    ld c, a
    sbc h
    ld d, b
    and h
    ld d, b
    xor h
    ld d, b
    push bc
    ld d, b
    jp nc, $da50

    ld d, b
    ld [c], a
    ld d, b
    ld [$f250], a
    ld d, b
    ld a, [$0250]
    ld d, c
    ld a, [bc]
    ld d, c
    ld [de], a
    ld d, c
    ld a, [de]
    ld d, c
    ld [hl+], a
    ld d, c
    ld a, [hl+]
    ld d, c
    ld d, d
    ld d, c
    jr z, jr_02e_472b

    cp h
    ld c, d
    call nz, $cc4a
    ld c, d

Jump_02e_46ea:
    ld [$d003], a
    ld hl, $d00c
    ld a, [$d005]
    cp $02
    jr nc, jr_02e_470a

    inc hl
    ld [hl], $00
    inc a
    ld [$d005], a
    cp $02
    jr nz, jr_02e_470a

    ld bc, $c5e1
    call $13e5
    jr jr_02e_470d

jr_02e_470a:
    call $1065

jr_02e_470d:
    ld a, $54
    ld [$d002], a
    ld a, $64
    ld [$d004], a
    ret


    push hl
    ld b, $28

jr_02e_471b:
    ld a, [hl]
    cp $e8
    jr nz, jr_02e_4722

    ld [hl], $7f

jr_02e_4722:
    inc hl
    dec b
    jr nz, jr_02e_471b

    pop hl
    ret


    ld hl, $d004

jr_02e_472b:
    ld a, [hl]
    and a
    jr z, jr_02e_4731

    dec [hl]
    ret


jr_02e_4731:
    ld a, [$d003]
    ld [$d002], a
    ld a, [$d005]
    cp $01
    call nz, Call_02e_4a0b
    jp Jump_02e_4a17


    ld a, $05
    ld [$d006], a
    call Call_02e_51eb
    ld hl, $4820
    ld a, $0b
    jp Jump_02e_5221


    ld hl, $4825
    ld a, $0c
    jp Jump_02e_5221


    ld hl, $482a
    ld a, $0d
    jp Jump_02e_5221


jr_02e_4762:
    call $2f8c
    and $1f
    cp $0f
    jr nc, jr_02e_4762

    ld hl, $47f2
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    push bc
    ld hl, $65e9

jr_02e_477a:
    ld a, $0a
    call $304d
    cp $ff
    jr z, jr_02e_47ec

    inc hl
    cp b
    jr nz, jr_02e_478f

    ld a, $0a
    call $304d
    cp c
    jr z, jr_02e_4796

jr_02e_478f:
    dec hl
    ld de, $002f
    add hl, de
    jr jr_02e_477a

jr_02e_4796:
    inc hl
    inc hl
    inc hl
    inc hl

jr_02e_479a:
    call $2f8c
    and $03
    cp $03
    jr z, jr_02e_479a

    ld bc, $000e
    call $30fe

jr_02e_47a9:
    call $2f8c
    and $07
    cp $02
    jr c, jr_02e_47a9

    cp $05
    jr nc, jr_02e_47a9

    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    inc hl
    ld a, $0a
    call $304d
    ld [$d265], a
    ld [$d108], a
    call $343b
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026
    pop bc
    call $2caf
    ld e, a
    ld a, $72
    ld hl, $68a5
    rst $08
    ld hl, $482f
    call Call_02e_51dc
    ld a, $0e
    jp Jump_02e_46ea


jr_02e_47ec:
    pop bc
    ld a, $00
    jp Jump_02e_46ea


    jr jr_02e_47f7

    dec b
    add hl, bc
    ld a, [de]

jr_02e_47f7:
    ld bc, $010a
    dec bc
    ld bc, $020a
    ld a, [bc]
    inc b
    ld bc, $010c
    dec c
    ld [bc], a
    dec b
    add hl, bc
    dec b
    ld [bc], a
    ld b, $05
    ld [$030a], sp
    ld a, [de]
    ld [bc], a
    ld hl, $4834
    ld a, $0f
    jp Jump_02e_5221


    ld hl, $4839
    ld a, $10
    jp Jump_02e_5221


    ld d, $1a
    ld c, b
    ld l, a
    ld d, b
    ld d, $2d
    ld c, b
    ld l, a
    ld d, b
    ld d, $3a
    ld c, b
    ld l, a
    ld d, b
    ld d, $4b
    ld c, b
    ld l, a
    ld d, b
    ld d, $58
    ld c, b
    ld l, a
    ld d, b
    ld d, $6d
    ld c, b
    ld l, a
    ld d, b
    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld hl, $484f
    ld a, $11
    jp Jump_02e_5221


    ld d, $76
    ld c, b
    ld l, a
    ld d, b
    call $2f8c
    and $0f
    ld e, a
    ld d, $00
    ld hl, $4869
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $12
    jp Jump_02e_5221


    adc c
    ld c, b
    adc [hl]
    ld c, b
    sub e
    ld c, b
    sbc b
    ld c, b
    sbc l
    ld c, b
    and d
    ld c, b
    and a
    ld c, b
    xor h
    ld c, b
    or c
    ld c, b
    or [hl]
    ld c, b
    cp e
    ld c, b
    ret nz

    ld c, b
    push bc
    ld c, b
    jp z, $cf48

    ld c, b
    call nc, $1648
    add l
    ld c, b
    ld l, a
    ld d, b
    ld d, $9a
    ld c, b
    ld l, a
    ld d, b
    ld d, $af
    ld c, b
    ld l, a
    ld d, b
    ld d, $c1
    ld c, b
    ld l, a
    ld d, b
    ld d, $d6
    ld c, b
    ld l, a
    ld d, b
    ld d, $ea
    ld c, b
    ld l, a
    ld d, b
    ld d, $fe
    ld c, b
    ld l, a
    ld d, b
    ld d, $13
    ld c, c
    ld l, a
    ld d, b
    ld d, $27
    ld c, c
    ld l, a
    ld d, b
    ld d, $3a
    ld c, c
    ld l, a
    ld d, b
    ld d, $4e
    ld c, c
    ld l, a
    ld d, b
    ld d, $61
    ld c, c
    ld l, a
    ld d, b
    ld d, $75
    ld c, c
    ld l, a
    ld d, b
    ld d, $89
    ld c, c
    ld l, a
    ld d, b
    ld d, $99
    ld c, c
    ld l, a
    ld d, b
    ld d, $ae
    ld c, c
    ld l, a
    ld d, b
    call $2f8c
    and $0f
    ld e, a
    ld d, $00
    ld hl, $48fe
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d006]
    dec a
    ld [$d006], a
    ld a, $0d
    jr nz, jr_02e_48fb

    ld a, $05
    ld [$d006], a
    ld a, $3b

jr_02e_48fb:
    jp Jump_02e_5221


    ld e, $49
    inc hl
    ld c, c
    jr z, jr_02e_494d

    dec l
    ld c, c
    ld [hl-], a
    ld c, c
    scf
    ld c, c
    inc a
    ld c, c
    ld b, c
    ld c, c
    ld b, [hl]
    ld c, c
    ld c, e
    ld c, c
    ld d, b
    ld c, c
    ld d, l
    ld c, c
    ld e, d
    ld c, c
    ld e, a
    ld c, c
    ld h, h
    ld c, c
    ld l, c
    ld c, c
    ld d, $c0
    ld c, c
    ld l, a
    ld d, b
    ld d, $c8
    ld c, c
    ld l, a
    ld d, b
    ld d, $d1
    ld c, c
    ld l, a
    ld d, b
    ld d, $dd
    ld c, c
    ld l, a
    ld d, b
    ld d, $ee
    ld c, c
    ld l, a
    ld d, b
    ld d, $fd
    ld c, c
    ld l, a
    ld d, b
    ld d, $11
    ld c, d
    ld l, a
    ld d, b
    ld d, $1d
    ld c, d
    ld l, a
    ld d, b
    ld d, $29
    ld c, d
    ld l, a
    ld d, b
    ld d, $33

jr_02e_494d:
    ld c, d
    ld l, a
    ld d, b
    ld d, $40
    ld c, d
    ld l, a
    ld d, b
    ld d, $4c
    ld c, d
    ld l, a
    ld d, b
    ld d, $5d
    ld c, d
    ld l, a
    ld d, b
    ld d, $6c
    ld c, d
    ld l, a
    ld d, b
    ld d, $77
    ld c, d
    ld l, a
    ld d, b
    ld d, $81
    ld c, d
    ld l, a
    ld d, b
    ld a, $24
    ld hl, $5868
    rst $08
    ld hl, $4993
    call $1057
    call $31f6
    ld hl, $498e
    call $1057
    ld a, $3c
    ld [$d002], a
    ld a, $64
    ld [$d004], a
    ret


    ld d, $8b
    ld c, d
    ld l, a
    ld d, b
    ld d, b
    ld hl, $d004
    dec [hl]
    ret nz

    ld hl, $c5c1
    ld de, $49a4
    ld a, $3d
    jp Jump_02e_4a00


    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    ld hl, $d004
    dec [hl]
    ret nz

    ld hl, $c5e1
    ld de, $49b9
    ld a, $3e
    jp Jump_02e_4a00


    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    and a
    and b
    xor l
    xor l
    and h
    xor e
    ld d, b
    ld hl, $d004
    dec [hl]
    ret nz

    ld hl, $c5ec
    ld de, $49d6
    ld a, $3f
    jp Jump_02e_4a00


    ld d, b
    ld hl, $d004
    dec [hl]
    ret nz

    ld de, $001d
    ld hl, $5854
    ld a, $24
    rst $08
    ld hl, $49ff
    call $1057
    ld a, $0d
    ld [$d003], a
    xor a
    ld [$d005], a
    ld a, $54
    ld [$d002], a
    ld a, $0a
    ld [$d004], a
    ret


    ld d, b

Jump_02e_4a00:
    ld [$d002], a
    ld a, $64
    ld [$d004], a
    jp $1078


Call_02e_4a0b:
    ld hl, $c5cc
    ld de, $c5a4
    ld bc, $0028
    jp $3026


Jump_02e_4a17:
    ld hl, $c5cd
    ld bc, $0012
    ld a, $7f
    call $3041
    ld hl, $c5e1
    ld bc, $0012
    ld a, $7f
    jp $3041


Call_02e_4a2d:
    push hl
    push de
    ld a, [$d108]
    dec a
    rlca
    rlca
    and $03
    ld hl, $4a42
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


    ld h, b
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    call Call_02e_51eb

jr_02e_4a49:
    call $2f8c
    cp $fb
    jr nc, jr_02e_4a49

    ld c, a
    push bc
    ld a, c
    call $3393
    pop bc
    jr z, jr_02e_4a49

    inc c
    ld a, c
    ld [$d108], a
    ld [$d265], a
    call $343b
    ld hl, $4b30
    ld a, $13
    jp Jump_02e_5221


    ld a, [$d108]
    dec a
    ld hl, $4378
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, $11
    call $305d
    call Call_02e_4a2d
    push af
    push hl
    call Call_02e_4af3
    dec hl
    ld [hl], $57
    ld hl, $d26b
    call Call_02e_51dc
    pop hl
    pop af
    call Call_02e_4b11
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [$d26b], a
    ld a, h
    ld [$d26c], a
    ld a, $14
    jp Jump_02e_46ea


    call Call_02e_4ad4
    ld a, $15
    jp Jump_02e_46ea


    call Call_02e_4ad4
    ld a, $16
    jp Jump_02e_46ea


    call Call_02e_4ad4
    ld a, $55
    jp Jump_02e_46ea


    call Call_02e_4ad4
    ld a, $56
    jp Jump_02e_46ea


    call Call_02e_4ad4
    ld a, $57
    jp Jump_02e_46ea


    call Call_02e_4ad4
    ld a, $01
    jp Jump_02e_46ea


Call_02e_4ad4:
    ld a, [$d26b]
    ld l, a
    ld a, [$d26c]
    ld h, a
    ld a, [$d26d]
    push af
    push hl
    call Call_02e_4af3
    dec hl
    ld [hl], $57
    ld hl, $d26b
    call Call_02e_51dc
    pop hl
    pop af
    call Call_02e_4b11
    ret


Call_02e_4af3:
    ld de, $d26d
    ld bc, $0013
    call $0e8d
    ld hl, $d26b
    ld [hl], $00
    inc hl
    ld [hl], $4f
    inc hl

jr_02e_4b05:
    ld a, [hl+]
    cp $50
    ret z

    cp $4e
    ret z

    cp $5f
    ret z

    jr jr_02e_4b05

Call_02e_4b11:
    ld d, a

jr_02e_4b12:
    ld a, d
    call $304d
    inc hl
    cp $50
    jr z, jr_02e_4b23

    cp $4e
    jr z, jr_02e_4b23

    cp $5f
    jr nz, jr_02e_4b12

jr_02e_4b23:
    ld a, l
    ld [$d26b], a
    ld a, h
    ld [$d26c], a
    ld a, d
    ld [$d26d], a
    ret


    ld d, $91
    ld c, d
    ld l, a
    ld d, b
    call Call_02e_4b90
    ld hl, $4baa
    ld a, $17
    jp Jump_02e_5221


    ld hl, $4baf
    ld a, $18
    jp Jump_02e_5221


    ld hl, $4bb4
    ld a, $19
    jp Jump_02e_5221


    call Call_02e_4b90
    ld hl, $4bb9
    ld a, $1d
    jp Jump_02e_5221


    ld hl, $4bbe
    ld a, $19
    jp Jump_02e_5221


    ld hl, $4bc3
    ld a, $1a
    jp Jump_02e_5221


    call $3376
    and $01
    ld hl, $4bc8
    jr z, jr_02e_4b78

    ld hl, $4bcd

jr_02e_4b78:
    ld a, $1b
    jp Jump_02e_5221


    call $3376
    and $01
    ld hl, $4bd2
    jr z, jr_02e_4b8a

    ld hl, $4bd7

jr_02e_4b8a:
    ld a, $1c
    jp Jump_02e_5221


    ret


Call_02e_4b90:
    call $1052
    call $1057
    ld de, $0051
    call $3376
    and $01
    jr z, jr_02e_4ba3

    ld de, $0050

jr_02e_4ba3:
    ld hl, $5854
    ld a, $24
    rst $08
    ret


    ld d, $99
    ld c, d
    ld l, a
    ld d, b
    ld d, $ab
    ld c, d
    ld l, a
    ld d, b
    ld d, $b6
    ld c, d
    ld l, a
    ld d, b
    ld d, $c8
    ld c, d
    ld l, a
    ld d, b
    ld d, $d8
    ld c, d
    ld l, a
    ld d, b
    ld d, $e8
    ld c, d
    ld l, a
    ld d, b
    ld d, $f6
    ld c, d
    ld l, a
    ld d, b
    ld d, $09
    ld c, e
    ld l, a
    ld d, b
    ld d, $1b
    ld c, e
    ld l, a
    ld d, b
    ld d, $29
    ld c, e
    ld l, a
    ld d, b
    call Call_02e_51eb
    ld hl, $4434
    ld a, $03
    rst $08
    jr nc, jr_02e_4bed

    ld hl, $4422
    ld a, $03
    rst $08

jr_02e_4bed:
    ld hl, $4c7e
    ld a, $1e
    jp Jump_02e_5221


    ld hl, $4c83
    ld a, $1f
    jp Jump_02e_5221


    ld hl, $4c88
    ld a, $20
    jp Jump_02e_5221


    ld hl, $4c8d
    ld a, $21
    jp Jump_02e_5221


    ld hl, $4c92
    ld a, $22
    jp Jump_02e_5221


    ld hl, $4c97
    ld a, $23
    jp Jump_02e_5221


    ld hl, $4c9c
    ld a, $24
    jp Jump_02e_5221


    ld hl, $d073
    ld de, $dc9f
    ld bc, $8205
    call $3198
    ld a, $50
    ld [$d078], a
    ld hl, $4ca1
    ld a, $25
    jp Jump_02e_5221


    ld hl, $4ca6
    ld a, $26
    jp Jump_02e_5221


    ld hl, $4c9c
    ld a, $27
    jp Jump_02e_5221


    ld hl, $4ca1
    ld a, $28
    jp Jump_02e_5221


    ld hl, $4cab
    ld a, $29
    jp Jump_02e_5221


    ld hl, $4cb0
    call $2f8c
    and a
    ld a, $03
    jr nz, jr_02e_4c6b

    ld a, $2a

jr_02e_4c6b:
    jp Jump_02e_5221


    ld hl, $4cb5
    ld a, $2b
    jp Jump_02e_5221


    ld hl, $4cba
    ld a, $03
    jp Jump_02e_5221


    ld d, $39
    ld c, e
    ld l, a
    ld d, b
    ld d, $4d
    ld c, e
    ld l, a
    ld d, b
    ld d, $60
    ld c, e
    ld l, a
    ld d, b
    ld d, $73
    ld c, e
    ld l, a
    ld d, b
    ld d, $86
    ld c, e
    ld l, a
    ld d, b
    ld d, $9a
    ld c, e
    ld l, a
    ld d, b
    ld d, $af
    ld c, e
    ld l, a
    ld d, b
    ld d, $c2
    ld c, e
    ld l, a
    ld d, b
    ld d, $d6
    ld c, e
    ld l, a
    ld d, b
    ld d, $e9
    ld c, e
    ld l, a
    ld d, b
    ld d, $fe
    ld c, e
    ld l, a
    ld d, b
    ld d, $11
    ld c, h
    ld l, a
    ld d, b
    ld d, $25
    ld c, h
    ld l, a
    ld d, b
    call Call_02e_51eb
    ld hl, $4ce3
    ld a, $2c
    jp Jump_02e_5221


    ld hl, $4ce8
    ld a, $2d
    jp Jump_02e_5221


    ld hl, $4ced
    call $2f8c
    cp $7b
    ld a, $2e
    jr c, jr_02e_4ce0

    ld a, $30

jr_02e_4ce0:
    jp Jump_02e_5221


    ld d, $3a
    ld c, h
    ld l, a
    ld d, b
    ld d, $4f
    ld c, h
    ld l, a
    ld d, b
    ld d, $63
    ld c, h
    ld l, a
    ld d, b

jr_02e_4cf2:
    call $2f8c
    and $7f
    inc a
    cp $43
    jr nc, jr_02e_4cf2

    push af
    ld hl, $4d3e
    ld a, [$d84c]
    bit 6, a
    jr z, jr_02e_4d14

    ld hl, $4d43
    ld a, [$d858]
    cp $ff
    jr nz, jr_02e_4d14

    ld hl, $4d4b

jr_02e_4d14:
    pop af
    ld c, a
    ld de, $0001
    push bc
    call $30e1
    pop bc
    jr c, jr_02e_4cf2

    push bc
    ld hl, $552d
    ld a, $0e
    rst $08
    ld de, $d073
    call $30d6
    pop bc
    ld b, $01
    ld hl, $594c
    ld a, $0e
    rst $08
    ld hl, $4d51
    ld a, $2f
    jp Jump_02e_5221


    dec bc
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    dec d
    ld a, [de]
    inc hl
    ld l, $40
    add hl, bc
    ld a, [bc]
    inc c
    ld a, [hl+]
    ccf
    rst $38
    ld d, $72
    ld c, h
    ld l, a
    ld d, b
    call $2f8c
    and $0f
    ld e, a
    ld d, $00
    ld hl, $4d7d
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2f8c
    cp $0a
    ld a, $05
    jr c, jr_02e_4d7a

    call $2f8c
    cp $7b
    ld a, $2e
    jr c, jr_02e_4d7a

    ld a, $30

jr_02e_4d7a:
    jp Jump_02e_5221


    sbc l
    ld c, l
    and d
    ld c, l
    and a
    ld c, l
    xor h
    ld c, l
    or c
    ld c, l
    or [hl]
    ld c, l
    cp e
    ld c, l
    ret nz

    ld c, l
    push bc
    ld c, l
    jp z, $cf4d

    ld c, l
    call nc, $d94d
    ld c, l
    sbc $4d
    db $e3
    ld c, l
    add sp, $4d
    ld d, $80
    ld c, h
    ld l, a
    ld d, b
    ld d, $8b
    ld c, h
    ld l, a
    ld d, b
    ld d, $9e
    ld c, h
    ld l, a
    ld d, b
    ld d, $b1
    ld c, h
    ld l, a
    ld d, b
    ld d, $c3
    ld c, h
    ld l, a
    ld d, b
    ld d, $d4
    ld c, h
    ld l, a
    ld d, b
    ld d, $e8
    ld c, h
    ld l, a
    ld d, b
    ld d, $f8
    ld c, h
    ld l, a
    ld d, b
    ld d, $09
    ld c, l
    ld l, a
    ld d, b
    ld d, $1a
    ld c, l
    ld l, a
    ld d, b
    ld d, $2f
    ld c, l
    ld l, a
    ld d, b
    ld d, $42
    ld c, l
    ld l, a
    ld d, b
    ld d, $54
    ld c, l
    ld l, a
    ld d, b
    ld d, $64
    ld c, l
    ld l, a
    ld d, b
    ld d, $78
    ld c, l
    ld l, a
    ld d, b
    ld d, $8b
    ld c, l
    ld l, a
    ld d, b

jr_02e_4ded:
    call $2f8c
    cp $09
    jr nc, jr_02e_4ded

    ld hl, $4e11
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    call $2caf
    ld e, a
    ld a, $72
    ld hl, $68a5
    rst $08
    ld hl, $4e23
    ld a, $31
    jp Jump_02e_5221


    dec c
    ld [bc], a
    rla
    ld [bc], a
    ld c, $02
    rlca
    ld [bc], a
    ld [de], a
    ld [bc], a
    inc c
    ld [bc], a
    dec d
    ld [bc], a
    ld de, $0602
    ld [bc], a
    ld d, $a0
    ld c, l
    ld l, a
    ld d, b
    call $2f8c
    and $0f
    ld e, a
    ld d, $00
    ld hl, $4e52
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_02e_51dc
    call $2f8c
    cp $0a
    ld a, $05
    jr c, jr_02e_4e4f

    call $2f8c
    cp $7b
    ld a, $2e
    jr c, jr_02e_4e4f

    ld a, $30

jr_02e_4e4f:
    jp Jump_02e_46ea


    sbc l
    ld c, l
    and d
    ld c, l
    and a
    ld c, l
    xor h
    ld c, l
    or c
    ld c, l
    or [hl]
    ld c, l
    cp e
    ld c, l
    ret nz

    ld c, l
    push bc
    ld c, l
    jp z, $cf4d

    ld c, l
    call nc, $d94d
    ld c, l
    sbc $4d
    db $e3
    ld c, l
    add sp, $4d
    call Call_02e_51eb
    ld hl, $4ec5
    ld a, $32
    jp Jump_02e_5221


    ld hl, $4eca
    ld a, $33
    jp Jump_02e_5221


    ld hl, $4ecf
    ld a, $34
    jp Jump_02e_5221


    ld hl, $4ed4
    ld a, $35
    jp Jump_02e_5221


    ld hl, $4ed9
    ld a, $36
    jp Jump_02e_5221


    ld hl, $4ede
    ld a, $37
    jp Jump_02e_5221


    ld hl, $4ee3
    ld a, $38
    jp Jump_02e_5221


    ld hl, $4ee8
    ld a, $39
    jp Jump_02e_5221


    ld hl, $4eed
    ld a, $3a
    jp Jump_02e_5221


    ld hl, $4ef2
    ld a, $07
    jp Jump_02e_5221


    ld d, $a8
    ld c, l
    ld l, a
    ld d, b
    ld d, $ba
    ld c, l
    ld l, a
    ld d, b
    ld d, $c9
    ld c, l
    ld l, a
    ld d, b
    ld d, $dd
    ld c, l
    ld l, a
    ld d, b
    ld d, $f2
    ld c, l
    ld l, a
    ld d, b
    ld d, $05
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $17
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $2e
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $44
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $5c
    ld c, [hl]
    ld l, a
    ld d, b
    call Call_02e_51eb
    ld a, $01
    ld [$d005], a
    ret


    call Call_02e_51eb
    ld a, $01
    ld [$d005], a
    ret


    call Call_02e_51eb
    ld a, $01
    ld [$d005], a
    ret


Jump_02e_4f12:
    call Call_02e_5169
    jp nc, Jump_02e_4f22

    ld a, [$d005]
    and a
    jp z, Jump_02e_512a

    jp Jump_02e_50c5


Jump_02e_4f22:
    call Call_02e_51eb
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ld de, $5171
    ld hl, $c556
    call $1078
    pop af
    ldh [$d4], a
    ld hl, $5182
    ld a, $40
    jp Jump_02e_5221


    ld hl, $5187
    ld a, $41
    jp Jump_02e_5221


    call Call_02e_5169
    ld hl, $518c
    jp c, Jump_02e_50b9

    ld a, $42
    jp Jump_02e_5221


    call Call_02e_5169
    jp c, Jump_02e_50c5

    ld a, [$dc4a]
    ld hl, $dc1f
    bit 7, [hl]
    jr nz, jr_02e_4f83

jr_02e_4f65:
    call $2f8c
    and $0f
    cp $0b
    jr nc, jr_02e_4f65

    swap a
    ld e, a

jr_02e_4f71:
    call $2f8c
    and $03
    cp $03
    jr nc, jr_02e_4f71

    add e
    ld [$dc4a], a
    ld hl, $dc1f
    set 7, [hl]

jr_02e_4f83:
    ld c, a
    call Call_02e_4f8f
    ld hl, $5191
    ld a, $43
    jp Jump_02e_5221


Call_02e_4f8f:
    ld a, c
    swap a
    and $0f
    ld hl, $4ff9
    ld d, $00
    ld e, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    push hl
    inc hl
    ld a, c
    and $0f
    ld c, a
    push hl
    ld hl, $4fb8
    ld e, b
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call $2fec
    pop hl
    ld c, [hl]
    ret


    ret nz

    ld c, a
    rst $00
    ld c, a
    adc $4f
    sbc $4f
    call Call_02e_4fd5
    call $343b
    ret


    call Call_02e_4fd5
    call $3468
    ret


    call Call_02e_4fd5
    call $34f8
    ret


Call_02e_4fd5:
    ld h, $00
    ld l, c
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ret


    ld a, c
    and a
    jr z, jr_02e_4feb

jr_02e_4fe2:
    ld a, [de]
    inc de
    cp $50
    jr nz, jr_02e_4fe2

    dec c
    jr nz, jr_02e_4fe2

jr_02e_4feb:
    ld hl, $d073

jr_02e_4fee:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $50
    jr nz, jr_02e_4fee

    ld de, $d073
    ret


    rrca
    ld d, b
    inc d
    ld d, b
    add hl, de
    ld d, b
    ld e, $50
    inc hl
    ld d, b
    jr z, jr_02e_5055

    dec l
    ld d, b
    ld e, d
    ld d, b
    ld l, l
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], a
    ld d, b
    nop
    ld a, [bc]
    sbc e
    sbc [hl]
    sbc b
    ld bc, $2e0c
    cpl
    jr nc, jr_02e_501b

    inc c

jr_02e_501b:
    ld [de], a
    add hl, bc
    dec c
    ld bc, $050c
    inc b
    ld [bc], a
    nop
    ld a, [bc]
    add hl, de
    inc de
    ld c, d
    nop
    ld a, [bc]
    and e
    and a
    ld h, b
    inc bc
    db $10
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    add d
    add a
    add h
    sub c
    sub c
    sbc b
    add [hl]
    sub c
    adc [hl]
    sub l
    add h
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    add b
    sbc c
    add b
    adc e
    add h
    add b
    ld a, a

jr_02e_5055:
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    inc bc
    ld b, $85
    adc e
    sbc b
    adc b
    adc l
    add [hl]
    ld d, b
    add c
    sub h
    add [hl]
    ld d, b
    add [hl]
    sub c
    add b
    sub d
    sub d
    ld d, b
    ld [bc], a
    inc c
    ld hl, $bd2d
    ld bc, $310c
    inc sp
    inc [hl]
    inc bc
    dec c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    and b
    xor e
    xor d
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    or h
    or d
    xor b
    and d
    ld d, b
    adc e
    or h
    and d
    xor d
    cp b
    ld a, a
    add d
    and a
    and b
    xor l
    xor l
    and h
    xor e
    ld d, b
    ld hl, $5196
    ld a, $44
    jp Jump_02e_5221


    ld hl, $519b
    ld a, $45
    jp Jump_02e_5221


    call Call_02e_5169
    ld hl, $51a0
    jr c, jr_02e_50b9

    ld a, $04
    jp Jump_02e_5221


Jump_02e_50b9:
jr_02e_50b9:
    push hl
    ld hl, $dc1f
    res 7, [hl]
    pop hl
    ld a, $46
    jp Jump_02e_5221


Jump_02e_50c5:
    ld hl, $dc1f
    res 7, [hl]
    ld hl, $51d2
    ld a, $47
    jp Jump_02e_5221


    ld hl, $51a5
    ld a, $48
    jp Jump_02e_5221


    ld hl, $51aa
    ld a, $49
    jp Jump_02e_5221


    ld hl, $51af
    ld a, $4a
    jp Jump_02e_5221


    ld hl, $51b4
    ld a, $4b
    jp Jump_02e_5221


    ld hl, $51b9
    ld a, $4c
    jp Jump_02e_5221


    ld hl, $51be
    ld a, $4d
    jp Jump_02e_5221


    ld hl, $51c3
    ld a, $4e
    jp Jump_02e_5221


    ld hl, $51c8
    ld a, $4f
    jp Jump_02e_5221


    ld hl, $51cd
    ld a, $50
    jp Jump_02e_5221


    ld hl, $51d2
    ld a, $51
    jp Jump_02e_5221


    ld hl, $51d2
    ld a, $52
    jp Jump_02e_5221


Jump_02e_512a:
    ldh a, [$d4]
    push af
    ld a, $24
    ld hl, $589d
    rst $08
    ld a, $24
    ld hl, $58a9
    rst $08
    pop af
    ldh [$d4], a
    ld hl, $dc1f
    res 7, [hl]
    ld a, $04
    ld [$d002], a
    xor a
    ld [$d005], a
    ld hl, $51d7
    ld a, $53
    jp Jump_02e_5221


    ld a, $04
    ld [$d002], a
    xor a
    ld [$d005], a
    call Call_02e_5169
    jp nc, Jump_02e_4f12

    ld hl, $51d7
    ld a, $53
    jp Jump_02e_5221


Call_02e_5169:
    call $05a7
    ldh a, [$94]
    cp $12
    ret


    add c
    sub h
    add h
    adc l
    add b
    ldh [$92], a
    ld a, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    ld d, b
    ld d, $72
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $87
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $9a
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $ae
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $b7
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $c9
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $dc
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $eb
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $fb
    ld c, [hl]
    ld l, a
    ld d, b
    ld d, $0d
    ld c, a
    ld l, a
    ld d, b
    ld d, $22
    ld c, a
    ld l, a
    ld d, b
    ld d, $36
    ld c, a
    ld l, a
    ld d, b
    ld d, $4b
    ld c, a
    ld l, a
    ld d, b
    ld d, $5e
    ld c, a
    ld l, a
    ld d, b
    ld d, $73
    ld c, a
    ld l, a
    ld d, b
    ld d, $86
    ld c, a
    ld l, a
    ld d, b
    ld d, $96
    ld c, a
    ld l, a
    ld d, b
    ld d, $99
    ld c, a
    ld l, a
    ld d, b

Call_02e_51dc:
    ld a, [hl]
    cp $16
    jp z, $3a90

    ld de, $d00c
    ld bc, $0028
    jp $3026


Call_02e_51eb:
    ld a, [$d005]
    and a
    ret nz

    call $1052
    call $1057
    ld hl, $520b
    ld a, [$d002]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $5854
    ld a, $24
    rst $08
    ret


    dec e
    nop
    add hl, bc
    nop
    ld bc, $1200
    nop
    ld h, b
    nop
    dec d
    nop
    inc de
    nop
    ld d, [hl]
    nop
    ld b, b
    nop
    ld c, e
    nop
    ld e, d
    nop

Jump_02e_5221:
    push af
    call Call_02e_51dc
    pop af
    jp Jump_02e_46ea


    ld a, [$d109]
    ld hl, $a600
    ld bc, $002f
    call $30fe
    ld d, h
    ld e, l
    push de
    call $31f3
    call $300b
    call $0fc8
    call $0568
    call $0e5f
    pop de
    push de
    ld a, $00
    call $2fcb
    ld a, $77
    ld hl, $65c8
    rst $08
    call $2fe1
    ld a, c
    ld de, $65e6
    or a
    jr z, jr_02e_5268

    ld de, $69e6
    sub $03
    jr c, jr_02e_5268

    ld de, $6de6

jr_02e_5268:
    ld hl, $8800
    ld bc, $7780
    call $0f9d
    pop de
    call Call_02e_52b8
    call $058a
    call $31f6
    ld a, [$d1ec]
    ld e, a
    ld a, $02
    ld hl, $4cb4
    rst $08
    call $32f9
    xor a
    ldh [$a7], a
    call Call_02e_529a
    call $31f3
    call $0568
    call $0e51
    jp $058a


Call_02e_529a:
jr_02e_529a:
    call $0984
    ldh a, [$a7]
    and $0b
    jr z, jr_02e_529a

    and $08
    jr nz, jr_02e_52a8

    ret


jr_02e_52a8:
    ld a, [$cf63]
    push af
    ld hl, $45d4
    ld a, $21
    rst $08
    pop af
    ld [$cf63], a
    jr jr_02e_529a

Call_02e_52b8:
    ld h, d
    ld l, e
    push hl
    ld a, $00
    call $2fcb
    ld de, $002b
    add hl, de
    ld a, [hl+]
    ld [$d1ea], a
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl+]
    ld [$d108], a
    ld b, [hl]
    call $2fe1
    ld hl, $52f8
    ld c, $00

jr_02e_52d9:
    ld a, [hl+]
    cp b
    jr z, jr_02e_52ea

    cp $ff
    jr z, jr_02e_52e6

    inc c
    inc hl
    inc hl
    jr jr_02e_52d9

jr_02e_52e6:
    ld hl, $52f8
    inc hl

jr_02e_52ea:
    ld a, c
    ld [$d1ec], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $52f7
    pop bc
    push de
    jp hl


    ret


    sbc [hl]
    ld a, $56
    or l
    rla
    ld d, e
    or [hl]
    dec [hl]
    ld d, e
    or a
    jp z, $b856

    ld c, e
    ld d, h
    cp c
    jp nc, $ba53

    sub $54
    cp e
    add d
    ld d, l
    cp h
    db $10
    ld d, a
    cp l
    db $76
    ld d, a
    rst $38
    push bc
    ld hl, $9310
    ld de, $5d46
    ld c, $40
    call Call_02e_5915
    ld de, $5a26
    ld c, $30
    call Call_02e_591e
    ld de, $594e
    ld c, $08
    call Call_02e_5915
    jr jr_02e_5351

    push bc
    ld hl, $9310
    ld de, $5dc6
    ld c, $40
    call Call_02e_5915
    ld de, $59c6
    ld c, $30
    call Call_02e_591e
    ld de, $595e
    ld c, $08
    call Call_02e_5915

jr_02e_5351:
    ld de, $5976
    ld c, $10
    call Call_02e_5915
    ld c, $10
    call Call_02e_590c
    ld de, $5c3e
    ld c, $40
    call Call_02e_590c
    ld c, $40
    call Call_02e_5915
    call Call_02e_5858
    ld hl, $c5ce
    ld a, $3f
    call Call_02e_58d4
    ld a, $39
    ld hl, $c5c7
    call Call_02e_58fc
    ld a, $44
    ld hl, $c4ca
    call Call_02e_58ee
    ld hl, $c58b
    call Call_02e_58ee
    ld a, $4c
    ld hl, $c593
    call Call_02e_58ee
    ld hl, $c4d7
    call Call_02e_58ee
    ld a, $50
    ld hl, $c4e2
    call Call_02e_58ee
    ld a, $40
    ld hl, $c4d5
    ld [hl+], a
    ld hl, $c5be
    ld [hl], a
    ld a, $41
    ld hl, $c508
    ld [hl+], a
    ld hl, $c515
    ld [hl+], a
    ld hl, $c59d
    ld [hl], a
    ld a, $42
    ld hl, $c4d1
    ld [hl+], a
    ld hl, $c512
    ld [hl+], a
    ld hl, $c56b
    ld [hl], a
    ld a, $43
    ld hl, $c582
    ld [hl+], a
    pop hl
    jp Jump_02e_5803


    push bc
    ld hl, $9310
    ld de, $597e
    ld c, $08
    call Call_02e_5915
    ld de, $598e
    ld c, $08
    call Call_02e_590c
    ld de, $598e
    ld c, $08
    call Call_02e_590c
    ld de, $597e
    ld c, $08
    call Call_02e_5915
    ld de, $5d76
    ld c, $08
    call Call_02e_5915
    ld de, $5a56
    ld c, $30
    call Call_02e_591e
    ld hl, $93d0
    ld de, $5c9e
    ld c, $20
    call Call_02e_590c
    ld de, $598e
    ld c, $08
    call Call_02e_5915
    ld a, $31
    ld hl, $c4a0
    call Call_02e_58a8
    ld hl, $c5f5
    call Call_02e_58a8
    ld a, $33
    ld hl, $c4b4
    call Call_02e_58ba
    ld hl, $c4b3
    call Call_02e_58ba
    ld hl, $c5ce
    ld a, $35
    call Call_02e_58d4
    inc a
    ld hl, $c5c7
    call Call_02e_58fc
    call Call_02e_5491
    pop hl
    jp Jump_02e_5803


    push bc
    ld hl, $9310
    ld de, $5e26
    ld c, $28
    call Call_02e_5915
    ld de, $59f6
    ld c, $30
    call Call_02e_591e
    ld de, $5966
    ld c, $08
    call Call_02e_5915
    ld de, $5c5e
    ld c, $20
    call Call_02e_5915
    ld de, $596e
    ld c, $08
    call Call_02e_590c
    call Call_02e_587b
    ld hl, $c5ce
    ld a, $3c
    call Call_02e_58d4
    ld a, $36
    ld hl, $c5c7
    call Call_02e_58fc
    call Call_02e_5491
    pop hl
    jp Jump_02e_5803


Call_02e_5491:
    ld a, $3d
    ld hl, $c4ca
    call Call_02e_58ee
    ld hl, $c4d8
    call Call_02e_58ee
    ld hl, $c4f9
    call Call_02e_58ee
    ld hl, $c57e
    call Call_02e_58ee
    ld hl, $c596
    call Call_02e_58ee
    ld hl, $c588
    call Call_02e_58ee
    ld a, $41
    ld hl, $c4f5
    ld [hl], a
    ld hl, $c4ce
    ld [hl], a
    ld hl, $c4fc
    ld [hl], a
    ld hl, $c4d6
    ld [hl], a
    ld hl, $c5a7
    ld [hl], a
    ld hl, $c585
    ld [hl], a
    ld hl, $c5a0
    ld [hl], a
    ret


    push bc
    ld hl, $9310
    ld bc, $0028
    call Call_02e_57f8
    ld de, $5c96
    ld c, $08
    call Call_02e_5915
    ld de, $5c7e
    ld c, $08
    call Call_02e_5915
    ld de, $593e
    ld c, $08
    call Call_02e_5915
    ld de, $597e
    ld c, $08
    call Call_02e_590c
    ld de, $5926
    ld c, $08
    call Call_02e_5915
    ld de, $5a86
    ld c, $30
    call Call_02e_591e
    call Call_02e_587b
    ld a, $31
    ld hl, $c4b5
    call Call_02e_58ee
    ld hl, $c5dd
    call Call_02e_58ee
    ld hl, $c4dd
    ld [hl], a
    ld hl, $c4b7
    ld [hl], a
    ld hl, $c5f0
    ld [hl], a
    ld hl, $c5ca
    ld [hl], a
    ld a, $36
    ld hl, $c4f1
    ld [hl], a
    ld hl, $c4de
    ld [hl], a
    ld hl, $c4cb
    ld [hl], a
    ld hl, $c4b8
    ld [hl], a
    inc a
    ld hl, $c5ef
    ld [hl], a
    ld hl, $c5dc
    ld [hl], a
    ld hl, $c5c9
    ld [hl], a
    ld hl, $c5b6
    ld [hl], a
    inc a
    ld hl, $c5ce
    ld b, $0e
    call Call_02e_58de
    inc a
    ld hl, $c57e
    call Call_02e_58d4
    ld hl, $c506
    call Call_02e_58d4
    inc a
    ld hl, $c4ba
    call Call_02e_58d0
    ld hl, $c5e1
    call Call_02e_58d0
    inc a
    ld hl, $c5a7
    call Call_02e_58fc
    pop hl
    jp Jump_02e_5803


    push bc
    ld hl, $9310
    ld de, $597e
    ld c, $08
    call Call_02e_5915
    ld a, $ff
    ld bc, $0010
    call $3041
    ld de, $592e
    ld c, $08
    call Call_02e_591e
    ld de, $5b46
    ld c, $b8
    call Call_02e_591e
    ld de, $5d16
    ld c, $30
    call Call_02e_590c
    ld de, $5db6
    ld c, $08
    call Call_02e_590c
    ld de, $5d16
    ld c, $08
    call Call_02e_590c
    ld de, $5d26
    ld c, $10
    call Call_02e_590c
    ld de, $5d3e
    ld c, $08
    call Call_02e_590c
    ld a, $31
    ld hl, $c4a0
    call Call_02e_58dc
    ld hl, $c4b4
    call Call_02e_58e3
    ld hl, $c4c7
    call Call_02e_58e3
    inc a
    ld hl, $c5f4
    call Call_02e_58dc
    inc a
    ld hl, $c5e0
    call Call_02e_58dc
    inc a
    ld hl, $c4ca
    call Call_02e_5636
    ld hl, $c4df
    call Call_02e_5636
    ld hl, $c4f4
    call Call_02e_5636
    dec hl
    ld [hl], $7f
    dec a
    ld hl, $c5c7
    call Call_02e_58ee
    add $04
    ld hl, $c5ef
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    push af
    ld hl, $c4c0
    call Call_02e_58fc
    pop af
    ld hl, $c4ff
    call Call_02e_58fc
    inc a
    ld hl, $c57e
    call Call_02e_58d4
    inc a
    ld hl, $c4e6
    call Call_02e_58ee
    pop hl
    jp Jump_02e_5803


Call_02e_5636:
    ld b, $06

jr_02e_5638:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_02e_5638

    ret


    push bc
    ld hl, $9310
    ld de, $5d86
    ld c, $40
    call Call_02e_590c
    ld de, $5c1e
    ld c, $20
    call Call_02e_591e
    ld de, $5db6
    ld c, $08
    call Call_02e_5915
    ld de, $5cbe
    ld c, $20
    call Call_02e_590c
    ld c, $20
    call Call_02e_5915
    call Call_02e_5858
    ld hl, $c5ce
    ld a, $3d
    call Call_02e_58d4
    ld a, $39
    ld hl, $c5b4
    call Call_02e_58ee
    ld hl, $c5a6
    call Call_02e_58ee
    ld a, $3e
    ld hl, $c4ca
    call Call_02e_58ee
    ld hl, $c4e1
    call Call_02e_58ee
    ld hl, $c4d2
    call Call_02e_58ee
    ld hl, $c4ec
    call Call_02e_58ee
    ld hl, $c581
    call Call_02e_58ee
    ld hl, $c578
    call Call_02e_58ee
    ld a, $42
    ld hl, $c4f3
    call Call_02e_58ee
    ld hl, $c4e8
    call Call_02e_58ee
    ld hl, $c4d6
    call Call_02e_58ee
    ld hl, $c56a
    call Call_02e_58ee
    ld hl, $c58a
    call Call_02e_58ee
    pop hl
    jp Jump_02e_5803


    push bc
    ld hl, $9310
    ld de, $5e4e
    ld c, $28
    call Call_02e_5915
    ld de, $595e
    ld c, $08
    call Call_02e_5915
    ld hl, $93d0
    ld de, $5bfe
    ld c, $20
    call Call_02e_590c
    ld de, $5936
    ld c, $08
    call Call_02e_5915
    call Call_02e_587b
    ld hl, $c5d4
    ld a, $36
    ld b, $0a
    call Call_02e_58de
    call Call_02e_5491
    ld a, $01
    ld [$d234], a
    ld hl, $c569
    call $3786
    pop hl
    jp Jump_02e_5803


    push bc
    ld hl, $9310
    ld de, $5e06
    ld c, $20
    call Call_02e_5915
    ld de, $593e
    ld c, $10
    call Call_02e_5915
    ld de, $5996
    ld c, $30
    call Call_02e_591e
    xor a
    ld bc, $0010
    call $3041
    ld de, $5cfe
    ld c, $18
    call Call_02e_590c
    ld de, $5946
    ld c, $08
    call Call_02e_590c
    ld a, $31
    ld hl, $c4a0
    call Call_02e_58a8
    ld hl, $c5f5
    call Call_02e_58a8
    ld a, $33
    ld hl, $c4b4
    call Call_02e_58ba
    ld hl, $c4b3
    call Call_02e_58ba
    ld a, $35
    ld hl, $c5ce
    call Call_02e_589e
    ld a, $37
    ld hl, $c5c7
    call Call_02e_58fc
    call Call_02e_5491
    pop hl
    jp Jump_02e_5803


    push bc
    ld hl, $9310
    ld bc, $0028
    call Call_02e_57f8
    ld de, $592e
    ld c, $08
    call Call_02e_5915
    ld de, $5ab6
    ld c, $90
    call Call_02e_5915
    ld de, $5dce
    ld c, $08
    call Call_02e_590c
    ld de, $5df6
    ld c, $08
    call Call_02e_590c
    call Call_02e_587b
    ld a, $36
    ld hl, $c5e1
    call Call_02e_58d8
    inc a
    ld hl, $c5c7
    call Call_02e_58fc
    inc a
    ld hl, $c5ef
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $3f
    ld hl, $c4b5
    call Call_02e_58a8
    ld a, $41
    ld hl, $c4c8
    call Call_02e_58b5
    ld a, $43
    ld hl, $c4db
    call Call_02e_58b5
    ld a, $45
    ld hl, $c4b4
    ld [hl], a
    inc a
    ld hl, $c4c7
    ld [hl], a
    inc a
    ld hl, $c5e0
    ld [hl], a
    inc a
    ld hl, $c5f3
    ld [hl], a
    inc a
    ld hl, $c506
    call Call_02e_58d4
    inc a
    ld hl, $c57e
    call Call_02e_58d4
    pop hl
    jp Jump_02e_5803


Call_02e_57f8:
jr_02e_57f8:
    xor a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_02e_57f8

    ret


Jump_02e_5803:
    ld bc, $002f
    ld de, $d002
    ld a, $00
    call $2fcb
    call $3026
    call $2fe1
    ld hl, $d023
    ld de, $d050
    ld bc, $000a
    call $3026
    ld a, $50
    ld [$d023], a
    ld [$d05a], a
    ld de, $d002
    ld hl, $c52e
    call $1078
    ld de, $d050
    ld a, [de]
    and a
    ret z

    ld a, [$d1ec]
    ld hl, $c5c0
    cp $03
    jr z, jr_02e_584b

    ld hl, $c5be
    cp $06
    jr z, jr_02e_584b

    ld hl, $c5bd

jr_02e_584b:
    jp $1078


jr_02e_584e:
    ld a, [hl]
    xor $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_02e_584e

    ret


Call_02e_5858:
    ld hl, $c4a0
    ld a, $31
    ld [hl+], a
    inc a
    call Call_02e_58d8
    inc a
    ld [hl+], a
    inc a
    call Call_02e_58e3
    ld a, $36
    ld [hl+], a
    inc a
    call Call_02e_58d8
    ld hl, $c4c7
    ld a, $35
    call Call_02e_58e3
    ld a, $38
    ld [hl], a
    ret


Call_02e_587b:
    ld hl, $c4a0
    ld a, $31
    ld [hl+], a
    inc a
    call Call_02e_58d8
    ld [hl], $31
    inc hl
    inc a
    call Call_02e_58e3
    ld [hl], $31
    inc hl
    inc a
    call Call_02e_58d8
    ld hl, $c4c7
    ld a, $35
    call Call_02e_58e3
    ld [hl], $31
    ret


Call_02e_589e:
    push af
    ld b, $07
    jr jr_02e_58ab

    push af
    ld b, $08
    jr jr_02e_58ab

Call_02e_58a8:
    push af
    ld b, $09

jr_02e_58ab:
    ld [hl+], a
    inc a
    ld [hl+], a
    dec a
    dec b
    jr nz, jr_02e_58ab

    ld [hl], a
    pop af
    ret


Call_02e_58b5:
    push af
    ld b, $07
    jr jr_02e_58bd

Call_02e_58ba:
    push af
    ld b, $08

jr_02e_58bd:
    ld [hl], a
    ld de, $0014
    add hl, de
    inc a
    ld [hl], a
    add hl, de
    dec a
    dec b
    jr nz, jr_02e_58bd

    ld [hl], a
    pop af
    ret


    ld b, $07
    jr jr_02e_58de

Call_02e_58d0:
    ld b, $0d
    jr jr_02e_58de

Call_02e_58d4:
    ld b, $10
    jr jr_02e_58de

Call_02e_58d8:
    ld b, $12
    jr jr_02e_58de

Call_02e_58dc:
    ld b, $14

Call_02e_58de:
jr_02e_58de:
    ld [hl+], a
    dec b
    jr nz, jr_02e_58de

    ret


Call_02e_58e3:
    ld b, $10
    ld de, $0014

jr_02e_58e8:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_02e_58e8

    ret


Call_02e_58ee:
    push af
    ld [hl+], a
    inc a
    ld [hl], a
    ld bc, $0013
    add hl, bc
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    pop af
    ret


Call_02e_58fc:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld bc, $0012
    add hl, bc
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ret


Call_02e_590c:
jr_02e_590c:
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    dec c
    jr nz, jr_02e_590c

    ret


Call_02e_5915:
jr_02e_5915:
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_02e_5915

    ret


Call_02e_591e:
jr_02e_591e:
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl+], a
    dec c

jr_02e_5923:
    jr nz, jr_02e_591e

    ret


    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    db $10
    adc b
    ld c, b
    ld c, h
    ld l, l
    ld a, l
    rst $38
    rst $38
    inc a
    ld a, [hl]
    rst $20
    db $db
    jr jr_02e_5923

    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    jr jr_02e_5964

    ld d, $16
    inc d
    ld [hl], b
    ldh a, [$60]
    nop
    nop
    nop
    inc a
    jp $c33c


    nop
    nop
    nop
    nop
    nop
    inc sp
    ld [hl], a
    xor $dd
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a

jr_02e_5964:
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    ld h, b
    or $f6
    ld h, b
    nop
    ld [hl], $7f
    ld a, a
    ld a, a
    ld a, $1c
    ld [$0000], sp
    ccf
    ld a, $3c
    jr c, jr_02e_59ad

    jr nz, jr_02e_597f

jr_02e_597f:
    nop
    ld a, $3e
    ld a, $3e
    ld a, $00
    nop
    nop
    inc e
    ld a, $3e
    ld a, $1c
    nop
    inc a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    inc a
    ld [hl], b
    ld c, [hl]
    ld b, c
    jr nz, jr_02e_59bb

    db $10
    db $10
    rrca
    nop
    rrca
    cp a
    ld a, a
    ld a, h
    ld a, h
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38

jr_02e_59ad:
    rst $38
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_59bb:
    rst $38
    rst $38
    rst $38
    rst $30
    rst $20
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld h, b
    ld l, a
    ld a, a
    ccf
    ld a, a
    rst $38
    sbc a
    jr jr_02e_5a00

    ld [hl], b
    ldh [$f0], a
    ldh a, [$d8]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld a, $7e
    ld a, a
    ld a, a
    ccf
    rra
    rrca
    nop
    rlca
    rra
    ld a, a
    rst $38
    db $fc
    ldh a, [$e0]
    ldh a, [$f8]
    db $fc
    db $fc
    ld c, $06
    ld b, $03
    nop
    nop
    ld a, b
    db $fc
    db $fc
    cp $fe
    ld a, [hl]
    inc bc
    rrca

jr_02e_5a00:
    rra
    rra
    ccf
    ccf
    ld a, h
    ld a, e
    ret nz

    ldh a, [$f8]
    db $fc
    db $fc
    cp $3e
    sbc $7f
    rra
    rlca
    ld bc, $0000
    nop
    nop
    ld [hl], h
    ld [hl], l
    or $fb
    ld a, h
    rrca
    ld a, $3e
    ld l, [hl]
    xor $1c
    db $fc
    ld hl, sp-$10
    inc a
    inc a
    jr jr_02e_5a47

    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ldh [$f0], a
    ldh a, [$e0]
    ldh a, [$f0]
    ldh a, [$e3]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld bc, $0303
    rlca
    rrca
    rrca
    rlca
    rst $20

jr_02e_5a47:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    or b
    ldh a, [$fb]
    rst $38
    cp $ff
    rst $38
    ret nz

    ldh a, [$f8]
    ld a, b
    ld a, h
    dec a
    rra
    rlca
    nop
    nop
    ld bc, $0703
    rst $28
    rst $38
    ld hl, sp+$00
    ld [hl], b
    ldh a, [$e0]
    ldh [$c4], a
    inc c
    ld e, $0f
    rrca
    rrca
    rlca
    rra
    rra
    ccf
    ccf
    db $fc
    db $fc
    db $fc
    ld hl, sp-$02
    cp $ff
    rst $38
    ld a, $7f
    ld a, a
    rst $38
    cp $fe
    db $fc
    ldh a, [rP1]
    nop
    nop
    ld c, $1f
    rra
    rrca
    rlca
    nop
    nop
    nop
    ld h, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    sbc h
    cp $fe
    db $fc
    rlca
    rrca
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rlca
    db $fc
    ld hl, sp-$08
    ld hl, sp-$04
    cp $fe
    inc e
    nop
    nop
    nop
    nop
    rlca
    rra
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ldh [$f8], a
    cp $fe
    nop
    nop
    nop
    nop
    jr jr_02e_5ae8

    ld e, $0e
    ld a, a
    ccf
    ccf
    ccf
    rra
    rrca
    inc bc
    rrca
    cp $fc
    db $fc
    db $fc
    ei
    di
    and $e6
    ld b, $0e
    inc a
    ldh a, [$c0]
    nop
    nop
    nop
    ccf
    ccf

jr_02e_5ae8:
    rrca
    rra
    ccf
    ccf
    cp a
    rst $38
    or $fb
    ei
    rst $20
    cp $fc
    ld a, [$bfff]
    ld [hl], a
    ret nz

    sbc h
    ld a, c
    ei
    ld [hl-], a
    nop
    rst $38
    ld a, [hl]
    ld d, $f3
    pop hl
    call $1e3f
    sbc [hl]
    di
    rst $20
    rst $00
    di
    jp c, $9cdc

    call z, $d0c6
    sbc h
    sbc $ce
    ld l, h
    or h
    dec l
    ld [hl], $73
    ld a, e
    add hl, sp
    dec bc
    ld h, e
    inc sp
    add hl, sp
    dec sp
    ld e, e
    rst $08
    db $e3
    rst $20
    rst $08
    ld a, c
    rst $38
    cp $f3
    ld sp, hl
    db $fc
    rst $28
    and $b2
    rst $38
    rst $38
    ccf
    daa
    or e
    sbc a
    rst $08
    ld a, c
    cp h
    db $fc
    ld hl, sp-$04
    db $fd
    rst $38
    rst $38
    rst $38
    dec l
    or a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rra
    rlca
    ld bc, $0000
    nop
    nop
    nop
    ldh a, [$fe]
    rst $38
    nop
    rrca
    ld a, a
    ccf
    rra
    ld bc, $8000
    nop
    ldh [$f8], a
    db $fc
    db $fc
    cp $fe
    ccf
    nop
    ld bc, $0001
    nop
    nop

jr_02e_5b6c:
    ld bc, $0003
    add b
    ldh [$f0], a
    jr nc, jr_02e_5b6c

    db $fc
    rst $38
    ld a, a
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $e000
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rlca
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    jp $0f87


    rlca
    add b
    add b
    add b
    nop
    add b
    ret nz

    ldh [$f0], a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $18
    ccf
    ld a, c
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $fc
    db $fc
    db $fc
    cp $de
    ld c, $00
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    ldh [rLCDC], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0703
    rra
    ccf
    ccf
    nop
    ld h, b
    ld h, b
    ret nz

    ldh [$e0], a
    ld hl, sp-$04
    rra
    rra
    rrca
    rrca
    rra
    dec de
    inc bc
    inc bc
    db $fc
    ld hl, sp-$10
    ldh [$f0], a
    or b
    nop
    nop
    inc de
    add e
    ld c, e
    ld c, e
    ld l, l
    ld a, l
    rst $38
    rst $38
    sub b
    ret z

    ld hl, sp-$04
    db $fd
    db $fd
    rst $38
    rst $38
    nop
    inc bc
    rrca
    rra
    ccf
    ld a, $7d
    ld a, d
    nop
    ldh [$f8], a
    db $fc
    cp $3e
    rst $18
    cpl
    ld b, d
    ld a, d
    ld a, l
    ld a, $3f
    rra
    rrca
    inc bc
    ld hl, $df2f
    ld a, $fe
    db $fc
    ld hl, sp-$20
    pop bc
    ld h, e
    ld [hl], e
    ld a, e
    ccf
    rra
    ld a, a
    rst $30
    nop
    add a
    sbc [hl]
    cp [hl]
    cp h
    ld hl, sp-$02
    rst $38
    adc a
    rra
    rra
    rra
    rrca
    rlca
    rra
    ld e, $f0
    ld hl, sp-$08
    ld hl, sp-$10
    ldh [$f8], a
    ld a, b
    nop
    nop
    ld bc, $0703
    rrca
    rra
    ccf
    ld b, b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$7f]
    rst $38
    rra
    ld bc, $0000
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f8]
    jr jr_02e_5c5c

jr_02e_5c5c:
    nop
    nop
    nop
    nop
    inc e
    ld a, $7f
    ld a, a
    ld a, a
    ccf
    nop
    nop
    jr c, jr_02e_5ce6

    cp $fe
    cp $fc
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $0000
    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    add b
    nop
    nop
    nop
    ld bc, $0703
    rrca
    rra
    ccf
    ld a, a
    nop
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    cp $7f
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $fe00
    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    add b
    nop
    nop
    rlca
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    ret nz

    ldh a, [$f8]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    cp $fe
    cp $fc
    db $fc
    ld hl, sp-$10
    ret nz

    inc bc
    rlca
    rlca
    ld [hl], a
    rst $38
    db $fc
    ld hl, sp-$08
    ret nz

    ldh [$e0], a
    xor $ff
    ccf
    rra
    rra
    ld a, b
    jr jr_02e_5d0d

    ld a, a
    ld a, a
    ld a, $3c
    nop
    ld e, $18
    inc a
    cp $fe
    cp $3c
    nop
    nop
    nop
    nop
    nop
    inc c
    ld e, $3e
    ccf

jr_02e_5ce6:
    nop
    nop
    nop
    nop
    ld h, b
    ldh a, [$f8]
    ld hl, sp+$1c
    inc c
    inc e
    ccf
    ld a, $1e
    inc c
    nop
    ld [hl], b
    ld h, b
    ld [hl], b
    ld hl, sp-$08
    ldh a, [$60]
    nop
    nop
    jr jr_02e_5d1d

    inc a
    ld a, $7e
    ld l, a
    rst $00
    nop
    ld bc, $0301
    ld a, e
    cp $fe

jr_02e_5d0d:
    ld a, h
    rst $00
    add [hl]
    adc h
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld a, a
    rst $38

jr_02e_5d1d:
    rst $38
    nop
    nop
    ld a, b
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ld e, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $3e
    nop
    nop
    rst $38
    rst $38
    ld a, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $20
    jp $ff81


    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rst $28
    xor $ec
    add sp, -$18
    db $ec
    xor $ef
    rst $30
    ld [hl], a
    scf
    rla
    rla
    scf
    ld [hl], a
    rst $30
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $ffe7


    nop
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $18
    cp $fe
    db $fc
    ldh a, [rIE]
    rst $38
    jp $ffe7


    ld a, [hl]
    inc a

jr_02e_5d95:
    nop
    rst $38
    rst $38
    di
    ei
    ld a, a
    ld a, a
    ccf
    rrca
    ld hl, sp-$04
    sbc $ce
    adc $de
    db $fc
    ld hl, sp+$1f
    ccf
    ld a, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ccf
    rra
    ldh a, [$fc]
    cp $fe
    rst $18
    rst $08
    rst $38
    rst $38
    nop
    inc a
    ld a, [hl]
    rst $38
    rst $20
    jp $ffff


    rrca
    ccf
    ld a, a
    ld a, a
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $18
    ret nc

    ret nc

    ret nc

    ret nc

    rst $38
    rst $38
    jr jr_02e_5d95

    ld h, [hl]
    inc a
    jr jr_02e_5dd6

jr_02e_5dd6:
    rst $38
    rst $38
    inc bc
    ei
    dec bc
    dec bc
    dec bc
    dec bc
    ret nc

    ret c

    call z, $e6e6
    call z, $d0d8
    dec bc
    dec de
    inc sp
    ld h, a
    ld h, a
    inc sp
    dec de
    dec bc
    ret nc

    ret nc

    ret nc

    ret nc

    rst $18
    ret nz

    rst $38
    rst $38
    nop
    jr jr_02e_5e35

    ld h, [hl]
    jp $ff18


    rst $38
    dec bc
    dec bc
    dec bc
    dec bc
    ei
    inc bc
    rst $38
    rst $38
    nop
    ld e, $fe
    cp $fe
    ldh a, [rP1]
    nop
    nop
    nop
    ldh a, [$fe]
    cp $fe
    ld e, $00
    ld a, b
    ld a, b
    ld a, b
    ld a, h
    inc a
    inc a
    inc a
    nop
    ld e, $1e
    ld e, $3e
    inc a
    inc a
    inc a
    nop
    rst $38
    jp $a599


    and l
    sbc c
    jp $ffff


    rst $38
    rst $38
    rst $20
    jp $e7c3


jr_02e_5e35:
    inc a
    cp $fe
    di
    pop hl
    pop hl
    di
    cp $fe
    inc a
    rst $20
    jp $e7c3


    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $08
    add a
    add a
    rst $08
    ld a, a
    ld a, a
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld a, d
    ld hl, $5e80
    ld de, $0001
    jp $30e1


    sbc [hl]
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
