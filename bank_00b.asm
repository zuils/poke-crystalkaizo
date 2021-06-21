; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld a, $e4
    ldh [rOBP0], a
    call Call_00b_4165
    call Call_00b_401c
    ld a, [$d22d]
    dec a
    ret z

    jp Jump_00b_403a


    ld a, $e4
    ldh [rOBP0], a
    call Call_00b_4165
    jp Jump_00b_403a


Call_00b_401c:
    call Call_00b_40ad
    ld hl, $dd01
    ld de, $dcd7
    call Call_00b_4059
    ld a, $60
    ld hl, $cfc4
    ld [hl+], a
    ld [hl], a
    ld a, $08
    ld [$d003], a
    ld hl, $c400
    jp Jump_00b_4143


Jump_00b_403a:
    call Call_00b_40c5
    ld hl, $d2aa
    ld de, $d280
    call Call_00b_4059
    ld hl, $cfc4
    ld a, $48
    ld [hl+], a
    ld [hl], $20
    ld a, $f8
    ld [$d003], a
    ld hl, $c418
    jp Jump_00b_4143


Call_00b_4059:
    ld a, [de]
    push af
    ld de, $d1ea
    ld c, $06
    ld a, $34

jr_00b_4062:
    ld [de], a
    inc de
    dec c
    jr nz, jr_00b_4062

    pop af
    ld de, $d1ea

jr_00b_406b:
    push af
    call Call_00b_4075
    inc de
    pop af
    dec a
    jr nz, jr_00b_406b

    ret


Call_00b_4075:
    ld a, [hl+]
    and a
    jr nz, jr_00b_407f

    ld a, [hl]
    and a
    ld b, $33
    jr z, jr_00b_408b

jr_00b_407f:
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    and a
    ld b, $32
    jr nz, jr_00b_408e

    dec b
    jr jr_00b_408e

jr_00b_408b:
    dec hl
    dec hl
    dec hl

jr_00b_408e:
    ld a, b
    ld [de], a
    ld bc, $0032
    add hl, bc
    ret


    ld hl, $40a9
    ld de, $d004
    ld bc, $0004
    call $3026
    ld hl, $c57a
    ld de, $ffff
    jr jr_00b_40f1

    ld [hl], e
    ld [hl], a
    ld l, a
    db $76

Call_00b_40ad:
    ld hl, $40c1
    ld de, $d004
    ld bc, $0004
    call $3026
    ld hl, $c57a
    ld de, $ffff
    jr jr_00b_40f1

    ld [hl], e
    ld e, h
    ld l, a
    db $76

Call_00b_40c5:
    ld hl, $40ed
    ld de, $d004
    ld bc, $0004
    call $3026
    ld hl, $c4c9
    ld de, $0001
    call Call_00b_40f1
    ld a, [$d22d]
    dec a
    ret nz

    ld a, [$d204]
    dec a
    call $3393
    ret z

    ld hl, $c4b5
    ld [hl], $5d
    ret


    ld l, l
    ld [hl], h
    ld a, b
    db $76

Call_00b_40f1:
jr_00b_40f1:
    ld a, [$d004]
    ld [hl], a
    ld bc, $0014
    add hl, bc
    ld a, [$d005]
    ld [hl], a
    ld b, $08

jr_00b_40ff:
    add hl, de
    ld a, [$d007]
    ld [hl], a
    dec b
    jr nz, jr_00b_40ff

    add hl, de
    ld a, [$d006]
    ld [hl], a
    ret


    call Call_00b_4165
    ld hl, $dd01
    ld de, $dcd7
    call Call_00b_4059
    ld hl, $cfc4
    ld a, $50
    ld [hl+], a
    ld [hl], $40
    ld a, $08
    ld [$d003], a
    ld hl, $c400
    call Call_00b_4143
    ld hl, $d2aa
    ld de, $d280
    call Call_00b_4059
    ld hl, $cfc4
    ld a, $50
    ld [hl+], a
    ld [hl], $68
    ld hl, $c418
    jp Jump_00b_4143


Call_00b_4143:
Jump_00b_4143:
    ld de, $d1ea
    ld c, $06

jr_00b_4148:
    ld a, [$cfc5]
    ld [hl+], a
    ld a, [$cfc4]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [$cfc4]
    ld b, a
    ld a, [$d003]
    add b
    ld [$cfc4], a
    inc de
    dec c
    jr nz, jr_00b_4148

    ret


Call_00b_4165:
    ld de, $4172
    ld hl, $8310
    ld bc, $0b04
    call $0dc9
    ret


    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $51
    ld l, a
    ld b, c
    ld a, a
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, $3e
    inc e
    inc e
    nop
    nop
    ld b, c
    ld e, l
    ld a, $22
    ld a, $55
    ld a, $49
    ld a, $55
    ld a, $22
    ld b, c
    ld e, l
    nop
    nop
    inc e
    nop
    ld [hl+], a
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    inc e
    nop
    call $31f3
    call $0e5f
    ld hl, $c4de
    ld b, $09
    ld c, $0e
    call $0fe8
    ld hl, $c508
    ld de, $d47d
    call $1078
    ld hl, $c56c
    ld de, $d26b
    call $1078
    ld hl, $c549
    ld a, $69
    ld [hl+], a
    ld [hl], $6a
    ld a, $0b
    ld hl, $410d
    rst $08
    ld b, $08
    call $3340
    call $32f9
    ld a, $e4
    ldh [rOBP0], a
    ret


    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $50
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld d, b
    ld c, d
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld d, b
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld d, b
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld d, b
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    sub d
    add d
    adc b
    add h
    adc l
    sub e
    adc b
    sub d
    sub e
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    sbc b
    adc [hl]
    sub h
    adc l
    add [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    sub d
    add d
    add a
    adc [hl]
    adc [hl]
    adc e
    add c
    adc [hl]
    sbc b
    ld d, b
    add c
    adc b
    sub c
    add e
    ld a, a
    adc d
    add h
    add h
    adc a
    add h
    sub c
    ld d, b
    adc e
    add b
    sub d
    sub d
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    add c
    add h
    add b
    sub h
    sub e
    sbc b
    ld d, b
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    add [hl]
    add h
    adc l
    sub e
    adc e
    add h
    adc h
    add b
    adc l
    ld d, b
    sub d
    adc d
    adc b
    add h
    sub c
    ld d, b
    sub e
    add h
    add b
    add d
    add a
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    add l
    adc b
    sub d
    add a
    add h
    sub c
    ld d, b
    sub d
    sub [hl]
    adc b
    adc h
    adc h
    add h
    sub c
    rst $28
    ld d, b
    sub d
    sub [hl]
    adc b
    adc h
    adc h
    add h
    sub c
    push af
    ld d, b
    sub d
    add b
    adc b
    adc e
    adc [hl]
    sub c
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc l
    add h
    sub c
    add e
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    ld d, b
    add [hl]
    sub h
    adc b
    sub e
    add b
    sub c
    adc b
    sub d
    sub e
    ld d, b
    add a
    adc b
    adc d
    add h
    sub c
    ld d, b
    add c
    adc b
    adc d
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    add c
    sub h
    sub c
    add [hl]
    adc e
    add b
    sub c
    ld d, b
    add l
    adc b
    sub c
    add h
    add c
    sub c
    add h
    add b
    sub e
    add a
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    add c
    adc e
    add b
    add d
    adc d
    add c
    add h
    adc e
    sub e
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld d, b
    adc a
    adc b
    add d
    adc l
    adc b
    add d
    adc d
    add h
    sub c
    ld d, b
    add d
    add b
    adc h
    adc a
    add h
    sub c
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    sub d
    add b
    add [hl]
    add h
    ld d, b
    adc h
    add h
    add e
    adc b
    sub h
    adc h
    ld d, b
    add c
    adc [hl]
    add b
    sub c
    add e
    add h
    sub c
    ld d, b
    ld d, h
    add l
    add b
    adc l
    ld d, b
    adc d
    adc b
    adc h
    adc [hl]
    adc l
    adc [hl]
    ld a, a
    add [hl]
    adc b
    sub c
    adc e
    ld d, b
    sub e
    sub [hl]
    adc b
    adc l
    sub d
    ld d, b
    ld d, h
    add l
    add b
    adc l
    ld d, b
    ld c, d
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, b
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    sub c
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    adc h
    sbc b
    sub d
    sub e
    adc b
    add d
    add b
    adc e
    adc h
    add b
    adc l
    ld d, b
    ld a, c
    ld de, $0003
    ld hl, $442c
    call $30e1
    jp nc, Jump_00b_4545

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [$4524], sp
    jr nz, @+$3b

    ld b, l
    inc hl
    add a
    ld b, h
    ld l, $8d
    ld b, h
    cpl
    sub e
    ld b, h
    ld sp, $4499
    add hl, sp
    and l
    ld b, h
    ld b, c
    xor e
    ld b, h
    ld c, a
    or c
    ld b, h
    ld d, h
    or a
    ld b, h
    ld d, [hl]
    cp l
    ld b, h
    ld e, d
    jp nz, Jump_00b_5c44

    ret z

    ld b, h
    ld h, c
    ret z

    ld b, h
    ld l, d
    pop de
    ld b, h
    ld l, e
    rst $10
    ld b, h
    ld [hl], b
    db $e3
    ld b, h
    ld [hl], c
    jp hl


    ld b, h
    ld [hl], d
    rst $28
    ld b, h
    ld [hl], e
    push af
    ld b, h
    ld a, b
    cp $44
    ld a, h
    inc c
    ld b, l
    adc b
    ld [de], a
    ld b, l
    adc c
    dec de
    ld b, l
    sbc c
    ld b, c
    ld b, l
    add h
    add hl, sp
    ld b, l
    add l
    add hl, sp
    ld b, l
    add [hl]
    add hl, sp
    ld b, l
    db $76
    dec l
    ld b, l
    sub h
    inc sp
    ld b, l
    rst $38
    ld a, [$c700]
    bit 3, a
    ret


    ld a, [$c670]
    bit 1, a
    ret


    ld a, [$c670]
    bit 2, a
    ret


    ld a, [$c66a]
    bit 7, a
    ret nz

    ld a, [$c6ff]
    bit 2, a
    ret


    ld a, [$c671]
    bit 3, a
    ret


    ld a, [$c700]
    bit 4, a
    ret


    ld a, [$c670]
    bit 4, a
    ret


    ld a, [$c66b]
    bit 7, a
    ret


    ld a, [$c675]
    and a
    ret


    ld a, [$c66c]
    bit 4, a
    ret


    ld a, [$d214]
    and $07
    jr z, jr_00b_4541

    jr jr_00b_4545

    ld a, [$c671]
    bit 7, a
    ret


    ld a, [$c63a]
    and a
    jr z, jr_00b_4541

    ld a, [$c668]
    bit 0, a
    ret


    ld a, [$c6ff]
    bit 0, a
    ret


    ld a, [$c668]
    bit 3, a
    ret


    ld a, [$c668]
    bit 4, a
    ret


    ld a, [$c70a]
    cp $03
    jr z, jr_00b_4541

    jr jr_00b_4545

    ld a, $0d
    ld hl, $77f5
    rst $08
    jr c, jr_00b_4541

    ld a, [$c668]
    bit 7, a
    ret


    ld a, [$c700]
    bit 2, a
    ret


    ld a, [$c70a]
    cp $01
    jr z, jr_00b_4541

    jr jr_00b_4545

    ld a, [$c70a]
    cp $02
    jr z, jr_00b_4541

    jr jr_00b_4545

    ld a, [$c63a]
    and $07
    jr z, jr_00b_4541

    jr jr_00b_4545

    ld a, [$c66a]
    bit 7, a
    ret


    ld a, [$c700]
    bit 5, a
    ret


    ld a, $0e
    ld hl, $5251
    rst $08
    jr nc, jr_00b_4545

jr_00b_4541:
    ld a, $01
    and a
    ret


Jump_00b_4545:
jr_00b_4545:
    xor a
    ret


    ld hl, $45ef
    call $1057
    call $1dcf
    jr c, jr_00b_45c3

    ld hl, $45f4
    call $1057
    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_00b_45c3

    ld a, [$d108]
    cp $fd
    jr z, jr_00b_45bc

    ld a, [$d109]
    ld hl, $dce2
    ld bc, $0030
    call $30fe
    ld a, [hl]
    and a
    jr z, jr_00b_45ca

    ld hl, $45ea
    call $1057
    call $1d6e
    ld a, $04
    ld hl, $6f5b
    rst $08
    push af
    call $2b74
    pop af
    jr c, jr_00b_45c3

    ld a, [$cfa9]
    push af
    ld a, [$cf60]
    ld [$d265], a
    call $34f8
    ld hl, $45d6
    call $1057
    call $1dcf
    pop bc
    jr c, jr_00b_45c3

    call Call_00b_45f9
    call $3c55
    ld de, $0097
    call $3c23
    call $3c55
    ld hl, $45db
    call $1057
    ret


jr_00b_45bc:
    ld hl, $45e0
    call $1057
    ret


jr_00b_45c3:
    ld hl, $45e5
    call $1057
    ret


jr_00b_45ca:
    ld hl, $45d1
    call $1057
    ret


    ld d, $ba
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $da
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $f5
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $17
    ld e, a
    ld [hl], c
    ld d, b
    ld d, $36
    ld e, a
    ld [hl], c
    ld d, b
    ld d, $50
    ld e, a
    ld [hl], c
    ld d, b
    ld d, $74
    ld e, a
    ld [hl], c
    ld d, b
    ld d, $d1
    ld e, a
    ld [hl], c
    ld d, b

Call_00b_45f9:
    ld a, b
    push bc
    dec a
    ld c, a
    ld b, $00
    ld hl, $dce1
    add hl, bc
    ld a, [$d109]
    ld bc, $0030
    call $30fe
    pop bc
    push bc
    inc b

jr_00b_460f:
    ld a, b
    cp $05
    jr z, jr_00b_461b

    inc hl
    ld a, [hl-]
    ld [hl], a
    inc hl
    inc b
    jr jr_00b_460f

jr_00b_461b:
    xor a
    ld [hl], a
    pop bc
    ld a, b
    push bc
    dec a
    ld c, a
    ld b, $00
    ld hl, $dcf6
    add hl, bc
    ld a, [$d109]
    ld bc, $0030
    call $30fe
    pop bc
    inc b

jr_00b_4633:
    ld a, b
    cp $05
    jr z, jr_00b_463f

    inc hl
    ld a, [hl-]
    ld [hl], a
    inc hl
    inc b
    jr jr_00b_4633

jr_00b_463f:
    xor a
    ld [hl], a
    ret


    ld de, $c800
    ld a, $01
    ld [de], a
    inc de
    ld a, $01
    call $2fcb
    ld hl, $a009
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc de
    ld a, [hl]
    ld [de], a
    ld c, a
    inc de
    push bc
    ld hl, $a00b
    ld bc, $000b
    call $3026
    push de
    ld hl, $aa27
    ld b, $20
    call $335f
    pop de
    pop bc
    ld a, [$d265]
    ld [de], a
    inc de
    call $2fe1
    call $2f8c
    and $01
    ld [de], a
    inc de
    call Call_00b_46ac
    ld [de], a
    inc de
    ld a, c
    ld c, b
    ld b, a
    call Call_00b_46ac
    ld [de], a
    inc de
    ld a, $00
    call $2fcb
    ld a, [$abe4]
    ld [de], a
    inc de
    ld a, [$abe5]
    ld [de], a
    ld a, $14
    ld [$ca00], a
    call $2fe1
    ld hl, $c800
    ld de, $c950
    ld bc, $0014
    jp $3026


Call_00b_46ac:
    push de
    call $2f8c
    cp $19
    jr c, jr_00b_46cc

    call $2f8c
    and $07
    ld d, a
    rl d
    ld e, $80

jr_00b_46be:
    rlc e
    dec a
    jr nz, jr_00b_46be

    ld a, e
    and c
    jr z, jr_00b_46c9

    ld a, $01

jr_00b_46c9:
    add d
    jr jr_00b_4706

jr_00b_46cc:
    call $2f8c
    cp $32

jr_00b_46d1:
    jr c, jr_00b_46ed

    call $2f8c
    and $03
    ld d, a
    rl d
    ld e, $80

jr_00b_46dd:
    rlc e
    dec a
    jr nz, jr_00b_46dd

    ld a, e
    and b
    jr z, jr_00b_46e8

    ld a, $01

jr_00b_46e8:
    add d
    add $10
    jr jr_00b_4706

jr_00b_46ed:
    call $2f8c
    cp $32
    jr c, jr_00b_46fd

    ld a, b
    swap a
    and $07
    add $18
    jr jr_00b_4706

jr_00b_46fd:
    ld a, b
    and $80
    ld a, $20
    jr z, jr_00b_4706

    ld a, $21

jr_00b_4706:
    pop de
    ret


    ld a, c
    cp $25
    jr nc, jr_00b_4722

    ld hl, $4725
    ld b, $00
    add hl, bc
    ld c, [hl]
    ret


    ld a, c
    cp $25
    jr nc, jr_00b_4722

    ld hl, $474a
    ld b, $00
    add hl, bc
    ld c, [hl]
    ret


jr_00b_4722:
    ld c, $04
    ret


    xor l
    ld c, [hl]
    ld d, h
    ld d, b
    ld c, a
    ld c, d
    add hl, hl
    inc sp
    ld sp, $2c53
    dec [hl]
    ld hl, $bab9
    cp h
    ld l, l
    xor [hl]
    daa
    inc b
    ld a, [hl+]
    dec hl
    ld b, c
    ccf
    jr jr_00b_4755

    ld [hl+], a
    rla
    ld b, b
    dec d
    jr z, jr_00b_46d1

    ld a, [de]
    ld a, $20
    cp e
    cp l
    ld d, $1a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    dec c

jr_00b_4755:
    ld c, $10
    inc hl
    dec h
    ld h, $08
    add hl, bc
    rrca
    ld de, $1917
    ld bc, $0402
    dec b
    ld b, $07
    ld a, [bc]
    ld [de], a
    add hl, hl
    inc c
    ld a, [hl+]
    inc d
    inc bc
    inc h
    daa
    ld a, $01
    ldh [$aa], a
    call Call_00b_48d3
    ld a, $00
    ldh [$aa], a
    ret nc

    call $1bee
    call $31f6
    ld a, [$d106]
    dec a
    ld [$d107], a
    ld hl, $d859
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d10d], a
    call Call_00b_4798
    scf
    ret


Call_00b_4798:
    ld a, [$d106]
    ld c, a
    ld hl, $5417
    ld a, $03
    rst $08
    ld a, c
    ld [$d106], a
    ret


Call_00b_47a7:
    ld a, [$d106]
    ld c, a
    ld hl, $5407
    ld a, $03
    rst $08
    ld a, c
    ld [$d265], a
    ret


Call_00b_47b6:
    call Call_00b_47a7
    ld a, $0f
    call $2d83
    ret


    ld hl, $cfcc
    ld a, [hl]
    push af
    res 4, [hl]
    ld a, [$d106]
    cp $bf
    jr c, jr_00b_47f5

    call Call_00b_47b6
    ld a, [$d265]
    ld [$d262], a
    call $34f8
    call $30d6
    ld hl, $48bf
    ld a, [$d106]
    cp $f3
    jr c, jr_00b_47e9

    ld hl, $48c4

jr_00b_47e9:
    call $1057
    ld hl, $48c9
    call $1057
    call $1dcf

jr_00b_47f5:
    pop bc
    ld a, b
    ld [$cfcc], a
    ret


    ld hl, $d086
    ld de, $d066
    ld bc, $000c
    call $3026
    call $31f3
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $14
    ld hl, $43e0
    rst $08
    ld a, $03
    ld [$d141], a

jr_00b_4821:
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $449a
    rst $08
    call $31f6
    call $32f9
    call $045a
    ld a, $14
    ld hl, $4457
    rst $08
    push af
    ld a, [$d108]
    cp $fd
    pop bc
    jr z, jr_00b_4854

    push bc
    ld hl, $d066
    ld de, $d086
    ld bc, $000c
    call $3026
    pop af
    ret


jr_00b_4854:
    push hl
    push de
    push bc
    push af
    ld de, $0019
    call $3c23
    call $3c55
    pop af
    pop bc
    pop de
    pop hl
    jr jr_00b_4821

    ld a, $0e
    call $2d83
    push bc
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    pop bc
    ld a, c
    and a
    jr nz, jr_00b_488b

    push de
    ld de, $0019
    call $3c23
    pop de
    ld hl, $48ce
    call $1057
    jr jr_00b_48b6

jr_00b_488b:
    ld hl, $79ea
    ld a, $03
    rst $08
    jr c, jr_00b_48b6

    ld a, $00
    call $2d83
    ld a, b
    and a
    jr z, jr_00b_48b6

    ld a, $41
    ld hl, $6049
    rst $08
    ld a, [$d106]
    call $34df
    ret c

    ld c, $05
    ld hl, $71c2
    ld a, $01
    rst $08
    call Call_00b_4b0c
    jr jr_00b_48bd

jr_00b_48b6:
    and a
    ret


    ld a, $02
    ld [$d0ec], a

jr_00b_48bd:
    scf
    ret


    ld d, $73
    ld b, e
    ld [hl], b
    ld d, b
    ld d, $84
    ld b, e
    ld [hl], b
    ld d, b
    ld d, $96
    ld b, e
    ld [hl], b
    ld d, b
    ld d, $c2
    ld b, e
    ld [hl], b
    ld d, b

Call_00b_48d3:
    xor a
    ldh [$d4], a
    call Call_00b_49e2
    ld a, $02
    ld [$cfa1], a
    ld a, $07
    ld [$cfa2], a
    ld a, $01
    ld [$cfa4], a
    ld a, $05
    sub d
    inc a
    cp $06
    jr nz, jr_00b_48f1

    dec a

jr_00b_48f1:
    ld [$cfa3], a
    ld a, $0c
    ld [$cfa5], a
    xor a
    ld [$cfa6], a
    ld a, $20
    ld [$cfa7], a
    ld a, $f3
    ld [$cfa8], a
    ld a, [$d0dc]
    inc a
    ld [$cfa9], a
    ld a, $01
    ld [$cfaa], a
    jr jr_00b_4946

Jump_00b_4915:
jr_00b_4915:
    call Call_00b_49e2
    call $1bc9
    ld b, a
    ld a, [$cfa9]
    dec a
    ld [$d0dc], a
    xor a
    ldh [$d4], a
    ld a, [$cfa6]
    bit 7, a
    jp nz, Jump_00b_49b1

    ld a, b
    ld [$cf73], a
    bit 0, a
    jp nz, Jump_00b_4974

    bit 1, a
    jp nz, Jump_00b_49a5

    bit 4, a
    jp nz, Jump_00b_49af

    bit 5, a
    jp nz, Jump_00b_49af

Jump_00b_4946:
jr_00b_4946:
    call Call_00b_498a
    jp nc, Jump_00b_49af

    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld a, [$d106]
    cp $3a
    jr nc, jr_00b_4915

    ld [$d265], a
    ld a, $0f
    call $2d83
    ld a, [$d265]
    ld [$cf60], a
    ld hl, $c5b9
    call Call_00b_4b3e
    jp Jump_00b_4915


Jump_00b_4974:
    call Call_00b_4ad6
    call Call_00b_4b2a
    ld a, [$cfa9]
    dec a
    ld b, a
    ld a, [$d0e2]
    add b
    ld b, a
    ld a, [$d265]
    cp b
    jr z, jr_00b_49a8

Call_00b_498a:
    call Call_00b_4ab5
    ld a, [$cfa9]
    ld b, a

jr_00b_4991:
    inc c
    ld a, c
    cp $3a
    jr nc, jr_00b_499f

    ld a, [hl+]
    and a
    jr z, jr_00b_4991

    dec b
    jr nz, jr_00b_4991

    ld a, c

jr_00b_499f:
    ld [$d106], a
    cp $ff
    ret


Jump_00b_49a5:
    call Call_00b_4ad6

jr_00b_49a8:
    ld a, $02
    ld [$cf73], a
    and a
    ret


Jump_00b_49af:
    and a
    ret


Jump_00b_49b1:
    ld a, b
    bit 7, a
    jr nz, jr_00b_49c5

    ld hl, $d0e2
    ld a, [hl]
    and a
    jp z, Jump_00b_4915

    dec [hl]
    call Call_00b_49e2
    jp Jump_00b_4946


jr_00b_49c5:
    call Call_00b_4ab5
    ld b, $05

jr_00b_49ca:
    inc c
    ld a, c
    cp $3a
    jp nc, Jump_00b_4915

    ld a, [hl+]
    and a
    jr z, jr_00b_49ca

    dec b
    jr nz, jr_00b_49ca

    ld hl, $d0e2
    inc [hl]
    call Call_00b_49e2
    jp Jump_00b_4946


Call_00b_49e2:
    ld a, [$d230]
    cp $03
    jp z, Jump_00b_4aca

    ld hl, $c4cd
    ld bc, $0a0f
    ld a, $7f
    call $0fb6
    call Call_00b_4ab5
    ld d, $05

jr_00b_49fa:
    inc c
    ld a, c
    cp $3a
    jr nc, jr_00b_4a77

    ld a, [hl+]
    and a
    jr z, jr_00b_49fa

    ld b, a
    ld a, c
    ld [$d265], a
    push hl
    push de
    push bc
    call Call_00b_4a86
    push hl
    ld a, [$d265]
    cp $33
    jr nc, jr_00b_4a22

    ld de, $d265
    ld bc, $8102
    call $3198
    jr jr_00b_4a38

jr_00b_4a22:
    push af
    sub $32
    ld [$d265], a
    ld [hl], $87
    inc hl
    ld de, $d265
    ld bc, $4102
    call $3198
    pop af
    ld [$d265], a

jr_00b_4a38:
    ld a, $0f
    call $2d83
    ld a, [$d265]
    ld [$d262], a
    call $34f8
    pop hl
    ld bc, $0003
    add hl, bc
    push hl
    call $1078
    pop hl
    pop bc
    ld a, c
    push bc
    cp $33
    jr nc, jr_00b_4a6f

    ld bc, $001d
    add hl, bc
    ld [hl], $f1
    inc hl
    ld a, $f6
    pop bc
    push bc
    ld a, b
    ld [$d265], a
    ld de, $d265
    ld bc, $0102
    call $3198

jr_00b_4a6f:
    pop bc
    pop de
    pop hl
    dec d
    jr nz, jr_00b_49fa

    jr jr_00b_4a85

jr_00b_4a77:
    call Call_00b_4a86
    inc hl
    inc hl
    inc hl
    push de
    ld de, $4aae
    call $1078
    pop de

jr_00b_4a85:
    ret


Call_00b_4a86:
    ld hl, $c4a5
    ld bc, $0028
    ld a, $06
    sub d
    ld e, a

jr_00b_4a90:
    add hl, bc
    dec e
    jr nz, jr_00b_4a90

    ret


    pop hl
    ld bc, $0003
    add hl, bc
    ld a, $0f
    call $2d83
    ld a, [$d265]
    ld [$d262], a
    call $34f8
    push hl
    call $1078
    pop hl
    ret


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_00b_4ab5:
    ld hl, $d859
    ld a, [$d0e2]
    ld b, a
    inc b
    ld c, $00

jr_00b_4abf:
    inc c
    ld a, [hl+]
    and a
    jr z, jr_00b_4abf

    dec b
    jr nz, jr_00b_4abf

    dec hl
    dec c
    ret


Jump_00b_4aca:
    ld hl, $c4e5
    push de
    ld de, $4aae
    call $1078
    pop de
    ret


Call_00b_4ad6:
    push de
    ld de, $0008
    call $3c23
    pop de
    ret


    call Call_00b_47a7
    call Call_00b_4afa
    ld hl, $4af0
    jr nc, jr_00b_4aed

    ld hl, $4af5

jr_00b_4aed:
    jp $1057


    ld d, $fa
    ld b, e
    ld [hl], b
    ld d, b
    ld d, $21
    ld b, h
    ld [hl], b
    ld d, b

Call_00b_4afa:
    ld a, [$d265]
    dec a
    ld hl, $d859
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    inc a
    cp $64
    ret nc

    ld [hl], a
    ret


Call_00b_4b0c:
    call Call_00b_47a7
    ld a, [$d265]
    dec a
    ld hl, $d859
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    and a
    ret z

    dec a
    ld [hl], a
    ret nz

    ld a, [$d0e2]
    and a
    ret z

    dec a
    ld [$d0e2], a
    ret


Call_00b_4b2a:
    ld b, $00
    ld c, $39
    ld hl, $d859

jr_00b_4b31:
    ld a, [hl+]
    and a
    jr z, jr_00b_4b36

    inc b

jr_00b_4b36:
    dec c
    jr nz, jr_00b_4b31

    ld a, b
    ld [$d265], a
    ret


Call_00b_4b3e:
    push hl
    ld hl, $4b52
    ld a, [$cf60]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    jp $1078


    ld d, h
    ld c, l
    ld [hl], h
    ld c, l
    sub l
    ld c, l
    or c
    ld c, l
    rst $08
    ld c, l
    ld a, [c]
    ld c, l
    ld d, $4e
    scf
    ld c, [hl]
    ld e, c
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sbc c
    ld c, [hl]
    cp b
    ld c, [hl]
    push de
    ld c, [hl]
    ld hl, sp+$4e
    add hl, de
    ld c, a
    add hl, sp
    ld c, a
    ld e, c
    ld c, a
    ld a, b
    ld c, a
    sbc d
    ld c, a
    cp c
    ld c, a
    reti


    ld c, a
    rst $38
    ld c, a
    ld hl, $4550
    ld d, b
    ld e, [hl]
    ld d, b
    ld a, c
    ld d, b
    sub [hl]
    ld d, b
    xor l
    ld d, b
    ret nc

    ld d, b
    db $f4
    ld d, b
    inc de
    ld d, c
    ld l, $51
    ld c, d
    ld d, c
    ld h, l
    ld d, c
    adc c
    ld d, c
    xor c
    ld d, c
    call z, $ef51
    ld d, c
    ld [de], a
    ld d, d
    dec hl
    ld d, d
    ld d, c
    ld d, d
    ld [hl], h
    ld d, d
    sub [hl]
    ld d, d
    or b
    ld d, d
    call nc, $ed52
    ld d, d
    dec c
    ld d, e
    cpl
    ld d, e
    ld d, c
    ld d, e
    ld l, [hl]
    ld d, e
    sub d
    ld d, e
    or h
    ld d, e
    rst $10
    ld d, e
    ld a, [$1353]
    ld d, h
    inc l
    ld d, h
    ld c, e
    ld d, h
    ld l, b
    ld d, h
    adc e
    ld d, h
    xor [hl]
    ld d, h
    jp nc, $f254

    ld d, h
    inc de
    ld d, l
    inc sp
    ld d, l
    ld d, d
    ld d, l
    ld [hl], h
    ld d, l
    sbc d
    ld d, l
    cp [hl]
    ld d, l
    sbc $55
    nop
    ld d, [hl]
    ld e, $56
    ld b, d
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    adc h
    ld d, [hl]
    xor c
    ld d, [hl]
    jp z, $ed56

    ld d, [hl]
    dec c
    ld d, a
    cpl
    ld d, a
    ld d, c
    ld d, a
    ld [hl], h
    ld d, a
    sub a
    ld d, a
    or h
    ld d, a
    push de
    ld d, a
    ld sp, hl
    ld d, a
    dec e
    ld e, b
    ld a, $58
    ld h, d
    ld e, b
    ld a, h
    ld e, b
    sbc a
    ld e, b
    pop bc
    ld e, b
    db $e3
    ld e, b
    add hl, bc
    ld e, c
    dec l
    ld e, c
    ld d, b
    ld e, c
    ld l, d
    ld e, c
    add e
    ld e, c
    and [hl]
    ld e, c
    jp z, $ec59

    ld e, c
    inc c
    ld e, d
    ld l, $5a
    ld c, l
    ld e, d
    ld l, a
    ld e, d
    adc b
    ld e, d
    and a
    ld e, d
    pop bc
    ld e, d
    jp c, $f45a

    ld e, d
    ld [de], a
    ld e, e
    cpl
    ld e, e
    ld c, h
    ld e, e
    ld l, l
    ld e, e
    sub b
    ld e, e
    xor l
    ld e, e
    call z, $ed5b
    ld e, e
    ld de, $2e5c
    ld e, h
    ld c, e
    ld e, h
    ld l, [hl]
    ld e, h
    adc d
    ld e, h
    xor [hl]
    ld e, h
    pop de
    ld e, h
    db $f4
    ld e, h
    jr jr_00b_4cab

    add hl, sp
    ld e, l
    ld d, e
    ld e, l
    ld [hl], b
    ld e, l
    adc l
    ld e, l
    or b
    ld e, l
    rst $08
    ld e, l
    rst $28
    ld e, l
    ld [de], a
    ld e, [hl]
    dec l
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    adc a
    ld e, [hl]
    or c
    ld e, [hl]
    pop de
    ld e, [hl]
    rst $28
    ld e, [hl]
    inc de
    ld e, a
    dec [hl]
    ld e, a
    ld e, b
    ld e, a
    ld a, c
    ld e, a
    sbc d
    ld e, a
    cp [hl]
    ld e, a
    reti


    ld e, a
    db $fc
    ld e, a
    dec de
    ld h, b
    dec [hl]
    ld h, b
    ld d, a
    ld h, b
    ld a, b
    ld h, b
    sbc h
    ld h, b
    cp c
    ld h, b
    rst $10
    ld h, b
    ei
    ld h, b
    rra
    ld h, c
    ld b, e
    ld h, c
    ld l, b
    ld h, c
    adc e
    ld h, c
    xor a
    ld h, c
    ret z

    ld h, c
    jp hl


    ld h, c
    ld c, $62
    ld sp, $5362
    ld h, d
    ld [hl], a
    ld h, d
    sbc l
    ld h, d
    cp h
    ld h, d
    sbc $62
    ld bc, $2263

jr_00b_4cab:
    ld h, e
    ld b, a
    ld h, e
    ld l, d
    ld h, e
    adc e
    ld h, e
    xor l
    ld h, e
    adc $63
    xor $63
    rrca
    ld h, h
    ld [hl-], a
    ld h, h
    ld d, l
    ld h, h
    ld a, d
    ld h, h
    sbc c
    ld h, h
    cp c
    ld h, h
    sub $64
    db $f4
    ld h, h
    rla
    ld h, l
    ld a, [hl-]
    ld h, l
    ld d, l
    ld h, l
    ld a, c
    ld h, l
    sbc d
    ld h, l
    cp e
    ld h, l
    db $dd
    ld h, l
    cp $65
    ld [hl+], a
    ld h, [hl]
    ld b, e
    ld h, [hl]
    ld l, c
    ld h, [hl]
    adc b
    ld h, [hl]
    xor d
    ld h, [hl]
    call $e966
    ld h, [hl]
    dec c
    ld h, a
    add hl, hl
    ld h, a
    ld c, c
    ld h, a
    ld l, h
    ld h, a
    adc [hl]
    ld h, a
    or d
    ld h, a
    pop de
    ld h, a
    push af
    ld h, a
    ld [de], a
    ld l, b
    ld l, $68
    ld c, l
    ld l, b
    ld [hl], e
    ld l, b
    sub d
    ld l, b
    or d
    ld l, b
    sub $68
    ld a, [c]
    ld l, b
    ld d, $69
    inc [hl]
    ld l, c
    ld e, b
    ld l, c
    ld a, e
    ld l, c
    sbc [hl]
    ld l, c
    cp [hl]
    ld l, c
    ret c

    ld l, c
    ldh a, [rBCPD]
    db $10
    ld l, d
    ld [hl-], a
    ld l, d
    ld d, d
    ld l, d
    ld [hl], b
    ld l, d
    adc [hl]
    ld l, d
    or c
    ld l, d
    push de
    ld l, d
    ld a, [$186a]
    ld l, e
    ld [hl], $6b
    ld d, h
    ld l, e
    ld [hl], h
    ld l, e
    sub l
    ld l, e
    or e
    ld l, e
    ret c

    ld l, e
    db $fc
    ld l, e
    rra
    ld l, h
    ld b, c
    ld l, h
    ld e, a
    ld l, h
    ld a, [hl]
    ld l, h
    and d
    ld l, h
    push bc
    ld l, h
    and $6c
    ld [$256d], sp
    ld l, l
    ld d, d
    ld c, l
    ld d, d
    ld c, l
    ld d, d
    ld c, l
    ld d, d
    ld c, l
    ld d, d
    ld c, l
    and $50
    adc a
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and l
    xor [hl]
    or c
    and h
    db $e3
    ld c, [hl]
    xor e
    and h
    and [hl]
    or d
    ld a, a
    xor [hl]
    or c
    ld a, a
    or e
    and b
    xor b
    xor e
    add sp, $50
    add a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    sub c
    and h
    xor a
    and h
    and b
    or e
    and h
    and e
    xor e
    cp b
    ld a, a
    or d
    xor e
    and b
    xor a
    or d
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    sub c
    and h
    xor a
    and h
    and b
    or e
    and h
    and e
    xor e
    cp b
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    and h
    or d
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    add b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    add sp, $50
    sub e
    and a
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $7f
    add [hl]
    and h
    or e
    or d
    ld c, [hl]
    or e
    and a
    and h
    xor h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $50
    add b
    ld a, a
    and l
    xor b
    and h
    or c
    cp b
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    add sp, $7f
    adc h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    xor b
    and d
    cp b
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    add sp, $7f
    adc h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    or c
    and h
    and h
    cp c
    xor b
    xor l
    and [hl]
    add sp, $50
    add b
    xor l
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    add sp, $4e
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    add sp, $50
    sub d
    and d
    or c
    and b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or d
    and a
    and b
    or c
    xor a
    ld a, a
    and d
    xor e
    and b
    or [hl]
    or d
    add sp, $50
    add [hl]
    or c
    xor b
    xor a
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $e3
    ld c, [hl]
    and l
    or h
    xor e
    ld a, a
    xor a
    xor b
    xor l
    and d
    and h
    or c
    or d
    add sp, $50
    add b
    ld a, a
    xor [hl]
    xor l
    and h
    db $e3
    and a
    xor b
    or e
    ld a, a
    adc d
    adc [hl]
    db $f4
    ld c, [hl]
    xor a
    xor b
    xor l
    and d
    and h
    or c
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    adc a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    add b
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    xor l
    db $e3
    ld c, [hl]
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    add d
    or h
    or e
    or d
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    xor e
    and b
    or [hl]
    or d
    db $f4
    ld c, [hl]
    or d
    and d
    cp b
    or e
    and a
    and h
    or d
    db $f4
    ld a, a
    and h
    or e
    and d
    add sp, $50
    sub [hl]
    and a
    xor b
    xor a
    or d
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and [hl]
    or h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    add sp, $50
    sub d
    or e
    or c
    xor b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    add sp, $50
    add c
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    jp hl


    ld a, a
    and h
    xor l
    and e
    or d
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add l
    xor e
    cp b
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    add c
    xor b
    xor l
    and e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    sub d
    xor e
    and b
    xor h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and b
    ld a, a
    or e
    and b
    xor b
    xor e
    db $f4
    ld a, a
    or l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    and h
    or e
    and d
    add sp, $50
    sub [hl]
    and a
    xor b
    xor a
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or d
    xor e
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    or l
    xor b
    xor l
    and h
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    add b
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    xor d
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor d
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    adc h
    and b
    cp b
    ld a, a
    xor h
    xor b
    or d
    or d
    db $f4
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    add b
    ld a, a
    and l
    and b
    or d
    or e
    db $f4
    ld a, a
    or d
    xor a
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor d
    xor b
    and d
    xor d
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    ld c, [hl]
    and c
    cp b
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and b
    xor l
    and e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, [hl]
    and a
    xor [hl]
    or c
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor c
    and b
    and c
    add sp, $50
    adc c
    and b
    and c
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    add b
    ld a, a
    xor [hl]
    xor l
    and h
    db $e3
    and a
    xor b
    or e
    ld a, a
    adc d
    adc [hl]
    db $f4
    ld c, [hl]
    and e
    or c
    xor b
    xor e
    xor e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    ld a, a
    and l
    or h
    xor e
    xor e
    db $e3
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    sub d
    or b
    or h
    and h
    and h
    cp c
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    add b
    ld a, a
    or e
    and b
    and d
    xor d
    xor e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, [hl]
    and a
    or h
    or c
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    sub [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    ld hl, sp-$1d
    ld sp, hl
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    or d
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    add b
    ld a, a
    or e
    and b
    and d
    xor d
    xor e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, [hl]
    and a
    or h
    or c
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    adc e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $834e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    add sp, $50
    adc c
    and b
    and c
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or e
    or [hl]
    xor b
    and d
    and h
    ld c, [hl]
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    add sp, $50
    add l
    xor b
    or c
    and h
    or d
    ld a, a
    xor a
    xor b
    xor l
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or d
    or e
    or c
    xor b
    xor d
    and h
    ld a, a
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $834e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $804e
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    sub d
    and d
    and b
    or c
    and h
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    and l
    xor [hl]
    and h
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and h
    xor l
    and e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $50
    adc h
    and b
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    and b
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    sub d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $50
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld c, [hl]
    ld hl, sp-$0a
    add a
    adc a
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    add sp, $50
    add e
    xor b
    or d
    and b
    and c
    xor e
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $ac4e
    xor [hl]
    or d
    or e
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $50
    adc a
    or c
    and h
    or l
    and h
    xor l
    or e
    or d
    ld a, a
    or d
    or e
    and b
    or e
    ld c, [hl]
    or c
    and h
    and e
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    sub d
    or b
    or h
    xor b
    or c
    or e
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $e3
    ld c, [hl]
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $e3
    ld c, [hl]
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and l
    or c
    and h
    and h
    cp c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and l
    or c
    and h
    and h
    cp c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    sub c
    and h
    or d
    or e
    ld d, b
    adc c
    and b
    and c
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and b
    ld a, a
    and c
    and h
    and b
    xor d
    db $f4
    ld a, a
    and h
    or e
    and d
    add sp, $50
    add b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld a, a
    or d
    xor a
    xor b
    xor l
    db $e3
    ld c, [hl]
    xor l
    xor b
    xor l
    and [hl]
    db $e3
    xor a
    and h
    and d
    xor d
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    xor e
    db $e3
    ld c, [hl]
    or d
    xor [hl]
    ld a, a
    and a
    or h
    or c
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    sub c
    and h
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    and b
    ld a, a
    xor a
    and a
    cp b
    or d
    xor b
    and d
    and b
    xor e
    ld c, [hl]
    and c
    xor e
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $ab7f
    and h
    or l
    and h
    xor e
    ld c, [hl]
    and h
    or b
    or h
    and b
    xor e
    or d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    add a
    adc a
    add sp, $50
    add b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor a
    and a
    cp b
    or d
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    sub d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    rst $30
    di
    ld hl, sp+$7f
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    and h
    and e
    add sp, $50
    sub d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    rst $30
    di
    ld hl, sp+$7f
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    and h
    and e
    add sp, $50
    sub d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    add a
    adc a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    xor [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    add sp, $50
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    adc a
    add d
    adc e
    add sp, $4e
    add b
    sub e
    adc d
    ld a, a
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
    add sp, $50
    add a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    adc a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    adc h
    and b
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    and b
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    sub [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    ld hl, sp-$1d
    ld sp, hl
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    or d
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $927f
    adc a
    add h
    add h
    add e
    add sp, $50
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld c, [hl]
    ld a, [$87f6]
    adc a
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    add sp, $50
    sub e
    or c
    and b
    xor a
    or d
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor b
    or c
    and h
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    add e
    or c
    xor [hl]
    xor a
    or d
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    cp b
    add sp, $50
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and c
    or h
    or e
    ld a, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    ld c, [hl]
    or l
    or d
    add sp, $7f
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    and h
    or d
    add sp, $50
    add b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    db $e3
    or e
    cp b
    xor a
    and h
    db $f4
    ld c, [hl]
    xor [hl]
    xor l
    and h
    db $e3
    and a
    xor b
    or e
    ld a, a
    adc d
    adc [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    add b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    add sp, $50
    adc h
    and b
    cp b
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $804e
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $927f
    adc a
    add h
    add h
    add e
    add sp, $50
    adc e
    and h
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    and a
    xor b
    or e
    add sp, $50
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld a, a
    xor b
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    and a
    xor b
    or e
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor e
    and h
    and h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $ab7f
    and h
    or l
    and h
    xor e
    ld c, [hl]
    and h
    or b
    or h
    and b
    xor e
    or d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    add a
    adc a
    add sp, $50
    add d
    xor [hl]
    xor a
    xor b
    and h
    or d
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld c, [hl]
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $837f
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add a
    and h
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    and h
    or l
    and b
    or d
    xor b
    or l
    and h
    db $e3
    ld c, [hl]
    xor l
    and h
    or d
    or d
    add sp, $50
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    add a
    adc a
    ld a, a
    and c
    cp b
    ld a, a
    rst $30
    di
    ld hl, sp+$4e
    or e
    and a
    and h
    ld a, a
    xor h
    and b
    or a
    ld a, a
    add a
    adc a
    add sp, $50
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $834e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add a
    and h
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    and h
    or l
    and b
    or d
    xor b
    or l
    and h
    db $e3
    ld c, [hl]
    xor l
    and h
    or d
    or d
    add sp, $50
    adc e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $a04e
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld c, [hl]
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $50
    add a
    and h
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $837f
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add a
    and h
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $837f
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $837f
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    sub h
    xor a
    or d
    ld a, a
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and b
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    add sp, $50
    add h
    xor e
    xor b
    xor h
    xor b
    xor l
    and b
    or e
    and h
    or d
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    or d
    or e
    and b
    or e
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    add sp, $50
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and c
    and b
    or c
    or c
    xor b
    and h
    or c
    add sp, $50
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    sub [hl]
    and b
    xor b
    or e
    or d
    ld a, a
    ld hl, sp-$1d
    ld sp, hl
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    jp hl


    ld c, [hl]
    and a
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $50
    sub c
    and b
    xor l
    and e
    xor [hl]
    xor h
    xor e
    cp b
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $50
    add d
    xor [hl]
    or h
    xor l
    or e
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    and b
    xor h
    and h

Jump_00b_5c44:
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $50
    adc a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    add sp, $50
    add h
    and [hl]
    and [hl]
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and a
    or h
    or c
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor h
    and b
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or b
    or h
    and b
    or e
    xor b
    and d
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    sub e
    or c
    and b
    xor a
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    or d
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    adc a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    add l
    xor b
    or c
    and h
    or d
    ld a, a
    or d
    xor a
    xor b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and a
    xor b
    or e
    ld a, a
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $927f
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $a04e
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    add sp, $50
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    add a
    adc a
    ld a, a
    and c
    cp b
    ld a, a
    rst $30
    di
    ld hl, sp+$4e
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $ac7f
    and b
    or a
    ld a, a
    add a
    adc a
    add sp, $50
    adc h
    and b
    cp b
    ld a, a
    xor h
    xor b
    or d
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    or h
    or c
    or e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    sub d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    add a
    adc a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    sub e
    and a
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor [hl]
    or c
    and c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor b
    or e
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    sub d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    rst $30
    di
    ld hl, sp+$7f
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    and h
    and e
    add sp, $50
    adc h
    and b
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    and b
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    rst $30
    or d
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    adc a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld c, [hl]
    ld hl, sp-$53
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    sbc h
    ld a, a
    add b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    sub e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    and b
    or d
    or d
    or h
    xor h
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $a67f
    or h
    xor b
    or d
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or c
    and h
    and e
    or h
    and d
    and h
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    xor l
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    add c
    xor e
    xor b
    xor l
    and e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or c
    and h
    and e
    or h
    and d
    and h
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or l
    and b
    or c
    xor b
    and b
    and c
    xor e
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $50
    add a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    ld c, [hl]
    or [hl]
    and a
    and b
    or e
    or d
    xor [hl]
    and h
    or l
    and h
    or c
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $837f
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    sub l
    and h
    or c
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and c
    or h
    or e
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    add sp, $50
    sub b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    ld a, a
    or d
    and d
    or c
    and b
    or e
    and d
    and a
    and h
    or d
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or d
    or e
    or c
    xor b
    xor d
    and h
    or d
    ld a, a
    or e
    or [hl]
    xor b
    and d
    and h
    add sp, $50
    sub d
    xor e
    and h
    and h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld hl, sp+$7f
    or e
    or h
    or c
    xor l
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $807f
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    add d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $b37f
    cp b
    xor a
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    call nc, $b37f
    cp b
    xor a
    and h
    add sp, $50
    add l
    xor b
    or c
    and h
    or d
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and c
    and h
    and b
    xor h
    or d
    ld a, a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    add sp, $50
    add d
    or h
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $877f
    adc a
    ld c, [hl]
    and c
    cp b
    ld a, a
    rst $30
    di
    ld hl, sp-$18
    ld d, b
    add a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    adc h
    and b
    xor d
    and h
    or d
    ld a, a
    and b
    ld a, a
    and e
    and h
    and d
    xor [hl]
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    rst $30
    di
    ld a, [$b47f]
    or d
    and h
    or c
    call nc, $ac7f
    and b
    or a
    ld a, a
    add a
    adc a
    add sp, $50
    sub h
    or d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    adc a
    adc a
    ld a, a
    and b
    or c
    and h
    ld a, a
    and h
    or a
    and a
    and b
    or h
    or d
    or e
    and h
    and e
    add sp, $50
    add d
    xor [hl]
    xor a
    xor b
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $ac4e
    xor [hl]
    or l
    and h
    ld a, a
    xor a
    and h
    or c
    xor h
    and b
    xor l
    and h
    xor l
    or e
    xor e
    cp b
    add sp, $50
    add a
    xor b
    or e
    or d
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or c
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or d
    or e
    and h
    and b
    xor e
    ld a, a
    and b
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $50
    adc a
    or c
    and h
    or l
    and h
    xor l
    or e
    or d
    ld a, a
    and l
    xor e
    and h
    and h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    or c
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    add h
    xor l
    or d
    or h
    or c
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and a
    xor b
    or e
    add sp, $50
    add b
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    or d
    ld c, [hl]
    rst $30
    di
    ld a, [$877f]
    adc a
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or h
    or d
    and h
    and b
    and c
    xor e
    and h
    ld c, [hl]
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    sub [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    xor e
    cp b
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    and a
    xor [hl]
    or d
    or e
    db $e3
    or e
    cp b
    xor a
    and h
    or d
    add sp, $50
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $877f
    adc a
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    or [hl]
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $b37f
    cp b
    xor a
    and h
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor h
    and b
    and e
    and h
    ld a, a
    or c
    and h
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    add sp, $50
    add a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $927f
    adc a
    add h
    add h
    add e
    add sp, $50
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    or d
    and h
    or c
    call nc, $877f
    adc a
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    or [hl]
    add sp, $50
    add d
    or h
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    adc a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    xor [hl]
    and h
    call nc, $ab7f
    and b
    or d
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and l
    or c
    and h
    and h
    cp c
    xor b
    xor l
    and [hl]
    add sp, $50
    add l
    xor [hl]
    xor b
    xor e
    or d
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or e
    or h
    or c
    xor l
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and l
    and b
    xor b
    xor e
    add sp, $50
    add b
    ld a, a
    and l
    and b
    or d
    or e
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor e
    and b
    xor l
    and e
    or d
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $927f
    adc a
    add h
    add h
    add e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    or d
    add sp, $50
    add b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld c, [hl]
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    add a
    adc a
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor h
    and b
    or a
    xor b
    xor h
    xor b
    cp c
    and h
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $a04e
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or c
    and h
    and e
    or h
    and d
    and h
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    add sp, $50
    add a
    or h
    or c
    or e
    or d
    ld a, a
    and l
    xor [hl]
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    or d
    add sp, $50
    adc l
    and h
    and [hl]
    and b
    or e
    and h
    or d
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    ld c, [hl]
    or c
    and h
    and e
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    or d
    ld a, a
    xor b
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    and e
    xor [hl]
    and h
    or d
    add sp, $50
    add c
    xor [hl]
    or e
    and a
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    and l
    and b
    xor b
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    ld sp, hl
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    xor b
    and d
    cp b
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    add sp, $50
    add h
    or l
    and b
    and e
    and h
    or d
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or e
    or h
    or c
    xor l
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and l
    and b
    xor b
    xor e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and a
    xor b
    or e
    or d
    ld a, a
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    add h
    xor l
    or d
    or h
    or c
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and a
    xor b
    or e
    add sp, $50
    sub [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    ld hl, sp-$1d
    ld sp, hl
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    or d
    ld a, a
    or h
    or d
    and h
    or c
    add sp, $50
    adc b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld c, [hl]
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    add sp, $50
    sub d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    rst $30
    di
    ld hl, sp+$7f
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    and h
    and e
    add sp, $50
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    and b
    or e
    ld c, [hl]
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    rst $30
    add a
    adc a
    add sp, $50
    sub d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    xor [hl]
    and h
    call nc, $807f
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    add b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or c
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $50
    adc e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    or e
    ld a, a
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    rst $30
    add a
    adc a
    add sp, $50
    add d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    add a
    adc a
    ld a, a
    and c
    cp b
    ld a, a
    rst $30
    di
    ld hl, sp+$4e
    or e
    and a
    and h
    ld a, a
    xor h
    and b
    or a
    ld a, a
    add a
    adc a
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $50
    sub d
    or h
    and d
    and d
    and h
    or d
    or d
    xor b
    or l
    and h
    ld a, a
    and a
    xor b
    or e
    or d
    ld c, [hl]
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $50
    sub d
    or e
    xor b
    and l
    and l
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or d
    or e
    or c
    xor b
    xor d
    and h
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $50
    adc a
    or c
    and h
    or l
    and h
    xor l
    or e
    or d
    ld a, a
    and l
    xor e
    and h
    and h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    or c
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    adc h
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    or d
    xor b
    or e
    and h
    ld c, [hl]
    and [hl]
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    xor l
    and l
    and b
    or e
    or h
    and b
    or e
    and h
    and e
    add sp, $50
    sub c
    and b
    xor l
    and e
    xor [hl]
    xor h
    xor e
    cp b
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld c, [hl]
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    add h
    xor e
    xor b
    xor h
    xor b
    xor l
    and b
    or e
    and h
    or d
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    or d
    or e
    and b
    or e
    or h
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and c
    and b
    or d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor e
    xor [hl]
    cp b
    and b
    xor e
    or e
    cp b
    add sp, $50
    add b
    ld a, a
    and c
    xor [hl]
    xor h
    and c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    add a
    adc a
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    and c
    and b
    or d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor e
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor [hl]
    cp b
    and b
    xor e
    or e
    cp b
    add sp, $50
    adc a
    or c
    and h
    or l
    and h
    xor l
    or e
    or d
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    or d
    or e
    and b
    or e
    or h
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    or d
    add sp, $50
    add b
    and e
    and e
    or d
    ld a, a
    or h
    or d
    and h
    or c
    ld a, a
    jp hl


    ld a, a
    and l
    xor [hl]
    and h
    call nc, $874e
    adc a
    or d
    add sp, $7f
    sub d
    and a
    and b
    or c
    and h
    or d
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $50
    add b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or c
    and b
    xor l
    and e
    xor [hl]
    xor h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    or d
    add sp, $50
    add b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and c
    or c
    and h
    and b
    or e
    and a
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    sub d
    or [hl]
    xor b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, [hl]
    xor d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    or d
    add sp, $50
    adc h
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or c
    and h
    db $e3
    ld c, [hl]
    xor a
    and h
    and b
    or e
    ld a, a
    ld hl, sp-$1d
    db $fc
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $50
    add a
    and h
    and b
    or l
    xor b
    xor e
    cp b
    ld a, a
    or d
    or e
    or c
    xor b
    xor d
    and h
    or d
    ld c, [hl]
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50
    add b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    db $e3
    or d
    xor a
    and h
    and h
    and e
    ld c, [hl]
    or d
    xor a
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    sub c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $a44e
    or l
    and b
    or d
    xor b
    or l
    and h
    xor l
    and h
    or d
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or c
    and h
    and e
    or h
    and d
    and h
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or h
    xor a
    ld a, a
    or h
    or d
    and h
    or c
    call nc, $807f
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $50
    add b
    ld a, a
    ld hl, sp-$53
    and e
    db $e3
    or d
    or e
    or c
    xor b
    xor d
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    or d
    add sp, $50
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    add a
    adc a
    ld c, [hl]
    sbc d
    or l
    and b
    or c
    xor b
    and h
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    sbc e
    add sp, $50
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    add a
    adc a
    ld c, [hl]
    sbc d
    or l
    and b
    or c
    xor b
    and h
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    sbc e
    add sp, $50
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    add a
    adc a
    ld c, [hl]
    sbc d
    or l
    and b
    or c
    xor b
    and h
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    sbc e
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or l
    and b
    or c
    xor b
    and h
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50
    add a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    db $e3
    ld c, [hl]
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    ld a, a
    or c
    and b
    or e
    xor b
    xor [hl]
    add sp, $50
    sub [hl]
    and a
    xor b
    xor a
    or d
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld a, a
    or e
    xor [hl]
    or c
    xor l
    and b
    and e
    xor [hl]
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add c
    xor [hl]
    xor [hl]
    or d
    or e
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $e3
    or e
    cp b
    xor a
    and h
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    add c
    xor [hl]
    xor [hl]
    or d
    or e
    or d
    ld a, a
    and l
    xor b
    or c
    and h
    db $e3
    or e
    cp b
    xor a
    and h
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    add sp, $50
    add d
    xor [hl]
    or h
    xor l
    or e
    and h
    or c
    or d
    ld a, a
    and b
    ld a, a
    sub d
    adc a
    add d
    adc e
    add sp, $4e
    add b
    sub e
    adc d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $50
    add d
    xor [hl]
    xor a
    xor b
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $b24e
    or e
    and b
    or e
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    add sp, $50
    add b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    db $e3
    ld c, [hl]
    or d
    or e
    or c
    xor b
    xor d
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or d
    or e
    and b
    or e
    or d
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    ld sp, hl
    or c
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    add sp, $50
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $50
    sub e
    or c
    and b
    xor a
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    ld hl, sp-$1d
    ei
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    add sp, $50
    adc a
    and b
    or c
    or e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    call Call_00b_6de6
    ld hl, $dcfb
    ld a, [$dcd7]
    ld b, a
    ld de, $0030

jr_00b_6d51:
    ld a, [hl]
    and $0f
    jr nz, jr_00b_6d9a

    add hl, de
    dec b
    jr nz, jr_00b_6d51

    ld hl, $d84d
    bit 6, [hl]
    ret z

    call $2f8c
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$e2]
    cp $03
    ret nc

    ld a, [$dcd7]
    ld b, a

jr_00b_6d70:
    call $2f8c
    and $07
    cp b
    jr nc, jr_00b_6d70

    ld hl, $dcfb
    call $3927
    ld a, [hl]
    and $f0
    ret nz

jr_00b_6d82:
    call $2f8c
    and a
    jr z, jr_00b_6d82

    ld b, a
    and $f0
    jr z, jr_00b_6d91

    ld a, b
    and $07
    inc a

jr_00b_6d91:
    ld b, a
    swap b
    and $03
    inc a
    add b
    ld [hl], a
    ret


jr_00b_6d9a:
    call $2f8c
    cp $55
    ret nc

    ld a, [$dcd7]
    cp $01
    ret z

    ld c, [hl]
    ld a, b
    cp $02
    jr c, jr_00b_6dc3

    call $2f8c
    cp $80
    jr c, jr_00b_6dc3

jr_00b_6db3:
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_00b_6dd9

    ld c, a
    and $03
    ret z

    dec b
    ld a, b
    cp $01
    jr nz, jr_00b_6db3

    ret


jr_00b_6dc3:
    ld a, [$dcd7]
    cp b
    ret z

    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, [hl]
    and a
    jr z, jr_00b_6dd9

    ld c, a
    and $03
    ret z

    inc b
    jr jr_00b_6dc3

jr_00b_6dd9:
    ld a, c
    and $f0
    ld b, a
    ld a, c
    swap a
    and $03
    inc a
    add b
    ld [hl], a
    ret


Call_00b_6de6:
    ld hl, $d84d
    bit 6, [hl]
    ret z

    call $2f8c
    cp $10
    ret nc

    ld hl, $dcdf
    ld a, [$dcd7]

jr_00b_6df8:
    push af
    push hl
    ld a, [hl]
    cp $d5
    jr nz, jr_00b_6e08

    ld bc, $0001
    add hl, bc
    ld a, [hl]
    cp $ad
    jr z, jr_00b_6e12

jr_00b_6e08:
    pop hl
    ld bc, $0030
    add hl, bc
    pop af
    dec a
    jr nz, jr_00b_6df8

    ret


jr_00b_6e12:
    ld a, $8b
    ld [hl], a
    pop hl
    pop af
    ret


    ld a, [$c2dc]
    and a
    ret z

    ld a, $0b
    ld hl, $41b2
    rst $08
    ld c, $96
    call $0468
    call $0fc8
    call $300b
    ret


    xor a
    ldh [$de], a
    call $045a
    ld b, $06
    ld hl, $dd01
    ld de, $002f

jr_00b_6e3d:
    ld a, [hl+]
    or [hl]
    jr nz, jr_00b_6e45

    add hl, de
    dec b
    jr nz, jr_00b_6e3d

jr_00b_6e45:
    ld de, $fffd
    add hl, de
    ld a, [hl]
    ld [$c639], a
    ld a, $34
    call $2d83
    ld a, $0f
    ld hl, $6d9f
    rst $08
    ld a, $01
    ldh [$d4], a
    call $300b
    call $0fc8
    xor a
    ldh [$d4], a
    ldh [$d2], a
    ldh [rWY], a
    ldh [$de], a
    ret


    push hl
    push de
    push bc
    xor a
    ld [$c2a7], a
    ld de, $0000
    call $3b97
    call $045a
    call $3c97
    ld a, [$d230]
    cp $0c
    ld de, $0064
    jp z, Jump_00b_6f11

    cp $05
    jp z, Jump_00b_6f11

    ld a, [$d22f]
    and a
    jr nz, jr_00b_6eb3

    ld a, $72
    ld hl, $6ea1
    rst $08
    ld a, e
    and a
    jr nz, jr_00b_6eae

    ld de, $0029
    ld a, [$d269]
    cp $02
    jr nz, jr_00b_6f11

    ld de, $004a
    jr jr_00b_6f11

jr_00b_6eae:
    ld de, $0008
    jr jr_00b_6f11

jr_00b_6eb3:
    ld de, $002f
    cp $10
    jr z, jr_00b_6f11

    cp $3f
    jr z, jr_00b_6f11

    ld de, $0031
    call Call_00b_7df9
    jr z, jr_00b_6f11

    nop
    nop
    nop
    ld de, $0006
    ld a, $0f
    ld hl, $5123
    rst $08
    jr c, jr_00b_6f11

    ld de, $002e
    ld a, $0f
    ld hl, $5128
    rst $08
    jr c, jr_00b_6f11

    ld de, $0030
    ld a, [$d22f]
    cp $09
    jr z, jr_00b_6f11

    cp $2a
    jr nz, jr_00b_6ef9

    ld a, [$d231]
    cp $04
    jr c, jr_00b_6f11

    ld de, $002f
    jr jr_00b_6f11

jr_00b_6ef9:
    ld a, [$c2dc]
    and a
    jr nz, jr_00b_6f09

    ld a, $72
    ld hl, $6ea1
    rst $08
    ld a, e
    and a
    jr nz, jr_00b_6f0e

jr_00b_6f09:
    ld de, $002a
    jr jr_00b_6f11

jr_00b_6f0e:
    ld de, $0007

Jump_00b_6f11:
jr_00b_6f11:
    call $3b97
    pop bc
    pop de
    pop hl
    ret


    xor a
    ld [$d0ec], a
    ld [$d0ee], a
    ld hl, $d0d8
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d0e4], a
    ld [$c666], a
    ld [$c62c], a
    ld [$c664], a
    ld [$d0d4], a
    ld [$d232], a
    ld [$d841], a
    ld [$c6dd], a
    ld [$c6dc], a
    ld [$d1e8], a
    ld hl, $cd99
    ld [hl+], a
    ld [hl], a
    ld hl, $c632
    ld [hl+], a
    ld [hl], a
    ld hl, $d20c
    ld [hl+], a
    ld [hl], a
    ld hl, $c608
    ld bc, $0139
    xor a
    call $3041
    ld hl, $5867
    ld a, $0f
    rst $08
    call $1fbf
    ld hl, $ffd6
    xor a
    ld [hl+], a
    ld [hl], $98
    ret


    ld de, $0014
    ld a, [$c2c6]
    and a
    jr nz, jr_00b_6f88

    ldh a, [$ad]

jr_00b_6f79:
    push bc
    push hl

jr_00b_6f7b:
    ld [hl], a
    add hl, de
    inc a
    dec c
    jr nz, jr_00b_6f7b

    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_00b_6f79

    ret


jr_00b_6f88:
    push bc
    ld b, $00
    dec c
    add hl, bc
    pop bc
    ldh a, [$ad]

jr_00b_6f90:
    push bc
    push hl

jr_00b_6f92:
    ld [hl], a
    add hl, de
    inc a
    dec c
    jr nz, jr_00b_6f92

    pop hl
    dec hl
    pop bc
    dec b
    jr nz, jr_00b_6f90

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

Call_00b_7df9:
    cp $1f
    ret z

    cp $42
    ret z

    cp $33
    ret z

    cp $37
    ret z

    cp $14
    ret z

    cp $0c
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
