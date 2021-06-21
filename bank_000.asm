; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    di

Jump_000_0001:
    jp Boot


    nop
    nop
    nop
    nop

RST_08::
    jp Jump_000_2d63


    nop
    nop
    nop
    nop
    nop

RST_10::
    ldh [$9d], a
    ld [$2000], a
    ret


    nop
    nop

RST_18::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_20::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_28::
    push de
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]

RST_30::
    ld l, a
    pop de
    jp hl


    nop
    nop
    nop
    nop
    nop

RST_38::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_0283


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_0552


    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_3e93


    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    jp Jump_000_06ef


    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    jp Jump_000_092e


    nop
    nop
    nop
    nop
    nop

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00ff:
    nop

Boot::
    nop
    jp Jump_000_016e


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "PM_CRYSTAL", $00

HeaderManufacturerCode::
    db "BYTE"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $10

HeaderROMSize::
    db $06

HeaderRAMSize::
    db $03

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $01

HeaderComplementCheck::
    db $26

HeaderGlobalChecksum::
    db $23, $1a

Jump_000_0150:
    di
    call Call_000_3b4e
    xor a
    ldh [$de], a
    call Call_000_3317
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ei
    ld hl, $cfbe
    set 7, [hl]
    ld c, $20
    call Call_000_0468
    jr jr_000_017d

Jump_000_016e:
    cp $11
    jr z, jr_000_0175

    xor a
    jr jr_000_0177

jr_000_0175:
    ld a, $01

jr_000_0177:
    ldh [$e6], a
    ld a, $01
    ldh [$ea], a

jr_000_017d:
    di
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ldh [rRP], a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [rSB], a
    ldh [rSC], a
    ldh [rWX], a
    ldh [rWY], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ldh [rTMA], a
    ldh [rTAC], a
    ld [$d000], a
    ld a, $04
    ldh [rTAC], a

jr_000_01a2:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_01a2

    xor a
    ldh [rLCDC], a
    ld hl, $c000
    ld bc, $1000

jr_000_01b1:
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_01b1

    ld sp, $c0ff
    ldh a, [$e6]
    push af
    ldh a, [$ea]
    push af
    xor a
    ld hl, $ff80
    ld bc, $007f
    call Call_000_3041
    pop af
    ldh [$ea], a
    pop af
    ldh [$e6], a
    call Call_000_025a
    ld a, $01
    ldh [rSVBK], a
    call Call_000_0245
    call Call_000_300b
    call Call_000_0270
    ld a, $01
    rst $10
    call $4031
    xor a
    ldh [$de], a
    ldh [$cf], a
    ldh [$d0], a
    ldh [rP1], a
    ld a, $08
    ldh [rSTAT], a
    ld a, $90
    ldh [$d2], a
    ldh [rWY], a
    ld a, $07
    ldh [$d1], a
    ldh [rWX], a
    ld a, $e3
    ldh [rLCDC], a
    ld a, $ff
    ldh [$cb], a
    ld a, $02
    ld hl, $5890
    rst $08
    ld a, $9c
    ldh [$d7], a
    xor a
    ldh [$d6], a
    ld a, $05
    ld hl, $4089
    rst $08
    xor a
    ld [$6000], a
    ld [$0000], a
    ldh a, [$e6]
    and a
    jr z, jr_000_022b

    call Call_000_2ff7

jr_000_022b:
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ei
    call Call_000_045a
    ld a, $30
    call Call_000_2d83
    call Call_000_3b4e
    xor a
    ld [$c2c0], a
    jp $642e


Call_000_0245:
    ld a, $01
    ldh [rVBK], a
    call Call_000_024f
    xor a
    ldh [rVBK], a

Call_000_024f:
    ld hl, $8000
    ld bc, $2000
    xor a
    call Call_000_3041
    ret


Call_000_025a:
    ld a, $01

jr_000_025c:
    push af
    ldh [rSVBK], a
    xor a
    ld hl, $d000
    ld bc, $1000
    call Call_000_3041
    pop af
    inc a
    cp $08
    jr nc, jr_000_025c

    ret


Call_000_0270:
    ld a, $00
    call Call_000_2fcb
    ld hl, $a000
    ld bc, $0020
    xor a
    call Call_000_3041
    call Call_000_2fe1
    ret


Jump_000_0283:
    push af
    push bc
    push de
    push hl
    ldh a, [$9e]
    and $07
    ld e, a
    ld d, $00
    ld hl, $02a1
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2fec
    call Call_000_209e
    pop hl
    pop de
    pop bc
    pop af
    reti


    or c
    ld [bc], a
    scf
    inc bc
    dec h
    inc bc
    sub [hl]
    inc bc
    rst $18
    inc bc
    nop
    inc b
    ld [hl], $04
    or c
    ld [bc], a
    ld hl, $ff9b
    inc [hl]
    ldh a, [rDIV]
    ld b, a
    ldh a, [$e1]
    adc b
    ldh [$e1], a
    ldh a, [rDIV]
    ld b, a
    ldh a, [$e2]
    sbc b
    ldh [$e2], a
    ldh a, [$9d]
    ldh [$8a], a
    ldh a, [$cf]
    ldh [rSCX], a
    ldh a, [$d0]
    ldh [rSCY], a
    ldh a, [$d2]
    ldh [rWY], a
    ldh a, [$d1]
    ldh [rWX], a
    call Call_000_15e3
    jr c, jr_000_02f4

    call Call_000_0c2f
    jr c, jr_000_02f4

    call Call_000_15d8
    jr c, jr_000_02f4

    call Call_000_164c
    call Call_000_1769
    call Call_000_170a
    call Call_000_17d3

jr_000_02f4:
    ldh a, [$d8]
    and a
    jr nz, jr_000_02fc

    call $ff80

jr_000_02fc:
    xor a
    ld [$cfb3], a
    ld a, [$cfb1]
    and a
    jr z, jr_000_030a

    dec a
    ld [$cfb1], a

jr_000_030a:
    ld a, [$cfb2]
    and a
    jr z, jr_000_0314

    dec a
    ld [$cfb2], a

jr_000_0314:
    call Call_000_0935
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    ldh a, [$98]
    ldh [$e3], a
    ret


    ldh a, [$9d]
    ldh [$8a], a
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    xor a
    ld [$cfb3], a
    ret


    ldh a, [$9d]
    ldh [$8a], a
    ldh a, [$cf]
    ldh [rSCX], a
    ldh a, [$d0]
    ldh [rSCY], a
    call Call_000_037f
    jr c, jr_000_0351

    call Call_000_164c
    call Call_000_1778
    call $ff80

jr_000_0351:
    xor a
    ld [$cfb3], a
    ldh a, [rIF]
    ld b, a
    xor a
    ldh [rIF], a
    ld a, $02
    ldh [rIE], a
    ld a, b
    and $08
    or $02
    ldh [rIF], a
    ei
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    di
    ldh a, [rIF]
    ld b, a
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ld a, b
    ldh [rIF], a
    ret


Call_000_037f:
    ldh a, [$e6]
    and a
    jp nz, Jump_000_0c33

    ld a, [$cfc7]
    ldh [rBGP], a
    ld a, [$cfc8]
    ldh [rOBP0], a
    ld a, [$cfc9]
    ldh [rOBP1], a
    and a
    ret


    ldh a, [$9d]
    ldh [$8a], a
    ldh a, [$cf]
    ldh [rSCX], a
    ldh a, [$d0]
    ldh [rSCY], a
    ldh a, [$e5]
    and a
    call nz, Call_000_0c37
    jr c, jr_000_03b3

    call Call_000_164c
    call Call_000_1778
    call $ff80

jr_000_03b3:
    xor a
    ld [$cfb3], a
    ldh a, [rIF]
    push af
    xor a
    ldh [rIF], a
    ld a, $02
    ldh [rIE], a
    ldh [rIF], a
    ei
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    di
    ldh a, [rIF]
    ld b, a
    pop af
    or b
    ld b, a
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ld a, b
    ldh [rIF], a
    ret


    ldh a, [$9d]
    ldh [$8a], a
    call Call_000_164c
    call Call_000_1769
    call $ff80
    call Call_000_0935
    xor a
    ld [$cfb3], a
    call Call_000_2063
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    ret


    ldh a, [$9d]
    ldh [$8a], a
    ldh a, [$cf]
    ldh [rSCX], a
    call Call_000_0c2f
    jr c, jr_000_0413

    call Call_000_164c
    call Call_000_1769

jr_000_0413:
    xor a
    ld [$cfb3], a
    call Call_000_0935
    xor a
    ldh [rIF], a
    ld a, $02
    ldh [rIE], a
    ldh [rIF], a
    ei
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    di
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ret


    ldh a, [$9d]
    ldh [$8a], a
    ld hl, $ff9b
    inc [hl]
    call Call_000_0c33
    jr c, jr_000_044c

    call Call_000_1769
    call Call_000_170a
    call Call_000_15d8

jr_000_044c:
    xor a
    ld [$cfb3], a
    ld a, $3a
    rst $10
    call $405c
    ldh a, [$8a]
    rst $10
    ret


Call_000_045a:
    ld a, $01
    ld [$cfb3], a

jr_000_045f:
    halt
    ld a, [$cfb3]
    and a
    jr nz, jr_000_045f

    ret


Call_000_0468:
Jump_000_0468:
jr_000_0468:
    call Call_000_045a
    dec c
    jr nz, jr_000_0468

    ret


Call_000_046f:
    ld a, [$c2ce]
    cp $00
    ret z

    call Call_000_05a7
    ld a, [$d0ed]
    bit 0, a
    ret z

    ld hl, $4011
    ld a, $23
    rst $08
    ret


Call_000_0485:
Jump_000_0485:
    ld hl, $4070
    ld a, $23
    rst $08
    ret


    ld a, [$d841]
    ld b, a
    ld hl, $0538
    ld a, l
    sub b
    ld l, a
    jr nc, jr_000_0499

    dec h

jr_000_0499:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    ret


    ldh a, [$e6]
    and a
    jr z, jr_000_04af

    ld hl, $0517
    ld b, $04
    jr jr_000_04c7

jr_000_04af:
    ld hl, $052f
    ld b, $04
    jr jr_000_04c7

    ldh a, [$e6]
    and a
    jr z, jr_000_04c2

    ld hl, $0526
    ld b, $03
    jr jr_000_04c7

jr_000_04c2:
    ld hl, $053e
    ld b, $03

jr_000_04c7:
    push de
    ld a, [hl+]
    call Call_000_0c9f
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    call Call_000_0ccb
    ld c, $08
    call Call_000_0468
    pop de
    dec b
    jr nz, jr_000_04c7

    ret


    ldh a, [$e6]
    and a
    jr z, jr_000_04e9

    ld hl, $0522
    ld b, $04
    jr jr_000_0501

jr_000_04e9:
    ld hl, $053a
    ld b, $04
    jr jr_000_0501

    ldh a, [$e6]
    and a
    jr z, jr_000_04fc

    ld hl, $052b
    ld b, $03
    jr jr_000_0501

jr_000_04fc:
    ld hl, $0543
    ld b, $03

jr_000_0501:
    push de
    ld a, [hl-]
    ld d, a
    ld a, [hl-]
    ld e, a
    call Call_000_0ccb
    ld a, [hl-]
    call Call_000_0c9f
    ld c, $08
    call Call_000_0468
    pop de
    dec b
    jr nz, jr_000_0501

    ret


    rst $38
    rst $38
    rst $38
    cp $fe
    cp $f9
    ld sp, hl
    ld sp, hl
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    sub b
    sub b
    sub b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$07
    db $e4
    db $e4
    db $e4
    ret nc

    ldh [$e4], a
    ret nc

    ldh [$90], a
    add b
    sub b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    ldh a, [$c6]
    cp $43
    ret nz

    ld c, a
    ld a, [$d100]
    ld [c], a
    ret


Jump_000_0552:
    push af
    ldh a, [$c6]
    and a
    jr z, jr_000_0566

    push bc
    ldh a, [rLY]
    ld c, a
    ld b, $d1
    ld a, [bc]
    ld b, a
    ldh a, [$c6]
    ld c, a
    ld a, b
    ld [c], a
    pop bc

jr_000_0566:
    pop af
    reti


Call_000_0568:
    ldh a, [rLCDC]
    bit 7, a
    ret z

    xor a
    ldh [rIF], a
    ldh a, [rIE]
    ld b, a
    res 0, a
    ldh [rIE], a

jr_000_0577:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_0577

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    xor a
    ldh [rIF], a
    ld a, b
    ldh [rIE], a
    ret


Call_000_058a:
    ldh a, [rLCDC]
    set 7, a
    ldh [rLCDC], a
    ret


    push af
    ldh a, [$e9]
    and a
    jr z, jr_000_059a

    call Call_000_3e93

jr_000_059a:
    pop af
    reti


Call_000_059c:
    ld a, $00
    ld [$6000], a
    ld a, $01
    ld [$6000], a
    ret


Call_000_05a7:
    call Call_000_05b7
    call Call_000_05e8
    call Call_000_061d
    ld a, $05
    ld hl, $4032
    rst $08
    ret


Call_000_05b7:
    ld a, $0a
    ld [$0000], a
    call Call_000_059c
    ld hl, $4000
    ld de, $a000
    ld [hl], $08
    ld a, [de]
    and $3f
    ldh [$91], a
    ld [hl], $09
    ld a, [de]
    and $3f
    ldh [$90], a
    ld [hl], $0a
    ld a, [de]
    and $1f
    ldh [$8f], a
    ld [hl], $0b
    ld a, [de]
    ldh [$8e], a
    ld [hl], $0c
    ld a, [de]
    ldh [$8d], a
    call Call_000_2fe1
    ret


Call_000_05e8:
    ldh a, [$8d]
    bit 0, a
    jr z, jr_000_0604

    res 0, a
    ldh [$8d], a
    ldh a, [$8e]

jr_000_05f4:
    sub $8c
    jr nc, jr_000_05f4

jr_000_05f8:
    sub $8c
    jr nc, jr_000_05f8

    add $8c
    ldh [$8e], a
    ld a, $40
    jr jr_000_0614

jr_000_0604:
    ldh a, [$8e]
    cp $8c
    jr c, jr_000_061b

jr_000_060a:
    sub $8c
    jr nc, jr_000_060a

    add $8c
    ldh [$8e], a
    ld a, $20

jr_000_0614:
    push af
    call Call_000_0691
    pop af
    scf
    ret


jr_000_061b:
    xor a
    ret


Call_000_061d:
    ldh a, [$91]
    ld c, a
    ld a, [$d4b9]
    add c
    sub $3c
    jr nc, jr_000_062a

    add $3c

jr_000_062a:
    ldh [$98], a
    ccf
    ldh a, [$90]
    ld c, a
    ld a, [$d4b8]
    adc c
    sub $3c
    jr nc, jr_000_063a

    add $3c

jr_000_063a:
    ldh [$96], a
    ccf
    ldh a, [$8f]
    ld c, a
    ld a, [$d4b7]
    adc c
    sub $18
    jr nc, jr_000_064a

    add $18

jr_000_064a:
    ldh [$94], a
    ccf
    ldh a, [$8e]
    ld c, a
    ld a, [$d4b6]
    adc c
    ld [$d4cb], a
    ret


    xor a
    ld [$d086], a
    ld a, $00
    ld [$d089], a
    jr jr_000_0677

    call Call_000_05a7
    ldh a, [$94]
    ld [$d087], a
    ldh a, [$96]
    ld [$d088], a
    ldh a, [$98]
    ld [$d089], a
    jr jr_000_0677

jr_000_0677:
    ld a, $05
    ld hl, $40ed
    rst $08
    ret


    call Call_000_0685
    call Call_000_0691
    ret


Call_000_0685:
    xor a
    ldh [$91], a
    ldh [$90], a
    ldh [$8f], a
    ldh [$8e], a
    ldh [$8d], a
    ret


Call_000_0691:
    ld a, $0a
    ld [$0000], a
    call Call_000_059c
    ld hl, $4000
    ld de, $a000
    ld [hl], $0c
    ld a, [de]
    bit 6, a
    ld [de], a
    ld [hl], $08
    ldh a, [$91]
    ld [de], a
    ld [hl], $09
    ldh a, [$90]
    ld [de], a
    ld [hl], $0a
    ldh a, [$8f]
    ld [de], a
    ld [hl], $0b
    ldh a, [$8e]
    ld [de], a
    ld [hl], $0c
    ldh a, [$8d]
    res 6, a
    ld [de], a
    call Call_000_2fe1
    ret


    xor a
    push af
    ld a, $00
    call Call_000_2fcb
    pop af
    ld [$ac60], a
    call Call_000_2fe1
    ret


    ld hl, $ac60
    push af
    ld a, $00
    call Call_000_2fcb
    pop af
    or [hl]
    ld [hl], a
    call Call_000_2fe1
    ret


    ld a, $00
    call Call_000_2fcb
    ld a, [$ac60]
    call Call_000_2fe1
    ret


Jump_000_06ef:
    push af
    push bc
    push de
    push hl
    ldh a, [$c9]
    and a
    jr nz, jr_000_071c

    ld a, [$c2d4]
    bit 0, a
    jr nz, jr_000_0721

    ldh a, [$cb]
    inc a
    jr z, jr_000_0726

    ldh a, [rSB]
    ldh [$ce], a
    ldh a, [$cd]
    ldh [rSB], a
    ldh a, [$cb]
    cp $02
    jr z, jr_000_0752

    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    jr jr_000_0752

jr_000_071c:
    call Call_000_3e80
    jr jr_000_075a

jr_000_0721:
    call Call_000_2057
    jr jr_000_075a

jr_000_0726:
    ldh a, [rSB]
    cp $01
    jr z, jr_000_0730

    cp $02
    jr nz, jr_000_0752

jr_000_0730:
    ldh [$ce], a
    ldh [$cb], a
    cp $02
    jr z, jr_000_074f

    xor a
    ldh [rSB], a
    ld a, $03
    ldh [rDIV], a

jr_000_073f:
    ldh a, [rDIV]
    bit 7, a
    jr nz, jr_000_073f

    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    jr jr_000_0752

jr_000_074f:
    xor a
    ldh [rSB], a

jr_000_0752:
    ld a, $01
    ldh [$ca], a
    ld a, $fe
    ldh [$cd], a

jr_000_075a:
    pop hl
    pop de
    pop bc
    pop af
    reti


    ld a, $01
    ldh [$cc], a

jr_000_0763:
    ld a, [hl]
    ldh [$cd], a
    call Call_000_078a
    push bc
    ld b, a
    inc hl
    ld a, $30

jr_000_076e:
    dec a
    jr nz, jr_000_076e

    ldh a, [$cc]
    and a
    ld a, b
    pop bc
    jr z, jr_000_0782

    dec hl
    cp $fd
    jr nz, jr_000_0763

    xor a
    ldh [$cc], a
    jr jr_000_0763

jr_000_0782:
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0763

    ret


Call_000_078a:
Jump_000_078a:
    xor a
    ldh [$ca], a
    ldh a, [$cb]
    cp $02
    jr nz, jr_000_079b

    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_000_079b:
    ldh a, [$ca]
    and a
    jr nz, jr_000_07e5

    ldh a, [$cb]
    cp $01
    jr nz, jr_000_07c0

    call Call_000_082b
    jr z, jr_000_07c0

    call Call_000_0825
    push hl
    ld hl, $cf5c
    inc [hl]
    jr nz, jr_000_07b7

    dec hl
    inc [hl]

jr_000_07b7:
    pop hl
    call Call_000_082b
    jr nz, jr_000_079b

    jp Jump_000_0833


jr_000_07c0:
    ldh a, [rIE]
    and $0f
    cp $08
    jr nz, jr_000_079b

    ld a, [$cf5d]
    dec a
    ld [$cf5d], a
    jr nz, jr_000_079b

    ld a, [$cf5e]
    dec a
    ld [$cf5e], a
    jr nz, jr_000_079b

    ldh a, [$cb]
    cp $01
    jr z, jr_000_07e5

    ld a, $ff

jr_000_07e2:
    dec a
    jr nz, jr_000_07e2

jr_000_07e5:
    xor a
    ldh [$ca], a
    ldh a, [rIE]
    and $0f
    sub $08
    jr nz, jr_000_07f8

    ld [$cf5d], a
    ld a, $50
    ld [$cf5e], a

jr_000_07f8:
    ldh a, [$ce]
    cp $fe
    ret nz

    call Call_000_082b
    jr z, jr_000_0813

    push hl
    ld hl, $cf5c
    ld a, [hl]
    dec a
    ld [hl-], a
    inc a
    jr nz, jr_000_080d

    dec [hl]

jr_000_080d:
    pop hl
    call Call_000_082b
    jr z, jr_000_0833

jr_000_0813:
    ldh a, [rIE]
    and $0f
    cp $08
    ld a, $fe
    ret z

    ld a, [hl]
    ldh [$cd], a
    call Call_000_045a
    jp Jump_000_078a


Call_000_0825:
    ld a, $0f

jr_000_0827:
    dec a
    jr nz, jr_000_0827

    ret


Call_000_082b:
    push hl
    ld hl, $cf5b
    ld a, [hl+]
    or [hl]
    pop hl
    ret


Jump_000_0833:
jr_000_0833:
    dec a
    ld [$cf5b], a
    ld [$cf5c], a
    ret


    ld hl, $cf56
    ld de, $cf51
    ld c, $02
    ld a, $01
    ldh [$cc], a

jr_000_0847:
    call Call_000_045a
    ld a, [hl]
    ldh [$cd], a
    call Call_000_078a
    ld b, a
    inc hl
    ldh a, [$cc]
    and a
    ld a, $00
    ldh [$cc], a
    jr nz, jr_000_0847

    ld a, b
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0847

    ret


    call Call_000_309d
    ld hl, $4000
    ld a, $01
    rst $08
    call Call_000_087d
    jp Jump_000_30b4


    call Call_000_309d
    ld hl, $4000
    ld a, $01
    rst $08
    jp Jump_000_087d


Call_000_087d:
Jump_000_087d:
    ld a, $ff
    ld [$cf52], a

jr_000_0882:
    call Call_000_08c1
    call Call_000_045a
    call Call_000_082b
    jr z, jr_000_089e

    push hl
    ld hl, $cf5c
    dec [hl]
    jr nz, jr_000_089d

    dec hl
    dec [hl]
    jr nz, jr_000_089d

    pop hl
    xor a
    jp Jump_000_0833


jr_000_089d:
    pop hl

jr_000_089e:
    ld a, [$cf52]
    inc a
    jr z, jr_000_0882

    ld b, $0a

jr_000_08a6:
    call Call_000_045a
    call Call_000_08c1
    dec b
    jr nz, jr_000_08a6

    ld b, $0a

jr_000_08b1:
    call Call_000_045a
    call Call_000_0908
    dec b
    jr nz, jr_000_08b1

    ld a, [$cf52]
    ld [$cf51], a
    ret


Call_000_08c1:
    push bc
    ld b, $60
    ld a, [$c2dc]
    cp $01
    jr z, jr_000_08d7

    ld b, $60
    jr c, jr_000_08d7

    cp $02
    ld b, $70
    jr z, jr_000_08d7

    ld b, $80

jr_000_08d7:
    call Call_000_08f3
    ld a, [$cf56]
    add b
    ldh [$cd], a
    ldh a, [$cb]
    cp $02
    jr nz, jr_000_08ee

    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_000_08ee:
    call Call_000_08f3
    pop bc
    ret


Call_000_08f3:
    ldh a, [$ce]
    ld [$cf51], a
    and $f0
    cp b
    ret nz

    xor a
    ldh [$ce], a
    ld a, [$cf51]
    and $0f
    ld [$cf52], a
    ret


Call_000_0908:
    xor a
    ldh [$cd], a
    ldh a, [$cb]
    cp $02
    ret nz

    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


    ld a, [$c2dc]
    and a
    ret nz

    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ce], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    ret


Jump_000_092e:
    reti


    xor a
    ldh [$a7], a
    ldh [$a8], a
    ret


Call_000_0935:
    ld a, [$cfbe]
    and $d0
    ret nz

    ld a, [$c2cd]
    and a
    ret nz

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld b, a
    ld a, $30
    ldh [rP1], a
    ldh a, [$a4]
    ld e, a
    xor b
    ld d, a
    and e
    ldh [$a2], a
    ld a, d
    and b
    ldh [$a3], a
    ld c, a
    ldh a, [$a5]
    or c
    ldh [$a5], a
    ld a, b
    ldh [$a4], a
    and $0f
    cp $0f
    jp z, Jump_000_0150

    ret


Call_000_0984:
    push af
    push hl
    push de
    push bc
    ld a, [$c2c7]
    cp $ff
    jr z, jr_000_09a7

    ldh a, [$a4]
    ld b, a
    ldh a, [$a8]
    ld e, a
    xor b
    ld d, a
    and e
    ldh [$a6], a
    ld a, d
    and b
    ldh [$a7], a
    ld c, a
    ld a, b
    ldh [$a8], a

jr_000_09a2:
    pop bc
    pop de
    pop hl
    pop af
    ret


jr_000_09a7:
    ldh a, [$9d]
    push af
    ld a, [$c2ca]
    rst $10
    ld hl, $c2c8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c2cb]
    and a
    jr z, jr_000_09c2

    dec a
    ld [$c2cb], a
    pop af
    rst $10
    jr jr_000_09a2

jr_000_09c2:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_09e0

    ld b, a
    ld a, [hl+]
    ld [$c2cb], a
    cp $ff
    jr nz, jr_000_09d6

    dec hl
    dec hl
    ld b, $00
    jr jr_000_09e5

jr_000_09d6:
    ld a, l
    ld [$c2c8], a
    ld a, h
    ld [$c2c9], a
    jr jr_000_09e5

jr_000_09e0:
    call Call_000_0a0a
    ld b, $00

jr_000_09e5:
    pop af
    rst $10
    ld a, b
    ldh [$a7], a
    ldh [$a8], a
    jr jr_000_09a2

    ld [$c2ca], a
    ld a, l
    ld [$c2c8], a
    ld a, h
    ld [$c2c9], a
    xor a
    ld [$c2cb], a
    xor a
    ldh [$a7], a
    ldh [$a6], a
    ldh [$a8], a
    ld a, $ff
    ld [$c2c7], a
    ret


Call_000_0a0a:
    xor a
    ld [$c2ca], a
    ld [$c2c8], a
    ld [$c2c9], a
    ld [$c2cb], a
    ld [$c2c7], a
    ret


jr_000_0a1b:
    call Call_000_045a
    push bc
    call Call_000_0a57
    pop bc
    ldh a, [$a8]
    cp $46
    jr z, jr_000_0a34

    ldh a, [$a9]
    and $09
    jr nz, jr_000_0a34

    dec c
    jr nz, jr_000_0a1b

    and a
    ret


jr_000_0a34:
    scf
    ret


Call_000_0a36:
jr_000_0a36:
    call Call_000_045a
    call Call_000_0984
    ldh a, [$a7]
    and $03
    ret nz

    call Call_000_046f
    jr jr_000_0a36

Call_000_0a46:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call Call_000_31f6
    call Call_000_0a36
    pop af
    ldh [$d8], a
    ret


Call_000_0a57:
    call Call_000_0984
    ldh a, [$aa]
    and a
    ldh a, [$a7]
    jr z, jr_000_0a63

    ldh a, [$a8]

jr_000_0a63:
    ldh [$a9], a
    ldh a, [$a7]
    and a
    jr z, jr_000_0a70

    ld a, $0f
    ld [$cfb2], a
    ret


jr_000_0a70:
    ld a, [$cfb2]
    and a
    jr z, jr_000_0a7a

    xor a
    ldh [$a9], a
    ret


jr_000_0a7a:
    ld a, $05
    ld [$cfb2], a
    ret


Call_000_0a80:
    ldh a, [$af]
    push af
    ldh a, [$b0]
    push af
    xor a
    ldh [$af], a
    ld a, $06
    ldh [$b0], a

jr_000_0a8d:
    push hl
    ld hl, $c606
    call Call_000_0b06
    pop hl
    call Call_000_0a57
    ldh a, [$a9]
    and $03
    jr z, jr_000_0a8d

    pop af
    ldh [$b0], a
    pop af
    ldh [$af], a
    ret


jr_000_0aa5:
    call Call_000_0a57
    ldh a, [$a9]
    and $03
    jr z, jr_000_0aa5

    ret


Call_000_0aaf:
    ld a, [$c2dc]
    and a
    jr nz, jr_000_0ac1

    call Call_000_0ac6
    push de
    ld de, $0008
    call Call_000_3c23
    pop de
    ret


jr_000_0ac1:
    ld c, $41
    jp Jump_000_0468


Call_000_0ac6:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    ld a, [$c2c7]
    or a
    jr z, jr_000_0ad9

    ld a, $77
    ld hl, $628a
    rst $08

jr_000_0ad9:
    call Call_000_0af5
    call Call_000_0a57
    ldh a, [$a7]
    and $03
    jr nz, jr_000_0af1

    call Call_000_046f
    ld a, $01
    ldh [$d4], a
    call Call_000_045a
    jr jr_000_0ad9

jr_000_0af1:
    pop af
    ldh [$d8], a
    ret


Call_000_0af5:
    ldh a, [$9b]
    and $10
    jr z, jr_000_0aff

    ld a, $ee
    jr jr_000_0b02

jr_000_0aff:
    ld a, [$c605]

jr_000_0b02:
    ld [$c606], a
    ret


Call_000_0b06:
    push bc
    ld a, [hl]
    ld b, a
    ld a, $ee
    cp b
    pop bc
    jr nz, jr_000_0b27

    ldh a, [$af]
    dec a
    ldh [$af], a
    ret nz

    ldh a, [$b0]
    dec a
    ldh [$b0], a
    ret nz

    ld a, $7a
    ld [hl], a
    ld a, $ff
    ldh [$af], a
    ld a, $06
    ldh [$b0], a
    ret


jr_000_0b27:
    ldh a, [$af]
    and a
    ret z

    dec a
    ldh [$af], a
    ret nz

    dec a
    ldh [$af], a
    ldh a, [$b0]
    dec a
    ldh [$b0], a
    ret nz

    ld a, $06
    ldh [$b0], a
    ld a, $ee
    ld [hl], a
    ret


Call_000_0b40:
    ld [$c2c4], a
    ldh a, [$9d]
    push af
    ld a, [$c2c4]
    rst $10
    call Call_000_0b50
    pop af
    rst $10
    ret


Call_000_0b50:
    ld a, e
    ld [$c2c2], a
    ld a, d
    ld [$c2c3], a

Jump_000_0b58:
jr_000_0b58:
    ld a, [hl]
    cp $ff
    ret z

    and $e0
    cp $e0
    jr nz, jr_000_0b72

    ld a, [hl]
    add a
    add a
    add a
    and $e0
    push af
    ld a, [hl+]
    and $03
    ld b, a
    ld a, [hl+]
    ld c, a
    inc bc
    jr jr_000_0b7a

jr_000_0b72:
    push af
    ld a, [hl+]
    and $1f
    ld c, a
    ld b, $00
    inc c

jr_000_0b7a:
    inc b
    inc c
    pop af
    bit 7, a
    jr nz, jr_000_0bcb

    cp $20
    jr z, jr_000_0b99

    cp $40
    jr z, jr_000_0ba5

    cp $60
    jr z, jr_000_0bbf

jr_000_0b8d:
    dec c
    jr nz, jr_000_0b94

    dec b
    jp z, Jump_000_0b58

jr_000_0b94:
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_0b8d

jr_000_0b99:
    ld a, [hl+]

jr_000_0b9a:
    dec c
    jr nz, jr_000_0ba1

    dec b
    jp z, Jump_000_0b58

jr_000_0ba1:
    ld [de], a
    inc de
    jr jr_000_0b9a

jr_000_0ba5:
    dec c
    jr nz, jr_000_0bac

    dec b
    jp z, Jump_000_0bbb

jr_000_0bac:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0bb6

    dec b
    jp z, Jump_000_0bbc

jr_000_0bb6:
    ld a, [hl-]
    ld [de], a
    inc de
    jr jr_000_0ba5

Jump_000_0bbb:
    inc hl

Jump_000_0bbc:
    inc hl
    jr jr_000_0b58

jr_000_0bbf:
    xor a

jr_000_0bc0:
    dec c
    jr nz, jr_000_0bc7

    dec b
    jp z, Jump_000_0b58

jr_000_0bc7:
    ld [de], a
    inc de
    jr jr_000_0bc0

jr_000_0bcb:
    push hl
    push af
    ld a, [hl+]
    bit 7, a
    jr z, jr_000_0bdd

    and $7f
    cpl
    add e
    ld l, a
    ld a, $ff
    adc d
    ld h, a
    jr jr_000_0be9

jr_000_0bdd:
    ld l, [hl]
    ld h, a
    ld a, [$c2c2]
    add l
    ld l, a
    ld a, [$c2c3]
    adc h
    ld h, a

jr_000_0be9:
    pop af
    cp $80
    jr z, jr_000_0bf6

    cp $a0
    jr z, jr_000_0c01

    cp $c0
    jr z, jr_000_0c19

jr_000_0bf6:
    dec c
    jr nz, jr_000_0bfc

    dec b
    jr z, jr_000_0c25

jr_000_0bfc:
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_0bf6

jr_000_0c01:
    dec c
    jr nz, jr_000_0c08

    dec b
    jp z, Jump_000_0c25

jr_000_0c08:
    ld a, [hl+]
    push bc
    ld bc, $0008

jr_000_0c0d:
    rra
    rl b
    dec c
    jr nz, jr_000_0c0d

    ld a, b
    pop bc
    ld [de], a
    inc de
    jr jr_000_0c01

jr_000_0c19:
    dec c
    jr nz, jr_000_0c20

    dec b
    jp z, Jump_000_0c25

jr_000_0c20:
    ld a, [hl-]
    ld [de], a
    inc de
    jr jr_000_0c19

Jump_000_0c25:
jr_000_0c25:
    pop hl
    bit 7, [hl]
    jr nz, jr_000_0c2b

    inc hl

jr_000_0c2b:
    inc hl
    jp Jump_000_0b58


Call_000_0c2f:
    ldh a, [$e6]
    and a
    ret z

Call_000_0c33:
Jump_000_0c33:
    ldh a, [$e5]
    and a
    ret z

Call_000_0c37:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld a, $80
    ldh [rBCPS], a
    ld c, $69
    ld b, $04

jr_000_0c49:
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    dec b
    jr nz, jr_000_0c49

    ld a, $80
    ldh [rOCPS], a
    ld c, $6b
    ld b, $04

jr_000_0c74:
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    dec b
    jr nz, jr_000_0c74

    pop af
    ldh [rSVBK], a
    xor a
    ldh [$e5], a
    scf
    ret


Call_000_0c9f:
    ldh [rBGP], a
    push af
    ldh a, [$e6]
    and a
    jr z, jr_000_0cc9

    push hl
    push de
    push bc
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld de, $d000
    ldh a, [rBGP]
    ld b, a
    ld c, $08
    call Call_000_0d50
    ld a, $01
    ldh [$e5], a
    pop af
    ldh [rSVBK], a
    pop bc
    pop de
    pop hl

jr_000_0cc9:
    pop af
    ret


Call_000_0ccb:
    ld a, e
    ldh [rOBP0], a
    ld a, d
    ldh [rOBP1], a
    ldh a, [$e6]
    and a
    ret z

    push hl
    push de
    push bc
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d0c0
    ld de, $d040
    ldh a, [rOBP0]
    ld b, a
    ld c, $08
    call Call_000_0d50
    ld a, $01
    ldh [$e5], a
    pop af
    ldh [rSVBK], a
    pop bc
    pop de
    pop hl
    ret


    ldh [rOBP0], a
    push af
    ldh a, [$e6]
    and a
    jr z, jr_000_0d22

    push hl
    push de
    push bc
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d0c0
    ld de, $d040
    ldh a, [rOBP0]
    ld b, a
    ld c, $01
    call Call_000_0d50
    ld a, $01
    ldh [$e5], a
    pop af
    ldh [rSVBK], a
    pop bc
    pop de
    pop hl

jr_000_0d22:
    pop af
    ret


    ldh [rOBP1], a
    push af
    ldh a, [$e6]
    and a
    jr z, jr_000_0d4e

    push hl
    push de
    push bc
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d0c8
    ld de, $d048
    ldh a, [rOBP1]
    ld b, a
    ld c, $01
    call Call_000_0d50
    ld a, $01
    ldh [$e5], a
    pop af
    ldh [rSVBK], a
    pop bc
    pop de
    pop hl

jr_000_0d4e:
    pop af
    ret


Call_000_0d50:
jr_000_0d50:
    push bc
    ld c, $04

jr_000_0d53:
    push de
    push hl
    ld a, b
    and $03
    add a
    ld l, a
    ld h, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    srl b
    srl b
    pop de
    dec c
    jr nz, jr_000_0d53

    ld a, $08
    add e
    jr nc, jr_000_0d73

    inc d

jr_000_0d73:
    ld e, a
    pop bc
    dec c
    jr nz, jr_000_0d50

    ret


    ldh a, [$e6]
    and a
    ret z

    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    xor a
    call Call_000_3041
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_0d90:
    ret


    ldh a, [$e6]
    and a
    ret z

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld bc, $0050
    xor a
    call Call_000_3041
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    call Call_000_045a
    ret


Call_000_0db1:
    ldh a, [$9d]
    push af
    ld a, $13
    rst $10
    call $4000
    pop af
    rst $10
    ret


Call_000_0dbd:
    ldh a, [$9d]
    push af
    ld a, $13
    rst $10
    call $403f
    pop af
    rst $10
    ret


    ldh a, [rLCDC]
    bit 7, a
    jp z, Jump_000_0f89

    ldh a, [$9d]
    push af
    ld a, $41
    rst $10
    call $4284
    pop af
    rst $10
    ret


    ldh a, [rLCDC]
    bit 7, a
    jp z, Jump_000_0fa4

    ldh a, [$9d]
    push af
    ld a, $41
    rst $10
    call $42b2
    pop af
    rst $10
    ret


    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_0e9b
    pop af
    rst $10
    ret


    dec c
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ldh a, [$9d]
    push af
    ld a, b
    rst $10

jr_000_0e09:
    ld a, d
    ldh [rHDMA1], a
    ld a, e
    and $f0
    ldh [rHDMA2], a
    ld a, h
    and $1f
    ldh [rHDMA3], a
    ld a, l
    and $f0
    ldh [rHDMA4], a
    ld a, c
    cp $08
    jr c, jr_000_0e3c

    sub $08
    ld c, a
    ld a, $0f
    ldh [$e8], a
    call Call_000_045a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $01
    ld h, a
    ld a, e
    add $00
    ld e, a
    ld a, d
    adc $01
    ld d, a
    jr jr_000_0e09

jr_000_0e3c:
    ld a, c
    and $7f
    ldh [$e8], a
    call Call_000_045a
    pop af
    rst $10
    pop af
    ldh [$d4], a
    ret


Call_000_0e4a:
    ld a, $05
    ld hl, $4135
    rst $08
    ret


Call_000_0e51:
    ld a, $3e
    ld hl, $7449
    rst $08
    ret


    ld a, $3e
    ld hl, $74be
    rst $08
    ret


Call_000_0e5f:
    ld a, $3e
    ld hl, $748a
    rst $08
    ld a, $3e
    ld hl, $74b0
    rst $08
    ret


    ld a, $3e
    ld hl, $74b0
    rst $08
    ret


    push de
    ld a, $00
    call Call_000_2fcb
    push bc
    ld de, $a000
    ld a, b
    call Call_000_0b40
    pop bc
    pop hl
    ld de, $a000
    call Call_000_0eba
    call Call_000_2fe1
    ret


Call_000_0e8d:
Jump_000_0e8d:
    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_3026
    pop af
    rst $10
    ret


Call_000_0e9b:
Jump_000_0e9b:
    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a
    inc b
    inc c
    jr jr_000_0eb1

jr_000_0ead:
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl+], a

jr_000_0eb1:
    dec c
    jr nz, jr_000_0ead

    dec b
    jr nz, jr_000_0ead

    pop af
    rst $10
    ret


Call_000_0eba:
Jump_000_0eba:
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ldh a, [$9d]
    push af
    ld a, b
    rst $10
    ldh a, [$d3]
    push af
    ld a, $08
    ldh [$d3], a
    ld a, [$c2dc]
    cp $04
    jr nz, jr_000_0edc

    ldh a, [$e9]
    and a
    jr nz, jr_000_0edc

    ld a, $06
    ldh [$d3], a

jr_000_0edc:
    ld a, e
    ld [$cf68], a
    ld a, d
    ld [$cf69], a
    ld a, l
    ld [$cf6a], a
    ld a, h
    ld [$cf6b], a

jr_000_0eec:
    ld a, c
    ld hl, $ffd3
    cp [hl]
    jr nc, jr_000_0f08

    ld [$cf67], a

jr_000_0ef6:
    call Call_000_045a
    ld a, [$cf67]
    and a
    jr nz, jr_000_0ef6

    pop af
    ldh [$d3], a
    pop af
    rst $10
    pop af
    ldh [$d4], a
    ret


jr_000_0f08:
    ldh a, [$d3]
    ld [$cf67], a

jr_000_0f0d:
    call Call_000_045a
    ld a, [$cf67]
    and a
    jr nz, jr_000_0f0d

    ld a, c
    ld hl, $ffd3
    sub [hl]
    ld c, a
    jr jr_000_0eec

Jump_000_0f1e:
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ldh a, [$9d]
    push af
    ld a, b
    rst $10
    ldh a, [$d3]
    push af
    ld a, $08
    ldh [$d3], a
    ld a, [$c2dc]
    cp $04
    jr nz, jr_000_0f40

    ldh a, [$e9]
    and a
    jr nz, jr_000_0f40

    ld a, $06
    ldh [$d3], a

jr_000_0f40:
    ld a, e
    ld [$cf6d], a
    ld a, d
    ld [$cf6e], a
    ld a, l
    ld [$cf6f], a
    ld a, h
    ld [$cf70], a

jr_000_0f50:
    ld a, c
    ld hl, $ffd3
    cp [hl]
    jr nc, jr_000_0f6c

    ld [$cf6c], a

jr_000_0f5a:
    call Call_000_045a
    ld a, [$cf6c]
    and a
    jr nz, jr_000_0f5a

    pop af
    ldh [$d3], a
    pop af
    rst $10
    pop af
    ldh [$d4], a
    ret


jr_000_0f6c:
    ldh a, [$d3]
    ld [$cf6c], a

jr_000_0f71:
    call Call_000_045a
    ld a, [$cf6c]
    and a
    jr nz, jr_000_0f71

    ld a, c
    ld hl, $ffd3
    sub [hl]
    ld c, a
    jr jr_000_0f50

    ldh a, [rLCDC]
    bit 7, a
    jp nz, Jump_000_0eba

Jump_000_0f89:
    push hl
    ld h, d
    ld l, e
    pop de
    ld a, b
    push af
    swap c
    ld a, $0f
    and c
    ld b, a
    ld a, $f0
    and c
    ld c, a
    pop af
    jp Jump_000_0e8d


    ldh a, [rLCDC]
    bit 7, a
    jp nz, Jump_000_0f1e

Jump_000_0fa4:
    push de
    ld d, h
    ld e, l
    ld a, b
    push af
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    pop af
    pop hl
    jp Jump_000_0e9b


Call_000_0fb6:
    ld a, $7f

jr_000_0fb8:
    push bc
    push hl

jr_000_0fba:
    ld [hl+], a
    dec c
    jr nz, jr_000_0fba

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_0fb8

    ret


jr_000_0fc8:
    ld hl, $c4a0
    ld a, $7f
    ld bc, $0168
    call Call_000_3041
    ldh a, [rLCDC]
    bit 7, a
    ret z

    jp Jump_000_31f6


    ld a, $07
    ld hl, $cdd9
    ld bc, $0168
    call Call_000_3041
    jr jr_000_0fc8

Call_000_0fe8:
Jump_000_0fe8:
    push bc
    push hl
    call Call_000_0ff1
    pop hl
    pop bc
    jr jr_000_1024

Call_000_0ff1:
    push hl
    ld a, $79
    ld [hl+], a
    inc a
    call Call_000_101e
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_000_1000:
    push hl
    ld a, $7c
    ld [hl+], a
    ld a, $7f
    call Call_000_101e
    ld [hl], $7c
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_000_1000

    ld a, $7d
    ld [hl+], a
    ld a, $7a
    call Call_000_101e
    ld [hl], $7e
    ret


Call_000_101e:
    ld d, c

jr_000_101f:
    ld [hl+], a
    dec d
    jr nz, jr_000_101f

    ret


jr_000_1024:
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    ld a, $07

jr_000_102e:
    push bc
    push hl

jr_000_1030:
    ld [hl+], a
    dec c
    jr nz, jr_000_1030

    pop hl
    ld de, $0014
    add hl, de
    pop bc
    dec b
    jr nz, jr_000_102e

    ret


Call_000_103e:
    ld hl, $c590
    ld b, $04
    ld c, $12
    jp Jump_000_0fe8


    nop
    ld [$9fe3], sp
    sbc e
    ret c

    db $e3
    add a
    rst $20
    ld d, a
    ld hl, $1056
    ret


    ld d, b

Call_000_1057:
Jump_000_1057:
    call Call_000_106c
    push hl
    ld hl, $c5b9
    ld bc, $0312
    call Call_000_0fb6
    pop hl

Call_000_1065:
    ld bc, $c5b9
    call Call_000_13e5
    ret


Call_000_106c:
    push hl
    call Call_000_103e
    call Call_000_1ad2
    call Call_000_321c
    pop hl
    ret


Call_000_1078:
Jump_000_1078:
    push hl

Jump_000_1079:
    ld a, [de]
    cp $50
    jr nz, jr_000_1087

    ld b, h
    ld c, l
    pop hl
    ret


    pop de

Jump_000_1083:
    inc de
    jp Jump_000_1079


jr_000_1087:
    cp $15
    jp z, Jump_000_117b

    cp $4f
    jp z, Jump_000_12ea

    cp $4e
    jp z, Jump_000_12a7

    cp $16
    jp z, Jump_000_12b9

    and a
    jp z, Jump_000_1383

    cp $4c
    jp z, Jump_000_1337

    cp $4b
    jp z, Jump_000_131f

    cp $51
    jp z, Jump_000_12f2

    cp $49
    jp z, Jump_000_1186

    cp $52
    jp z, Jump_000_118d

    cp $53
    jp z, Jump_000_1194

    cp $35
    jp z, Jump_000_11e8

    cp $36
    jp z, Jump_000_11ef

    cp $37
    jp z, Jump_000_11f6

    cp $38
    jp z, Jump_000_119b

    cp $39
    jp z, Jump_000_11a2

    cp $54
    jp z, Jump_000_11c5

    cp $5b
    jp z, Jump_000_11b7

    cp $5e
    jp z, Jump_000_11be

    cp $5c
    jp z, Jump_000_11b0

    cp $5d
    jp z, Jump_000_11a9

    cp $23
    jp z, Jump_000_11cc

    cp $22
    jp z, Jump_000_12b0

    cp $55
    jp z, Jump_000_1345

    cp $56
    jp z, Jump_000_11d3

    cp $57
    jp z, Jump_000_137c

    cp $58
    jp z, Jump_000_135a

    cp $4a
    jp z, Jump_000_11da

    cp $24
    jp z, Jump_000_11e1

    cp $25
    jp z, Jump_000_1083

    cp $1f
    jr nz, jr_000_1122

    ld a, $7f

jr_000_1122:
    cp $5f
    jp z, Jump_000_1356

    cp $59
    jp z, Jump_000_11fd

    cp $5a
    jp z, Jump_000_1203

    cp $3f
    jp z, Jump_000_121b

    cp $14
    jp z, Jump_000_1252

    cp $e4
    jr z, jr_000_1174

    cp $e5
    jr z, jr_000_1174

    jr jr_000_114c

    ld b, a
    call Call_000_13c6
    jp Jump_000_1083


jr_000_114c:
    cp $60
    jr nc, jr_000_1174

    cp $40
    jr nc, jr_000_1165

    cp $20
    jr nc, jr_000_115c

    add $80
    jr jr_000_115e

jr_000_115c:
    add $90

jr_000_115e:
    ld b, $e5
    call Call_000_13c6
    jr jr_000_1174

jr_000_1165:
    cp $44
    jr nc, jr_000_116d

    add $59
    jr jr_000_116f

jr_000_116d:
    add $86

jr_000_116f:
    ld b, $e4
    call Call_000_13c6

jr_000_1174:
    ld [hl+], a
    call Call_000_313d
    jp Jump_000_1083


Jump_000_117b:
    ld c, l
    ld b, h
    ld a, $5f
    ld hl, $7036
    rst $08
    jp Jump_000_1079


Jump_000_1186:
    push de
    ld de, $d488
    jp Jump_000_126a


Jump_000_118d:
    push de
    ld de, $d47d
    jp Jump_000_126a


Jump_000_1194:
    push de
    ld de, $d493
    jp Jump_000_126a


Jump_000_119b:
    push de
    ld de, $d49e
    jp Jump_000_126a


Jump_000_11a2:
    push de
    ld de, $d4a9
    jp Jump_000_126a


Jump_000_11a9:
    push de
    ld de, $1276
    jp Jump_000_126a


Jump_000_11b0:
    push de
    ld de, $1273
    jp Jump_000_126a


Jump_000_11b7:
    push de
    ld de, $127e
    jp Jump_000_126a


Jump_000_11be:
    push de
    ld de, $1281
    jp Jump_000_126a


Jump_000_11c5:
    push de
    ld de, $1288
    jp Jump_000_126a


Jump_000_11cc:
    push de
    ld de, $128d
    jp Jump_000_126a


Jump_000_11d3:
    push de
    ld de, $1292
    jp Jump_000_126a


Jump_000_11da:
    push de
    ld de, $129c
    jp Jump_000_126a


Jump_000_11e1:
    push de
    ld de, $129f
    jp Jump_000_126a


Jump_000_11e8:
    push de
    ld de, $12a4
    jp Jump_000_126a


Jump_000_11ef:
    push de
    ld de, $12a4
    jp Jump_000_126a


Jump_000_11f6:
    push de
    ld de, $12a4
    jp Jump_000_126a


Jump_000_11fd:
    ldh a, [$e4]
    xor $01
    jr jr_000_1205

Jump_000_1203:
    ldh a, [$e4]

jr_000_1205:
    push de
    and a
    jr nz, jr_000_120e

    ld de, $c621
    jr jr_000_126a

jr_000_120e:
    ld de, $1295
    call Call_000_1078
    ld h, b
    ld l, c
    ld de, $c616
    jr jr_000_126a

Jump_000_121b:
    push de
    ld a, [$c2dc]
    and a
    jr nz, jr_000_124d

    ld a, [$d233]
    cp $09
    jr z, jr_000_1248

    cp $2a
    jr z, jr_000_1248

    ld de, $c656
    call Call_000_1078
    ld h, b
    ld l, c
    ld de, $12a2
    call Call_000_1078
    push bc
    ld hl, $5939
    ld a, $0e
    rst $08
    pop hl
    ld de, $d073
    jr jr_000_126a

jr_000_1248:
    ld de, $d493
    jr jr_000_126a

jr_000_124d:
    ld de, $c656
    jr jr_000_126a

Jump_000_1252:
    push de
    ld de, $d47d
    call Call_000_1078
    ld h, b
    ld l, c
    ld a, [$d472]
    bit 0, a
    ld de, $12a5
    jr z, jr_000_126a

    ld de, $12a6
    jr jr_000_126a

Jump_000_126a:
jr_000_126a:
    call Call_000_1078
    ld h, b
    ld l, c
    pop de
    jp Jump_000_1083


    sub e
    adc h
    ld d, b
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    adc a
    add d
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    adc a
    adc [hl]
    adc d
    ld [$ba50], a
    or e
    add hl, hl
    or a
    ld d, b
    ld [hl], l
    ld [hl], l
    ld d, b
    add h
    xor l
    and h
    xor h
    cp b
    ld a, a
    ld d, b
    pop hl
    ld [c], a
    ld d, b
    ld [hl], b
    ld [hl], c
    ld d, b
    ld a, a
    ld d, b
    ld d, b
    ld d, b
    ld d, b

Jump_000_12a7:
    pop hl
    ld bc, $0028
    add hl, bc
    push hl
    jp Jump_000_1083


Jump_000_12b0:
    pop hl
    ld bc, $0014
    add hl, bc
    push hl
    jp Jump_000_1083


Jump_000_12b9:
    pop hl
    push de
    ld bc, $3b60
    add hl, bc
    ld de, $ffec
    ld c, $01

jr_000_12c4:
    ld a, h
    and a
    jr nz, jr_000_12cd

    ld a, l
    cp $14
    jr c, jr_000_12d1

jr_000_12cd:
    add hl, de
    inc c
    jr jr_000_12c4

jr_000_12d1:
    ld hl, $c4a0
    ld de, $0014
    ld a, c

jr_000_12d8:
    and a
    jr z, jr_000_12df

    add hl, de
    dec a
    jr jr_000_12d8

jr_000_12df:
    pop de
    inc de
    ld a, [de]
    ld c, a
    ld b, $00
    add hl, bc
    push hl
    jp Jump_000_1083


Jump_000_12ea:
    pop hl
    ld hl, $c5e1
    push hl
    jp Jump_000_1083


Jump_000_12f2:
    push de
    ld a, [$c2dc]
    cp $03
    jr z, jr_000_1301

    cp $04
    jr z, jr_000_1301

    call Call_000_13c7

jr_000_1301:
    call Call_000_13b6
    call Call_000_0aaf
    ld hl, $c5b9
    ld bc, $0312
    call Call_000_0fb6
    call Call_000_13cd
    ld c, $14
    call Call_000_0468
    ld hl, $c5b9
    pop de
    jp Jump_000_1083


Jump_000_131f:
    ld a, [$c2dc]
    or a
    jr nz, jr_000_1328

    call Call_000_13c7

jr_000_1328:
    call Call_000_13b6
    push de
    call Call_000_0aaf
    pop de
    ld a, [$c2dc]
    or a
    call z, Call_000_13cd

Jump_000_1337:
    push de
    call Call_000_138c
    call Call_000_138c
    ld hl, $c5e1
    pop de
    jp Jump_000_1083


Jump_000_1345:
    push de
    ld de, $1354
    ld b, h
    ld c, l
    call Call_000_1078
    ld h, b
    ld l, c
    pop de
    jp Jump_000_1083


    ld c, e
    ld d, b

Jump_000_1356:
    ld [hl], $e8
    pop hl
    ret


Jump_000_135a:
    ld a, [$c2dc]
    cp $03
    jr z, jr_000_1368

    cp $04
    jr z, jr_000_1368

    call Call_000_13c7

jr_000_1368:
    call Call_000_13b6
    call Call_000_0aaf
    ld a, [$c2dc]
    cp $03
    jr z, jr_000_137c

    cp $04
    jr z, jr_000_137c

    call Call_000_13cd

Jump_000_137c:
jr_000_137c:
    pop hl
    ld de, $1382
    dec de
    ret


    ld d, b

Jump_000_1383:
    ld a, $e6
    ld [hl+], a
    call Call_000_313d
    jp Jump_000_1083


Call_000_138c:
    ld hl, $c5b9
    ld de, $c5a5
    ld a, $03

jr_000_1394:
    push af
    ld c, $12

jr_000_1397:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_1397

    inc de
    inc de
    inc hl
    inc hl
    pop af
    dec a
    jr nz, jr_000_1394

    ld hl, $c5e1
    ld a, $7f
    ld bc, $0012
    call Call_000_3041
    ld c, $05
    call Call_000_0468
    ret


Call_000_13b6:
    push bc
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call Call_000_31f6
    pop af
    ldh [$d8], a
    pop bc
    ret


Call_000_13c6:
    ret


Call_000_13c7:
    ld a, $ee
    ld [$c606], a
    ret


Call_000_13cd:
    ld a, [$c605]
    ld [$c606], a
    ret


    ld b, a
    ldh a, [$9d]
    push af
    ld a, b
    rst $10
    call Call_000_1078
    pop af
    rst $10
    ret


    ld hl, $13e4
    ret


    ld d, b

Call_000_13e5:
    ld a, [$cfcf]
    push af
    set 1, a
    ld [$cfcf], a
    call Call_000_13f6
    pop af
    ld [$cfcf], a
    ret


Call_000_13f6:
jr_000_13f6:
    ld a, [hl+]
    cp $50
    ret z

    call Call_000_13ff
    jr jr_000_13f6

Call_000_13ff:
    push hl
    push bc
    ld c, a
    ld b, $00
    ld hl, $1410
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop bc
    pop hl
    push de
    ret


    ld a, $14
    ld c, c
    inc d
    ld [hl], b
    inc d
    add b
    inc d
    adc e
    inc d
    sbc e
    inc d
    sbc a
    inc d
    cp d
    inc d
    ret


    inc d
    jp nc, $ed14

    inc d
    nop
    dec d
    ld b, e
    dec d
    ld h, d
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    dec d
    ld l, d
    dec d
    add d
    dec d
    ld d, l
    inc d
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_000_1078
    ld h, d
    ld l, e
    inc hl
    ret


    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, b
    ld l, c
    call Call_000_1078
    pop hl
    ret


    ldh a, [$9d]
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ldh [$9d], a
    ld [$2000], a
    push hl
    ld h, d
    ld l, e
    call Call_000_13f6
    pop hl
    pop af
    ldh [$9d], a
    ld [$2000], a
    ret


    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld c, a
    call Call_000_38bb
    ld b, h
    ld c, l
    pop hl
    ret


    ld a, [hl+]
    ld [$d0e6], a
    ld c, a
    ld a, [hl+]
    ld [$d0e7], a
    ld b, a
    ret


    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push hl
    ld h, d
    ld l, e
    call Call_000_0fe8
    pop hl
    ret


    ld bc, $c5e1
    ret


    ld a, [$c2dc]
    cp $03
    jp z, Jump_000_1562

    cp $04
    jp z, Jump_000_1562

    push hl
    call Call_000_13c7
    push bc
    call Call_000_0aaf
    pop bc
    call Call_000_13cd
    pop hl
    ret


    push hl
    call Call_000_13cd
    call Call_000_138c
    call Call_000_138c
    pop hl
    ld bc, $c5e1
    ret


    bit 7, h
    jr nz, jr_000_14ce

    jp hl


jr_000_14ce:
    ld a, $50
    ld [hl], a
    ret


    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld b, a
    and $0f
    ld c, a
    ld a, b
    and $f0
    swap a
    set 6, a
    ld b, a
    call Call_000_3198
    ld b, h
    ld c, l
    pop hl
    ret


    push hl
    push bc
    call Call_000_0984
    ldh a, [$a8]
    and $03
    jr nz, jr_000_14fd

    ld c, $1e
    call Call_000_0468

jr_000_14fd:
    pop bc
    pop hl
    ret


    push bc
    dec hl
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $152d

jr_000_1508:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_151f

    cp b
    jr z, jr_000_1514

    inc hl
    inc hl
    jr jr_000_1508

jr_000_1514:
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_3c23
    call Call_000_3c55
    pop de

jr_000_151f:
    pop hl
    pop bc
    ret


    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_37ce
    pop de
    pop hl
    pop bc
    ret


    dec bc
    nop
    nop
    ld [de], a
    dec l
    nop
    ld c, $09
    nop
    rrca
    ld bc, $1000
    ld [bc], a
    nop
    ld de, $000a
    inc de
    inc l
    nop
    rst $38
    ld a, [hl+]
    ld d, a
    push hl
    ld h, b
    ld l, c

jr_000_1548:
    push de
    ld a, $75
    ld [hl+], a
    call Call_000_0984
    ldh a, [$a8]
    and $03
    jr nz, jr_000_155a

    ld c, $0a
    call Call_000_0468

jr_000_155a:
    pop de
    dec d
    jr nz, jr_000_1548

    ld b, h
    ld c, l
    pop hl
    ret


Jump_000_1562:
    push hl
    push bc
    call Call_000_0aaf
    pop bc
    pop hl
    ret


    ld a, [hl+]
    push hl
    ld e, a
    ld d, $00
    ld hl, $4000
    add hl, de
    add hl, de
    ld a, $09
    call Call_000_305d
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_000_1078
    pop hl
    ret


    call Call_000_3376
    push hl
    push bc
    ld c, a
    ld b, $00
    ld hl, $15a2
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    call Call_000_1078
    ld h, b
    ld l, c
    ld de, $15d4
    call Call_000_1078
    pop hl
    ret


    or b
    dec d
    or h
    dec d
    cp b
    dec d
    cp l
    dec d
    call nz, $ca15
    dec d
    adc $15
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

Call_000_15d8:
    ldh a, [$e8]
    and a
    ret z

    ldh [rHDMA5], a
    xor a
    ldh [$e8], a
    scf
    ret


Call_000_15e3:
    ldh a, [$db]
    and a
    ret z

    ldh a, [rVBK]
    push af
    ld [$ffd9], sp
    ld hl, $cd70
    ld sp, hl
    ld hl, $cd48
    ld de, $cd20

jr_000_15f7:
    pop bc
    ld a, $01
    ldh [rVBK], a
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    dec c
    ld a, $00
    ldh [rVBK], a
    ld a, [de]
    inc de
    ld [bc], a
    inc c
    ld a, [de]
    inc de
    ld [bc], a
    pop bc
    ld a, $01
    ldh [rVBK], a
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    dec c
    ld a, $00
    ldh [rVBK], a
    ld a, [de]
    inc de
    ld [bc], a
    inc c
    ld a, [de]
    inc de
    ld [bc], a
    ldh a, [$dc]
    dec a
    dec a
    ldh [$dc], a
    jr nz, jr_000_15f7

    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    pop af
    ldh [rVBK], a
    xor a
    ldh [$db], a
    scf
    ret


jr_000_163a:
    ldh a, [$d4]
    and a
    ret z

    ldh a, [$d5]
    and a
    jr z, jr_000_1648

    call Call_000_045a
    jr jr_000_163a

jr_000_1648:
    xor a
    ldh [$d4], a
    ret


Call_000_164c:
    ldh a, [$d4]
    and a
    ret z

    dec a
    jr z, jr_000_168a

    dec a
    jr z, jr_000_167b

    dec a
    ldh a, [$d6]
    ld l, a
    ldh a, [$d7]
    ld h, a
    push hl
    xor a
    ldh [$d6], a
    ld a, $9c
    ldh [$d7], a
    ldh a, [$d4]
    push af
    cp $03
    call z, Call_000_168a
    pop af
    cp $04
    call z, Call_000_167b
    pop hl
    ld a, l
    ldh [$d6], a
    ld a, h
    ldh [$d7], a
    ret


Call_000_167b:
jr_000_167b:
    ld a, $01
    ldh [rVBK], a
    ld hl, $cdd9
    call Call_000_168d
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_168a:
jr_000_168a:
    ld hl, $c4a0

Call_000_168d:
    ld [$ffd9], sp
    ldh a, [$d5]
    and a
    jr z, jr_000_16bd

    dec a
    jr z, jr_000_16aa

    ld de, $00f0
    add hl, de
    ld sp, hl
    ldh a, [$d7]
    ld h, a
    ldh a, [$d6]
    ld l, a
    ld de, $0180
    add hl, de
    xor a
    jr jr_000_16c6

jr_000_16aa:
    ld de, $0078
    add hl, de
    ld sp, hl
    ldh a, [$d7]
    ld h, a
    ldh a, [$d6]
    ld l, a
    ld de, $00c0
    add hl, de
    ld a, $02
    jr jr_000_16c6

jr_000_16bd:
    ld sp, hl
    ldh a, [$d7]
    ld h, a
    ldh a, [$d6]
    ld l, a
    ld a, $01

jr_000_16c6:
    ldh [$d5], a
    ld a, $06
    ld bc, $000d

jr_000_16cd:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    add hl, bc
    dec a
    jr nz, jr_000_16cd

    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    ret


Call_000_170a:
    ld a, [$cf6c]
    and a
    ret z

    ldh a, [rLY]
    cp $90
    ret c

    cp $92
    ret nc

    ld [$ffd9], sp
    ld hl, $cf6d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ld hl, $cf6f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf6c]
    ld b, a
    xor a
    ld [$cf6c], a

jr_000_172f:
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc hl
    dec b
    jr nz, jr_000_172f

    ld a, l
    ld [$cf6f], a
    ld a, h
    ld [$cf70], a
    ld [$cf6d], sp
    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    ret


Call_000_1769:
    ld a, [$cf67]
    and a
    ret z

    ldh a, [rLY]
    cp $90
    ret c

    cp $92
    ret nc

    jr jr_000_177d

Call_000_1778:
    ld a, [$cf67]
    and a
    ret z

jr_000_177d:
    ld [$ffd9], sp
    ld hl, $cf68
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    ld hl, $cf6a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf67]
    ld b, a
    xor a
    ld [$cf67], a

jr_000_1795:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc hl
    dec b
    jr nz, jr_000_1795

    ld a, l
    ld [$cf6a], a
    ld a, h
    ld [$cf6b], a
    ld [$cf68], sp
    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    ret


Call_000_17d3:
    ldh a, [$de]
    and a
    ret z

    ldh a, [rLY]
    cp $90
    ret c

    cp $97
    ret nc

    ldh a, [$9d]
    push af
    ld a, $3f
    rst $10
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ldh a, [rVBK]
    push af
    ld a, $00
    ldh [rVBK], a
    call $4000
    pop af
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    pop af
    rst $10
    ret


    push hl
    push de
    push bc
    ld c, a
    ld a, $05
    ld hl, $42c4
    rst $08
    ld a, c
    pop bc
    pop de
    pop hl
    ret


    push hl
    push bc
    ld hl, $d156
    ld c, $1f
    ld b, a
    ldh a, [$af]
    cp $00
    jr z, jr_000_182b

    ld a, b

jr_000_181d:
    cp [hl]
    jr z, jr_000_1830

    inc hl
    inc hl
    dec c
    jr nz, jr_000_181d

    ld a, [$d155]
    scf
    jr jr_000_1833

jr_000_182b:
    ld a, [$d155]
    jr jr_000_1833

jr_000_1830:
    inc hl
    xor a
    ld a, [hl]

jr_000_1833:
    pop bc
    pop hl
    ret


    push de
    push hl
    ld b, a
    ldh a, [$9d]
    push af
    ld a, $05
    rst $10
    ld a, b
    call $42a7
    ld c, a
    pop de
    ld a, d
    rst $10
    pop hl
    pop de
    ret


    ld a, [$d4e4]
    call Call_000_185d
    ld b, a
    ret


    ld a, [$d4e4]
    call Call_000_185d
    sub $01
    ret z

    and a
    ret


Call_000_185d:
    push de
    push hl
    ld hl, $4e1f
    ld e, a
    ld d, $00
    add hl, de
    ldh a, [$9d]
    push af
    ld a, $13
    rst $10
    ld e, [hl]
    pop af
    rst $10
    ld a, e
    and $0f
    pop hl
    pop de
    ret


    ld d, a
    and $f0
    cp $10
    jr z, jr_000_1882

    cp $20
    jr z, jr_000_1888

    scf
    ret


jr_000_1882:
    ld a, d
    and $07
    ret z

    scf
    ret


jr_000_1888:
    ld a, d
    and $07
    ret z

    scf
    ret


    cp $14
    ret z

    cp $1c
    ret


    cp $12
    ret z

    cp $1a
    ret


    cp $15
    ret z

    cp $1d
    ret


    cp $90
    ret z

    cp $98
    ret


    cp $60
    ret z

    cp $68
    ret


    cp $23
    ret z

    cp $2b
    ret z

    scf
    ret


    nop
    cp $24
    ret z

    cp $2c
    ret z

    scf
    ret


    cp $33
    ret z

    cp $3b
    ret


    ld a, [$d4e4]
    cp $71
    ret z

    cp $79
    ret z

    cp $7a
    ret z

    cp $7b
    ret


Call_000_18d2:
    ld hl, $d71e
    ld bc, $0010
    call Call_000_30fe
    ld b, h
    ld c, l
    ret


Call_000_18de:
    ldh [$af], a
    call Call_000_18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_18f3

    ldh [$b0], a
    call Call_000_1ae5
    and a
    ret


jr_000_18f3:
    scf
    ret


    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_000_1921

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_191c

    ld hl, $191e
    ld a, [$d269]
    add l
    ld l, a
    jr nc, jr_000_1912

    inc h

jr_000_1912:
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    and [hl]
    jr nz, jr_000_191c

    scf
    ret


jr_000_191c:
    and a
    ret


    ld bc, $0402

jr_000_1921:
    ld hl, $0006
    add hl, bc
    ld d, [hl]
    ld hl, $0007
    add hl, bc
    ld e, [hl]
    ld hl, $ff94
    ld a, d
    cp e
    jr z, jr_000_1949

    jr c, jr_000_193f

    ld a, [hl]
    cp d
    jr nc, jr_000_1949

    cp e
    jr c, jr_000_1949

    jr z, jr_000_1949

    jr jr_000_194b

jr_000_193f:
    ld a, e
    cp [hl]
    jr c, jr_000_194b

    ld a, [hl]
    cp d
    jr nc, jr_000_1949

    jr jr_000_194b

jr_000_1949:
    and a
    ret


jr_000_194b:
    scf
    ret


    ldh [$af], a
    call Call_000_18d2
    call $40e7
    ret


    ldh [$af], a
    call Call_000_271e
    ldh a, [$af]
    call Call_000_18d2
    ld a, $02
    ld hl, $40e7
    rst $08
    ret


Call_000_1967:
    ldh [$af], a
    call Call_000_18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    ld [hl], $ff
    push af
    call Call_000_1985
    pop af
    call Call_000_1ae5
    ld a, $01
    ld hl, $4357
    rst $08
    ret


Call_000_1985:
    ld hl, $d4cd
    cp [hl]
    jr z, jr_000_1990

    ld hl, $d4ce
    cp [hl]
    ret nz

jr_000_1990:
    ld a, $01
    ld hl, $581f
    rst $08
    ld a, $ff
    ld [$d4cd], a
    ld [$d4ce], a
    ret


    call Call_000_1967
    call Call_000_2712
    ret


    push hl
    call Call_000_18d2
    ld d, b
    ld e, c
    ld a, $ff
    ld [de], a
    inc de
    pop hl
    ld bc, $000f
    call Call_000_3026
    ret


    call Call_000_18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    push af
    ld [hl], $ff
    inc hl
    ld bc, $000f
    xor a
    call Call_000_3041
    pop af
    cp $ff
    ret z

    cp $0d
    ret nc

    ld b, a
    ld a, [$d4cd]
    cp b
    jr nz, jr_000_19de

    ld a, $ff
    ld [$d4cd], a

jr_000_19de:
    ld a, b
    call Call_000_1ae5
    ld a, $01
    ld hl, $4357
    rst $08
    ret


Call_000_19e9:
    ld [$c2e2], a
    ldh a, [$9d]
    ld [$c2e3], a
    ld a, l
    ld [$c2e4], a
    ld a, h
    ld [$c2e5], a
    ld a, [$c2e2]
    call Call_000_18de
    ret c

    ld hl, $0003
    add hl, bc
    ld [hl], $14
    ld hl, $0009
    add hl, bc
    ld [hl], $00
    ld hl, $d0ed
    set 7, [hl]
    and a
    ret


    push bc
    push de
    ld hl, $d4d6
    ld de, $0028
    ld c, $0d

jr_000_1a1d:
    ld a, [hl]
    and a
    jr z, jr_000_1a28

    add hl, de
    dec c
    jr nz, jr_000_1a1d

    xor a
    jr jr_000_1a2c

jr_000_1a28:
    ld a, $0d
    sub c
    scf

jr_000_1a2c:
    pop de
    pop bc
    ret


    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $25
    jr c, jr_000_1a39

    xor a

jr_000_1a39:
    ld hl, $4273
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl]
    ret


    push bc
    push de
    ld e, a
    ld d, $00
    ld hl, $4274
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, $01
    call Call_000_304d
    add a
    add a
    and $0c
    pop de
    pop bc
    ret


    ld l, a
    ldh a, [$9d]
    push af
    ld a, $01
    rst $10
    ld a, l
    push bc
    call Call_000_1a71
    pop bc
    pop af
    rst $10
    ret


Call_000_1a71:
    ld hl, $0003
    add hl, de
    ld [hl], a
    push de
    ld e, a
    ld d, $00
    ld hl, $4274
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld b, h
    ld c, l
    pop de
    ld a, [bc]
    inc bc
    rlca
    rlca
    and $0c
    ld hl, $0008
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000b
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0006
    add hl, de
    ld [hl], a
    ret


    ldh a, [$9d]
    push af
    ld a, [hl+]
    rst $10
    ld a, [hl+]
    ld d, [hl]
    ld hl, $001b
    add hl, bc
    add [hl]
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc [hl]
    ld a, [de]
    ld h, a
    pop af
    rst $10
    ld a, h
    ret


    ld hl, $d0ed
    set 0, [hl]
    ret


    ld hl, $d0ed
    res 0, [hl]
    ret


Call_000_1ad2:
    ld a, [$d0ed]
    bit 0, a
    ret z

    ld a, $01
    ld hl, $55e0
    rst $08
    ld a, $01
    ld hl, $5920
    rst $08
    ret


Call_000_1ae5:
    ld bc, $0028
    ld hl, $d4d6
    call Call_000_30fe
    ld b, h
    ld c, l
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    and a
    ret


    push af
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $f3
    ld e, a
    pop af
    and $0c
    or e
    ld [hl], a
    ret


Call_000_1b07:
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $0c
    ret


    add $10
    ld e, a
    ldh a, [$9d]
    push af
    ld a, $02
    rst $10
    call $44d9
    pop af
    rst $10
    ret


    ld [$d003], a
    xor a
    ld [$d002], a
    ld a, $00
    ld [$d004], a
    ld a, $07
    ld [$d005], a
    ld a, $d0
    ld [$d006], a
    ret


    ld a, [$d002]
    and a
    ret z

    dec a
    ld [$d002], a
    ret


Call_000_1b3f:
    push hl
    push de
    ld hl, $d002
    ld e, [hl]
    inc [hl]
    ld d, $00
    ld hl, $d007
    add hl, de
    ld [hl], a
    pop de
    pop hl
    ret


Call_000_1b50:
    push af
    ld a, c
    and a
    jr nz, jr_000_1b57

    pop af
    ret


jr_000_1b57:
    pop af

jr_000_1b58:
    call Call_000_1b3f
    dec c
    jr nz, jr_000_1b58

    ret


    push af
    ld a, b
    sub d
    ld h, $02
    jr nc, jr_000_1b6a

    dec a
    cpl
    ld h, $03

jr_000_1b6a:
    ld d, a
    ld a, c
    sub e
    ld l, $01
    jr nc, jr_000_1b75

    dec a
    cpl
    ld l, $00

jr_000_1b75:
    ld e, a
    cp d
    jr nc, jr_000_1b7f

    ld a, h
    ld h, l
    ld l, a
    ld a, d
    ld d, e
    ld e, a

jr_000_1b7f:
    pop af
    ld b, a
    ld a, h
    call Call_000_1b92
    ld c, d
    call Call_000_1b50
    ld a, l
    call Call_000_1b92
    ld c, e
    call Call_000_1b50
    ret


Call_000_1b92:
    push de
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    ld e, a
    ld d, $00
    add hl, de
    ld de, $1ba5
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    push hl
    push bc
    ld hl, $cfa1
    ld b, $08

jr_000_1bb8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_1bb8

    ld a, $01
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop bc
    pop hl
    ret


Call_000_1bc9:
    ld hl, $41a8
    ld a, $09
    rst $08
    call Call_000_1bdd
    ret


Call_000_1bd3:
    ld hl, $41ab
    ld a, $09
    rst $08
    call Call_000_1bdd
    ret


Call_000_1bdd:
    push bc
    push af
    ldh a, [$a9]
    and $f0
    ld b, a
    ldh a, [$a7]
    and $0f
    or b
    ld b, a
    pop af
    ld a, b
    pop bc
    ret


    ld hl, $cfac
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], $ec
    ret


    ld hl, $cfac
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], $7f
    ret


Call_000_1c00:
    ld hl, $4374
    ld a, $09
    rst $08
    ret


Call_000_1c07:
    push af
    ld hl, $43e8
    ld a, $09
    rst $08
    pop af
    ret


Call_000_1c10:
    ld hl, $446d
    ld a, $09
    rst $08
    ret


Call_000_1c17:
    push af
    call Call_000_1c07
    call Call_000_321c
    call Call_000_1ad2
    pop af
    ret


    call Call_000_1cfd
    call Call_000_1c30
    call Call_000_1d19
    call Call_000_1c30
    ret


Call_000_1c30:
    call Call_000_1c53
    inc b
    inc c

jr_000_1c35:
    push bc
    push hl

jr_000_1c37:
    ld a, [de]
    ld [hl+], a
    dec de
    dec c
    jr nz, jr_000_1c37

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_1c35

    ret


    ld b, $10
    ld de, $cf81

jr_000_1c4c:
    ld a, [hl-]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1c4c

    ret


Call_000_1c53:
    ld a, [$cf82]
    ld b, a
    ld a, [$cf84]
    sub b
    ld b, a
    ld a, [$cf83]
    ld c, a
    ld a, [$cf85]
    sub c
    ld c, a
    ret


Call_000_1c66:
    push hl
    push de
    push bc
    push af
    ld hl, $cf86
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cf91
    ld bc, $0010
    call Call_000_3026
    pop af
    pop bc
    pop de
    pop hl
    ret


    ld hl, $cf71
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_1c89:
    call Call_000_1c66
    ld hl, $cf86
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_1cc6
    call Call_000_1d05
    inc de
    ld a, [de]
    inc de
    ld b, a

jr_000_1c9c:
    push bc
    call Call_000_1078
    inc de
    ld bc, $0028
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_1c9c

    ld a, [$cf91]
    bit 4, a
    ret z

    call Call_000_1cfd
    ld a, [de]
    ld c, a
    inc de
    ld b, $00
    add hl, bc
    jp Jump_000_1078


Call_000_1cbb:
    call Call_000_1cfd
    call Call_000_1c53
    dec b
    dec c
    jp Jump_000_0fe8


Call_000_1cc6:
    ld a, [$cf82]
    ld b, a
    inc b
    ld a, [$cf83]
    ld c, a
    inc c
    ld a, [$cf91]
    bit 6, a
    jr nz, jr_000_1cd8

    inc b

jr_000_1cd8:
    ld a, [$cf91]
    bit 7, a
    jr z, jr_000_1ce0

    inc c

jr_000_1ce0:
    ret


    call Call_000_1cfd
    ld bc, $0015
    add hl, bc
    call Call_000_1c53
    dec b
    dec c
    call Call_000_0fb6
    ret


    call Call_000_1cfd
    call Call_000_1c53
    inc c
    inc b
    call Call_000_0fb6
    ret


Call_000_1cfd:
    ld a, [$cf83]
    ld c, a
    ld a, [$cf82]
    ld b, a

Call_000_1d05:
    xor a
    ld h, a
    ld l, b
    ld a, c
    ld b, h
    ld c, l
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld bc, $c4a0
    add hl, bc
    ret


Call_000_1d19:
    ld a, [$cf83]
    ld c, a
    ld a, [$cf82]
    ld b, a
    xor a
    ld h, a
    ld l, b
    ld a, c
    ld b, h
    ld c, l
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld bc, $cdd9
    add hl, bc
    ret


Call_000_1d35:
    call Call_000_1d3c
    call Call_000_1c00
    ret


Call_000_1d3c:
    ld de, $cf81
    ld bc, $0010
    call Call_000_3026
    ldh a, [$9d]
    ld [$cf8a], a
    ret


    ld [$cf88], a
    ret


Call_000_1d4f:
    push hl
    call Call_000_1d58
    pop hl
    jp Jump_000_1057


    ret


Call_000_1d58:
    ld hl, $1d5f
    call Call_000_1d35
    ret


    ld b, b
    inc c
    nop
    ld de, $0013
    add b
    nop
    call Call_000_1d4f
    call Call_000_1c17
    ret


Call_000_1d6e:
    ld hl, $1d75
    call Call_000_1d35
    ret


    ld b, b
    nop
    nop
    ld de, $0013
    nop
    ld bc, $07cd
    inc e
    ret


Call_000_1d81:
    xor a
    ldh [$d4], a
    call Call_000_1cbb
    call Call_000_1ad2
    call Call_000_1c89
    call Call_000_321c
    call Call_000_1c66
    ld a, [$cf91]
    bit 7, a
    jr z, jr_000_1da7

    call Call_000_1c10
    call Call_000_1bc9
    call Call_000_1ff8
    bit 1, a
    jr z, jr_000_1da9

jr_000_1da7:
    scf
    ret


jr_000_1da9:
    and a
    ret


    call Call_000_1d35
    call Call_000_1d81
    call Call_000_1c17
    ld a, [$cfa9]
    ret


    push hl
    push bc
    push af
    ld hl, $cf86
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    pop af
    call Call_000_3411
    ld d, h
    ld e, l
    call Call_000_30d6
    pop bc
    pop hl
    ret


    ld bc, $0e07
    jr jr_000_1dd9

    call Call_000_1d35
    jr jr_000_1dfe

jr_000_1dd9:
    push bc
    ld hl, $1e1d
    call Call_000_1d3c
    pop bc
    ld a, b
    cp $0e
    jr nz, jr_000_1de9

    ld a, $0e
    ld b, a

jr_000_1de9:
    ld a, b
    ld [$cf83], a
    add $05
    ld [$cf85], a
    ld a, c
    ld [$cf82], a
    add $04
    ld [$cf84], a
    call Call_000_1c00

jr_000_1dfe:
    call Call_000_1d81
    push af
    ld c, $0f
    call Call_000_0468
    call Call_000_1c17
    pop af
    jr c, jr_000_1e16

    ld a, [$cfa9]
    cp $02
    jr z, jr_000_1e16

    and a
    ret


jr_000_1e16:
    ld a, $02
    ld [$cfa9], a
    scf
    ret


    ld b, b
    dec b
    ld a, [bc]
    add hl, bc
    rrca
    dec h
    ld e, $01
    ret nz

    ld [bc], a
    sbc b
    add h
    sub d
    ld d, b
    adc l
    adc [hl]
    ld d, b
    call Call_000_1e35
    call Call_000_1c00
    ret


Call_000_1e35:
    push de
    call Call_000_1d3c
    pop de
    ld a, [$cf83]
    ld h, a
    ld a, [$cf85]
    sub h
    ld h, a
    ld a, d
    ld [$cf83], a
    add h
    ld [$cf85], a
    ld a, [$cf82]
    ld l, a
    ld a, [$cf84]
    sub l
    ld l, a
    ld a, e
    ld [$cf82], a
    add l
    ld [$cf84], a
    ret


    call Call_000_1e7f
    call Call_000_1e8c
    call Call_000_1eff
    call Call_000_1f23
    call Call_000_1bdd
    call Call_000_1ff8
    ret


    call Call_000_1e7f
    call Call_000_1e8c
    call Call_000_1eff
    ld hl, $cfa5
    set 7, [hl]
    ret


Call_000_1e7f:
    call Call_000_1c66
    call Call_000_1ebd
    call Call_000_1ea6
    call Call_000_1cbb
    ret


Call_000_1e8c:
    xor a
    ldh [$d4], a
    call Call_000_1ebd
    call Call_000_1eda
    call Call_000_2e31
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call Call_000_321c
    pop af
    ldh [$d8], a
    ret


Call_000_1ea6:
    ld a, [$cf83]
    ld c, a
    ld a, [$cf85]
    sub c
    ld c, a
    ld a, [$cf92]
    add a
    inc a
    ld b, a
    ld a, [$cf82]
    add b
    ld [$cf84], a
    ret


Call_000_1ebd:
    ld hl, $cf93
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf76]
    and a
    jr z, jr_000_1ed3

    ld b, a
    ld c, $ff

jr_000_1ecc:
    ld a, [hl+]
    cp c
    jr nz, jr_000_1ecc

    dec b
    jr nz, jr_000_1ecc

jr_000_1ed3:
    ld d, h
    ld e, l
    ld a, [hl]
    ld [$cf92], a
    ret


Call_000_1eda:
    call Call_000_1cfd
    ld bc, $002a
    add hl, bc

jr_000_1ee1:
    inc de
    ld a, [de]
    cp $ff
    ret z

    ld [$cf74], a
    push de
    push hl
    ld d, h
    ld e, l
    ld hl, $cf95
    call Call_000_1efb
    pop hl
    ld de, $0028
    add hl, de
    pop de
    jr jr_000_1ee1

Call_000_1efb:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_1eff:
    call Call_000_1c10
    ld hl, $cfa8
    ld a, [$cf91]
    bit 3, a
    jr z, jr_000_1f0e

    set 3, [hl]

jr_000_1f0e:
    ld a, [$cf91]
    bit 2, a
    jr z, jr_000_1f19

    set 5, [hl]
    set 4, [hl]

jr_000_1f19:
    ret


    call Call_000_1bd3
    ld hl, $cfa8
    and [hl]
    jr jr_000_1f2a

Call_000_1f23:
    xor a
    ld [$cf73], a
    call Call_000_1bc9

jr_000_1f2a:
    bit 0, a
    jr nz, jr_000_1f52

    bit 1, a
    jr nz, jr_000_1f6d

    bit 3, a
    jr nz, jr_000_1f6d

    bit 4, a
    jr nz, jr_000_1f44

    bit 5, a
    jr nz, jr_000_1f4b

    xor a
    ld [$cf73], a
    jr jr_000_1f57

jr_000_1f44:
    ld a, $10
    ld [$cf73], a
    jr jr_000_1f57

jr_000_1f4b:
    ld a, $20
    ld [$cf73], a
    jr jr_000_1f57

jr_000_1f52:
    ld a, $01
    ld [$cf73], a

jr_000_1f57:
    call Call_000_1ebd
    ld a, [$cfa9]
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    ld [$cf74], a
    ld a, [$cfa9]
    ld [$cf88], a
    and a
    ret


jr_000_1f6d:
    ld a, $02
    ld [$cf73], a
    ld a, $ff
    ld [$cf74], a
    scf
    ret


    push de
    ld hl, $cf97
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf74]
    call Call_000_3411
    ld d, h
    ld e, l
    pop hl
    call Call_000_1078
    ret


    push de
    ld a, [$cf74]
    call Call_000_1fb1
    inc hl
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_1078
    ret


    call Call_000_1fb1
    inc hl
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ret


    ld a, [$cf74]
    call Call_000_1fb1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_1fb1:
    ld e, a
    ld d, $00
    ld hl, $cf97
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ret


Call_000_1fbf:
    ld hl, $cf71
    call Call_000_1ff0
    ld hl, $cf81
    call Call_000_1ff0
    ld hl, $cf91
    call Call_000_1ff0
    ld hl, $cfa1
    call Call_000_1ff0
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    xor a
    ld hl, $dfff
    ld [hl-], a
    ld [hl-], a
    ld a, l
    ld [$cf71], a
    ld a, h
    ld [$cf72], a
    pop af
    ldh [rSVBK], a
    ret


Call_000_1ff0:
    ld bc, $0010
    xor a
    call Call_000_3041
    ret


Call_000_1ff8:
    push af
    and $03
    jr z, jr_000_2007

    ld hl, $cf81
    bit 3, [hl]
    jr nz, jr_000_2007

    call Call_000_2009

jr_000_2007:
    pop af
    ret


Call_000_2009:
    push de
    ld de, $0008
    call Call_000_3c23
    pop de
    ret


    call Call_000_1d4f
    call Call_000_0a46
    call Call_000_1c07
    ret


    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_1078
    pop af
    rst $10
    ret


    ldh a, [$9d]
    ld [$cf94], a
    ld a, $09
    ld hl, $400e
    rst $08
    ld a, [$cf88]
    ret


    ldh a, [$9d]
    ld [$cf94], a
    ld a, $09
    ld hl, $4022
    rst $08
    ld a, [$cf88]
    ret


    ldh a, [$9d]
    ld [$cf94], a
    ld a, $09
    ld hl, $403c
    rst $08
    ld a, [$cf88]
    ret


Call_000_2057:
    ldh a, [$9d]
    push af
    ld a, $21
    rst $10
    call $42db
    pop af
    rst $10
    ret


Call_000_2063:
    ld a, [$c2d4]
    bit 0, a
    ret z

    ld a, [$c2d5]
    and a
    ret nz

    ld hl, $ca8a
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    ld a, $0c
    ld [$c2d5], a
    ld a, $88
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


    xor a
    ld [$d4c3], a
    ld [$d4c4], a
    ld [$d4c5], a
    ld [$d4c6], a
    ld [$d4c7], a
    ld [$d4c8], a
    ret


Call_000_209e:
    nop
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    call Call_000_20ad
    pop af
    ldh [rSVBK], a
    ret


Call_000_20ad:
    ld a, [$c2cd]
    and a
    ret nz

    ld hl, $cfbc
    bit 0, [hl]
    ret z

    ld hl, $d4c3
    bit 0, [hl]
    ret nz

    ld hl, $d4c8
    ld a, [hl]
    inc a
    cp $3c
    jr nc, jr_000_20c9

    ld [hl], a
    ret


jr_000_20c9:
    xor a
    ld [hl], a
    ld hl, $d4c7
    ld a, [hl]
    inc a
    cp $3c
    jr nc, jr_000_20d6

    ld [hl], a
    ret


jr_000_20d6:
    xor a
    ld [hl], a
    ld hl, $d4c6
    ld a, [hl]
    inc a
    cp $3c
    jr nc, jr_000_20e3

    ld [hl], a
    ret


jr_000_20e3:
    xor a
    ld [hl], a
    ld a, [$d4c4]
    ld h, a
    ld a, [$d4c5]
    ld l, a
    inc hl
    ld a, h
    cp $03
    jr c, jr_000_2106

    ld a, l
    cp $e8
    jr c, jr_000_2106

    ld hl, $d4c3
    set 0, [hl]
    ld a, $3b
    ld [$d4c6], a
    ld [$d4c7], a
    ret


jr_000_2106:
    ld a, h
    ld [$d4c4], a
    ld a, l
    ld [$d4c5], a
    ret


    ld hl, $c7e8
    ld bc, $0018
    ld a, $00
    call Call_000_3041
    ret


Call_000_211b:
    push hl
    ld hl, $dbf7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ld a, [hl]
    jr nz, jr_000_2128

    ld a, $ff

jr_000_2128:
    pop hl
    ret


    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    xor a
    ld [$dbf7], a
    ld [$dbf8], a
    call Call_000_2147
    ret c

    ld a, e
    ld [$dbf7], a
    ld a, d
    ld [$dbf8], a
    xor a
    ret


Call_000_2147:
    push bc
    ldh a, [$9d]
    push af
    ld a, $13
    rst $10
    ld hl, $501e

jr_000_2151:
    push hl
    ld a, [hl+]
    cp $ff
    jr z, jr_000_2167

    cp b
    jr nz, jr_000_2160

    ld a, [hl+]
    cp c
    jr nz, jr_000_2160

    jr jr_000_216a

jr_000_2160:
    pop hl
    ld de, $0004
    add hl, de
    jr jr_000_2151

jr_000_2167:
    scf
    jr jr_000_216d

jr_000_216a:
    ld e, [hl]
    inc hl
    ld d, [hl]

jr_000_216d:
    pop hl
    pop bc
    ld a, b
    rst $10
    pop bc
    ret


Call_000_2173:
    call Call_000_217a
    call Call_000_0db1
    ret


Call_000_217a:
    ldh a, [$9d]
    push af
    ld a, [$d1dc]
    rst $10
    call Call_000_2198
    ld a, $60
    ld hl, $c4a0
    ld bc, $0168
    call Call_000_3041
    ld a, $13
    rst $10
    call $515b
    pop af
    rst $10
    ret


Call_000_2198:
    ld a, [$d194]
    ld e, a
    ld a, [$d195]
    ld d, a
    ld hl, $c608
    ld b, $05

Jump_000_21a5:
    push de
    push hl
    ld c, $06

Jump_000_21a9:
    push de
    push hl
    ld a, [de]
    and a
    jr nz, jr_000_21b2

    ld a, [$d19d]

jr_000_21b2:
    ld e, l
    ld d, h
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$d1dd]
    add l
    ld l, a
    ld a, [$d1de]
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    add $14
    ld e, a
    jr nc, jr_000_21d8

    inc d

jr_000_21d8:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    add $14
    ld e, a
    jr nc, jr_000_21eb

    inc d

jr_000_21eb:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, e
    add $14
    ld e, a
    jr nc, jr_000_21fe

    inc d

jr_000_21fe:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ld de, $0004
    add hl, de
    pop de
    inc de
    dec c
    jp nz, Jump_000_21a9

    pop hl
    ld de, $0060
    add hl, de
    pop de
    ld a, [$d19f]
    add $06
    add e
    ld e, a
    jr nc, jr_000_2225

    inc d

jr_000_2225:
    dec b
    jp nz, Jump_000_21a5

    ret


    ld a, $fa
    ldh [$9f], a
    ld a, $05
    ld hl, $5363
    rst $08
    xor a
    ldh [$9f], a
    ret


    call Call_000_2252
    ret nc

    push bc
    ld a, $05
    ld hl, $49af
    rst $08
    pop bc
    ret nc

    call Call_000_22a7
    scf
    ret


    call Call_000_2252
    ret nc

    call Call_000_22a7
    ret


Call_000_2252:
    ld a, $05
    ld hl, $499a
    rst $08
    ret nc

    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_2266
    pop de
    ld a, d
    rst $10
    ret


Call_000_2266:
    ld a, [$d4e7]
    sub $04
    ld e, a
    ld a, [$d4e6]
    sub $04
    ld d, a
    ld a, [$dbfb]
    and a
    ret z

    ld c, a
    ld hl, $dbfc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_227e:
    push hl
    ld a, [hl+]
    cp e
    jr nz, jr_000_2289

    ld a, [hl+]
    cp d
    jr nz, jr_000_2289

    jr jr_000_2296

jr_000_2289:
    pop hl
    ld a, $05
    add l
    ld l, a
    jr nc, jr_000_2291

    inc h

jr_000_2291:
    dec c
    jr nz, jr_000_227e

    xor a
    ret


jr_000_2296:
    pop hl
    call Call_000_22a3
    ret nc

    ld a, [$dbfb]
    inc a
    sub c
    ld c, a
    scf
    ret


Call_000_22a3:
    inc hl
    inc hl
    scf
    ret


Call_000_22a7:
    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_22b4
    pop af
    rst $10
    scf
    ret


Call_000_22b4:
    push bc
    ld hl, $dbfc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    dec a
    ld bc, $0005
    call Call_000_30fe
    ld bc, $0002
    add hl, bc
    ld a, [hl+]
    cp $ff
    jr nz, jr_000_22d0

    ld hl, $dcac
    ld a, [hl+]

jr_000_22d0:
    pop bc
    ld [$d146], a
    ld a, [hl+]
    ld [$d147], a
    ld a, [hl+]
    ld [$d148], a
    ld a, c
    ld [$d149], a
    ld a, [$dcb5]
    ld [$d14a], a
    ld a, [$dcb6]
    ld [$d14b], a
    scf
    ret


    cp $02
    ret z

    cp $01
    ret


    cp $03
    ret z

    cp $04
    ret z

    cp $07
    ret z

    cp $06
    ret


    cp $03
    ret z

    cp $06
    ret z

    cp $05
    ret


    call Call_000_2326
    call Call_000_2c52
    call Call_000_234f
    xor a
    call Call_000_2336
    ret


    call Call_000_2326
    call Call_000_2c52
    call Call_000_234f
    ld a, $01
    call Call_000_2336
    ret


Call_000_2326:
    call Call_000_2c3d
    call Call_000_2c1c
    call Call_000_2c7d
    call Call_000_235c
    call Call_000_2368
    ret


Call_000_2336:
    push af
    ld hl, $d1a6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    call Call_000_23da
    call Call_000_23f1
    call Call_000_2408
    pop af
    and a
    ret nz

    call Call_000_241f
    ret


Call_000_234f:
    ld hl, $d1a4
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_23ac
    call Call_000_23c3
    ret


Call_000_235c:
    ld de, $d19d
    ld c, $0c

jr_000_2361:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_2361

    ret


Call_000_2368:
    ld a, $ff
    ld [$d1a9], a
    ld [$d1b5], a
    ld [$d1c1], a
    ld [$d1cd], a
    ld a, [$d1a8]
    ld b, a
    bit 3, b
    jr z, jr_000_2384

    ld de, $d1a9
    call Call_000_23a3

jr_000_2384:
    bit 2, b
    jr z, jr_000_238e

    ld de, $d1b5
    call Call_000_23a3

jr_000_238e:
    bit 1, b
    jr z, jr_000_2398

    ld de, $d1c1
    call Call_000_23a3

jr_000_2398:
    bit 0, b
    jr z, jr_000_23a2

    ld de, $d1cd
    call Call_000_23a3

jr_000_23a2:
    ret


Call_000_23a3:
    ld c, $0c

jr_000_23a5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_23a5

    ret


Call_000_23ac:
    ld a, [hl+]
    ld c, a
    ld [$dc07], a
    ld a, l
    ld [$dc08], a
    ld a, h
    ld [$dc09], a
    ld a, c
    and a
    ret z

    ld bc, $0004
    call Call_000_30fe
    ret


Call_000_23c3:
    ld a, [hl+]
    ld c, a
    ld [$dc0a], a
    ld a, l
    ld [$dc0b], a
    ld a, h
    ld [$dc0c], a
    ld a, c
    and a
    ret z

    ld bc, $0003
    call Call_000_30fe
    ret


Call_000_23da:
    ld a, [hl+]
    ld c, a
    ld [$dbfb], a
    ld a, l
    ld [$dbfc], a
    ld a, h
    ld [$dbfd], a
    ld a, c
    and a
    ret z

    ld bc, $0005
    call Call_000_30fe
    ret


Call_000_23f1:
    ld a, [hl+]
    ld c, a
    ld [$dbfe], a
    ld a, l
    ld [$dbff], a
    ld a, h
    ld [$dc00], a
    ld a, c
    and a
    ret z

    ld bc, $0008
    call Call_000_30fe
    ret


Call_000_2408:
    ld a, [hl+]
    ld c, a
    ld [$dc01], a
    ld a, l
    ld [$dc02], a
    ld a, h
    ld [$dc03], a
    ld a, c
    and a
    ret z

    ld bc, $0005
    call Call_000_30fe
    ret


Call_000_241f:
    push hl
    call Call_000_2471
    pop de
    ld hl, $d72e
    ld a, [de]
    inc de
    ld [$dc04], a
    ld a, e
    ld [$dc05], a
    ld a, d
    ld [$dc06], a
    ld a, [$dc04]
    call Call_000_2457
    ld a, [$dc04]
    ld c, a
    ld a, $10
    sub c
    jr z, jr_000_2454

    ld bc, $0001
    add hl, bc
    ld bc, $0010

jr_000_244a:
    ld [hl], $00
    inc hl
    ld [hl], $ff
    dec hl
    add hl, bc
    dec a
    jr nz, jr_000_244a

jr_000_2454:
    ld h, d
    ld l, e
    ret


Call_000_2457:
    and a
    ret z

    ld c, a

jr_000_245a:
    push bc
    push hl
    ld a, $ff
    ld [hl+], a
    ld b, $0d

jr_000_2461:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_2461

    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    dec c
    jr nz, jr_000_245a

    ret


Call_000_2471:
    ld hl, $d4fe
    ld bc, $01e0
    xor a
    call Call_000_3041
    ld hl, $d4fe
    ld de, $0028
    ld c, $0c
    xor a

jr_000_2484:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_000_2484

    ret


    call Call_000_2c57
    rst $10
    ld hl, $d1a6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    ld a, [$dcb4]
    dec a
    ld c, a
    ld b, $00
    ld a, $05
    call Call_000_30fe
    ld a, [hl+]
    ld [$dcb7], a
    ld a, [hl+]
    ld [$dcb8], a
    ld a, [hl+]
    cp $ff
    jr nz, jr_000_24b3

    call Call_000_24ba

jr_000_24b3:
    ld a, $41
    ld hl, $486d
    rst $08
    ret


Call_000_24ba:
    ld a, [$d149]
    ld [$dcac], a
    ld a, [$d14a]
    ld [$dcad], a
    ld a, [$d14b]
    ld [$dcae], a
    ret


    ld hl, $c800
    ld bc, $0514
    ld a, $00
    call Call_000_3041
    call Call_000_24e4
    call Call_000_2524
    ld a, $01
    call Call_000_263b
    ret


Call_000_24e4:
    ldh a, [$9d]
    push af
    ld hl, $c800
    ld a, [$d19f]
    ldh [$b0], a
    add $06
    ldh [$af], a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $03
    add hl, bc
    ld a, [$d1a0]
    rst $10
    ld a, [$d1a1]
    ld e, a
    ld a, [$d1a2]
    ld d, a
    ld a, [$d19e]
    ld b, a

jr_000_250c:
    push hl
    ldh a, [$b0]
    ld c, a

jr_000_2510:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_2510

    pop hl
    ldh a, [$af]
    add l
    ld l, a
    jr nc, jr_000_251e

    inc h

jr_000_251e:
    dec b
    jr nz, jr_000_250c

    pop af
    rst $10
    ret


Call_000_2524:
    ld a, [$d1a9]
    cp $ff
    jr z, jr_000_2550

    ld b, a
    ld a, [$d1aa]
    ld c, a
    call Call_000_2c5b
    ld a, [$d1ab]
    ld l, a
    ld a, [$d1ac]
    ld h, a
    ld a, [$d1ad]
    ld e, a
    ld a, [$d1ae]
    ld d, a
    ld a, [$d1af]
    ldh [$af], a
    ld a, [$d1b0]
    ldh [$b0], a
    call Call_000_25d3

jr_000_2550:
    ld a, [$d1b5]
    cp $ff
    jr z, jr_000_257c

    ld b, a
    ld a, [$d1b6]
    ld c, a
    call Call_000_2c5b
    ld a, [$d1b7]
    ld l, a
    ld a, [$d1b8]
    ld h, a
    ld a, [$d1b9]
    ld e, a
    ld a, [$d1ba]
    ld d, a
    ld a, [$d1bb]
    ldh [$af], a
    ld a, [$d1bc]
    ldh [$b0], a
    call Call_000_25d3

jr_000_257c:
    ld a, [$d1c1]
    cp $ff
    jr z, jr_000_25a7

    ld b, a
    ld a, [$d1c2]
    ld c, a
    call Call_000_2c5b
    ld a, [$d1c3]
    ld l, a
    ld a, [$d1c4]
    ld h, a
    ld a, [$d1c5]
    ld e, a
    ld a, [$d1c6]
    ld d, a
    ld a, [$d1c7]
    ld b, a
    ld a, [$d1c8]
    ldh [$af], a
    call Call_000_25f6

jr_000_25a7:
    ld a, [$d1cd]
    cp $ff
    jr z, jr_000_25d2

    ld b, a
    ld a, [$d1ce]
    ld c, a
    call Call_000_2c5b
    ld a, [$d1cf]
    ld l, a
    ld a, [$d1d0]
    ld h, a
    ld a, [$d1d1]
    ld e, a
    ld a, [$d1d2]
    ld d, a
    ld a, [$d1d3]
    ld b, a
    ld a, [$d1d4]
    ldh [$af], a
    call Call_000_25f6

jr_000_25d2:
    ret


Call_000_25d3:
    ld c, $03

jr_000_25d5:
    push de
    push hl
    ldh a, [$af]
    ld b, a

jr_000_25da:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_25da

    pop hl
    ldh a, [$b0]
    ld e, a
    ld d, $00
    add hl, de
    pop de
    ld a, [$d19f]
    add $06
    add e
    ld e, a
    jr nc, jr_000_25f2

    inc d

jr_000_25f2:
    dec c
    jr nz, jr_000_25d5

    ret


Call_000_25f6:
jr_000_25f6:
    ld a, [$d19f]
    add $06
    ldh [$b0], a
    push de
    push hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ldh a, [$af]
    ld e, a
    ld d, $00
    add hl, de
    pop de
    ldh a, [$b0]
    add e
    ld e, a
    jr nc, jr_000_2617

    inc d

jr_000_2617:
    dec b
    jr nz, jr_000_25f6

    ret


    ld [$d432], a
    ret


jr_000_261f:
    ld [$d439], a
    ld a, l
    ld [$d43a], a
    ld a, h
    ld [$d43b], a
    ld a, $ff
    ld [$d438], a
    scf
    ret


Call_000_2631:
    ld a, [$d438]
    and a
    ret nz

    call Call_000_2c57
    jr jr_000_261f

Call_000_263b:
    ld b, a
    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_2653
    jr nc, jr_000_2650

    call Call_000_2c57
    ld b, a
    ld d, h
    ld e, l
    call Call_000_2674

jr_000_2650:
    pop af
    rst $10
    ret


Call_000_2653:
    ld a, [$dc0a]
    ld c, a
    and a
    ret z

    ld hl, $dc0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret z

    ld de, $0003

jr_000_2664:
    ld a, [hl]
    cp b
    jr z, jr_000_266e

    add hl, de
    dec c
    jr nz, jr_000_2664

    xor a
    ret


jr_000_266e:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    scf
    ret


Call_000_2674:
    ld a, $25
    ld hl, $74f3
    rst $08
    ld a, [$d437]
    push af
    ld hl, $d434
    ld a, [hl]
    push af
    set 1, [hl]
    ld a, $25
    ld hl, $6c56
    rst $08
    ld a, $25
    ld hl, $6c5e
    rst $08
    pop af
    ld [$d434], a
    pop af
    ld [$d437], a
    ret


    ldh a, [$9d]
    push af
    ld a, b
    rst $10
    push hl
    call Call_000_103e
    call Call_000_2e31
    ld a, $01
    ldh [$d8], a
    call Call_000_321c
    pop hl
    call Call_000_1065
    xor a
    ldh [$d8], a
    pop af
    rst $10
    ret


    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_26c5
    pop af
    rst $10
    ret


Call_000_26c5:
    push de
    ret


    ldh a, [$9d]
    push af
    ld a, b
    rst $10
    ld a, c
    call Call_000_19e9
    pop hl
    ld a, h
    rst $10
    ret


    push hl
    push bc
    ldh a, [$9d]
    push af
    ld a, [$d439]
    rst $10
    ld hl, $d43a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    inc bc
    ld [hl], b
    dec hl
    ld [hl], c
    ld b, a
    pop af
    rst $10
    ld a, b
    pop bc
    pop hl
    ret


    ld d, c
    ld a, [c]
    ld h, $16
    xor $46
    ld [hl], c
    ld d, b
    ld d, e
    ld a, [$1626]
    db $fc
    ld b, [hl]
    ld [hl], c
    ld d, b
    ld d, e
    ld [bc], a
    daa
    ld d, $06
    ld b, a
    ld [hl], c
    ld d, b
    ldh a, [$af]
    ld e, a
    ld d, $00
    ld hl, $d81e
    add hl, de
    ld a, [hl]
    ret


Call_000_2712:
    ldh a, [$af]
    ld e, a
    ld d, $00
    ld hl, $d81e
    add hl, de
    ld [hl], $ff
    ret


Call_000_271e:
    ldh a, [$af]
    ld e, a
    ld d, $00
    ld hl, $d81e
    add hl, de
    ld [hl], $00
    ret


    ld hl, $c4a0
    ld de, $cd20
    call Call_000_27b7
    ld c, $28
    call Call_000_0dbd
    ld a, [$d152]
    ld e, a
    ld a, [$d153]
    ld d, a
    call Call_000_27d3
    ld a, $01
    ldh [$db], a
    ret


    ld hl, $c5e0
    ld de, $cd20
    call Call_000_27b7
    ld c, $28
    call Call_000_0dbd
    ld a, [$d152]
    ld l, a
    ld a, [$d153]
    ld h, a
    ld bc, $0200
    add hl, bc
    ld a, h
    and $03
    or $98
    ld e, l
    ld d, a
    call Call_000_27d3
    ld a, $01
    ldh [$db], a
    ret


    ld hl, $c4a0
    ld de, $cd20
    call Call_000_27c0
    ld c, $24
    call Call_000_0dbd
    ld a, [$d152]
    ld e, a
    ld a, [$d153]
    ld d, a
    call Call_000_27f8
    ld a, $01
    ldh [$db], a
    ret


    ld hl, $c4b2
    ld de, $cd20
    call Call_000_27c0
    ld c, $24
    call Call_000_0dbd
    ld a, [$d152]
    ld e, a
    and $e0
    ld b, a
    ld a, e
    add $12
    and $1f
    or b
    ld e, a
    ld a, [$d153]
    ld d, a
    call Call_000_27f8
    ld a, $01
    ldh [$db], a
    ret


Call_000_27b7:
    ld c, $28

jr_000_27b9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_27b9

    ret


Call_000_27c0:
    ld c, $12

jr_000_27c2:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $13
    add l
    ld l, a
    jr nc, jr_000_27cf

    inc h

jr_000_27cf:
    dec c
    jr nz, jr_000_27c2

    ret


Call_000_27d3:
    ld hl, $cd70
    push de
    call Call_000_27df
    pop de
    ld a, $20
    add e
    ld e, a

Call_000_27df:
    ld c, $0a

jr_000_27e1:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    inc a
    inc a
    and $1f
    ld b, a
    ld a, e
    and $e0
    or b
    ld e, a
    dec c
    jr nz, jr_000_27e1

    ld a, $14
    ldh [$dc], a
    ret


Call_000_27f8:
    ld hl, $cd70
    ld c, $12

jr_000_27fd:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $20
    add e
    ld e, a
    jr nc, jr_000_280e

    inc d
    ld a, d
    and $03
    or $98
    ld d, a

jr_000_280e:
    dec c
    jr nz, jr_000_27fd

    ld a, $12
    ldh [$dc], a
    ret


    ld hl, $cd20
    ld bc, $0078
    xor a
    call Call_000_3041
    ret


Call_000_2821:
    ld hl, $d1da
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d1d9]
    ld e, a
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld a, e
    ld de, $d000
    call Call_000_0b40
    ld hl, $d000
    ld de, $9000
    ld bc, $0600
    call Call_000_3026
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld hl, $d600
    ld de, $9000
    ld bc, $0600
    call Call_000_3026
    pop af
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    ld a, [$d199]
    cp $01
    jr z, jr_000_286f

    cp $02
    jr z, jr_000_286f

    cp $04
    jr z, jr_000_286f

    jr jr_000_2875

jr_000_286f:
    ld a, $07
    ld hl, $4000
    rst $08

jr_000_2875:
    xor a
    ldh [$df], a
    ret


    ld hl, $d194
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $dcb9
    ld c, $05
    ld b, $06

jr_000_2886:
    push bc
    push hl

jr_000_2888:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2888

    pop hl
    ld a, [$d19f]
    add $06
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    dec c
    jr nz, jr_000_2886

    ret


    ld hl, $d194
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $dcb9
    ld a, [$d19f]
    add $06
    ldh [$af], a
    ld a, [$d151]
    and a
    jr z, jr_000_28cb

    cp $01
    jr z, jr_000_28c0

    cp $02
    jr z, jr_000_28d4

    cp $03
    jr z, jr_000_28da

    ret


jr_000_28c0:
    ld de, $dcbf
    ldh a, [$af]
    ld c, a
    ld b, $00
    add hl, bc
    jr jr_000_28ce

jr_000_28cb:
    ld de, $dcb9

jr_000_28ce:
    ld b, $06
    ld c, $04
    jr jr_000_28f7

jr_000_28d4:
    ld de, $dcba
    inc hl
    jr jr_000_28dd

jr_000_28da:
    ld de, $dcb9

jr_000_28dd:
    ld b, $05
    ld c, $05
    jr jr_000_28f7

    ld hl, $d194
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d19f]
    add $06
    ldh [$af], a
    ld de, $dcb9
    ld b, $06
    ld c, $05

jr_000_28f7:
    push bc
    push hl
    push de

jr_000_28fa:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_28fa

    pop de
    ld a, e
    add $06
    ld e, a
    jr nc, jr_000_2908

    inc d

jr_000_2908:
    pop hl
    ldh a, [$af]
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    dec c
    jr nz, jr_000_28f7

    ret


    xor a
    ld [$c2fe], a
    call Call_000_296c
    call $294d
    ld a, [$d4e6]
    ld d, a
    ld a, [$d4e7]
    ld e, a
    call $2a3c
    ld [$d4e4], a
    call Call_000_29ff
    ret nz

    ld a, [$d4e4]
    and $07
    ld hl, $2945
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c2fe
    or [hl]
    ld [hl], a
    ret


    ld bc, $0402
    ld [$0a09], sp
    dec b
    ld b, $fa
    and $d4
    ld d, a
    ld a, [$d4e7]
    ld e, a
    push de
    inc e
    call $2a3c
    ld [$c2fa], a
    call Call_000_298b
    pop de
    dec e
    call $2a3c
    ld [$c2fb], a
    call Call_000_29a8
    ret


Call_000_296c:
    ld a, [$d4e6]
    ld d, a
    ld a, [$d4e7]
    ld e, a
    push de
    dec d
    call $2a3c
    ld [$c2fc], a
    call Call_000_29e2
    pop de
    inc d
    call $2a3c
    ld [$c2fd], a
    call Call_000_29c5
    ret


Call_000_298b:
    call Call_000_29ff
    ret nz

    ld a, [$c2fa]
    and $07
    cp $02
    jr z, jr_000_299f

    cp $06
    jr z, jr_000_299f

    cp $07
    ret nz

jr_000_299f:
    ld a, [$c2fe]
    or $08
    ld [$c2fe], a
    ret


Call_000_29a8:
    call Call_000_29ff
    ret nz

    ld a, [$c2fb]
    and $07
    cp $03
    jr z, jr_000_29bc

    cp $04
    jr z, jr_000_29bc

    cp $05
    ret nz

jr_000_29bc:
    ld a, [$c2fe]
    or $04
    ld [$c2fe], a
    ret


Call_000_29c5:
    call Call_000_29ff
    ret nz

    ld a, [$c2fd]
    and $07
    cp $01
    jr z, jr_000_29d9

    cp $05
    jr z, jr_000_29d9

    cp $07
    ret nz

jr_000_29d9:
    ld a, [$c2fe]
    or $01
    ld [$c2fe], a
    ret


Call_000_29e2:
    call Call_000_29ff
    ret nz

    ld a, [$c2fc]
    and $07
    cp $00
    jr z, jr_000_29f6

    cp $04
    jr z, jr_000_29f6

    cp $06
    ret nz

jr_000_29f6:
    ld a, [$c2fe]
    or $02
    ld [$c2fe], a
    ret


Call_000_29ff:
    and $f0
    cp $b0
    ret z

    cp $c0
    ret


Call_000_2a07:
    ld a, [$d4de]
    and $0c
    srl a
    srl a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $2a2c
    add hl, de
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d4e6]
    add d
    ld d, a
    ld a, [$d4e7]
    add e
    ld e, a
    ld a, [hl]
    ret


    nop
    ld bc, $c2fa
    nop
    rst $38
    ei
    jp nz, Jump_000_00ff

    db $fc
    jp nz, Jump_000_0001

    db $fd
    jp nz, $66cd

    ld a, [hl+]
    ld a, [hl]
    and a
    jr z, jr_000_2a63

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$d1e0]
    ld c, a
    ld a, [$d1e1]
    ld b, a
    add hl, bc
    rr d
    jr nc, jr_000_2a56

    inc hl

jr_000_2a56:
    rr e
    jr nc, jr_000_2a5c

    inc hl
    inc hl

jr_000_2a5c:
    ld a, [$d1df]
    call Call_000_304d
    ret


jr_000_2a63:
    ld a, $ff
    ret


    ld a, [$d19f]
    add $06
    ld c, a
    ld b, $00
    ld hl, $c801
    add hl, bc
    ld a, e
    srl a
    jr z, jr_000_2a84

    and a

jr_000_2a78:
    srl a
    jr nc, jr_000_2a7d

    add hl, bc

jr_000_2a7d:
    sla c
    rl b
    and a
    jr nz, jr_000_2a78

jr_000_2a84:
    ld c, d
    srl c
    ld b, $00
    add hl, bc
    ret


    call Call_000_2a07
    ld b, a
    ld a, d
    sub $04
    ld d, a
    ld a, e
    sub $04
    ld e, a
    ld a, [$dc01]
    and a
    ret z

    ld c, a
    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_2aaa
    pop hl
    ld a, h
    rst $10
    ret


Call_000_2aaa:
    ld hl, $dc02
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_2ab0:
    push hl
    ld a, [hl+]
    cp e
    jr nz, jr_000_2abb

    ld a, [hl+]
    cp d
    jr nz, jr_000_2abb

    jr jr_000_2ac8

jr_000_2abb:
    pop hl
    ld a, $05
    add l
    ld l, a
    jr nc, jr_000_2ac3

    inc h

jr_000_2ac3:
    dec c
    jr nz, jr_000_2ab0

    xor a
    ret


jr_000_2ac8:
    pop hl
    ld de, $d03e
    ld bc, $0005
    call Call_000_3026
    scf
    ret


    ld a, [$dbfe]
    and a
    ret z

    ld c, a
    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_2ae7
    pop hl
    ld a, h
    rst $10
    ret


Call_000_2ae7:
    ld hl, $dbff
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_211b
    ld b, a
    ld a, [$d4e6]
    sub $04
    ld d, a
    ld a, [$d4e7]
    sub $04
    ld e, a

jr_000_2afd:
    push hl
    ld a, [hl+]
    cp b
    jr z, jr_000_2b06

    cp $ff
    jr nz, jr_000_2b10

jr_000_2b06:
    ld a, [hl+]
    cp e
    jr nz, jr_000_2b10

    ld a, [hl+]
    cp d
    jr nz, jr_000_2b10

    jr jr_000_2b1d

jr_000_2b10:
    pop hl
    ld a, $08
    add l
    ld l, a
    jr nc, jr_000_2b18

    inc h

jr_000_2b18:
    dec c
    jr nz, jr_000_2afd

    xor a
    ret


jr_000_2b1d:
    pop hl
    ld de, $d03e
    ld bc, $0008
    call Call_000_3026
    scf
    ret


    xor a
    ldh [$d4], a
    call Call_000_1d6e
    ld a, $23
    ld hl, $4084
    rst $08
    call Call_000_300b
    call Call_000_2ed3
    ret


    call Call_000_31f3
    call Call_000_2bae
    call Call_000_1ad2
    call $1d7d
    call Call_000_0d90
    jr jr_000_2b5c

    call Call_000_31f3
    call $1d7d
    call Call_000_2bae
    call Call_000_1ad2
    call Call_000_0d90

jr_000_2b5c:
    ld b, $09
    call Call_000_3340
    ld a, $12
    ld hl, $5409
    rst $08
    call Call_000_3200
    ld a, $23
    ld hl, $4079
    rst $08
    call Call_000_2ee4
    ret


    push af
    ld a, $01
    ld [$c2ce], a
    call Call_000_31f3
    call Call_000_300b
    call Call_000_2bae
    ld hl, $c590
    ld bc, $0412
    call Call_000_0fe8
    ld hl, $d0ed
    set 0, [hl]
    call Call_000_1ad2
    call Call_000_3200
    ld b, $09
    call Call_000_3340
    ld a, $12
    ld hl, $5409
    rst $08
    call Call_000_0485
    call Call_000_045a
    ld a, $01
    ldh [$de], a
    pop af
    ret


Call_000_2bae:
    call Call_000_0568
    call Call_000_300b
    ld a, $05
    ld hl, $4168
    rst $08
    call Call_000_0e51
    call Call_000_0e5f
    ldh a, [$9d]
    push af
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call Call_000_2c24
    ld a, $23
    ld hl, $4001
    rst $08
    call Call_000_2173
    call Call_000_2821
    ld a, $09
    call Call_000_3cb4
    pop af
    rst $10
    call Call_000_058a
    ret


Call_000_2be5:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a

Call_000_2bed:
    push bc
    dec b
    ld c, b
    ld b, $00
    ld hl, $4000
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    dec c
    ld b, $00
    ld a, $09
    call Call_000_30fe
    ret


Call_000_2c04:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a

Call_000_2c0c:
    ldh a, [$9d]
    push af
    ld a, $25
    rst $10
    call Call_000_2bed
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    rst $10
    ret


Call_000_2c1c:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a

Call_000_2c24:
    call Call_000_2c31
    rst $10
    ret


    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a

Call_000_2c31:
    push hl
    push de
    ld de, $0000
    call Call_000_2c0c
    ld a, c
    pop de
    pop hl
    ret


Call_000_2c3d:
    ldh a, [$9d]
    push af
    ld a, $25
    rst $10
    call Call_000_2be5
    ld de, $d198
    ld bc, $0005
    call Call_000_3026
    pop af
    rst $10
    ret


Call_000_2c52:
    ld a, [$d1a3]
    rst $10
    ret


Call_000_2c57:
    ld a, [$d1a3]
    ret


Call_000_2c5b:
    push hl
    push de
    push bc
    push bc
    ld de, $0003
    call Call_000_2c0c
    ld l, c
    ld h, b
    pop bc
    push hl
    ld de, $0000
    call Call_000_2c0c
    pop hl
    ld de, $0003
    add hl, de
    ld a, c
    call Call_000_304d
    rst $10
    pop bc
    pop de
    pop hl
    ret


Call_000_2c7d:
    push bc
    push de
    ld de, $0003
    call Call_000_2c04
    ld l, c
    ld h, b
    pop de
    pop bc
    ret


    push hl
    push de
    push bc
    ld de, $0002
    call Call_000_2c04
    ld a, c
    pop bc
    pop de
    pop hl
    ret


    ret


    push hl
    push de
    push bc
    ld de, $0002
    call Call_000_2c0c
    ld a, c
    pop bc
    pop de
    pop hl
    ret


    ld de, $0001
    call Call_000_2c0c
    ld a, c
    ret


Call_000_2caf:
    push hl
    push de
    push bc
    ld de, $0005
    call Call_000_2c0c
    ld a, c
    pop bc
    pop de
    pop hl
    ret


Call_000_2cbd:
    push hl
    push bc
    ld de, $0006
    call Call_000_2c04
    ld a, c
    cp $64
    jr z, jr_000_2cee

    bit 7, c
    jr nz, jr_000_2cda

    ld a, $22
    ld hl, $7342
    rst $08
    ld e, c
    ld d, $00

jr_000_2cd7:
    pop bc
    pop hl
    ret


jr_000_2cda:
    ld a, [$d84d]
    bit 0, a
    jr z, jr_000_2ce6

    ld de, $0056
    jr jr_000_2cd7

jr_000_2ce6:
    ld a, c
    and $7f
    ld e, a
    ld d, $00
    jr jr_000_2cd7

jr_000_2cee:
    ld a, [$d84d]
    bit 7, a
    jr z, jr_000_2cfa

    ld de, $0048
    jr jr_000_2cd7

jr_000_2cfa:
    ld de, $0026
    jr jr_000_2cd7

    call Call_000_2d0d
    and $0f
    ret


    call Call_000_2d0d
    and $f0
    swap a
    ret


Call_000_2d0d:
    push hl
    push bc
    ld de, $0007
    call Call_000_2c04
    ld a, c
    pop bc
    pop hl
    ret


    push de
    push hl
    push bc
    ld de, $0008
    call Call_000_2c04
    ld a, c
    pop bc
    pop hl
    pop de
    ret


    push hl
    push bc
    ld hl, $5596
    ld bc, $000f
    ld a, [$d199]
    call Call_000_30fe
    ld de, $d1d9
    ld bc, $000f
    ld a, $13
    call Call_000_0e8d
    pop bc
    pop hl
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
    ret


    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_2d61
    jr jr_000_2d6e

Call_000_2d61:
    push de
    ret


Jump_000_2d63:
    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_2d82

jr_000_2d6e:
    ld a, b
    ld [$cfb9], a
    ld a, c
    ld [$cfba], a
    pop bc
    ld a, b
    rst $10
    ld a, [$cfb9]
    ld b, a
    ld a, [$cfba]
    ld c, a
    ret


Call_000_2d82:
    jp hl


Call_000_2d83:
Jump_000_2d83:
    ld [$cfb4], a
    ldh a, [$9d]
    push af
    ld a, $02
    rst $10
    call $454b
    rst $10
    ld hl, $2da6
    push hl
    ld a, [$cfb7]
    ld h, a
    ld a, [$cfb8]
    ld l, a
    push hl
    ld a, [$cfb5]
    ld h, a
    ld a, [$cfb6]
    ld l, a
    ret


    ld a, h
    ld [$cfb5], a
    ld a, l
    ld [$cfb6], a
    pop hl
    ld a, h
    rst $10
    ld a, [$cfb5]
    ld h, a
    ld a, [$cfb6]
    ld l, a
    ret


    call Call_000_1fbf
    ldh a, [$9d]
    push af
    ld a, $01
    rst $10
    call $6454
    call Call_000_2e20
    call $64bf
    pop af
    rst $10
    ret


    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call Call_000_2de2
    pop af
    ldh [$d8], a
    ld hl, $d0ed
    res 6, [hl]
    ret


Call_000_2de2:
    call Call_000_1fbf
    xor a
    ldh [$d4], a
    call Call_000_2173
    call Call_000_2e20
    xor a
    ldh [$d4], a
    call Call_000_2e31
    ld a, $90
    ldh [$d2], a
    call Call_000_0e4a
    ld a, $2e
    ld hl, $4000
    rst $08
    ld a, $41
    ld hl, $6594
    rst $08
    ret


    call Call_000_1fbf
    ldh a, [$9d]
    push af
    ld a, $01
    rst $10
    call $6454
    call Call_000_103e
    call Call_000_2e20
    call $64bf
    pop af
    rst $10
    ret


Call_000_2e20:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    ld a, $41
    ld hl, $4110
    rst $08
    pop af
    ldh [$d8], a
    ret


Call_000_2e31:
    ldh a, [$d8]
    push af
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [$d8], a
    call Call_000_1ad2
    xor a
    ldh [$d8], a
    call Call_000_045a
    pop af
    ldh [$d4], a
    pop af
    ldh [$d8], a
    ret


    scf
    ret


    xor a
    ld hl, $da72
    ld [hl+], a
    ret


    xor a
    ld hl, $dbf5
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [$d19a]
    cp $02
    jr z, jr_000_2e69

    cp $01
    jr z, jr_000_2e69

    ret


jr_000_2e69:
    ld hl, $d84c
    res 2, [hl]
    ret


Call_000_2e6f:
    ld hl, $da72
    call Call_000_2e76
    ret


Call_000_2e76:
    ld a, e
    and $07
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    add hl, de
    ld c, $01
    rrca
    jr nc, jr_000_2e8d

    rlc c

jr_000_2e8d:
    rrca
    jr nc, jr_000_2e94

    rlc c
    rlc c

jr_000_2e94:
    rrca
    jr nc, jr_000_2e99

    swap c

jr_000_2e99:
    ld a, b
    cp $01
    jr c, jr_000_2ea8

    jr z, jr_000_2ea4

    ld a, [hl]
    and c
    ld c, a
    ret


jr_000_2ea4:
    ld a, [hl]
    or c
    ld [hl], a
    ret


jr_000_2ea8:
    ld a, c
    cpl
    and [hl]
    ld [hl], a
    ret


    ld de, $000b
    ld b, $02
    ld a, $20
    ld hl, $4430
    rst $08
    ld a, c
    and a
    ret


    ld a, [$c2cc]
    bit 1, a
    ret z

    ldh a, [$a8]
    bit 1, a
    ret


    xor a
    ret


    xor a
    dec a
    ret


    push hl
    ld hl, $c2cc
    bit 1, [hl]
    pop hl
    ret


Call_000_2ed3:
    xor a
    ldh [$de], a
    ld a, [$d0ed]
    res 0, a
    ld [$d0ed], a
    ld a, $00
    ld [$c2ce], a
    ret


Call_000_2ee4:
    ld a, $01
    ld [$c2ce], a
    ld a, [$d0ed]
    set 0, a
    ld [$d0ed], a
    ld a, $01
    ldh [$de], a
    ret


    push hl
    jr jr_000_2efc

    push hl
    ld c, $0a

jr_000_2efc:
    push bc

jr_000_2efd:
    ld a, [hl+]
    cp $50
    jr z, jr_000_2f09

    cp $7f
    jr nz, jr_000_2f14

    dec c
    jr nz, jr_000_2efd

jr_000_2f09:
    pop bc
    ld l, e
    ld h, d
    pop de
    ld b, $00
    inc c
    call Call_000_3026
    ret


jr_000_2f14:
    pop bc
    pop hl
    ret


    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call Call_000_2caf
    cp $5f
    jr z, jr_000_2f39

    cp $00
    jr nz, jr_000_2f35

    ld a, [$dcad]
    ld b, a
    ld a, [$dcae]
    ld c, a
    call Call_000_2caf

jr_000_2f35:
    cp $2f
    jr nc, jr_000_2f3b

jr_000_2f39:
    xor a
    ret


jr_000_2f3b:
    ld a, $01
    ret


    ret


    ld a, $03
    ld hl, $6722
    rst $08
    ret


    push hl
    push de
    push bc
    ld a, $03
    ld hl, $5427
    rst $08
    pop bc
    pop de
    pop hl
    ret


    push hl
    push de
    push bc
    ldh a, [$9d]
    push af
    ld a, $03
    rst $10
    call $520d
    pop bc
    ld a, b
    rst $10
    pop bc
    pop de
    pop hl
    ret


    push bc
    ldh a, [$9d]
    push af
    ld a, $03
    rst $10
    push hl
    push de
    call $51d5
    pop de
    pop hl
    pop bc
    ld a, b
    rst $10
    pop bc
    ret


    push hl
    push de
    push bc
    ldh a, [$9d]
    push af
    ld a, $03
    rst $10
    call $5244
    pop bc
    ld a, b
    rst $10
    pop bc
    pop de
    pop hl
    ret


Call_000_2f8c:
    push bc
    ldh a, [rDIV]
    ld b, a
    ldh a, [$e1]
    adc b
    ldh [$e1], a
    ldh a, [rDIV]
    ld b, a
    ldh a, [$e2]
    sbc b
    ldh [$e2], a
    pop bc
    ret


    ldh a, [$9d]
    push af
    ld a, $0f
    rst $10
    call $6dd8
    ld [$cfb6], a
    pop af
    rst $10
    ld a, [$cfb6]
    ret


    push bc
    ld c, a
    xor a
    sub c

jr_000_2fb5:
    sub c
    jr nc, jr_000_2fb5

    add c
    ld b, a
    push bc

jr_000_2fbb:
    call Call_000_2f8c
    ldh a, [$e1]
    ld c, a
    add b
    jr c, jr_000_2fbb

    ld a, c
    pop bc
    call Call_000_3110
    pop bc
    ret


Call_000_2fcb:
    cp $04
    jr c, jr_000_2fd1

    jr jr_000_2fe1

jr_000_2fd1:
    push af
    ld a, $01
    ld [$6000], a
    ld a, $0a
    ld [$0000], a
    pop af
    ld [$4000], a
    ret


Call_000_2fe1:
jr_000_2fe1:
    push af
    ld a, $00
    ld [$6000], a
    ld [$0000], a
    pop af
    ret


Call_000_2fec:
    jp hl


    push de
    ret


    ld hl, $ff4d
    bit 7, [hl]
    jr z, jr_000_2ffd

    ret


Call_000_2ff7:
    ld hl, $ff4d
    bit 7, [hl]
    ret z

jr_000_2ffd:
    set 0, [hl]
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    stop
    ret


Call_000_300b:
    ld hl, $c400
    ld b, $a0
    xor a

jr_000_3011:
    ld [hl+], a
    dec b
    jr nz, jr_000_3011

    ret


    ld hl, $c400
    ld de, $0004
    ld b, $28
    ld a, $a0

jr_000_3020:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_3020

    ret


Call_000_3026:
Jump_000_3026:
    inc b
    inc c
    jr jr_000_302d

jr_000_302a:
    ld a, [hl+]
    ld [de], a
    inc de

jr_000_302d:
    dec c
    jr nz, jr_000_302a

    dec b
    jr nz, jr_000_302a

    ret


jr_000_3034:
    ld a, [hl]
    push af
    ld a, [de]
    ld [hl+], a
    pop af
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3034

    ret


Call_000_3041:
    inc b
    inc c
    jr jr_000_3046

jr_000_3045:
    ld [hl+], a

jr_000_3046:
    dec c
    jr nz, jr_000_3045

    dec b
    jr nz, jr_000_3045

    ret


Call_000_304d:
    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    ld a, [hl]
    ldh [$8b], a
    pop af
    rst $10
    ldh a, [$8b]
    ret


Call_000_305d:
    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    rst $10
    ret


    ldh [$8b], a
    ldh a, [rSVBK]
    push af
    ldh a, [$8b]
    ldh [rSVBK], a
    call Call_000_3026
    pop af
    ldh [rSVBK], a
    ret


    ldh [$8b], a
    ldh a, [rSVBK]
    push af
    ldh a, [$8b]
    ldh [rSVBK], a
    ld a, [hl]
    ldh [$8b], a
    pop af
    ldh [rSVBK], a
    ldh a, [$8b]
    ret


    ldh [$8b], a
    ldh a, [rSVBK]
    push af
    ldh a, [$8b]
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ldh [rSVBK], a
    ret


Call_000_309d:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld hl, $c4a0
    ld de, $d000
    ld bc, $0168
    call Call_000_3026
    pop af
    ldh [rSVBK], a
    ret


Jump_000_30b4:
    xor a
    ldh [$d4], a
    call Call_000_30bf
    ld a, $01
    ldh [$d4], a
    ret


Call_000_30bf:
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $c4a0
    ld bc, $0168
    call Call_000_3026
    pop af
    ldh [rSVBK], a
    ret


Call_000_30d6:
    ld hl, $d086

jr_000_30d9:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $50
    jr nz, jr_000_30d9

    ret


Jump_000_30e1:
    ld b, $00
    ld c, a

jr_000_30e4:
    ld a, [hl]
    cp $ff
    jr z, jr_000_30f0

    cp c
    jr z, jr_000_30f2

    inc b
    add hl, de
    jr jr_000_30e4

jr_000_30f0:
    and a
    ret


jr_000_30f2:
    scf
    ret


Call_000_30f4:
    ld bc, $000b
    and a
    ret z

jr_000_30f9:
    add hl, bc
    dec a
    jr nz, jr_000_30f9

    ret


Call_000_30fe:
Jump_000_30fe:
    and a
    ret z

jr_000_3100:
    add hl, bc
    dec a
    jr nz, jr_000_3100

    ret


    and a
    ret z

    push bc
    ld b, a
    xor a

jr_000_310a:
    add c
    dec b
    jr nz, jr_000_310a

    pop bc
    ret


Call_000_3110:
    ld b, $00

jr_000_3112:
    inc b
    sub c
    jr nc, jr_000_3112

    dec b
    add c
    ret


    push hl
    push bc
    ld hl, $66de
    ld a, $01
    rst $08
    pop bc
    pop hl
    ret


    push hl
    push de
    push bc
    ldh a, [$9d]
    push af
    ld a, $01
    rst $10
    call $673e
    pop af
    rst $10
    pop bc
    pop de
    pop hl
    ret


    sub b
    ret nc

    cpl
    add $01
    scf
    ret


Call_000_313d:
Jump_000_313d:
    ld a, [$cfcc]
    bit 4, a
    ret nz

    ld a, [$cfcf]
    bit 1, a
    ret z

    push hl
    push de
    push bc
    ld hl, $ffd8
    ld a, [hl]
    push af
    ld [hl], a
    ld a, [$cfcf]
    bit 0, a
    jr z, jr_000_3160

    ld a, [$cfcc]
    and $07
    jr jr_000_3162

jr_000_3160:
    ld a, $01

jr_000_3162:
    ld [$cfb2], a

jr_000_3165:
    call Call_000_0984
    ld a, [$c2d7]
    and a
    jr nz, jr_000_317f

    ldh a, [$a8]
    bit 0, a
    jr z, jr_000_3176

    jr jr_000_317a

jr_000_3176:
    bit 1, a
    jr z, jr_000_317f

jr_000_317a:
    call Call_000_045a
    jr jr_000_3185

jr_000_317f:
    ld a, [$cfb2]
    and a
    jr nz, jr_000_3165

jr_000_3185:
    pop af
    ldh [$d8], a
    pop bc
    pop de
    pop hl
    ret


jr_000_318c:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, h
    cp b
    jr nz, jr_000_318c

    ld a, l
    cp c
    jr nz, jr_000_318c

    ret


Call_000_3198:
Jump_000_3198:
    ldh a, [$9d]
    push af
    ld a, $03
    rst $10
    call $44c7
    pop af
    rst $10
    ret


    ldh a, [$9d]
    push af
    ld a, $41
    rst $10
    call $61ef
    pop af
    rst $10
    ret


Call_000_31b0:
    ldh [$8b], a
    ldh a, [$9d]
    push af
    ldh a, [$8b]
    rst $10
    call Call_000_1057
    pop af
    rst $10
    ret


    ldh a, [$9d]
    push af
    ld a, [hl+]
    rst $10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2fec
    pop hl
    ld a, h
    rst $10
    ret


    ldh a, [$9d]
    ld [$d0e8], a
    ld a, l
    ld [$d0e9], a
    ld a, h
    ld [$d0ea], a
    ret


jr_000_31db:
    ld a, [de]
    cp [hl]
    ret nz

    inc de
    inc hl
    dec c
    jr nz, jr_000_31db

    ret


jr_000_31e4:
    ld a, [de]
    cp [hl]
    jr nz, jr_000_31f1

    inc de
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_31e4

    scf
    ret


jr_000_31f1:
    and a
    ret


Call_000_31f3:
    call Call_000_3317

Call_000_31f6:
Jump_000_31f6:
jr_000_31f6:
    ld a, $01
    ldh [$d4], a
    ld c, $04
    call Call_000_0468
    ret


Call_000_3200:
    ldh a, [$e6]
    and a
    jr z, jr_000_320e

    ld a, $02
    ldh [$d4], a
    ld c, $04
    call Call_000_0468

jr_000_320e:
    ld a, $01
    ldh [$d4], a
    ld c, $04
    call Call_000_0468
    ret


    ldh a, [$e6]
    and a
    ret


Call_000_321c:
    ldh a, [$e6]
    and a
    jr z, jr_000_322e

    ld a, [$c2ce]
    cp $00
    jr z, jr_000_322e

    ld a, $01
    ldh [$d4], a
    jr jr_000_323d

jr_000_322e:
    ld a, $01
    ldh [$d4], a
    ld c, $04
    call Call_000_0468
    ret


    ldh a, [$e6]
    and a
    jr z, jr_000_31f6

jr_000_323d:
    jr jr_000_3246

    ld a, $41
    ld hl, $4000
    rst $08
    ret


jr_000_3246:
    ldh a, [$d4]
    push af
    xor a
    ldh [$d4], a
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a

jr_000_3252:
    ldh a, [rLY]
    cp $7f
    jr c, jr_000_3252

    di
    ld a, $01
    ldh [rVBK], a
    ld hl, $cdd9
    call Call_000_327b
    ld a, $00
    ldh [rVBK], a
    ld hl, $c4a0
    call Call_000_327b

jr_000_326d:
    ldh a, [rLY]
    cp $7f
    jr c, jr_000_326d

    ei
    pop af
    ldh [$de], a
    pop af
    ldh [$d4], a
    ret


Call_000_327b:
    ld [$ffd9], sp
    ld sp, hl
    ldh a, [$d7]
    ld h, a
    ld l, $00
    ld a, $12
    ldh [$d3], a
    ld b, $02
    ld c, $41

jr_000_328c:
    pop de

jr_000_328d:
    ld a, [c]
    and b
    jr nz, jr_000_328d

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_3296:
    ld a, [c]
    and b
    jr nz, jr_000_3296

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_329f:
    ld a, [c]
    and b
    jr nz, jr_000_329f

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32a8:
    ld a, [c]
    and b
    jr nz, jr_000_32a8

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32b1:
    ld a, [c]
    and b
    jr nz, jr_000_32b1

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32ba:
    ld a, [c]
    and b
    jr nz, jr_000_32ba

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32c3:
    ld a, [c]
    and b
    jr nz, jr_000_32c3

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32cc:
    ld a, [c]
    and b
    jr nz, jr_000_32cc

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32d5:
    ld a, [c]
    and b
    jr nz, jr_000_32d5

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de

jr_000_32de:
    ld a, [c]
    and b
    jr nz, jr_000_32de

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld de, $000c
    add hl, de
    ldh a, [$d3]
    dec a
    ldh [$d3], a
    jr nz, jr_000_328c

    ldh a, [$d9]
    ld l, a
    ldh a, [$da]
    ld h, a
    ld sp, hl
    ret


Jump_000_32f9:
    ldh a, [$e6]
    and a
    jr nz, jr_000_3309

    ld a, $e4
    ldh [rBGP], a
    ld a, $d0
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


jr_000_3309:
    push de
    ld a, $e4
    call Call_000_0c9f
    ld de, $e4e4
    call Call_000_0ccb
    pop de
    ret


Call_000_3317:
    ldh a, [$e6]
    and a
    jr nz, jr_000_3324

    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


jr_000_3324:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld bc, $0080
    ld a, $ff
    call Call_000_3041
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


    ld b, $ff

Call_000_3340:
    ldh a, [$e6]
    and a
    jr nz, jr_000_3349

    ldh a, [$e7]
    and a
    ret z

jr_000_3349:
    ld a, $31
    jp Jump_000_2d83


    call Call_000_3353
    ld [hl], d
    ret


Call_000_3353:
    ld d, $00
    ld a, e
    cp $18
    ret nc

    inc d
    cp $0a
    ret nc

    inc d
    ret


    ld c, $00

jr_000_3361:
    ld a, [hl+]
    ld e, a
    ld d, $08

jr_000_3365:
    srl e
    ld a, $00
    adc c
    ld c, a
    dec d
    jr nz, jr_000_3365

    dec b
    jr nz, jr_000_3361

    ld a, c
    ld [$d265], a
    ret


Call_000_3376:
    ld a, [$d4cb]

jr_000_3379:
    sub $07
    jr nc, jr_000_3379

    add $07
    ret


    push af
    ld c, a
    ld hl, $de99
    ld b, $01
    call Call_000_33a1
    pop af
    ld c, a
    ld hl, $deb9
    ld b, $01
    jr jr_000_33a1

    ld c, a
    ld hl, $de99
    ld b, $02
    jr jr_000_33a1

    ld c, a
    ld hl, $deb9
    ld b, $02

Call_000_33a1:
jr_000_33a1:
    ld d, $00
    ld a, $03
    call Call_000_2d83
    ld a, c
    and a
    ret


    inc d
    add h
    ld [hl], e
    ld [hl], d
    add hl, hl
    ld e, a
    nop
    nop
    nop
    ld [hl], d
    nop
    ld b, b
    nop
    rst $38
    db $dd
    nop
    xor b
    db $d3
    dec bc
    rst $28
    ld b, c
    inc b
    ld d, d
    ld c, e

Call_000_33c3:
    ldh a, [$9d]
    push af
    push hl
    push bc
    push de
    ld a, [$cf61]
    cp $01
    jr nz, jr_000_33e1

    ld a, [$cf60]
    ld [$d265], a
    call Call_000_343b
    ld hl, $000b
    add hl, de
    ld e, l
    ld d, h
    jr jr_000_3403

jr_000_33e1:
    ld a, [$cf61]
    dec a
    ld e, a
    ld d, $00
    ld hl, $33ab
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    rst $10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf60]
    dec a
    call Call_000_3411
    ld de, $d073
    ld bc, $000d
    call Call_000_3026

jr_000_3403:
    ld a, e
    ld [$d102], a
    ld a, d
    ld [$d103], a
    pop de
    pop bc
    pop hl
    pop af
    rst $10
    ret


Call_000_3411:
    and a
    ret z

    push bc
    ld b, a
    ld c, $50

jr_000_3417:
    ld a, [hl+]
    cp c
    jr nz, jr_000_3417

    dec b
    jr nz, jr_000_3417

    pop bc
    ret


    push hl
    call Call_000_343b
    ld hl, $d073

jr_000_3427:
    ld a, [hl]
    cp $50
    jr z, jr_000_3439

    cp $ef
    jr z, jr_000_3437

    cp $f5
    jr z, jr_000_3437

    inc hl
    jr jr_000_3427

jr_000_3437:
    ld [hl], $50

jr_000_3439:
    pop hl
    ret


Call_000_343b:
    ldh a, [$9d]
    push af
    push hl
    ld a, $14
    rst $10
    ld a, [$d265]
    dec a
    ld d, $00
    ld e, a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $7384
    add hl, de
    ld de, $d073
    push de
    ld bc, $000a
    call Call_000_3026
    ld hl, $d07d
    ld [hl], $50
    pop de
    pop hl
    pop af
    rst $10
    ret


    push hl
    push bc
    ld a, [$d265]
    cp $bf
    jr nc, jr_000_347e

    ld [$cf60], a
    ld a, $04
    ld [$cf61], a
    call Call_000_33c3
    jr jr_000_3481

jr_000_347e:
    call Call_000_3487

jr_000_3481:
    ld de, $d073
    pop bc
    pop hl
    ret


Call_000_3487:
    push hl
    push de
    push bc
    ld a, [$d265]
    push af
    cp $f3
    push af
    jr c, jr_000_349b

    ld hl, $34dc
    ld bc, $0002
    jr jr_000_34a1

jr_000_349b:
    ld hl, $34d9
    ld bc, $0002

jr_000_34a1:
    ld de, $d073
    call Call_000_3026
    push de
    ld a, [$d265]
    ld c, a
    ld hl, $5407
    ld a, $03
    rst $08
    pop de
    pop af
    ld a, c
    jr c, jr_000_34b9

    sub $32

jr_000_34b9:
    ld b, $f6

jr_000_34bb:
    sub $0a
    jr c, jr_000_34c2

    inc b
    jr jr_000_34bb

jr_000_34c2:
    add $0a
    push af
    ld a, b
    ld [de], a
    inc de
    pop af
    ld b, $f6
    add b
    ld [de], a
    inc de
    ld a, $50
    ld [de], a
    pop af
    ld [$d265], a
    pop bc
    pop de
    pop hl
    ret


    sub e
    adc h
    ld d, b
    add a
    adc h
    ld d, b
    cp $f3
    jr c, jr_000_34e5

    scf
    ret


jr_000_34e5:
    and a
    ret


    ld hl, $34f0
    ld de, $0001
    jp Jump_000_30e1


    rrca
    inc de
    add hl, sp
    ld b, [hl]
    sub h
    ld a, a
    ld a, [$e5ff]
    ld a, $02
    ld [$cf61], a
    ld a, [$d265]
    ld [$cf60], a
    call Call_000_33c3
    ld de, $d073
    pop hl
    ret


    call Call_000_1c66
    ldh a, [$9d]
    push af
    ld a, $09
    rst $10
    call $45af
    call Call_000_3524
    call $45cb
    pop af
    rst $10
    ld a, [$cf73]
    ret


Call_000_3524:
    ld hl, $d0ed
    bit 0, [hl]
    jp nz, Jump_000_0485

    jp Jump_000_32f9


    ld a, [$cf82]
    dec a
    ld b, a
    ld a, [$cf84]
    sub b
    ld d, a
    ld a, [$cf83]
    dec a
    ld c, a
    ld a, [$cf85]
    sub c
    ld e, a
    push de
    call Call_000_1d05
    pop bc
    jp Jump_000_0fe8


    call Call_000_045a
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call Call_000_0a57
    pop af
    ldh [$aa], a
    ldh a, [$a9]
    and $f0
    ld c, a
    ldh a, [$a7]
    and $0f
    or c
    ld c, a
    ret


    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_3574
    pop bc
    ld a, b
    rst $10
    ret


Call_000_3574:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_000_3597

    ld l, a
    push hl
    call Call_000_3599
    pop hl
    jr nc, jr_000_3597

    ld d, a
    ld e, l
    call Call_000_35de
    jr nc, jr_000_3597

    call Call_000_2631
    ld a, $25
    ld hl, $6c56
    rst $08
    scf
    ret


jr_000_3597:
    and a
    ret


Call_000_3599:
    push de
    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0011
    add hl, de
    ld e, [hl]
    sub $04
    ld d, a
    ld a, e
    sub $04
    ld e, a
    call Call_000_35b0
    pop de
    ret


Call_000_35b0:
    ld hl, $dbfc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$dbfb]
    and a
    jr z, jr_000_35d3

jr_000_35bc:
    push af
    ld a, [hl]
    cp e
    jr nz, jr_000_35c8

    inc hl
    ld a, [hl-]
    cp d
    jr nz, jr_000_35c8

    jr jr_000_35d5

jr_000_35c8:
    ld a, $05
    add l
    ld l, a
    jr nc, jr_000_35cf

    inc h

jr_000_35cf:
    pop af
    dec a
    jr nz, jr_000_35bc

jr_000_35d3:
    and a
    ret


jr_000_35d5:
    pop af
    ld d, a
    ld a, [$dbfb]
    sub d
    inc a
    scf
    ret


Call_000_35de:
    inc e
    ld hl, $0001
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_35e6:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_35fc

    cp d
    jr nz, jr_000_35f7

    ld a, [hl+]
    cp e
    jr nz, jr_000_35f8

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_35fe

jr_000_35f7:
    inc hl

jr_000_35f8:
    inc hl
    inc hl
    jr jr_000_35e6

jr_000_35fc:
    and a
    ret


jr_000_35fe:
    scf
    ret


    ldh a, [$9d]
    push af
    call Call_000_2c52
    call Call_000_360d
    pop bc
    ld a, b
    rst $10
    ret


Call_000_360d:
    ld a, $01
    ld de, $d72e

jr_000_3612:
    push af
    push de
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_000_3657

    ld hl, $0008
    add hl, de
    ld a, [hl]
    and $0f
    cp $02
    jr nz, jr_000_3657

    ld hl, $0000
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_000_3657

    call Call_000_1ae5
    call Call_000_36a5
    jr nc, jr_000_3657

    ld hl, $0009
    add hl, de
    ld a, [hl]
    cp b
    jr c, jr_000_3657

    push bc
    push de
    ld hl, $000a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $02
    call Call_000_2e6f
    ld a, c
    pop de
    pop bc
    and a
    jr z, jr_000_3666

jr_000_3657:
    pop de
    ld hl, $0010
    add hl, de
    ld d, h
    ld e, l
    pop af
    inc a
    cp $10
    jr nz, jr_000_3612

    xor a
    ret


jr_000_3666:
    pop de
    pop af
    ldh [$e0], a
    ld a, b
    ld [$d03f], a
    ld a, c
    ld [$d040], a
    jr jr_000_367e

    ld a, $01
    ld [$d03f], a
    ld a, $ff
    ld [$d040], a

jr_000_367e:
    call Call_000_2c57
    ld [$d03e], a
    ldh a, [$e0]
    call Call_000_18d2
    ld hl, $000a
    add hl, bc
    ld a, [$d03e]
    call Call_000_305d
    ld de, $d041
    ld bc, $000d
    ld a, [$d03e]
    call Call_000_0e8d
    xor a
    ld [$d04d], a
    scf
    ret


Call_000_36a5:
    push de
    call Call_000_36ad
    ld b, d
    ld c, e
    pop de
    ret


Call_000_36ad:
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    ld a, [$d4e6]
    cp d
    jr z, jr_000_36c5

    ld a, [$d4e7]
    cp e
    jr z, jr_000_36d9

    and a
    ret


jr_000_36c5:
    ld a, [$d4e7]
    sub e
    jr z, jr_000_36f3

    jr nc, jr_000_36d4

    cpl
    inc a
    ld d, a
    ld e, $04
    jr jr_000_36eb

jr_000_36d4:
    ld d, a
    ld e, $00
    jr jr_000_36eb

jr_000_36d9:
    ld a, [$d4e6]
    sub d
    jr z, jr_000_36f3

    jr nc, jr_000_36e8

    cpl
    inc a
    ld d, a
    ld e, $08
    jr jr_000_36eb

jr_000_36e8:
    ld d, a
    ld e, $0c

jr_000_36eb:
    call Call_000_1b07
    cp e
    jr nz, jr_000_36f3

    scf
    ret


jr_000_36f3:
    and a
    ret


    push bc
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    call Call_000_18d2
    ld hl, $000a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2c57
    call Call_000_305d
    ld d, h
    ld e, l
    push de
    ld b, $02
    call Call_000_2e6f
    pop de
    ld a, c
    and a
    pop bc
    ret


    ld a, [$d230]
    cp $01
    jr jr_000_3724

    ld hl, $d047
    jr jr_000_3731

jr_000_3724:
    ld a, [$d0ee]
    ld hl, $d047
    and $0f
    jr z, jr_000_3731

    ld hl, $d049

jr_000_3731:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2c57
    call Call_000_31b0
    call Call_000_31f6
    call Call_000_0a80
    ret


Call_000_3741:
    and a
    jr z, jr_000_374c

    cp $fd
    jr z, jr_000_374e

    cp $fc
    jr c, jr_000_374e

jr_000_374c:
    scf
    ret


jr_000_374e:
    and a
    ret


    push hl
    push de
    push bc
    ld a, $60
    ld [hl+], a
    ld a, $61
    ld [hl+], a
    push hl
    ld a, $62

jr_000_375c:
    ld [hl+], a
    dec d
    jr nz, jr_000_375c

    ld a, $6b
    add b
    ld [hl], a
    pop hl
    ld a, e
    and a
    jr nz, jr_000_376f

    ld a, c
    and a
    jr z, jr_000_3782

    ld e, $01

jr_000_376f:
    ld a, e
    sub $08
    jr c, jr_000_377e

    ld e, a
    ld a, $6a
    ld [hl+], a
    ld a, e
    and a
    jr z, jr_000_3782

    jr jr_000_376f

jr_000_377e:
    ld a, $62
    add e
    ld [hl], a

jr_000_3782:
    pop bc
    pop de
    pop hl
    ret


    ld a, $01
    ld [$c2c6], a
    ld a, [$d108]
    call Call_000_3741
    jr c, jr_000_37ad

    push hl
    ld de, $9000
    ld a, $3c
    call Call_000_2d83
    pop hl
    xor a
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call Call_000_2d83
    xor a
    ld [$c2c6], a
    ret


jr_000_37ad:
    xor a
    ld [$c2c6], a
    inc a
    ld [$d108], a
    ret


    push af
    ld a, $01
    ld [$c2bc], a
    pop af
    call Call_000_37e2
    call Call_000_3c55
    ret


    push af
    ld a, $01
    ld [$c2bc], a
    pop af
    jp Jump_000_37e2


Call_000_37ce:
    call Call_000_37d5
    call Call_000_3c55
    ret


Call_000_37d5:
    push af
    xor a
    ld [$c2bc], a
    ld [$c2bd], a
    pop af
    call Call_000_37e2
    ret


Call_000_37e2:
Jump_000_37e2:
    push hl
    push de
    push bc
    call Call_000_381e
    jr c, jr_000_37ef

    ld e, c
    ld d, b
    call Call_000_3be3

jr_000_37ef:
    pop bc
    pop de
    pop hl
    ret


    call Call_000_381e
    ret c

    ldh a, [$9d]
    push af
    ld a, $3c
    rst $10
    ld hl, $6787
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld [$c2b0], a
    ld a, [hl+]
    ld [$c2b1], a
    ld a, [hl+]
    ld [$c2b2], a
    ld a, [hl]
    ld [$c2b3], a
    pop af
    rst $10
    and a
    ret


Call_000_381e:
    and a
    jr z, jr_000_382b

    cp $fc
    jr nc, jr_000_382b

    dec a
    ld c, a
    ld b, $00
    and a
    ret


jr_000_382b:
    scf
    ret


    ld a, [$d12d]
    ld [hl], $6e
    inc hl
    ld c, $02
    cp $64
    jr c, jr_000_3842

    dec hl
    inc c
    jr jr_000_3842

    ld [hl], $6e
    inc hl
    ld c, $03

jr_000_3842:
    ld [$d265], a
    ld de, $d265
    ld b, $41
    jp Jump_000_3198


    ld hl, $d25e
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ret


    push bc
    push de
    push hl
    ldh a, [$9d]
    push af
    ld a, $14
    rst $10
    ld a, [$cf60]
    cp $fd
    jr z, jr_000_387b

    dec a
    ld bc, $0020
    ld hl, $5424
    call Call_000_30fe
    ld de, $d236
    ld bc, $0020
    call Call_000_3026
    jr jr_000_3890

jr_000_387b:
    ld de, $7d9c
    ld b, $55
    ld hl, $d247
    ld [hl], b
    ld hl, $d248
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_000_3890

jr_000_3890:
    ld a, [$cf60]
    ld [$d236], a
    pop af
    rst $10
    pop hl
    pop de
    pop bc
    ret


    ld a, [$d109]
    ld hl, $de41
    push hl
    push bc
    call Call_000_30f4
    ld de, $d073
    push de
    ld bc, $000b
    call Call_000_3026
    pop de
    ld hl, $669f
    ld a, $01
    rst $08
    pop bc
    pop hl
    ret


Call_000_38bb:
    ld b, c
    res 7, c
    res 6, c
    res 5, c
    bit 5, b
    jr z, jr_000_38cd

    bit 7, b
    jr nz, jr_000_38cd

    ld [hl], $f0
    inc hl

jr_000_38cd:
    ld a, [de]
    swap a
    call Call_000_38f2
    ld a, [de]
    call Call_000_38f2
    inc de
    dec c
    jr nz, jr_000_38cd

    bit 7, b
    jr z, jr_000_38f1

    bit 6, b
    jr nz, jr_000_38e4

    dec hl

jr_000_38e4:
    bit 5, b
    jr z, jr_000_38eb

    ld [hl], $f0
    inc hl

jr_000_38eb:
    ld [hl], $f6
    call Call_000_313d
    inc hl

jr_000_38f1:
    ret


Call_000_38f2:
    and $0f
    and a
    jr z, jr_000_390c

    bit 7, b
    jr z, jr_000_3906

    bit 5, b
    jr z, jr_000_3904

    ld [hl], $f0
    inc hl
    res 5, b

jr_000_3904:
    res 7, b

jr_000_3906:
    add $f6
    ld [hl+], a
    jp Jump_000_313d


jr_000_390c:
    bit 7, b
    jr z, jr_000_3906

    bit 6, b
    ret nz

    ld a, $7f
    ld [hl+], a
    ret


    push bc
    ld hl, $dcdf
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d109]
    call Call_000_3927
    pop bc
    ret


Call_000_3927:
    ld bc, $0030
    jp Jump_000_30fe


    push hl
    ld a, b
    dec a
    ld b, $00
    add hl, bc
    ld hl, $5424
    ld bc, $0020
    call Call_000_30fe
    ld a, $14
    call Call_000_305d
    ld b, l
    ld c, h
    pop hl
    ret


    push af
    ldh a, [$e4]
    and a
    jr nz, jr_000_394e

    pop af
    jr jr_000_395d

jr_000_394e:
    pop af
    jr jr_000_396d

    push af
    ldh a, [$e4]
    and a
    jr z, jr_000_395a

    pop af
    jr jr_000_395d

jr_000_395a:
    pop af
    jr jr_000_396d

jr_000_395d:
    push bc
    ld c, a
    ld b, $00
    ld hl, $dcdf
    add hl, bc
    ld a, [$d0d4]
    call Call_000_3927
    pop bc
    ret


jr_000_396d:
    push bc
    ld c, a
    ld b, $00
    ld hl, $d288
    add hl, bc
    ld a, [$c663]
    call Call_000_3927
    pop bc
    ret


    xor a
    ld [$d256], a
    ld [$d257], a
    ret


    xor a
    ldh [$e4], a
    ret


    ld a, $01
    ldh [$e4], a
    ret


    ldh a, [$e4]
    and a
    jr z, jr_000_39b0

    jr jr_000_399c

    ldh a, [$e4]
    and a
    jr z, jr_000_399c

    jr jr_000_39b0

jr_000_399c:
    ld a, [$d0d4]
    ld hl, $dcfe
    call Call_000_3927
    ld d, h
    ld e, l
    ld hl, $c639
    ld bc, $0005
    jp Jump_000_3026


jr_000_39b0:
    ld a, [$d22d]
    dec a
    ret z

    ld a, [$c663]
    ld hl, $d2a7
    call Call_000_3927
    ld d, h
    ld e, l
    ld hl, $d213
    ld bc, $0005
    jp Jump_000_3026


    call Call_000_39d4
    ld c, $03
    call Call_000_0468
    jp Jump_000_31f6


Call_000_39d4:
    ld a, $0f
    ld hl, $5f48
    rst $08
    ld a, $0f
    ld hl, $6036
    rst $08
    ret


    push hl
    call Call_000_39e7
    pop hl
    ret


Call_000_39e7:
    push bc
    ld hl, $3a08
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$e4]
    and a
    jr z, jr_000_39f9

    inc hl

jr_000_39f9:
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, $3a5c
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    pop bc
    ret


    ld [hl-], a
    ld a, [hl-]
    ld [hl], $3a
    ld a, [hl-]
    ld a, [hl-]
    ld a, $3a
    ld b, d
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    jr c, @+$3c

    inc a
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld b, h
    ld a, [hl-]
    ld b, [hl]
    ld a, [hl-]
    ld c, b
    ld a, [hl-]
    ld c, d
    ld a, [hl-]
    ld c, h
    ld a, [hl-]
    ld c, [hl]
    ld a, [hl-]
    ld d, b
    ld a, [hl-]
    ld d, d
    ld a, [hl-]
    ld d, h
    ld a, [hl-]
    ld d, [hl]
    ld a, [hl-]
    ld e, b
    ld a, [hl-]
    ld e, d
    ld a, [hl-]
    nop
    ld bc, $0001
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc b
    dec b
    dec b
    inc b
    ld b, $07
    rlca
    ld b, $08
    add hl, bc
    add hl, bc
    ld [$0b0a], sp
    dec bc
    ld a, [bc]
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rla
    ld d, $18
    add hl, de
    add hl, de
    jr @+$6a

    add $6d
    add $69
    add $6e
    add $6a
    add $6f
    add $6b
    add $70
    add $6c
    add $71
    add $3a
    add $14
    jp nc, $c60f

    ld [$10c6], sp
    add $09
    add $11
    add $0a
    add $12
    add $0b
    add $e3
    add $e4
    add $f8
    add $f9
    add $1b
    rst $00
    inc e
    rst $00
    inc hl
    ldh a, [$9d]
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ldh [$9d], a
    ld [$2000], a
    ld a, e
    ld l, a
    ld a, d
    ld h, a
    ld de, $d00c
    ld bc, $0028
    call Call_000_3026
    pop af
    ldh [$9d], a
    ld [$2000], a
    ret


Call_000_3ab2:
    ld a, [$c2dc]
    cp $04
    ret c

    ld hl, $c5a3
    ld [hl], $5e
    ld hl, $c5b7
    ld [hl], $5f
    ret


Call_000_3ac3:
    push hl
    call Call_000_103e
    call Call_000_3ab2
    call Call_000_1ad2
    call Call_000_321c
    pop hl
    call Call_000_1065
    ret


    ldh a, [$9d]
    push af
    ld a, $20
    rst $10
    call Call_000_3ac3
    pop af
    rst $10
    ret


    ld a, $32
    rst $10
    ld a, [hl+]
    ld [$d410], a
    ld a, [hl]
    ld [$d411], a
    ld a, $33
    rst $10
    ret


    push hl
    push de
    ld hl, $d410
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $32
    rst $10
    ld a, [de]
    ld [$d417], a
    inc de
    ld a, $33
    rst $10
    ld [hl], d
    dec hl
    ld [hl], e
    pop de
    pop hl
    ld a, [$d417]
    ret


    ldh a, [$c6]
    and a
    ret z

    ld a, $00
    ld [$cf68], a
    ld a, $d2
    ld [$cf69], a
    ld a, $00
    ld [$cf6a], a
    ld a, $d1
    ld [$cf6b], a
    ld a, $09
    ld [$cf67], a
    ret


    ld [$c3b8], a
    ldh a, [$9d]
    push af
    ld a, $23
    rst $10
    ld a, [$c3b8]
    call $4fd6
    pop af
    rst $10
    ret


    ld [$c3b8], a
    ldh a, [$9d]
    push af
    ld a, $23
    rst $10
    ld a, [$c3b8]
    call $5120
    pop af
    rst $10
    ret


Call_000_3b4e:
    push hl
    push de
    push bc
    push af
    ldh a, [$9d]
    push af
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    call $4000
    pop af
    ldh [$9d], a
    ld [$2000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_000_3b6a:
    push hl
    push de
    push bc
    push af
    ldh a, [$9d]
    push af
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    call $405c
    pop af
    ldh [$9d], a
    ld [$2000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


    ldh [$9d], a
    ld [$2000], a
    ld a, [de]
    ld [$c298], a
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    ret


Call_000_3b97:
    push hl
    push de
    push bc
    push af
    ldh a, [$9d]
    push af
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    ld a, e
    and a
    jr z, jr_000_3bae

    call $4b30
    jr jr_000_3bb1

jr_000_3bae:
    call $4000

jr_000_3bb1:
    pop af
    ldh [$9d], a
    ld [$2000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


    push hl
    push de
    push bc
    push af
    ldh a, [$9d]
    push af
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    push de
    ld de, $0000
    call $4b30
    call Call_000_045a
    pop de
    call $4b30
    pop af
    ldh [$9d], a
    ld [$2000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_000_3be3:
    push hl
    push de
    push bc
    push af
    ldh a, [$9d]
    push af
    ld a, $3c
    ldh [$9d], a
    ld [$2000], a
    ld hl, $6787
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld [$c2b0], a
    ld a, [hl+]
    ld [$c2b1], a
    ld a, [hl+]
    ld [$c2b2], a
    ld a, [hl]
    ld [$c2b3], a
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    call $4b79
    pop af
    ldh [$9d], a
    ld [$2000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_000_3c23:
    push hl
    push de
    push bc
    push af
    call Call_000_3dde
    jr nc, jr_000_3c32

    ld a, [$c2bf]
    cp e
    jr c, jr_000_3c49

jr_000_3c32:
    ldh a, [$9d]
    push af
    ld a, $3a
    ldh [$9d], a
    ld [$2000], a
    ld a, e
    ld [$c2bf], a
    call $4c04
    pop af
    ldh [$9d], a
    ld [$2000], a

jr_000_3c49:
    pop af
    pop bc
    pop de
    pop hl
    ret


    call Call_000_3c55
    call Call_000_3c23
    ret


Call_000_3c55:
    push hl

jr_000_3c56:
    ld hl, $c1cc
    bit 0, [hl]
    jr nz, jr_000_3c56

    ld hl, $c1fe
    bit 0, [hl]
    jr nz, jr_000_3c56

    ld hl, $c230
    bit 0, [hl]
    jr nz, jr_000_3c56

    ld hl, $c262
    bit 0, [hl]
    jr nz, jr_000_3c56

    pop hl
    ret


    push hl
    ld hl, $c1cc
    bit 0, [hl]
    jr nz, jr_000_3c94

    ld hl, $c1fe
    bit 0, [hl]
    jr nz, jr_000_3c94

    ld hl, $c230
    bit 0, [hl]
    jr nz, jr_000_3c94

    ld hl, $c262
    bit 0, [hl]
    jr nz, jr_000_3c94

    pop hl
    scf
    ret


jr_000_3c94:
    pop hl
    and a
    ret


    ld a, $77
    ld [$c29a], a
    ret


    ld a, $33
    ld [$c29a], a
    ret


    xor a
    ld [$c29a], a
    ret


    ld a, $04
    ld [$c2a7], a
    ret


    ld a, $84
    ld [$c2a7], a
    ret


Call_000_3cb4:
jr_000_3cb4:
    and a
    ret z

    dec a
    call Call_000_3b6a
    jr jr_000_3cb4

    push hl
    push de
    push bc
    push af
    call Call_000_3d97
    ld a, [$c2c0]
    cp e
    jr z, jr_000_3cda

    ld a, $08
    ld [$c2a7], a
    ld a, e
    ld [$c2a9], a
    ld a, d
    ld [$c2aa], a
    ld a, e
    ld [$c2c0], a

jr_000_3cda:
    pop af
    pop bc
    pop de
    pop hl
    ret


    push hl
    push de
    push bc
    push af
    call Call_000_3d97
    ld a, [$c2c0]
    cp e
    jr z, jr_000_3cfe

    push de
    ld de, $0000
    call Call_000_3b97
    call Call_000_045a
    pop de
    ld a, e
    ld [$c2c0], a
    call Call_000_3b97

jr_000_3cfe:
    pop af
    pop bc
    pop de
    pop hl
    ret


    push hl
    push de
    push bc
    push af
    xor a
    ld [$c2c1], a
    ld de, $0013
    ld a, [$d95d]
    cp $01
    jr z, jr_000_3d18

    call Call_000_3d97

jr_000_3d18:
    push de
    ld de, $0000
    call Call_000_3b97
    call Call_000_045a
    pop de
    ld a, e
    ld [$c2c0], a
    call Call_000_3b97
    pop af
    pop bc
    pop de
    pop hl
    ret


    ld a, [$c2c1]
    and a
    jr z, jr_000_3d47

    xor a
    ld [$c2c0], a
    ld de, $0000
    call Call_000_3b97
    call Call_000_045a
    xor a
    ld [$c2c1], a
    ret


jr_000_3d47:
    push hl
    push de
    push bc
    push af
    ld de, $0000
    call Call_000_3b97
    call Call_000_045a
    ld a, [$c2c0]
    ld e, a
    ld d, $00
    call Call_000_3b97
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_000_3d62:
    ld a, [$d95d]
    cp $04
    jr z, jr_000_3d7b

    cp $08
    jr z, jr_000_3d7b

    ld a, [$d84d]
    bit 2, a
    jr nz, jr_000_3d80

jr_000_3d74:
    and a
    ret


    ld de, $0013
    scf
    ret


jr_000_3d7b:
    ld de, $0021
    scf
    ret


jr_000_3d80:
    ld a, [$dcb5]
    cp $0a
    jr nz, jr_000_3d74

    ld a, [$dcb6]
    cp $0f
    jr z, jr_000_3d92

    cp $11
    jr nz, jr_000_3d74

jr_000_3d92:
    ld de, $0058
    scf
    ret


Call_000_3d97:
    call Call_000_3d62
    ret c

    call Call_000_2cbd
    ret


    ld a, $20
    ld [$c498], a
    ld [$c49c], a
    ld a, $50
    ld [$c499], a
    ld a, $58
    ld [$c49d], a
    xor a
    ld [$c49b], a
    ld [$c49f], a
    ld a, [$c296]
    cp $64
    jr nc, jr_000_3dd5

    add $01
    daa
    ld b, a
    swap a
    and $0f
    add $f6
    ld [$c49a], a
    ld a, b
    and $0f
    add $f6
    ld [$c49e], a
    ret


jr_000_3dd5:
    ld a, $ff
    ld [$c49a], a
    ld [$c49e], a
    ret


Call_000_3dde:
    ld a, [$c1cc]
    bit 0, a
    jr nz, jr_000_3dfc

    ld a, [$c1fe]
    bit 0, a
    jr nz, jr_000_3dfc

    ld a, [$c230]
    bit 0, a
    jr nz, jr_000_3dfc

    ld a, [$c262]
    bit 0, a
    jr nz, jr_000_3dfc

    and a
    ret


jr_000_3dfc:
    scf
    ret


    xor a
    ld [$c1cc], a
    ld [$c29c], a
    ldh [rNR10], a
    ldh [rNR11], a
    ldh [rNR12], a
    ldh [rNR13], a
    ldh [rNR14], a
    ret


    xor a
    ld [$c104], a
    ld [$c136], a
    ld [$c168], a
    ld [$c19a], a
    ld [$c29c], a
    ret


    xor a
    ld [$c1cc], a
    ld [$c1fe], a
    ld [$c230], a
    ld [$c262], a
    ld [$c29c], a
    ret


    cp $02
    ld [$c988], a
    ld a, l
    ld [$c986], a
    ld a, h
    ld [$c987], a
    jr nz, jr_000_3e4f

    ld [$c982], a
    ld a, l
    ld [$c981], a
    ld hl, $c983
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_000_3e4f:
    ld hl, $c822
    set 6, [hl]
    ldh a, [$9d]
    push af
    ld a, $44
    ld [$c981], a
    rst $10
    jp $4030


    ld [$c986], a
    ld a, l
    ld [$c987], a
    ld a, h
    ld [$c988], a
    pop bc
    ld a, b
    ld [$c981], a
    rst $10
    ld hl, $c822
    res 6, [hl]
    ld hl, $c987
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c986]
    ret


Call_000_3e80:
    ldh a, [$9d]
    push af
    ld a, $44
    ld [$c981], a
    rst $10
    call $56c5
    pop bc
    ld a, b
    ld [$c981], a
    rst $10
    ret


Call_000_3e93:
Jump_000_3e93:
    push af
    push bc
    push de
    push hl
    ldh a, [$e9]
    and a
    jr z, jr_000_3ed2

    xor a
    ldh [rTAC], a
    ldh a, [rIF]
    and $1b
    ldh [rIF], a
    ld a, [$c86a]
    or a
    jr z, jr_000_3ed2

    ld a, [$c822]
    bit 1, a
    jr nz, jr_000_3eca

    ldh a, [rSC]
    and $80
    jr nz, jr_000_3eca

    ldh a, [$9d]
    push af
    ld a, $44
    ld [$c981], a
    rst $10
    call $58de
    pop bc
    ld a, b
    ld [$c981], a
    rst $10

jr_000_3eca:
    ldh a, [rTMA]
    ldh [rTIMA], a
    ld a, $06
    ldh [rTAC], a

jr_000_3ed2:
    pop hl
    pop de
    pop bc
    pop af
    reti


    ld [$dc02], a
    ldh a, [$9d]
    push af
    ld a, $45
    rst $10
    call $4243
    pop bc
    ld a, b
    rst $10
    ld a, [$dc02]
    ret


Call_000_3eea:
    push hl
    push bc
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    call Call_000_3f35
    pop bc
    pop hl
    call Call_000_3f47
    ret


    push hl
    ld hl, $c590
    ld b, $04
    ld c, $12
    call Call_000_3f0d
    pop hl
    call Call_000_1065
    ret


Call_000_3f0d:
    push hl
    push bc
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    call Call_000_3f35
    pop bc
    pop hl
    call Call_000_0ff1
    ret


    ld hl, $cdd9
    ld b, $06
    ld c, $14
    call Call_000_3f35
    ld hl, $c4a0
    ld b, $04
    ld c, $12
    call Call_000_3f47
    ret


Call_000_3f35:
    ld a, $06
    ld de, $0014

jr_000_3f3a:
    push bc
    push hl

jr_000_3f3c:
    ld [hl+], a
    dec c
    jr nz, jr_000_3f3c

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_000_3f3a

    ret


Call_000_3f47:
    push bc
    call Call_000_3f58
    pop bc

jr_000_3f4c:
    push bc
    call Call_000_3f68
    pop bc
    dec b
    jr nz, jr_000_3f4c

    call Call_000_3f60
    ret


Call_000_3f58:
    ld a, $63
    ld d, $62
    ld e, $64
    jr jr_000_3f6e

Call_000_3f60:
    ld a, $68
    ld d, $67
    ld e, $69
    jr jr_000_3f6e

Call_000_3f68:
    ld a, $7f
    ld d, $65
    ld e, $66

jr_000_3f6e:
    push hl
    ld [hl], d
    inc hl

jr_000_3f71:
    ld [hl+], a
    dec c
    jr nz, jr_000_3f71

    ld [hl], e
    pop hl
    ld de, $0014
    add hl, de
    ret


    call Call_000_1cfd
    call Call_000_1c53
    dec b
    dec c
    call Call_000_3eea
    ret


    ld hl, $d000
    ld b, $00

jr_000_3f8d:
    push bc
    ld c, $08

jr_000_3f90:
    ld a, [de]
    inc de
    cpl
    ld [hl], $00
    inc hl
    ld [hl+], a
    dec c
    jr nz, jr_000_3f90

    pop bc
    dec c
    jr nz, jr_000_3f8d

    ret


    ld hl, $d000

jr_000_3fa2:
    push bc
    ld c, $08

jr_000_3fa5:
    ld a, [de]
    inc de
    inc de
    cpl
    ld [hl], $00
    inc hl
    ld [hl+], a
    dec c
    jr nz, jr_000_3fa5

    pop bc
    dec c
    jr nz, jr_000_3fa2

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
