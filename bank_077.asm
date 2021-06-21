; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

    nop
    nop
    db $10
    db $10
    jr c, jr_077_403e

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_077_4044

    jr z, jr_077_4036

    ld l, h
    ld l, h
    nop
    nop
    jr c, jr_077_404c

    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    jr c, jr_077_4054

    ld b, h
    ld b, h
    jr c, jr_077_4058

    nop
    nop
    jr c, jr_077_405c

    ld d, h
    ld d, h
    cp d
    cp d
    xor [hl]
    xor [hl]
    cp b
    cp b
    ld b, h
    ld b, h
    jr c, jr_077_4068

    nop
    nop
    inc e
    inc e
    ld [hl-], a
    ld [hl-], a

jr_077_4036:
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a

jr_077_403e:
    inc e
    inc e
    nop
    nop
    ld c, $0e

jr_077_4044:
    jr c, jr_077_407e

    ld b, h
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld b, h
    ld b, h

jr_077_404c:
    jr c, jr_077_4086

    ld c, $0e
    nop
    nop
    ld [hl], b
    ld [hl], b

jr_077_4054:
    adc [hl]
    adc [hl]
    xor d
    xor d

jr_077_4058:
    adc h
    adc h
    ld [hl], b
    ld [hl], b

jr_077_405c:
    jr nz, jr_077_407e

    ret c

    ret c

    nop
    nop
    jr z, jr_077_408c

    jr c, jr_077_409e

    ld b, h
    ld b, h

jr_077_4068:
    ld b, h
    ld b, h
    jr c, jr_077_40a4

    ld h, b
    ld h, b
    inc e
    inc e
    nop
    nop
    ld b, h
    ld b, h
    cp d
    cp d
    add $c6
    sub $d6
    add $c6
    cp d
    cp d

jr_077_407e:
    ld b, h
    ld b, h
    nop
    nop
    db $10
    db $10
    jr c, jr_077_40be

jr_077_4086:
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h

jr_077_408c:
    jr c, jr_077_40c6

    db $10
    stop
    nop
    jr c, jr_077_40cc

    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    jr c, jr_077_40d4

    db $10
    db $10

jr_077_409e:
    ld h, b
    ld h, b
    nop
    nop
    jr nz, jr_077_40c4

jr_077_40a4:
    db $76
    db $76
    adc b
    adc b
    xor b
    xor b
    adc b
    adc b
    db $76
    db $76
    jr nz, jr_077_40d0

    nop
    nop
    jr c, jr_077_40ec

    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    jr c, jr_077_40f4

    db $10
    db $10

jr_077_40be:
    inc e
    inc e
    nop
    nop
    ld b, h
    ld b, h

jr_077_40c4:
    jr c, jr_077_40fe

jr_077_40c6:
    ld d, h
    ld d, h
    xor d
    xor d
    xor d
    xor d

jr_077_40cc:
    sub d
    sub d
    ld b, h
    ld b, h

jr_077_40d0:
    nop
    nop
    nop
    nop

jr_077_40d4:
    jp nc, $bad2

    cp d
    xor d
    xor d
    cp d
    cp d
    sub [hl]
    sub [hl]
    nop
    nop
    nop
    nop
    jr c, jr_077_411c

    ld b, h
    ld b, h
    cp d
    cp d
    xor d
    xor d
    cp d
    cp d

jr_077_40ec:
    ld b, h
    ld b, h
    jr c, jr_077_4128

    nop
    nop
    jr c, jr_077_412c

jr_077_40f4:
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld a, b
    ld a, b
    ld b, b
    ld b, b

jr_077_40fe:
    ld b, b
    ld b, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc b
    adc b
    xor b
    xor b
    adc b
    adc b
    ld [hl], d
    ld [hl], d
    ld [de], a
    ld [de], a
    inc c
    inc c
    nop
    nop
    jr c, jr_077_414c

    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld a, b
    ld a, b

jr_077_411c:
    ld c, h
    ld c, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, b
    ld a, b
    add b
    add b
    cp b
    cp b

jr_077_4128:
    ld b, h
    ld b, h
    ld a, [hl-]
    ld a, [hl-]

jr_077_412c:
    ld [bc], a
    ld [bc], a
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    db $10
    db $10
    jr c, jr_077_4170

    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    jr c, jr_077_4178

    nop
    nop
    jr c, jr_077_417c

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_077_4182

    ld d, h
    ld d, h

jr_077_414c:
    sub d
    sub d
    ld a, h
    ld a, h
    nop
    nop
    ld b, h
    ld b, h
    ld a, h
    ld a, h
    inc h
    inc h
    jr c, jr_077_4192

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_077_4198

    nop
    nop
    db $10
    db $10
    ld d, h
    ld d, h
    jr c, @+$3a

    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    jr c, jr_077_41a8

jr_077_4170:
    nop
    nop
    add $c6
    jr c, jr_077_41ae

    ld b, h
    ld b, h

jr_077_4178:
    ld d, h
    ld d, h
    ld b, h
    ld b, h

jr_077_417c:
    jr c, jr_077_41b6

    add $c6
    nop
    nop

jr_077_4182:
    ld b, h
    ld b, h
    jr c, @+$3a

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_077_41c4

    db $10
    db $10
    jr c, @+$3a

    jr nz, @+$22

jr_077_4192:
    db $10
    db $10
    jr c, @+$3a

    ld b, h
    ld b, h

jr_077_4198:
    ld b, h
    ld b, h
    jr c, @+$3a

    db $10
    db $10
    ld [$0008], sp
    nop
    db $10
    db $10
    jr c, @+$3a

    ld a, h
    ld a, h

jr_077_41a8:
    cp $fe
    ld a, h
    ld a, h
    jr c, jr_077_41e6

jr_077_41ae:
    db $10
    db $10
    ld hl, $c4a0
    ld de, $ca90

jr_077_41b6:
    ld bc, $0154
    call $3026
    ld hl, $cab5
    ld a, $62
    ld [hl+], a
    inc a
    ld [hl], a

jr_077_41c4:
    ld hl, $cac9
    ld a, $64
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $cb45
    ld a, $7f
    ld [hl+], a
    ld [hl], a
    ld hl, $cb59
    ld a, $61
    ld [hl+], a
    ld [hl], a
    ld hl, $cb6e
    ld bc, $0512
    call $0fb6
    ld a, [$d265]

jr_077_41e6:
    dec a
    call $3393
    push af
    ld a, [$d265]
    ld b, a
    ld c, $01
    ld a, $11
    ld hl, $4355
    rst $08
    pop af
    ld a, b
    ld hl, $cb6d
    call nz, $13d4
    ld hl, $caa3
    ld [hl], $35
    ld de, $0014
    add hl, de
    ld b, $0f

jr_077_420a:
    ld [hl], $37
    add hl, de
    dec b
    jr nz, jr_077_420a

    ld [hl], $3a
    ret


    ld hl, $ca90
    ld bc, $00a0
    ld a, $7f
    call $3041
    ld hl, $ca90
    ld a, $36
    ld b, $06
    call Call_077_426a
    ld hl, $caa3
    ld a, $37
    ld b, $06
    call Call_077_426a
    ld hl, $cb08
    ld [hl], $38
    inc hl
    ld a, $39
    ld bc, $0012
    call $3041
    ld [hl], $3a
    ld hl, $cb1c
    ld bc, $0014
    ld a, $32
    call $3041
    ld a, [$d265]
    dec a
    call $3393
    push af
    ld a, [$d265]
    ld b, a
    ld c, $02
    ld a, $11
    ld hl, $4355
    rst $08
    pop af
    ld hl, $caa5
    ld a, b
    call nz, $13d4
    ret


Call_077_426a:
    push de
    ld de, $0014

jr_077_426e:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_077_426e

    pop de
    ret


    ld d, b
    ld c, [hl]
    ld a, a
    add d
    add a
    add h
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld a, a
    adc e
    adc b
    adc l
    adc d
    add sp, -$18
    add sp, $50
    ld c, [hl]
    ld a, a
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub d
    adc h
    adc b
    sub e
    sub e
    adc b
    adc l
    add [hl]
    add sp, -$18
    add sp, $50
    ld c, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    sub c
    adc b
    adc l
    sub e
    adc b
    adc l
    add [hl]
    add sp, -$18
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    rst $30
    ld c, [hl]
    ld c, [hl]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    ld hl, sp+$4e
    ld c, [hl]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    ld sp, hl
    ld c, [hl]
    ld c, [hl]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    ld a, [$4e4e]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50

Jump_077_4381:
    call $31f3
    call $0fc8
    call $300b
    xor a
    ldh [$d4], a
    call $0e58
    ld de, $4591
    ld hl, $9710
    ld bc, $7701

Jump_077_4399:
    call $0f1e
    ld de, $4599
    ld hl, $96e0
    ld bc, $7701
    call $0f1e
    ld de, $4a90
    ld hl, $93f0
    ld bc, $3e01
    call $0f82
    xor a
    ld [$cf5f], a
    ld a, $14
    ld hl, $484a
    rst $08
    ld hl, $c52c
    ld b, $09
    ld c, $12
    call $0fe8
    ld hl, $c4d0
    ld a, [$d12d]
    call $383d
    ld hl, $c4d4
    ld [hl], $71
    inc hl
    ld de, $d132
    ld bc, $0203
    call $3198
    ld a, [$d108]
    ld [$d265], a
    ld [$cf60], a
    ld hl, $de41
    call Call_077_450e
    ld hl, $c4f8
    call $1078
    ld hl, $c521
    ld [hl], $f3
    call $343b
    ld hl, $c522
    call $1078
    ld hl, $c4a8
    ld [hl], $74
    inc hl
    ld [hl], $e8
    inc hl
    ld de, $d265
    ld bc, $8103
    call $3198
    ld hl, $c555
    ld de, $4550
    call $1078
    ld hl, $ddff
    call Call_077_450e
    ld hl, $c558
    call $1078
    ld hl, $c57d
    ld de, $4559
    call $1078
    ld hl, $c580
    ld de, $d114
    ld bc, $8205
    call $3198
    ld hl, $c5b9
    ld de, $4554
    call $1078
    ld hl, $c5bf
    ld a, [$d110]
    call Call_077_451a
    call Call_077_452c
    ld hl, $d123
    ld a, $2d
    call $2d83
    ld hl, $c2c6
    xor a
    ld [hl], a
    ld a, [$d108]
    cp $c9
    jr z, jr_077_4469

    inc [hl]

jr_077_4469:
    ld hl, $c4a0
    call $378b
    call $31f6
    ld b, $03
    call $3340
    call $32f9
    ret


    call $31f3
    call $0fc8
    call $300b
    xor a
    ldh [$d4], a
    call $0e58
    xor a
    ld [$cf5f], a
    ld a, $14
    ld hl, $484a
    rst $08
    ld hl, $c4a0
    ld b, $0f
    ld c, $12
    call $0fe8
    ld bc, $0014
    ld de, $c4a0
    ld hl, $c4b4
    call $3026
    ld hl, $c4a7
    ld a, [$d111]
    call Call_077_451a
    ld hl, $c4cf
    ld a, [$d112]
    call Call_077_451a
    ld hl, $c4f7
    ld a, [$d113]
    call Call_077_451a
    ld hl, $c533
    ld de, $455d
    call $1078
    ld hl, $c53c
    ld de, $d134
    call Call_077_4507
    ld hl, $c564
    ld de, $d136
    call Call_077_4507
    ld hl, $c58c
    ld de, $d13a
    call Call_077_4507
    ld hl, $c5b4
    ld de, $d13c
    call Call_077_4507
    ld hl, $c5dc
    ld de, $d138
    call Call_077_4507
    call $31f6
    ld b, $03
    call $3340
    call $32f9
    ret


Call_077_4507:
    ld bc, $0203
    call $3198
    ret


Call_077_450e:
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    ld e, l
    ld d, h
    ret


Call_077_451a:
    and a
    jr z, jr_077_4525

    ld [$d265], a
    call $34f8
    jr jr_077_4528

jr_077_4525:
    ld de, $4584

jr_077_4528:
    call $1078
    ret


Call_077_452c:
    ld a, $14
    ld hl, $4bdd
    rst $08
    ld a, $7f
    jr c, jr_077_453c

    ld a, $ef
    jr nz, jr_077_453c

    ld a, $f5

jr_077_453c:
    ld hl, $c4d9
    ld [hl], a
    ld bc, $d123
    ld a, $02
    ld hl, $4a68
    rst $08
    ret nc

    ld hl, $c4da
    ld [hl], $3f
    ret


    adc [hl]
    sub e
    di
    ld d, b
    adc h
    adc [hl]
    sub l
    add h
    ld d, b
    ld [hl], e
    ld [hl], h
    add sp, $50
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld c, [hl]
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, [hl]
    sub d
    adc a
    add d
    adc e
    add sp, -$80
    sub e
    adc d
    ld c, [hl]
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    ld c, [hl]
    sub d
    adc a
    add h

Call_077_4581:
    add h
    add e
    ld d, b
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    nop
    nop
    xor [hl]
    xor d
    xor $a8
    xor b
    nop
    nop
    nop
    add b
    adc d
    adc d
    adc d
    db $e4
    nop
    db $e3
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
    xor d
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    ld b, b
    cp a
    ret nz

    cp a
    ld b, b
    cp a

Call_077_45cf:
    rst $38
    add b
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    inc bc
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fd
    cp $01
    ld d, l
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    cp a
    add b
    and b
    add b
    and b
    cp a
    add b
    add b
    add b
    rst $38
    add b
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
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $0101
    db $fd
    ld bc, $0105
    dec b
    db $fd
    ld bc, $0101
    rst $38
    ld bc, $ffff
    add b
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
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ff01
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld bc, $ffff
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
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
    nop
    rst $38
    push de
    add b
    push af
    adc d
    jp z, $c5b5

    cp d
    jp nz, $febd

    add b
    db $fc
    rst $38
    nop
    rst $38
    ld d, l
    ld bc, $a957
    xor e
    ld d, l
    ld d, e
    xor l
    and e
    ld e, l
    cp a
    ld bc, $ff7f
    xor e
    rst $38

jr_077_4685:
    ld a, [hl]
    or [hl]
    ld a, [$71ce]
    xor a
    call nc, $62bf
    cp e
    ldh [rIE], a
    sbc h
    sbc [hl]
    xor d
    rst $38
    ld a, a
    ld l, l
    ld d, [hl]
    ld a, e
    adc a
    push af
    ld a, [hl+]
    db $fd
    ld b, a
    db $dd
    ld b, $ff
    cp c
    ld a, c
    nop

jr_077_46a4:
    rst $38

jr_077_46a5:
    ld d, l
    add b
    dec d
    xor d
    ld l, d
    sub l
    dec d
    xor d
    ld l, d
    sub l
    ld a, [hl+]
    add b
    nop
    rst $38

jr_077_46b3:
    nop
    rst $38
    ld d, h
    ld bc, $a956
    xor b
    ld d, l

jr_077_46bb:
    ld d, [hl]
    xor c
    xor b
    ld d, l
    xor d
    ld bc, $ff00
    xor d
    rst $38
    db $fc
    ld bc, $f906
    ld [$16f5], sp
    jp hl


    jr z, jr_077_46a4

    xor d
    ld bc, $ff00
    ld a, [hl+]
    rst $38
    ccf
    add b
    ld h, b
    sbc a
    db $10
    xor a
    ld l, b
    sub a
    inc d
    xor e
    ld d, l
    add b
    nop
    rst $38
    rst $38
    nop
    rst $28
    db $10
    rst $00
    jr c, jr_077_46a5

    ld b, h
    cp e
    ld b, h
    rst $00
    jr c, @-$27

    jr z, jr_077_4685

    ld l, h
    rst $38
    nop
    rst $00
    jr c, jr_077_46b3

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_46bb

    ld b, h
    rst $00
    jr c, @+$01

    nop

jr_077_4705:
    rst $00
    jr c, jr_077_46b3

    ld d, h
    ld b, l
    cp d
    ld d, c
    xor [hl]
    ld b, a
    cp b

jr_077_470f:
    cp e
    ld b, h
    rst $00
    jr c, @+$01

    nop
    db $e3
    inc e
    call $b532
    ld c, d
    or l
    ld c, d
    call $fd32
    ld [bc], a
    db $e3
    inc e
    cp a
    add b

jr_077_4725:
    rst $38
    add b
    cp a
    add b
    rst $38
    add b
    cp a
    add b
    rst $38
    add b

jr_077_472f:
    cp a
    add b
    rst $38
    ret nz

    db $fd
    inc bc
    rst $38
    ld bc, $03fd
    rst $38
    ld bc, $03fd
    rst $38
    ld bc, $03fd
    rst $38
    inc bc

jr_077_4743:
    rst $38
    nop
    pop af
    ld c, $c7
    jr c, jr_077_4705

    ld b, h
    xor c
    ld d, [hl]
    cp e
    ld b, h
    rst $00
    jr c, jr_077_4743

    ld c, $ff
    nop
    adc a
    ld [hl], b
    ld [hl], c
    adc [hl]
    ld d, l
    xor d
    ld [hl], e
    adc h
    adc a
    ld [hl], b
    rst $18
    jr nz, jr_077_4789

    ret c

    rst $38
    nop

jr_077_4765:
    rst $10
    jr z, jr_077_472f

    jr c, jr_077_4725

    ld b, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_470f

    ld h, b
    db $e3
    inc e

jr_077_4773:
    rst $38
    nop
    cp e
    ld b, h
    ld b, l
    cp d
    add hl, sp
    add $29
    sub $39
    add $45
    cp d
    cp e
    ld b, h
    xor e
    sbc e
    call nc, $337c
    rst $38

jr_077_4789:
    ld d, b
    ld hl, sp-$28
    cp b
    db $ec
    cp h
    db $e3
    xor e
    db $fc
    sbc a

jr_077_4793:
    db $d3
    reti


    dec hl
    ld a, $cc
    rst $38
    ld a, [bc]
    rra
    dec de
    dec e
    scf
    dec a
    rst $00
    push de

jr_077_47a1:
    ccf
    ld sp, hl
    rst $38
    nop
    rst $28
    db $10
    rst $00
    jr c, jr_077_4765

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h

jr_077_47af:
    rst $00
    jr c, jr_077_47a1

    db $10
    rst $38
    nop
    rst $00
    jr c, jr_077_4773

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_47af

    db $10
    sbc a
    ld h, b
    rst $38
    nop
    rst $18
    jr nz, @-$75

    db $76
    ld [hl], a
    adc b
    ld d, a
    xor b
    ld [hl], a
    adc b

jr_077_47cf:
    adc c
    db $76
    rst $18
    jr nz, @+$01

    nop
    rst $00
    jr c, jr_077_4793

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_47cf

    db $10
    db $e3
    inc e
    xor d
    rst $38
    ld a, a
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
    rst $38
    nop
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $f3be
    ld a, a
    sub l
    rst $18
    or [hl]
    ld d, a
    or e
    push de
    or l
    ld d, [hl]
    or [hl]
    rst $30
    sub e
    ld d, l
    push af
    xor d
    rst $38
    rst $38
    nop
    pop bc
    cp $a1
    ld a, [hl]
    pop hl
    cp [hl]
    pop hl
    cp [hl]
    ld a, a
    jr nz, @-$49

    cp a
    or [hl]
    or $f7
    inc de
    dec d
    push af
    ld e, $fe
    rlca
    rst $38
    inc bc
    rst $38
    cp $01
    ld d, l
    rst $38
    cp d
    cp a
    dec l
    ld a, $b7
    cp a
    cp [hl]
    cp a
    inc l
    ccf
    cp b
    cp a
    xor a
    or b
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    ld [$d0e5], a
    ret c

    ldh [$e4], a
    ret nc

    ret c

    ldh [$e4], a
    ret nc

    rst $38
    rst $38

jr_077_4855:
    rst $38
    rst $38
    nop
    rst $38
    ld d, l
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
    rst $38
    rst $38
    inc bc
    rst $38
    ld d, e
    rrca
    inc hl
    rrca
    inc de
    rrca
    inc hl
    rrca
    inc de
    rrca
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

jr_077_4883:
    rst $38
    ret nz

    cp a
    and b
    sbc a
    sbc a
    sbc a
    add b
    sbc a
    adc a
    sbc b
    adc a
    sbc b
    adc a
    rst $18
    rst $08

jr_077_4893:
    rst $38
    inc bc
    db $fd
    dec b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld bc, $f1f9
    add hl, de
    pop af
    add hl, de
    pop af
    ei
    di
    rst $38
    nop
    cp e
    ld b, h
    rst $00
    jr c, jr_077_4855

    ld d, h
    ld d, l
    xor d
    ld d, l
    xor d
    ld l, l
    sub d
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    dec l
    jp nc, $ba45

    ld d, l
    xor d
    ld b, l
    cp d
    ld l, c
    sub [hl]
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, jr_077_4883

    ld b, h
    ld b, l
    cp d
    ld d, l
    xor d
    ld b, l
    cp d
    cp e
    ld b, h
    rst $00
    jr c, @+$01

    nop
    rst $00
    jr c, jr_077_4893

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    add a
    ld a, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    xor d
    nop
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $01ff

jr_077_48f7:
    ld d, l
    ld bc, $ffff
    rst $38
    add b
    xor d
    add b
    push de
    add b
    rst $38
    rst $38
    rst $38
    nop
    adc a
    ld [hl], b
    ld [hl], a
    adc b
    ld d, a
    xor b
    ld [hl], a
    adc b
    adc l
    ld [hl], d
    db $ed
    ld [de], a
    di
    inc c
    rst $38
    nop
    rst $00
    jr c, @-$43

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    add a

jr_077_491e:
    ld a, b
    or e
    ld c, h
    cp a
    ld b, b
    rst $38
    nop
    add a
    ld a, b
    ld a, a
    add b
    ld b, a
    cp b
    cp e
    ld b, h
    push bc
    ld a, [hl-]
    db $fd
    ld [bc], a
    jp $ff3c


    nop
    add e
    ld a, h
    rst $28
    db $10
    rst $00
    jr c, jr_077_48f7

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_491e

    ldh [$e5], a
    ret nc

    jp c, $eae0

    push de
    push de
    ld [$d5ea], a
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    nop
    rst $38

jr_077_495b:
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    rrca

jr_077_4965:
    ld d, e
    rrca
    and e
    rrca
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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

jr_077_497b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    and b
    sbc a
    sbc a
    sbc a
    add b

jr_077_4989:
    sbc a
    add b
    sbc a
    add b
    ld e, a
    ret nz

    rst $38
    jr nz, @+$61

    rst $38
    db $fd
    dec b
    ld sp, hl
    ld sp, hl

jr_077_4997:
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $03fa
    rst $38
    inc b
    db $fd
    rst $38
    db $e3
    rst $38
    rst $38
    nop

jr_077_49a7:
    rst $00
    jr c, jr_077_4965

    ld b, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_495b

    ld d, h
    ld l, l
    sub d
    add e
    ld a, h
    rst $38
    nop

jr_077_49b7:
    cp e
    ld b, h
    add e
    ld a, h
    db $db
    inc h
    rst $00
    jr c, jr_077_497b

    ld b, h
    cp e
    ld b, h
    rst $00
    jr c, @+$01

    nop
    rst $28
    db $10
    xor e
    ld d, h
    rst $00
    jr c, jr_077_4989

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    rst $00
    jr c, @+$01

    nop
    add hl, sp
    add $c7
    jr c, jr_077_4997

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h

jr_077_49e1:
    rst $00
    jr c, jr_077_4a1d

    add $ff
    nop
    cp e
    ld b, h
    rst $00
    jr c, jr_077_49a7

    ld b, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_49e1

    db $10
    rst $00
    jr c, @+$01

    nop

jr_077_49f7:
    sbc a
    ld h, b
    rst $00
    jr c, jr_077_49b7

    ld b, h
    xor e
    ld d, h
    cp e
    ld b, h
    rst $00
    jr c, jr_077_49f7

    inc c
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
    ret nz

    ccf
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b

jr_077_4a1d:
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    ret nz

    ccf
    rst $38
    nop
    inc bc
    db $fc
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $03
    db $fc
    rst $38
    nop
    ret nz

    ccf
    cp a
    ld b, b
    and l
    ld e, d
    cp a
    ld b, b
    xor c
    ld d, [hl]
    cp a
    ld b, b
    ret nz

    ccf
    rst $38
    nop
    inc bc
    db $fc
    db $fd
    ld [bc], a
    dec d
    ld [$02fd], a
    ld c, l
    or d
    db $fd
    ld [bc], a
    inc bc
    db $fc
    rst $38
    nop
    nop
    rst $38
    sub l
    rst $38
    xor $fb
    db $e4
    cp a
    inc h
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    rst $38
    db $fc
    rst $38
    xor $bb
    db $ec
    rst $38
    sbc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    and a
    rst $38
    db $fd
    inc bc
    inc bc
    db $fd
    inc bc
    db $fd
    ld bc, $07ff
    rst $38
    cp $07
    ld d, c
    rst $38
    and b
    rst $38
    ld l, a
    sbc [hl]
    rst $08
    cp a
    ld b, e
    cp a
    pop bc
    cp a
    ld b, a
    cp a
    or $8f
    ld c, l
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    add e
    db $fd
    jp nz, $e3fd

    db $fd
    ld l, [hl]
    pop af
    or l
    rst $38
    cp a
    rst $38
    ld a, a
    add sp, -$03
    db $d3
    rst $30
    sbc b
    rst $38
    xor a
    ldh a, [$9f]
    rst $38
    rst $08
    db $fc
    and e
    ld a, [$fdff]
    rla
    cp [hl]
    set 5, a
    add hl, de
    rst $30
    db $fd
    dec bc
    db $fd
    rst $30
    ei
    db $fd
    rlca
    rst $38
    rst $18
    and b
    cp a
    sbc a
    sbc a
    sbc a
    add b
    sub c
    adc [hl]
    ld d, c
    adc $ff
    jr nz, jr_077_4b33

    rst $38
    ei
    rst $38
    dec b
    rst $38
    ld sp, hl
    rst $38
    sbc c
    ld h, a
    sbc c
    ld h, a
    ld a, [$cc07]
    scf
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    add a
    rst $38
    adc a
    rst $30
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
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
    ld bc, $e3ff
    dec e
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    pop hl
    rst $38
    ld sp, hl
    rst $20
    db $fd
    ei
    rst $38
    db $fd
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
    cp a
    rst $38
    sbc a

jr_077_4b33:
    rst $38
    add a
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
    di
    rst $38
    pop hl
    rst $38
    ld bc, $ffff
    rst $38
    cp $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    ret nz

    push de
    rst $38
    and d
    rst $38
    ld a, a
    sbc b
    db $dd
    cp a
    ld c, a
    cp a
    add $bf
    ld c, l
    cp a
    rst $38
    adc l
    ld c, a
    cp $a2
    rst $38
    rst $38
    add hl, de
    cp d
    db $fd
    di
    db $fd
    ld h, d
    db $fd
    or e
    db $fd
    cp $b1
    push af
    ld a, a
    ld [$bfff], a
    ret nz

    ret nz

    cp a
    ret nz

    cp a
    add b
    rst $38
    ldh [rIE], a
    ld a, a
    ldh [$15], a
    rst $38
    xor a
    db $fd
    rst $30
    ld c, $07
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    db $fd
    cp $01
    ld d, l
    rst $38
    ld a, [c]
    cp a
    rst $28
    ld [hl], b
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld [hl], a
    ld hl, sp+$05
    rst $38
    xor d
    rst $38
    ld a, [hl]
    add c
    pop bc
    cp a
    ld b, c
    cp a
    rst $00
    cp a
    ld b, [hl]
    cp a
    db $fd
    adc a
    ld e, a
    db $fd
    xor d
    rst $38
    ld a, a
    add c
    add d
    db $fd
    add e
    db $fd
    ld [c], a
    db $fd
    ld h, e
    db $fd
    cp [hl]
    pop af
    push af
    cp a
    xor d
    rst $38
    ld a, a
    add b
    pop bc
    cp a
    ld b, a
    cp a
    add $bf
    ld c, l
    cp a
    rst $38
    adc l
    ld d, a
    cp $aa
    rst $38
    rst $38
    ld bc, $fd82
    db $e3
    db $fd
    ld h, d
    db $fd
    cp e
    db $fd
    cp $b9
    push hl
    ld a, a
    xor b
    rst $38
    ld a, e
    add a
    rst $08
    cp a
    ld e, l
    cp [hl]
    db $fd
    cp e
    ccf
    rst $30
    ld h, [hl]
    rst $38
    ld a, l
    rst $28
    ld a, [hl+]
    rst $38
    rst $18
    pop hl
    ld a, [c]
    db $fd
    cp e
    ld a, l
    cp [hl]
    db $dd
    db $fd
    rst $28
    ld h, [hl]
    rst $38
    cp [hl]
    rst $38
    xor d
    rst $38
    ld a, a
    add c
    pop bc
    cp a
    ld b, c
    cp a
    pop bc
    cp a
    ld b, a
    cp a
    or $8f
    ld c, l
    rst $38
    ld a, [hl+]
    rst $38
    rst $18
    pop hl
    ld a, [c]
    db $fd
    cp e
    db $fd
    sbc [hl]
    db $fd
    db $ed
    rst $38
    ld h, [hl]
    rst $38
    cp [hl]
    rst $30
    xor d
    rst $38
    ld a, [hl]
    add c
    pop bc
    cp a
    ld b, c
    cp a
    pop bc
    cp a
    ld b, e
    cp a
    cp $87
    ld e, l
    rst $38
    ld a, [bc]
    rst $38
    rst $28
    pop af
    ld [c], a
    db $fd
    add e
    db $fd
    add d
    db $fd
    jp Jump_077_7efd


    pop hl
    cp c
    rst $38
    and d
    rst $38
    ld a, a
    adc h
    rst $38
    cp a
    ld [hl], e
    cp a
    ld l, l
    rst $38
    ld a, a
    db $ed
    rst $38
    or e
    ccf
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    inc bc
    db $fd
    cp $ff
    cp $ff
    cp $cd
    ld a, c
    rst $38
    xor b
    rst $38
    ld a, e
    add a
    add $bf
    ld b, e
    cp a
    rst $00
    cp a
    ld b, [hl]
    cp a
    db $fd
    adc a
    ld c, a
    db $fd
    ld a, [hl+]
    rst $38
    rst $18
    pop hl
    ld h, d
    db $fd
    jp $e2fd


    db $fd
    ld h, e
    db $fd
    cp [hl]
    pop af
    push af
    cp a
    xor d
    rst $38
    rst $38
    nop
    adc h
    ld a, a
    sbc h
    ld a, a
    or c
    ld a, a
    or a
    ld a, a
    or $6f
    ld a, l
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd32
    dec sp
    db $fd
    adc [hl]
    db $fd
    db $ed
    rst $38
    ld l, [hl]
    rst $30
    cp [hl]
    rst $38
    and a
    cp $ff
    rlca
    rlca
    rst $38
    rlca
    cp $0f
    rst $38
    dec c
    rst $38
    rst $38
    inc c
    ld d, c
    rst $38
    ld_long $ff7f, a
    ldh [$e0], a
    rst $38
    ldh [$7f], a
    ldh a, [rIE]
    or b
    rst $38
    rst $38
    jr nc, @+$47

    rst $38
    xor e
    rst $38
    or $0f
    inc e
    rst $38
    inc e
    rst $38
    ld b, $ff
    rlca
    rst $38
    db $fd
    inc bc
    ld d, l
    rst $38
    jp z, $6fff

    ldh a, [$30]
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    cp a
    ret nz

    ld d, l
    rst $38
    ld a, a
    db $ed
    rst $20
    ld a, [hl]
    ccf
    rst $30
    dec a
    ei
    inc e
    rst $38
    rrca
    rst $38
    ei
    rlca
    ld d, l
    rst $38
    cp $bf
    rst $28
    ld [hl], b
    ldh [rIE], a
    add b
    rst $38
    ld b, b
    cp a
    ret nz

    cp a
    rst $38
    add b
    push de
    rst $38
    rrca
    db $fd
    rst $30
    ld c, $07
    rst $38
    ld bc, $02ff
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $ff54
    cp $b7
    and $7f
    db $fc
    rst $28
    cp h
    rst $18
    ld a, b
    cp a
    ldh a, [rIE]
    rst $18
    ldh [$15], a
    rst $38
    sbc a
    db $fd
    ld a, a
    add [hl]
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    cp $01
    ld d, l
    rst $38
    ld_long a, $ffbf
    ld h, b
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ldh [rIE], a
    rst $28
    ldh a, [$15]
    rst $38
    adc h
    rst $38
    cp $0d
    rrca
    rst $38
    rrca
    rst $38
    ld c, $fd
    ccf
    rst $38
    rst $38
    inc sp
    ld b, h
    rst $38
    ld [hl-], a
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld a, a
    add b
    ld d, l
    rst $38
    and a
    cp $ff
    rlca
    ld bc, $06ff
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    rst $38
    nop
    ld d, l
    rst $38
    ld_long $ff7f, a
    ldh [$80], a
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    rst $38
    ld a, a
    ldh [$15], a
    rst $38
    ld a, a
    db $fd
    rst $30
    ld l, [hl]
    scf
    rst $38
    ld sp, $1eff
    db $fd
    ld c, $fd
    cp $01
    ld d, l
    rst $38
    cp $bf
    rst $28
    db $76
    db $ec
    rst $38
    adc h
    rst $38
    ld a, b
    cp a
    ld [hl], b
    cp a
    ld a, a
    add b
    ld d, l
    rst $38
    db $e3
    rst $38
    xor d
    rst $38
    ld a, a
    add c
    pop bc
    cp a
    ld b, c
    cp a
    pop bc
    cp a
    ld b, a
    cp a
    or $8f
    ld c, l
    rst $38
    ld a, [hl+]
    rst $38
    rst $38
    add c
    add d
    db $fd
    add e
    db $fd
    add d
    db $fd
    db $e3
    db $fd
    ld l, [hl]
    pop af
    or l
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    pop bc
    cp a
    ld b, a
    cp a
    add $bf
    ld c, l
    cp a
    rst $38
    adc l
    ld d, a
    cp $a2
    rst $38
    rst $38
    add hl, de
    cp d
    db $fd
    di
    db $fd
    ld h, d
    db $fd
    or e
    db $fd
    cp $b1
    push hl
    ld a, a
    xor d
    rst $38
    ld a, a
    add c
    pop bc
    cp a
    ld b, c
    cp a
    pop bc
    cp a
    ld b, a
    cp a
    or $8f
    ld c, l
    rst $38
    ld a, [hl+]
    rst $38
    rst $38
    add c
    add d
    db $fd
    add e
    db $fd
    add d
    db $fd
    rst $28
    db $fd
    ld a, [hl]
    db $fd
    cp c
    rst $38
    and d
    rst $38
    ld a, a
    sbc b
    db $dd
    cp a
    ld c, a
    cp a
    add $bf
    ld c, l
    cp a
    rst $38
    adc l
    ld d, a
    cp $aa
    rst $38
    rst $38
    ld bc, $fd82
    db $e3
    db $fd
    ld h, d
    db $fd
    or e
    db $fd
    cp $b1
    push hl
    ld a, a
    xor d
    rst $38
    ld a, a
    add b
    jp Jump_077_6fbf


    rst $38
    ld a, l
    rst $38
    ld a, c
    cp a
    or a
    rst $38
    ld h, [hl]
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fdc2
    or $ff
    cp [hl]
    rst $38
    sbc a
    db $fd
    db $ec
    rst $38
    ld h, [hl]
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    ld [hl], b
    cp a
    ld sp, hl
    cp a
    ld a, a
    cp a
    or [hl]
    rst $38
    dec a
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    inc bc
    db $fd
    add [hl]
    rst $38
    and $ff
    ld h, [hl]
    rst $38
    or [hl]
    rst $38
    xor b
    rst $38
    ld a, e
    add a
    rst $08
    cp a
    ld e, h
    cp a
    ld sp, hl
    cp a
    scf
    rst $38
    ld h, [hl]
    rst $38
    ld a, l
    rst $28
    ld a, [bc]
    rst $38
    rst $18
    pop hl
    ld a, [c]
    db $fd
    dec sp
    db $fd
    sbc [hl]
    db $fd
    db $ed
    rst $38
    ld h, [hl]
    rst $38
    cp [hl]
    rst $30
    and d
    rst $38
    ld a, a
    sbc b
    db $dd
    cp a
    ld c, a
    cp a
    add $bf
    ld c, l
    cp a
    rst $38
    adc l
    ld c, a
    cp $aa
    rst $38
    rst $38
    ld bc, $fd82
    db $e3
    db $fd
    ld h, d
    db $fd
    or e
    db $fd
    cp $b1
    push hl
    ld a, a
    xor a
    db $fd
    rst $30
    ld c, $07
    rst $38
    ld bc, $03ff
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $ff54
    ld a, [c]
    cp a
    rst $28
    ld [hl], b
    ldh [rIE], a
    add b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    add b
    ld d, l
    rst $38
    and a
    rst $38
    rst $38
    ld bc, $fd03
    inc bc
    db $fd
    rrca
    db $fd
    rrca
    rst $38
    rst $38
    rlca
    ld d, b
    rst $38
    ld_long $ffff, a
    add b
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ld a, a
    add b
    ld d, l
    rst $38
    xor a
    db $fd
    rst $30
    ld c, $07
    rst $38
    ld bc, $03ff
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $ff54
    ld a, [$fcbf]
    ld a, a
    db $ec
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    add b
    ld d, l
    rst $38
    and a
    rst $38
    rst $38
    ld bc, $fd03
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $ff54
    ld_long $ffff, a
    add b
    ret nz

    cp a
    ret nz

    cp a
    ldh a, [$bf]
    ld hl, sp-$01
    rst $38
    ld hl, sp+$05
    rst $38
    ld a, l
    rst $28
    ld a, a
    db $ed
    ld h, a
    cp $37
    rst $38
    ld sp, $02ff
    db $fd
    cp $01
    ld d, l
    rst $38
    cp [hl]
    rst $30
    rst $38
    or [hl]
    and $7f
    db $ec
    rst $38
    adc h
    rst $38
    ld b, b
    cp a
    rst $38
    add b
    ld d, l
    rst $38
    ld l, a
    db $fd
    rst $30
    ld l, [hl]
    ld h, a
    rst $38
    ld h, c
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fd
    cp $01
    ld d, l
    rst $38
    cp $bf
    db $ec
    ld a, a
    db $fc
    rst $38
    sbc h
    rst $38
    ld c, h
    cp a
    ld b, b
    cp a
    rst $38
    add b
    ld d, l
    rst $38
    ld a, a
    db $ed
    ld h, a
    cp $3f
    rst $30
    dec a
    ei
    dec e
    rst $38
    rrca
    rst $38
    ei
    rlca
    ld d, h
    rst $38
    cp $b7
    rst $20
    ld a, [hl]
    db $fc
    rst $28
    cp h
    rst $18
    cp b
    rst $38
    ldh a, [rIE]
    rst $18
    ldh [$15], a
    rst $38
    xor a
    rst $38
    db $fd
    rrca
    ld c, $fd
    rrca
    db $fd
    ld c, $fd
    rrca
    db $fd
    ld a, [c]
    dec c
    ld d, l
    rst $38
    ld [$bfff], a
    ret nz

    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    cp a
    ld b, b
    cp a
    rst $38
    add b
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    ld b, b
    cp a
    pop bc
    cp a
    ld b, a
    cp a
    cp $87
    ld c, l
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    inc bc
    db $fd
    add d
    db $fd
    db $e3
    db $fd
    ld a, [hl]
    pop hl
    or l
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    pop bc
    cp a
    ld b, a
    cp a
    add $bf
    ld c, l
    cp a
    rst $38
    adc l
    ld c, a
    cp $aa
    rst $38
    rst $38
    ld bc, $fd82
    db $e3
    db $fd
    ld h, d
    db $fd
    or e
    db $fd
    cp $b1
    push hl
    ld a, a
    xor d
    rst $38
    ld a, a
    add c
    rst $00
    cp a
    ld e, h
    cp a
    reti


    cp a
    ld c, a
    cp a
    or $8f
    ld c, l
    rst $38
    ld a, [hl+]
    rst $38
    rst $38
    add c
    add d
    db $fd
    inc bc
    db $fd
    add d
    db $fd
    db $e3
    db $fd
    ld l, [hl]
    pop af
    or l
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    rst $00
    cp a
    ld b, a
    cp a
    pop bc
    cp a
    ld b, c
    cp a
    rst $38
    add c
    ld d, c
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fde2
    db $e3
    db $fd
    add d
    db $fd
    add e
    db $fd
    cp $81
    sub l
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    ld b, b
    cp a
    pop bc
    cp a
    ld b, a
    cp a
    or $8f
    ld l, l
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    inc bc
    db $fd
    add d
    db $fd
    db $e3
    db $fd
    ld l, [hl]
    pop af
    or [hl]
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    rst $08
    cp a
    ld e, a
    cp a
    ret c

    cp a
    ld e, h
    cp a
    rst $38
    adc [hl]
    ld d, a
    rst $38
    and d
    rst $38
    rst $38
    dec c
    sbc $fd
    ei
    db $fd
    ld [hl-], a
    db $fd
    inc sp
    db $fd
    cp $71
    push hl
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    pop bc
    cp a
    ld b, c
    cp a
    pop af
    cp a
    ld [hl], c
    cp a
    ld sp, hl
    sbc a
    ld e, a
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd82
    add e
    db $fd
    adc [hl]
    db $fd
    adc a
    db $fd
    sbc [hl]
    ld sp, hl
    ld sp, hl
    rst $38
    xor d
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    ld e, b
    cp a
    db $dd
    cp a
    ld c, a
    cp a
    cp $87
    ld c, l
    rst $38
    xor d
    rst $38
    rst $38
    ld bc, $fd02
    dec de
    db $fd
    cp d
    db $fd
    di
    db $fd
    ld a, [hl]
    pop hl
    or l
    rst $38
    xor a
    db $fd
    rst $38
    ld b, $07
    rst $38
    inc bc
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fd
    cp $01
    ld d, l
    rst $38
    ld a, [c]
    cp a
    rst $38
    ld h, b
    or $ff
    cp $bf
    ld e, h
    cp a
    ld c, [hl]
    cp a
    rst $38
    add [hl]
    ld d, c
    rst $38
    xor a
    rst $38
    db $fd
    rrca
    ld c, $fd
    rrca
    db $fd
    ld c, $fd
    rrca
    db $fd
    ld a, [c]
    dec c
    ld d, l
    rst $38
    ld a, [c]
    rst $38
    cp a
    ld hl, sp+$58
    cp a
    ld b, b
    cp a
    ret nz

    cp a
    ld b, b
    cp a
    rst $38
    add b
    ld d, l
    rst $38
    xor a
    db $fd
    rst $30
    ld c, $07
    rst $38
    ld bc, $02ff
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $ff54
    ld a, [c]
    cp a
    rst $28
    ld [hl], b
    ldh a, [rIE]
    sbc b
    rst $38
    jr c, @+$01

    ldh [rIE], a
    rst $38
    add b
    ld d, l
    rst $38
    and a
    rst $38
    or $0f
    dec c
    rst $38
    rrca
    db $fd
    rlca
    cp $07
    rst $38
    db $fd
    inc bc
    ld d, h
    rst $38
    ld [$6fff], a
    ldh a, [$b0]
    rst $38
    ldh a, [$bf]
    ldh [$7f], a
    ldh [rIE], a
    cp a
    ret nz

    ld d, l
    rst $38
    ld l, a
    db $fd
    rst $20
    ld a, [hl]
    scf
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    ei
    rlca
    ld d, h
    rst $38
    cp $b7
    rst $20
    ld a, [hl]
    db $ec
    rst $38
    cp h
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    rst $18
    ldh [$15], a
    rst $38
    and e
    rst $38
    cp $07
    dec c
    rst $38
    rrca
    db $fd
    rlca
    cp $07
    rst $38
    rst $38
    ld bc, $ff54
    jp z, Jump_077_7fff

    ldh [$b0], a
    rst $38
    ldh a, [$bf]
    ldh [$7f], a
    ldh [rIE], a
    rst $38
    add b
    ld d, l
    rst $38
    xor [hl]
    rst $38
    db $fd
    rrca
    rrca
    db $fd
    rlca
    cp $07
    rst $38
    ld bc, $feff
    ld bc, $ff55
    ld [hl], d
    rst $38
    cp a
    ldh a, [$f0]
    cp a
    ldh [$7f], a
    ldh [rIE], a
    add b
    rst $38
    ld a, a
    add b
    ld d, h
    rst $38
    xor a
    db $fd
    rst $38
    ld b, $0f
    rst $38
    rra
    db $fd
    ld a, [de]
    db $fd
    inc bc
    db $fd
    cp $01
    ld d, l
    rst $38
    ld a, [c]
    cp a
    rst $38
    ld h, b
    ldh a, [rIE]
    ld hl, sp-$41
    ld e, b
    cp a
    ld b, b
    cp a
    rst $38
    add b
    ld d, l
    rst $38
    rst $38
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0e
    ld b, $06
    ld e, $1f
    ld b, a
    ld c, b
    ld l, $2f
    ld a, [hl+]
    dec hl
    ld a, $3f
    ld a, [hl-]
    dec sp
    ld b, $06
    ld c, $0f
    ld c, c
    ld c, d
    ld e, $1f
    dec hl
    inc l
    ld l, $2f
    dec sp
    inc a
    ld a, $3f
    inc c
    ld de, $1110
    inc bc
    inc c
    ld de, $0210
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    db $10
    ld de, $0d10
    ld de, $0d10
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0609], sp
    ld b, $0a
    dec bc
    ld [hl-], a
    ld d, $0a
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, d
    inc d
    inc hl
    dec e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    jr c, @+$35

    jr nz, jr_077_525a

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld [$4509], sp
    ld hl, $0b0a
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [$0609], sp
    ld b, $0a
    dec bc
    ld sp, $0217
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, c
    ld a, [de]
    dec e
    jr nc, jr_077_525c

jr_077_525a:
    inc bc
    ld [bc], a

jr_077_525c:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    inc d
    ld [hl+], a
    scf
    dec de
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld b, $06
    ld [$1509], sp
    jr nc, jr_077_5282

    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a

jr_077_5282:
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [$0209], sp
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [$0309], sp
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0209], sp
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [$0309], sp
    ld [bc], a
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [$0609], sp
    ld b, $0a
    dec bc
    add hl, sp
    ld a, [de]
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0209], sp
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [$0309], sp
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld b, $06
    ld [$1709], sp
    ld sp, $0b0a
    ld c, $0f
    ld b, $06
    ld e, $1f
    ld b, a
    ld c, b
    ld l, $2f
    ld bc, $3e01
    ccf
    ld bc, $0601
    ld b, $0e
    rrca
    ld c, c
    ld c, d
    ld e, $1f
    ld bc, $2e01
    cpl
    ld bc, $3e01
    ccf
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld h, $27
    ld [bc], a
    inc bc
    jr z, jr_077_5380

    inc bc
    ld [bc], a
    ld c, $0f
    ld [bc], a
    inc bc
    ld e, $1f
    inc bc
    ld [bc], a
    ld l, $2f
    ld [bc], a
    inc bc
    ld a, $3f
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld c, $0f
    inc bc
    ld [bc], a
    ld e, $1f
    ld [bc], a
    inc bc
    ld l, $2f
    inc bc
    ld [bc], a
    ld a, $3f
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_077_5380:
    ld [bc], a
    ld c, $0f
    ld [bc], a
    inc bc
    ld e, $1f
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld c, $0f
    inc bc
    ld [bc], a
    ld e, $1f

Jump_077_5399:
    ld l, $2f
    ld [bc], a
    inc bc
    ld a, $3f
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld l, $2f
    inc bc
    ld [bc], a
    ld a, $3f
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0209], sp
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [$0209], sp
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [$0309], sp
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0609], sp
    ld b, $0a
    dec bc
    ld b, b
    inc e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld [$4409], sp
    dec de
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0609], sp
    ld b, $0a
    dec bc
    ld b, e
    jr nz, @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld [hl], $16
    ld hl, $0140
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld [$2309], sp
    jr c, jr_077_543a

    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_077_543a:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld [hl], $1c
    ld [hl+], a
    scf
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    db $10
    ld de, $0908
    ld de, $0a10
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$1009], sp
    ld de, $0b0a
    ld de, $0610
    ld b, $06
    ld b, $42
    inc d
    inc hl
    ld c, e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    ld c, h
    inc sp
    jr nz, jr_077_54ca

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    ld e, d
    inc bc
    jr nz, @+$3b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld d, b
    ld d, c
    ld [bc], a
    inc bc
    ld d, d
    ld d, e
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a

jr_077_54ca:
    inc bc
    ld d, b
    ld d, c
    inc bc
    ld [bc], a
    ld d, d
    ld d, e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
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

Jump_077_54e4:
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    ld b, $06
    ld e, $1f
    ld [hl], $1c
    ld l, $2f
    ld d, h
    ld d, l
    ld a, $3f
    ld e, b
    ld bc, $0606
    ld c, $0f
    ld [hl+], a
    scf
    ld e, $1f
    ld d, [hl]
    ld d, a
    ld l, $2f
    ld bc, $3e59
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld h, b
    rlca
    rlca
    ld h, b
    rlca
    nop
    nop
    ld [hl], d
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    rlca
    nop
    nop
    rlca
    ld [hl], b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld a, e
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    ld h, b
    rlca
    rlca
    ld h, b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    jr z, jr_077_5695

jr_077_5695:
    nop
    nop
    add hl, hl
    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    ld h, l
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    ld [hl], b
    nop
    inc sp
    nop
    ld [hl], c
    nop
    ld a, b
    ld b, c
    ld c, a
    push bc
    push de
    ld hl, sp+$02
    ld d, h
    ld e, l
    pop hl
    ld bc, $8205
    call $3198
    pop bc
    ret


    ld a, b
    cp $0c
    push af
    jr c, jr_077_56c7

    jr z, jr_077_56cc

    sub $0c
    jr jr_077_56cc

jr_077_56c7:
    or a
    jr nz, jr_077_56cc

    ld a, $0c

jr_077_56cc:
    ld b, a
    push bc
    ld hl, sp+$01
    push de
    push hl
    pop de
    pop hl
    ld [hl], $7f
    ld bc, $0102
    call $3198
    ld [hl], $9c
    inc hl
    ld d, h
    ld e, l
    ld hl, sp+$00
    push de
    push hl
    pop de
    pop hl
    ld bc, $8102
    call $3198
    pop bc
    ld de, $56fc
    pop af
    jr c, jr_077_56f7

    ld de, $56ff

jr_077_56f7:
    inc hl
    call $1078
    ret


    add b
    adc h
    ld d, b
    adc a
    adc h
    ld d, b
    call Call_077_5709
    call $0a80
    ret


Call_077_5709:
    call $31f3
    call $0fc8
    call $300b
    call $0568
    ld hl, $5805
    ld de, $9000
    call $0b50
    ld hl, $5c4b
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ld de, $5760
    ld hl, $c506
    call $1078
    ld de, $5767
    ld hl, $c513
    call $1078
    ld de, $d47d
    ld hl, $c50d
    call $1078
    ld de, $5768
    ld hl, $c542
    call $1078
    call $058a
    call $31f6
    ld b, $08
    call $3340
    call $32f9
    call $045a
    ret


    adc a
    adc e
    add b
    sbc b
    add h
    sub c
    ld d, b
    ld d, b
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    and h
    or c
    or e
    xor b
    and l
    xor b
    and h
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor l
    and h
    or [hl]
    ld a, a
    ld d, h
    add e
    add h
    sub a
    add sp, $4e
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld d, b
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld hl, $5db3
    ld de, $c4a0
    ld bc, $0168
    call $3026
    ld de, $57fa
    ld hl, $c4a8
    call $1078
    ld de, $57f0
    ld hl, $c5cf
    call $1078
    ld hl, $c5d8
    ld de, $d4c4
    ld bc, $0204
    call $3198
    ld [hl], $67
    inc hl
    ld de, $d4c6
    ld bc, $8102
    call $3198
    ret


    adc a
    adc e
    add b
    sbc b
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld d, b
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld d, b
    nop
    nop
    ld b, e
    rst $38
    nop
    inc b
    adc h
    nop
    add hl, sp
    nop
    add hl, sp
    ret z

    add c
    ld a, [bc]
    rst $38
    nop
    ld l, h
    nop
    inc h
    nop
    jr nz, jr_077_581b

jr_077_581b:
    inc h
    nop
    ld h, [hl]
    add [hl]
    adc a
    ld b, $c2
    nop
    sbc [hl]
    nop
    sbc d
    nop
    adc d
    ret z

    add l
    ld [$001c], sp
    ld c, c
    nop
    add hl, bc
    nop
    jr jr_077_5833

jr_077_5833:
    ld c, c
    add [hl]
    adc a
    ld bc, $0042
    ld b, l
    ld h, $00
    nop
    daa
    ret z

    adc c
    ld b, l
    ld c, c
    nop
    nop
    jr @-$78

    adc a
    ld bc, $00e2
    ld b, e
    ret


    nop
    nop
    pop bc
    adc b
    xor a
    ld bc, $0013
    ld b, l
    ld [hl-], a
    nop
    nop
    inc sp
    add [hl]
    adc a
    ld [$001b], sp
    ld c, c
    nop
    ld c, b
    nop
    ld c, c
    nop
    add hl, de
    add [hl]
    adc a
    db $10
    jr nc, jr_077_586a

jr_077_586a:
    inc hl
    nop
    jr c, jr_077_586e

jr_077_586e:
    inc h
    nop
    or c
    nop
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rlca
    rlca
    ld b, e
    inc bc
    inc bc
    ld h, l
    ld b, h
    rst $38
    nop
    nop
    ld a, b
    ld b, [hl]
    rst $38
    ld a, a
    inc b
    ld [hl], c
    rst $38
    ld [hl], b
    ldh a, [rSVBK]
    ld b, h
    ld hl, sp+$18
    ld [$f038], sp
    ldh a, [$f8]
    ld hl, sp-$02
    cp $fe
    ld a, [hl]
    ld l, e
    adc c
    or l
    add hl, bc
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [$63]
    ld c, b
    ldh a, [$f0]
    ld [bc], a
    ld [hl], b
    ldh a, [rSVBK]
    add e
    adc $0b
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rNR32], a
    db $e3
    add hl, sp
    add $3b
    call nz, $8fad
    ld bc, $3fc0
    add [hl]
    nop
    adc [hl]
    ld b, e
    rst $08
    nop
    nop
    rst $08
    jp z, Jump_077_4381

    ldh [rP1], a
    inc b
    and $00
    rst $20
    nop
    rst $20
    xor b
    sbc a
    inc b
    ld [hl], e
    nop
    inc sp
    nop
    inc sp
    adc b
    nop
    ld a, h
    ld [bc], a
    inc bc
    nop
    ld bc, $0086
    ld b, $45
    rst $38
    nop
    ld c, c
    sbc a
    nop
    jp $2100


    ld b, e
    ld h, [hl]
    nop
    inc bc
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld d, a
    rst $38
    nop
    ld h, c
    adc b
    nop
    xor d
    dec bc
    rst $38

Jump_077_5901:
    ld bc, $1fff
    cp $ee
    db $fc
    inc c
    db $fc
    inc a
    ldh a, [$f0]
    and e
    nop
    sbc $48
    rst $38
    ld [hl], b
    nop
    ld a, a
    ld b, e
    rst $38
    rst $38
    add hl, bc
    jp $fcc3


    inc e
    ld sp, hl
    add hl, sp
    rst $38
    ccf
    rst $38
    ld e, $83
    ld bc, $0611
    rst $38
    add b
    rst $38
    nop
    ld bc, $fc01
    jp $ed00


    nop
    inc bc
    ld c, b
    rst $38
    nop
    nop
    ret nz

    ld b, h
    rst $38
    ldh [$08], a
    ret nz

    rst $38
    rlca
    rst $38
    rra
    rst $38
    rrca
    cp $06
    ld c, b
    ldh a, [rSVBK]
    nop
    ldh a, [$85]
    rst $08
    add hl, bc
    inc bc
    db $fc
    add hl, sp
    add $1c
    db $e3
    rra
    ldh [rIF], a
    ldh a, [$a5]
    ld bc, $011e
    call c, $ad23
    adc a
    nop
    nop
    ld c, a
    ld h, [hl]
    nop
    nop
    rst $20
    adc $01
    ld b, b
    nop
    inc sp
    adc $01
    ld d, b
    jp Jump_077_5901


    ld b, l
    ccf
    nop
    nop
    ccf
    adc h
    ld bc, $0262
    add c
    nop
    add c
    add h
    adc a
    ld c, [hl]
    ld a, [hl]
    nop
    ld bc, $707f
    ld b, l
    rra
    jr jr_077_59cf

    ccf
    jr nc, jr_077_598c

    rst $38

jr_077_598c:
    ld [bc], a
    ld b, e
    rst $38
    inc bc
    ld c, d
    rst $38
    ld bc, $0f02
    rst $38
    rlca
    add [hl]
    adc a
    jp $be01


    ld b, $bf
    add a
    add [hl]
    rlca
    ld b, $0f
    inc c
    ld b, l
    adc a
    adc h
    jp $0188


    rst $38
    jr c, jr_077_59f0

    rst $08
    ld c, h
    dec b
    rst $38
    ld a, h
    rst $38
    jr c, jr_077_59f4

    ret nz

    ld b, e
    rra
    ldh [rSB], a
    rst $38
    nop
    ld b, [hl]
    rst $38
    ld bc, $2002
    rst $38
    adc b
    jp $b201


    dec bc
    rst $38
    db $e3
    sbc a
    sub e
    sbc a
    sub c
    rst $38
    pop af

jr_077_59cf:
    rst $38
    pop hl
    rst $20
    add hl, de
    ld b, e
    jp Jump_077_633f


    ld b, a
    add b
    add b
    ld [hl], b
    ld [bc], a
    call z, $3300
    ld h, e
    ld bc, $3c3c
    ld b, e
    ccf
    ccf
    ld b, e
    rra
    rra
    ld bc, $0f0f
    rst $00
    sbc [hl]
    and e
    nop

jr_077_59f0:
    and $03
    cp $9e

jr_077_59f4:
    rst $38
    rlca
    call $01a6
    add b
    add b
    ld a, e
    ld bc, $0303
    add l
    cp a
    inc bc
    ld bc, $0f01
    rrca
    and h
    ld bc, $00d2
    rst $08
    add l
    cp a
    ld b, l
    ldh [$e0], a
    ld b, e
    ret nz

    ret nz

    inc bc
    add b
    add b
    ccf
    jr nc, jr_077_5a62

    ld a, a
    ld h, b
    add e
    ld [bc], a
    adc h
    ld c, h
    rst $38
    nop
    ld b, e
    ld bc, $08ff
    pop bc
    rst $38
    jp $cfff


    cp $de
    ld hl, sp-$08
    add l
    or c
    inc bc
    jp $c1c3


    pop bc
    xor c
    db $fd
    dec bc
    ld bc, $3f01
    ret nz

    rst $38
    ldh [$7f], a
    ld a, h
    ccf
    ccf
    ld a, a
    ld [hl], c
    add h
    ld bc, $00ca
    adc b
    add [hl]
    or a
    add e
    nop
    db $eb
    nop
    ret c

    ld b, e
    rst $38
    nop
    ld bc, $1ee6
    add e
    ld bc, $03a8
    ldh [$e0], a
    ldh a, [rSVBK]
    and h
    ld [bc], a
    add [hl]
    nop

jr_077_5a62:
    adc h
    xor b
    ld [bc], a
    sub d
    add e
    ld bc, $02e1
    ld a, b
    rst $38
    dec e
    ld l, e
    inc bc
    inc e
    inc e
    ld a, $3e
    and e
    xor e
    ld bc, $0303
    xor c
    ld [bc], a
    ld hl, sp+$01
    rst $38
    ld bc, $03a8
    sbc b
    inc c
    ret nz

    rst $38
    ret nz

    ld a, a
    ld h, b
    ldh [$e0], a
    pop af
    ld [hl], c
    rst $38
    ccf
    rst $38
    ld c, $89
    ld bc, $8d8d
    ld bc, $07d2
    ccf
    inc a
    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a
    add b
    ld c, b
    rst $38
    nop
    ld [bc], a
    rlca
    rst $38
    rlca
    and l
    inc bc
    adc d
    add h
    nop
    call nz, Call_077_7000
    adc a
    inc bc
    ld a, $0b
    rra
    jr jr_077_5ad3

    ld e, $3f
    jr c, jr_077_5b37

    ld [hl], b
    ld a, a
    ld h, d
    ld a, a
    ld [hl], h
    add e
    inc bc

jr_077_5abf:
    jr @+$0d

    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    call nz, $f2ff
    jp Jump_077_6903


    ld b, e
    add b
    add b

jr_077_5ad3:
    call nz, Call_077_7b03
    nop
    ld h, b
    and l
    inc b
    ld [de], a
    and e
    inc b
    jr z, jr_077_5ae2

    cp $0e
    rst $38

jr_077_5ae2:
    ld a, a
    add [hl]
    pop af
    ld [bc], a
    ld [bc], a
    rst $38
    ldh a, [$84]
    ld [bc], a
    add b
    ld [$3f1e], sp
    ld sp, $607f
    ld a, a
    ld h, e
    ccf
    ccf
    xor b
    ld bc, $0ada
    db $fc
    rst $18
    ret c

    rst $18
    sbc $8f
    adc a
    ld hl, sp+$78
    pop hl
    ld h, c
    ld b, e
    rst $38
    rst $38
    dec b
    pop hl
    ld h, c
    pop af
    ld sp, $30f0
    jp Jump_077_7503


    push bc
    inc bc
    ld a, e
    ld b, e
    ldh a, [$f0]
    add e
    adc l
    rrca
    ld [hl], $3e
    scf
    ccf
    ld a, a
    ld a, a
    ld [hl], b
    ld l, a
    ld h, b
    ld a, a
    ld h, e
    ld a, a
    ld h, [hl]
    ld a, a
    ld h, l
    ld a, a
    add l
    inc b
    ld b, b
    ld b, e
    inc bc
    rst $38
    rlca
    db $e3
    rst $38
    inc sp
    rst $38
    db $d3

jr_077_5b37:
    rst $38
    ccf
    jr nc, jr_077_5abf

    inc bc
    add b
    nop
    ld h, c
    ld b, h
    rst $38
    jp $c100


    add [hl]
    inc b
    ld d, [hl]
    nop
    ldh [$84], a
    inc bc
    adc h
    inc b
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$4e], a
    rst $38
    nop
    nop
    ld h, b
    ld b, h
    rst $38
    nop
    ld [bc], a
    ld [hl], b
    sbc a
    sbc b
    and h
    ld bc, $02c2
    ld hl, sp-$01
    ld [hl], b
    add e
    inc b
    xor d
    ld b, e
    ldh [$60], a
    ld b, e
    pop af
    ld sp, $f303
    inc sp
    ei
    dec de
    xor c
    nop
    ldh [$83], a
    inc bc
    inc l
    ld bc, $01ff
    adc l
    inc bc
    ld [hl-], a
    ld [bc], a
    ldh [$e0], a
    ld a, a
    rst $00
    dec b
    rrca
    rlca
    ld a, a
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    rst $38
    rlc l
    rra
    ld b, $fe
    inc bc
    cp $ff
    sbc h
    db $e3
    cp [hl]
    ld b, a
    pop bc
    rst $38
    inc bc
    db $e3
    cp $ff
    inc e
    ld b, h
    rst $38
    nop
    ld [bc], a
    inc b
    rst $38
    inc bc
    call z, $a003
    ld c, $f2
    rst $38
    db $fc
    sbc a
    ld hl, sp+$0f
    ld hl, sp-$61
    ldh a, [rIE]
    ld h, b
    rst $38
    inc bc
    db $fc
    rlca
    ld b, a
    ld hl, sp+$0f
    nop
    db $fc
    add e
    ld [bc], a
    and e
    inc b
    sbc [hl]
    ld a, a
    sbc $3f
    db $fc
    ld b, h
    ccf
    ld hl, sp+$04
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [$9f], a
    nop
    or b
    nop
    ld h, b
    add [hl]
    dec b
    sub a
    ld bc, $3f3f
    add $05
    ld [hl], l
    ld bc, $1bfe
    add e
    dec b
    xor l
    ld [bc], a
    db $fc
    rst $38
    cp $83
    inc b
    inc d
    and e
    ld bc, $01ae
    rst $38
    inc bc
    call z, Call_077_6004
    dec b
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    sbc h
    ld bc, $037c
    jr jr_077_5c1c

    jr jr_077_5c1e

    adc b
    add a
    ld b, l
    rst $38
    nop
    nop
    pop bc
    xor [hl]
    ld bc, $0858
    rst $08
    nop
    rst $00
    nop
    jp nz, $c000

    nop
    ret z

    add [hl]
    adc a

jr_077_5c1c:
    ld b, $9e

jr_077_5c1e:
    nop
    ld e, $00
    inc e
    nop
    inc e
    xor b
    nop
    adc h
    ld b, e
    rra
    nop
    nop
    rrca
    add e
    and l
    ld bc, $9c00
    adc $b1
    nop
    call $018e
    ld h, $43
    sbc c
    nop
    ld bc, $0098
    ret


    add c
    dec b
    rst $20
    nop
    rst $20
    nop
    rlca
    nop
    ret z

    add c
    rst $38
    nop
    rla
    add hl, de
    jr jr_077_5c68

    jr jr_077_5c51

jr_077_5c51:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$1809], sp
    add hl, de
    jr jr_077_5c77

    rla
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_077_5c68:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    db $10

jr_077_5c77:
    ld de, $1318
    inc d
    dec d
    ld d, $68
    ld l, c
    ld l, d
    ld l, e
    jr jr_077_5c93

    ld de, $3434
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    jr nz, jr_077_5cad

    jr jr_077_5cb1

    inc h
    dec h
    ld h, $6c
    ld l, l

jr_077_5c93:
    ld l, [hl]
    ld l, a
    jr jr_077_5cb7

    ld hl, $3434
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_077_5cad:
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]

jr_077_5cb1:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_077_5cb7:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    jr nc, jr_077_5cf7

    jr nc, jr_077_5cf9

    jr nc, jr_077_5cfb

    jr nc, jr_077_5cfd

    jr nc, jr_077_5cff

    jr nc, jr_077_5d01

    jr nc, jr_077_5d03

    jr nc, jr_077_5d05

    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_077_5cf7:
    inc [hl]
    inc [hl]

jr_077_5cf9:
    inc [hl]
    inc [hl]

jr_077_5cfb:
    inc [hl]
    inc [hl]

jr_077_5cfd:
    inc [hl]
    ld [hl+], a

jr_077_5cff:
    daa
    inc [hl]

jr_077_5d01:
    inc [hl]
    inc [hl]

jr_077_5d03:
    inc [hl]
    inc [hl]

jr_077_5d05:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec bc
    inc c
    dec c
    ld c, $0f
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ccf
    dec de
    inc e
    dec e
    ld e, $1f
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    jr z, jr_077_5ed5

    ld h, [hl]
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    jr c, jr_077_5ee9

    ld h, [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $34
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, b
    ld a, [de]
    ld a, [bc]
    ld c, c
    ld c, d
    inc [hl]
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_077_5ed5:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_077_5ee9:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    daa
    ld [hl+], a
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    rla
    add hl, de
    jr @+$1b

    jr jr_077_5f0d

jr_077_5f0d:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$1809], sp
    add hl, de
    jr jr_077_5f33

    rla
    ret


    ld hl, $5f33
    ld de, $9310
    call $0b50
    ret


    ld hl, $5f33
    ld de, $9310
    ld bc, $773a
    call $0e73
    ret


jr_077_5f33:
    ld c, l
    rst $38
    rst $38
    nop
    rst $38
    ld e, e
    rst $38
    nop
    nop
    ld hl, sp+$43
    inc bc
    ei
    adc d
    adc a
    nop
    nop
    adc [hl]
    xor a
    nop
    ccf
    ld b, e
    add b
    cp a
    ld c, a
    inc bc
    ei
    ld c, a
    add b
    cp a
    add h
    jp $f800


    call $00dd
    nop
    jp z, $43c9

    add b
    cp a
    nop
    nop
    call z, $00c9
    ld bc, $ff43
    inc bc
    nop
    rst $38
    call nz, $b281
    adc a
    ld b, e
    inc bc
    inc bc
    inc b
    dec de
    dec de
    dec sp
    dec sp
    ld a, e
    add $80
    xor a
    adc a
    rrca
    nop
    rst $38
    nop
    ld bc, $1110
    jr c, jr_077_5fbc

    ld a, h
    ld a, l
    ld a, h
    ld a, h
    ld bc, $ff01
    rst $38
    push bc
    add b
    rlca
    ld a, h
    ld a, l
    jr c, jr_077_5fcb

    db $10
    ld de, $0100
    add e
    rst $38
    dec b
    ret z

    ret z

    db $dd
    db $dd
    call $43cd
    db $ed
    db $ed
    ld bc, $cdcd
    ld b, e
    rst $38
    rst $38
    ld bc, $d8d8
    ld b, e
    xor d
    xor d
    nop
    adc c
    call nz, $4380
    rst $38
    rst $38
    ld bc, $8e8e
    ld c, c
    sbc $de
    ld b, e

jr_077_5fbc:
    rst $38
    rst $38
    dec b
    ld hl, sp-$08
    ld a, d
    ld a, d
    ld a, [hl-]
    ld a, [hl-]
    ret


    add b
    ld bc, $8888
    ld b, e

jr_077_5fcb:
    xor l
    xor l
    ld bc, $9d9d
    ld b, e
    cp l
    cp l
    add l
    adc a
    ld b, e
    jp c, $c9da

    add b
    ld b, e
    or a
    or a
    inc bc
    sub a
    sub a
    and a
    and a
    rst $00
    add h
    dec b
    ret


    ret


    db $db
    db $db
    ret


    ret


    ld b, e
    db $eb
    db $eb
    push bc
    adc b
    dec b
    ld h, h
    ld h, h
    ld l, l
    ld l, l
    ld h, l
    ld h, l
    ld b, e
    ld l, l
    ld l, l
    ld bc, $2424
    sub e
    rst $28
    add hl, bc
    ld sp, hl
    ld sp, hl
    ld a, e
    ld a, e

Call_077_6004:
    add hl, sp
    add hl, sp
    dec a
    dec a
    ld a, l
    ld a, l
    push bc
    adc b
    rlca
    ld [hl], $36
    ld l, d
    ld l, d
    ld a, [hl+]
    ld a, [hl+]
    ld h, d
    ld h, d
    add e
    add l
    ld b, e
    rst $38
    rst $38
    dec bc
    dec h
    dec h
    xor l
    xor l
    xor h
    xor h
    ld l, l
    ld l, l
    xor l
    xor l
    and l
    and l
    ld b, e
    rst $38
    rst $38
    ld c, e
    ld a, a
    ld a, a
    dec bc
    rst $38
    rst $38
    rst $00
    rst $00
    add e
    cp e
    ld de, $016d
    ld a, l
    ld a, l
    ld bc, $86c3
    adc h
    nop
    ld a, $00
    ld b, c
    ld d, a
    inc e
    ld e, l
    nop
    nop
    jp z, Jump_077_4399

    rst $08
    rst $08
    ld bc, $0f0f
    ld d, h
    rrca
    rst $28
    call nz, $8f96
    nop
    inc b
    add hl, bc
    ccf
    rst $38
    inc hl
    db $e3
    dec hl
    db $eb
    inc hl
    db $e3
    ld l, $ee
    add l
    nop
    ld a, h
    inc bc
    db $fc
    rst $38
    call z, Call_077_45cf
    db $ec
    rst $28
    add a
    adc a
    rlca
    add h
    add a
    db $e4
    rst $20
    sbc h
    sbc a
    add h
    add a
    add d
    adc a
    adc l
    nop
    dec a
    nop
    nop
    ld d, a
    rst $08
    rst $08
    ld bc, $0000
    adc l
    nop
    db $76
    add hl, bc
    ld l, a
    ld l, a
    jr z, jr_077_60b4

    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld c, d
    ld l, b
    ld l, b
    rst $08
    ld a, [c]
    rlca
    rst $38
    rst $38
    rst $20
    rst $20
    rst $08
    rst $08
    cp a
    cp a
    ld c, c
    rst $38
    rst $38
    rlca
    rst $20
    rst $20
    call z, $b9cc
    cp c
    rst $30
    rst $30
    ld c, e
    rst $38
    rst $38
    ld bc, $8383
    ld b, e
    inc sp
    inc sp
    dec b
    add e

jr_077_60b4:
    add e
    di
    di
    rlca
    rlca
    adc l
    ld [bc], a
    ld b, d
    ld bc, $ffff
    db $ec
    ld b, b
    ld c, c
    rst $38
    nop
    nop
    rrca
    ld d, a
    ldh [$ef], a
    nop
    nop
    jp z, Jump_077_5399

    rrca
    rst $28
    ld bc, $e000
    adc c
    sbc a
    rst $38
    nop
    ld hl, $60e1
    ld de, $a000
    call $0b50
    ret


    db $e4
    add l
    rst $38
    inc b
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rLY], a
    rst $38
    ret nz

    ld [bc], a
    add b
    rst $38
    add b
    ld b, [hl]
    rst $38
    nop
    ld [bc], a
    add c
    rst $38
    jp Jump_077_54e4


    rst $38
    nop
    ldh [rDMA], a
    rst $38
    nop
    inc b
    rlca
    rst $38
    rra
    rst $38
    ccf
    ld b, e
    rst $38
    ld a, a
    db $e4
    jr nc, @+$01

    ld [bc], a
    cp $ff
    cp $43
    rst $38
    db $fc
    db $f4
    inc h
    cp l
    inc bc
    nop
    rst $38
    nop
    rst $38
    db $dd
    add c
    ld [bc], a
    cp $ff
    ld hl, sp-$7d
    nop
    add a
    adc h
    nop
    adc l
    ld [bc], a
    nop
    rst $38
    add c
    inc h
    rst $38
    call nz, Call_077_4581
    rst $38
    nop
    adc c
    sbc c
    ld a, $ff
    nop
    inc bc
    xor b
    nop
    di
    nop
    db $fc
    adc d
    ld bc, $833f
    ld bc, $0036
    ldh a, [$a8]
    sbc e
    ld [$ff03], sp
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    db $f4
    ld b, b
    ld bc, $b91f
    ld bc, $007e
    nop
    push bc
    adc e
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    db $e4
    xor d
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
    ld a, $32
    ld hl, $c5f4
    ld bc, $000c
    call $3041
    ld hl, $c4b4
    ld bc, $0f0b
    call $0fb6
    ld a, $34
    ld hl, $c4a0
    ld bc, $000b
    call $3041
    ld a, $39
    ld hl, $c5e0
    ld bc, $000b
    call $3041
    ld hl, $c4a5
    ld [hl], $3f
    ld hl, $c5e5
    ld [hl], $40
    ld a, [$c7d4]
    cp $01
    jr z, jr_077_61bf

    ld hl, $c4ab
    ld [hl], $50
    ld a, $51
    ld hl, $c4bf
    ld b, $0f
    call Call_077_627f
    ld [hl], $52
    jr jr_077_61d0

jr_077_61bf:
    ld hl, $c4ab
    ld [hl], $66
    ld a, $67
    ld hl, $c4bf
    ld b, $0f
    call Call_077_627f
    ld [hl], $68

jr_077_61d0:
    ret


    ld a, $34
    ld hl, $c4a0
    ld bc, $000b
    call $3041
    ld a, $39
    ld hl, $c568
    ld bc, $000b
    call $3041
    ld hl, $c4a5
    ld [hl], $3f
    ld hl, $c56d
    ld [hl], $40
    ld hl, $c4ab
    ld [hl], $66
    ld a, $67
    ld hl, $c4bf
    ld b, $09
    call Call_077_627f
    ld [hl], $68
    ld a, $34
    ld hl, $c57c
    ld bc, $000b
    call $3041
    ld a, $39
    ld hl, $c5f4
    ld bc, $000b
    call $3041
    ld hl, $c587
    ld [hl], $66
    ld a, $67
    ld hl, $c59b
    ld b, $05
    call Call_077_627f
    ld [hl], $68
    ld hl, $c590
    ld bc, $050b
    call $0fb6
    ld de, $623c
    ld hl, $c590
    call $1078
    ret


    add h
    sub d
    sub h
    adc e
    sub e
    sub d
    ld c, [hl]
    ld c, [hl]
    add e
    rst $20
    ld d, b
    ldh a, [$d6]
    ld l, a
    ldh a, [$d7]
    ld h, a
    push hl
    inc hl
    ld a, l
    ldh [$d6], a
    ld a, h
    ldh [$d7], a
    ld hl, $c4b3
    ld [hl], $66
    ld hl, $c4c7
    ld a, $67
    ld b, $0f
    call Call_077_627f
    ld [hl], $68
    ld hl, $c607
    ld [hl], $3c
    xor a
    ld b, $12
    ld hl, $cdec
    call Call_077_627f
    call $3200
    pop hl
    ld a, l
    ldh [$d6], a
    ld a, h
    ldh [$d7], a
    ret


Call_077_627f:
    push de
    ld de, $0014

jr_077_6283:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_077_6283

    pop de
    ret


    ld hl, $629f
    jr jr_077_6299

    ld hl, $62a5
    jr jr_077_6299

    ld hl, $62af
    jr jr_077_6299

jr_077_6299:
    ld a, $77
    call $09ee
    ret


    nop
    ld d, b
    ld bc, $0000
    rst $38
    nop
    ld [$0010], sp
    nop
    ld [$0001], sp
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $80
    nop
    nop
    cp $00
    cp $00
    cp $00
    cp $01
    nop
    nop
    rst $38
    ld hl, $d073

jr_077_62c8:
    ld a, [hl]
    cp $50
    jr z, jr_077_62da

    cp $25
    jr z, jr_077_62d8

    cp $1f
    jr z, jr_077_62d8

    inc hl
    jr jr_077_62c8

jr_077_62d8:
    ld [hl], $22

jr_077_62da:
    ld de, $d073
    ld hl, $c4a9
    call $1078
    ret


    ld [c], a
    rst $18
    ld hl, sp-$08
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
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
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rra
    rra
    jr jr_077_6340

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_077_634e

    nop
    nop
    ld [$1c08], sp
    inc e
    ld a, $3e
    ld a, a

Jump_077_633f:
    ld a, a

jr_077_6340:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    cp $fe

jr_077_634e:
    ld a, h
    ld a, h
    jr c, jr_077_638a

    db $10
    stop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld a, a
    ld a, a
    rlca
    rlca
    rst $30
    rst $30
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    db $f4
    push af
    push af
    push af
    push af
    push af
    push af
    db $f4
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_077_638a:
    ld b, a
    ld b, a
    ld e, a
    ld e, a
    ld b, a
    ld b, a
    ld [hl], a
    ld [hl], a
    ld b, a
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    db $dd
    db $dd
    db $dd
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    cp l
    cp l
    db $dd
    db $dd
    db $ed
    db $ed
    push af
    push af
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    db $eb
    db $eb
    db $eb
    db $eb
    xor e
    xor e
    xor e
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    nop
    cp a
    nop
    cp a
    nop
    cp a
    rrca
    or b
    db $10
    or b
    db $10
    or b
    rla
    rst $38
    nop
    ld bc, $fd00
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, [de]
    db $ed
    ld a, [$3a0d]
    dec c
    ld a, [hl+]
    rst $38
    nop
    add b
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    inc bc
    cp a
    rra
    or b
    db $10
    rst $38
    nop
    ld bc, $fd00
    ld [bc], a
    db $fd
    ld [hl-], a
    db $fd
    jp nz, $02fd

    db $fd
    ld a, [$fafd]
    rst $38
    nop
    add b
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    inc bc
    cp [hl]
    ld [bc], a
    cp [hl]
    ld [bc], a
    rst $38
    nop
    ld bc, $fd00
    ld [bc], a
    db $fd
    ld [hl+], a
    db $fd
    ld [hl+], a
    db $fd
    ld [c], a
    dec a
    ld [hl+], a
    dec a
    ld [hl+], a
    rst $38
    nop
    add b
    nop
    cp a
    nop
    cp a
    ld [bc], a
    cp a
    rlca
    cp a
    rrca
    cp a
    rra
    cp a
    rlca
    rst $38
    nop
    ld bc, $fd00
    ld [bc], a
    db $fd
    ld a, [de]
    db $fd
    ld [bc], a
    db $fd
    sbc d
    db $fd
    jp nz, $1afd

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    ld bc, $0300
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_077_64a4:
    rst $38
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_077_64b0:
    rra
    nop
    rra
    nop
    rra
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    or b
    inc de
    or b
    dec e
    or b
    jr jr_077_64a4

    rla
    cp a
    jr jr_077_64b0

    nop
    add b
    ccf
    rst $38
    nop
    dec c
    jp z, $ca0d

    dec c
    ld [$4a0d], a
    db $fd
    ld a, [c]
    db $fd
    ld [bc], a
    ld bc, $fffe
    nop
    cp a
    rra
    or l
    rra
    cp a
    rra
    or l
    rra
    cp a
    rra
    cp a
    nop
    add b
    ccf
    rst $38
    nop
    sbc l
    ld a, [$fa0d]
    dec c
    ld a, [$fa9d]
    db $fd
    ld a, [$02fd]
    ld bc, $fffe
    nop
    cp a
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    cp a
    nop
    add b
    ccf
    rst $38
    nop
    db $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld [bc], a
    ld bc, $fffe
    nop
    cp a
    rlca
    cp a
    rlca
    cp a
    rlca
    cp a
    rlca
    cp a
    inc bc
    cp a
    nop
    add b
    ccf
    rst $38
    nop
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [$f2fd]
    db $fd
    ld [bc], a
    ld bc, $fffe
    nop
    nop
    nop
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
    db $f4
    db $f4
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    nop
    nop
    nop
    nop
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld e, c
    ld e, c
    ld d, l
    ld d, l
    ld d, e
    ld d, e
    sub c
    sub c
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], h
    inc h
    inc h
    ld h, $26
    dec h
    dec h
    inc h
    inc h
    ld [hl], h
    ld [hl], h
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    ld d, c
    ld d, c
    ld d, b
    ld d, b
    ld d, a
    ld d, a
    pop de
    pop de
    ld c, [hl]
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $00
    ld hl, $0029
    add hl, de
    ld a, [hl+]
    cp $84
    ret nz

    ld a, [hl+]
    inc c
    cp $85
    ret z

    inc c
    cp $86
    ret z

    inc c
    cp $88
    ret z

    inc c
    cp $92
    ret z

    ld c, $00
    ret


    db $10
    jr z, jr_077_6611

    ld b, h
    ld a, h
    add d
    add d
    nop
    ld hl, sp-$7c
    add h
    db $fc
    add d
    add d
    db $fc
    nop
    inc a
    ld b, d
    add b
    add b
    add b
    ld b, d
    inc a
    nop
    ld hl, sp-$7c
    add d
    add d
    add d
    add h
    ld hl, sp+$00
    cp $80
    add b
    db $fc
    add b
    add b
    cp $00
    cp $80
    add b

jr_077_6611:
    db $fc
    add b
    add b
    add b
    nop
    inc a
    ld b, d
    add b
    sbc [hl]
    add d
    ld b, d
    inc a
    nop
    add d
    add d
    add d
    cp $82
    add d
    add d
    nop
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    nop
    ld a, [hl]
    ld [$8808], sp
    adc b
    adc b
    ld [hl], b
    nop
    add h
    adc b
    sub b
    or b
    ret z

    add h
    add d
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    cp $00
    add d
    add $aa
    sub d
    add d
    add d
    add d
    nop
    add d
    jp nz, $92a2

    adc d
    add [hl]
    add d
    nop
    jr c, jr_077_669c

    add d
    add d
    add d
    ld b, h
    jr c, jr_077_665e

jr_077_665e:
    db $fc
    add d
    add d
    db $fc
    add b
    add b
    add b
    nop
    jr c, jr_077_66ac

    add d
    add d
    adc d
    ld b, h
    ld a, [hl-]
    nop
    db $fc
    add d
    add d
    db $fc
    adc b
    add h
    add d
    nop
    ld a, b
    add h
    add b
    ld a, h
    ld [bc], a
    add d
    ld a, h
    nop
    cp $10
    db $10
    db $10
    db $10
    db $10
    stop
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld a, $00
    add d
    add d
    ld b, h
    ld b, h
    jr z, jr_077_66bc

    stop
    add d
    add d
    sub d
    xor d
    add $c6

jr_077_669c:
    add d
    nop
    add $44
    jr z, @+$12

    jr z, jr_077_66e8

    add $00
    add d
    ld b, h
    jr z, jr_077_66ba

    db $10
    db $10

jr_077_66ac:
    stop
    cp $04
    ld [$2010], sp
    ld b, b
    cp $00
    inc c
    db $10
    jr nz, jr_077_66da

jr_077_66ba:
    jr nz, @+$12

jr_077_66bc:
    inc c
    nop
    ld h, b
    db $10
    ld [$0808], sp
    db $10
    ld h, b
    nop
    nop
    jr jr_077_66e1

    nop
    nop
    jr jr_077_66e5

    nop
    nop
    jr @+$1a

    nop
    jr jr_077_66ec

    ld [$1c10], sp
    db $10
    db $10
    db $10

jr_077_66da:
    db $10
    db $10
    inc e
    nop
    ld [hl], b
    db $10
    db $10

jr_077_66e1:
    db $10
    db $10
    db $10
    ld [hl], b

jr_077_66e5:
    nop
    nop
    nop

jr_077_66e8:
    jr c, jr_077_66ee

    inc a
    ld b, h

jr_077_66ec:
    ld a, $00

jr_077_66ee:
    ld b, b
    ld b, b
    ld b, b
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    nop
    nop
    nop
    ld a, $40
    ld b, b
    ld b, b
    ld a, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $42
    ld b, d
    ld a, $00
    nop
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    inc c
    ld [de], a
    db $10
    ld a, [hl]
    db $10
    db $10
    stop
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    stop
    db $10
    db $10
    db $10
    stop
    nop
    ld [$0800], sp
    ld [$0808], sp
    jr nc, jr_077_6777

    ld b, b
    ld b, [hl]
    ld e, b
    ld h, b
    ld e, b
    ld b, [hl]
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    db $ec
    sub d
    sub d
    sub d
    sub d
    nop
    nop
    nop
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    nop
    nop
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop

jr_077_6777:
    nop
    inc a
    ld b, b

jr_077_677a:
    inc a
    ld [bc], a
    ld a, h
    nop
    nop
    db $10
    ld a, h
    db $10
    db $10
    db $10
    inc c
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_077_67a5

    nop
    nop
    nop
    add d
    sub d
    sub d
    xor d
    ld b, h
    nop
    nop
    nop
    call nz, $1028
    jr z, jr_077_67eb

jr_077_67a5:
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc b
    ld a, b
    nop
    nop
    ld a, [hl]
    inc b
    jr jr_077_67d4

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

jr_077_67d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_077_67f8

    jr z, jr_077_682e

    ld a, h

jr_077_67eb:
    add d
    add d
    nop
    jr z, jr_077_6828

    ld b, h
    add d
    add d
    ld b, h
    jr c, jr_077_67f6

jr_077_67f6:
    jr z, jr_077_677a

jr_077_67f8:
    add d
    add d
    add d
    ld b, d
    ld a, $00
    jr z, jr_077_6800

jr_077_6800:
    jr c, jr_077_6806

    inc a
    ld b, h
    ld a, $00

jr_077_6806:
    jr z, jr_077_6808

jr_077_6808:
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    jr z, jr_077_6810

jr_077_6810:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_6828:
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_682e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $8242

    ld a, $42
    ld b, d
    ld a, $00
    ret z

    ld c, b
    adc b
    ld [$0808], sp
    ld [$c000], sp
    ld b, b
    sub [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    ret nz

    ld b, b
    sub e
    inc d
    jr jr_077_6894

    stop
    ret nz

    ld b, b
    sbc [hl]
    jr nz, jr_077_68a9

    ld bc, $003e
    ret nz

    ld c, b
    cp [hl]
    ld [$0808], sp

jr_077_6894:
    ld b, $00
    ret nz

    ld b, b
    and d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_68a9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_077_695f

    cp $7e
    jr nc, jr_077_68f5

    nop
    jr jr_077_6900

    ld [$0010], sp
    nop
    nop
    nop
    ldh [$90], a
    ldh [$8a], a
    adc d
    inc c
    ld a, [bc]

jr_077_68f5:
    ld a, [bc]
    ret c

    xor b

jr_077_68f8:
    adc b
    adc b
    ld [de], a
    ld a, [de]
    ld d, $12
    nop
    nop

jr_077_6900:
    nop
    nop
    ld a, [hl]

Jump_077_6903:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    rst $20
    adc $18
    nop
    jr @+$1a

    nop
    jr jr_077_695c

    inc a
    jr jr_077_693b

    nop
    jr jr_077_6926

jr_077_6926:
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_077_695d

    nop
    jr nc, @+$6a

    ld l, b
    ld [hl-], a
    ld e, d
    call z, $007a
    jr nc, jr_077_68f8

    inc a
    ld b, d
    ld a, [hl]

jr_077_693b:
    ld b, b
    ld a, $00
    db $10
    jr @-$02

    cp $fc
    jr jr_077_6955

    nop
    ld h, b
    ld d, b
    ld c, b
    ld b, h
    ld c, b
    ld d, b
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b

jr_077_6955:
    nop
    nop
    cp $fe
    ld a, h
    jr c, @+$12

jr_077_695c:
    nop

jr_077_695d:
    nop
    db $10

jr_077_695f:
    jr c, jr_077_69b5

    sub d
    jr c, jr_077_69a8

    ld b, h
    jr c, jr_077_69a3

    inc h
    inc a
    jr nz, @+$72

    jr nz, jr_077_69dd

    jr nz, jr_077_696f

jr_077_696f:
    nop
    ld b, h
    jr z, jr_077_6983

    jr z, jr_077_69b9

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_077_69ad

    nop
    ld [bc], a
    inc b
    ld [$2010], sp

jr_077_6983:
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    db $10
    jr nz, jr_077_69c7

    ld b, h
    ld b, h
    jr c, jr_077_69a3

    ld a, h
    db $10
    stop
    jr c, jr_077_69e5

    add $c6
    ld h, h
    jr c, jr_077_699e

jr_077_699e:
    nop
    jr @+$3a

    jr @+$1a

jr_077_69a3:
    jr jr_077_6a23

    nop
    nop
    ld a, h

jr_077_69a8:
    add $0e
    ld a, h
    ldh [$fe], a

jr_077_69ad:
    nop
    nop
    ld a, [hl]
    inc c
    jr c, jr_077_69b9

    add $7c

jr_077_69b5:
    nop
    nop
    inc e
    inc a

jr_077_69b9:
    ld l, h
    call z, $0cfe
    nop
    nop
    db $fc
    add b
    db $fc
    ld b, $c6
    ld a, h
    nop
    nop

jr_077_69c7:
    ld a, h
    ret nz

    db $fc
    add $c6
    ld a, h
    nop
    nop
    cp $c6
    inc c
    jr jr_077_6a04

    jr nc, jr_077_69d6

jr_077_69d6:
    nop
    ld a, h
    add $7c
    add $c6
    ld a, h

jr_077_69dd:
    nop
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $7c

jr_077_69e5:
    nop
    db $10
    jr z, jr_077_6a11

    ld b, h
    ld a, h
    add d
    add d
    nop
    ld hl, sp-$7c
    add h
    db $fc
    add d
    add d
    db $fc
    nop
    inc a
    ld b, d
    add b
    add b
    add b
    ld b, d
    inc a
    nop
    ld hl, sp-$7c
    add d
    add d
    add d
    add h

jr_077_6a04:
    ld hl, sp+$00
    cp $80
    add b
    db $fc
    add b
    add b
    cp $00
    cp $80
    add b

jr_077_6a11:
    db $fc
    add b
    add b
    add b
    nop
    inc a
    ld b, d
    add b
    sbc [hl]
    add d
    ld b, d
    inc a
    nop
    add d
    add d
    add d
    cp $82

jr_077_6a23:
    add d
    add d
    nop
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    nop
    ld a, [hl]
    ld [$8808], sp
    adc b
    adc b
    ld [hl], b
    nop
    add h
    adc b
    sub b
    or b
    ret z

    add h
    add d
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    cp $00
    add d
    add $aa
    sub d
    add d
    add d
    add d
    nop
    add d
    jp nz, $92a2

    adc d
    add [hl]
    add d
    nop
    jr c, jr_077_6a9c

    add d
    add d
    add d
    ld b, h
    jr c, jr_077_6a5e

jr_077_6a5e:
    db $fc
    add d
    add d
    db $fc
    add b
    add b
    add b
    nop
    jr c, jr_077_6aac

    add d
    add d
    adc d
    ld b, h
    ld a, [hl-]
    nop
    db $fc
    add d
    add d
    db $fc
    adc b
    add h
    add d
    nop
    ld a, b
    add h
    add b
    ld a, h
    ld [bc], a
    add d
    ld a, h
    nop
    cp $10
    db $10
    db $10
    db $10
    db $10
    stop
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld a, $00
    add d
    add d
    ld b, h
    ld b, h
    jr z, jr_077_6abc

    stop
    add d
    add d
    sub d
    xor d
    add $c6

jr_077_6a9c:
    add d
    nop
    add $44
    jr z, @+$12

    jr z, jr_077_6ae8

    add $00
    add d
    ld b, h
    jr z, jr_077_6aba

    db $10
    db $10

jr_077_6aac:
    stop
    cp $04
    ld [$2010], sp
    ld b, b
    cp $00
    inc c
    db $10
    jr nz, jr_077_6ada

jr_077_6aba:
    jr nz, @+$12

jr_077_6abc:
    inc c
    nop
    ld h, b
    db $10
    ld [$0808], sp
    db $10
    ld h, b
    nop
    nop
    jr jr_077_6ae1

    nop
    nop
    jr jr_077_6ae5

    nop
    nop
    jr @+$1a

    nop
    jr jr_077_6aec

    ld [$1c10], sp
    db $10
    db $10
    db $10

jr_077_6ada:
    db $10
    db $10
    inc e
    nop
    ld [hl], b
    db $10
    db $10

jr_077_6ae1:
    db $10
    db $10
    db $10
    ld [hl], b

jr_077_6ae5:
    nop
    nop
    nop

jr_077_6ae8:
    jr c, jr_077_6aee

    inc a
    ld b, h

jr_077_6aec:
    ld a, $00

jr_077_6aee:
    ld b, b
    ld b, b
    ld b, b
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    nop
    nop
    nop
    ld a, $40
    ld b, b
    ld b, b
    ld a, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $42
    ld b, d
    ld a, $00
    nop
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    inc c
    ld [de], a
    db $10
    ld a, [hl]
    db $10
    db $10
    stop
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    stop
    db $10
    db $10
    db $10
    stop
    nop
    ld [$0800], sp
    ld [$0808], sp
    jr nc, jr_077_6b77

    ld b, b
    ld b, [hl]
    ld e, b
    ld h, b
    ld e, b
    ld b, [hl]
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    db $ec
    sub d
    sub d
    sub d
    sub d
    nop
    nop
    nop
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    nop
    nop
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop

jr_077_6b77:
    nop
    inc a
    ld b, b

jr_077_6b7a:
    inc a
    ld [bc], a
    ld a, h
    nop
    nop
    db $10
    ld a, h
    db $10
    db $10
    db $10
    inc c
    nop
    nop
    nop

jr_077_6b88:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_077_6ba5

    nop
    nop
    nop
    add d
    sub d
    sub d
    xor d
    ld b, h
    nop
    nop
    nop
    call nz, $1028
    jr z, jr_077_6beb

jr_077_6ba5:
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc b
    ld a, b
    nop
    nop
    ld a, [hl]
    inc b
    jr jr_077_6bd4

    ld a, [hl]
    nop
    jr nz, jr_077_6bc8

    jr c, jr_077_6bbe

    inc a
    ld b, h
    ld a, $00

jr_077_6bbe:
    db $10
    ld [$423c], sp
    ld a, [hl]
    ld b, b
    ld a, $00
    jr nc, jr_077_6b88

jr_077_6bc8:
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    jr nz, jr_077_6be0

    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_077_6bd4:
    inc a
    nop
    ld a, b
    ld b, h
    ld b, h
    ld e, h
    ld b, d
    ld d, d
    ld c, h
    nop
    nop
    nop

jr_077_6be0:
    inc a
    ld b, d
    ld b, b
    inc a
    ld [$2818], sp
    db $10
    jr z, jr_077_6c2e

    ld a, h

jr_077_6beb:
    add d
    add d
    nop
    jr z, @+$3a

    ld b, h
    add d
    add d
    ld b, h
    jr c, jr_077_6bf6

jr_077_6bf6:
    jr z, jr_077_6b7a

    add d
    add d
    add d
    ld b, d
    ld a, $00
    jr z, jr_077_6c00

jr_077_6c00:
    jr c, jr_077_6c06

    inc a
    ld b, h
    ld a, $00

jr_077_6c06:
    jr z, jr_077_6c08

jr_077_6c08:
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    jr z, jr_077_6c10

jr_077_6c10:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    jr z, jr_077_6c18

jr_077_6c18:
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    nop
    jr z, jr_077_6c21

jr_077_6c21:
    db $10
    db $10
    db $10
    stop
    db $10
    jr z, jr_077_6c61

    inc b
    inc a
    ld b, h
    ld a, $00

jr_077_6c2e:
    db $10
    jr z, jr_077_6c6d

    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    db $10
    jr z, jr_077_6c7d

    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    db $10
    jr z, jr_077_6c7d

    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    db $10
    jr z, jr_077_6c49

jr_077_6c49:
    db $10
    db $10
    db $10
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
    db $10
    jr nc, jr_077_6cdf

jr_077_6c61:
    cp $7e
    jr nc, jr_077_6c75

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_6c6d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_6c75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_6c7d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $847a
    add b
    add h
    ld a, b
    nop
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, b
    adc b
    adc b
    ld a, b
    nop
    ld b, $12
    inc b
    db $10
    db $10
    db $10
    db $10
    ld h, b
    ld d, $12
    inc d
    db $10
    db $10
    db $10
    stop
    inc bc
    ld bc, $a4da
    and h
    and h
    and h
    nop
    inc bc
    ld bc, $447a
    ld b, h
    ld b, h
    ld b, h
    nop
    inc bc
    ld bc, $84fa
    add h
    ld hl, sp-$80
    add b
    inc bc
    ld bc, $807a
    ld a, b
    inc b
    ld hl, sp+$00
    ret nz

    ld b, b
    sbc [hl]
    jr nz, @+$20

    ld bc, $003e
    ld b, $22
    inc h
    ldh a, [rNR41]
    jr nz, jr_077_6ced

    nop
    inc bc
    ld bc, $888a
    adc b
    adc b
    ld a, b
    nop
    inc bc

jr_077_6cdf:
    ld bc, $4446
    ld b, h
    inc a
    inc b
    ld a, b
    jr jr_077_6d00

    ld [$0010], sp
    nop
    nop

jr_077_6ced:
    nop
    ldh [$90], a
    ldh [$8a], a
    adc d
    inc c
    ld a, [bc]
    ld a, [bc]
    adc b
    ret c

jr_077_6cf8:
    xor b
    adc b
    sub d
    ld a, [de]
    ld d, $12
    nop
    nop

jr_077_6d00:
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, h
    db $10
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
    ld a, [hl]
    rst $20
    adc $18
    nop
    jr @+$1a

    nop
    jr jr_077_6d5c

    inc a
    jr jr_077_6d3b

    nop
    jr jr_077_6d26

jr_077_6d26:
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_077_6d5d

    nop
    jr nc, @+$6a

    ld l, b
    ld [hl-], a
    ld e, d
    call z, $007a
    jr nc, jr_077_6cf8

    inc a
    ld b, d
    ld a, [hl]

jr_077_6d3b:
    ld b, b
    ld a, $00
    db $10
    jr @-$02

    cp $fc
    jr jr_077_6d55

    nop
    ld h, b
    ld d, b
    ld c, b
    ld b, h
    ld c, b
    ld d, b
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b

jr_077_6d55:
    nop
    nop
    cp $fe
    ld a, h
    jr c, @+$12

jr_077_6d5c:
    nop

jr_077_6d5d:
    nop
    db $10
    jr c, jr_077_6db5

    sub d
    jr c, jr_077_6da8

    ld b, h
    jr c, jr_077_6da3

    inc h
    inc a
    jr nz, @+$72

    jr nz, jr_077_6ddd

    jr nz, jr_077_6d6f

jr_077_6d6f:
    nop
    ld b, h
    jr z, jr_077_6d83

    jr z, jr_077_6db9

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_077_6dad

    nop
    ld [bc], a
    inc b
    ld [$2010], sp

jr_077_6d83:
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    db $10
    jr nz, jr_077_6dc7

    ld b, h
    ld b, h
    jr c, jr_077_6da3

    ld a, h
    db $10
    stop
    jr c, jr_077_6de5

    add $c6
    ld h, h
    jr c, jr_077_6d9e

jr_077_6d9e:
    nop
    jr @+$3a

    jr @+$1a

jr_077_6da3:
    jr jr_077_6e23

    nop
    nop
    ld a, h

jr_077_6da8:
    add $0e
    ld a, h
    ldh [$fe], a

jr_077_6dad:
    nop
    nop
    ld a, [hl]
    inc c
    jr c, jr_077_6db9

    add $7c

jr_077_6db5:
    nop
    nop
    inc e
    inc a

jr_077_6db9:
    ld l, h
    call z, $0cfe
    nop
    nop
    db $fc
    add b
    db $fc
    ld b, $c6
    ld a, h
    nop
    nop

jr_077_6dc7:
    ld a, h
    ret nz

    db $fc
    add $c6
    ld a, h
    nop
    nop
    cp $c6
    inc c
    jr jr_077_6e04

    jr nc, jr_077_6dd6

jr_077_6dd6:
    nop
    ld a, h
    add $7c
    add $c6
    ld a, h

jr_077_6ddd:
    nop
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $7c

jr_077_6de5:
    nop
    db $10
    jr z, jr_077_6e11

    ld b, h
    ld a, h
    add d
    add d
    nop
    ld hl, sp-$7c
    add h
    db $fc
    add d
    add d
    db $fc
    nop
    inc a
    ld b, d
    add b
    add b
    add b
    ld b, d
    inc a
    nop
    ld hl, sp-$7c
    add d
    add d
    add d
    add h

jr_077_6e04:
    ld hl, sp+$00
    cp $80
    add b
    db $fc
    add b
    add b
    cp $00
    cp $80
    add b

jr_077_6e11:
    db $fc
    add b
    add b
    add b
    nop
    inc a
    ld b, d
    add b
    sbc [hl]
    add d
    ld b, d
    inc a
    nop
    add d
    add d
    add d
    cp $82

jr_077_6e23:
    add d
    add d
    nop
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    nop
    ld a, [hl]
    ld [$8808], sp
    adc b
    adc b
    ld [hl], b
    nop
    add h
    adc b
    sub b
    or b
    ret z

    add h
    add d
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    cp $00
    add d
    add $aa
    sub d
    add d
    add d
    add d
    nop
    add d
    jp nz, $92a2

    adc d
    add [hl]
    add d
    nop
    jr c, jr_077_6e9c

    add d
    add d
    add d
    ld b, h
    jr c, jr_077_6e5e

jr_077_6e5e:
    db $fc
    add d
    add d
    db $fc
    add b
    add b
    add b
    nop
    jr c, jr_077_6eac

    add d
    add d
    adc d
    ld b, h
    ld a, [hl-]
    nop
    db $fc
    add d
    add d
    db $fc
    adc b
    add h
    add d
    nop
    ld a, b
    add h
    add b
    ld a, h
    ld [bc], a
    add d
    ld a, h
    nop
    cp $10
    db $10
    db $10
    db $10
    db $10
    stop
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld a, $00
    add d
    add d
    ld b, h
    ld b, h
    jr z, jr_077_6ebc

    stop
    add d
    add d
    sub d
    xor d
    add $c6

jr_077_6e9c:
    add d
    nop
    add $44
    jr z, @+$12

    jr z, jr_077_6ee8

    add $00
    add d
    ld b, h
    jr z, jr_077_6eba

    db $10
    db $10

jr_077_6eac:
    stop
    cp $04
    ld [$2010], sp
    ld b, b
    cp $00
    inc c
    db $10
    jr nz, jr_077_6eda

jr_077_6eba:
    jr nz, @+$12

jr_077_6ebc:
    inc c
    nop
    ld h, b
    db $10
    ld [$0808], sp
    db $10
    ld h, b
    nop
    nop
    jr jr_077_6ee1

    nop
    nop
    jr jr_077_6ee5

    nop
    nop
    jr @+$1a

    nop
    jr jr_077_6eec

    ld [$1c10], sp
    db $10
    db $10
    db $10

jr_077_6eda:
    db $10
    db $10
    inc e
    nop
    ld [hl], b
    db $10
    db $10

jr_077_6ee1:
    db $10
    db $10
    db $10
    ld [hl], b

jr_077_6ee5:
    nop
    nop
    nop

jr_077_6ee8:
    jr c, jr_077_6eee

    inc a
    ld b, h

jr_077_6eec:
    ld a, $00

jr_077_6eee:
    ld b, b
    ld b, b
    ld b, b
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    nop
    nop
    nop
    ld a, $40
    ld b, b
    ld b, b
    ld a, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $42
    ld b, d
    ld a, $00
    nop
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    inc c
    ld [de], a
    db $10
    ld a, [hl]
    db $10
    db $10
    stop
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    stop
    db $10
    db $10
    db $10
    stop
    nop
    ld [$0800], sp
    ld [$0808], sp
    jr nc, jr_077_6f77

    ld b, b
    ld b, [hl]
    ld e, b
    ld h, b
    ld e, b
    ld b, [hl]
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    db $ec
    sub d
    sub d
    sub d
    sub d
    nop
    nop
    nop
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    nop
    nop
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop

jr_077_6f77:
    nop
    inc a
    ld b, b

jr_077_6f7a:
    inc a
    ld [bc], a
    ld a, h
    nop
    nop
    db $10
    ld a, h
    db $10
    db $10
    db $10
    inc c
    nop
    nop
    nop

jr_077_6f88:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_077_6fa5

    nop
    nop
    nop
    add d
    sub d
    sub d
    xor d
    ld b, h
    nop
    nop
    nop
    call nz, $1028
    jr z, jr_077_6feb

jr_077_6fa5:
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc b
    ld a, b
    nop
    nop
    ld a, [hl]
    inc b
    jr jr_077_6fd4

    ld a, [hl]
    nop
    jr nz, jr_077_6fc8

    jr c, jr_077_6fbe

    inc a
    ld b, h
    ld a, $00

jr_077_6fbe:
    db $10

Jump_077_6fbf:
    ld [$423c], sp
    ld a, [hl]
    ld b, b
    ld a, $00
    jr nc, jr_077_6f88

jr_077_6fc8:
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    jr nz, @+$12

    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_077_6fd4:
    inc a
    nop
    db $10
    ld [$2810], sp
    ld b, h

jr_077_6fdb:
    cp $82
    nop
    db $10
    jr nz, jr_077_6ff1

    jr z, jr_077_7027

    cp $82
    nop
    jr z, jr_077_6ff8

    jr z, jr_077_702e

    ld a, h

jr_077_6feb:
    add d
    add d
    nop
    jr z, @+$3a

    ld b, h

jr_077_6ff1:
    add d
    add d
    ld b, h
    jr c, jr_077_6ff6

jr_077_6ff6:
    jr z, jr_077_6f7a

jr_077_6ff8:
    add d
    add d
    add d
    ld b, d
    ld a, $00
    jr z, jr_077_7000

Call_077_7000:
jr_077_7000:
    jr c, jr_077_7006

    inc a
    ld b, h
    ld a, $00

jr_077_7006:
    jr z, jr_077_7008

jr_077_7008:
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    jr z, jr_077_7010

jr_077_7010:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    db $10
    ld [$80fe], sp
    db $fc
    add b
    cp $00
    db $10

jr_077_701f:
    jr nz, jr_077_701f

    add b
    db $fc
    add b
    cp $00
    db $10

jr_077_7027:
    ld [$107c], sp
    db $10
    db $10
    ld a, h
    nop

jr_077_702e:
    db $10
    jr nz, @+$7e

    db $10
    db $10
    db $10
    ld a, h
    nop
    ld [hl-], a
    ld c, h
    jp nz, $92a2

    adc d
    add [hl]
    nop
    db $10
    ld [$827c], sp
    add d
    add d
    ld a, h
    nop
    db $10
    jr nz, jr_077_70c5

    add d
    add d
    add d
    ld a, h
    nop
    db $10
    ld [$8282], sp
    add d
    ld b, d
    ld a, $00
    db $10
    jr nz, jr_077_6fdb

    add d
    add d
    ld b, d
    ld a, $00
    ld [$3810], sp
    inc b
    inc a
    ld b, h
    ld a, $00
    jr nz, jr_077_7078

    nop
    db $10
    db $10
    db $10
    stop
    ld [$0010], sp
    db $10
    db $10
    db $10
    stop
    ld [hl-], a
    ld c, h

jr_077_7078:
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    jr nz, @+$12

    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    ld [$3c10], sp
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    ld [$4410], sp
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    jr nc, @+$4a

    ld c, b
    jr nc, jr_077_709d

jr_077_709d:
    nop
    jr nc, @+$6a

    ld l, b
    ld [hl-], a
    ld e, d
    call z, $007a
    jp nz, $8242

    ld a, $42
    ld b, d
    ld a, $00
    ret z

    ld c, b
    adc b
    ld [$0808], sp
    ld [$c000], sp
    ld b, b
    or [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    ret nz

    ld b, b
    and [hl]
    jr z, jr_077_70f3

    jr nz, jr_077_70e5

jr_077_70c5:
    jr nz, @-$3e

    ld b, b
    sbc [hl]
    jr nz, @+$20

    ld bc, $003e
    ret nz

    ld c, b
    cp [hl]
    ld [$0808], sp
    ld b, $00
    ret nz

    ld b, b
    and d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$1000], sp
    jr nc, jr_077_715f

    cp $7e
    jr nc, jr_077_70f5

jr_077_70e5:
    nop
    jr jr_077_7100

    ld [$0010], sp
    nop
    nop
    nop
    ldh [$90], a
    ldh [$8a], a
    adc d

jr_077_70f3:
    inc c
    ld a, [bc]

jr_077_70f5:
    ld a, [bc]
    adc b
    ret c

jr_077_70f8:
    xor b
    adc b
    sub d
    ld a, [de]
    ld d, $12
    nop
    nop

jr_077_7100:
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr jr_077_7121

    nop
    jr jr_077_717f

    rst $20
    ld a, [hl]
    nop
    jr jr_077_7111

jr_077_7111:
    jr jr_077_712b

    inc a
    inc a
    jr jr_077_7195

    rst $20
    adc $18
    nop
    jr @+$1a

    nop
    jr jr_077_715c

    inc a

jr_077_7121:
    jr jr_077_713b

    nop
    jr jr_077_7126

jr_077_7126:
    nop
    nop
    nop
    nop
    nop

jr_077_712b:
    jr nc, jr_077_715d

    nop
    jr nc, @+$6a

    ld l, b
    ld [hl-], a
    ld e, d
    call z, $007a
    jr nc, jr_077_70f8

    inc a
    ld b, d
    ld a, [hl]

jr_077_713b:
    ld b, b
    ld a, $00
    db $10
    jr @-$02

    cp $fc
    jr jr_077_7155

    nop
    ld h, b
    ld d, b
    ld c, b
    ld b, h
    ld c, b
    ld d, b
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b

jr_077_7155:
    nop
    nop
    cp $fe
    ld a, h
    jr c, @+$12

jr_077_715c:
    nop

jr_077_715d:
    nop
    db $10

jr_077_715f:
    jr c, jr_077_71b5

    sub d
    jr c, jr_077_71a8

    ld b, h
    jr c, jr_077_71a3

    inc h
    inc a
    jr nz, @+$72

    jr nz, jr_077_71dd

    jr nz, jr_077_716f

jr_077_716f:
    nop
    ld b, h
    jr z, jr_077_7183

    jr z, jr_077_71b9

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_077_71ad

    nop
    ld [bc], a

jr_077_717f:
    inc b
    ld [$2010], sp

jr_077_7183:
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    db $10
    jr nz, jr_077_71c7

    ld b, h
    ld b, h
    jr c, jr_077_71a3

    ld a, h
    db $10

jr_077_7195:
    stop
    jr c, jr_077_71e5

    add $c6
    ld h, h
    jr c, jr_077_719e

jr_077_719e:
    nop
    jr @+$3a

    jr @+$1a

jr_077_71a3:
    jr jr_077_7223

    nop
    nop
    ld a, h

jr_077_71a8:
    add $0e
    ld a, h
    ldh [$fe], a

jr_077_71ad:
    nop
    nop
    ld a, [hl]
    inc c
    jr c, jr_077_71b9

    add $7c

jr_077_71b5:
    nop
    nop
    inc e
    inc a

jr_077_71b9:
    ld l, h
    call z, $0cfe
    nop
    nop
    db $fc
    add b
    db $fc
    ld b, $c6
    ld a, h
    nop
    nop

jr_077_71c7:
    ld a, h
    ret nz

    db $fc
    add $c6
    ld a, h
    nop
    nop
    cp $c6
    inc c
    jr @+$32

    jr nc, jr_077_71d6

jr_077_71d6:
    nop
    ld a, h
    add $7c
    add $c6
    ld a, h

jr_077_71dd:
    nop
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $7c

jr_077_71e5:
    nop
    ld b, $21
    ld h, d
    ld l, e

jr_077_71ea:
    ld a, [hl]
    cp $dc
    jr nz, jr_077_71f3

    ld a, $d4
    jr jr_077_71fd

jr_077_71f3:
    sub $d4
    jr c, jr_077_71fe

    cp $03
    jr nc, jr_077_71fe

    add $cd

jr_077_71fd:
    ld [hl], a

jr_077_71fe:
    inc hl
    dec b
    jr nz, jr_077_71ea

    ret


    ld b, $21
    ld h, d
    ld l, e

jr_077_7207:
    ld a, [hl]
    cp $d4
    jr nz, jr_077_7210

    ld a, $dc
    jr jr_077_721a

jr_077_7210:
    sub $cd
    jr c, jr_077_721b

    cp $03
    jr nc, jr_077_721b

    add $d4

jr_077_721a:
    ld [hl], a

jr_077_721b:
    inc hl
    dec b
    jr nz, jr_077_7207

    ret


    ld b, $21
    ld h, d

jr_077_7223:
    ld l, e

jr_077_7224:
    ld a, [hl]
    and $f0
    cp $d0
    jr nz, jr_077_7233

    ld a, [hl]
    add $08
    and $0f
    or $d0
    ld [hl], a

jr_077_7233:
    inc hl
    dec b
    jr nz, jr_077_7224

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

Jump_077_7503:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_077_7b03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_077_7efd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_077_7fff:
    nop
