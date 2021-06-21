; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld hl, $c56b
    ld b, $01
    ld c, $0b
    ld a, [$d22d]
    and a
    jr z, jr_001_4012

    call $0fe8
    jr jr_001_4017

jr_001_4012:
    ld a, $10
    call $2d83

jr_001_4017:
    ld hl, $c580
    ld de, $4025
    call $1078
    ld c, $32
    jp $0468


    sub [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, -$19
    ld d, b
    ld c, $80
    ld b, $0a
    ld hl, $403f

jr_001_4038:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_001_4038

    ret


    ld a, $c4
    ldh [rDMA], a
    ld a, $28

jr_001_4045:
    dec a
    jr nz, jr_001_4045

    ret


    adc e
    ld b, b
    sbc h
    ld b, b
    adc e
    ld b, b
    xor l
    ld b, b
    cp [hl]
    ld b, b
    rst $08
    ld b, b
    cp [hl]
    ld b, b
    ldh [rLCDC], a
    pop af
    ld b, b
    inc de
    ld b, c
    pop af
    ld b, b
    inc de
    ld b, c
    ld [bc], a
    ld b, c
    inc h
    ld b, c
    ld [bc], a
    ld b, c
    inc h
    ld b, c
    dec [hl]
    ld b, c
    ld c, d
    ld b, c
    ld e, a

jr_001_406e:
    ld b, c
    ld [hl], h
    ld b, c
    adc c
    ld b, c
    sbc d
    ld b, c
    ld b, $42
    and e
    ld b, c
    adc e
    ld b, b
    db $e4
    ld b, c
    adc e
    ld b, b
    push af
    ld b, c
    ccf
    ld b, d
    ld d, b
    ld b, d
    ld h, c
    ld b, d
    ld l, d
    ld b, d
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [$0100], sp
    ld [$0200], sp
    ld [bc], a
    ld [$0208], sp
    inc bc
    inc b
    nop
    nop
    nop
    add b
    nop
    ld [$8100], sp
    ld [$0200], sp
    add d
    ld [$0208], sp
    add e
    inc b
    nop
    ld [$8020], sp
    nop
    nop
    jr nz, @-$7d

jr_001_40b6:
    ld [$2208], sp
    add d
    ld [$2200], sp
    add e
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld [$0500], sp
    ld [$0200], sp
    ld b, $08
    ld [$0702], sp
    inc b
    nop
    nop
    nop
    add h
    nop
    ld [$8500], sp
    ld [$0200], sp
    add [hl]
    ld [$0208], sp
    add a
    inc b
    nop
    ld [$8420], sp
    nop
    nop
    jr nz, jr_001_406e

    ld [$2208], sp
    add [hl]
    ld [$2200], sp
    add a
    inc b
    nop
    nop
    nop
    ld [$0800], sp
    nop
    add hl, bc
    ld [$0200], sp
    ld a, [bc]
    ld [$0208], sp
    dec bc
    inc b
    nop
    ld [$0820], sp
    nop
    nop
    jr nz, jr_001_4114

    ld [$2208], sp
    ld a, [bc]
    ld [$2200], sp
    dec bc
    inc b

jr_001_4114:
    nop
    nop
    nop
    adc b
    nop
    ld [$8900], sp
    ld [$0200], sp
    adc d
    ld [$0208], sp
    adc e
    inc b
    nop
    ld [$8820], sp
    nop
    nop
    jr nz, jr_001_40b6

    ld [$2208], sp
    adc d
    ld [$2200], sp
    adc e
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [$0100], sp
    ld [$0200], sp
    ld [bc], a
    ld [$0208], sp
    inc bc
    stop
    inc b
    db $fc
    dec b
    nop
    nop
    nop
    inc b
    nop
    ld [$0500], sp
    ld [$0200], sp
    ld b, $08
    ld [$0702], sp
    ld hl, sp+$00
    inc b
    db $fc
    dec b
    nop
    nop
    nop
    ld [$0800], sp
    nop
    add hl, bc
    ld [$0200], sp
    ld a, [bc]
    ld [$0208], sp
    dec bc
    dec b
    ld hl, sp+$24
    db $fd
    dec b
    nop
    ld [$0820], sp
    nop
    nop
    jr nz, jr_001_4186

    ld [$2208], sp
    ld a, [bc]
    ld [$2200], sp
    dec bc
    dec b

jr_001_4186:
    db $10
    inc b
    db $fd
    inc b
    nop
    nop
    inc b
    ld hl, sp+$00
    ld [$f904], sp
    ld [$0400], sp
    ld a, [$0808]
    inc b
    ei
    ld [bc], a
    nop
    nop
    inc b
    db $fc
    nop
    ld [$fc24], sp
    stop
    nop
    nop
    nop
    nop
    ld [$0100], sp
    ld [$0000], sp
    ld [bc], a
    ld [$0008], sp
    inc bc
    stop
    nop
    inc b
    db $10
    ld [$0500], sp
    jr jr_001_41be

jr_001_41be:
    nop
    ld b, $18
    ld [$0700], sp
    nop
    jr jr_001_41e7

    nop
    nop
    db $10
    jr nz, @+$03

    ld [$2018], sp
    ld [bc], a
    ld [$2010], sp
    inc bc
    db $10
    jr jr_001_41f7

    inc b
    db $10
    db $10
    jr nz, @+$07

    jr jr_001_41f6

    jr nz, jr_001_41e6

    jr jr_001_41f2

    jr nz, @+$09

    inc b
    nop

jr_001_41e6:
    nop

jr_001_41e7:
    nop
    inc b
    nop
    ld [$0500], sp
    ld [$0000], sp
    ld b, $08

jr_001_41f2:
    ld [$0700], sp
    inc b

jr_001_41f6:
    nop

jr_001_41f7:
    ld [$0420], sp
    nop
    nop
    jr nz, jr_001_4203

    ld [$2008], sp
    ld b, $08

jr_001_4203:
    nop
    jr nz, @+$09

    ld c, $00
    nop
    nop
    nop
    nop
    ld [$0100], sp
    ld [$0000], sp
    inc b
    ld [$0008], sp
    dec b
    db $10
    ld [$0700], sp
    jr @+$0a

    nop
    ld a, [bc]
    nop
    jr jr_001_4222

jr_001_4222:
    inc bc
    nop
    stop
    ld [bc], a
    ld [$2018], sp
    ld [bc], a
    ld [$0010], sp
    ld b, $10
    jr jr_001_4232

jr_001_4232:
    add hl, bc
    db $10
    stop
    ld [$1818], sp
    jr nz, jr_001_423f

    jr jr_001_424d

    nop
    dec bc

jr_001_423f:
    inc b
    nop
    nop
    inc b
    cp $00
    ld [$fe04], sp
    ld [$0400], sp
    cp $08

jr_001_424d:
    ld [$fe04], sp
    inc b
    nop
    nop
    inc b
    rst $38
    nop
    ld [$ff04], sp
    ld [$0400], sp
    rst $38
    ld [$0408], sp
    rst $38
    ld [bc], a
    ld [$0400], sp
    cp $08
    ld [$fe24], sp
    ld [bc], a
    add hl, bc
    rst $38
    inc b
    cp $09
    add hl, bc
    inc h
    cp $00
    nop
    ld bc, $0002
    nop
    ld b, $00
    ld bc, $000c
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc b
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld b, $00
    ld bc, $0000
    nop
    ld b, $01
    ld bc, $0000
    nop
    ld b, $02
    ld bc, $0000
    nop
    ld b, $03
    ld bc, $0000
    nop
    dec b
    nop
    ld bc, $0000
    nop
    rlca
    nop
    ld bc, $0002
    nop
    ld [$0100], sp
    nop
    nop
    nop
    add hl, bc
    nop
    ld bc, $0000
    nop
    ld a, [bc]
    nop
    ld bc, $0000
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    inc c
    nop
    ld bc, $0000
    nop
    dec c
    nop
    ld bc, $0000
    nop
    ld c, $00
    ld bc, $0000
    nop
    rrca
    nop
    ld bc, $0002
    nop
    stop
    ld bc, $0002
    nop
    dec d
    nop
    add hl, bc
    ld l, $01
    ret nz

    ld d, $00
    ld a, [bc]
    ld l, $00
    nop
    ld b, $00
    ld bc, $000c
    nop
    ld b, $00
    ld bc, $102e
    nop
    ld de, $0100
    ld l, $00
    ld b, b
    ld [de], a
    nop
    ld bc, $0002
    nop
    inc de
    nop
    nop
    adc [hl]
    ld bc, $1400
    nop
    ld [$028e], sp
    nop
    rla
    nop
    nop
    add d
    nop
    nop
    add hl, de
    ld [bc], a
    ld bc, $0000
    nop
    jr jr_001_4332

    ld bc, $0000

jr_001_4332:
    nop
    ld de, $0c00
    ld l, $01
    ret nz

    ld de, $0d00
    ld l, $01
    ret nz

    ld a, [de]
    nop
    ld c, $8e
    ld bc, $1b00
    nop
    rrca
    adc [hl]
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0000
    jr nz, jr_001_4352

jr_001_4352:
    nop
    ld bc, $0000
    nop

Call_001_4357:
Jump_001_4357:
    push bc
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    push af
    ld h, b
    ld l, c
    ld bc, $0028
    xor a
    call $3041
    pop af
    cp $ff
    jr z, jr_001_4379

    bit 7, a
    jr nz, jr_001_4379

    call $18d2
    ld hl, $0000
    add hl, bc
    ld [hl], $ff

jr_001_4379:
    pop bc
    ret


Call_001_437b:
    call Call_001_4386
    ret c

    call Call_001_43f3
    call Call_001_4427
    ret


Call_001_4386:
    ld hl, $0005
    add hl, bc
    res 6, [hl]
    ld a, [$dcb8]
    ld e, a
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    add $01
    sub e
    jr c, jr_001_43b2

    cp $0c
    jr nc, jr_001_43b2

    ld a, [$dcb7]
    ld e, a
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    add $01
    sub e
    jr c, jr_001_43b2

    cp $0b
    jr nc, jr_001_43b2

    jr jr_001_43dc

jr_001_43b2:
    ld hl, $0005
    add hl, bc
    set 6, [hl]
    ld a, [$dcb8]
    ld e, a
    ld hl, $0014
    add hl, bc
    ld a, [hl]
    add $01
    sub e
    jr c, jr_001_43de

    cp $0c
    jr nc, jr_001_43de

    ld a, [$dcb7]
    ld e, a
    ld hl, $0015
    add hl, bc
    ld a, [hl]
    add $01
    sub e
    jr c, jr_001_43de

    cp $0b
    jr nc, jr_001_43de

jr_001_43dc:
    and a
    ret


jr_001_43de:
    ld hl, $0004
    add hl, bc
    bit 1, [hl]
    jr nz, jr_001_43eb

    call Call_001_4357
    scf
    ret


jr_001_43eb:
    ld hl, $0005
    add hl, bc
    set 6, [hl]
    and a
    ret


Call_001_43f3:
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_001_4409

    ld hl, $0005
    add hl, bc
    bit 5, [hl]
    jr nz, jr_001_4426

    cp $01
    jr z, jr_001_4414

    jr jr_001_4421

jr_001_4409:
    call Call_001_47bc
    ld hl, $0005
    add hl, bc
    bit 5, [hl]
    jr nz, jr_001_4426

jr_001_4414:
    call Call_001_47dd
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and a
    ret z

    cp $01
    ret z

jr_001_4421:
    ld hl, $4b45
    rst $28
    ret


jr_001_4426:
    ret


Call_001_4427:
    ld hl, $0004
    add hl, bc
    bit 0, [hl]
    jr nz, jr_001_44a3

    ld hl, $0005
    add hl, bc
    bit 6, [hl]
    jr nz, jr_001_44a3

    bit 5, [hl]
    jr nz, jr_001_4448

    ld de, $445f
    jr jr_001_444d

    ld hl, $0004
    add hl, bc
    bit 0, [hl]
    jr nz, jr_001_44a3

jr_001_4448:
    ld de, $4461
    jr jr_001_444d

jr_001_444d:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2fec
    ret


    and e
    ld b, h
    and e
    ld b, h
    or l
    ld b, h
    xor d
    ld b, h
    pop bc
    ld b, h
    xor d
    ld b, h
    ld [$aa45], sp
    ld b, h
    add hl, hl
    ld b, l
    xor d
    ld b, h
    add hl, sp
    ld b, l
    and e
    ld b, h
    ld l, [hl]
    ld b, l
    ld l, [hl]
    ld b, l
    ld a, e
    ld b, l
    and e
    ld b, h
    add d
    ld b, l
    add d
    ld b, l
    adc c
    ld b, l
    adc c
    ld b, l
    sub b
    ld b, l
    and h
    ld b, l
    xor e
    ld b, l
    xor d
    ld b, h
    cp [hl]
    ld b, l
    cp [hl]
    ld b, l
    push bc
    ld b, l
    push bc
    ld b, l
    jp c, $a345

    ld b, h
    db $ed
    ld b, l
    and e
    ld b, h
    db $e4
    ld b, h
    xor d
    ld b, h

Jump_001_44a3:
jr_001_44a3:
    ld hl, $000d
    add hl, bc
    ld [hl], $ff
    ret


Jump_001_44aa:
    call $1b07
    or $00
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000d
    add hl, bc
    ld a, [hl]
    and $01
    jr nz, jr_001_44c1

    jp Jump_001_44aa


jr_001_44c1:
    ld hl, $0004
    add hl, bc
    bit 3, [hl]
    jp nz, Jump_001_44aa

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc a
    and $0f
    ld [hl], a
    rrca
    rrca
    and $03
    ld d, a
    call $1b07
    or $00
    or d
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0004
    add hl, bc
    bit 3, [hl]
    jp nz, Jump_001_44aa

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    add $02
    and $0f
    ld [hl], a
    rrca
    rrca
    and $03
    ld d, a
    call $1b07
    or $00
    or d
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0004
    add hl, bc
    bit 3, [hl]
    jp nz, Jump_001_44aa

    ld hl, $000c
    add hl, bc
    inc [hl]
    ld a, [hl]
    rrca
    rrca
    rrca
    and $03
    ld d, a
    call $1b07
    or $00
    or d
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    call Call_001_453f
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    or $00
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    call Call_001_453f
    jp Jump_001_44a3


Call_001_453f:
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and $f0
    ld e, a
    ld a, [hl]
    inc a
    and $0f
    ld d, a
    cp $04
    jr c, jr_001_4558

    ld d, $00
    ld a, e
    add $10
    and $30
    ld e, a

jr_001_4558:
    ld a, d
    or e
    ld [hl], a
    swap e
    ld d, $00
    ld hl, $456a
    add hl, de
    ld a, [hl]
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ret


    nop
    inc c
    inc b
    ld [$07cd], sp
    dec de
    rrca
    rrca
    add $10
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000d
    add hl, bc
    ld [hl], $15
    ret


    ld hl, $000d
    add hl, bc
    ld [hl], $14
    ret


    ld hl, $000d
    add hl, bc
    ld [hl], $17
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc a
    and $0f
    ld [hl], a
    and $08
    jr z, jr_001_45a4

    ld hl, $000d
    add hl, bc
    ld [hl], $04
    ret


jr_001_45a4:
    ld hl, $000d
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    and $0c
    rrca
    rrca
    add $18
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000d
    add hl, bc
    ld [hl], $16
    ret


    ld a, [$d831]
    ld d, $17
    cp $33
    jr z, jr_001_45d4

    cp $47
    jr z, jr_001_45d4

    ld d, $16

jr_001_45d4:
    ld hl, $000d
    add hl, bc
    ld [hl], d
    ret


    ld hl, $000c
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld hl, $000d
    add hl, bc
    and $02
    ld a, $1c
    jr z, jr_001_45eb

    inc a

jr_001_45eb:
    ld [hl], a
    ret


    ld hl, $000c
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld hl, $000d
    add hl, bc
    and $04
    ld a, $1e
    jr z, jr_001_45fe

    inc a

jr_001_45fe:
    ld [hl], a
    ret


Call_001_4600:
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0012
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    ld hl, $0013
    add hl, bc
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    ld hl, $000f
    add hl, bc
    ld [hl], a
    call Call_001_4661
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call Call_001_4679
    ret


Call_001_462a:
    ld hl, $0012
    add hl, bc
    ld a, [hl]
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    ld hl, $0011
    add hl, bc
    ld [hl], a
    ret


Call_001_463f:
    ld hl, $0005
    add hl, bc
    bit 3, [hl]
    jr z, jr_001_464f

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call Call_001_4661

jr_001_464f:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call Call_001_4679
    ret c

    ld hl, $000f
    add hl, bc
    ld a, [hl]
    call Call_001_4679
    ret


Call_001_4661:
    call $188e
    jr z, jr_001_466b

    call $1875
    jr c, jr_001_4672

jr_001_466b:
    ld hl, $0005
    add hl, bc
    set 3, [hl]
    ret


jr_001_4672:
    ld hl, $0005
    add hl, bc
    res 3, [hl]
    ret


Call_001_4679:
    and a
    ret


Call_001_467b:
    xor a
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ld hl, $001b
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


Call_001_4690:
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $0004
    add hl, bc
    bit 2, [hl]
    jr nz, jr_001_46a6

    add a
    add a
    and $0c
    ld hl, $0008
    add hl, bc
    ld [hl], a

Call_001_46a6:
jr_001_46a6:
    call Call_001_46e9
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, d
    call Call_001_4730
    ld hl, $0012
    add hl, bc
    add [hl]
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld d, a
    ld a, e
    call Call_001_4730
    ld hl, $0013
    add hl, bc
    add [hl]
    ld hl, $0011
    add hl, bc
    ld [hl], a
    ld e, a
    push bc
    call $2a3c
    pop bc
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ret


Call_001_46d7:
    call Call_001_46e9
    ld hl, $0017
    add hl, bc
    ld a, [hl]
    add d
    ld [hl], a
    ld hl, $0018
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a
    ret


Call_001_46e9:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and $0f
    add a
    add a
    ld l, a
    ld h, $00
    ld de, $4700
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ret


    nop
    ld bc, $0110
    nop
    rst $38
    db $10
    ld bc, $00ff
    db $10
    ld bc, $0001
    db $10
    ld bc, $0200
    ld [$0002], sp
    cp $08
    ld [bc], a
    cp $00
    ld [$0202], sp
    nop
    ld [$0002], sp
    inc b
    inc b
    inc b
    nop
    db $fc
    inc b
    inc b
    db $fc
    nop
    inc b
    inc b
    inc b
    nop
    inc b
    inc b

Call_001_4730:
    add a
    ret z

    ld a, $01
    ret nc

    ld a, $ff
    ret


Call_001_4738:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and $03
    ld [$d151], a
    call Call_001_46d7
    ld a, [$d14e]
    add d
    ld [$d14e], a
    ld a, [$d14f]
    add e
    ld [$d14f], a
    ld hl, $d150
    set 5, [hl]
    ret


    push bc
    ld e, a
    ld d, $00
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    call $18d2
    add hl, de
    ld a, [hl]
    pop bc
    ret


Call_001_4769:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_477d

    push bc
    call $18d2
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    pop bc
    ret


jr_001_477d:
    ld a, $06
    ret


    ld hl, $001b
    add hl, bc
    ld [hl], $00
    ret


Call_001_4787:
    ld hl, $001b
    add hl, bc
    inc [hl]
    ret


Call_001_478d:
    ld hl, $001b
    add hl, bc
    dec [hl]
    ret


Call_001_4793:
    ld hl, $001b
    add hl, bc
    ld a, [hl]
    pop hl
    rst $28
    ret


Call_001_479b:
    ld hl, $001c
    add hl, bc
    ld [hl], $00
    ret


Call_001_47a2:
    ld hl, $001c
    add hl, bc
    inc [hl]
    ret


Call_001_47a8:
    ld hl, $001c
    add hl, bc
    ld a, [hl]
    pop hl
    rst $28
    ret


    ld hl, $001c
    add hl, bc
    ld a, [hl]
    ret


    ld hl, $001c
    add hl, bc
    ld [hl], a
    ret


Call_001_47bc:
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    push bc
    call $2a3c
    pop bc
    ld hl, $000e
    add hl, bc
    ld [hl], a
    call Call_001_4600
    call Call_001_467b
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


Call_001_47dd:
    call Call_001_479b
    call $1a2f
    ld a, [hl]
    ld hl, $47e9
    rst $28
    ret


    ld hl, $2248
    ld c, b
    inc l
    ld c, b
    jr c, @+$4a

    ld b, d
    ld c, b
    ld d, c
    ld c, b
    ld l, c
    ld c, b
    ld a, h
    ld c, b
    add d
    ld c, b
    adc b
    ld c, b
    adc [hl]
    ld c, b
    sub c
    ld c, b
    sub h
    ld c, b
    sub a
    ld c, b
    sbc l
    ld c, b
    and b
    ld c, b
    and [hl]
    ld c, b
    xor h
    ld c, b
    rst $38
    ld c, b
    push hl
    ld c, c
    ld hl, $584a
    ld c, c
    ld l, [hl]
    ld c, c
    cp h
    ld c, d
    adc l
    ld c, c
    add h
    ld c, c
    ld b, [hl]
    ld c, d
    adc c
    ld c, d
    ret


    call $2f8c
    ldh a, [$e1]
    and $01
    jp Jump_001_4af0


    call $2f8c
    ldh a, [$e1]
    and $01
    or $02
    jp Jump_001_4af0


    call $2f8c
    ldh a, [$e1]
    and $03
    jp Jump_001_4af0


    call $2f8c
    ldh a, [$e1]
    and $0c
    ld hl, $0008
    add hl, bc
    ld [hl], a
    jp Jump_001_4b1d


    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $0c
    ld d, a
    call $2f8c
    ldh a, [$e1]
    and $0c
    cp d
    jr nz, jr_001_4865

    xor $0c

jr_001_4865:
    ld [hl], a
    jp Jump_001_4b26


    call Call_001_462a
    call Call_001_467b
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0009
    add hl, bc
    ld [hl], $05
    ret


    ld hl, $5000
    jp Jump_001_5041


    ld hl, $5015
    jp Jump_001_5041


    ld hl, $5026
    jp Jump_001_5041


    jp Jump_001_5037


    jp Jump_001_5037


    jp Jump_001_5037


    ld hl, $5000
    jp Jump_001_5041


    jp Jump_001_5037


    ld hl, $54e6
    jp Jump_001_5041


    ld hl, $500e
    jp Jump_001_5041


    call Call_001_4793
    or e
    ld c, b
    ld hl, sp+$48
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call $18a6
    jr z, jr_001_48f5

    ld hl, $0005
    add hl, bc
    bit 2, [hl]
    res 2, [hl]
    jr z, jr_001_48ee

    ld hl, $0020
    add hl, bc
    ld a, [hl]
    and $03
    or $00
    call Call_001_4690
    call $6ec1
    jr c, jr_001_48eb

    ld de, $001b
    call $3c23
    call Call_001_5538
    call Call_001_463f
    ld hl, $0009
    add hl, bc
    ld [hl], $0f
    ret


jr_001_48eb:
    call Call_001_462a

jr_001_48ee:
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


jr_001_48f5:
    call Call_001_4787
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    push bc
    call $1ae5
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_494a

    ld hl, $0012
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_001_492d

    jr c, jr_001_4929

    ld a, $03
    jr jr_001_493d

jr_001_4929:
    ld a, $02
    jr jr_001_493d

jr_001_492d:
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    cp e
    jr z, jr_001_494a

    jr c, jr_001_493b

    ld a, $00
    jr jr_001_493d

jr_001_493b:
    ld a, $01

jr_001_493d:
    ld d, a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and $0c
    or d
    pop bc
    jp Jump_001_5412


jr_001_494a:
    pop bc
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_467b
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000b
    add hl, bc
    ld [hl], $09
    ld hl, $0009
    add hl, bc
    ld [hl], $04
    ret


    call Call_001_467b
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000b
    add hl, bc
    ld [hl], $0a
    ld hl, $0009
    add hl, bc
    ld [hl], $04
    ret


jr_001_4984:
    call Call_001_4793
    sub [hl]
    ld c, c
    sbc h
    ld c, c
    cp b
    ld c, c

jr_001_498d:
    call Call_001_4793
    sub [hl]
    ld c, c
    sbc h
    ld c, c
    call nz, $cd49
    ld a, e
    ld b, [hl]
    call Call_001_4787
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    ld a, $10
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $03
    call Call_001_4787
    ret


    ld de, $49c0
    call Call_001_49d0
    jr jr_001_4984

    inc c
    ld [$0400], sp
    ld de, $49cc
    call Call_001_49d0
    jr jr_001_498d

    ld [$040c], sp
    nop

Call_001_49d0:
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $0c
    rrca
    rrca
    push hl
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl], a
    call Call_001_478d
    ret


    call Call_001_4aa8
    ld hl, $000b
    add hl, bc
    ld [hl], $07
    ld hl, $000a
    add hl, de
    ld a, [hl]
    inc a
    add a
    add $00
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld a, [hl]
    and $03
    ld d, $0e
    cp $00
    jr z, jr_001_4a0f

    cp $01
    jr z, jr_001_4a0f

    ld d, $0c

jr_001_4a0f:
    ld hl, $001a
    add hl, bc
    ld [hl], d
    ld hl, $0019
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $13
    ret


    call Call_001_467b
    call Call_001_4aa8
    ld hl, $000b
    add hl, bc
    ld [hl], $08
    ld hl, $000a
    add hl, bc
    ld [hl], $00
    ld hl, $001a
    add hl, bc
    ld [hl], $f0
    ld hl, $0019
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $13
    ret


    call Call_001_467b
    call Call_001_4aa8
    ld hl, $000b
    add hl, bc
    ld [hl], $0e
    ld hl, $000a
    add hl, de
    ld a, [hl]
    inc a
    add a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld a, [hl]
    and $03
    ld e, a
    ld d, $00
    ld hl, $4a81
    add hl, de
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], d
    ld hl, $001a
    add hl, bc
    ld [hl], e
    ld hl, $0009
    add hl, bc
    ld [hl], $13
    ret


    nop
    db $fc
    nop
    ld [$0206], sp
    ld a, [$cd02]
    ld a, e
    ld b, [hl]
    call Call_001_4aa8
    ld hl, $000b
    add hl, bc
    ld [hl], $0f
    ld hl, $000a
    add hl, de
    ld a, [hl]
    add $ff
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $13
    ret


Call_001_4aa8:
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    push bc
    call $1ae5
    ld d, b
    ld e, c
    pop bc
    ld hl, $001d
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    call Call_001_467b
    ld hl, $000b
    add hl, bc
    ld [hl], $00
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    call Call_001_4ade
    ld hl, $000a
    add hl, bc
    ld [hl], e
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $15
    ret


Call_001_4ade:
    ld d, a
    and $3f
    ld e, a
    ld a, d
    rlca
    rlca
    and $03
    ld d, a
    inc d
    ld a, $01

jr_001_4aeb:
    dec d
    ret z

    add a
    jr jr_001_4aeb

Jump_001_4af0:
    call Call_001_4690
    call $6ec1
    jr c, jr_001_4b17

    call Call_001_463f
    ld hl, $000b
    add hl, bc
    ld [hl], $02
    ld hl, $d4cf
    ldh a, [$af]
    cp [hl]
    jr z, jr_001_4b10

    ld hl, $0009
    add hl, bc
    ld [hl], $07
    ret


jr_001_4b10:
    ld hl, $0009
    add hl, bc
    ld [hl], $06
    ret


jr_001_4b17:
    call Call_001_467b
    call Call_001_462a

Jump_001_4b1d:
    call $2f8c
    ldh a, [$e1]
    and $7f
    jr jr_001_4b2d

Jump_001_4b26:
    call $2f8c
    ldh a, [$e1]
    and $1f

jr_001_4b2d:
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0009
    add hl, bc
    ld [hl], $03
    ret


    cp h
    ld b, a
    db $dd
    ld b, a
    dec hl
    ld c, [hl]
    db $dd
    ld c, l
    ld hl, $0c4e
    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    ld b, a
    ld c, [hl]
    add [hl]
    ld c, e
    cp a
    ld c, e
    add e
    ld c, [hl]
    rst $38
    ld c, l
    jr @+$4e

    adc c
    ld c, h
    inc d
    ld c, l
    call Call_001_7e4e
    ld c, l
    xor a
    ld c, l
    ret z

    ld c, l
    inc b
    ld c, a
    inc sp
    ld c, a
    inc sp
    ld c, a
    ld [hl], a
    ld c, a
    ld a, d
    ld c, a
    ldh a, [rKEY1]
    add e
    ld c, a

Jump_001_4b79:
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    adc l
    ld c, e
    xor c
    ld c, e
    call Call_001_46d7
    call Call_001_4fd5
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_4600
    call Call_001_46a6
    ld hl, $0005
    add hl, bc
    res 3, [hl]
    call Call_001_47a2
    ret


    call Call_001_46d7
    call Call_001_4fd5
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_4600
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    jp z, $d24b

    ld c, e
    ld a, [c]
    ld c, e
    db $fd
    ld c, e
    ld hl, $d150
    set 7, [hl]
    call Call_001_47a2
    call Call_001_4fd5
    call Call_001_4738
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_4600
    ld hl, $0005
    add hl, bc
    res 3, [hl]
    ld hl, $d150
    set 6, [hl]
    set 4, [hl]
    call Call_001_47a2
    ret


    call Call_001_46a6
    ld hl, $d150
    set 7, [hl]
    call Call_001_47a2
    call Call_001_4fd5
    call Call_001_4738
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $d150
    set 6, [hl]
    call Call_001_4600
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    inc hl
    ld c, h
    ld [hl-], a
    ld c, h
    ld b, d
    ld c, h
    ld e, l
    ld c, h
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ld hl, $000b
    add hl, bc
    ld [hl], $04
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_47a2
    ret


    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $001f
    add hl, bc
    ld [hl], $10
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    ld hl, $0005
    add hl, bc
    res 3, [hl]
    call Call_001_47a2
    ld hl, $000b
    add hl, bc
    ld [hl], $04
    ld hl, $001f
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld d, $60
    call $1b11
    ld a, h
    sub $60
    ld hl, $001a
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    sbc d
    ld c, h
    xor d
    ld c, h
    or e
    ld c, h
    ret


    ld c, h
    db $eb
    ld c, h
    push af
    ld c, h
    ld bc, $214d
    dec bc
    nop
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ret


    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_47a2
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $001f
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ret


    ld hl, $000b
    add hl, bc
    ld [hl], $04
    ld hl, $001f
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld d, $60
    call $1b11
    ld a, h
    sub $60
    ld hl, $001a
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_47a2
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ret


    ld hl, $000b
    add hl, bc
    ld [hl], $04
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $001a
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    rra
    ld c, l
    ld l, $4d
    ld c, a
    ld c, l
    ld l, e
    ld c, l
    ld hl, $000b
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $000b
    add hl, bc
    ld [hl], $02
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $001f
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ld hl, $001f
    add hl, bc
    inc [hl]
    ld a, [hl]
    ld d, $60
    call $1b11
    ld a, h
    sub $60
    ld hl, $001a
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_47a2
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $001a
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    add l
    ld c, l
    sub h
    ld c, l
    ld hl, $000a
    add hl, bc
    ld [hl], $08
    ld hl, $001a
    add hl, bc
    ld [hl], $00
    call Call_001_47a2
    ld hl, $001a
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $001a
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_4db5
    jp Jump_001_4b79


Call_001_4db5:
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and $01
    ld a, $01
    jr z, jr_001_4dc2

    ld a, $00

jr_001_4dc2:
    ld hl, $000b
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and $01
    ld a, $04
    jr z, jr_001_4dd5

    ld a, $05

jr_001_4dd5:
    ld hl, $000b
    add hl, bc
    ld [hl], a
    jp Jump_001_4b79


    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    jp Jump_001_4357


    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    inc de
    ld c, [hl]
    ld hl, $cd4e
    ld l, c
    ld b, a
    call $1a47
    ld hl, $0008
    add hl, bc
    ld [hl], a
    call Call_001_47a2
    call Call_001_4fb2
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    call Call_001_4fb2
    call Call_001_46d7
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_4600
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_46d7
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_4600
    jp Jump_001_4b1d


    call Call_001_47a8
    ld e, l
    ld c, [hl]
    ld h, l
    ld c, [hl]
    ld hl, $d150
    set 7, [hl]
    call Call_001_47a2
    call Call_001_4738
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $d150
    set 6, [hl]
    call Call_001_4600
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_47a8
    adc [hl]
    ld c, [hl]
    and h
    ld c, [hl]
    xor l
    ld c, [hl]
    ret nz

    ld c, [hl]
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    ld [hl], $02
    ld hl, $000a
    add hl, bc
    ld [hl], $02
    call Call_001_47a2
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    call Call_001_47a2
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    ld [hl], $02
    call Call_001_47a2
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_46d7
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    push bc
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ld b, a
    ld a, $02
    ld hl, $407e
    rst $08
    pop bc
    ld hl, $0005
    add hl, bc
    res 2, [hl]
    call Call_001_4600
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    ld hl, $001d
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_001_4f30

    ld hl, $0017
    add hl, de
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ld hl, $0018
    add hl, de
    ld a, [hl]
    ld hl, $0018
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret nz

jr_001_4f30:
    jp Jump_001_4357


    call Call_001_47a8
    ld a, [hl-]
    ld c, a
    ld b, e
    ld c, a
    xor a
    ld hl, $001d
    add hl, bc
    ld [hl], a
    call Call_001_47a2
    ld hl, $001d
    add hl, bc
    ld d, [hl]
    ld a, [$d14f]
    sub d
    ld [$d14f], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    jr z, jr_001_4f68

    ld a, [hl]
    call Call_001_4f6c
    ld hl, $001d
    add hl, bc
    ld [hl], a
    ld d, a
    ld a, [$d14f]
    add d
    ld [$d14f], a
    ret


jr_001_4f68:
    call Call_001_4357
    ret


Call_001_4f6c:
    ld hl, $001e
    add hl, bc
    and $01
    ld a, [hl]
    ret z

    cpl
    inc a
    ret


    call Call_001_47a8
    call Call_001_47a8
    add e
    ld c, a
    add e
    ld c, a
    add e
    ld c, a
    call Call_001_47a8
    adc d
    ld c, a
    sbc c
    ld c, a
    ld hl, $000b
    add hl, bc
    ld [hl], $10
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    call Call_001_47a2
    ld hl, $000a
    add hl, bc
    dec [hl]
    ret nz

    ld hl, $001a
    add hl, bc
    ld [hl], $60
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


Call_001_4fb2:
    ret


    ld hl, $001d
    add hl, bc
    inc [hl]
    ld a, [hl]
    srl a
    srl a
    and $07
    ld l, a
    ld h, $00
    ld de, $4fcd
    add hl, de
    ld a, [hl]
    ld hl, $001a
    add hl, bc
    ld [hl], a
    ret


    nop
    rst $38
    cp $fd
    db $fc
    db $fd
    cp $ff

Call_001_4fd5:
    call Call_001_46e9
    ld a, h
    ld hl, $001f
    add hl, bc
    ld e, [hl]
    add e
    ld [hl], a
    nop
    srl e
    ld d, $00
    ld hl, $4ff0
    add hl, de
    ld a, [hl]
    ld hl, $001a
    add hl, bc
    ld [hl], a
    ret


    db $fc
    ld a, [$f6f8]
    push af
    db $f4
    db $f4
    db $f4
    push af
    or $f7
    ld hl, sp-$06
    db $fc
    nop
    nop
    ld a, [$c2de]
    ld hl, $c2df
    ld [hl], a
    ld a, $3e
    ld [$c2de], a
    ld a, [hl]
    ret


    ld hl, $c2e3
    call $1aae
    ret


    ld hl, $001b
    add hl, bc
    ld e, [hl]
    inc [hl]
    ld d, $00
    ld hl, $c2e2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl]
    ret


    ld hl, $001b
    add hl, bc
    ld e, [hl]
    inc [hl]
    ld d, $00
    ld hl, $c2e6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl]
    ret


Jump_001_5037:
    ld hl, $503d
    jp Jump_001_5041


    ld a, [$c2e2]
    ret


Jump_001_5041:
    call Call_001_5055

jr_001_5044:
    xor a
    ld [$c2ea], a
    call Call_001_505e
    call Call_001_506b
    ld a, [$c2ea]
    and a
    jr nz, jr_001_5044

    ret


Call_001_5055:
    ld a, l
    ld [$c2eb], a
    ld a, h
    ld [$c2ec], a
    ret


Call_001_505e:
    ld hl, $c2eb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_001_5065:
    ld a, $01
    ld [$c2ea], a
    ret


Call_001_506b:
    push af
    call Call_001_54b8
    pop af
    ld hl, $5075
    rst $28
    ret


    sbc $52
    ld [c], a
    ld d, d
    and $52
    ld [$f052], a
    ld d, e
    db $f4
    ld d, e
    ld hl, sp+$53
    db $fc
    ld d, e
    nop
    ld d, e
    dec b
    ld d, e
    ld a, [bc]
    ld d, e
    rrca
    ld d, e
    inc d
    ld d, e
    add hl, de
    ld d, e
    ld e, $53
    inc hl
    ld d, e
    jr z, jr_001_50ea

    dec l
    ld d, e
    ld [hl-], a
    ld d, e
    scf
    ld d, e
    ld a, b
    ld d, e
    ld a, l
    ld d, e
    add d
    ld d, e
    add a
    ld d, e
    adc h
    ld d, e
    sub c
    ld d, e
    sub [hl]
    ld d, e
    sbc e
    ld d, e
    and b
    ld d, e
    and l
    ld d, e
    xor d
    ld d, e
    xor a
    ld d, e
    inc a
    ld d, e
    ld b, c
    ld d, e
    ld b, [hl]
    ld d, e
    ld c, e
    ld d, e
    ld d, b
    ld d, e
    ld d, l
    ld d, e
    ld e, d
    ld d, e
    ld e, a
    ld d, e
    ld h, h
    ld d, e
    ld l, c
    ld d, e
    ld l, [hl]
    ld d, e
    ld [hl], e
    ld d, e
    or h
    ld d, e
    cp c
    ld d, e
    cp [hl]
    ld d, e
    jp $c853


    ld d, e
    call $d253
    ld d, e
    rst $10
    ld d, e
    call c, $e153
    ld d, e
    and $53
    db $eb
    ld d, e
    sub e
    ld d, d
    sbc h
    ld d, d
    and l

jr_001_50ea:
    ld d, d
    xor [hl]
    ld d, d
    or a
    ld d, d
    ret nz

    ld d, d
    ld [hl+], a
    ld d, d
    ld h, $52
    ld a, [hl+]
    ld d, d
    ld l, $52
    ld [hl-], a
    ld d, d
    ld [hl], $52
    ld a, [hl-]
    ld d, d
    ld a, $52
    ld b, d
    ld d, d
    pop bc
    ld d, c
    db $db
    ld d, c
    db $fd
    ld d, c
    cp b
    ld d, c
    db $10
    ld d, d
    add hl, hl
    ld d, c
    jr nc, @+$53

    scf
    ld d, c
    ld b, l
    ld d, c
    ld e, a
    ld d, d
    adc c
    ld d, c
    xor e
    ld d, c
    ret


    ld d, d
    rst $08
    ld d, d
    push de
    ld d, d
    ld a, c
    ld d, d
    sub [hl]
    ld d, c
    ld l, d
    ld d, c
    ld a, $51
    ld hl, $0009
    add hl, bc
    ld [hl], $0c
    ret


    ld hl, $0009
    add hl, bc
    ld [hl], $0d
    ret


    ld hl, $0009
    add hl, bc
    ld [hl], $0e
    ret


    ld hl, $0009
    add hl, bc
    ld [hl], $19
    ret


    call $1b07
    rlca
    rlca
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], $04
    call Call_001_505e
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $03
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    call $1b07
    rlca
    rlca
    ld hl, $000c
    add hl, bc
    ld [hl], a
    call Call_001_505e
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ld hl, $0009
    add hl, bc
    ld [hl], $12
    ret


    ld hl, $000b
    add hl, bc
    ld [hl], $06
    ld hl, $0009
    add hl, bc
    ld [hl], $10
    ret


    call Call_001_505e
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0009
    add hl, bc
    ld [hl], $11
    ret


    ld hl, $000b
    add hl, bc
    ld [hl], $06
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    ld hl, $001b
    add hl, bc
    ld [hl], $00
    jp Jump_001_5065


    call Call_001_4769
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ld hl, $001b
    add hl, bc
    ld [hl], $00
    ld hl, $d0ed
    res 7, [hl]
    ld hl, $0009
    add hl, bc
    ld [hl], $01
    ret


    call Call_001_4769
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ld hl, $001b
    add hl, bc
    ld [hl], $00
    call Call_001_505e
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $03
    ld hl, $d0ed
    res 7, [hl]
    ret


    call Call_001_4357
    ld hl, $d4cd
    ldh a, [$af]
    cp [hl]
    jr nz, jr_001_520a

    ld [hl], $ff

jr_001_520a:
    ld hl, $d0ed
    res 7, [hl]
    ret


    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0009
    add hl, bc
    ld [hl], $04
    ld hl, $d0ed
    res 7, [hl]
    ret


    ld a, $01
    jr jr_001_5247

    ld a, $02
    jr jr_001_5247

    ld a, $03
    jr jr_001_5247

    ld a, $04
    jr jr_001_5247

    ld a, $05
    jr jr_001_5247

    ld a, $06
    jr jr_001_5247

    ld a, $07
    jr jr_001_5247

    ld a, $08
    jr jr_001_5247

    call Call_001_505e
    jr jr_001_5247

jr_001_5247:
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $03
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $0b
    ld hl, $000b
    add hl, bc
    ld [hl], $03
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    ld a, $18
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $03
    ld hl, $000b
    add hl, bc
    ld [hl], $0b
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    ld hl, $0004
    add hl, bc
    res 3, [hl]
    jp Jump_001_5065


    ld hl, $0004
    add hl, bc
    set 3, [hl]
    jp Jump_001_5065


    ld hl, $0004
    add hl, bc
    res 2, [hl]
    jp Jump_001_5065


    ld hl, $0004
    add hl, bc
    set 2, [hl]
    jp Jump_001_5065


    ld hl, $0004
    add hl, bc
    res 0, [hl]
    jp Jump_001_5065


    ld hl, $0004
    add hl, bc
    set 0, [hl]
    jp Jump_001_5065


    call Call_001_5579
    jp Jump_001_5065


    call Call_001_5547
    jp Jump_001_5065


    call Call_001_505e
    call Call_001_5565
    jp Jump_001_5065


    ld a, $00
    jr jr_001_52ee

    ld a, $04
    jr jr_001_52ee

    ld a, $08
    jr jr_001_52ee

    ld a, $0c
    jr jr_001_52ee

jr_001_52ee:
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $0007
    add hl, bc
    ld [hl], $ff
    ret


    ld a, $00
    jp Jump_001_5412


    ld a, $01
    jp Jump_001_5412


    ld a, $02
    jp Jump_001_5412


    ld a, $03
    jp Jump_001_5412


    ld a, $04
    jp Jump_001_5412


    ld a, $05
    jp Jump_001_5412


    ld a, $06
    jp Jump_001_5412


    ld a, $07
    jp Jump_001_5412


    ld a, $08
    jp Jump_001_5412


    ld a, $09
    jp Jump_001_5412


    ld a, $0a
    jp Jump_001_5412


    ld a, $0b
    jp Jump_001_5412


    ld a, $00
    jp Jump_001_5446


    ld a, $01
    jp Jump_001_5446


    ld a, $02
    jp Jump_001_5446


    ld a, $03
    jp Jump_001_5446


    ld a, $04
    jp Jump_001_5446


    ld a, $05
    jp Jump_001_5446


    ld a, $06
    jp Jump_001_5446


    ld a, $07
    jp Jump_001_5446


    ld a, $08
    jp Jump_001_5446


    ld a, $09
    jp Jump_001_5446


    ld a, $0a
    jp Jump_001_5446


    ld a, $0b
    jp Jump_001_5446


    ld a, $00
    jp Jump_001_5468


    ld a, $01
    jp Jump_001_5468


    ld a, $02
    jp Jump_001_5468


    ld a, $03
    jp Jump_001_5468


    ld a, $04
    jp Jump_001_5468


    ld a, $05
    jp Jump_001_5468


    ld a, $06
    jp Jump_001_5468


    ld a, $07
    jp Jump_001_5468


    ld a, $08
    jp Jump_001_5468


    ld a, $09
    jp Jump_001_5468


    ld a, $0a
    jp Jump_001_5468


    ld a, $0b
    jp Jump_001_5468


    ld a, $00
    jp Jump_001_548a


    ld a, $01
    jp Jump_001_548a


    ld a, $02
    jp Jump_001_548a


    ld a, $03
    jp Jump_001_548a


    ld a, $04
    jp Jump_001_548a


    ld a, $05
    jp Jump_001_548a


    ld a, $06
    jp Jump_001_548a


    ld a, $07
    jp Jump_001_548a


    ld a, $08
    jp Jump_001_548a


    ld a, $09
    jp Jump_001_548a


    ld a, $0a
    jp Jump_001_548a


    ld a, $0b
    jp Jump_001_548a


    ld a, $00
    jr jr_001_5400

    ld a, $04
    jr jr_001_5400

    ld a, $08
    jr jr_001_5400

    ld a, $0c
    jr jr_001_5400

jr_001_5400:
    ld hl, $001d
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], $02
    ld hl, $0009
    add hl, bc
    ld [hl], $0a
    ret


Jump_001_5412:
    call Call_001_4690
    call Call_001_463f
    ld hl, $000b
    add hl, bc
    ld [hl], $02
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call $188e
    jr z, jr_001_542d

    call $1875
    jr c, jr_001_5430

jr_001_542d:
    call Call_001_5556

jr_001_5430:
    ld hl, $d4cf
    ldh a, [$af]
    cp [hl]
    jr z, jr_001_543f

    ld hl, $0009
    add hl, bc
    ld [hl], $02
    ret


jr_001_543f:
    ld hl, $0009
    add hl, bc
    ld [hl], $06
    ret


Jump_001_5446:
    call Call_001_4690
    call Call_001_463f
    ld hl, $000b
    add hl, bc
    ld [hl], $04
    ld hl, $d4cf
    ldh a, [$af]
    cp [hl]
    jr z, jr_001_5461

    ld hl, $0009
    add hl, bc
    ld [hl], $02
    ret


jr_001_5461:
    ld hl, $0009
    add hl, bc
    ld [hl], $06
    ret


Jump_001_5468:
    call Call_001_4690
    call Call_001_463f
    ld hl, $000b
    add hl, bc
    ld [hl], $01
    ld hl, $d4cf
    ldh a, [$af]
    cp [hl]
    jr z, jr_001_5483

    ld hl, $0009
    add hl, bc
    ld [hl], $02
    ret


jr_001_5483:
    ld hl, $0009
    add hl, bc
    ld [hl], $06
    ret


Jump_001_548a:
    call Call_001_4690
    ld hl, $001f
    add hl, bc
    ld [hl], $00
    ld hl, $0005
    add hl, bc
    res 3, [hl]
    ld hl, $000b
    add hl, bc
    ld [hl], $02
    call Call_001_5529
    ld hl, $d4cf
    ldh a, [$af]
    cp [hl]
    jr z, jr_001_54b1

    ld hl, $0009
    add hl, bc
    ld [hl], $08
    ret


jr_001_54b1:
    ld hl, $0009
    add hl, bc
    ld [hl], $09
    ret


Call_001_54b8:
    ld e, a
    ld a, [$d4ce]
    cp $ff
    ret z

    ld a, [$d4cd]
    ld d, a
    ldh a, [$af]
    cp d
    ret nz

    ld a, e
    cp $3e
    ret z

    cp $47
    ret z

    cp $4b
    ret z

    cp $50
    ret z

    cp $08
    ret c

    push af
    ld hl, $d4d0
    inc [hl]
    ld e, [hl]
    ld d, $00
    ld hl, $d4d1
    add hl, de
    pop af
    ld [hl], a
    ret


    ld hl, $d4d0
    ld a, [hl]
    and a
    jr z, jr_001_5503

    cp $ff
    jr z, jr_001_5503

    dec [hl]
    ld e, a
    ld d, $00
    ld hl, $d4d1
    add hl, de
    inc e
    ld a, $ff

jr_001_54fc:
    ld d, [hl]
    ld [hl-], a
    ld a, d
    dec e
    jr nz, jr_001_54fc

    ret


jr_001_5503:
    call Call_001_550a
    ret c

    ld a, $3e
    ret


Call_001_550a:
    ld a, [$d4cd]
    cp $ff
    jr z, jr_001_5520

    push bc
    call $1ae5
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    pop bc
    and a
    jr z, jr_001_5520

    and a
    ret


jr_001_5520:
    ld a, $ff
    ld [$d4ce], a
    ld a, $47
    scf
    ret


Call_001_5529:
    push bc
    ld de, $5535
    call Call_001_55b9
    call Call_001_55ac
    pop bc
    ret


    nop
    dec b
    dec de

Call_001_5538:
    push bc
    ld de, $5544
    call Call_001_55b9
    call Call_001_55ac
    pop bc
    ret


    nop
    dec b
    ld [hl+], a

Call_001_5547:
    push bc
    ld de, $5553
    call Call_001_55b9
    call Call_001_55ac
    pop bc
    ret


    nop
    dec b
    inc e

Call_001_5556:
    push bc
    ld de, $5562
    call Call_001_55b9
    call Call_001_55ac
    pop bc
    ret


    nop
    ld b, $23

Call_001_5565:
    push bc
    push af
    ld de, $5576
    call Call_001_55b9
    pop af
    ld [$c2f5], a
    call Call_001_55ac
    pop bc
    ret


    nop
    dec b
    dec e

Call_001_5579:
    push bc
    ldh a, [$af]
    ld c, a
    call Call_001_5582
    pop bc
    ret


Call_001_5582:
    ld de, $d4d6
    ld a, $0d

jr_001_5587:
    push af
    ld hl, $0004
    add hl, de
    bit 7, [hl]
    jr z, jr_001_55a1

    ld hl, $0000
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_001_55a1

    push bc
    xor a
    ld bc, $0028
    call $3041
    pop bc

jr_001_55a1:
    ld hl, $0028
    add hl, de
    ld d, h
    ld e, l
    pop af
    dec a
    jr nz, jr_001_5587

    ret


Call_001_55ac:
    call $1a13
    ret nc

    ld d, h
    ld e, l
    ld a, $02
    ld hl, $4286
    rst $08
    ret


Call_001_55b9:
    ld hl, $c2f0
    ld [hl], $ff
    inc hl
    ld [hl], $ff
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ldh a, [$af]
    ld [hl+], a
    push hl
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    pop hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], $ff
    ret


    ld a, [$d0ed]
    bit 0, a
    ret z

    ld bc, $d4d6
    xor a

jr_001_55ea:
    ldh [$af], a
    call $1af1
    jr z, jr_001_55f4

    call Call_001_565c

jr_001_55f4:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$af]
    inc a
    cp $0d
    jr nz, jr_001_55ea

    ret


    call Call_001_5645
    ld a, $00
    call Call_001_5629
    ld a, [$d459]
    bit 7, a
    jr z, jr_001_5619

    ldh a, [$e0]
    and a
    jr z, jr_001_5619

    call Call_001_5629

jr_001_5619:
    call $5920
    ret


    call Call_001_5645
    ld a, $00
    call Call_001_5629
    call $5920
    ret


Call_001_5629:
    cp $10
    ret nc

    call $18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    cp $0d
    ret nc

    call $1ae5
    call $1af1
    ret z

    call Call_001_5673
    ret


Call_001_5645:
    xor a
    ld bc, $d4d6

jr_001_5649:
    ldh [$af], a
    call Call_001_5680
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$af]
    inc a
    cp $0d
    jr nz, jr_001_5649

    ret


Call_001_565c:
    push bc
    call Call_001_56cd
    pop bc
    jr c, jr_001_5680

    call Call_001_56a3
    jr c, jr_001_5680

    call Call_001_5688
    ld a, $01
    ld hl, $4440
    rst $08
    xor a
    ret


Call_001_5673:
    call Call_001_56a3
    jr c, jr_001_5680

    ld a, $01
    ld hl, $4440
    rst $08
    xor a
    ret


Call_001_5680:
jr_001_5680:
    ld hl, $000d
    add hl, bc
    ld [hl], $ff
    scf
    ret


Call_001_5688:
    push bc
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    call $2a3c
    pop bc
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $463f
    rst $08
    ret


Call_001_56a3:
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    inc d
    inc e
    ld a, [$dcb8]
    cp d
    jr z, jr_001_56bc

    jr nc, jr_001_56cb

    add $0b
    cp d
    jr c, jr_001_56cb

jr_001_56bc:
    ld a, [$dcb7]
    cp e
    jr z, jr_001_56c9

    jr nc, jr_001_56cb

    add $0a
    cp e
    jr c, jr_001_56cb

jr_001_56c9:
    xor a
    ret


jr_001_56cb:
    scf
    ret


Call_001_56cd:
    ld a, [$d14c]
    ld d, a
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    add [hl]
    add d
    cp $f0
    jr nc, jr_001_56e5

    cp $a0
    jp nc, Jump_001_5768

jr_001_56e5:
    and $07
    ld d, $02
    cp $04
    jr c, jr_001_56ef

    ld d, $03

jr_001_56ef:
    ld a, [hl]
    srl a
    srl a
    srl a
    cp $14
    jr c, jr_001_56fc

    sub $20

jr_001_56fc:
    ldh [$bd], a
    ld a, [$d14d]
    ld e, a
    ld hl, $001a
    add hl, bc
    ld a, [hl]
    ld hl, $0018
    add hl, bc
    add [hl]
    add e
    cp $f0
    jr nc, jr_001_5715

    cp $90
    jr nc, jr_001_5768

jr_001_5715:
    and $07
    ld e, $02
    cp $04
    jr c, jr_001_571f

    ld e, $03

jr_001_571f:
    ld a, [hl]
    srl a
    srl a
    srl a
    cp $12
    jr c, jr_001_572c

    sub $20

jr_001_572c:
    ldh [$be], a
    ld hl, $0006
    add hl, bc
    bit 7, [hl]
    jr z, jr_001_573e

    ld a, d
    add $02
    ld d, a
    ld a, e
    add $02
    ld e, a

jr_001_573e:
    ld a, d
    ldh [$bf], a

jr_001_5741:
    ldh a, [$bf]
    ld d, a
    ldh a, [$be]
    add e
    dec a
    cp $12
    jr nc, jr_001_5763

    ld b, a

jr_001_574d:
    ldh a, [$bd]
    add d
    dec a
    cp $14
    jr nc, jr_001_5760

    ld c, a
    push bc
    call $1d05
    pop bc
    ld a, [hl]
    cp $60
    jr nc, jr_001_5768

jr_001_5760:
    dec d
    jr nz, jr_001_574d

jr_001_5763:
    dec e
    jr nz, jr_001_5741

    and a
    ret


Jump_001_5768:
jr_001_5768:
    scf
    ret


    call Call_001_5771
    call Call_001_5781
    ret


Call_001_5771:
    xor a
    ld [$d14e], a
    ld [$d14f], a
    ld [$d150], a
    ld a, $ff
    ld [$d151], a
    ret


Call_001_5781:
    ld bc, $d4d6
    xor a

jr_001_5785:
    ldh [$af], a
    call $1af1
    jr z, jr_001_578f

    call Call_001_437b

jr_001_578f:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$af]
    inc a
    cp $0d
    jr nz, jr_001_5785

    ret


    ld a, $3e
    ld [$c2de], a
    ld [$c2df], a
    xor a
    ld [$d04e], a
    ld [$d4e2], a
    call Call_001_57bc
    ld a, $05
    ld hl, $49c6
    rst $08
    call c, Call_001_57d9
    call Call_001_57ca
    ret


Call_001_57bc:
    ld hl, $d45b
    bit 7, [hl]
    jr nz, jr_001_57c4

    ret


jr_001_57c4:
    ld a, $00
    ld [$d4e1], a
    ret


Call_001_57ca:
    ld hl, $d45b
    bit 5, [hl]
    ret z

    ld a, [$d45b]
    and $03
    add a
    add a
    jr jr_001_57db

Call_001_57d9:
    ld a, $00

jr_001_57db:
    ld bc, $d4d6
    call $1af8
    ret


    ld a, d
    and $80
    ret z

    ld bc, $0000
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    or d
    ld [hl], a
    ld a, d
    swap a
    and $07
    ld d, a
    ld bc, $d4d6
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    and $f8
    or d
    ld [hl], a
    ret


    push bc
    ld a, b
    call Call_001_5815
    pop bc
    ret c

    ld a, c
    call Call_001_582c
    ld a, $02
    ld hl, $448a
    rst $08
    ret


Call_001_5815:
    call $18de
    ret c

    ldh a, [$b0]
    ld [$d4cd], a
    ret


    call Call_001_5826
    call Call_001_5847
    ret


Call_001_5826:
    ld a, $ff
    ld [$d4cd], a
    ret


Call_001_582c:
    push af
    call Call_001_5847
    pop af
    call $18de
    ret c

    ld hl, $0003
    add hl, bc
    ld [hl], $13
    ld hl, $0009
    add hl, bc
    ld [hl], $00
    ldh a, [$b0]
    ld [$d4ce], a
    ret


Call_001_5847:
    ld a, [$d4ce]
    cp $ff
    ret z

    call $1ae5
    ld a, $01
    ld hl, $58e3
    rst $08
    ld a, $ff
    ld [$d4ce], a
    ret


    ld a, c
    call $18de
    ret c

    push bc
    call Call_001_587a
    pop bc
    ld hl, $0005
    add hl, bc
    res 5, [hl]
    xor a
    ret


    call $18de
    ret c

    ld hl, $0005
    add hl, bc
    set 5, [hl]
    xor a
    ret


Call_001_587a:
    ld bc, $d4d6
    xor a

jr_001_587e:
    push af
    call $1af1
    jr z, jr_001_588a

    ld hl, $0005
    add hl, bc
    set 5, [hl]

jr_001_588a:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    pop af
    inc a
    cp $0d
    jr nz, jr_001_587e

    ret


    ld a, [$d4cd]
    cp $ff
    ret z

    push bc
    call $1ae5
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    pop bc
    cp c
    ret nz

    ld a, [$d4ce]
    cp $ff
    ret z

    call $1ae5
    ld hl, $0005
    add hl, bc
    res 5, [hl]
    ret


    push bc
    ld bc, $d4d6
    xor a

jr_001_58be:
    push af
    call $1af1
    jr z, jr_001_58ca

    ld hl, $0005
    add hl, bc
    res 5, [hl]

jr_001_58ca:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    pop af
    inc a
    cp $0d
    jr nz, jr_001_58be

    pop bc
    ret


    call $18de
    ret c

    ld hl, $0005
    add hl, bc
    res 5, [hl]
    ret


    ld hl, $0001
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_001_5903

    push bc
    call $18d2
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    pop bc
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $00
    ret


Jump_001_5903:
    call $1b07
    rrca
    rrca
    ld e, a
    ld d, $00
    ld hl, $591c
    add hl, de
    ld a, [hl]
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld [hl], $00
    ret


    ld b, $07
    ld [$fa09], sp
    db $ed
    ret nc

    bit 0, a
    ret z

    xor a
    ldh [$bd], a
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call Call_001_5991
    call Call_001_593a
    pop af
    ldh [$d8], a
    ret


Call_001_593a:
    ld a, [$d0ed]
    bit 1, a
    ld b, $a0
    jr z, jr_001_5945

    ld b, $70

jr_001_5945:
    ldh a, [$bd]
    cp b
    ret nc

    ld l, a
    ld h, $c4
    ld de, $0004
    ld a, b
    ld c, $a0

jr_001_5952:
    ld [hl], c
    add hl, de
    cp l
    jr nz, jr_001_5952

    ret


Call_001_5958:
    push hl
    push de
    push bc
    ld a, [$d14c]
    ld d, a
    ld a, [$d14d]
    ld e, a
    ld bc, $d4d6
    ld a, $0d

jr_001_5968:
    push af
    call $1af1
    jr z, jr_001_597c

    ld hl, $0017
    add hl, bc
    ld a, [hl]
    add d
    ld [hl], a
    ld hl, $0018
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a

jr_001_597c:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    pop af
    dec a
    jr nz, jr_001_5968

    xor a
    ld [$d14c], a
    ld [$d14d], a
    pop bc
    pop de
    pop hl
    ret


Call_001_5991:
    call Call_001_59a4
    ld c, $30
    call Call_001_59f3
    ld c, $20
    call Call_001_59f3
    ld c, $10
    call Call_001_59f3
    ret


Call_001_59a4:
    xor a
    ld hl, $c2eb
    ld bc, $000d
    call $3041
    ld d, $00
    ld bc, $d4d6
    ld hl, $c2eb

jr_001_59b6:
    push hl
    call $1af1
    jr z, jr_001_59d9

    ld hl, $000d
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_59d9

    ld e, $10
    ld hl, $0005
    add hl, bc
    bit 0, [hl]
    jr nz, jr_001_59e2

    ld e, $20
    bit 1, [hl]
    jr z, jr_001_59e2

    ld e, $30
    jr jr_001_59e2

jr_001_59d9:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    jr jr_001_59ec

jr_001_59e2:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, d
    or e
    ld [hl+], a

jr_001_59ec:
    inc d
    ld a, d
    cp $0d
    jr nz, jr_001_59b6

    ret


Call_001_59f3:
    ld hl, $c2eb

jr_001_59f6:
    ld a, [hl+]
    ld d, a
    and $f0
    ret z

    cp c
    jr nz, jr_001_59f6

    push bc
    push hl
    ld a, d
    and $0f
    call Call_001_5ac2
    call Call_001_5a0d
    pop hl
    pop bc
    jr jr_001_59f6

Call_001_5a0d:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and $7f
    ldh [$c1], a
    xor a
    bit 7, [hl]
    jr nz, jr_001_5a1d

    or $08

jr_001_5a1d:
    ld hl, $0005
    add hl, bc
    ld e, [hl]
    bit 7, e
    jr z, jr_001_5a28

    or $80

jr_001_5a28:
    bit 4, e
    jr z, jr_001_5a2e

    or $10

jr_001_5a2e:
    ld hl, $0006
    add hl, bc
    ld d, a
    ld a, [hl]
    and $07
    or d
    ld d, a
    xor a
    bit 3, e
    jr z, jr_001_5a3f

    or $80

jr_001_5a3f:
    ldh [$c2], a
    ld hl, $0017
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    add [hl]
    add $08
    ld e, a
    ld a, [$d14c]
    add e
    ldh [$bf], a
    ld hl, $0018
    add hl, bc
    ld a, [hl]
    ld hl, $001a
    add hl, bc
    add [hl]
    add $0c
    ld e, a
    ld a, [$d14d]
    add e
    ldh [$c0], a
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_001_5abe

    cp $20
    jp nc, Jump_001_5abe

    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4049
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$bd]
    ld c, a
    ld b, $c4
    ld a, [hl+]
    ldh [$be], a
    add c
    cp $a0
    jr nc, jr_001_5ac0

jr_001_5a8e:
    ldh a, [$c0]
    add [hl]
    inc hl
    ld [bc], a
    inc c
    ldh a, [$bf]
    add [hl]
    inc hl
    ld [bc], a
    inc c
    ld e, [hl]
    inc hl
    ldh a, [$c1]
    bit 2, e
    jr z, jr_001_5aa3

    xor a

jr_001_5aa3:
    add [hl]
    inc hl
    ld [bc], a
    inc c
    ld a, e
    bit 1, a
    jr z, jr_001_5aaf

    ldh a, [$c2]
    or e

jr_001_5aaf:
    and $f0
    or d
    ld [bc], a
    inc c
    ldh a, [$be]
    dec a
    ldh [$be], a
    jr nz, jr_001_5a8e

    ld a, c
    ldh [$bd], a

Jump_001_5abe:
    xor a
    ret


jr_001_5ac0:
    scf
    ret


Call_001_5ac2:
    ld c, a
    ld b, $00
    ld hl, $5ace
    add hl, bc
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ret


    sub $d4
    cp $d4
    ld h, $d5
    ld c, [hl]
    push de
    db $76
    push de
    sbc [hl]
    push de
    add $d5
    xor $d5
    ld d, $d6
    ld a, $d6
    ld h, [hl]
    sub $8e
    sub $b6
    sub $11
    nop
    nop
    call $3b97
    call $045a
    ld de, $0054
    ld a, e
    ld [$c2c0], a
    call $3b97
    ld a, $12
    ld hl, $5cdc
    rst $08
    jp Jump_001_6219


    ret


    push de
    ld hl, $5b1c
    ld a, b
    call $3411
    ld d, h
    ld e, l
    pop hl
    call $1078
    ld h, b
    ld l, c
    ld de, $5b40
    call $1078
    ret


    sub d
    sub h
    adc l
    ld d, b
    adc h
    adc [hl]
    adc l
    ld d, b
    sub e
    sub h
    add h
    sub d
    ld d, b
    sub [hl]
    add h
    add e
    adc l
    add h
    sub d
    ld d, b
    sub e
    add a
    sub h
    sub c
    sub d
    ld d, b
    add l
    sub c
    adc b
    ld d, b
    sub d
    add b
    sub e
    sub h
    sub c
    ld d, b
    add e
    add b
    sbc b
    ld d, b

Call_001_5b44:
    xor a
    ldh [$de], a
    call $0fc8
    call $0e5f
    call $0e51
    call $1fbf
    ret


    call $05a7
    ld a, $04
    ld hl, $5548
    rst $08
    ld a, $41
    ld hl, $48ba
    rst $08
    ret


    ld a, $39
    ld hl, $41d0
    rst $08
    ret


    xor a
    ld [$c2cc], a
    call Call_001_5ba7
    call Call_001_5b44
    call Call_001_5b8f
    call Call_001_5f99
    call Call_001_5d23
    ld a, $01
    ld [$c2d8], a
    ld a, $00
    ld [$d001], a
    ld a, $f1
    ldh [$9f], a
    jp Jump_001_5e5d


Call_001_5b8f:
    ld a, $41
    ld hl, $632f
    rst $08
    jr c, jr_001_5b9e

    ld a, $12
    ld hl, $4dcb
    rst $08
    ret


jr_001_5b9e:
    ld c, $00
    ld a, $12
    ld hl, $402f
    rst $08
    ret


Call_001_5ba7:
    xor a
    ldh [$d4], a
    call Call_001_5bae
    ret


Call_001_5bae:
    ld hl, $c400
    ld bc, $0bcc
    xor a
    call $3041
    ld hl, $d000
    ld bc, $047b
    xor a
    call $3041
    ld hl, $d47b
    ld bc, $0b7a
    xor a
    call $3041
    ldh a, [rLY]
    ldh [$e3], a
    call $045a
    ldh a, [$e2]
    ld [$d47b], a
    ldh a, [rLY]
    ldh [$e3], a
    call $045a
    ldh a, [$e1]
    ld [$d47c], a
    call $2f8c
    ld [$d84a], a
    call $045a
    call $2f8c
    ld [$d84b], a
    ld hl, $dcd7
    call Call_001_5ca1
    xor a
    ld [$db72], a
    ld [$d4b4], a
    call Call_001_5ca6
    ld a, $01
    call $2fcb
    ld hl, $ad10
    call Call_001_5ca1
    call $2fe1
    ld hl, $d892
    call Call_001_5ca1
    ld hl, $d8bc
    call Call_001_5ca1
    ld hl, $d8d7
    call Call_001_5ca1
    ld hl, $d8f1
    call Call_001_5ca1
    xor a
    ld [$dfcf], a
    ld [$dfd6], a
    ld [$dfdd], a
    ld a, $ff
    ld [$dfd1], a
    ld [$dfd8], a
    ld [$dfdf], a
    ld [$dfd2], a
    ld [$dfd9], a
    ld [$dfe0], a
    ld a, $00
    call $2fcb
    ld hl, $abe2
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    call $2fe1
    call Call_001_5d33
    call Call_001_5cd3
    xor a
    ld [$cf5f], a
    ld [$d857], a
    ld [$d858], a
    ld [$d855], a
    ld [$d856], a
    ld [$d84e], a
    ld a, $0b
    ld [$d84f], a
    ld a, $b8
    ld [$d850], a
    xor a
    ld [$dc17], a
    ld hl, $dc19
    ld [hl], $00
    inc hl
    ld [hl], $08
    inc hl
    ld [hl], $fc
    call Call_001_5ce9
    ld a, $09
    ld hl, $6751
    rst $08
    ld a, $11
    ld hl, $4765
    rst $08
    ld a, $41
    ld hl, $61c0
    rst $08
    call $208a
    ret


Call_001_5ca1:
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ret


Call_001_5ca6:
    ld hl, $db75
    ld c, $00

jr_001_5cab:
    push hl
    ld de, $5ccf
    call $30d9
    dec hl
    ld a, c
    inc a
    cp $0a
    jr c, jr_001_5cbe

    sub $0a
    ld [hl], $f7
    inc hl

jr_001_5cbe:
    add $f6
    ld [hl+], a
    ld [hl], $50
    pop hl
    ld de, $0009
    add hl, de
    inc c
    ld a, c
    cp $0e
    jr c, jr_001_5cab

    ret


    add c
    adc [hl]
    sub a
    ld d, b

Call_001_5cd3:
    ld hl, $dfe8
    ld a, $03
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld de, $5ce3
    call $30d9
    ret


    sub c
    add b
    adc e
    adc a
    add a
    ld d, b

Call_001_5ce9:
    ld hl, $5d11
    ld de, $d493
    call Call_001_5d0a
    ld hl, $5d1f
    ld de, $d488
    call Call_001_5d0a
    ld hl, $5d15
    ld de, $d49e
    call Call_001_5d0a
    ld hl, $5d19
    ld de, $d4a9

Call_001_5d0a:
    ld bc, $000b
    call $3026
    ret


    and $e6
    and $50
    sub c
    add h
    add e
    ld d, b
    add [hl]
    sub c
    add h
    add h
    adc l
    ld d, b
    adc h
    adc [hl]
    adc h
    ld d, b

Call_001_5d23:
    call Call_001_610f
    ld a, $02
    ld hl, $4029
    rst $08
    ld a, $04
    ld hl, $53d6
    rst $08
    ret


Call_001_5d33:
    ld a, $00
    call $2fcb
    ld a, [$d4cb]
    inc a
    ld b, a
    ld a, [$ac68]
    cp b
    ld a, [$ac6a]
    ld c, a
    ld a, [$ac69]
    jr z, jr_001_5d55

    ld a, b
    ld [$ac68], a
    call $2f8c
    ld c, a
    call $2f8c

jr_001_5d55:
    ld [$dc9f], a
    ld [$ac69], a
    ld a, c
    ld [$dca0], a
    ld [$ac6a], a
    jp $2fe1


    ld a, $05
    ld hl, $4ea5
    rst $08
    jr c, jr_001_5dd6

    ld a, $05
    ld hl, $50b9
    rst $08
    call $1d6e
    call Call_001_5e85
    ld a, $01
    ldh [$d4], a
    ld c, $14
    call $0468
    call Call_001_5e34
    jr nc, jr_001_5d8c

    call $1c17
    jr jr_001_5dd6

jr_001_5d8c:
    call Call_001_5e48
    jr nc, jr_001_5d96

    call $1c17
    jr jr_001_5dd6

jr_001_5d96:
    ld a, $08
    ld [$c2a7], a
    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    call $31f3
    call Call_001_5df0
    call $1c17
    call $0fc8
    ld c, $14
    call $0468
    ld a, $0a
    ld hl, $6394
    rst $08
    ld a, $41
    ld hl, $5091
    rst $08
    ld a, $05
    ld hl, $40ae
    rst $08
    ld a, [$d4b5]
    cp $01
    jr z, jr_001_5dd7

    ld a, $f2
    ldh [$9f], a
    jp Jump_001_5e5d


jr_001_5dd6:
    ret


jr_001_5dd7:
    ld a, $0e
    ld [$d001], a
    call Call_001_5de7
    jp Jump_001_5e5d


Call_001_5de2:
    ld a, $1a
    ld [$d001], a

Call_001_5de7:
    xor a
    ld [$d4b5], a
    ld a, $f1
    ldh [$9f], a
    ret


Call_001_5df0:
    ld a, $41
    ld hl, $632f
    rst $08
    ret nc

    ld hl, $d479
    bit 1, [hl]
    ret nz

    ld a, $05
    ld [$c2a7], a
    ld a, $5e
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld c, $14
    call $0468
    ld c, $01
    ld a, $12
    ld hl, $402f
    rst $08
    ld a, $05
    ld hl, $509a
    rst $08
    ld a, $08
    ld [$c2a7], a
    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld c, $23
    call $0468
    ret


Call_001_5e34:
jr_001_5e34:
    call $045a
    call $0984
    ld hl, $ffa7
    bit 0, [hl]
    jr nz, jr_001_5e47

    bit 1, [hl]
    jr z, jr_001_5e34

    scf
    ret


jr_001_5e47:
    ret


Call_001_5e48:
    call $06e3
    and $80
    jr z, jr_001_5e5b

    ld a, $08
    ld hl, $4021
    rst $08
    ld a, c
    and a
    jr z, jr_001_5e5b

    scf
    ret


jr_001_5e5b:
    xor a
    ret


Jump_001_5e5d:
jr_001_5e5d:
    xor a
    ld [$c2c1], a
    ld [$c2dc], a
    ld hl, $cfbc
    set 0, [hl]
    res 7, [hl]
    ld hl, $d83e
    set 1, [hl]
    ld a, $25
    ld hl, $66b0
    rst $08
    ld a, [$d4b5]
    cp $02
    jr z, jr_001_5e80

    jp $0150


jr_001_5e80:
    call Call_001_5de2
    jr jr_001_5e5d

Call_001_5e85:
    call $06e3
    and $80
    jr z, jr_001_5e93

    ld de, $0408
    call Call_001_5eaf
    ret


jr_001_5e93:
    ld de, $0408
    call Call_001_5e9f
    ret


    ld de, $0400
    jr jr_001_5e9f

Call_001_5e9f:
jr_001_5e9f:
    call Call_001_5ebf
    call Call_001_5f1c
    call Call_001_5f40
    call $0e5f
    call $1ad2
    ret


Call_001_5eaf:
    call Call_001_5ebf
    call Call_001_5f1c
    call Call_001_5f48
    call $0e5f
    call $1ad2
    ret


Call_001_5ebf:
    xor a
    ldh [$d4], a
    ld hl, $5ed9
    ld a, [$d84c]
    bit 0, a
    jr nz, jr_001_5ecf

    ld hl, $5efb

jr_001_5ecf:
    call $1e35
    call $1cbb
    call $1c89
    ret


    ld b, b
    nop
    nop
    add hl, bc
    rrca
    pop hl
    ld e, [hl]
    ld bc, $0400
    adc a
    adc e
    add b
    sbc b
    add h
    sub c
    ld d, b
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld d, b
    ld d, h
    add e
    add h
    sub a
    ld d, b
    sub e
    adc b
    adc h
    add h
    ld d, b
    ld b, b
    nop
    nop
    add hl, bc
    rrca
    inc bc
    ld e, a
    ld bc, $0400
    adc a
    adc e
    add b
    sbc b
    add h
    sub c
    ld a, a
    ld d, d
    ld d, b
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld d, b
    ld a, a
    ld d, b
    sub e
    adc b
    adc h
    add h
    ld d, b

Call_001_5f1c:
    call $1cfd
    push hl
    ld de, $005d
    add hl, de
    call Call_001_5f58
    pop hl
    push hl
    ld de, $0084
    add hl, de
    call Call_001_5f6b
    pop hl
    push hl
    ld de, $0030
    add hl, de
    ld de, $5f3e
    call $1078
    pop hl
    ret


    ld d, d
    ld d, b

Call_001_5f40:
    ld de, $00a9
    add hl, de
    call Call_001_5f84
    ret


Call_001_5f48:
    ld de, $00a9
    add hl, de
    ld de, $5f53
    call $1078
    ret


    ld a, a
    and $e6
    and $50

Call_001_5f58:
    push hl
    ld hl, $d857
    ld b, $02
    call $335f
    pop hl
    ld de, $d265
    ld bc, $0102
    jp $3198


Call_001_5f6b:
    ld a, [$d84c]
    bit 0, a
    ret z

    push hl
    ld hl, $de99
    ld b, $20
    call $335f
    pop hl
    ld de, $d265
    ld bc, $0103
    jp $3198


Call_001_5f84:
    ld de, $d4c4
    ld bc, $0203
    call $3198
    ld [hl], $6d
    inc hl
    ld de, $d4c6
    ld bc, $8102
    jp $3198


Call_001_5f99:
    ld a, $24
    ld hl, $4672
    rst $08
    call $04dd
    call $0fc8
    ld de, $002b
    call $3b97
    call $04a3
    call $04b6
    xor a
    ld [$d108], a
    ld a, $0a
    ld [$d233], a
    call Call_001_619c
    ld b, $1c
    call $3340
    call Call_001_616a
    ld hl, $6045
    call $1057
    call $04b6
    call $0fc8
    ld a, $c2
    ld [$cf60], a
    ld [$d108], a
    call $3856
    ld hl, $c4f6
    call $3786
    xor a
    ld [$d123], a
    ld [$d124], a
    ld b, $1c
    call $3340
    call Call_001_6182
    ld hl, $604a
    call $1057
    ld hl, $6060
    call $1057
    call $04b6
    call $0fc8
    xor a
    ld [$d108], a
    ld a, $0a
    ld [$d233], a
    call Call_001_619c
    ld b, $1c
    call $3340
    call Call_001_616a
    ld hl, $6065
    call $1057
    call $04b6
    call $0fc8
    xor a
    ld [$d108], a
    ld a, $22
    ld hl, $4874
    rst $08
    ld b, $1c
    call $3340
    call Call_001_616a
    ld hl, $606a
    call $1057
    call Call_001_6074
    ld hl, $606f
    call $1057
    ret


    ld d, $35
    ld e, l
    ld [hl], b
    ld d, b
    ld d, $a4
    ld e, l
    ld [hl], b
    ld [$c23e], sp
    call $37ce
    call $3c55
    ld hl, $605b
    ret


    ld d, $e2
    ld e, l
    ld [hl], b
    ld d, b
    ld d, $e5
    ld e, l
    ld [hl], b
    ld d, b
    ld d, $51
    ld e, [hl]
    ld [hl], b
    ld d, b
    ld d, $00
    ld b, b
    ld [hl], c
    ld d, b
    ld d, $26
    ld b, b
    ld [hl], c
    ld d, b

Call_001_6074:
    ld a, $22
    ld hl, $4258
    rst $08
    ld a, $22
    ld hl, $4297
    rst $08
    ld a, [$cfa9]
    dec a
    jr z, jr_001_6096

    call Call_001_60fa
    ld a, $02
    ld hl, $4c1d
    rst $08
    ld a, $22
    ld hl, $4260
    rst $08
    ret


jr_001_6096:
    ld b, $01
    ld de, $d47d
    ld a, $04
    ld hl, $56c1
    rst $08
    call $04b6
    call $0fc8
    call $0e5f
    call $31f6
    xor a
    ld [$d108], a
    ld a, $22
    ld hl, $4874
    rst $08
    ld b, $1c
    call $3340
    call $04f0
    ld hl, $d47d
    ld de, $60d3
    ld a, [$d472]
    bit 0, a
    jr z, jr_001_60cf

    ld de, $60de

jr_001_60cf:
    call $2ef9
    ret


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
    adc d
    sub c
    adc b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call $1d35
    call $1d81
    ld a, [$cfa9]
    dec a
    call $1db8
    call $1c17
    ret


Call_001_60fa:
    ld a, $50
    ld bc, $000b
    ld hl, $d47d
    call $3041
    ld hl, $d47d
    ld de, $d086
    call $30d9
    ret


Call_001_610f:
    ldh a, [$9d]
    push af
    ld a, $20
    ld [$c2a7], a
    ld de, $0000
    ld a, e
    ld [$c2a9], a
    ld a, d
    ld [$c2aa], a
    ld de, $0010
    call $3c23
    pop af
    rst $10
    ld c, $08
    call $0468
    ld hl, $5249
    ld b, $13
    call Call_001_61b4
    ld c, $08
    call $0468
    ld hl, $52d9
    ld b, $13
    call Call_001_61b4
    ld c, $08
    call $0468
    ld hl, $c50a
    ld b, $07
    ld c, $07
    call $0fb6
    ld c, $03
    call $0468
    call Call_001_61cd
    call $0e5f
    ld c, $32
    call $0468
    call $04b6
    call $0fc8
    ret


Call_001_616a:
    ld hl, $617c
    ld b, $06

jr_001_616f:
    ld a, [hl+]
    call $0c9f
    ld c, $0a
    call $0468
    dec b
    jr nz, jr_001_616f

    ret


    ld d, h
    xor b
    db $fc
    ld hl, sp-$0c
    db $e4

Call_001_6182:
    ld a, $77
    ldh [$d1], a
    call $045a
    ld a, $e4
    call $0c9f

jr_001_618e:
    call $045a
    ldh a, [$d1]
    sub $08
    cp $ff
    ret z

    ldh [$d1], a
    jr jr_001_618e

Call_001_619c:
    ld de, $9000
    ld a, $14
    ld hl, $520d
    rst $08
    xor a
    ldh [$ad], a
    ld hl, $c4f6
    ld bc, $0707
    ld a, $13
    call $2d83
    ret


Call_001_61b4:
    ld de, $9000
    ld c, $31
    ld a, $40
    call $2d83
    xor a
    ldh [$ad], a
    ld hl, $c4f6
    ld bc, $0707
    ld a, $13
    call $2d83
    ret


Call_001_61cd:
    ld a, $22
    ld hl, $432c
    rst $08
    ld c, $0c
    ld hl, $8000
    call $0eba
    ld hl, $c400
    ld de, $61fe
    ld a, [de]
    inc de
    ld c, a

jr_001_61e4:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld b, $00
    ld a, [$d472]
    bit 0, a
    jr z, jr_001_61f8

    ld b, $01

jr_001_61f8:
    ld a, b
    ld [hl+], a
    dec c
    jr nz, jr_001_61e4

    ret


    inc b
    ld c, h
    ld c, b
    nop
    ld c, h
    ld d, b
    ld bc, $4854
    ld [bc], a
    ld d, h
    ld d, b
    inc bc

Jump_001_620b:
    ld hl, $4579
    ld a, $39
    rst $08
    jr c, jr_001_6219

    ld a, $39
    ld hl, $48ac
    rst $08

Jump_001_6219:
jr_001_6219:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_001_6274
    call $045a

jr_001_6226:
    call Call_001_627b
    jr nc, jr_001_6226

    call $300b
    call $31f3
    pop af
    ldh [rSVBK], a
    ld hl, $ff40
    res 2, [hl]
    call $0fdb
    call $3200
    xor a
    ldh [$c6], a
    ldh [$cf], a
    ldh [$d0], a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    ld b, $08
    call $3340
    call $0485
    ld a, [$cf64]
    cp $05
    jr c, jr_001_625e

    xor a

jr_001_625e:
    ld e, a
    ld d, $00
    ld hl, $626a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add sp, $5a
    adc c
    ld h, e
    dec bc
    ld h, d
    dec bc
    ld h, d
    sub d
    ld h, e

Call_001_6274:
    ld a, $43
    ld hl, $6d67
    rst $08
    ret


Call_001_627b:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_001_6290

    call Call_001_62a3
    ld a, $43
    ld hl, $6ea7
    rst $08
    call $045a
    and a
    ret


jr_001_6290:
    scf
    ret


    ldh a, [$9b]
    and $07
    ret nz

    ld hl, $d15f
    ld a, [hl]
    dec a
    ld bc, $0028
    call $3041
    ret


Call_001_62a3:
    ld e, a
    ld d, $00
    ld hl, $62af
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp h
    ld h, d
    or $62
    inc b
    ld h, e
    ld [hl], l
    ld h, e
    ld hl, $cf63
    inc [hl]
    ret


    ldh a, [$cf]
    and a
    jr z, jr_001_62e4

    sub $04
    ldh [$cf], a
    ld e, a
    ld hl, $d100
    ld bc, $0050
    call $3041
    ld a, e
    xor $ff
    inc a
    ld b, $28
    ld hl, $d101

jr_001_62d8:
    ld [hl+], a
    inc hl
    dec b
    jr nz, jr_001_62d8

    ld a, $43
    ld hl, $6f32
    rst $08
    ret


jr_001_62e4:
    ld hl, $cf63
    inc [hl]
    xor a
    ldh [$c6], a
    ld de, $0001
    call $3b97
    ld a, $88
    ldh [$d2], a
    ret


    ld hl, $cf63
    inc [hl]
    ld hl, $cf65
    ld de, $1140
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld hl, $cf65
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    or d
    jr z, jr_001_6355

    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    call $0984
    ld hl, $ffa8
    ld a, [hl]
    and $46
    cp $46
    jr z, jr_001_634a

    ldh a, [$eb]
    cp $34
    jr z, jr_001_6332

    ld a, [hl]
    and $86
    cp $86
    jr nz, jr_001_6340

    ld a, $34
    ldh [$eb], a
    jr jr_001_6340

jr_001_6332:
    bit 2, [hl]
    jr nz, jr_001_6340

    xor a
    ldh [$eb], a
    ld a, [hl]
    and $60
    cp $60
    jr z, jr_001_636a

jr_001_6340:
    ld a, [hl]
    and $09
    jr nz, jr_001_6346

    ret


jr_001_6346:
    ld a, $00
    jr jr_001_634c

jr_001_634a:
    ld a, $01

jr_001_634c:
    ld [$cf64], a
    ld hl, $cf63
    set 7, [hl]
    ret


jr_001_6355:
    ld hl, $cf63
    inc [hl]
    xor a
    ld [$c2a9], a
    ld [$c2aa], a
    ld hl, $c2a7
    ld [hl], $08
    ld hl, $cf65
    inc [hl]
    ret


jr_001_636a:
    ld a, $04
    ld [$cf64], a
    ld hl, $cf63
    set 7, [hl]
    ret


    ld hl, $cf65
    inc [hl]
    ld a, [$c2a7]
    and a
    ret nz

    ld a, $02
    ld [$cf64], a
    ld hl, $cf63
    set 7, [hl]
    ret


    ld a, $13
    ld hl, $554c
    rst $08
    jp $017d


    ld a, $13
    ld hl, $53b1
    rst $08
    jp $017d


    ld a, [$cf65]
    and $03
    ret nz

    ld bc, $c3a4
    ld hl, $000a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $63ca
    add hl, de
    ld a, [$cf65]
    and $04
    srl a
    srl a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    and a
    ret z

    ld e, a
    ld d, [hl]
    ld a, $01
    call $3b2a
    ret


    ld e, h
    ld d, b
    nop
    nop
    ld e, h
    ld l, b
    ld e, h
    ld e, b
    ld e, h
    ld l, b
    ld e, h
    ld a, b
    ld e, h
    adc b
    ld e, h
    ld a, b
    nop
    nop
    ld e, h
    ld a, b
    nop
    nop
    ld e, h
    ld e, b
    call $0fc8
    call $0e5f
    ld de, $4000
    ld hl, $9600
    ld bc, $391d
    call $0eba
    ld hl, $c52e
    ld de, $63fd
    jp $1078


    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, d
    ld a, e
    ld a, h
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld d, b
    ld a, $05
    ld hl, $4f1c
    rst $08
    call $1fbf
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
    jp Jump_001_620b


    call $045a
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    call Call_001_6473
    pop af
    ldh [$d4], a
    pop af
    ldh [$d8], a
    ld hl, $d0ed
    set 6, [hl]
    ret


Call_001_6473:
    xor a
    ldh [$c6], a
    ldh [$d4], a
    ld a, $90
    ldh [$d2], a
    call $2173
    ld a, $9c
    call Call_001_64b9
    call $2e20
    ld a, $12
    ld hl, $5409
    rst $08
    ld a, $02
    ld hl, $56a4
    rst $08
    ld a, $01
    ldh [$e5], a
    xor a
    ldh [$d4], a
    ldh [$d2], a
    ld a, $01
    ld hl, $64db
    rst $08
    ld a, $98
    call Call_001_64b9
    xor a
    ld [$d152], a
    ld a, $98
    ld [$d153], a
    xor a
    ldh [$cf], a
    ldh [$d0], a
    call Call_001_5958
    ret


Call_001_64b9:
    ldh [$d7], a
    xor a
    ldh [$d6], a
    ret


    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call Call_001_64cd
    pop af
    ldh [$d8], a
    ret


Call_001_64cd:
    call $0e5f
    ld a, $90
    ldh [$d2], a
    call $2e31
    call $0e51
    ret


    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld a, $60
    ld hl, $d000
    ld bc, $0400
    call $3041
    ld a, $d0
    ldh [rHDMA1], a
    ld a, $00
    ldh [rHDMA2], a
    ld a, $18
    ldh [rHDMA3], a
    ld a, $00
    ldh [rHDMA4], a
    ld a, $3f
    ldh [$e8], a
    call $045a
    pop af
    ldh [rSVBK], a
    ret


    call $309d
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026

Jump_001_6520:
    ld hl, $dce1
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld d, h
    ld e, l
    ld b, $04

jr_001_6530:
    ld a, [hl]
    and a
    jr z, jr_001_6564

    inc hl
    dec b
    jr nz, jr_001_6530

    push de
    call Call_001_65d3
    pop de
    jp c, Jump_001_65b5

    push hl
    push de
    ld [$d265], a
    ld b, a
    ld a, [$d22d]
    and a
    jr z, jr_001_6559

    ld a, [$c6f5]
    cp b
    jr nz, jr_001_6559

    xor a
    ld [$c6f5], a
    ld [$c675], a

jr_001_6559:
    call $34f8
    ld hl, $6684
    call $1057
    pop de
    pop hl

jr_001_6564:
    ld a, [$d262]
    ld [hl], a
    ld bc, $0015
    add hl, bc
    push hl
    push de
    dec a
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    pop de
    pop hl
    ld [hl], a
    ld a, [$d22d]
    and a
    jp z, Jump_001_65ca

    ld a, [$d109]
    ld b, a
    ld a, [$d0d4]
    cp b
    jp nz, Jump_001_65ca

    ld a, [$c66c]
    bit 3, a
    jp nz, Jump_001_65ca

    ld h, d
    ld l, e
    ld de, $c62e
    ld bc, $0004
    call $3026
    ld bc, $0011
    add hl, bc
    ld de, $c634
    ld bc, $0004
    call $3026
    jp Jump_001_65ca


Jump_001_65b5:
    ld hl, $6675
    call $1057
    call $1dcf
    jp c, Jump_001_6520

    ld hl, $667a
    call $1057
    ld b, $00
    ret


Jump_001_65ca:
    ld hl, $666b
    call $1057
    ld b, $01
    ret


Call_001_65d3:
    push hl
    ld hl, $667f
    call $1057
    call $1dcf
    pop hl
    ret c

    ld bc, $fffc
    add hl, bc
    push hl
    ld de, $d25e
    ld bc, $0004
    call $3026
    pop hl

jr_001_65ee:
    push hl
    ld hl, $6670
    call $1057
    ld hl, $c4cd
    ld b, $08
    ld c, $0d
    call $0fe8
    ld hl, $c4f7
    ld a, $28
    ld [$d1ea], a
    ld a, $20
    call $2d83
    ld a, $04
    ld [$cfa1], a
    ld a, $06
    ld [$cfa2], a
    ld a, [$d0eb]
    inc a
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld [$cfa9], a
    ld [$cfaa], a
    ld a, $03
    ld [$cfa8], a
    ld a, $20
    ld [$cfa5], a
    xor a
    ld [$cfa6], a
    ld a, $20
    ld [$cfa7], a
    call $1bc9
    push af
    call $30b4
    pop af
    pop hl
    bit 1, a
    jr nz, jr_001_6669

    push hl
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    push af
    push bc
    call $34e7
    pop bc
    pop de
    ld a, d
    jr c, jr_001_6660

    pop hl
    add hl, bc
    and a
    ret


jr_001_6660:
    ld hl, $669a
    call $1057
    pop hl
    jr jr_001_65ee

jr_001_6669:
    scf
    ret


    ld d, $60
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld d, $78
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld d, $99
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld d, $af
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld d, $c9
    ld d, [hl]
    ld [hl], c
    ld d, b
    ld d, $40
    ld d, a
    ld [hl], c
    ld [$11d5], sp
    jr nz, jr_001_668d

jr_001_668d:
    call $3c23
    pop de
    ld hl, $6695
    ret


    ld d, $4e
    ld d, a
    ld [hl], c
    ld d, b
    ld d, $72
    ld d, a
    ld [hl], c
    ld d, b
    push bc
    push de
    ld b, $0b

jr_001_66a3:
    ld a, [de]
    cp $50
    jr z, jr_001_66cc

    ld hl, $66cf
    dec hl

jr_001_66ac:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_001_66bf

    ld a, [de]
    cp [hl]
    inc hl
    jr c, jr_001_66ac

    cp [hl]
    jr nc, jr_001_66ac

    ld a, $e6
    ld [de], a
    jr jr_001_66ac

jr_001_66bf:
    inc de
    dec b
    jr nz, jr_001_66a3

    pop de
    push de
    ld a, $e6
    ld [de], a
    inc de
    ld a, $50
    ld [de], a

jr_001_66cc:
    pop de
    pop bc
    ret


    nop
    dec b
    inc d
    add hl, de
    dec e
    ld h, $35
    ld a, [hl-]
    ccf
    ld b, b
    ld c, c
    ld e, l
    ld e, [hl]
    ld a, a
    rst $38
    ld a, $08
    ld b, a
    xor a
    ldh [$b3], a
    ldh [$b9], a
    ldh [$ba], a
    ldh [$bb], a
    ldh [$bc], a

jr_001_66ec:
    ldh a, [$b7]
    srl a
    ldh [$b7], a
    jr nc, jr_001_6714

    ldh a, [$bc]
    ld c, a
    ldh a, [$b6]
    add c
    ldh [$bc], a
    ldh a, [$bb]
    ld c, a
    ldh a, [$b5]
    adc c
    ldh [$bb], a
    ldh a, [$ba]
    ld c, a
    ldh a, [$b4]
    adc c
    ldh [$ba], a
    ldh a, [$b9]
    ld c, a
    ldh a, [$b3]
    adc c
    ldh [$b9], a

jr_001_6714:
    dec b
    jr z, jr_001_672d

    ldh a, [$b6]
    add a
    ldh [$b6], a
    ldh a, [$b5]
    rla
    ldh [$b5], a
    ldh a, [$b4]
    rla
    ldh [$b4], a
    ldh a, [$b3]
    rla
    ldh [$b3], a
    jr jr_001_66ec

jr_001_672d:
    ldh a, [$bc]
    ldh [$b6], a
    ldh a, [$bb]
    ldh [$b5], a
    ldh a, [$ba]
    ldh [$b4], a
    ldh a, [$b9]
    ldh [$b3], a
    ret


    xor a
    ldh [$b8], a
    ldh [$b9], a
    ldh [$ba], a
    ldh [$bb], a
    ldh [$bc], a
    ld a, $09
    ld e, a

jr_001_674c:
    ldh a, [$b8]
    ld c, a
    ldh a, [$b4]
    sub c
    ld d, a
    ldh a, [$b7]
    ld c, a
    ldh a, [$b3]
    sbc c
    jr c, jr_001_6767

    ldh [$b3], a
    ld a, d
    ldh [$b4], a
    ldh a, [$bc]
    inc a
    ldh [$bc], a
    jr jr_001_674c

jr_001_6767:
    ld a, b
    cp $01
    jr z, jr_001_67ac

    ldh a, [$bc]
    add a
    ldh [$bc], a
    ldh a, [$bb]
    rla
    ldh [$bb], a
    ldh a, [$ba]
    rla
    ldh [$ba], a
    ldh a, [$b9]
    rla
    ldh [$b9], a
    dec e
    jr nz, jr_001_6798

    ld e, $08
    ldh a, [$b8]
    ldh [$b7], a
    xor a
    ldh [$b8], a
    ldh a, [$b4]
    ldh [$b3], a
    ldh a, [$b5]
    ldh [$b4], a
    ldh a, [$b6]
    ldh [$b5], a

jr_001_6798:
    ld a, e
    cp $01
    jr nz, jr_001_679e

    dec b

jr_001_679e:
    ldh a, [$b7]
    srl a
    ldh [$b7], a
    ldh a, [$b8]
    rr a
    ldh [$b8], a
    jr jr_001_674c

jr_001_67ac:
    ldh a, [$b4]
    ldh [$b7], a
    ldh a, [$bc]
    ldh [$b6], a
    ldh a, [$bb]
    ldh [$b5], a
    ldh a, [$ba]
    ldh [$b4], a
    ldh a, [$b9]
    ldh [$b3], a
    ret


    nop
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $b0
    inc b
    nop
    nop
    ld b, b
    inc bc
    ld b, $0a
    nop
    ld c, l
    inc d
    ld b, b
    ld bc, $5800
    ld [bc], a
    nop
    nop
    ld b, b
    inc bc
    ld b, $c8
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $99
    sbc c
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    ld [bc], a
    ld h, b
    nop
    nop
    nop
    nop
    ld b, b
    ld bc, $6450
    nop
    nop
    nop
    ld b, b
    ld bc, $fa55
    nop
    nop
    nop
    ld b, b
    ld bc, $fa55
    nop
    nop
    nop
    ld b, b
    ld bc, $fa55
    nop
    nop
    nop
    ld b, b
    ld bc, $c855
    nop
    nop
    nop
    ld b, b
    ld bc, $b855
    dec bc
    nop
    rst $38
    ld b, b
    ld bc, $c455
    add hl, bc
    nop
    rst $38
    ld b, b
    ld bc, $b055
    inc b
    nop
    ret z

    ld b, b
    ld bc, $bc55
    ld [bc], a
    nop
    ld [hl-], a
    ld b, b
    ld bc, $2c55
    ld bc, $1400
    ld b, b
    ld bc, $2655
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, $5e60
    ld bc, $0000
    ld b, b
    ld bc, $9440
    ld de, $ff00
    ld b, b
    ld bc, $3450
    ld [$0000], sp
    ld b, b
    ld bc, $3450
    ld [$0000], sp
    ld b, b
    ld bc, $3450
    ld [$0000], sp
    ld b, b
    ld bc, $9950
    sbc c
    nop
    nop
    nop
    ld bc, $4800
    ld h, $00
    nop
    ld b, b
    ld bc, $4850
    ld h, $00
    nop
    ld b, b
    ld bc, $4850
    ld h, $00
    nop
    ld b, b
    ld bc, $4850
    ld h, $00
    nop
    ld b, b
    ld bc, $0a50
    nop
    nop
    nop
    ld b, b
    ld bc, $4800
    ld h, $00
    nop
    ld b, b
    ld bc, $c050
    ld [de], a
    nop
    nop
    ld b, b
    ld bc, $b650
    inc bc
    nop
    nop
    ld b, b
    ld bc, $3400
    ld [$0000], sp
    ld b, b
    ld bc, $0a50
    nop
    ld a, [hl+]
    ld a, [bc]
    ld b, b
    ld bc, $1000
    daa
    nop
    nop
    ld b, b
    ld bc, $e800
    inc bc
    nop
    nop
    ld b, b
    ld bc, $5806
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, $dc55
    dec b
    nop
    nop
    ld b, b
    ld bc, $a050
    rrca
    nop
    nop
    ld b, b
    ld bc, $bc50
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, $f400
    ld bc, $0000
    ld b, b
    ld bc, $bc40
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, $8a40
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $c800
    nop
    nop
    ld [hl-], a
    ld b, b
    ld bc, $2c55
    ld bc, $3c00
    ld b, b
    ld bc, $5e55
    ld bc, $5000
    ld b, b
    ld bc, $f455
    ld bc, $0000
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $2600
    ld [bc], a
    nop
    nop
    ld b, b
    ld bc, $5e00
    ld bc, $0000
    ld b, b
    ld bc, $5e00
    ld bc, $0000
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    ret nz

    ld [bc], a
    ld b, b
    nop
    nop
    nop
    nop
    add b
    ld [bc], a
    ld h, b
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $b800
    dec bc
    nop
    nop
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    add b
    ld [bc], a
    ld h, b
    nop
    nop
    nop
    nop
    add b
    ld [bc], a
    ld h, b
    add sp, $03
    nop
    nop
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    add b
    ld [bc], a
    ld h, b
    ld c, b
    ld h, $00
    nop
    ld b, b
    ld bc, $b050
    inc b
    nop
    ld a, [bc]
    ld b, b
    ld bc, $d050
    rlca
    nop
    rst $38
    ld b, b
    ld bc, $b850
    dec bc
    nop
    ld a, [bc]
    ld b, b
    ld bc, $0050
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    db $f4
    ld bc, $6400
    ld b, b
    ld bc, $6455
    nop
    ld c, d
    inc a
    ld b, b
    ld bc, $0a00
    nop
    ld a, [bc]
    nop
    ld b, b
    ld bc, $e855
    inc bc
    nop
    nop
    ld b, b
    ld bc, $6400
    nop
    ld [hl], $0a
    ld b, b
    ld bc, $6400
    nop
    inc [hl]
    ld a, [bc]
    ld b, b
    ld bc, $0a00
    nop
    ld c, $00
    ld b, b
    ld bc, $0a55
    nop
    dec bc
    nop
    ld b, b
    ld bc, $0a55
    nop
    inc c
    nop
    ld b, b
    ld bc, $6455
    nop
    dec [hl]
    ld a, [bc]
    ld b, b
    ld bc, $6400
    nop
    ld c, e
    ld e, $40
    ld bc, $0a00
    nop
    stop
    ld b, b
    ld bc, $0a05
    nop
    dec c
    nop
    ld b, b
    ld bc, $c855
    nop
    nop
    nop
    ld b, b
    ld bc, $f400
    ld bc, $0000
    ld b, b
    ld bc, $8800
    inc de
    nop
    nop
    ld b, b
    ld bc, $6400
    nop
    jr c, @+$0c

    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $6400
    nop
    ld c, h
    ld a, [bc]
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $c800
    nop
    ld [$4000], sp
    ld bc, $6400
    nop
    dec sp
    ld a, [bc]
    ld b, b
    ld bc, $6400
    nop
    ld a, $0a
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $6400
    nop
    inc sp
    ld a, [bc]
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $6400
    nop
    ld b, c
    ld a, [bc]
    ld b, b
    ld bc, $4800
    ld h, $00
    nop
    ld b, b
    ld bc, $6400
    nop
    ld [hl-], a
    ld a, [bc]
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $c800
    nop
    ld c, b
    nop
    ld b, b
    ld bc, $6400
    nop
    ccf
    ld a, [bc]
    ld b, b
    ld bc, $6400
    nop
    dec a
    ld a, [bc]
    ld b, b
    ld bc, $0a00
    nop
    rrca
    nop
    ld b, b
    ld bc, $7850
    dec b
    nop
    nop
    ld b, b
    ld bc, $4c00
    dec e
    nop
    nop
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $6400
    nop
    add hl, sp
    ld a, [bc]
    ld b, b
    ld bc, $2c00
    ld bc, $1400
    ld b, b
    ld bc, $0055
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    ld b, b
    ld h, h
    nop
    inc a
    ld a, [bc]
    ld b, b
    ld bc, $f400
    ld bc, $0000
    ld b, b
    ld bc, $c800
    nop
    ld c, a
    ld e, $40
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $f400
    ld bc, $0000
    ld b, b
    ld bc, $2055
    inc bc
    nop
    nop
    ld b, b
    ld bc, $c255
    ld bc, $0000
    ld b, b
    ld bc, $f050
    ld a, [bc]
    nop
    nop
    ld b, b
    ld bc, $6450
    nop
    scf
    ld a, [bc]
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    ret nz

    ld [bc], a
    ld h, b
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    ret nc

    rlca
    nop
    nop
    ld b, b
    ld bc, $4800
    ld h, $00
    nop
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    ret nz

    ld [bc], a
    ld h, b
    nop
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $4800
    ld h, $3a
    ld a, [bc]
    ld b, b
    ld bc, $6400
    nop
    ld bc, $4014
    ld bc, $c855
    nop
    ld c, c
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $6400
    nop
    ld b, d
    ld a, [bc]
    ld b, b
    ld bc, $6400
    nop
    nop
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $c800
    nop
    inc bc
    ld a, [bc]
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $0a00
    nop
    ld b, $ff
    ld b, b
    ld bc, $3450
    ld [$0a40], sp
    ld b, b
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $c800
    nop
    nop
    nop
    ld b, b
    ld bc, $9660
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $32
    nop
    nop
    nop
    ld b, b
    ld bc, $9600
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $96
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $96
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $99
    sbc c
    nop
    nop
    nop
    ld bc, $6400
    nop
    nop
    nop
    ld b, b
    ld bc, $9600
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $96
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $96
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $0a
    nop
    nop
    nop
    ld b, b
    ld bc, $0a40
    nop
    nop
    nop
    ld b, b
    ld bc, $3440
    ld [$0000], sp
    ld b, b
    ld bc, $6450
    nop
    ld [hl-], a
    ld a, [bc]
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $3400
    ld [$0000], sp
    ld b, b
    ld bc, $0a00
    nop
    ld bc, $400a
    ld bc, $0a55
    nop
    ld bc, $401e
    ld bc, $0055
    nop
    nop
    nop
    ret nz

    ld [bc], a
    ld h, b
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, b
    inc bc
    ld b, $00
    nop
    nop
    nop
    ret nz

    ld [bc], a
    nop
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $3200
    nop
    nop
    nop
    ld b, b
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $b800
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $e800
    inc bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $d000
    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    add sp, $03
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    cp b
    dec bc
    nop
    nop
    ld b, b
    inc b
    ld d, b
    ret nc

    rlca
    nop
    nop
    ld b, b
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    ret nz

    inc b
    ld d, b
    sbc c
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $9900
    sbc c
    nop
    nop
    nop
    ld bc, $2100
    ld b, $00
    add hl, bc
    bit 5, [hl]
    jr z, jr_001_6ed9

    ld hl, $0004
    add hl, bc
    bit 4, [hl]
    push hl
    push bc
    call Call_001_6f2c
    pop bc
    pop hl
    ret c

    jr jr_001_6ee9

jr_001_6ed9:
    ld hl, $0004
    add hl, bc
    bit 4, [hl]
    jr nz, jr_001_6ee9

    push hl
    push bc
    call Call_001_6f07
    pop bc
    pop hl
    ret c

jr_001_6ee9:
    bit 6, [hl]
    jr nz, jr_001_6ef5

    push hl
    push bc
    call Call_001_7009
    pop bc
    pop hl
    ret c

jr_001_6ef5:
    bit 5, [hl]
    jr nz, jr_001_6f05

    push hl
    call Call_001_70a4
    pop hl
    ret c

    push hl
    call Call_001_70ed
    pop hl
    ret c

jr_001_6f05:
    and a
    ret


Call_001_6f07:
    call Call_001_6f5f
    ret c

    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    ld hl, $0006
    add hl, bc
    bit 7, [hl]
    jp nz, Jump_001_6fa1

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    ld d, a
    call $185d
    and a
    jr z, jr_001_6f3e

    scf
    ret


Call_001_6f2c:
    call Call_001_6f5f
    ret c

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call $185d
    cp $01
    jr z, jr_001_6f3e

    scf
    ret


jr_001_6f3e:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    call Call_001_6f7f
    ret nc

    push af
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and $03
    ld e, a
    ld d, $00
    ld hl, $6f5b
    add hl, de
    pop af
    and [hl]
    ret z

    scf
    ret


    ld bc, $0802
    inc b

Call_001_6f5f:
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    call Call_001_6f7f
    ret nc

    push af
    ld hl, $0007
    add hl, bc
    and $03
    ld e, a
    ld d, $00
    ld hl, $6f7b
    add hl, de
    pop af
    and [hl]
    ret z

    scf
    ret


    ld [bc], a
    ld bc, $0804

Call_001_6f7f:
    ld d, a
    and $f0
    cp $b0
    jr z, jr_001_6f8c

    cp $c0
    jr z, jr_001_6f8c

    xor a
    ret


jr_001_6f8c:
    ld a, d
    and $07
    ld e, a
    ld d, $00
    ld hl, $6f99
    add hl, de
    ld a, [hl]
    scf
    ret


    ld [HeaderLogo], sp
    ld [bc], a
    ld a, [bc]
    ld b, $09
    dec b

Jump_001_6fa1:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and $03
    jr z, jr_001_6fb2

    dec a
    jr z, jr_001_6fb7

    dec a
    jr z, jr_001_6fbb

    jr jr_001_6fbf

jr_001_6fb2:
    inc e
    push de
    inc d
    jr jr_001_6fc2

jr_001_6fb7:
    push de
    inc d
    jr jr_001_6fc2

jr_001_6fbb:
    push de
    inc e
    jr jr_001_6fc2

jr_001_6fbf:
    inc d
    push de
    inc e

jr_001_6fc2:
    call $2a3c
    call $185d
    pop de
    and a
    jr nz, jr_001_6fd7

    call $2a3c
    call $185d
    and a
    jr nz, jr_001_6fd7

    xor a
    ret


jr_001_6fd7:
    scf
    ret


    call $2a07
    call $18a0
    jr nz, jr_001_6ff1

    ld a, [$d4e6]
    sub d
    cpl
    inc a
    add d
    ld d, a
    ld a, [$d4e7]
    sub e
    cpl
    inc a
    add e
    ld e, a

jr_001_6ff1:
    ld bc, $d4d6
    ld a, $00
    ldh [$af], a
    call Call_001_7041
    ret nc

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_7007

    xor a
    ret


jr_001_7007:
    scf
    ret


Call_001_7009:
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    jr jr_001_7041

    ldh a, [$af]
    call $1ae5
    call Call_001_7021
    call Call_001_7041
    ret


Call_001_7021:
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    call $1b07
    and a
    jr z, jr_001_703b

    cp $04
    jr z, jr_001_703d

    cp $08
    jr z, jr_001_703f

    inc d
    ret


jr_001_703b:
    inc e
    ret


jr_001_703d:
    dec e
    ret


jr_001_703f:
    dec d
    ret


Call_001_7041:
jr_001_7041:
    ld bc, $d4d6
    xor a

jr_001_7045:
    ldh [$b0], a
    call $1af1
    jr z, jr_001_7093

    ld hl, $0004
    add hl, bc
    bit 7, [hl]
    jr nz, jr_001_7093

    ld hl, $0006
    add hl, bc
    bit 7, [hl]
    jr z, jr_001_7063

    call Call_001_7171
    jr nc, jr_001_707b

    jr jr_001_7073

jr_001_7063:
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_001_707b

    ld hl, $0011
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_001_707b

jr_001_7073:
    ldh a, [$af]
    ld l, a
    ldh a, [$b0]
    cp l
    jr nz, jr_001_70a2

jr_001_707b:
    ld hl, $0012
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_001_7093

    ld hl, $0013
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_001_7093

    ldh a, [$af]
    ld l, a
    ldh a, [$b0]
    cp l
    jr nz, jr_001_70a2

jr_001_7093:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$b0]
    inc a
    cp $0d
    jr nz, jr_001_7045

    and a
    ret


jr_001_70a2:
    scf
    ret


Call_001_70a4:
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_001_70e9

    and $0f
    jr z, jr_001_70c7

    ld e, a
    ld d, a
    ld hl, $0014
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [hl]
    add e
    ld e, a
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_001_70eb

    cp e
    jr z, jr_001_70eb

jr_001_70c7:
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    swap a
    and $0f
    jr z, jr_001_70e9

    ld e, a
    ld d, a
    ld hl, $0015
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [hl]
    add e
    ld e, a
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_001_70eb

    cp e
    jr z, jr_001_70eb

jr_001_70e9:
    xor a
    ret


jr_001_70eb:
    scf
    ret


Call_001_70ed:
    ld hl, $0010
    add hl, bc
    ld a, [$dcb8]
    cp [hl]
    jr z, jr_001_70fe

    jr nc, jr_001_7111

    add $09
    cp [hl]
    jr c, jr_001_7111

jr_001_70fe:
    ld hl, $0011
    add hl, bc
    ld a, [$dcb7]
    cp [hl]
    jr z, jr_001_710f

    jr nc, jr_001_7111

    add $08
    cp [hl]
    jr c, jr_001_7111

jr_001_710f:
    and a
    ret


jr_001_7111:
    scf
    ret


    ld a, [$d4e6]
    ld d, a
    ld a, [$d4e7]
    ld e, a
    ld bc, $d4d6
    xor a

jr_001_711f:
    ldh [$b0], a
    call $1af1
    jr z, jr_001_7160

    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $15
    jr nz, jr_001_7136

    call Call_001_7171
    jr c, jr_001_716f

    jr jr_001_7160

jr_001_7136:
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_001_714e

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_001_714e

    ldh a, [$b0]
    cp $00
    jr z, jr_001_7160

    jr jr_001_716f

jr_001_714e:
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_001_7160

    ld hl, $0012
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_001_7160

    jr jr_001_716f

jr_001_7160:
    ld hl, $0028
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$b0]
    inc a
    cp $0d
    jr nz, jr_001_711f

    xor a
    ret


jr_001_716f:
    scf
    ret


Call_001_7171:
    ld hl, $0010
    add hl, bc
    ld a, d
    sub [hl]
    jr c, jr_001_718b

    cp $02
    jr nc, jr_001_718b

    ld hl, $0011
    add hl, bc
    ld a, e
    sub [hl]
    jr c, jr_001_718b

    cp $02
    jr nc, jr_001_718b

    scf
    ret


jr_001_718b:
    and a
    ret


    ld hl, $dcfa
    ld bc, $0030
    ld de, $dcd8

jr_001_7196:
    ld a, [de]
    cp $fd
    jr nz, jr_001_719f

    inc de
    add hl, bc
    jr jr_001_7196

jr_001_719f:
    ld [$d265], a
    ld a, [hl]
    ld [$c2dd], a
    call $343b
    jp Jump_001_746e


    ld a, [$dcd8]
    ld [$d265], a
    cp $fd
    ld a, $01
    jr z, jr_001_71b9

    xor a

jr_001_71b9:
    ld [$c2dd], a
    call $343b
    jp Jump_001_746e


Call_001_71c2:
    ld a, [$d109]
    inc a
    ld e, a
    ld d, $00
    ld hl, $dcd7
    add hl, de
    ld a, [hl]
    cp $fd
    ret z

    push bc
    ld hl, $dcfa
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    pop bc
    ld d, h
    ld e, l
    push de
    ld a, [de]
    cp $64
    ld e, $00
    jr c, jr_001_71ef

    inc e
    cp $c8
    jr c, jr_001_71ef

    inc e

jr_001_71ef:
    dec c
    ld b, $00
    ld hl, $7221
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $64
    pop de
    ld a, [de]
    jr nc, jr_001_7209

    add [hl]
    jr nc, jr_001_720d

    ld a, $ff
    jr jr_001_720d

jr_001_7209:
    add [hl]
    jr c, jr_001_720d

    xor a

jr_001_720d:
    ld [de], a
    ld a, [$d22d]
    and a
    ret z

    ld a, [$d109]
    ld b, a
    ld a, [$d0d8]
    cp b
    ret nz

    ld a, [de]
    ld [$c638], a
    ret


    dec b
    inc bc
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    inc bc
    ld [bc], a
    ld bc, $0101
    nop
    rst $38
    rst $38
    rst $38
    ei
    ei
    or $fb
    ei
    or $01
    ld bc, $0301
    inc bc
    ld bc, $0505
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0a0a
    inc b
    ei
    ei
    or $f6
    or $f1
    pop af
    pop af
    db $ec
    inc bc
    inc bc
    ld bc, $060a
    inc b
    ld hl, $dc77
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ret nz

    ld de, $dcd7
    ld a, [de]
    and a
    ret z

    ld c, a
    ld hl, $dcfa

jr_001_726d:
    inc de
    ld a, [de]
    cp $fd
    jr z, jr_001_7278

    inc [hl]
    jr nz, jr_001_7278

    ld [hl], $ff

jr_001_7278:
    push de
    ld de, $0030
    add hl, de
    pop de
    dec c
    jr nz, jr_001_726d

    ret


    ld a, [$def5]
    bit 0, a
    jr z, jr_001_72a4

    ld a, [$df2b]
    cp $64
    jr nc, jr_001_72a4

    ld hl, $df16
    inc [hl]
    jr nz, jr_001_72a4

    dec hl
    inc [hl]
    jr nz, jr_001_72a4

    dec hl
    inc [hl]
    ld a, [hl]
    cp $50
    jr c, jr_001_72a4

    ld a, $50
    ld [hl], a

jr_001_72a4:
    ld a, [$df2c]
    bit 0, a
    jr z, jr_001_72c6

    ld a, [$df64]
    cp $64
    jr nc, jr_001_72c6

    ld hl, $df4f
    inc [hl]
    jr nz, jr_001_72c6

    dec hl
    inc [hl]
    jr nz, jr_001_72c6

    dec hl
    inc [hl]
    ld a, [hl]
    cp $50
    jr c, jr_001_72c6

    ld a, $50
    ld [hl], a

jr_001_72c6:
    ld hl, $def5
    bit 5, [hl]
    ret z

    ld hl, $df2d
    dec [hl]
    ret nz

    call $2f8c
    ld [hl], a
    ld hl, $6e1d
    ld a, $05
    rst $08
    ld a, [$d265]
    cp $e6
    ld b, $50
    jr nc, jr_001_72f8

    ld a, [$d265]
    cp $aa
    ld b, $28
    jr nc, jr_001_72f8

    ld a, [$d265]
    cp $6e
    ld b, $1e
    jr nc, jr_001_72f8

    ld b, $0a

jr_001_72f8:
    call $2f8c
    cp b
    ret nc

    ld hl, $def5
    res 5, [hl]
    set 6, [hl]
    ret


    xor a
    ld [$cf5f], a
    ld a, $d5
    ld [$d108], a
    ld a, $0f
    ld [$d143], a
    ld a, $06
    call $2d83
    jr nc, jr_001_736b

    ld b, $00
    ld a, $13
    ld hl, $5ba3
    rst $08
    ld bc, $0030
    ld a, [$dcd7]
    dec a
    push af
    push bc
    ld hl, $dce0
    call $30fe
    ld [hl], $ad
    pop bc
    pop af
    ld hl, $dce5
    call $30fe
    ld a, $02
    ld [hl+], a
    ld [hl], $06
    ld a, [$dcd7]
    dec a
    ld hl, $de41
    call $30f4
    ld de, $7376
    call $30d9
    ld a, [$dcd7]
    dec a
    ld hl, $ddff
    call $30f4
    ld de, $7370
    call $30d9
    ld hl, $dc1e
    set 5, [hl]
    ld a, $01
    ld [$c2dd], a
    ret


jr_001_736b:
    xor a
    ld [$c2dd], a
    ret


    adc h
    add b
    adc l
    adc b
    add b
    ld d, b
    sub d
    add a
    sub h
    add d
    adc d
    adc b
    add h
    ld d, b
    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_001_73e6

    ld a, [$d108]
    cp $d5
    jr nz, jr_001_73ec

    ld a, [$d109]
    ld hl, $dce5
    ld bc, $0030
    call $30fe
    ld a, [hl+]
    cp $02
    jr nz, jr_001_73ec

    ld a, [hl]
    cp $06
    jr nz, jr_001_73ec

    ld a, [$d109]
    ld hl, $ddff
    call $30f4
    ld de, $7370

jr_001_73af:
    ld a, [de]
    cp [hl]
    jr nz, jr_001_73ec

    cp $50
    jr z, jr_001_73bb

    inc de
    inc hl
    jr jr_001_73af

jr_001_73bb:
    ld a, $03
    ld hl, $6538
    rst $08
    jr c, jr_001_73f1

    ld a, [$d109]
    ld hl, $dcfa
    ld bc, $0030
    call $30fe
    ld a, [hl]
    cp $96
    ld a, $03
    jr nc, jr_001_73e2

    xor a
    ld [$d10b], a
    ld hl, $6039
    ld a, $03
    rst $08
    ld a, $02

jr_001_73e2:
    ld [$c2dd], a
    ret


jr_001_73e6:
    ld a, $01
    ld [$c2dd], a
    ret


jr_001_73ec:
    xor a
    ld [$c2dd], a
    ret


jr_001_73f1:
    ld a, $04
    ld [$c2dd], a
    ret


    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_001_740e

    ld a, [$d108]
    ld [$c2dd], a
    ld [$d265], a
    call $343b
    jp Jump_001_746e


jr_001_740e:
    xor a
    ld [$c2dd], a
    ret


    ld hl, $7459
    jr jr_001_7420

    ld hl, $7462
    jr jr_001_7420

    ld hl, $746b

jr_001_7420:
    push hl
    ld a, $14
    ld hl, $4000
    rst $08
    pop hl
    jr c, jr_001_744e

    ld a, [$d108]
    cp $fd
    jr z, jr_001_7453

    push hl
    call $389c
    call Call_001_746e
    pop hl
    call $2f8c

jr_001_743c:
    sub [hl]
    jr c, jr_001_7444

    inc hl
    inc hl
    inc hl
    jr jr_001_743c

jr_001_7444:
    inc hl
    ld a, [hl+]
    ld [$c2dd], a
    ld c, [hl]
    call Call_001_71c2
    ret


jr_001_744e:
    xor a
    ld [$c2dd], a
    ret


jr_001_7453:
    ld a, $01
    ld [$c2dd], a
    ret


    ld c, h
    ld [bc], a
    add hl, bc
    add b
    inc bc
    ld a, [bc]
    rst $38
    inc b
    dec bc
    sbc d
    ld [bc], a
    inc c
    ld c, h
    inc bc
    dec c
    rst $38
    inc b
    ld c, $ff
    ld [bc], a
    ld [de], a

Call_001_746e:
Jump_001_746e:
    ld hl, $d073
    ld de, $d099
    ld bc, $000b
    jp $3026


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

Call_001_7e4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
